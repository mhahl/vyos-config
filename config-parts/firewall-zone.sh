#!/bin/vbash

set firewall zone ADMIN default-action 'reject'
set firewall zone ADMIN default-log
set firewall zone ADMIN description 'Device administration network'
set firewall zone ADMIN from PROTECTED firewall name 'PROTECTED-ADMIN'
set firewall zone ADMIN from LOCAL firewall name 'LOCAL-ADMIN'
set firewall zone ADMIN member 'br0.10'

set firewall zone DMZ default-action 'reject'
set firewall zone DMZ default-log
set firewall zone DMZ description 'Internet connected'
set firewall zone DMZ member 'br0.20'

set firewall zone LOCAL default-action 'reject'
set firewall zone LOCAL default-log
set firewall zone LOCAL description 'Local zone'
set firewall zone LOCAL from WAN firewall ipv6-name 'WAN-LOCAL-6'
set firewall zone LOCAL from WIFI firewall ipv6-name 'WIFI-LOCAL-6'
set firewall zone LOCAL from WAN firewall name 'WAN-LOCAL'
set firewall zone LOCAL from WIFI firewall name 'WIFI-LOCAL'
set firewall zone LOCAL from ADMIN firewall name 'ADMIN-LOCAL'
set firewall zone LOCAL local-zone

set firewall zone PROTECTED default-action 'reject'
set firewall zone PROTECTED default-log
set firewall zone PROTECTED description 'Administration with internet access'
set firewall zone PROTECTED from ADMIN firewall name 'ADMIN-PROTECTED'
set firewall zone PROTECTED member 'br0.11'

set firewall zone SECURITY default-action 'reject'
set firewall zone SECURITY default-log
set firewall zone SECURITY description 'Security Administration'
set firewall zone SECURITY from WIFI firewall name 'WIFI-SECURITY'
set firewall zone SECURITY member 'br0.12'

set firewall zone SHARED default-action 'reject'
set firewall zone SHARED default-log
set firewall zone SHARED description 'Shared insecure infrastructure'
set firewall zone SHARED member 'br0.15'

set firewall zone VMNET default-action 'reject'
set firewall zone VMNET default-log
set firewall zone VMNET description 'Internal hosting'
set firewall zone VMNET member 'br0.21'

set firewall zone WAN default-action 'reject'
set firewall zone WAN default-log
set firewall zone WAN description 'The Internet'
set firewall zone WAN from LOCAL firewall ipv6-name 'LOCAL-WAN-6'
set firewall zone WAN from LOCAL firewall name 'LOCAL-WAN'
set firewall zone WAN from WIFI firewall name 'WIFI-WAN'
set firewall zone WAN from WIFI firewall ipv6-name 'WIFI-WAN-6'
set firewall zone WAN member 'eth0'

set firewall zone WIFI default-action 'reject'
set firewall zone WIFI default-log
set firewall zone WIFI description 'WIFI zone'
set firewall zone WIFI from WAN firewall name 'WAN-WIFI'
set firewall zone WIFI from WAN firewall ipv6-name 'WAN-WIFI-6'
set firewall zone WIFI from LOCAL firewall name 'LOCAL-WIFI'
set firewall zone WIFI from LOCAL firewall ipv6-name 'LOCAL-WIFI-6'
set firewall zone WIFI member 'br0.13'
set firewall zone WIFI member 'wg600'