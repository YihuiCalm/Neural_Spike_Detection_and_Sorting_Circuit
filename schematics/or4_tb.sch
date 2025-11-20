v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1197.5 -1020 1275 -1020 { lab=#net1}
N 665 -1005 1135 -1005 { lab=#net1}
N 665 -945 1135 -945 { lab=GND}
N 862.5 -1045 862.5 -1005 { lab=#net1}
N 862.5 -1020 1197.5 -1020 { lab=#net1}
C {devices/vsource.sym} 470 -1590 0 0 {name=Vin value="PULSE(0 5 0 0 0 5ns 10ns)"}
C {devices/vsource.sym} 690 -1470 0 0 {name=VDD value=5v}
C {devices/vdd.sym} 690 -1500 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 690 -1440 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 470 -1560 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 150 -1340 0 0 {name=SPICE only_toplevel=false value="
.control
save all
tran 1ns 200ns uic
plot v(a) v(b) v(c) v(d) v(vout)
.endc
"}
C {devices/lab_pin.sym} 470 -1620 1 0 {name=l7 sig_type=std_logic lab=a}
C {devices/code.sym} 130 -1590 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/lab_pin.sym} 1475 -940 2 0 {name=l1 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 690 -1590 0 0 {name=Vin1 value="PULSE(0 5 0 0 0 10ns 20ns)"}
C {devices/gnd.sym} 690 -1560 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 690 -1620 1 0 {name=l6 sig_type=std_logic lab=b}
C {devices/vsource.sym} 927.5 -1595 0 0 {name=Vin2 value="PULSE(0 5 0 0 0 20ns 40ns)"}
C {devices/gnd.sym} 927.5 -1565 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 927.5 -1625 1 0 {name=l9 sig_type=std_logic lab=c}
C {devices/vsource.sym} 1122.5 -1597.5 0 0 {name=Vin3 value="PULSE(0 5 0 0 0 40ns 80ns)"}
C {devices/gnd.sym} 1122.5 -1567.5 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 1122.5 -1627.5 1 0 {name=l21 sig_type=std_logic lab=d}
C {/media/sf_share/final_project/inverter.sym} 1315 -940 0 0 {name=x1}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 842.5 -1255 0 0 {name=M1
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 645 -975 0 0 {name=M5
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
C {devices/vdd.sym} 862.5 -1285 0 0 {name=l10 lab=VDD}
C {devices/gnd.sym} 862.5 -945 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 822.5 -1255 0 0 {name=l12 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 822.5 -1195 0 0 {name=l13 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 822.5 -1135 0 0 {name=l14 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 822.5 -1075 0 0 {name=l15 sig_type=std_logic lab=d}
C {devices/lab_pin.sym} 625 -975 0 0 {name=l16 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 775 -975 0 0 {name=l17 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 935 -975 0 0 {name=l18 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 1095 -975 0 0 {name=l19 sig_type=std_logic lab=d}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 842.5 -1195 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 842.5 -1135 0 0 {name=M3
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 842.5 -1075 0 0 {name=M4
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 795 -975 0 0 {name=M6
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 955 -975 0 0 {name=M7
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 1115 -975 0 0 {name=M8
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
C {/media/sf_share/final_project/transmission_gate.sym} 1255 -980 1 0 {name=x2}
C {devices/vdd.sym} 1475 -1100 0 0 {name=l22 lab=VDD}
C {devices/lab_pin.sym} 1455 -1020 3 0 {name=l23 sig_type=std_logic lab=vg}
C {devices/capa.sym} 1475 -910 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1475 -880 0 0 {name=l24 lab=GND}
