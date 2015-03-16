v 20110115 2
C 40000 40000 0 0 0 title-B.sym
C 44600 43600 1 0 0 atmega328p-mpan-1.sym
{
T 49000 49200 5 10 1 1 0 6 1
refdes=U1
T 44900 49400 5 10 0 0 0 0 1
device=ATMEGA328P-PDIP
T 44900 49600 5 10 0 0 0 0 1
footprint=DIL 28 300
}
C 43000 50200 1 0 0 vcc-1.sym
{
T 43000 50200 5 10 0 0 0 0 1
netname=Vcc
}
C 43100 48700 1 0 0 gnd-1.sym
{
T 43100 48700 5 10 0 0 0 0 1
netname=GROUN
}
C 42400 47100 1 270 0 crystal-1.sym
{
T 42900 46900 5 10 0 0 270 0 1
device=CRYSTAL
T 42800 46900 5 10 1 1 0 0 1
refdes=Y1
T 43100 46900 5 10 0 0 270 0 1
symversion=0.1
T 43300 46700 5 10 1 1 180 0 1
value=16000k
T 42400 47100 5 10 0 0 0 0 1
footprint=HC49
}
C 52700 45500 1 90 0 resistor-1.sym
{
T 52300 45800 5 10 0 0 90 0 1
device=RESISTOR
T 52400 45700 5 10 1 1 90 0 1
refdes=Rp1
T 52700 45500 5 10 0 0 90 0 1
footprint=R025
T 52800 45400 5 10 1 1 90 0 1
value=10k
}
C 52900 45200 1 0 0 switch-pushbutton-no-1.sym
{
T 53300 45500 5 10 1 1 0 0 1
refdes=S1
T 53300 45800 5 10 0 0 0 0 1
device=SWITCH_PUSHBUTTON_NO
T 52900 45200 5 10 0 0 0 0 1
footprint=ACY300
}
N 41600 49900 43200 49900 4
N 43200 49900 43200 50200 4
N 41200 49400 43200 49400 4
N 43200 49400 43200 49000 4
C 44200 50400 1 0 0 vcc-1.sym
{
T 44200 50400 5 10 0 0 0 0 1
netname=Vcc
}
C 44100 45900 1 0 0 vcc-1.sym
{
T 44100 45900 5 10 0 0 0 0 1
netname=Vcc
}
C 44200 43500 1 0 0 gnd-1.sym
{
T 44200 43500 5 10 0 0 0 0 1
netname=GROUN
}
N 44000 48400 44600 48400 4
N 44300 45000 44300 45900 4
N 44600 45000 44300 45000 4
N 44600 45600 44300 45600 4
N 44600 44200 44300 44200 4
N 44300 44200 44300 43800 4
N 44600 44000 44300 44000 4
C 40900 46900 1 0 0 capacitor-1.sym
{
T 41100 47600 5 10 0 0 0 0 1
device=CAPACITOR
T 41100 47400 5 10 1 1 0 0 1
refdes=C1
T 41100 47800 5 10 0 0 0 0 1
symversion=0.1
T 40900 46900 5 10 1 1 0 0 1
value=22p
T 40900 46900 5 10 0 0 0 0 1
footprint=ACY200
}
C 40900 46200 1 0 0 capacitor-1.sym
{
T 41100 46900 5 10 0 0 0 0 1
device=CAPACITOR
T 41500 46100 5 10 1 1 0 0 1
refdes=C2
T 41100 47100 5 10 0 0 0 0 1
symversion=0.1
T 40900 46200 5 10 1 1 0 0 1
value=22p
T 40900 46200 5 10 0 0 0 0 1
footprint=ACY200
}
N 41800 47100 44600 47100 4
N 41800 46400 43500 46400 4
N 43500 46400 43500 46500 4
N 43500 46500 44600 46500 4
C 40800 45600 1 0 0 gnd-1.sym
{
T 40800 45600 5 10 0 0 0 0 1
netname=GROUN
}
N 40900 45900 40900 47100 4
C 52400 46700 1 0 0 vcc-1.sym
{
T 52400 46700 5 10 0 0 0 0 1
netname=Vcc
}
C 54000 44700 1 0 0 gnd-1.sym
{
T 54000 44700 5 10 0 0 0 0 1
netname=GROUN
}
N 53900 45200 54100 45200 4
N 54100 45200 54100 45000 4
N 49300 45200 52900 45200 4
N 52600 45500 52600 45200 4
N 52600 46700 52600 46400 4
C 44500 49100 1 90 0 resistor-1.sym
{
T 44100 49400 5 10 0 0 90 0 1
device=RESISTOR
T 44200 49300 5 10 1 1 90 0 1
refdes=Rp2
T 44500 49100 5 10 0 0 90 0 1
footprint=R025
T 44600 49000 5 10 1 1 90 0 1
value=10k
}
N 44400 50400 44400 50000 4
N 44400 49100 44400 48400 4
C 55000 43600 1 0 1 connector3-1.sym
{
T 53200 44500 5 10 0 0 0 6 1
device=CONNECTOR_3
T 55000 44700 5 10 1 1 0 6 1
refdes=ENC
T 55000 43600 5 10 0 0 0 0 1
footprint=JUMPER3
}
C 52300 44100 1 0 0 gnd-1.sym
{
T 52300 44100 5 10 0 0 0 0 1
netname=GROUN
}
N 53300 44400 52400 44400 4
N 49300 45000 50500 45000 4
N 50500 44100 50500 45000 4
N 50500 44100 53300 44100 4
N 53300 43800 50200 43800 4
N 50200 43800 50200 44800 4
N 50200 44800 49300 44800 4
C 51400 45500 1 90 0 resistor-1.sym
{
T 51000 45800 5 10 0 0 90 0 1
device=RESISTOR
T 51100 45700 5 10 1 1 90 0 1
refdes=Rp4
T 51400 45500 5 10 0 0 90 0 1
footprint=R025
T 51500 45400 5 10 1 1 90 0 1
value=10k
}
C 52000 45500 1 90 0 resistor-1.sym
{
T 51600 45800 5 10 0 0 90 0 1
device=RESISTOR
T 51700 45700 5 10 1 1 90 0 1
refdes=Rp3
T 52000 45500 5 10 0 0 90 0 1
footprint=R025
T 52100 45400 5 10 1 1 90 0 1
value=10k
}
N 51300 45500 51300 43800 4
N 51900 45500 51900 44100 4
N 51300 46400 52600 46400 4
C 50200 49100 1 0 0 output-2.sym
{
T 51100 49300 5 10 0 0 0 0 1
net=B0:1
T 50400 49800 5 10 0 0 0 0 1
device=none
T 51100 49200 5 10 1 1 0 1 1
value=DB0
}
C 50200 48800 1 0 0 output-2.sym
{
T 51100 49000 5 10 0 0 0 0 1
net=B1:1
T 50400 49500 5 10 0 0 0 0 1
device=none
T 51100 48900 5 10 1 1 0 1 1
value=DB1
}
C 50200 48500 1 0 0 output-2.sym
{
T 51100 48700 5 10 0 0 0 0 1
net=B2:1
T 50400 49200 5 10 0 0 0 0 1
device=none
T 51100 48600 5 10 1 1 0 1 1
value=DB2
}
C 50200 48200 1 0 0 output-2.sym
{
T 51100 48400 5 10 0 0 0 0 1
net=B3:1
T 50400 48900 5 10 0 0 0 0 1
device=none
T 51100 48300 5 10 1 1 0 1 1
value=DB3
}
C 50200 47900 1 0 0 output-2.sym
{
T 51100 48100 5 10 0 0 0 0 1
net=B4:1
T 50400 48600 5 10 0 0 0 0 1
device=none
T 51100 48000 5 10 1 1 0 1 1
value=DB4
}
C 50200 47600 1 0 0 output-2.sym
{
T 51100 47800 5 10 0 0 0 0 1
net=B5:1
T 50400 48300 5 10 0 0 0 0 1
device=none
T 51100 47700 5 10 1 1 0 1 1
value=DB5
}
N 49300 48700 49500 48700 4
N 49500 48700 49500 49200 4
N 49500 49200 50200 49200 4
N 49300 48500 49700 48500 4
N 49700 48500 49700 48900 4
N 49700 48900 50200 48900 4
N 49300 48300 49800 48300 4
N 50200 48600 49800 48600 4
N 49800 48600 49800 48300 4
N 49300 48100 50000 48100 4
N 50000 48100 50000 48300 4
N 49300 47900 50200 47900 4
N 50200 47900 50200 48000 4
N 49300 47700 50200 47700 4
N 50200 48300 50000 48300 4
C 52800 49100 1 0 0 output-2.sym
{
T 53700 49300 5 10 0 0 0 0 1
net=C0:1
T 53000 49800 5 10 0 0 0 0 1
device=none
T 53700 49200 5 10 1 1 0 1 1
value=DC0
}
C 52800 48800 1 0 0 output-2.sym
{
T 53700 49000 5 10 0 0 0 0 1
net=C1:1
T 53000 49500 5 10 0 0 0 0 1
device=none
T 53700 48900 5 10 1 1 0 1 1
value=DC1
}
C 52800 48500 1 0 0 output-2.sym
{
T 53700 48700 5 10 0 0 0 0 1
net=C2:1
T 53000 49200 5 10 0 0 0 0 1
device=none
T 53700 48600 5 10 1 1 0 1 1
value=DC2
}
C 52800 48200 1 0 0 output-2.sym
{
T 53700 48400 5 10 0 0 0 0 1
net=C3:1
T 53000 48900 5 10 0 0 0 0 1
device=none
T 53700 48300 5 10 1 1 0 1 1
value=DC3
}
C 52800 47900 1 0 0 output-2.sym
{
T 53700 48100 5 10 0 0 0 0 1
net=C4:1
T 53000 48600 5 10 0 0 0 0 1
device=none
T 53700 48000 5 10 1 1 0 1 1
value=DC4
}
C 52800 47600 1 0 0 output-2.sym
{
T 53700 47800 5 10 0 0 0 0 1
net=C5:1
T 53000 48300 5 10 0 0 0 0 1
device=none
T 53700 47700 5 10 1 1 0 1 1
value=DC5
}
N 52800 49200 51600 49200 4
N 51600 47500 51600 49200 4
N 51600 47500 49300 47500 4
N 49300 47500 49300 47100 4
N 52800 48900 51700 48900 4
N 51700 47400 51700 48900 4
N 51700 47400 49600 47400 4
N 49600 47400 49600 46900 4
N 49600 46900 49300 46900 4
N 51800 48600 52800 48600 4
N 51800 48600 51800 47300 4
N 51800 47300 49900 47300 4
N 49900 47300 49900 46700 4
N 49900 46700 49300 46700 4
N 52800 48300 51900 48300 4
N 51900 48300 51900 47200 4
N 51900 47200 50100 47200 4
N 50100 47200 50100 46500 4
N 50100 46500 49300 46500 4
N 52800 48000 52000 48000 4
N 52000 48000 52000 47100 4
N 52000 47100 50300 47100 4
N 50300 47100 50300 46300 4
N 50300 46300 49300 46300 4
N 52800 47700 52100 47700 4
N 52100 47000 52100 47700 4
N 52100 47000 50500 47000 4
N 50500 47000 50500 46100 4
N 50500 46100 49300 46100 4
C 52800 47200 1 0 0 output-2.sym
{
T 53700 47400 5 10 0 0 0 0 1
net=D0:1
T 53000 47900 5 10 0 0 0 0 1
device=none
T 53700 47300 5 10 1 1 0 1 1
value=DD0
}
N 52200 47300 52800 47300 4
N 52200 47300 52200 46700 4
N 52200 46700 50700 46700 4
N 50700 46700 50700 45400 4
N 50700 45400 49300 45400 4
C 50500 43400 1 0 0 output-2.sym
{
T 51400 43600 5 10 0 0 0 0 1
net=D4:1
T 50700 44100 5 10 0 0 0 0 1
device=none
T 51400 43500 5 10 1 1 0 1 1
value=DD4
}
C 50500 43100 1 0 0 output-2.sym
{
T 51400 43300 5 10 0 0 0 0 1
net=D5:1
T 50700 43800 5 10 0 0 0 0 1
device=none
T 51400 43200 5 10 1 1 0 1 1
value=DD5
}
C 50500 42800 1 0 0 output-2.sym
{
T 51400 43000 5 10 0 0 0 0 1
net=D6:1
T 50700 43500 5 10 0 0 0 0 1
device=none
T 51400 42900 5 10 1 1 0 1 1
value=DD6
}
C 50500 42500 1 0 0 output-2.sym
{
T 51400 42700 5 10 0 0 0 0 1
net=D7:1
T 50700 43200 5 10 0 0 0 0 1
device=none
T 51400 42600 5 10 1 1 0 1 1
value=DD7
}
N 49300 44600 50000 44600 4
N 50000 44600 50000 43500 4
N 50000 43500 50500 43500 4
N 49300 44400 49900 44400 4
N 49900 44400 49900 43200 4
N 49900 43200 50500 43200 4
N 49300 44200 49700 44200 4
N 49700 44200 49700 42900 4
N 49700 42900 50500 42900 4
N 49300 44000 49300 42600 4
N 49300 42600 50500 42600 4
C 40700 42400 1 0 0 connector6-1.sym
{
T 42500 44200 5 10 0 0 0 0 1
device=CONNECTOR_6
T 40800 44400 5 10 1 1 0 0 1
refdes=ISP
T 40700 42400 5 10 0 0 0 0 1
footprint=JUMPER6
}
C 42900 42400 1 180 0 vcc-1.sym
{
T 42900 42400 5 10 0 0 180 0 1
netname=Vcc
}
C 43200 42100 1 0 0 gnd-1.sym
{
T 43200 42100 5 10 0 0 0 0 1
netname=GROUN
}
N 42400 42600 42700 42600 4
N 42700 42600 42700 42400 4
N 42400 42900 43300 42900 4
N 43300 42900 43300 42400 4
C 42700 44000 1 0 0 output-2.sym
{
T 43600 44200 5 10 0 0 0 0 1
net=B3:1
T 42900 44700 5 10 0 0 0 0 1
device=none
T 43600 44100 5 10 1 1 0 1 1
value=DB3
}
C 42700 43700 1 0 0 output-2.sym
{
T 43600 43900 5 10 0 0 0 0 1
net=B4:1
T 42900 44400 5 10 0 0 0 0 1
device=none
T 43600 43800 5 10 1 1 0 1 1
value=DB4
}
C 42700 43400 1 0 0 output-2.sym
{
T 43600 43600 5 10 0 0 0 0 1
net=B5:1
T 42900 44100 5 10 0 0 0 0 1
device=none
T 43600 43500 5 10 1 1 0 1 1
value=DB5
}
N 42400 44100 42700 44100 4
N 42400 43800 42700 43800 4
N 42400 43500 42700 43500 4
N 42400 43200 44000 43200 4
N 44000 43200 44000 48400 4
C 42300 44800 1 90 0 capacitor-1.sym
{
T 41600 45000 5 10 0 0 90 0 1
device=CAPACITOR
T 42400 45400 5 10 1 1 90 0 1
refdes=C3
T 41400 45000 5 10 0 0 90 0 1
symversion=0.1
T 42300 44800 5 10 1 1 90 0 1
value=100n
T 42300 44800 5 10 0 0 90 0 1
footprint=ACY100
}
C 41900 45900 1 0 0 vcc-1.sym
{
T 41900 45900 5 10 0 0 0 0 1
netname=Vcc
}
C 42000 44300 1 0 0 gnd-1.sym
{
T 42000 44300 5 10 0 0 0 0 1
netname=GROUN
}
N 42100 44600 42100 44800 4
N 42100 45700 42100 45900 4
C 41100 49400 1 0 0 BNC-1.sym
{
T 41450 50050 5 10 0 0 0 0 1
device=BNC
T 41100 50200 5 10 1 1 0 0 1
refdes=PWR
T 41100 49400 5 10 0 0 0 0 1
footprint=ACY200P
}