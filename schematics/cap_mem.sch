v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 57.5 -2572.5 57.5 -2557.5 { lab=VDD}
N -232.5 -2487.5 -232.5 -2387.5 { lab=#net1}
N -290 -2567.5 -232.5 -2567.5 { lab=#net2}
N -72.5 -2527.5 17.5 -2527.5 { lab=#net3}
N 57.5 -2497.5 57.5 -2487.5 { lab=#net1}
N 57.5 -2427.5 57.5 -2387.5 { lab=#net1}
N -232.5 -2387.5 -100 -2387.5 { lab=#net1}
N -100 -2387.5 -40 -2387.5 { lab=#net1}
N 57.5 -2487.5 57.5 -2427.5 { lab=#net1}
N -40 -2387.5 57.5 -2387.5 { lab=#net1}
N 375 -2390 375 -2252.5 { lab=#net5}
N 405 -2387.5 535 -2387.5 { lab=vmem}
N 535 -2387.5 535 -2292.5 { lab=vmem}
N 375 -2252.5 375 -2165 { lab=#net5}
N 375 -2165 535 -2165 { lab=#net5}
N 535 -2212.5 535 -2165 { lab=#net5}
N 535 -2387.5 587.5 -2387.5 { lab=vmem}
N 587.5 -2387.5 730 -2387.5 { lab=vmem}
N 292.5 -2387.5 345 -2387.5 { lab=#net4}
N 132.5 -2347.5 132.5 -2285 { lab=#net4}
N 132.5 -2285 292.5 -2285 { lab=#net4}
N 292.5 -2387.5 292.5 -2285 { lab=#net4}
N 57.5 -2427.5 132.5 -2427.5 { lab=#net1}
N -70 -2227.5 -22.5 -2227.5 { lab=#net1}
N -22.5 -2387.5 -22.5 -2227.5 { lab=#net1}
C {devices/ipin.sym} -102.5 -1897.5 0 0 {name=p1 lab=vg}
C {devices/ipin.sym} -102.5 -1872.5 0 0 {name=p2 lab=vin}
C {devices/ipin.sym} -102.5 -1825 0 0 {name=p4 lab=vbias}
C {devices/opin.sym} -67.5 -1897.5 0 0 {name=p6 lab=vmem}
C {devices/ipin.sym} -102.5 -1775 0 0 {name=p7 lab=vbias1}
C {devices/ipin.sym} -102.5 -1755 0 0 {name=p8 lab=vbias2}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 37.5 -2527.5 0 0 {name=M1
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
C {devices/vdd.sym} 57.5 -2572.5 0 0 {name=l9 lab=VDD}
C {devices/capa.sym} 0 -2357.5 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 0 -2327.5 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -152.5 -2587.5 2 0 {name=l13 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 730 -2387.5 2 0 {name=l16 sig_type=std_logic lab=vmem}
C {/media/sf_share/final_project/transamp_1.sym} -552.5 -3927.5 2 1 {name=X2}
C {/media/sf_share/final_project/transmission_gate.sym} -330 -2347.5 0 0 {name=x2}
C {devices/lab_pin.sym} -370 -2547.5 0 0 {name=l20 sig_type=std_logic lab=vg}
C {devices/lab_pin.sym} -450 -2567.5 0 0 {name=l23 sig_type=std_logic lab=vin}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 375 -2407.5 3 1 {name=M2
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
C {/media/sf_share/final_project/transamp_1.sym} 855 -852.5 0 1 {name=X1}
C {devices/lab_pin.sym} 455 -2192.5 0 0 {name=l1 sig_type=std_logic lab=vbias2}
C {devices/capa.sym} 587.5 -2357.5 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 587.5 -2327.5 0 0 {name=l2 lab=GND}
C {/media/sf_share/final_project/transamp_1.sym} -187.5 -987.5 0 0 {name=X3}
C {devices/lab_pin.sym} 212.5 -2327.5 2 0 {name=l17 sig_type=std_logic lab=vbias1}
C {/media/sf_share/final_project/inverter.sym} 385 -2462.5 0 0 {name=x3}
C {devices/lab_pin.sym} 345 -2542.5 0 0 {name=l7 sig_type=std_logic lab=vg}
C {devices/lab_pin.sym} 525 -2542.5 0 1 {name=l14 sig_type=std_logic lab=vg_bar}
C {devices/lab_pin.sym} -50 -2307.5 2 0 {name=l18 sig_type=std_logic lab=vg}
C {/media/sf_share/final_project/transmission_gate.sym} 150 -2347.5 3 0 {name=x4}
C {devices/lab_pin.sym} 375 -2427.5 0 1 {name=l3 sig_type=std_logic lab=vg_bar}
C {devices/ipin.sym} -102.5 -1850 0 0 {name=p3 lab=vreset}
