v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 880 -1360 910 -1360 { lab=LPbias2}
N 880 -1320 910 -1320 { lab=LPbias1}
N 750 -1360 750 -1340 { lab=#net1}
N 750 -1340 910 -1340 { lab=#net1}
C {devices/gnd.sym} 510 -1110 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 430 -1170 0 0 {name=l8 lab=VDD}
C {devices/vsource.sym} 430 -1140 0 0 {name=V2 value=5.0}
C {devices/gnd.sym} 430 -1110 0 0 {name=l9 lab=GND}
C {devices/code_shown.sym} 370 -1650 0 0 {name=SPICE only_toplevel=false value="
.model fsrc1 filesource(file=\\"data/eval_dataset/electrode_ch4.txt\\" timeoffset=0 timescale=1 amploffset=[0] amplscale=[1.0] timerelative=false amplstep=false) 
a1 %v[vinput] fsrc1
.control
tran 100us 300ms
save all
plot v(vinput) v(vout)
plot v(vinput) v(vamp)
set wr_singlescale
set wr_vecnames
wrdata data_filter_500Hz_2500Hz.csv v(vinput) v(vout)
.endc
"}
C {devices/code.sym} 380 -1010 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/lab_pin.sym} 460 -1360 0 0 {name=l10 sig_type=std_logic lab=vinput
}
C {devices/vsource.sym} 510 -1140 0 0 {name=V5 value=0.4}
C {devices/lab_pin.sym} 510 -1170 3 1 {name=l17 sig_type=std_logic lab=HPbias

}
C {devices/gnd.sym} 580 -1110 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 580 -1170 3 1 {name=l19 sig_type=std_logic lab=VREF

}
C {devices/vsource.sym} 580 -1140 0 0 {name=V6 value=2.0}
C {/media/sf_share/Highpass_500Hz.sym} 610 -1340 0 0 {name=x1}
C {devices/lab_pin.sym} 460 -1340 2 1 {name=l2 sig_type=std_logic lab=HPbias

}
C {devices/lab_pin.sym} 460 -1320 2 1 {name=l5 sig_type=std_logic lab=VREF

}
C {/media/sf_share/Lowpass_2500Hz.sym} 1060 -1340 0 0 {name=x2}
C {devices/lab_pin.sym} 880 -1320 2 1 {name=l7 sig_type=std_logic lab=LPbias1

}
C {devices/lab_pin.sym} 880 -1360 2 1 {name=l11 sig_type=std_logic lab=LPbias2

}
C {devices/lab_pin.sym} 1210 -1360 2 0 {name=l13 sig_type=std_logic lab=vout

}
C {devices/vsource.sym} 650 -1140 0 0 {name=V3 value=0.543v}
C {devices/gnd.sym} 650 -1110 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 650 -1170 3 1 {name=l15 sig_type=std_logic lab=LPbias1

}
C {devices/vsource.sym} 720 -1140 0 0 {name=V4 value=0.4v}
C {devices/gnd.sym} 720 -1110 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 720 -1170 3 1 {name=l21 sig_type=std_logic lab=LPbias2

}
C {devices/vsource.sym} 797.5 -1137.5 0 0 {name=V1 value=1v}
C {devices/gnd.sym} 797.5 -1107.5 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 797.5 -1167.5 3 1 {name=l6 sig_type=std_logic lab=vbias

}
C {/media/sf_share/final_project/CS_amp.sym} 1420 -1160 0 0 {name=x3}
C {devices/lab_pin.sym} 1340 -1350 0 0 {name=l3 sig_type=std_logic lab=vinput
}
C {devices/lab_pin.sym} 1380 -1310 0 1 {name=l12 sig_type=std_logic lab=vbias

}
C {devices/lab_pin.sym} 1440 -1350 2 0 {name=l20 sig_type=std_logic lab=vamp

}
