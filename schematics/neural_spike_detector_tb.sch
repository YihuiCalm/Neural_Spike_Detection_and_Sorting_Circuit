v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 917.5 -1717.5 947.5 -1717.5 { lab=LPbias2}
N 917.5 -1677.5 947.5 -1677.5 { lab=LPbias1}
N 787.5 -1717.5 787.5 -1697.5 { lab=#net1}
N 787.5 -1697.5 947.5 -1697.5 { lab=#net1}
N 1397.5 -1717.5 1487.5 -1717.5 { lab=vspike}
C {devices/gnd.sym} 510 -1110 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 430 -1170 0 0 {name=l8 lab=VDD}
C {devices/vsource.sym} 430 -1140 0 0 {name=V2 value=5.0}
C {devices/gnd.sym} 430 -1110 0 0 {name=l9 lab=GND}
C {devices/code_shown.sym} 370 -1530 0 0 {name=SPICE only_toplevel=false value="
.model fsrc1 filesource(file=\\"data/eval_dataset/electrode_ch2.txt\\" timeoffset=0 timescale=1 amploffset=[0] amplscale=[1.0] timerelative=false amplstep=false) 
a1 %v[vin] fsrc1
.model fsrc2 filesource(file=\\"data/eval_dataset/teach_ch1.txt\\" timeoffset=0 timescale=1 amploffset=[0] amplscale=[1.0] timerelative=false amplstep=false) 
a2 %v[vg] fsrc2
.control
tran 100us 600ms uic
save all
plot v(vmem) v(vmem1) v(vg) v(vin)
plot v(vmem1) v(vspike) v(vin)
set wr_singlescale
set wr_vecnames
wrdata data_filter_500Hz_2500Hz.csv v(vin) v(vdata)
wrdata data_filter_500Hz_2500Hz_spikes.csv v(vspike)
wrdata data_filter_500Hz_2500Hz_cap_mem.csv v(vin) v(vmem)
.endc
"}
C {devices/code.sym} 1082.5 -1407.5 0 0 {name=TT_MODELS only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {devices/lab_pin.sym} 497.5 -1717.5 0 0 {name=l10 sig_type=std_logic lab=vin
}
C {devices/vsource.sym} 510 -1140 0 0 {name=V5 value=0.4}
C {devices/lab_pin.sym} 510 -1170 3 1 {name=l17 sig_type=std_logic lab=HPbias

}
C {devices/gnd.sym} 580 -1110 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 580 -1170 3 1 {name=l19 sig_type=std_logic lab=VREF

}
C {devices/vsource.sym} 580 -1140 0 0 {name=V6 value=2.0}
C {/media/sf_share/Highpass_500Hz.sym} 647.5 -1697.5 0 0 {name=x1}
C {devices/lab_pin.sym} 497.5 -1697.5 2 1 {name=l2 sig_type=std_logic lab=HPbias

}
C {devices/lab_pin.sym} 497.5 -1677.5 2 1 {name=l5 sig_type=std_logic lab=VREF

}
C {/media/sf_share/Lowpass_2500Hz.sym} 1097.5 -1697.5 0 0 {name=x2}
C {devices/lab_pin.sym} 917.5 -1677.5 2 1 {name=l7 sig_type=std_logic lab=LPbias1

}
C {devices/lab_pin.sym} 917.5 -1717.5 2 1 {name=l11 sig_type=std_logic lab=LPbias2

}
C {devices/vsource.sym} 650 -1140 0 0 {name=V3 value=0.543v}
C {devices/gnd.sym} 650 -1110 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 650 -1170 3 1 {name=l15 sig_type=std_logic lab=LPbias1

}
C {devices/vsource.sym} 720 -1140 0 0 {name=V4 value=0.4v}
C {devices/gnd.sym} 720 -1110 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 720 -1170 3 1 {name=l21 sig_type=std_logic lab=LPbias2

}
C {/media/sf_share/final_project/schmitt_trigger.sym} 1397.5 -1717.5 0 0 {name=x3}
C {devices/lab_pin.sym} 1247.5 -1717.5 3 0 {name=l3 sig_type=std_logic lab=vdata

}
C {/media/sf_share/final_project/cap_mem.sym} 947.5 -1880 0 0 {name=x4}
C {devices/lab_pin.sym} 797.5 -1860 0 0 {name=l28 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 1027.5 -1920 0 1 {name=l29 sig_type=std_logic lab=vmem
}
C {devices/lab_pin.sym} 1487.5 -1717.5 2 0 {name=l13 sig_type=std_logic lab=vspike

}
C {devices/lab_pin.sym} 872.5 -1810 3 0 {name=l44 sig_type=std_logic lab=vbias1}
C {devices/lab_pin.sym} 895 -1810 3 0 {name=l45 sig_type=std_logic lab=vbias2}
C {devices/lab_pin.sym} 797.5 -1920 2 1 {name=l6 sig_type=std_logic lab=vg

}
C {devices/lab_pin.sym} 1002.5 -1182.5 1 0 {name=l31 sig_type=std_logic lab=vbias}
C {devices/gnd.sym} 1002.5 -1122.5 0 0 {name=l32 lab=GND}
C {devices/vsource.sym} 1002.5 -1152.5 0 0 {name=Vbias4 value=2v}
C {devices/lab_pin.sym} 1237.5 -1182.5 1 0 {name=l35 sig_type=std_logic lab=vbias1}
C {devices/gnd.sym} 1237.5 -1122.5 0 0 {name=l36 lab=GND}
C {devices/vsource.sym} 1237.5 -1152.5 0 0 {name=Vbias6 value=2v}
C {devices/lab_pin.sym} 1360 -1185 1 0 {name=l37 sig_type=std_logic lab=vbias2}
C {devices/gnd.sym} 1360 -1125 0 0 {name=l38 lab=GND}
C {devices/vsource.sym} 1360 -1155 0 0 {name=Vbias7 value=1.1v}
C {/media/sf_share/final_project/cap_mem.sym} 1300 -1882.5 0 0 {name=x5}
C {devices/lab_pin.sym} 1150 -1862.5 0 0 {name=l25 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 1380 -1922.5 0 1 {name=l26 sig_type=std_logic lab=vmem1
}
C {devices/lab_pin.sym} 1225 -1812.5 3 0 {name=l30 sig_type=std_logic lab=vbias1}
C {devices/lab_pin.sym} 1247.5 -1812.5 3 0 {name=l39 sig_type=std_logic lab=vbias2}
C {devices/lab_pin.sym} 1150 -1902.5 2 1 {name=l40 sig_type=std_logic lab=vin

}
C {devices/gnd.sym} 797.5 -1872.5 1 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 1150 -1922.5 2 1 {name=l12 sig_type=std_logic lab=vspike

}
C {/media/sf_share/final_project/inverter.sym} 1272.5 -1985 0 0 {name=x6}
C {devices/lab_pin.sym} 1232.5 -2065 2 1 {name=l22 sig_type=std_logic lab=vspike

}
C {devices/lab_pin.sym} 1412.5 -2065 0 1 {name=l23 sig_type=std_logic lab=vspike_bar

}
C {devices/lab_pin.sym} 1150 -1875 0 0 {name=l24 sig_type=std_logic lab=vspike_bar

}
C {devices/lab_pin.sym} 797.5 -1900 2 1 {name=l4 sig_type=std_logic lab=vspike

}
