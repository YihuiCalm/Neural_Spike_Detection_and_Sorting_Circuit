v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 940 -1315 940 -1300 { lab=VDD}
N 865 -1295 1020 -1295 { lab=VDD}
N 940 -1300 940 -1295 { lab=VDD}
N 1020 -1235 1020 -1215 { lab=#net1}
N 865 -1235 865 -1215 { lab=#net1}
N 865 -1155 1020 -1155 { lab=#net2}
N 865 -1130 1020 -1130 { lab=#net2}
N 1020 -1070 1020 -1050 { lab=#net3}
N 865 -1070 865 -1050 { lab=#net4}
N 865 -990 1020 -990 { lab=GND}
N 940 -1155 940 -1130 { lab=#net2}
N 940 -1142.5 1125 -1142.5 { lab=#net2}
N 1060 -1100 1120 -1100 { lab=a_bar}
N 1060 -1020 1120 -1020 { lab=b_bar}
N 1120 -1020 1122.5 -1020 { lab=b_bar}
N 1125 -1170 1305 -1170 { lab=#net2}
N 1125 -1170 1125 -1142.5 { lab=#net2}
N 865 -1225 1020 -1225 { lab=#net1}
C {devices/lab_pin.sym} 980 -1265 0 0 {name=l10 sig_type=std_logic lab=b}
C {devices/vdd.sym} 940 -1315 0 0 {name=l13 lab=VDD}
C {devices/lab_pin.sym} 825 -1265 0 0 {name=l14 sig_type=std_logic lab=a}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 845 -1265 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 1000 -1265 0 0 {name=M3
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
C {devices/lab_pin.sym} 825 -1100 0 0 {name=l17 sig_type=std_logic lab=a}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 845 -1020 0 0 {name=M8
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
C {devices/lab_pin.sym} 825 -1020 0 0 {name=l18 sig_type=std_logic lab=b}
C {devices/gnd.sym} 942.5 -990 0 0 {name=l20 lab=GND}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 845 -1100 0 0 {name=M7
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 845 -1185 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 1040 -1185 2 0 {name=M4
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 1040 -1100 0 1 {name=M5
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 1040 -1020 0 1 {name=M6
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
C {/media/sf_share/final_project/inverter.sym} 1345 -1090 0 0 {name=x5}
C {devices/lab_pin.sym} 1505 -1090 0 1 {name=l11 sig_type=std_logic lab=vout}
C {devices/ipin.sym} 1335 -1557.5 0 0 {name=p1 lab=a}
C {devices/ipin.sym} 1335 -1527.5 0 0 {name=p2 lab=b}
C {devices/opin.sym} 1407.5 -1557.5 0 0 {name=p3 lab=vout}
C {/media/sf_share/final_project/transmission_gate.sym} 1285 -1130 1 0 {name=x6}
C {devices/vdd.sym} 1505 -1250 0 0 {name=l2 lab=VDD}
C {devices/capa.sym} 1505 -1060 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1505 -1030 0 0 {name=l3 lab=GND}
C {/media/sf_share/final_project/inverter.sym} 860 -1347.5 0 0 {name=x7}
C {/media/sf_share/final_project/inverter.sym} 860 -1480 0 0 {name=x8}
C {devices/lab_pin.sym} 820 -1560 0 0 {name=l4 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 820 -1427.5 0 0 {name=l5 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 1000 -1560 0 1 {name=l6 sig_type=std_logic lab=a_bar}
C {devices/lab_pin.sym} 1000 -1427.5 0 1 {name=l7 sig_type=std_logic lab=b_bar}
C {devices/lab_pin.sym} 825 -1185 2 1 {name=l1 sig_type=std_logic lab=b_bar}
C {devices/lab_pin.sym} 1060 -1185 0 1 {name=l8 sig_type=std_logic lab=a_bar}
C {devices/lab_pin.sym} 1122.5 -1020 0 1 {name=l12 sig_type=std_logic lab=b_bar}
C {devices/lab_pin.sym} 1120 -1100 0 1 {name=l9 sig_type=std_logic lab=a_bar}
