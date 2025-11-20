v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/code_shown.sym} 150 -1340 0 0 {name=SPICE only_toplevel=false value="
.model fsrc1 filesource(file=\\"data/eval_dataset/electrode_ch1.txt\\" timeoffset=0 timescale=1 amploffset=[0] amplscale=[1.0] timerelative=false amplstep=false) 
a1 %v[vin] fsrc1
.control
save all
tran 1us 50ms
plot v(vg) v(vin)
plot  v(vout)
.endc
"}
C {devices/code.sym} 130 -1590 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/vsource.sym} 250 -1735 0 0 {name=Vpulse_p value="PULSE(5 0 0ns 0ns 0ns 10ms 20ms)"}
C {devices/lab_pin.sym} 250 -1765 1 0 {name=l6 sig_type=std_logic lab=vg}
C {devices/gnd.sym} 250 -1705 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 680 -1705 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 680 -1735 0 0 {name=Vpulse_p2 value=5v}
C {devices/vdd.sym} 680 -1765 0 0 {name=l10 lab=VDD}
C {devices/lab_pin.sym} 460 -1470 0 0 {name=l17 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 540 -1450 3 0 {name=l18 sig_type=std_logic lab=vg}
C {devices/lab_pin.sym} 620 -1470 2 0 {name=l19 sig_type=std_logic lab=vout}
C {/media/sf_share/final_project/transmission_gate.sym} 580 -1250 0 0 {name=x1}
