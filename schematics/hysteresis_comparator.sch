v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 370 -1660 370 -1600 { lab=#net1}
N 600 -1660 600 -1600 { lab=#net2}
N 370 -1540 600 -1540 { lab=#net3}
N 490 -1540 490 -1490 { lab=#net3}
N 250 -1690 330 -1690 { lab=#net1}
N 640 -1690 730 -1690 { lab=#net2}
N 290 -1660 370 -1660 { lab=#net1}
N 290 -1690 290 -1660 { lab=#net1}
N 600 -1660 680 -1660 { lab=#net2}
N 680 -1690 680 -1660 { lab=#net2}
N 250 -1090 730 -1090 { lab=#net4}
N 210 -1120 300 -1120 { lab=#net4}
N 300 -1120 300 -1090 { lab=#net4}
N 680 -1660 680 -1390 { lab=#net2}
N 290 -1660 290 -1390 { lab=#net1}
N 290 -1330 680 -1330 { lab=#net5}
N 770 -1660 770 -1120 { lab=vout}
N 210 -1660 210 -1120 { lab=#net4}
N 490 -1330 490 -1290 { lab=#net5}
N 720 -1360 770 -1360 { lab=vout}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 350 -1690 0 0 {name=M3
L=1
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 750 -1090 0 0 {name=M1
L=1
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 620 -1690 0 1 {name=M2
L=1
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
C {devices/vdd.sym} 370 -1720 0 0 {name=l1 lab=VDD}
C {devices/vdd.sym} 600 -1720 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 230 -1690 0 1 {name=M4
L=1
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
C {devices/vdd.sym} 210 -1720 0 1 {name=l5 lab=VDD}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 750 -1690 0 0 {name=M5
L=1
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
C {devices/vdd.sym} 770 -1720 0 1 {name=l6 lab=VDD}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 350 -1570 0 0 {name=M6
L=1
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 620 -1570 0 1 {name=M7
L=1
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 470 -1460 0 0 {name=M8
L=1
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 230 -1090 0 1 {name=M9
L=1
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
C {devices/gnd.sym} 490 -1430 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 270 -1360 0 0 {name=M10
L=1
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 700 -1360 0 1 {name=M11
L=1
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 470 -1260 0 0 {name=M12
L=1
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
C {devices/gnd.sym} 490 -1230 0 0 {name=l8 lab=GND}
C {devices/ipin.sym} 90 -1480 0 0 {name=p1 lab=vin}
C {devices/opin.sym} 100 -1400 0 0 {name=p2 lab=vout}
C {devices/lab_pin.sym} 330 -1570 3 0 {name=l3 sig_type=std_logic lab=vth_h}
C {devices/lab_pin.sym} 640 -1570 3 0 {name=l4 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 450 -1460 0 0 {name=l10 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 450 -1260 0 0 {name=l11 sig_type=std_logic lab=vhys}
C {devices/lab_pin.sym} 770 -1400 0 1 {name=l12 sig_type=std_logic lab=vout}
C {devices/gnd.sym} 210 -1060 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 770 -1060 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 250 -1360 3 0 {name=l15 sig_type=std_logic lab=vref}
C {devices/ipin.sym} 90 -1440 0 0 {name=p3 lab=vth_h}
C {devices/ipin.sym} 90 -1400 0 0 {name=p4 lab=vref}
C {devices/ipin.sym} 90 -1360 0 0 {name=p5 lab=vbias}
C {devices/ipin.sym} 90 -1320 0 0 {name=p6 lab=vhys}
