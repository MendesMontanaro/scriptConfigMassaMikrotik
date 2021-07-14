# jul/17/2020 16:39:11 by RouterOS 6.37.4
# software id = IS3L-FFIX
#
/interface bridge
add name=br-cagece protocol-mode=none
/interface ethernet
set [ find default-name=sfp1 ] advertise=\
    10M-half,10M-full,100M-half,100M-full,1000M-half,1000M-full comment=\
    "Sa\EDda Torre Caixa Dagua" speed=100Mbps
set [ find default-name=sfp2 ] comment="Sa\EDda Prefeitura"
set [ find default-name=sfp3 ] comment="Sa\EDda Hospital"
set [ find default-name=sfp4 ] comment=\
    "Saida Secretaria de Educa\E7\E3o - 16M "
set [ find default-name=sfp5 ] comment=\
    "Saida para Secretaria de Saude - 12 M"
set [ find default-name=sfp6 ] comment=";;; Saida Farm\E1cia Maciel"
set [ find default-name=sfp7 ] comment=\
    ";;; Promotoria de Justi\E7a Ararend\E1 ;;;"
set [ find default-name=sfp8 ] comment="Conectado na RB3011 Livramento"
set [ find default-name=sfp9 ] comment="Sa\EDda prefeito"
set [ find default-name=sfp11 ] comment=\
    "Conectado na SFP1 da RB960PGS()Monitor - CAM,XPS,MONIT.OLT"
set [ find default-name=sfp12 ] advertise=\
    10M-half,10M-full,100M-half,100M-full,1000M-half,1000M-full comment=\
    "CONECTADO NA XGE0/0/1 DO HW"
/interface eoip
add allow-fast-path=no !keepalive mac-address=02:27:4D:1A:7C:F7 name=\
    tunnel-177.55.253.110 remote-address=177.55.253.110 tunnel-id=5882
add !keepalive mac-address=02:EA:2B:64:79:6A name=tunnel-cagece191.7.209.230 \
    remote-address=191.7.209.230 tunnel-id=103
/ip neighbor discovery
set sfp1 comment="Sa\EDda Torre Caixa Dagua"
set sfp2 comment="Sa\EDda Prefeitura"
set sfp3 comment="Sa\EDda Hospital"
set sfp4 comment="Saida Secretaria de Educa\E7\E3o - 16M "
set sfp5 comment="Saida para Secretaria de Saude - 12 M"
set sfp6 comment=";;; Saida Farm\E1cia Maciel"
set sfp7 comment=";;; Promotoria de Justi\E7a Ararend\E1 ;;;"
set sfp8 comment="Conectado na RB3011 Livramento"
set sfp9 comment="Sa\EDda prefeito"
set sfp11 comment=\
    "Conectado na SFP1 da RB960PGS()Monitor - CAM,XPS,MONIT.OLT"
set sfp12 comment="CONECTADO NA XGE0/0/1 DO HW"
set br-cagece discover=no
/interface vlan
add comment="Transporte Ararend\E1-Crateus" interface=sfp12 name="vlan 296" \
    vlan-id=296
add comment="LINK CRAS" interface=sfp2 name=vlan100 vlan-id=100
add comment="Gerencia Livramento" interface=sfp8 name=vlan254.8 vlan-id=254
add comment="Gerancia Caixa Dagua" interface=sfp1 name=vlan281.1 vlan-id=281
add comment="Autentica\E7\E3o Cento - CometaNet" interface=sfp11 name=vlan500 \
    vlan-id=500
add comment="Transporte Rede Cagece" interface=sfp1 name=vlan1984 vlan-id=\
    1984
/ip neighbor discovery
set "vlan 296" comment="Transporte Ararend\E1-Crateus"
set vlan100 comment="LINK CRAS"
set vlan254.8 comment="Gerencia Livramento"
set vlan281.1 comment="Gerancia Caixa Dagua"
set vlan500 comment="Autentica\E7\E3o Cento - CometaNet"
set vlan1984 comment="Transporte Rede Cagece"
/interface vlan
add comment="Ominitik - ONLINE-ARARENDA-5.8GHZ-01" interface=vlan281.1 name=\
    vlan2 vlan-id=2
add comment=Online-5Ghz-Ararenda-01 interface=vlan281.1 name=vlan3 vlan-id=3
add comment=Online-5Ghz-Ararenda-02 interface=vlan281.1 name=vlan4 vlan-id=4
add comment=Online-5Ghz-Posto-01 interface=vlan281.1 name=vlan7 vlan-id=7
add comment=Online5Ghz-Angola-01 interface=vlan281.1 name=vlan8 vlan-id=8
add comment=Online-5Ghz-Posto-02 interface=vlan281.1 name=vlan9 vlan-id=9
add comment="Sa\EDda PTP Posto Leonardo" interface=vlan281.1 name=vlan11 \
    vlan-id=11
