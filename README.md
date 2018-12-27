# Nucleo_STM32F439_Eth_Bootstrap
Example for NUCLEO-F439ZI board using ethernet and LAN8742A PHY.
This example application does not do anything special.   It just brings up the board and performs an DHCP Lease to get an address.
Debug output can be found on UART2 on connector CN9 pins 4 and 6.   Output is running at 115200,8n1.
For STM32CubeMX configuration for this project look at the EthTest2/EthTest2.pdf document.
 
Example debug output:
```
netif: IP address of interface  set to 0.0.0.0
netif: netmask of interface  set to 0.0.0.0
netif: GW address of interface  set to 0.0.0.0
LAN8742A PHYAD: 0x0
Setting MACaddr: 00:80:e1:00:00:02
LAN8742A interface is RMII
Starting Ethernet IRQ/DMA..
netif: added interface st IP addr 0.0.0.0 netmask 0.0.0.0 gw 0.0.0.0
netif: setting default interface st
dhcp_start(netif=0x2000695c) st0
dhcp_start(): mallocing new DHCP client
dhcp_start(): allocated dhcpdhcp_start(): starting DHCP configuration
udp_bind(ipaddr = 0.0.0.0, port = 68)
udp_bind: bound to 0.0.0.0, port 68)
udp_connect: connected to 0.0.0.0, port 67)
dhcp_discover()
transaction id xid(5851f42d)
dhcp_discover: making request
dhcp_discover: realloc()ing
dhcp_discover: sendto(DISCOVER, IP_ADDR_BROADCAST, DHCP_SERVER_PORT)
udp_send: added header in given pbuf 0x20000294
udp_send: sending datagram of length 316
udp_send: UDP packet length 316
udp_send: UDP checksum 0x0000
udp_send: ip_output_if (,,,,0x11,)
ethernet_output: sending packet 0x20000294
dhcp_discover: deleting()ing
dhcp_discover: SELECTING
dhcp_discover(): set request timeout 2000 msecs
Starting main loop..
etharp_timer
ethernet_input: dest:0hx:0hx:0hx:0hx:0hx:0hx, src:0hx:0hx:0hx:0hx:0hx:0hx, type:ff
etharp_update_arp_entry: 192.168.1.1 - 18:1b:eb:53:1d:a4
etharp_find_entry: found empty entry 0
etharp_find_entry: no empty entry found and not allowed to recycle
etharp_input: incoming ARP request
etharp_input: we are unconfigured, ARP request ignored.
etharp_timer
ethernet_input: dest:0hx:0hx:0hx:0hx:0hx:0hx, src:0hx:0hx:0hx:0hx:0hx:0hx, type:ff
etharp_update_arp_entry: 192.168.1.1 - 18:1b:eb:53:1d:a4
etharp_find_entry: found empty entry 0
etharp_find_entry: no empty entry found and not allowed to recycle
etharp_input: incoming ARP request
etharp_input: we are unconfigured, ARP request ignored.
ethernet_input: dest:0hx:0hx:0hx:0hx:0hx:0hx, src:0hx:0hx:0hx:0hx:0hx:0hx, type:0
udp_input: received datagram of length 308
UDP header:
+-------------------------------+
|        67     |        68     | (src port, dest port)
+-------------------------------+
|       308     |     0x3f3e    | (len, chksum)
+-------------------------------+
udp (192.168.1.10, 68) <-- (192.168.1.1, 67)
pcb (0.0.0.0, 68) <-- (0.0.0.0, 67)
udp_input: calculating checksum
dhcp_recv(pbuf = 0x20002d7c) from DHCP server 192.168.1.1 port 67
pbuf->len = 300
pbuf->tot_len = 300
skipping option 28 in options
searching DHCP_OPTION_MESSAGE_TYPE
DHCP_OFFER received in DHCP_STATE_SELECTING state
dhcp_handle_offer(netif=0x2000695c) st0
dhcp_handle_offer(): server 0x0101a8c0
dhcp_handle_offer(): offer for 0x0a01a8c0
dhcp_select(netif=0x2000695c) st0
transaction id xid(5851f42d)
udp_send: added header in given pbuf 0x20000294
udp_send: sending datagram of length 316
udp_send: UDP packet length 316
udp_send: UDP checksum 0x0000
udp_send: ip_output_if (,,,,0x11,)
ethernet_output: sending packet 0x20000294
dhcp_select: REQUESTING
dhcp_select(): set request timeout 2000 msecs
ethernet_input: dest:0hx:0hx:0hx:0hx:0hx:0hx, src:0hx:0hx:0hx:0hx:0hx:0hx, type:0
udp_input: received datagram of length 308
UDP header:
+-------------------------------+
|        67     |        68     | (src port, dest port)
+-------------------------------+
|       308     |     0x3c3e    | (len, chksum)
+-------------------------------+
udp (192.168.1.10, 68) <-- (192.168.1.1, 67)
pcb (0.0.0.0, 68) <-- (0.0.0.0, 67)
udp_input: calculating checksum
dhcp_recv(pbuf = 0x20002d7c) from DHCP server 192.168.1.1 port 67
pbuf->len = 300
pbuf->tot_len = 300
skipping option 28 in options
searching DHCP_OPTION_MESSAGE_TYPE
DHCP_ACK received
dhcp_check(netif=0x2000695c) st
etharp_find_entry: found empty entry 0
etharp_find_entry: selecting empty entry 0
etharp_request: sending ARP request.
etharp_raw: sending raw ARP packet.
ethernet_output: sending packet 0x20000294
dhcp_check(): set request timeout 500 msecs
dhcp_fine_tmr(): request timeout
dhcp_timeout()
dhcp_timeout(): CHECKING, ARP request timed out
dhcp_check(netif=0x2000695c) st
etharp_find_entry: found matching entry 0
etharp_request: sending ARP request.
etharp_raw: sending raw ARP packet.
ethernet_output: sending packet 0x20000294
dhcp_check(): set request timeout 500 msecs
ethernet_input: dest:0hx:0hx:0hx:0hx:0hx:0hx, src:0hx:0hx:0hx:0hx:0hx:0hx, type:ff
etharp_update_arp_entry: 192.168.1.6 - 48:5a:b6:3b:ac:fa
etharp_find_entry: found empty entry 1
etharp_find_entry: no empty entry found and not allowed to recycle
etharp_input: incoming ARP request
etharp_input: we are unconfigured, ARP request ignored.
etharp_timer
etharp_request: sending ARP request.
etharp_raw: sending raw ARP packet.
ethernet_output: sending packet 0x20000294
dhcp_fine_tmr(): request timeout
dhcp_timeout()
dhcp_timeout(): CHECKING, ARP request timed out
dhcp_bind(netif=0x2000695c) st0
dhcp_bind(): t0 renewal timer 86400 secs
dhcp_bind(): set request timeout 86400000 msecs
dhcp_bind(): t1 renewal timer 43200 secs
dhcp_bind(): set request timeout 43200000 msecs
dhcp_bind(): t2 rebind timer 75600 secs
dhcp_bind(): set request timeout 75600000 msecs
dhcp_bind(): IP: 0x0a01a8c0 SN: 0x00ffffff GW: 0x0101a8c0
netif: netmask of interface st set to 255.255.255.0
netif: GW address of interface st set to 192.168.1.1
netif_set_ipaddr: netif address being changed
etharp_request: sending ARP request.
etharp_raw: sending raw ARP packet.
ethernet_output: sending packet 0x20000294
netif: IP address of interface st set to 192.168.1.10
ethernet_input: dest:0hx:0hx:0hx:0hx:0hx:0hx, src:0hx:0hx:0hx:0hx:0hx:0hx, type:0
icmp_input: ping
etharp_find_entry: found empty entry 1
etharp_find_entry: selecting empty entry 1
etharp_request: sending ARP request.
etharp_raw: sending raw ARP packet.
ethernet_output: sending packet 0x20000294
etharp_query: queued packet 0x20002d7c on ARP entry 1
ethernet_input: dest:0hx:0hx:0hx:0hx:0hx:0hx, src:0hx:0hx:0hx:0hx:0hx:0hx, type:0
etharp_update_arp_entry: 192.168.1.1 - 18:1b:eb:53:1d:a4
etharp_find_entry: found matching entry 1
etharp_update_arp_entry: updating stable entry 1
ethernet_output: sending packet 0x20000294
etharp_input: incoming ARP reply
dhcp_arp_reply()
etharp_timer
etharp_request: sending ARP request.
etharp_raw: sending raw ARP packet.
ethernet_output: sending packet 0x20000294
etharp_timer
etharp_request: sending ARP request.
etharp_raw: sending raw ARP packet.
ethernet_output: sending packet 0x20000294
etharp_timer
etharp_request: sending ARP request.
etharp_raw: sending raw ARP packet.
ethernet_output: sending packet 0x20000294
ethernet_input: dest:0hx:0hx:0hx:0hx:0hx:0hx, src:0hx:0hx:0hx:0hx:0hx:0hx, type:ff
udp_input: received datagram of length 298
UDP header:
+-------------------------------+
|     55555     |     55555     | (src port, dest port)
+-------------------------------+
|       298     |     0x0000    | (len, chksum)
+-------------------------------+
udp (255.255.255.255, 55555) <-- (192.168.1.5, 55555)
pcb (0.0.0.0, 68) <-- (0.0.0.0, 67)
etharp_timer
etharp_timer: expired pending entry 0.
etharp_timer
etharp_timer
etharp_timer
etharp_timer
```


