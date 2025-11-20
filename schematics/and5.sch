v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 637.5 -1207.5 1070 -1207.5 { lab=#net1}
N 637.5 -1267.5 1070 -1267.5 { lab=VDD}
N 865 -1207.5 865 -1155 { lab=#net1}
N 865 -1180 1180 -1180 { lab=#net1}
N 1070 -1267.5 1207.5 -1267.5 { lab=VDD}
N 1070 -1207.5 1207.5 -1207.5 { lab=#net1}
N 1180 -1180 1257.5 -1180 { lab=#net1}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 845 -1125 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 617.5 -1237.5 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 750 -1237.5 0 0 {name=M3
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 900 -1237.5 0 0 {name=M4
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 1050 -1237.5 0 0 {name=M5
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 845 -1065 0 0 {name=M6
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 845 -1005 0 0 {name=M7
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 845 -945 0 0 {name=M8
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
C {devices/gnd.sym} 865 -855 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 597.5 -1237.5 0 0 {name=l11 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 730 -1237.5 0 0 {name=l12 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 880 -1237.5 0 0 {name=l13 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 1030 -1237.5 0 0 {name=l14 sig_type=std_logic lab=d}
C {devices/lab_pin.sym} 825 -1125 0 0 {name=l15 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 825 -1065 0 0 {name=l16 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 825 -1005 0 0 {name=l17 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 825 -945 0 0 {name=l18 sig_type=std_logic lab=d}
C {devices/vdd.sym} 857.5 -1267.5 0 0 {name=l19 lab=VDD}
C {/media/sf_share/final_project/inverter.sym} 1297.5 -1100 0 0 {name=x1}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 1187.5 -1237.5 0 0 {name=M9
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
C {devices/lab_pin.sym} 1167.5 -1237.5 0 0 {name=l22 sig_type=std_logic lab=e}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 845 -885 0 0 {name=M10
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
C {devices/lab_pin.sym} 825 -885 0 0 {name=l23 sig_type=std_logic lab=e}
C {devices/ipin.sym} 380 -1297.5 0 0 {name=p1 lab=a}
C {devices/ipin.sym} 380 -1275 0 0 {name=p2 lab=b}
C {devices/ipin.sym} 380 -1245 0 0 {name=p3 lab=c}
C {devices/ipin.sym} 380 -1220 0 0 {name=p4 lab=d}
C {devices/ipin.sym} 380 -1192.5 0 0 {name=p5 lab=e}
C {devices/opin.sym} 445 -1297.5 0 0 {name=p6 lab=vout}
C {devices/lab_pin.sym} 1457.5 -1100 2 0 {name=l2 sig_type=std_logic lab=vout}
C {/media/sf_share/final_project/transmission_gate.sym} 1237.5 -1140 1 0 {name=x2}
C {devices/vdd.sym} 1457.5 -1260 0 0 {name=l3 lab=VDD}
C {devices/capa.sym} 1457.5 -1070 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1457.5 -1040 0 0 {name=l24 lab=GND}
