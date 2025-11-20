v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 470 -1590 0 0 {name=Vin value="PULSE(0 5 0 0 0 10ns 20ns)"}
C {devices/vsource.sym} 690 -1470 0 0 {name=VDD value=5v}
C {devices/vdd.sym} 690 -1500 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 690 -1440 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 470 -1560 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 150 -1340 0 0 {name=SPICE only_toplevel=false value="
.control
save all
tran 0.01ns 100ns uic
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
C {devices/vsource.sym} 690 -1590 0 0 {name=Vin1 value="PULSE(0 5 0 0 0 15ns 30ns)"}
C {devices/gnd.sym} 690 -1560 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 690 -1620 1 0 {name=l6 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 1055 -1605 0 0 {name=l1 sig_type=std_logic lab=b}
C {/media/sf_share/final_project/inverter.sym} 1095 -1525 0 0 {name=x1}
C {devices/vsource.sym} 932.5 -1587.5 0 0 {name=Vin2 value=5v}
C {devices/gnd.sym} 932.5 -1557.5 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 932.5 -1617.5 1 0 {name=l19 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 1055 -1470 0 0 {name=l21 sig_type=std_logic lab=a}
C {/media/sf_share/final_project/inverter.sym} 1095 -1390 0 0 {name=x6}
C {devices/lab_pin.sym} 1235 -1605 0 1 {name=l22 sig_type=std_logic lab=b_bar}
C {devices/lab_pin.sym} 1235 -1470 0 1 {name=l23 sig_type=std_logic lab=a_bar}
C {/media/sf_share/final_project/nxor.sym} 932.5 -1287.5 0 0 {name=x2}
C {devices/lab_pin.sym} 782.5 -1297.5 1 0 {name=l8 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 782.5 -1277.5 1 0 {name=l9 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 975 -1297.5 1 0 {name=l10 sig_type=std_logic lab=vout}
