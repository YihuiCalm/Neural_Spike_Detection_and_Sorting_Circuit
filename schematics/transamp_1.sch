v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 445 -1315 485 -1315 { lab=vbias}
N 385 -1315 445 -1315 { lab=vbias
}
N 525 -1365 525 -1345 { lab=Vmid}
N 525 -1315 555 -1315 { lab=GND}
N 445 -1365 615 -1365 { lab=Vmid}
N 445 -1395 465 -1395 { lab=GND}
N 595 -1395 615 -1395 { lab=GND}
N 655 -1395 725 -1395 { lab=vin_n}
N 225 -1395 405 -1395 { lab=vin_p}
N 445 -1515 445 -1425 { lab=#net2}
N 445 -1515 505 -1515 { lab=#net2}
N 505 -1545 505 -1515 { lab=#net2}
N 485 -1545 505 -1545 { lab=#net2}
N 505 -1545 575 -1545 { lab=#net2}
N 615 -1515 615 -1425 { lab=IVout}
N 615 -1485 675 -1485 { lab=IVout}
N 415 -1545 445 -1545 { lab=VDD}
N 415 -1575 415 -1545 { lab=VDD}
N 615 -1545 635 -1545 { lab=VDD}
N 635 -1575 635 -1545 { lab=VDD}
N 615 -1575 635 -1575 { lab=VDD}
N 675 -1485 865 -1485 { lab=IVout}
N 725 -1395 765 -1395 { lab=vin_n}
N 415 -1575 615 -1575 { lab=VDD}
C {devices/gnd.sym} 525 -1285 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 555 -1315 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 505 -1315 0 0 {name=M1
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 425 -1395 0 0 {name=M3
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 595 -1395 1 0 {name=l3 lab=GND}
C {devices/gnd.sym} 465 -1395 3 0 {name=l7 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 595 -1545 0 0 {name=M4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 635 -1395 0 1 {name=M2
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
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 465 -1545 0 1 {name=M5
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
C {devices/opin.sym} 865 -1485 0 0 {name=p1 lab=IVout
}
C {devices/ipin.sym} 225 -1395 0 0 {name=p2 lab=vin_p}
C {devices/ipin.sym} 765 -1395 0 1 {name=p3 lab=vin_n
}
C {devices/vdd.sym} 515 -1575 0 0 {name=l4 lab=VDD}
C {devices/ipin.sym} 385 -1315 0 0 {name=p4 lab=vbias}