add comment=Online-5Ghz-Ipuzinho02 interface=vlan254.8 name=vlan13 vlan-id=13
add comment=Online-5Ghz-Posto-03 interface=vlan281.1 name=vlan14 vlan-id=14
add comment=Online5Ghz-Angola-02 interface=vlan281.1 name=vlan15 vlan-id=15
add comment=ONL-5.8Ghz-LIVRAMENTO-02 interface=vlan254.8 name=vlan16 vlan-id=\
    16
add comment=ONL-5.8Ghz-LIVRAMENTO-01 interface=vlan254.8 name=vlan17 vlan-id=\
    17
add comment="Online-5Ghz-Livramento 04" interface=vlan254.8 name=vlan19 \
    vlan-id=19
add comment=Online-5Ghz-Balseiros-01 interface=vlan254.8 name=vlan20 vlan-id=\
    20
add comment=Online-5Ghz-Balseiros-02 interface=vlan254.8 name=vlan21 vlan-id=\
    21
add comment=Online-5Ghz-Sabino-01 interface=vlan254.8 name=vlan22 vlan-id=22
add comment=Online-5Ghz-CNego interface=vlan254.8 name=vlan23 vlan-id=23
add comment=Online-5Ghz-Siriema-01 interface=vlan254.8 name=vlan24 vlan-id=24
add comment=Online-5Ghz-Lagoa interface=vlan254.8 name=vlan25 vlan-id=25
add comment=Online-5Ghz-Lagoa-02 interface=vlan254.8 name=vlan26 vlan-id=26
add comment=Ipuzinho interface=vlan254.8 name=vlan27 vlan-id=27
add comment=Server-5.8-Lagoa-Do-Arroz-01 interface=vlan254.8 name=vlan28 \
    vlan-id=28
add comment=Lagoa-5Ghz-Canto-03 interface=vlan254.8 name=vlan29 vlan-id=29
add comment="Online Ararend\E1 | Online-5Ghz-Balseiros-03" interface=\
    vlan254.8 name=vlan30 vlan-id=30
add comment=Online-5Ghz-Gazea-01 interface=vlan254.8 name=vlan42 vlan-id=42
add comment=Online-5Ghz-Gazea-02 interface=vlan254.8 name=vlan47 vlan-id=47
add comment=Online-5Ghz-Arueira interface=vlan254.8 name=vlan54 vlan-id=54
add comment=Online-5Ghz-Bom-Pricipio interface=vlan254.8 name=vlan56 vlan-id=\
    56
add comment=Online-5Ghz-Arueira-02 interface=vlan254.8 name=vlan58 vlan-id=58
add comment=Online-5Ghz-Arueira-03 interface=vlan254.8 name=vlan59 vlan-id=59
add comment=Online-5Ghz-Vila-Nova-01 interface=vlan254.8 name=vlan61 vlan-id=\
    61
