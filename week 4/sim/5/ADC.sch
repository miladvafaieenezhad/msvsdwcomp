v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {vdd.sym} 180 -270 0 0 {name=l1 lab=VDD}
C {vdd.sym} -102.5 -387.5 0 0 {name=l2 lab=VDD}
C {gnd.sym} 180 -130 0 0 {name=l3 lab=GND}
C {gnd.sym} -102.5 -327.5 0 0 {name=l4 lab=GND}
C {vsource.sym} -102.5 -357.5 0 0 {name=Vdd value=1.8}
C {sky130/sky130_fd_pr/corner.sym} -50 -280 0 0 {name=TT_MODELS only_toplevel=true 
format="tcleval( @value )"
value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"
spice_ignore=false}
C {lab_pin.sym} 120 -180 0 0 {name=l7 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 240 -200 2 0 {name=l8 sig_type=std_logic lab=Vout}
C {gnd.sym} -102.5 -215 0 0 {name=l10 lab=GND}
C {vsource.sym} -102.5 -245 0 0 {name=Vs value=0.9}
C {vsource.sym} -103.75 -138.75 0 0 {name=Vin 
value="sin 0.9 0.9 2g"
*value="pulse 0 1.8 0ns 19ns 19ns 1ns 40ns"}
C {gnd.sym} -103.75 -108.75 0 0 {name=l11 lab=GND}
C {lab_pin.sym} -103.75 -168.75 2 0 {name=l12 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -102.5 -275 2 0 {name=l5 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 120 -220 2 1 {name=l6 sig_type=std_logic lab=Vref}
C {code_shown.sym} -51.25 -425 0 0 {name=spice only_toplevel=false value=".tran 0.01n 10n
.measure tran delay
+ TRIG v(vin)  TD=0n VAL=0.9 FALL=1
+ TARG v(Vout) TD=0n VAL=0.9 FALL=1
.save all"}
C {VSD/week4/0.ADC_prelayout/opamp.sym} -40 -100 0 0 {name=x1}
