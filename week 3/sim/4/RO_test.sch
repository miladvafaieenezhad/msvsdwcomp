v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 320 -270 320 -250 {
lab=GND}
N 320 -350 320 -330 {
lab=VDD}
C {vdd.sym} 500 -360 0 0 {name=l1 lab=VDD}
C {gnd.sym} 500 -280 0 0 {name=l2 lab=GND}
C {vsource.sym} 320 -300 0 0 {name=Vdd value=1.8}
C {vdd.sym} 320 -350 0 0 {name=l3 lab=VDD}
C {gnd.sym} 320 -250 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 587.5 -320 2 0 {name=l8 sig_type=std_logic lab=VA}
C {code_shown.sym} 290 -560 0 0 {name=spice only_toplevel=false value="
.include ~/.xschem/xschem_library/VSD/week3/(3)post_layout_ring/MY_RO.spice
.IC v(VA)=1.8
.tran 0.1n 15n
.measure tran period
+ TRIG v(Va) TD=5n VAL=0.9 FALL=1
+ TARG v(Va) TD=5n VAL=0.9 FALL=2
.save all"}
C {sky130/sky130_fd_pr/corner.sym} 630 -360 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"
spice_ignore=false}
C {lab_pin.sym} 420 -320 0 0 {name=l5 sig_type=std_logic lab=VA}
C {VSD/week3/(3)post_layout_ring/3_stages_RO.sym} 410 -320 0 0 {name=x1}