add comment=AP-BOM-JARDIM interface=vlan254.8 name=vlan62 vlan-id=62
/ip neighbor discovery
set vlan2 comment="Ominitik - ONLINE-ARARENDA-5.8GHZ-01"
set vlan3 comment=Online-5Ghz-Ararenda-01 discover=no
set vlan4 comment=Online-5Ghz-Ararenda-02 discover=no
set vlan7 comment=Online-5Ghz-Posto-01 discover=no
set vlan8 comment=Online5Ghz-Angola-01
set vlan9 comment=Online-5Ghz-Posto-02 discover=no
set vlan11 comment="Sa\EDda PTP Posto Leonardo" discover=no
set vlan13 comment=Online-5Ghz-Ipuzinho02
set vlan14 comment=Online-5Ghz-Posto-03
set vlan15 comment=Online5Ghz-Angola-02
set vlan16 comment=ONL-5.8Ghz-LIVRAMENTO-02
set vlan17 comment=ONL-5.8Ghz-LIVRAMENTO-01
set vlan19 comment="Online-5Ghz-Livramento 04"
set vlan20 comment=Online-5Ghz-Balseiros-01
set vlan21 comment=Online-5Ghz-Balseiros-02
set vlan22 comment=Online-5Ghz-Sabino-01
set vlan23 comment=Online-5Ghz-CNego
set vlan24 comment=Online-5Ghz-Siriema-01
set vlan25 comment=Online-5Ghz-Lagoa
set vlan26 comment=Online-5Ghz-Lagoa-02
set vlan27 comment=Ipuzinho
set vlan28 comment=Server-5.8-Lagoa-Do-Arroz-01
set vlan29 comment=Lagoa-5Ghz-Canto-03
set vlan30 comment="Online Ararend\E1 | Online-5Ghz-Balseiros-03"
set vlan42 comment=Online-5Ghz-Gazea-01
set vlan47 comment=Online-5Ghz-Gazea-02
set vlan54 comment=Online-5Ghz-Arueira
set vlan56 comment=Online-5Ghz-Bom-Pricipio
set vlan58 comment=Online-5Ghz-Arueira-02
set vlan59 comment=Online-5Ghz-Arueira-03
set vlan61 comment=Online-5Ghz-Vila-Nova-01
set vlan62 comment=AP-BOM-JARDIM
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=dhcp_pool1 ranges=192.168.200.2-192.168.200.254
add name=dhcp_pool2 ranges=192.168.150.2-192.168.150.254
/ip dhcp-server
add address-pool=dhcp_pool1 disabled=no interface=sfp7 name=dhcp1
add address-pool=dhcp_pool2 disabled=no interface=sfp9 name=dhcp2
/ppp profile
add comment="Mk PPPoE" local-address=10.0.34.1 name=PPPoE118
add comment="Mk PPPoE" local-address=10.0.99.1 name=PPPoE188
add comment="Mk PPPoE" local-address=10.0.100.1 name=PPPoE189
add comment="Mk PPPoE" local-address=10.1.45.1 name=PPPoE405
add comment="Mk PPPoE" local-address=10.1.219.1 name=PPPoE589
add comment="Mk PPPoE" local-address=10.1.220.1 name=PPPoE590
add comment="Mk PPPoE" local-address=10.20.8.1 name=PPPoE1175
add comment="Mk PPPoE" local-address=10.20.9.1 name=PPPoE1176
add comment="Mk PPPoE" local-address=10.20.110.1 name=PPPoE1338
add local-address=10.20.209.1 name="Beira Rio"
add local-address=10.20.117.1 name=PPPoE-10.20.117.1
add local-address=10.20.217.1 name=Online-5Ghz-Ipuzinho02
add local-address=10.21.136.1 name=Online-5Ghz-Posto-03
add local-address=10.21.247.1 name=Online5Ghz-Angola-02
add local-address=10.1.74.1 name=ONL-5.8Ghz-LIVRAMENTO-01
add local-address=10.0.103.1 name=ONL-5.8Ghz-LIVRAMENTO-02
add local-address=10.21.57.1 name=PPPoE-Livramento-04
add local-address=10.20.126.1 name=ONL-5.8Ghz-LIVRAMENTO-03
add local-address=10.21.245.1 name=Online-5Ghz-Arueira-02
add local-address=10.21.204.1 name=Online-5Ghz-Bom-Pricipio
add local-address=10.21.172.1 name=Online-5Ghz-Arueira
add local-address=10.21.94.1 name=Online_5.8Ghz_Gazea-02
add local-address=10.1.216.1 name=Online-5Ghz-Gazea-01
add comment="Mk PPPoE" local-address=10.3.93.1 name=PPPoE985
add local-address=10.20.218.1 name=Online-5Ghz-Balseiros-02
add local-address=10.20.189.1 name=" Online-5Ghz-Sabino-01"
add local-address=10.3.57.1 name=PPPoE-Online-5Ghz-CNego
add local-address=10.21.125.1 name=Online-5Ghz-Siriema-01
add local-address=10.2.39.1 name=Online-5Ghz-Lagoa use-mpls=yes
add local-address=10.21.191.1 name=Online-5Ghz-Lagoa-02
add local-address=10.0.106.1 name=5.8-Lagoa-Do-Arroz-01
add local-address=10.0.105.1 name=Ipuzinho
add comment="Mk PPPoE" local-address=10.3.21.1 name=PPPoE1990
add comment="Mk PPPoE" local-address=10.3.20.1 name=PPPoE1991
add local-address=10.22.125.1 name=\
    "Online Ararenda | Online-5Ghz-Balseiros-03"
/queue simple
add limit-at=10M/10M max-limit=10M/10M name="Liceu 07/08/2018" target=\
    10.240.76.16/32
add max-limit=4M/12M name="Secretaria de Saude" target=10.240.76.46/32
add max-limit=4M/16M name="Secretaria de Educa\E7\E3o" target=10.240.76.42/32
add limit-at=10M/10M max-limit=10M/10M name="Hospital Ararend\E1" target=\
    10.240.76.38/32
add comment="Ativo na Fibra 22/03/18 - Aquila (Renan)" limit-at=10M/10M \
    max-limit=10M/10M name=CRAS target=10.240.76.59/32
add comment="Zizinho mandou aumentar de 10 pra 46M em 09.03.2019(William)" \
    max-limit=23M/46M name="Farmacia Publica" target=10.240.76.50/32
add disabled=yes limit-at=300M/300M max-limit=300M/300M name=FreeBand target=\
    "" time=0s-6h,sun,mon,tue,wed,thu,fri,sat
add comment="Ativo - 05/10/17 - M.Renan" limit-at=10M/10M max-limit=10M/10M \
    name="Promotoria - Ararend\E1" target=191.7.208.112/30
add limit-at=5M/5M max-limit=5M/5M name=\
    "Educa\E7\E3o Ararenda - Ativo 5M (28/07)" target=10.9.0.177/32
add limit-at=1M/2M max-limit=2M/5M name=chimbinha@ararenda target=\
    10.20.209.32/32
