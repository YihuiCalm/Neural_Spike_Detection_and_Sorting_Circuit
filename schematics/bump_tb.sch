v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1562.5 -1550 1562.5 -1540 { lab=#net1}
N 2147.5 -945 2147.5 -895 { lab=#net2}
N 1947.5 -975 2107.5 -975 { lab=v1}
N 2187.5 -1145 2347.5 -1145 { lab=v2}
N 1987.5 -945 2307.5 -945 { lab=#net2}
N 2307.5 -1115 2307.5 -945 { lab=#net2}
N 2187.5 -1265 2357.5 -1265 { lab=#net3}
N 2147.5 -1235 2277.5 -1235 { lab=#net3}
N 2277.5 -1265 2277.5 -1235 { lab=#net3}
N 2397.5 -1095 2397.5 -1035 { lab=vout}
N 2397.5 -1095 2487.5 -1095 { lab=vout}
N 2437.5 -1005 2527.5 -1005 { lab=#net4}
N 2727.5 -1095 2727.5 -1035 { lab=#net5}
N 2727.5 -1095 2817.5 -1095 { lab=#net5}
N 2767.5 -1005 2857.5 -1005 { lab=#net6}
N 2857.5 -1065 2857.5 -955 { lab=#net6}
N 2527.5 -835 2857.5 -835 { lab=#net7}
N 2697.5 -835 2697.5 -815 { lab=#net7}
N 2147.5 -1235 2147.5 -1175 { lab=#net3}
N 2147.5 -1115 2147.5 -1005 { lab=#net8}
N 2527.5 -1065 2527.5 -955 { lab=#net4}
N 2527.5 -895 2527.5 -835 { lab=#net7}
N 2857.5 -895 2857.5 -835 { lab=#net7}
N 2397.5 -1175 2397.5 -1095 { lab=vout}
N 2697.5 -755 2697.5 -735 { lab=#net9}
N 2527.5 -1152.5 2527.5 -1125 { lab=VDD}
C {devices/code_shown.sym} 1252.5 -407.5 0 0 {name=SPICE only_toplevel=false value="
.control
save all

dc V1 0 10 0.01
plot i(Vmeas_bump) vs v(v1)-v(v2)
plot v(vout)
plot v(v1)
plot i(Vmeas_bump)
.endc
"}
C {devices/code.sym} 1220 -610 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/lab_pin.sym} 1422.5 -1535 1 0 {name=l10 sig_type=std_logic lab=vbias_bump}
C {devices/gnd.sym} 1422.5 -1475 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 1422.5 -1505 0 0 {name=Vbias value=2v}
C {devices/gnd.sym} 1562.5 -1480 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 1562.5 -1510 0 0 {name=VDD value=5v}
C {devices/vdd.sym} 1562.5 -1610 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 1692.5 -1480 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 1692.5 -1510 0 0 {name=V1 value="PULSE(1.6 0.4 0 0 0 20ns 40ns)"}
C {devices/lab_pin.sym} 1692.5 -1540 1 0 {name=l21 sig_type=std_logic lab=v1}
C {devices/ammeter.sym} 1562.5 -1580 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 1342.5 -1535 1 0 {name=l24 sig_type=std_logic lab=vbias_WTA}
C {devices/gnd.sym} 1342.5 -1475 0 0 {name=l25 lab=GND}
C {devices/vsource.sym} 1342.5 -1505 0 0 {name=Vbias1 value=2v}
C {devices/lab_pin.sym} 2460 -1095 3 0 {name=l36 sig_type=std_logic lab=vout}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2167.5 -1145 0 1 {name=M3
L=1
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 1967.5 -975 0 0 {name=M4
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2127.5 -975 0 0 {name=M6
L=1
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2327.5 -1145 0 1 {name=M7
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2167.5 -865 0 1 {name=M1
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
C {devices/vdd.sym} 2147.5 -1295 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 2147.5 -835 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 2187.5 -865 0 1 {name=l5 sig_type=std_logic lab=vbias_bump}
C {devices/vdd.sym} 1987.5 -1005 0 0 {name=l12 lab=VDD}
C {devices/vdd.sym} 2307.5 -1175 0 0 {name=l13 lab=VDD}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 2377.5 -1265 0 0 {name=M2
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 2167.5 -1265 0 1 {name=M5
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
C {devices/ammeter.sym} 2397.5 -1205 0 0 {name=Vmeas_bump}
C {devices/vdd.sym} 2397.5 -1295 0 0 {name=l14 lab=VDD}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2417.5 -1005 0 1 {name=M8
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2507.5 -1095 0 0 {name=M9
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
C {devices/gnd.sym} 2397.5 -975 0 0 {name=l15 lab=GND}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2747.5 -1005 0 1 {name=M10
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2837.5 -1095 0 0 {name=M11
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
C {devices/gnd.sym} 2727.5 -975 0 0 {name=l17 lab=GND}
C {devices/vdd.sym} 2857.5 -1125 0 0 {name=l18 lab=VDD}
C {devices/isource.sym} 2727.5 -1125 0 0 {name=I0 value=5uA}
C {devices/vdd.sym} 2727.5 -1155 0 0 {name=l19 lab=VDD}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2677.5 -705 0 0 {name=M12
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
C {devices/gnd.sym} 2697.5 -675 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 2657.5 -705 0 0 {name=l23 sig_type=std_logic lab=vbias_WTA}
C {devices/ammeter.sym} 2527.5 -925 0 0 {name=Vmeas_WTA}
C {devices/ammeter.sym} 2857.5 -925 0 0 {name=Vmeas_ref}
C {devices/ammeter.sym} 2697.5 -785 0 0 {name=Vmeas_bais}
C {devices/lab_pin.sym} 1947.5 -975 1 0 {name=l3 sig_type=std_logic lab=v1}
C {devices/gnd.sym} 1897.5 -1480 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 1897.5 -1510 0 0 {name=V2 value=5}
C {devices/lab_pin.sym} 1897.5 -1540 1 0 {name=l26 sig_type=std_logic lab=v2}
C {devices/lab_pin.sym} 2347.5 -1145 2 0 {name=l4 sig_type=std_logic lab=v2}
C {devices/vdd.sym} 2527.5 -1152.5 0 0 {name=l7 lab=VDD}
