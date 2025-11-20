v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 180 -2587.5 180 -2577.5 { lab=#net1}
N 735 -2110 735 -2095 { lab=VDD}
N 445 -2025 445 -1925 { lab=#net2}
N 387.5 -2105 445 -2105 { lab=#net3}
N 605 -2065 695 -2065 { lab=vmem2}
N 735 -2035 735 -2025 { lab=#net2}
N 735 -1965 735 -1925 { lab=#net2}
N 445 -1925 577.5 -1925 { lab=#net2}
N 577.5 -1925 637.5 -1925 { lab=#net2}
N 735 -2025 735 -1965 { lab=#net2}
N 637.5 -1925 735 -1925 { lab=#net2}
N 1180 -1925 1312.5 -1925 { lab=vmem1}
N 1342.5 -1927.5 1342.5 -1790 { lab=#net4}
N 1372.5 -1925 1502.5 -1925 { lab=vmem}
N 1502.5 -1925 1502.5 -1830 { lab=vmem}
N 1342.5 -1790 1342.5 -1702.5 { lab=#net4}
N 1342.5 -1702.5 1502.5 -1702.5 { lab=#net4}
N 1502.5 -1750 1502.5 -1702.5 { lab=#net4}
N 1502.5 -1925 1555 -1925 { lab=vmem}
N 1555 -1925 1697.5 -1925 { lab=vmem}
N 970 -1925 1022.5 -1925 { lab=vmem1}
N 810 -1885 810 -1822.5 { lab=vmem1}
N 810 -1822.5 970 -1822.5 { lab=vmem1}
N 970 -1925 970 -1822.5 { lab=vmem1}
N 735 -1965 810 -1965 { lab=#net2}
N 1022.5 -1925 1180 -1925 { lab=vmem1}
N 607.5 -1765 655 -1765 { lab=#net2}
N 655 -1925 655 -1765 { lab=#net2}
C {devices/code_shown.sym} 162.5 -1387.5 0 0 {name=SPICE only_toplevel=false value="
.model fsrc1 filesource(file=\\"data/eval_dataset/electrode_ch1.txt\\" timeoffset=0 timescale=1 amploffset=[0] amplscale=[1.0] timerelative=false amplstep=false) 
a1 %v[vin] fsrc1
.model fsrc2 filesource(file=\\"data/eval_dataset/teach_ch1.txt\\" timeoffset=0 timescale=1 amploffset=[0] amplscale=[1.0] timerelative=false amplstep=false) 
a2 %v[vg] fsrc2
.control
save all
tran 10us 600ms
plot  v(vin) v(vmem) v(vg)
.endc
"}
C {devices/code.sym} 130 -1590 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/lab_pin.sym} 712.5 -2595 1 0 {name=l10 sig_type=std_logic lab=vbias}
C {devices/gnd.sym} 712.5 -2535 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 712.5 -2565 0 0 {name=Vbias value=2v}
C {devices/gnd.sym} 180 -2517.5 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 180 -2547.5 0 0 {name=VDD value=5v}
C {devices/vdd.sym} 180 -2647.5 0 0 {name=l6 lab=VDD}
C {devices/ammeter.sym} 180 -2617.5 0 0 {name=Vmeas}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 715 -2065 0 0 {name=M1
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
C {devices/vdd.sym} 735 -2110 0 0 {name=l9 lab=VDD}
C {devices/capa.sym} 677.5 -1895 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 677.5 -1865 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} 525 -2125 2 0 {name=l13 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 1697.5 -1925 2 0 {name=l16 sig_type=std_logic lab=vmem}
C {/media/sf_share/final_project/transamp_1.sym} 125 -3465 2 1 {name=X2}
C {/media/sf_share/final_project/transmission_gate.sym} 347.5 -1885 0 0 {name=x2}
C {devices/lab_pin.sym} 307.5 -2085 0 0 {name=l20 sig_type=std_logic lab=vg}
C {devices/lab_pin.sym} 227.5 -2105 0 0 {name=l23 sig_type=std_logic lab=vin}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1342.5 -1945 3 1 {name=M2
L=1
W=1
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
C {/media/sf_share/final_project/transamp_1.sym} 1822.5 -390 0 1 {name=X1}
C {devices/lab_pin.sym} 1422.5 -1730 0 0 {name=l1 sig_type=std_logic lab=vbias2}
C {devices/capa.sym} 1555 -1895 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1555 -1865 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1025 -1925 3 0 {name=l4 sig_type=std_logic lab=vmem1}
C {/media/sf_share/final_project/transamp_1.sym} 490 -525 0 0 {name=X3}
C {devices/lab_pin.sym} 890 -1865 2 0 {name=l17 sig_type=std_logic lab=vbias1}
C {devices/lab_pin.sym} 947.5 -2595 1 0 {name=l24 sig_type=std_logic lab=vbias1}
C {devices/gnd.sym} 947.5 -2535 0 0 {name=l25 lab=GND}
C {devices/vsource.sym} 947.5 -2565 0 0 {name=Vbias2 value=2v}
C {devices/lab_pin.sym} 1070 -2597.5 1 0 {name=l26 sig_type=std_logic lab=vbias2}
C {devices/gnd.sym} 1070 -2537.5 0 0 {name=l27 lab=GND}
C {devices/vsource.sym} 1070 -2567.5 0 0 {name=Vbias3 value=1.1v}
C {devices/lab_pin.sym} 645 -2065 3 0 {name=l5 sig_type=std_logic lab=vmem2}
C {/media/sf_share/final_project/inverter.sym} 250 -2245 0 0 {name=x3}
C {devices/lab_pin.sym} 210 -2325 0 0 {name=l7 sig_type=std_logic lab=vg}
C {devices/lab_pin.sym} 390 -2325 0 1 {name=l14 sig_type=std_logic lab=vg_bar}
C {devices/lab_pin.sym} 627.5 -1845 2 0 {name=l18 sig_type=std_logic lab=vg}
C {/media/sf_share/final_project/transmission_gate.sym} 827.5 -1885 3 0 {name=x4}
C {devices/lab_pin.sym} 1342.5 -1965 0 1 {name=l3 sig_type=std_logic lab=vg_bar}