/snmp community
set [ find default=yes ] name=ro_online
/system logging action
add name=rsyslog remote=10.240.150.34 remote-port=5430 syslog-facility=syslog \
    target=remote
/user group
add name=suporte policy="local,telnet,ssh,ftp,reboot,read,write,test,winbox,we\
    b,sniff,api,romon,!policy,!password,!sensitive,!dude"
add name=mk-radius
/interface bridge port
add bridge=br-cagece interface=tunnel-cagece191.7.209.230
add bridge=br-cagece interface=vlan1984
/interface pppoe-server server
add authentication=chap default-profile=PPPoE118 disabled=no \
    keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server118
add authentication=chap default-profile=PPPoE188 disabled=no \
    keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server188
add authentication=chap default-profile=PPPoE189 disabled=no interface=vlan2 \
    keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server189
add authentication=chap default-profile=PPPoE405 disabled=no \
    keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server405
add authentication=chap default-profile=PPPoE589 disabled=no interface=vlan3 \
    keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server589
add authentication=chap default-profile=PPPoE590 disabled=no interface=vlan4 \
    keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server590
add authentication=chap default-profile=PPPoE1175 disabled=no interface=vlan7 \
    keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server1175
add authentication=chap default-profile=PPPoE1176 disabled=no interface=vlan8 \
    keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server1176
add authentication=chap default-profile=PPPoE1338 disabled=no interface=vlan9 \
    keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server1338
add authentication=pap,chap default-profile="Beira Rio" disabled=no max-mru=\
    1492 max-mtu=1492 mrru=1600 one-session-per-host=yes service-name=\
    "Beira Rio"
add authentication=chap default-profile=PPPoE-10.20.117.1 keepalive-timeout=\
    60 max-mru=1492 max-mtu=1492 mrru=1600 one-session-per-host=yes \
    service-name=Server-10.20.217
add default-profile=Online-5Ghz-Ipuzinho02 disabled=no interface=vlan13 \
    keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Online-5Ghz-Ipuzinho02
add authentication=pap,chap default-profile=Online-5Ghz-Posto-03 disabled=no \
    interface=vlan14 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Online-5Ghz-Posto-03
add authentication=pap,chap default-profile=Online5Ghz-Angola-02 disabled=no \
    interface=vlan15 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Online5Ghz-Angola-02
add authentication=pap,chap default-profile=ONL-5.8Ghz-LIVRAMENTO-02 \
    disabled=no interface=vlan16 keepalive-timeout=60 max-mru=1492 max-mtu=\
    1492 mrru=1600 one-session-per-host=yes service-name=\
    ONL-5.8Ghz-LIVRAMENTO-02
add authentication=pap,chap default-profile=PPPoE-Livramento-04 disabled=no \
    interface=vlan19 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name="Online-5Ghz-Livramento 04"
add authentication=pap,chap default-profile=ONL-5.8Ghz-LIVRAMENTO-03 \
    disabled=no keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=ONL-5.8Ghz-LIVRAMENTO-03
add authentication=pap,chap default-profile=ONL-5.8Ghz-LIVRAMENTO-01 \
    disabled=no interface=vlan17 keepalive-timeout=60 max-mru=1492 max-mtu=\
    1492 mrru=1600 one-session-per-host=yes service-name=\
    ONL-5.8Ghz-LIVRAMENTO-01
add authentication=chap default-profile=Online-5Ghz-Gazea-01 disabled=no \
    interface=vlan42 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Online-5Ghz-Gazea-01
add authentication=chap default-profile=Online_5.8Ghz_Gazea-02 disabled=no \
    interface=vlan47 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Online-5Ghz-Gazea-02
add authentication=chap default-profile=Online-5Ghz-Arueira disabled=no \
    interface=vlan54 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Online-5Ghz-Arueira
add authentication=chap default-profile=Online-5Ghz-Bom-Pricipio disabled=no \
    interface=vlan56 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Online-5Ghz-Bom-Pricipio
add authentication=chap default-profile=Online-5Ghz-Arueira-02 disabled=no \
    interface=vlan58 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Online-5Ghz-Arueira-02
add authentication=chap default-profile=PPPoE985 disabled=no interface=vlan20 \
    keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server985
add authentication=chap default-profile=Online-5Ghz-Balseiros-02 disabled=no \
    interface=vlan21 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server-Online-5Ghz-Balseiros-02
add authentication=chap default-profile=" Online-5Ghz-Sabino-01" disabled=no \
    interface=vlan22 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name="Server- Online-5Ghz-Sabino-01"
add authentication=chap default-profile=PPPoE-Online-5Ghz-CNego disabled=no \
    interface=vlan23 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server-Online-5Ghz-CNego
add authentication=chap default-profile=Online-5Ghz-Siriema-01 disabled=no \
    interface=vlan24 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server-Online-5Ghz-Siriema-01
add authentication=chap default-profile=Online-5Ghz-Lagoa disabled=no \
    interface=vlan25 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Online-5Ghz-Lagoa
