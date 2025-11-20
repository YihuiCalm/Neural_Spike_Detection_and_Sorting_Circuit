v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 162.5 -2572.5 162.5 -2557.5 { lab=VDD}
N -127.5 -2487.5 -127.5 -2387.5 { lab=#net1}
N -185 -2567.5 -127.5 -2567.5 { lab=#net2}
N 32.5 -2527.5 122.5 -2527.5 { lab=#net3}
N 162.5 -2497.5 162.5 -2487.5 { lab=#net1}
N 162.5 -2427.5 162.5 -2387.5 { lab=#net1}
N -127.5 -2387.5 5 -2387.5 { lab=#net1}
N 5 -2387.5 65 -2387.5 { lab=#net1}
N 162.5 -2487.5 162.5 -2427.5 { lab=#net1}
N 65 -2387.5 162.5 -2387.5 { lab=#net1}
N 480 -2390 480 -2252.5 { lab=#net4}
N 510 -2387.5 640 -2387.5 { lab=vmem}
N 640 -2387.5 640 -2292.5 { lab=vmem}
N 480 -2252.5 480 -2165 { lab=#net4}
N 480 -2165 640 -2165 { lab=#net4}
N 640 -2212.5 640 -2165 { lab=#net4}
N 640 -2387.5 692.5 -2387.5 { lab=vmem}
N 480 -2487.5 480 -2427.5 { lab=#net5}
N 692.5 -2387.5 835 -2387.5 { lab=vmem}
N 397.5 -2387.5 450 -2387.5 { lab=#net6}
N 237.5 -2347.5 237.5 -2285 { lab=#net6}
N 237.5 -2285 397.5 -2285 { lab=#net6}
N 397.5 -2387.5 397.5 -2285 { lab=#net6}
N 162.5 -2427.5 237.5 -2427.5 { lab=#net1}
N -162.5 -2387.5 -127.5 -2387.5 { lab=#net1}
C {devices/ipin.sym} -102.5 -1897.5 0 0 {name=p1 lab=vg}
C {devices/ipin.sym} -102.5 -1872.5 0 0 {name=p2 lab=vin}
C {devices/ipin.sym} -102.5 -1847.5 0 0 {name=p3 lab=vreset}
C {devices/ipin.sym} -102.5 -1825 0 0 {name=p4 lab=vbias}
C {devices/ipin.sym} -102.5 -1800 0 0 {name=p5 lab=vleak}
C {devices/opin.sym} -67.5 -1897.5 0 0 {name=p6 lab=vmem}
C {sky130_fd_pr/pfet3_g5v0d10v5.sym} 142.5 -2527.5 0 0 {name=M1
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
C {devices/vdd.sym} 162.5 -2572.5 0 0 {name=l9 lab=VDD}
C {devices/capa.sym} 105 -2357.5 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 105 -2327.5 0 0 {name=l12 lab=GND}
C {devices/lab_pin.sym} -47.5 -2587.5 2 0 {name=l13 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 835 -2387.5 2 0 {name=l16 sig_type=std_logic lab=vmem}
C {/media/sf_share/final_project/transamp_1.sym} -447.5 -3927.5 2 1 {name=X2}
C {/media/sf_share/final_project/transmission_gate.sym} -225 -2347.5 0 0 {name=x2}
C {devices/lab_pin.sym} -265 -2547.5 0 0 {name=l20 sig_type=std_logic lab=vg}
C {devices/lab_pin.sym} -345 -2567.5 0 0 {name=l23 sig_type=std_logic lab=vin}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 480 -2407.5 3 1 {name=M2
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
C {/media/sf_share/final_project/transamp_1.sym} 960 -852.5 0 1 {name=X1}
C {devices/lab_pin.sym} 560 -2192.5 0 0 {name=l1 sig_type=std_logic lab=vbias2}
C {devices/capa.sym} 692.5 -2357.5 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 692.5 -2327.5 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 660 -2487.5 0 1 {name=l3 sig_type=std_logic lab=vg}
C {/media/sf_share/final_project/inverter.sym} 620 -2407.5 0 1 {name=x1}
C {/media/sf_share/final_project/transamp_1.sym} -82.5 -987.5 0 0 {name=X3}
C {devices/lab_pin.sym} 317.5 -2327.5 2 0 {name=l17 sig_type=std_logic lab=vbias1}
C {sky130_fd_pr/nfet3_g5v0d10v5.sym} -182.5 -2357.5 0 0 {name=M3
L=1
W=1
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} -162.5 -2327.5 0 0 {name=l28 lab=GND}
C {devices/lab_pin.sym} -202.5 -2357.5 2 1 {name=l29 sig_type=std_logic lab=vleak}
C {devices/ipin.sym} -102.5 -1775 0 0 {name=p7 lab=vbias1}
C {devices/ipin.sym} -102.5 -1755 0 0 {name=p8 lab=vbias2}
