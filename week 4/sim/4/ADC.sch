v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {vdd.sym} 180 -270 0 0 {name=l1 lab=VDD}
C {vdd.sym} 320 -207.5 0 0 {name=l2 lab=VDD}
C {gnd.sym} 180 -130 0 0 {name=l3 lab=GND}
C {gnd.sym} 320 -147.5 0 0 {name=l4 lab=GND}
C {vsource.sym} 320 -177.5 0 0 {name=Vdd value=1.8}
C {sky130/sky130_fd_pr/corner.sym} -52.5 -252.5 0 0 {name=TT_MODELS only_toplevel=true 
format="tcleval( @value )"
value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"
spice_ignore=false}
C {lab_pin.sym} 120 -180 0 0 {name=l7 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 240 -200 2 0 {name=l8 sig_type=std_logic lab=Vout}
C {gnd.sym} 390 -147.5 0 0 {name=l10 lab=GND}
C {vsource.sym} 390 -177.5 0 0 {name=Vs value=0.9}
C {vsource.sym} 320 -330 0 0 {name=Vin 
value="sin 0.9 0.9 50Meg"
*value="pulse 0 1.8 0ns 19ns 19ns 1ns 40ns"}
C {gnd.sym} 320 -300 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 320 -360 2 0 {name=l12 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 390 -207.5 2 0 {name=l5 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 120 -220 2 1 {name=l6 sig_type=std_logic lab=Vref}
C {code_shown.sym} -65 -437.5 0 0 {name=spice only_toplevel=false value="
.include ~/.xschem/xschem_library/VSD/week4/3.ADC_post-layout/align_opamp.spice
.tran 0.01n 100n
.measure tran delay
+ TRIG v(vin)  TD=0n VAL=0.9 FALL=1
+ TARG v(Vout) TD=0n VAL=0.9 FALL=1
.save all"}
C {VSD/week4/3.ADC_post-layout/opamp.sym} -40 -100 0 0 {name=x1}