add authentication=chap default-profile=Online-5Ghz-Lagoa-02 disabled=no \
    interface=vlan26 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Online-5Ghz-Lagoa-02
add authentication=chap default-profile=5.8-Lagoa-Do-Arroz-01 disabled=no \
    interface=vlan28 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server-5.8-Lagoa-Do-Arroz-01
add authentication=chap default-profile=Ipuzinho disabled=no interface=vlan27 \
    keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server-Ipuzino
add authentication=chap default-profile=PPPoE1990 disabled=no interface=\
    vlan59 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server1990
add authentication=chap default-profile=PPPoE1991 disabled=no interface=\
    vlan61 keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Server1991
add authentication=chap default-profile=Online-5Ghz-Lagoa disabled=no \
    interface=vlan29 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=Lagoa-5Ghz-Canto-03
add authentication=mschap1,mschap2 default-profile=Online-5Ghz-Arueira \
    disabled=no interface=vlan62 keepalive-timeout=60 max-mru=1492 max-mtu=\
    1492 mrru=1600 one-session-per-host=yes service-name=\
    Online-5Ghz-BomJardim
add authentication=pap,chap default-profile=\
    "Online Ararenda | Online-5Ghz-Balseiros-03" disabled=no interface=vlan30 \
    keepalive-timeout=60 max-mru=1492 max-mtu=1492 mrru=1600 \
    one-session-per-host=yes service-name=\
    "Online Ararenda | Online-5Ghz-Balseiros-03"
/ip address
add address=191.7.208.106/30 comment="UpLink Online Telecom" interface=sfp12 \
    network=191.7.208.104
add address=10.0.34.1/24 comment="Mk Address/118 | online_ararenda_01" \
    network=10.0.34.0
add address=10.0.99.1/24 comment="Mk Addrees/188 | online_ararenda_02" \
    network=10.0.99.0
add address=10.0.100.1/24 comment=\
    "Mk Address/189 | ONLINE-ARARENDA-5.8GHZ-01" interface=vlan2 network=\
    10.0.100.0
add address=10.1.45.1/24 comment="Mk Address/405 | online_ararenda_03" \
    network=10.1.45.0
add address=10.1.219.1/24 comment="Mk Address/589 | Online-5Ghz-Ararenda-01" \
    interface=vlan3 network=10.1.219.0
add address=10.1.220.1/24 comment="Mk Address/590 | Online-5Ghz-Ararenda-02" \
    interface=vlan4 network=10.1.220.0
add address=10.20.8.1/24 comment="Mk Address/1175 | Online-5Ghz-Posto-01" \
    interface=vlan7 network=10.20.8.0
add address=10.20.9.1/24 comment="Mk Address/1176 | Online5Ghz-Lagoa-01" \
    interface=vlan8 network=10.20.9.0
add address=10.20.110.1/30 comment="Mk Address/1338 - Online-5Ghz-Posto-02" \
    interface=vlan9 network=10.20.110.0
add address=10.240.76.1/27 comment="Acesso RB3011 Caixa Dagua" interface=\
    vlan281.1 network=10.240.76.0
add address=10.255.1.186/30 comment="Monit. VJT" interface=\
    tunnel-177.55.253.110 network=10.255.1.184
add address=10.240.76.33/30 comment="Sa\EDda Prefeitura" interface=sfp2 \
    network=10.240.76.32
add address=10.240.76.37/30 comment=Hospital interface=sfp3 network=\
    10.240.76.36
add address=10.240.76.41/30 comment=\
    ";;; Saida Secretaria de Educa\E7\E3o ;;; 16M " interface=sfp4 network=\
    10.240.76.40
add address=10.240.76.45/30 comment=";;;Saida para Secretaria de Saude;;;" \
    interface=sfp5 network=10.240.76.44
add address=10.240.76.49/30 comment="Link Farm\E1cia P\FAblica" interface=\
    sfp6 network=10.240.76.48
add address=10.240.76.53/30 comment=Promotoria interface=sfp7 network=\
    10.240.76.52
add address=192.168.200.1/24 comment="Uplink Promotoria" interface=sfp7 \
    network=192.168.200.0
add address=191.7.208.113/30 comment="Sa\EDda Promotoria" interface=sfp7 \
    network=191.7.208.112
add address=10.240.40.1/24 interface=sfp12 network=10.240.40.0
add address=10.240.76.57/29 comment="Sa\EDda Link Cras" interface=vlan100 \
    network=10.240.76.56
add address=192.168.88.5/24 interface=vlan100 network=192.168.88.0
add address=10.240.14.69/30 interface=sfp8 network=10.240.14.68
add address=10.240.76.65/30 comment="Sa\EDda Rb260 - " interface=sfp8 \
    network=10.240.76.64
add address=10.240.76.69/30 comment="Sa\EDda Roteador APM30" interface=sfp8 \
    network=10.240.76.68
