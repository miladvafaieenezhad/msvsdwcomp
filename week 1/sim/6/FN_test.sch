v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {vdd.sym} 110 -200 0 0 {name=l1 lab=VDD}
C {gnd.sym} 110 140 0 0 {name=l2 lab=GND}
C {vsource.sym} 240 -180 0 0 {name=Va
value="pulse 0 1.8 10ns 1ns 1ns 5ns 10ns"
}
C {vsource.sym} 290 -110 0 0 {name=Vb 
value="pulse 0 1.8 10ns 2ns 2ns 10ns 20ns"}
C {vsource.sym} 240 -50 0 0 {name=Vc 
value="pulse 0 1.8 10ns 4ns 4ns 20ns 40ns"}
C {vsource.sym} 290 20 0 0 {name=Vd
value="pulse 0 1.8 10ns 8ns 8ns 40ns 80ns"}
C {vsource.sym} 240 80 0 0 {name=Ve
value="pulse 0 1.8 10ns 16ns 16ns 80ns 160ns"}
C {vsource.sym} 290 150 0 0 {name=Vf
value="pulse 0 1.8 10ns 32ns 32ns 160ns 320ns"}
C {lab_pin.sym} 50 -150 0 0 {name=l3 sig_type=std_logic lab=Va}
C {lab_pin.sym} 50 -110 0 0 {name=l4 sig_type=std_logic lab=Vb}
C {lab_pin.sym} 50 -60 0 0 {name=l5 sig_type=std_logic lab=Vc}
C {lab_pin.sym} 50 -20 0 0 {name=l6 sig_type=std_logic lab=Vd}
C {lab_pin.sym} 50 30 0 0 {name=l7 sig_type=std_logic lab=Ve}
C {lab_pin.sym} 50 70 0 0 {name=l8 sig_type=std_logic lab=Vf}
C {lab_pin.sym} 180 -140 2 0 {name=l9 sig_type=std_logic lab=Vo}
C {lab_pin.sym} 240 -210 1 0 {name=l10 sig_type=std_logic lab=Va}
C {lab_pin.sym} 290 -140 1 0 {name=l11 sig_type=std_logic lab=Vb}
C {lab_pin.sym} 240 -80 1 0 {name=l12 sig_type=std_logic lab=Vc}
C {lab_pin.sym} 290 -10 1 0 {name=l13 sig_type=std_logic lab=Vd}
C {lab_pin.sym} 240 50 1 0 {name=l14 sig_type=std_logic lab=Ve}
C {lab_pin.sym} 290 120 1 0 {name=l15 sig_type=std_logic lab=Vf}
C {gnd.sym} 240 110 0 0 {name=l16 lab=GND}
C {gnd.sym} 290 180 0 0 {name=l17 lab=GND}
C {gnd.sym} 240 -20 0 0 {name=l18 lab=GND}
C {gnd.sym} 290 50 0 0 {name=l19 lab=GND}
C {gnd.sym} 240 -150 0 0 {name=l20 lab=GND}
C {gnd.sym} 290 -80 0 0 {name=l21 lab=GND}
C {gnd.sym} -80 -120 0 0 {name=l23 lab=GND}
C {vsource.sym} -80 -150 0 0 {name=VDD value=1.8}
C {sky130/sky130_fd_pr/corner.sym} -130 -60 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"
spice_ignore=false}
C {code_shown.sym} -130 110 0 0 {name=spice only_toplevel=false value="
.tran 0.5n 1u
.measure tran delay
+ TRIG v(Va) TD=113n VAL=0.9 FALL=1
+ TARG v(Vo) TD=113n VAL=0.9 RISE=1
.include ~/.xschem/xschem_library/VSD/week1/(6)function_post-layout_Xschem_Align/FN_Align_layout.spice
.save all"}
C {vdd.sym} -80 -180 0 0 {name=l22 lab=VDD}
C {VSD/week1/(6)function_post-layout_Xschem_Align/FN.sym} 70 90 0 0 {name=X1}
