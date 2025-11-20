v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 350 -1430 350 -1390 { lab=vout}
N 350 -1390 430 -1390 { lab=vout}
N 510 -1470 510 -1390 { lab=vout}
N 430 -1390 450 -1390 { lab=vout}
N 450 -1390 510 -1390 { lab=vout}
C {devices/vsource.sym} 760 -1310 0 0 {name=VDD value=5v}
C {devices/vdd.sym} 760 -1340 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 760 -1280 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 150 -1340 0 0 {name=SPICE only_toplevel=false value="
.control
save all
dc Vin 0 5 0.01
plot v(vout)
.endc
"}
C {devices/code.sym} 130 -1590 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {/media/sf_share/circuitexamples/transamp_1.sym} 30 -70 0 0 {name=X1}
C {devices/vsource.sym} 680 -1310 0 0 {name=v1 value=0.6v}
C {devices/gnd.sym} 680 -1280 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 680 -1340 1 0 {name=l2 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 510 -1390 2 0 {name=l5 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 350 -1510 2 1 {name=l6 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 430 -1410 2 0 {name=l7 sig_type=std_logic lab=vbias}
C {devices/vsource.sym} 610 -1310 0 0 {name=Vin value=2v}
C {devices/gnd.sym} 610 -1280 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 610 -1340 3 1 {name=l9 sig_type=std_logic lab=vin}