add address=10.240.76.81/30 comment="Sa\EDda Online-5Ghz-Ipuzinho02" \
    interface=vlan254.8 network=10.240.76.80
add address=10.240.76.85/29 comment="Sa\EDda Prefeito" interface=sfp9 \
    network=10.240.76.80
add address=191.7.209.245/30 comment="Sa\EDda Cometa NET" interface=sfp8 \
    network=191.7.209.244
add address=10.240.76.85/30 comment="Downlink Monitor SITE" interface=sfp11 \
    network=10.240.76.84
add address=192.168.150.1/24 interface=sfp9 network=192.168.150.0
add address=10.240.76.105/29 comment="Acesso Centro" interface=vlan500 \
    network=10.240.76.104
add address=10.240.76.89/29 comment="Acesso Cagece" interface=vlan281.1 \
    network=10.240.76.88
add address=10.240.76.113/30 comment="Gerencia RB3011" interface=sfp8 \
    network=10.240.76.112
add address=10.240.76.129/27 comment="Gerencia RB3011" interface=vlan254.8 \
    network=10.240.76.128
add address=10.3.21.1/24 comment=Online-5Ghz-Arueira-03 interface=vlan59 \
    network=10.3.21.0
/ip dhcp-server network
add address=192.168.150.0/24 dns-server=191.7.213.230 gateway=192.168.150.1
add address=192.168.200.0/24 gateway=192.168.200.1
/ip dns
set servers=191.7.213.230,8.8.8.8,1.1.1.1
/ip firewall address-list
add address=10.0.34.0/24 list=ConexoesAceitas
add address=10.0.99.0/24 list=ConexoesAceitas
add address=10.0.100.0/24 list=ConexoesAceitas
add address=10.1.45.0/24 list=ConexoesAceitas
add address=10.1.219.0/24 list=ConexoesAceitas
add address=10.1.220.0/24 list=ConexoesAceitas
add address=10.20.8.0/24 list=ConexoesAceitas
add address=10.20.9.0/24 list=ConexoesAceitas
add address=10.20.110.0/24 list=ConexoesAceitas
add address=10.240.76.0/24 list=ConexoesAceitas
add address=10.1.220.84 list=ConexoesAceitas
add address=10.1.220.84 list=ConexoesAceitas/DNS
add address=10.240.76.34 list=ConexoesAceitas
add address=10.240.76.34 list=ConexoesAceitas/DNS
add address=192.168.200.0/24 list=ConexoesAceitas
add address=192.168.200.0/24 list=ConexoesAceitas/DNS
add address=191.7.208.114 list=ConexoesAceitas
add address=191.7.208.114 list=ConexoesAceitas/DNS
add address=10.20.209.0/24 list=ConexoesAceitas/DNS
add address=10.20.209.0/24 list=ConexoesAceitas
add address=10.240.76.19 list=ConexoesAceitas/DNS
add address=10.20.217.0/24 list=ConexoesAceitas
add address=10.20.217.0/24 list=ConexoesAceitas/DNS
add address=10.0.20.0/24 list=ConexoesAceitas
add address=10.0.20.0/24 list=ConexoesAceitas/DNS
add address=10.0.100.0/24 list=ConexoesAceitas/DNS
add address=10.240.76.76 list=ConexoesAceitas
add address=10.240.76.76 list=ConexoesAceitas/DNS
add address=10.240.76.72/29 list=ConexoesAceitas
add address=191.7.212.6 list=AcessoExterno
add address=177.55.253.110 list=AcessoExterno
add address=10.240.76.84/30 list=ConexoesAceitas
add address=10.21.136.0/24 list=ConexoesAceitas/DNS
add address=10.21.136.0/24 list=ConexoesAceitas
add address=10.240.76.0/24 list=ConexoesAceitas/DNS
add address=10.20.110.0/24 list=ConexoesAceitas/DNS
add address=10.1.220.0/24 list=ConexoesAceitas/DNS
add address=10.0.0.0/8 list=ConexoesAceitas/DNS
add address=10.0.0.0/8 list=ConexoesAceitas
add address=10.240.76.84/30 list=ConexoesAceitas/DNS
add address=10.240.76.88/30 list=ConexoesAceitas
add address=10.240.76.88/30 list=ConexoesAceitas/DNS
add address=192.168.150.0/24 list=ConexoesAceitas
add address=192.168.150.0/24 list=ConexoesAceitas/DNS
add address=10.21.247.0/24 list=ConexoesAceitas/DNS
add address=10.21.247.0/24 list=ConexoesAceitas
add address=10.22.125.0/24 list=ConexoesAceitas
add address=10.22.125.0/24 list=ConexoesAceitas/DNS
add address=10.240.151.2 list=AcessoExterno
add address=191.7.209.48/30 list=ConexoesAceitas
add address=191.7.209.48/30 list=ConexoesAceitas/DNS
add address=10.0.34.0/24 list=ConexoesAceitas/DNS
/ip firewall filter
add chain=forward comment=\
    "Aceita Conexoes ate o ip onde esta a Pagina de Bloqueio" dst-address=\
    191.7.213.51
