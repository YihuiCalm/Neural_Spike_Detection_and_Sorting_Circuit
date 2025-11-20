v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 730 -2020 730 -1960 { lab=#net1}
N 960 -2020 960 -1960 { lab=#net2}
N 730 -1900 960 -1900 { lab=#net3}
N 850 -1900 850 -1850 { lab=#net3}
N 610 -2050 690 -2050 { lab=#net1}
N 1000 -2050 1090 -2050 { lab=#net2}
N 650 -2020 730 -2020 { lab=#net1}
N 650 -2050 650 -2020 { lab=#net1}
N 960 -2020 1040 -2020 { lab=#net2}
N 1040 -2050 1040 -2020 { lab=#net2}
N 610 -1450 1090 -1450 { lab=#net4}
N 570 -1480 660 -1480 { lab=#net4}
N 660 -1480 660 -1450 { lab=#net4}
N 1040 -2020 1040 -1750 { lab=#net2}
N 650 -2020 650 -1750 { lab=#net1}
N 650 -1690 1040 -1690 { lab=#net5}
N 1130 -2020 1130 -1480 { lab=vout}
N 570 -2020 570 -1480 { lab=#net4}
N 850 -1690 850 -1650 { lab=#net5}
N 1080 -1720 1130 -1720 { lab=vout}
C {devices/vsource.sym} 380 -1470 0 0 {name=v1 value=5.0v}
C {devices/vdd.sym} 380 -1500 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 380 -1440 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 10 -1810 0 0 {name=SPICE only_toplevel=false value="
.control
save all
dc vin 0 5 0.001
set wr_singlescale
set wr_vecnames
wrdata hysteresis_comparator_dc_raise.csv v(vout)
dc vin 5 0 -0.001
wrdata hysteresis_comparator_dc_fall.csv v(vout)

.endc
"}
C {devices/code.sym} 0 -2000 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/vsource.sym} 30 -1470 0 0 {name=vin value=5}
C {devices/gnd.sym} 30 -1440 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 100 -1470 0 0 {name=v3 value=2v}
C {devices/gnd.sym} 100 -1440 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 170 -1470 0 0 {name=v4 value=0.3v}
C {devices/gnd.sym} 170 -1440 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 240 -1470 0 0 {name=v5 value=0.6v}
C {devices/gnd.sym} 240 -1440 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 310 -1470 0 0 {name=v6 value=1.9v}
C {devices/gnd.sym} 310 -1440 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 30 -1500 1 0 {name=l14 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 100 -1500 1 0 {name=l15 sig_type=std_logic lab=vth_h}
C {devices/lab_pin.sym} 170 -1500 1 0 {name=l16 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 240 -1500 1 0 {name=l17 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 310 -1500 1 0 {name=l18 sig_type=std_logic lab=vhys}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 710 -2050 0 0 {name=M3
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 1110 -1450 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 980 -2050 0 1 {name=M2
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
C {devices/vdd.sym} 730 -2080 0 0 {name=l19 lab=VDD}
C {devices/vdd.sym} 960 -2080 0 0 {name=l20 lab=VDD}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 590 -2050 0 1 {name=M4
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
C {devices/vdd.sym} 570 -2080 0 1 {name=l21 lab=VDD}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 1110 -2050 0 0 {name=M5
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
C {devices/vdd.sym} 1130 -2080 0 1 {name=l22 lab=VDD}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 710 -1930 0 0 {name=M6
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 980 -1930 0 1 {name=M7
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 830 -1820 0 0 {name=M8
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 590 -1450 0 1 {name=M9
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
C {devices/gnd.sym} 850 -1790 0 0 {name=l23 lab=GND}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 630 -1720 0 0 {name=M10
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 1060 -1720 0 1 {name=M11
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 830 -1620 0 0 {name=M12
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
C {devices/gnd.sym} 850 -1590 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 690 -1930 3 0 {name=l25 sig_type=std_logic lab=vth_h}
C {devices/lab_pin.sym} 1000 -1930 3 0 {name=l26 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 810 -1820 0 0 {name=l27 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 810 -1620 0 0 {name=l28 sig_type=std_logic lab=vhys}
C {devices/lab_pin.sym} 1130 -1760 0 1 {name=l29 sig_type=std_logic lab=vout}
C {devices/gnd.sym} 570 -1420 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 1130 -1420 0 0 {name=l31 lab=GND}
C {devices/lab_pin.sym} 610 -1720 3 0 {name=l32 sig_type=std_logic lab=vref}
