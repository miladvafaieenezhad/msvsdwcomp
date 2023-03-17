v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {sky130/sky130_fd_pr/corner.sym} 372.5 -350 0 0 {name=TT_MODELS only_toplevel=true 
format="tcleval( @value )"
value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"
spice_ignore=false}
C {gnd.sym} 395 -80 0 0 {name=l10 lab=GND}
C {vsource.sym} 395 -110 0 0 {name=Vs value=0.9}
C {lab_pin.sym} 395 -140 2 0 {name=l5 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 197.5 -307.5 0 0 {name=l1 sig_type=std_logic lab=Vref}
C {gnd.sym} 257.5 -217.5 0 0 {name=l2 lab=GND}
C {gnd.sym} 110 -227.5 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 317.5 -287.5 2 0 {name=l4 sig_type=std_logic lab=Vout}
C {vdd.sym} 467.5 -140 0 0 {name=l6 lab=VDD}
C {gnd.sym} 467.5 -80 0 0 {name=l7 lab=GND}
C {vsource.sym} 467.5 -110 0 0 {name=Vdd value=1.8}
C {vdd.sym} 110 -307.5 0 0 {name=l8 lab=VDD}
C {vdd.sym} 257.5 -357.5 0 0 {name=l9 lab=VDD}
C {lab_pin.sym} 197.5 -267.5 3 0 {name=l11 sig_type=std_logic lab=Va}
C {lab_pin.sym} 30 -267.5 3 0 {name=l12 sig_type=std_logic lab=Va}
C {code_shown.sym} 25 -165 0 0 {name=spice only_toplevel=false value=".tran 0.01n 10n
.IC v(VA)=1.8
.measure tran delay
+ TRIG v(Va)  TD=5n VAL=0.9 FALL=1
+ TARG v(Vout) TD=5n VAL=0.9 FALL=1
.measure tran period
+ TRIG v(Va) TD=5n VAL=0.9 FALL=1
+ TARG v(Va) TD=5n VAL=0.9 FALL=2
.save all"}
C {VSD/week4/4.RO_ADC/3_stage_RO.sym} 20 -267.5 0 0 {name=x3}
C {VSD/week4/4.RO_ADC/opamp.sym} 37.5 -187.5 0 0 {name=x1}
