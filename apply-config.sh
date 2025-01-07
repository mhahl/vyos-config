#!/bin/vbash
# shellcheck shell=bash
# shellcheck source=/dev/null
dry_run=true

if [[ "$(id -g -n)" != 'vyattacfg' ]] ; then
    exec sg vyattacfg -c "/bin/vbash $(readlink -f "$0") $*"
fi

while getopts "c" options; do
  case "${options}" in
  # -c Commit changes - default is dry-run
  c)
    echo 'Will commit changes'
    dry_run=false
    ;;
  d)
    echo 'Decrypting secrets'
    gpg --decrypt-files secrets/*
    find secrets/ -name -f "*.gpg" -type f -print | xargs rm
    ;;
  e)
    echo 'Encrypting secrets'
    gpg -c secrets/*
    find secrets/ ! -name -f "*.gpg" -type f -print | xargs rm
    ;;
  *)
    echo 'error in command line parsing' >&2
    exit 1
    ;;
  esac
done

# Include VyOS specific functions and aliases
source /opt/vyatta/etc/functions/script-template

# Reset the configuration
load /opt/vyatta/etc/config.boot.default

# Load all config files
for f in /config/config-parts/*.sh; do
  if [[ -f "${f}" ]]; then
    echo "Processing ${f}"
    envsubst < "${f}" | source /dev/stdin
  fi
done

echo "Changes to running config:"
compare

if "${dry_run}"; then
  exit 0
fi

# Commit and save
echo "Committing and saving config"
#commit
#save

exit