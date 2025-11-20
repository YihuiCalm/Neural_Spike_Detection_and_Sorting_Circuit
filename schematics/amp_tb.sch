v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 457.5 -1902.5 522.5 -1902.5 { lab=VDD}
N 522.5 -1902.5 522.5 -1882.5 { lab=VDD}
N 522.5 -1802.5 522.5 -1755 { lab=vout}
N 522.5 -1755 682.5 -1755 { lab=vout}
N 682.5 -1842.5 682.5 -1755 { lab=vout}
N 455 -1802.5 522.5 -1802.5 { lab=vout}
N 455 -1802.5 455 -1750 { lab=vout}
C {devices/vsource.sym} 760 -1310 0 0 {name=VDD value=5v}
C {devices/vdd.sym} 760 -1340 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 760 -1280 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 150 -1340 0 0 {name=SPICE only_toplevel=false value="
.control
save all
tran 1ns 50ns
plot v(vin) v(vout)
plot i(Vmeas)
.endc
"}
C {devices/code.sym} 130 -1590 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/vsource.sym} 680 -1310 0 0 {name=v1 value=1v}
C {devices/gnd.sym} 680 -1280 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 680 -1340 1 0 {name=l2 sig_type=std_logic lab=vbias}
C {devices/vsource.sym} 512.5 -1310 0 0 {name=Vin value="SIN(1 1 0.1G 0 0)"}
C {devices/gnd.sym} 512.5 -1280 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 512.5 -1340 3 1 {name=l9 sig_type=std_logic lab=vin}
C {devices/vdd.sym} 457.5 -1902.5 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 415 -1662.5 2 1 {name=l6 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 455 -1632.5 0 0 {name=l5 lab=GND}
C {devices/ammeter.sym} 455 -1722.5 0 0 {name=Vmeas}
C {devices/vsource.sym} 630 -1312.5 0 0 {name=v2 value=2v}
C {devices/gnd.sym} 630 -1282.5 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 630 -1342.5 1 0 {name=l15 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 455 -1752.5 2 0 {name=l10 sig_type=std_logic lab=vout}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 435 -1662.5 0 0 {name=M1
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
C {/media/sf_share/final_project/transamp_1.sym} 202.5 -442.5 0 0 {name=X1}
C {devices/lab_pin.sym} 602.5 -1782.5 2 0 {name=l11 sig_type=std_logic lab=vbias}
