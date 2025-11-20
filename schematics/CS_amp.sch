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
N 455 -1802.5 455 -1692.5 { lab=vout}
C {devices/vdd.sym} 457.5 -1902.5 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 415 -1662.5 2 1 {name=l6 sig_type=std_logic lab=vin}
C {devices/gnd.sym} 455 -1632.5 0 0 {name=l5 lab=GND}
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
C {devices/ipin.sym} 265 -1840 0 0 {name=p1 lab=vin}
C {devices/ipin.sym} 265 -1807.5 0 0 {name=p2 lab=vbias}
C {devices/opin.sym} 295 -1840 0 0 {name=p3 lab=vout}
