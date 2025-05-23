#/bin/vbash

# All traffic coming on in on vlan13 (wifi) 2404:e80:4b6f::1/64 should be routed to table 10
# through the VPN tunnel.
#set policy route6 NET-WIFI-VPN-6 interface 'br0.13' # WIFI
#set policy route6 NET-WIFI-VPN-6 interface 'br0.14' # HOSTING

#set policy route6 NET-WIFI-VPN-6 rule 5 description 'Bypass VPN for local networks'
#set policy route6 NET-WIFI-VPN-6 rule 5 destination group network-group 'NSW01_LOCAL_NETS_6'
#set policy route6 NET-WIFI-VPN-6 rule 5 set table 'main'

# All traffic coming on in on vlan13 (wifi) 2404:e80:4b6f::1/64 should be routed to table 10
# through the VPN tunnel.
#set policy route6 NET-WIFI-VPN-6 rule 10 description 'Route Local IPV6 traffic to table 10'
#set policy route6 NET-WIFI-VPN-6 rule 10 set table '10'
#set policy route6 NET-WIFI-VPN-6 rule 10 source group network-group 'NSW01_LOCAL_NETS_6'