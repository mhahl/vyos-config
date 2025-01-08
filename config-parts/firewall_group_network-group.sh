#!/bin/vbash

##
# Networks local to NSW01
#
set firewall group network-group NSW01_LOCAL_NETS network '10.120.10.0/24'
set firewall group network-group NSW01_LOCAL_NETS network '10.120.11.0/24'
set firewall group network-group NSW01_LOCAL_NETS network '10.120.12.0/24'
set firewall group network-group NSW01_LOCAL_NETS network '10.120.13.0/24'
set firewall group network-group NSW01_LOCAL_NETS network '10.120.14.0/24'
set firewall group network-group NSW01_LOCAL_NETS network '10.120.20.0/24'
set firewall group network-group NSW01_LOCAL_NETS network '10.120.21.0/24'

# IPv6 Local nets
set firewall group ipv6-network-group NSW01_LOCAL_NETS_6 network '2404:e80:4b6f:0::/64'
set firewall group ipv6-network-group NSW01_LOCAL_NETS_6 network '2404:e80:4b6f:1::/64'
set firewall group ipv6-network-group NSW01_LOCAL_NETS_6 network '2404:e80:4b6f:2::/64'
set firewall group ipv6-network-group NSW01_LOCAL_NETS_6 network '2404:e80:4b6f:3::/64'
set firewall group ipv6-network-group NSW01_LOCAL_NETS_6 network '2404:e80:4b6f:4::/64'
set firewall group ipv6-network-group NSW01_LOCAL_NETS_6 network '2404:e80:4b6f:5::/64'
set firewall group ipv6-network-group NSW01_LOCAL_NETS_6 network '2404:e80:4b6f:6::/64'
