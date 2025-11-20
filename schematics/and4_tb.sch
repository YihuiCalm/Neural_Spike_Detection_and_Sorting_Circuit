v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 470 -1590 0 0 {name=Vin value="PULSE(0 5 0 0 0 5ns 10ns)"}
C {devices/vsource.sym} 690 -1470 0 0 {name=VDD value=5v}
C {devices/vdd.sym} 690 -1500 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 690 -1440 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 470 -1560 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 150 -1340 0 0 {name=SPICE only_toplevel=false value="
.control
save all
tran 0.01ns 200ns uic
plot v(a) v(b) v(c) v(d) v(vout)
.endc
"}
C {devices/lab_pin.sym} 470 -1620 1 0 {name=l7 sig_type=std_logic lab=a}
C {devices/code.sym} 130 -1590 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/lab_pin.sym} 1070 -1272.5 2 0 {name=l1 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 690 -1590 0 0 {name=Vin1 value="PULSE(0 5 0 0 0 10ns 20ns)"}
C {devices/gnd.sym} 690 -1560 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 690 -1620 1 0 {name=l6 sig_type=std_logic lab=b}
C {devices/vsource.sym} 927.5 -1595 0 0 {name=Vin2 value="PULSE(0 5 0 0 0 20ns 40ns)"}
C {devices/gnd.sym} 927.5 -1565 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 927.5 -1625 1 0 {name=l9 sig_type=std_logic lab=c}
C {devices/vsource.sym} 1122.5 -1597.5 0 0 {name=Vin3 value="PULSE(0 5 0 0 0 40ns 80ns)"}
C {devices/gnd.sym} 1122.5 -1567.5 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 1122.5 -1627.5 1 0 {name=l21 sig_type=std_logic lab=d}
C {/media/sf_share/final_project/transmission_gate.sym} 850 -1312.5 1 0 {name=x2}
C {devices/vdd.sym} 1070 -1432.5 0 0 {name=l22 lab=VDD}
C {devices/capa.sym} 1070 -1242.5 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1070 -1212.5 0 0 {name=l24 lab=GND}
C {/media/sf_share/final_project/and5.sym} 900 -1312.5 0 0 {name=x1}
C {devices/lab_pin.sym} 750 -1352.5 0 0 {name=l10 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 750 -1332.5 0 0 {name=l11 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 750 -1312.5 0 0 {name=l12 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 750 -1292.5 0 0 {name=l13 sig_type=std_logic lab=d}
C {devices/vdd.sym} 750 -1272.5 3 0 {name=l14 lab=VDD}
