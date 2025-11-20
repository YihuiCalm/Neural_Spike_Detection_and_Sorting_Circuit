v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 610 -1590 0 0 {name=Vin value="PULSE(0 5 0 0 0 5ns 10ns)"}
C {devices/vsource.sym} 690 -1470 0 0 {name=VDD value=5v}
C {devices/vdd.sym} 690 -1500 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 690 -1440 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 610 -1560 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 150 -1340 0 0 {name=SPICE only_toplevel=false value="
.control
save all
tran 1ns 50ns
plot v(Vin) v(Vout)
.endc
"}
C {devices/lab_pin.sym} 610 -1620 1 0 {name=l7 sig_type=std_logic lab=Vin}
C {devices/code.sym} 130 -1590 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {/media/sf_share/final_project/inverter.sym} 440 -1360 0 0 {name=x1}
C {devices/lab_pin.sym} 580 -1440 2 0 {name=l1 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 400 -1440 0 0 {name=l2 sig_type=std_logic lab=Vin}
