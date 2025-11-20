v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 450 -1690 630 -1690 { lab=#net1}
N 450 -1810 450 -1780 { lab=#net2}
N 450 -1720 450 -1660 { lab=#net1}
N 450 -1790 600 -1790 { lab=#net2}
N 450 -1580 600 -1580 { lab=#net3}
N 630 -1750 630 -1620 { lab=#net1}
N 410 -1840 410 -1520 { lab=vin}
N 450 -1600 450 -1550 { lab=#net3}
N 360 -1690 410 -1690 { lab=vin}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 430 -1630 0 0 {name=M1
L=1
W=15
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 430 -1750 0 0 {name=M2
L=1
W=15
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 430 -1840 0 0 {name=M3
L=1
W=1.5
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 430 -1520 0 0 {name=M4
L=1
W=1.05
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 630 -1770 3 0 {name=M5
L=15
W=1
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 630 -1600 1 0 {name=M6
L=5.5
W=1
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
C {devices/lab_pin.sym} 360 -1690 2 1 {name=l5 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 450 -1490 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 450 -1870 0 0 {name=l7 lab=VDD}
C {devices/vdd.sym} 660 -1580 1 0 {name=l10 lab=VDD}
C {devices/gnd.sym} 660 -1790 3 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 810 -1690 2 0 {name=l12 sig_type=std_logic lab=vout}
C {/media/sf_share/final_project/inverter.sym} 670 -1610 0 0 {name=x1}
C {devices/ipin.sym} 147.5 -1847.5 0 0 {name=p1 lab=vin}
C {devices/opin.sym} 177.5 -1847.5 0 0 {name=p2 lab=vout}
