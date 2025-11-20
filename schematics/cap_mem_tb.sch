v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 535 -1905 535 -1895 { lab=#net1}
C {devices/code_shown.sym} 162.5 -1387.5 0 0 {name=SPICE only_toplevel=false value="
.model fsrc1 filesource(file=\\"data/eval_dataset/electrode_ch1.txt\\" timeoffset=0 timescale=1 amploffset=[0] amplscale=[1.0] timerelative=false amplstep=false) 
a1 %v[vin] fsrc1
.model fsrc2 filesource(file=\\"data/eval_dataset/teach_ch2.txt\\" timeoffset=0 timescale=1 amploffset=[0] amplscale=[1.0] timerelative=false amplstep=false) 
a2 %v[vg] fsrc2
.control
save all
tran 100us 600ms
plot  v(vin) v(vmem) v(vg)
plot i(Vmeas1)
plot i(Vmeas)
.endc
"}
C {devices/code.sym} 130 -1590 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/vsource.sym} 147.5 -1857.5 0 0 {name=Vreset value="PULSE(5 0 0 0 0 1000ms 2000ms)"}
C {devices/lab_pin.sym} 147.5 -1887.5 1 0 {name=l14 sig_type=std_logic lab=vreset}
C {devices/gnd.sym} 147.5 -1827.5 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} 395 -1890 1 0 {name=l10 sig_type=std_logic lab=vbias}
C {devices/gnd.sym} 395 -1830 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 395 -1860 0 0 {name=Vbias value=1.2v}
C {devices/gnd.sym} 535 -1835 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 535 -1865 0 0 {name=VDD value=5v}
C {devices/vdd.sym} 535 -1965 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 665 -1835 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 665 -1865 0 0 {name=Vbias1 value=0.04v}
C {devices/lab_pin.sym} 665 -1895 1 0 {name=l21 sig_type=std_logic lab=vleak}
C {devices/ammeter.sym} 535 -1935 0 0 {name=Vmeas}
C {/media/sf_share/final_project/cap_mem.sym} 870 -1680 0 0 {name=x1}
C {devices/lab_pin.sym} 720 -1680 0 0 {name=l1 sig_type=std_logic lab=vreset}
C {devices/lab_pin.sym} 720 -1640 0 0 {name=l2 sig_type=std_logic lab=vleak}
C {devices/lab_pin.sym} 720 -1660 0 0 {name=l3 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 720 -1700 0 0 {name=l4 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 720 -1720 0 0 {name=l5 sig_type=std_logic lab=vg}
C {devices/lab_pin.sym} 950 -1720 0 1 {name=l7 sig_type=std_logic lab=vmem}
