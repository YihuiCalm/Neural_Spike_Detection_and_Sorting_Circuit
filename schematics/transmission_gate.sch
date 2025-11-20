v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 702.5 -1622.5 777.5 -1622.5 { lab=vout}
N 777.5 -1622.5 882.5 -1622.5 { lab=vout}
N 882.5 -1622.5 882.5 -1595 { lab=vout}
N 537.5 -1667.5 537.5 -1487.5 { lab=vin}
N 597.5 -1667.5 597.5 -1487.5 { lab=vout}
N 597.5 -1622.5 702.5 -1622.5 { lab=vout}
C {/media/sf_share/final_project/inverter.sym} 605 -1717.5 0 0 {name=x1}
C {devices/lab_pin.sym} 565 -1797.5 0 0 {name=l3 sig_type=std_logic lab=vg}
C {devices/ipin.sym} 392.5 -1790 0 0 {name=p1 lab=vin}
C {devices/ipin.sym} 392.5 -1765 0 0 {name=p2 lab=vg}
C {devices/opin.sym} 422.5 -1790 0 0 {name=p3 lab=vout}
C {devices/lab_pin.sym} 882.5 -1622.5 0 1 {name=l24 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 537.5 -1622.5 0 0 {name=l27 sig_type=std_logic lab=vin}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 567.5 -1687.5 3 1 {name=M5
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 567.5 -1467.5 3 0 {name=M7
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 862.5 -1565 0 0 {name=M6
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
C {devices/gnd.sym} 882.5 -1535 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 842.5 -1565 0 0 {name=l18 sig_type=std_logic lab=vg_bar}
C {devices/lab_pin.sym} 567.5 -1707.5 0 0 {name=l7 sig_type=std_logic lab=vg}
C {devices/lab_pin.sym} 567.5 -1447.5 0 1 {name=l26 sig_type=std_logic lab=vg_bar}
C {devices/lab_pin.sym} 745 -1797.5 0 1 {name=l8 sig_type=std_logic lab=vg_bar}