add action=add-src-to-address-list address-list=AcessoExterno \
    address-list-timeout=1h chain=input comment="Libera Acesso Externo" \
    dst-port=253 protocol=tcp
add chain=input comment="Libera Acesso Externo" dst-port=8291 protocol=tcp \
    src-address-list=AcessoExterno
add action=drop chain=input comment="Dropra Acesso Winbox" dst-port=8291 \
    protocol=tcp
add action=drop chain=forward comment="Bloqueio Manual de Clientes" \
    src-address-list=BloqueioManual
add action=drop chain=forward comment="Dropa Adress List mk_bloqueio" \
    src-address-list=mk_bloqueio
add action=drop chain=forward comment="Block Spammers or Infected Users" \
    dst-port=25 protocol=tcp
add chain=forward comment="MK Conexoes Aceitas/DNS" dst-port=53 protocol=udp \
    src-address-list=ConexoesAceitas/DNS
add action=drop chain=forward comment=DropaConexoesIvalidas connection-state=\
    invalid
add chain=forward comment=AceitaConexoesEstabelecidas connection-state=\
    established
add chain=forward comment="Conexoes Aceitas" src-address-list=ConexoesAceitas
add action=jump chain=forward comment="Control Jump PPP" jump-target=\
    filter-online
add action=drop chain=filter-online comment="MK Filter" dst-port=1080 \
    protocol=tcp
add action=drop chain=filter-online comment="MK Filter" dst-port=1080 \
    protocol=udp
add action=drop chain=filter-online comment="MK Filter" dst-port=137-139 \
    protocol=tcp
add action=drop chain=filter-online comment="MK Filter" dst-port=137-139 \
    protocol=udp
add action=drop chain=filter-online comment="MK Filter" dst-port=445 \
    protocol=tcp
add action=drop chain=filter-online comment="MK Filter" dst-port=445 \
    protocol=udp
add action=drop chain=filter-online comment="MK Filter" dst-port=67-68 \
    protocol=tcp
add action=drop chain=filter-online comment="MK Filter" dst-port=67-68 \
    protocol=udp
/ip firewall nat
add action=src-nat chain=srcnat src-address=10.21.247.10 to-addresses=\
    191.7.208.106
add action=src-nat chain=srcnat comment=NAT src-address-list=\
    ConexoesAceitas/DNS to-addresses=191.7.208.106
add action=masquerade chain=srcnat comment="NAT | Centro(Antigo CometaNET)" \
    src-address=10.240.76.104/29
add action=masquerade chain=srcnat comment="NAT / cleiton@barriguda" \
    src-address=10.1.14.25
add action=masquerade chain=srcnat comment=\
    "Online Ararenda | Online-5Ghz-Balseiros-03" src-address=10.22.125.0/24
add action=dst-nat chain=dstnat comment="CAM Farmacia Marciel" dst-port=\
    3455-3457 protocol=tcp to-addresses=192.168.3.53 to-ports=3455-3457
add action=dst-nat chain=dstnat comment=\
    "CAM | ceisa.angola@onlinetelecom | Am\E9lia 23/04/2020" dst-address=\
    191.7.208.106 dst-port=3775 protocol=tcp to-addresses=192.168.3.180 \
    to-ports=3775
add action=dst-nat chain=dstnat comment="CAM SS Celulares" dst-port=3745-3748 \
    protocol=tcp to-addresses=192.168.3.43 to-ports=3745-3748
add action=dst-nat chain=dstnat comment="CAM Lot\E9rica Marciel" dst-port=\
    3660-3662 protocol=tcp to-addresses=192.168.3.189 to-ports=3660-3662
add action=dst-nat chain=dstnat comment="Acesso SXT" dst-port=1234 protocol=\
    tcp to-addresses=10.21.57.45 to-ports=8291
add action=dst-nat chain=dstnat comment="RED CAM - filhodino@ararenda11" \
    dst-port=8050-8051 protocol=tcp to-addresses=192.168.3.210 to-ports=\
    8050-8051
add action=dst-nat chain=dstnat comment="RED CAM - FARMACIA PUBLICA" \
    dst-port=8052-8053 protocol=tcp to-addresses=192.168.3.112 to-ports=\
    8052-8053
add action=dst-nat chain=dstnat comment=\
    "RED CAM - FARMACIA PUBLICA - Servi\E7o" dst-port=3774 protocol=tcp \
    to-addresses=192.168.3.112 to-ports=3774
add action=dst-nat chain=dstnat comment="RED CAM - FARMACIA PUBLICA" \
    dst-port=8052-8053 protocol=tcp to-addresses=192.168.3.112 to-ports=377
add action=dst-nat chain=dstnat comment="CAM / flavioreiss@ararenda" \
    dst-address=191.7.208.106 dst-port=9101 protocol=tcp to-addresses=\
    192.168.3.246 to-ports=9101
