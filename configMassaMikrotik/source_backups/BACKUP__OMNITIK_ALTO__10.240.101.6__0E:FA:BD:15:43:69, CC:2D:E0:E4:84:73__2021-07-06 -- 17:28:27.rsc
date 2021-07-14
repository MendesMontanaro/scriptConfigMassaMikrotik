# jul/05/2021 20:26:50 by RouterOS 6.48.2
# software id = 4YQW-1322
#
# model = OmniTIK UPA-5HnD
# serial number = 563304973338
/interface bridge
add name=br-vlan46 protocol-mode=none
/interface wireless
set [ find default-name=wlan1 ] ampdu-priorities=0,1,2,3,4,5,6,7 band=\
    5ghz-a/n channel-width=20/40mhz-Ce country=brazil disabled=no frequency=\
    5880 frequency-mode=superchannel mode=ap-bridge radio-name=\
    "OMITIK Aroeira 02" scan-list=5000-6000 ssid=Online-5Ghz-Aroeira-02 \
    station-roaming=enabled wireless-protocol=nstreme wps-mode=disabled
/interface vlan
add interface=ether1 name=vlan400 vlan-id=400
add interface=vlan400 name=vlan46 vlan-id=46
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/snmp community
set [ find default=yes ] name=mk_Onl!ne
/system logging action
set 0 memory-lines=100
set 1 disk-lines-per-file=100
/user group
set full policy="local,telnet,ssh,ftp,reboot,read,write,policy,test,winbox,pas\
    sword,web,sniff,sensitive,api,romon,dude,tikapp"
/interface bridge port
add bridge=br-vlan46 interface=wlan1
add bridge=br-vlan46 interface=vlan46
/ip neighbor discovery-settings
set discover-interface-list=!dynamic
/ip address
add address=10.240.101.6/30 interface=vlan400 network=10.240.101.4
/ip route
add distance=1 gateway=10.240.101.5
/ip service
set telnet port=2223
set ftp disabled=yes port=2221
set www disabled=yes port=8000
set ssh port=2225
set api disabled=yes
set api-ssl disabled=yes
/snmp
set enabled=yes trap-version=2
/system clock
set time-zone-name=America/Fortaleza
/system identity
set name="Onl Granja | Online-5Ghz-Aroeira-02"
/system scheduler
add name=reboot on-event="/system reboot\r\
    \ny\r\
    \n" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-date=may/24/2021 start-time=21:31:00
