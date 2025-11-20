v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 392.5 -1655 442.5 -1655 { lab=vin}
N 482.5 -1642.5 662.5 -1642.5 { lab=#net1}
N 482.5 -1762.5 482.5 -1732.5 { lab=#net2}
N 482.5 -1672.5 482.5 -1612.5 { lab=#net1}
N 482.5 -1742.5 632.5 -1742.5 { lab=#net2}
N 482.5 -1532.5 632.5 -1532.5 { lab=#net3}
N 662.5 -1702.5 662.5 -1572.5 { lab=#net1}
N 442.5 -1792.5 442.5 -1472.5 { lab=vin}
N 482.5 -1552.5 482.5 -1502.5 { lab=#net3}
C {devices/vsource.sym} 760 -1310 0 0 {name=VDD value=5v}
C {devices/vdd.sym} 760 -1340 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 760 -1280 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 150 -1340 0 0 {name=SPICE only_toplevel=false value="
.control
save all
dc Vin 0 5 0.01
set wr_singlescale
set wr_vecnames
wrdata schmitt_dc_raise.csv v(vout)
dc vin 5 0 -0.01
wrdata schmitt_dc_fall.csv v(vout)

.endc
"}
C {devices/code.sym} 130 -1590 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/vsource.sym} 610 -1310 0 0 {name=Vin value=5v}
C {devices/gnd.sym} 610 -1280 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 610 -1340 3 1 {name=l9 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 392.5 -1655 2 1 {name=l5 sig_type=std_logic lab=vin}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 462.5 -1582.5 0 0 {name=M13
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 462.5 -1702.5 0 0 {name=M14
L=1
W=10
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 462.5 -1792.5 0 0 {name=M15
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 462.5 -1472.5 0 0 {name=M16
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 662.5 -1722.5 3 0 {name=M17
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 662.5 -1552.5 1 0 {name=M18
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
C {devices/gnd.sym} 482.5 -1442.5 0 0 {name=l30 lab=GND}
C {devices/vdd.sym} 482.5 -1822.5 0 0 {name=l33 lab=VDD}
C {devices/vdd.sym} 692.5 -1532.5 1 0 {name=l34 lab=VDD}
C {devices/gnd.sym} 692.5 -1742.5 3 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} 842.5 -1642.5 2 0 {name=l36 sig_type=std_logic lab=vout}
C {/media/sf_share/final_project/inverter.sym} 702.5 -1562.5 0 0 {name=x2}
