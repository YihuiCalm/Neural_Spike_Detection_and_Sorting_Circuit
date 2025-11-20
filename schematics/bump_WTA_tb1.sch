v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1505 -1505 1505 -1495 { lab=#net1}
N 2280 -1040 2450 -1040 { lab=#net2}
N 2490 -870 2490 -810 { lab=#net3}
N 2490 -870 2580 -870 { lab=#net3}
N 2530 -780 2620 -780 { lab=#net4}
N 2820 -870 2820 -810 { lab=#net5}
N 2820 -870 2910 -870 { lab=#net5}
N 2860 -780 2950 -780 { lab=#net6}
N 2950 -840 2950 -730 { lab=#net6}
N 2620 -610 2950 -610 { lab=#net7}
N 2790 -610 2790 -590 { lab=#net7}
N 2620 -840 2620 -730 { lab=#net4}
N 2620 -670 2620 -610 { lab=#net7}
N 2950 -670 2950 -610 { lab=#net7}
N 2490 -950 2490 -870 { lab=#net3}
N 2790 -530 2790 -510 { lab=#net8}
N 2150 -1225 2180 -1225 { lab=LPbias2}
N 2150 -1185 2180 -1185 { lab=LPbias1}
N 2020 -1225 2020 -1205 { lab=#net9}
N 2020 -1205 2180 -1205 { lab=#net9}
N 2070 -720 2070 -670 { lab=#net10}
N 1870 -750 2030 -750 { lab=vnxor_amp}
N 2110 -920 2270 -920 { lab=VDD}
N 1910 -720 2230 -720 { lab=#net10}
N 2230 -890 2230 -720 { lab=#net10}
N 2110 -1040 2280 -1040 { lab=#net2}
N 2070 -1010 2200 -1010 { lab=#net2}
N 2200 -1040 2200 -1010 { lab=#net2}
N 2070 -1010 2070 -950 { lab=#net2}
N 2070 -890 2070 -780 { lab=#net11}
N 1840 -750 1872.5 -750 { lab=vnxor_amp}
N 1830 -750 1840 -750 { lab=vnxor_amp}
N 1727.5 -750 1830 -750 { lab=vnxor_amp}
C {devices/code_shown.sym} 1252.5 -407.5 0 0 {name=SPICE only_toplevel=false value="
.model fsrc1 filesource(file=\\"data/eval_dataset/electrode_ch2.txt\\" timeoffset=0 timescale=1 amploffset=[0] amplscale=[1.0] timerelative=false amplstep=false) 
a1 %v[vin] fsrc1
.model fsrc2 filesource(file=\\"data/eval_dataset/teach_ch1.txt\\" timeoffset=0 timescale=1 amploffset=[0] amplscale=[1.0] timerelative=false amplstep=false) 
a2 %v[vg] fsrc2
.control
save all
tran 10us 600ms uic
plot i(Vmeas_in) 
plot i(Vmeas_bump)
plot v(vnxor) 
plot v(vout) v(vg)
.endc
"}
C {devices/code.sym} 1220 -610 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/lab_pin.sym} 1365 -1490 1 0 {name=l10 sig_type=std_logic lab=vbias_bump}
C {devices/gnd.sym} 1365 -1430 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 1365 -1460 0 0 {name=Vbias value=3v}
C {devices/gnd.sym} 1505 -1435 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 1505 -1465 0 0 {name=VDD value=5v}
C {devices/vdd.sym} 1505 -1565 0 0 {name=l6 lab=VDD}
C {devices/ammeter.sym} 1505 -1535 0 0 {name=Vmeas}
C {devices/ammeter.sym} 2490 -980 0 0 {name=Vmeas_bump}
C {devices/vdd.sym} 2490 -1070 0 0 {name=l14 lab=VDD}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2510 -780 0 1 {name=M8
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2600 -870 0 0 {name=M9
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
C {devices/gnd.sym} 2490 -750 0 0 {name=l15 lab=GND}
C {devices/vdd.sym} 2620 -900 0 0 {name=l16 lab=VDD}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2840 -780 0 1 {name=M10
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2930 -870 0 0 {name=M11
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
C {devices/gnd.sym} 2820 -750 0 0 {name=l17 lab=GND}
C {devices/vdd.sym} 2950 -900 0 0 {name=l18 lab=VDD}
C {devices/isource.sym} 2820 -900 0 0 {name=I0 value=12uA}
C {devices/vdd.sym} 2820 -930 0 0 {name=l19 lab=VDD}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2770 -480 0 0 {name=M12
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
C {devices/gnd.sym} 2790 -450 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 2750 -480 0 0 {name=l23 sig_type=std_logic lab=vbias_WTA}
C {devices/lab_pin.sym} 1285 -1490 1 0 {name=l24 sig_type=std_logic lab=vbias_WTA}
C {devices/gnd.sym} 1285 -1430 0 0 {name=l25 lab=GND}
C {devices/vsource.sym} 1285 -1460 0 0 {name=Vbias1 value=3v}
C {devices/ammeter.sym} 2620 -700 0 0 {name=Vmeas_in}
C {devices/ammeter.sym} 2950 -700 0 0 {name=Vmeas_ref}
C {devices/ammeter.sym} 2790 -560 0 0 {name=Vmeas_bais}
C {devices/lab_pin.sym} 1730 -1225 0 0 {name=l26 sig_type=std_logic lab=vin
}
C {/media/sf_share/Highpass_500Hz.sym} 1880 -1205 0 0 {name=x1}
C {devices/lab_pin.sym} 1730 -1205 2 1 {name=l27 sig_type=std_logic lab=HPbias

}
C {devices/lab_pin.sym} 1730 -1185 2 1 {name=l28 sig_type=std_logic lab=VREF

}
C {/media/sf_share/Lowpass_2500Hz.sym} 2330 -1205 0 0 {name=x2}
C {devices/lab_pin.sym} 2150 -1185 2 1 {name=l29 sig_type=std_logic lab=LPbias1

}
C {devices/lab_pin.sym} 2150 -1225 2 1 {name=l30 sig_type=std_logic lab=LPbias2

}
C {/media/sf_share/final_project/schmitt_trigger.sym} 2630 -1225 0 0 {name=x3}
C {devices/lab_pin.sym} 2480 -1225 3 0 {name=l31 sig_type=std_logic lab=vdata

}
C {devices/lab_pin.sym} 2630 -1225 2 0 {name=l40 sig_type=std_logic lab=vspike

}
C {devices/gnd.sym} 1307.5 -1665 0 0 {name=l45 lab=GND}
C {devices/vsource.sym} 1307.5 -1695 0 0 {name=V5 value=0.4}
C {devices/lab_pin.sym} 1307.5 -1725 3 1 {name=l46 sig_type=std_logic lab=HPbias

}
C {devices/gnd.sym} 1377.5 -1665 0 0 {name=l47 lab=GND}
C {devices/lab_pin.sym} 1377.5 -1725 3 1 {name=l48 sig_type=std_logic lab=VREF

}
C {devices/vsource.sym} 1377.5 -1695 0 0 {name=V6 value=2.0}
C {devices/vsource.sym} 1447.5 -1695 0 0 {name=V3 value=0.543v}
C {devices/gnd.sym} 1447.5 -1665 0 0 {name=l49 lab=GND}
C {devices/lab_pin.sym} 1447.5 -1725 3 1 {name=l50 sig_type=std_logic lab=LPbias1

}
C {devices/vsource.sym} 1517.5 -1695 0 0 {name=V4 value=0.4v}
C {devices/gnd.sym} 1517.5 -1665 0 0 {name=l51 lab=GND}
C {devices/lab_pin.sym} 1517.5 -1725 3 1 {name=l52 sig_type=std_logic lab=LPbias2

}
C {/media/sf_share/final_project/cap_mem.sym} 2177.5 -1442.5 0 0 {name=x4}
C {devices/lab_pin.sym} 2027.5 -1422.5 0 0 {name=l9 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 2257.5 -1482.5 0 1 {name=l21 sig_type=std_logic lab=vmem
}
C {devices/lab_pin.sym} 2102.5 -1372.5 3 0 {name=l44 sig_type=std_logic lab=vbias1}
C {devices/lab_pin.sym} 2125 -1372.5 3 0 {name=l22 sig_type=std_logic lab=vbias2}
C {devices/lab_pin.sym} 2027.5 -1462.5 2 1 {name=l32 sig_type=std_logic lab=vspike

}
C {devices/lab_pin.sym} 2027.5 -1482.5 2 1 {name=l33 sig_type=std_logic lab=vg

}
C {/media/sf_share/final_project/nxor.sym} 1687.5 -740 0 0 {name=x5}
C {devices/lab_pin.sym} 1537.5 -750 0 0 {name=l3 sig_type=std_logic lab=vmem
}
C {devices/lab_pin.sym} 1537.5 -730 2 1 {name=l43 sig_type=std_logic lab=vspike

}
C {devices/lab_pin.sym} 2650 -950 3 1 {name=l55 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 1852.5 -750 1 0 {name=l53 sig_type=std_logic lab=vnxor_amp
}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2090 -920 0 1 {name=M6
L=2
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 1890 -750 0 0 {name=M7
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2050 -750 0 0 {name=M2
L=2
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2250 -920 0 1 {name=M3
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
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} 2090 -640 0 1 {name=M4
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
C {devices/vdd.sym} 2070 -1070 0 0 {name=l12 lab=VDD}
C {devices/gnd.sym} 2070 -610 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 2110 -640 0 1 {name=l4 sig_type=std_logic lab=vbias_bump}
C {devices/vdd.sym} 1910 -780 0 0 {name=l5 lab=VDD}
C {devices/vdd.sym} 2230 -950 0 0 {name=l13 lab=VDD}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 2090 -1040 0 1 {name=M5
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
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 2470 -1040 0 0 {name=M1
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
C {devices/lab_pin.sym} 1285 -1285 1 0 {name=l57 sig_type=std_logic lab=vbias_amp
}
C {devices/gnd.sym} 1285 -1225 0 0 {name=l58 lab=GND}
C {devices/vsource.sym} 1285 -1255 0 0 {name=Vbias2 value=2v}
C {devices/lab_pin.sym} 1887.5 -1702.5 1 0 {name=l144 sig_type=std_logic lab=vbias}
C {devices/gnd.sym} 1887.5 -1642.5 0 0 {name=l145 lab=GND}
C {devices/vsource.sym} 1887.5 -1672.5 0 0 {name=Vbias3 value=1v}
C {devices/gnd.sym} 1980 -1635 0 0 {name=l146 lab=GND}
C {devices/vsource.sym} 1980 -1665 0 0 {name=Vbias8 value=0.2v}
C {devices/lab_pin.sym} 1980 -1695 1 0 {name=l147 sig_type=std_logic lab=vleak}
C {devices/lab_pin.sym} 2122.5 -1702.5 1 0 {name=l148 sig_type=std_logic lab=vbias1}
C {devices/gnd.sym} 2122.5 -1642.5 0 0 {name=l149 lab=GND}
C {devices/vsource.sym} 2122.5 -1672.5 0 0 {name=Vbias9 value=0.6v}
C {devices/lab_pin.sym} 2245 -1705 1 0 {name=l150 sig_type=std_logic lab=vbias2}
C {devices/gnd.sym} 2245 -1645 0 0 {name=l151 lab=GND}
C {devices/vsource.sym} 2245 -1675 0 0 {name=Vbias10 value=1.1v}
C {devices/gnd.sym} 2350 -1645 0 0 {name=l35 lab=GND}
C {devices/vsource.sym} 2350 -1675 0 0 {name=Vbias4 value=4.3v}
C {devices/lab_pin.sym} 2350 -1705 0 1 {name=l34 sig_type=std_logic lab=vbumpref

}
C {devices/vdd.sym} 2270 -920 0 0 {name=l7 lab=VDD}
C {/media/sf_share/final_project/buffer.sym} 2530 -870 0 0 {name=x6}
