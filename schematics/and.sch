v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 620 -1725 620 -1710 { lab=VDD}
N 620 -1565 620 -1552.5 { lab=#net1}
N 620 -1492.5 620 -1482.5 { lab=GND}
N 545 -1645 700 -1645 { lab=#net2}
N 545 -1705 700 -1705 { lab=VDD}
N 620 -1710 620 -1705 { lab=VDD}
N 620 -1645 620 -1625 { lab=#net2}
N 620 -1632.5 782.5 -1632.5 { lab=#net2}
C {devices/ipin.sym} 392.5 -1790 0 0 {name=p1 lab=a}
C {devices/opin.sym} 422.5 -1790 0 0 {name=p3 lab=vout}
C {devices/lab_pin.sym} 660 -1675 0 0 {name=l5 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 962.5 -1632.5 2 0 {name=l6 sig_type=std_logic lab=vout}
C {devices/gnd.sym} 620 -1482.5 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 620 -1725 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 505 -1675 0 0 {name=l2 sig_type=std_logic lab=a}
C {devices/ipin.sym} 392.5 -1765 0 0 {name=p2 lab=b}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 600 -1522.5 0 0 {name=M1
L=0.5
W=0.5
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 600 -1595 0 0 {name=M5
L=0.5
W=0.5
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 525 -1675 0 0 {name=M2
L=0.5
W=0.5
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 680 -1675 0 0 {name=M4
L=0.5
W=0.5
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/lab_pin.sym} 580 -1595 0 0 {name=l1 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 580 -1522.5 0 0 {name=l3 sig_type=std_logic lab=b}
C {/media/sf_share/final_project/inverter.sym} 822.5 -1552.5 0 0 {name=x1}