add action=dst-nat chain=dstnat disabled=yes dst-port=60070 protocol=tcp \
    to-addresses=10.20.9.43 to-ports=8291
add action=masquerade chain=srcnat src-address=10.0.20.0/24
add action=masquerade chain=srcnat comment="NAT -  Online5Ghz-Angola-02" \
    src-address=10.21.247.0/24
add action=dst-nat chain=dstnat comment="sxt / thasciane@ararenda" dst-port=\
    4580 protocol=tcp to-addresses=10.0.100.10 to-ports=8291
add action=dst-nat chain=dstnat dst-port=9002 protocol=tcp to-addresses=\
    192.168.88.1 to-ports=80
add action=masquerade chain=srcnat comment="NAT prefeito" src-address=\
    10.240.76.85
add action=dst-nat chain=dstnat comment="CAM/ charles.dino@onlinetelecom" \
    dst-address=191.7.208.106 dst-port=37772-37774 protocol=tcp to-addresses=\
    192.168.3.102 to-ports=37772-37774
add action=dst-nat chain=dstnat dst-port=9653 protocol=tcp to-addresses=\
    10.0.100.57 to-ports=8291
add action=dst-nat chain=dstnat comment="Acesso Omnitik Beira rio" dst-port=\
    5058 protocol=tcp to-addresses=10.240.76.4 to-ports=8291
add action=dst-nat chain=dstnat comment="Acesso Omnitik Beira rio" dst-port=\
    5057 protocol=tcp to-addresses=10.240.76.3 to-ports=8291
add action=dst-nat chain=dstnat dst-port=9563 protocol=tcp to-addresses=\
    10.1.220.41 to-ports=8291
add action=src-nat chain=srcnat disabled=yes src-address=10.20.110.3 \
    to-addresses=191.7.208.106
/ip route
add distance=1 gateway=191.7.208.105
add comment="COMETANET " distance=1 dst-address=10.240.76.72/29 gateway=\
    10.240.76.86
add comment="Monitoramento XPS" distance=1 dst-address=10.240.76.96/29 \
    gateway=10.240.76.86 scope=10
add distance=1 dst-address=10.240.76.116/30 gateway=10.240.76.114
add distance=1 dst-address=10.240.76.128/27 gateway=10.240.76.114
add distance=1 dst-address=10.240.76.160/29 gateway=10.240.76.130
add distance=1 dst-address=10.240.76.192/27 gateway=10.240.76.130
add comment="GERENCIA OLT NOKIA" distance=1 dst-address=10.240.160.12/30 \
    gateway=10.240.76.86
add comment="Bloco Rodrigo Crateus" distance=1 dst-address=191.7.209.48/30 \
    gateway=10.240.76.2
add comment="CAM Charles Dino" distance=1 dst-address=192.168.0.102/32 \
    gateway=10.20.209.40
add comment="CAM SSCelulares" distance=1 dst-address=192.168.3.43/32 gateway=\
    10.20.110.33
add distance=1 dst-address=192.168.3.71/32 gateway=10.21.136.64
add comment="CAM LOTERICA FIBRA" distance=1 dst-address=192.168.3.92/32 \
    gateway=10.240.76.50
add comment="RED / charles.dino@onlinetelecom" distance=1 dst-address=\
    192.168.3.102/32 gateway=10.20.209.40
add comment="CAMERA LOTERICA " distance=1 dst-address=192.168.3.112/32 \
    gateway=10.240.76.50
add distance=1 dst-address=192.168.3.180/32 gateway=10.20.9.49
add comment="CAM FARMACIA FIBRA" distance=1 dst-address=192.168.3.189/32 \
    gateway=10.240.76.50
add comment="CAM -filhodino@ararenda" distance=1 dst-address=192.168.3.210/32 \
    gateway=10.20.110.8
add comment="CAM Escritorio Ararend\E1" distance=1 dst-address=\
    192.168.3.235/32 gateway=10.0.100.57
add comment="RED / flavioreiss@ararenda" distance=1 dst-address=\
    192.168.3.246/32 gateway=10.0.100.26
/ip service
set telnet port=2223
set www port=8000
set ssh port=2225
set api port=18728
set api-ssl disabled=yes
/ppp aaa
set use-radius=yes
/radius
add address=191.7.213.50 comment="Mk Radius" secret=mksolutions service=\
    ppp,login,wireless
/radius incoming
set accept=yes
/snmp
set enabled=yes
/system clock
set time-zone-name=America/Sao_Paulo
/system identity
set name=BNG02-ARARENDA.ONLINE.NET.BR
/system logging
add action=rsyslog topics=system,error,critical,!dhcp
add action=rsyslog topics=critical
add action=rsyslog topics=error
add action=rsyslog topics=info,!firewall
add action=rsyslog topics=warning
add action=rsyslog topics=ospf,critical,error,info
add topics=info
add action=rsyslog topics=interface
add action=rsyslog topics=wireless
/user aaa
set default-group=mk-radius use-radius=yes
