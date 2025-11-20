v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 587.5 -1325 635 -1325 { lab=#net1}
N 692.5 -1362.5 692.5 -1267.5 { lab=#net2}
N 635 -1265 692.5 -1265 { lab=#net2}
N 692.5 -1267.5 692.5 -1265 { lab=#net2}
C {devices/vsource.sym} 470 -1590 0 0 {name=Vin value="PULSE(0 5 0 0 0 5ns 10ns)"}
C {devices/vsource.sym} 690 -1470 0 0 {name=VDD value=5v}
C {devices/vdd.sym} 690 -1500 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 690 -1440 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 470 -1560 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 150 -1340 0 0 {name=SPICE only_toplevel=false value="
.control
save all
tran 1ns 50ns
plot v(a) v(b) v(vout)
.endc
"}
C {devices/lab_pin.sym} 470 -1620 1 0 {name=l7 sig_type=std_logic lab=a}
C {devices/code.sym} 130 -1590 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/lab_pin.sym} 842.5 -1362.5 2 0 {name=l1 sig_type=std_logic lab=vout}
C {/media/sf_share/final_project/and.sym} 487.5 -1125 0 0 {name=x1}
C {devices/lab_pin.sym} 487.5 -1345 0 0 {name=l8 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 487.5 -1305 0 0 {name=l9 sig_type=std_logic lab=b}
C {devices/vsource.sym} 690 -1590 0 0 {name=Vin1 value="PULSE(0 5 0 0 0 8ns 16ns)"}
C {devices/gnd.sym} 690 -1560 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 690 -1620 1 0 {name=l6 sig_type=std_logic lab=b}
C {/media/sf_share/final_project/schmitt_trigger.sym} 842.5 -1362.5 0 0 {name=x2}
C {devices/res.sym} 635 -1295 0 0 {name=R1
value=2k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 635 -1235 0 0 {name=R2
value=30k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 635 -1205 0 0 {name=l10 lab=GND}
