v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 542.5 -1700 562.5 -1700 { lab=VDD}
N 562.5 -1730 562.5 -1700 { lab=VDD}
N 547.5 -1730 562.5 -1730 { lab=VDD}
N 545 -1612.5 560 -1612.5 { lab=GND}
N 560 -1612.5 560 -1582.5 { lab=GND}
N 547.5 -1582.5 560 -1582.5 { lab=GND}
N 507.5 -1700 507.5 -1612.5 { lab=vin}
N 547.5 -1670 547.5 -1642.5 { lab=vout}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 527.5 -1700 0 0 {name=M3
L=0.5
W=0.5
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
C {devices/ipin.sym} 392.5 -1790 0 0 {name=p1 lab=vin}
C {devices/opin.sym} 422.5 -1790 0 0 {name=p3 lab=vout}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 527.5 -1612.5 0 0 {name=M5
L=0.5
W=0.5
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
C {devices/gnd.sym} 547.5 -1582.5 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 547.5 -1730 0 0 {name=l3 lab=VDD}
C {devices/lab_pin.sym} 507.5 -1657.5 0 0 {name=l5 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 547.5 -1657.5 2 0 {name=l6 sig_type=std_logic lab=vout}
