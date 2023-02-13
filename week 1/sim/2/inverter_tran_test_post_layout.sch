v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 260 -350 260 -330 {
lab=GND}
N 260 -430 260 -410 {
lab=VDD}
N 460 -370 460 -350 {
lab=VDD}
N 460 -290 460 -270 {
lab=GND}
N 260 -200 260 -180 {
lab=GND}
N 260 -290 260 -260 {
lab=Vin}
N 497.5 -320 497.5 -280 {
lab=Vo}
N 430 -320 430 -280 {
lab=Vin}
C {vdd.sym} 460 -370 0 0 {name=l1 lab=VDD}
C {gnd.sym} 460 -270 0 0 {name=l2 lab=GND}
C {vsource.sym} 260 -380 0 0 {name=Vdd value=1.8}
C {vdd.sym} 260 -430 0 0 {name=l3 lab=VDD}
C {gnd.sym} 260 -330 0 0 {name=l4 lab=GND}
C {vsource.sym} 260 -230 0 0 {name=Vin 
value="pulse 0 1.8 10ns 10ns 10ns 40ns 100ns"}
C {gnd.sym} 260 -180 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 430 -280 0 0 {name=l6 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 260 -290 2 0 {name=l7 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 497.5 -280 2 0 {name=l8 sig_type=std_logic lab=Vo}
C {code_shown.sym} 300 -440 0 0 {name=spice only_toplevel=false 
value=".include ~/.xschem/xschem_library/VSD/week1/(1)Xschem_Align/MY_INVERTER_Align.spice
.tran 1n 0.5u
.save all"}
C {sky130/sky130_fd_pr/corner.sym} 555 -370 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"
spice_ignore=false}
C {VSD/week1/(1)Xschem_Align/inverter_post_layout.sym} 420 -320 0 0 {name=x1}
