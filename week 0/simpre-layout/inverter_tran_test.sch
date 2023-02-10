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
N 420 -370 420 -350 {
lab=VDD}
N 420 -290 420 -270 {
lab=GND}
N 260 -200 260 -180 {
lab=GND}
N 260 -290 260 -260 {
lab=Vin}
N 457.5 -320 457.5 -280 {
lab=Vo}
N 390 -320 390 -280 {
lab=Vin}
C {VSD/week0/inverter.sym} 380 -320 0 0 {name=x1}
C {vdd.sym} 420 -370 0 0 {name=l1 lab=VDD}
C {gnd.sym} 420 -270 0 0 {name=l2 lab=GND}
C {vsource.sym} 260 -380 0 0 {name=Vdd value=1.8}
C {vdd.sym} 260 -430 0 0 {name=l3 lab=VDD}
C {gnd.sym} 260 -330 0 0 {name=l4 lab=GND}
C {vsource.sym} 260 -230 0 0 {name=Vin 
value="pulse 0 1.8 10ns 10ns 10ns 40ns 100ns"}
C {gnd.sym} 260 -180 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 390 -280 0 0 {name=l6 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 260 -290 2 0 {name=l7 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 457.5 -280 2 0 {name=l8 sig_type=std_logic lab=Vo}
C {code_shown.sym} 510 -230 0 0 {name=spice only_toplevel=false value=".tran 1n 1u
.save all"}
C {sky130/sky130_fd_pr/corner.sym} 475 -430 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"
spice_ignore=false}
