v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 20 -180 20 -140 {
lab=#net1}
N 20 -80 20 -30 {
lab=#net2}
N 210 -80 210 -30 {
lab=#net2}
N 210 -180 210 -140 {
lab=#net3}
N 20 -240 210 -240 {
lab=VP}
N 20 30 210 30 {
lab=Y}
N 20 -50 210 -50 {
lab=#net2}
N -40 100 -40 110 {
lab=Y}
N -40 100 290 100 {
lab=Y}
N -40 260 290 260 {
lab=VN}
N 290 160 290 200 {
lab=#net4}
N 130 160 130 200 {
lab=#net5}
N -40 160 -40 200 {
lab=#net5}
N -40 180 130 180 {
lab=#net5}
N 130 30 130 100 {
lab=Y}
N -40 -210 -20 -210 {
lab=A}
N -40 -110 -20 -110 {
lab=C}
N 150 -210 170 -210 {
lab=B}
N 150 -110 170 -110 {
lab=D}
N 20 -110 90 -110 {
lab=VP}
N 90 -240 90 -110 {
lab=VP}
N 20 -210 90 -210 {
lab=VP}
N 210 -210 290 -210 {
lab=VP}
N 210 -240 290 -240 {
lab=VP}
N 290 -240 290 -110 {
lab=VP}
N 210 -110 290 -110 {
lab=VP}
N 20 0 90 0 {
lab=VP}
N 90 -110 90 0 {
lab=VP}
N 210 -0 290 -0 {
lab=VP}
N 290 -110 290 -0 {
lab=VP}
N -40 130 0 130 {
lab=VN}
N 0 130 0 230 {
lab=VN}
N -40 230 0 230 {
lab=VN}
N 0 230 0 260 {
lab=VN}
N 130 130 160 130 {
lab=VN}
N 160 130 160 260 {
lab=VN}
N 130 230 160 230 {
lab=VN}
N 290 130 330 130 {
lab=VN}
N 330 130 330 230 {
lab=VN}
N 290 230 330 230 {
lab=VN}
N 290 230 330 230 {
lab=VN}
N 330 230 330 260 {
lab=VN}
N 290 260 330 260 {
lab=VN}
N 150 0 170 0 {
lab=F}
N 70 130 90 130 {
lab=C}
N -40 0 -20 0 {
lab=E}
N -100 130 -80 130 {
lab=A}
N -100 230 -80 230 {
lab=B}
N 70 230 90 230 {
lab=D}
N 230 230 250 230 {
lab=F}
N 230 130 250 130 {
lab=E}
N 160 260 160 290 {
lab=VN}
N 140 -270 140 -240 {
lab=VP}
N 130 60 170 60 {
lab=Y}
C {sky130/sky130_fd_pr/pfet_01v8.sym} 0 0 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130/sky130_fd_pr/pfet_01v8.sym} 190 0 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130/sky130_fd_pr/pfet_01v8.sym} 0 -110 0 0 {name=M3
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130/sky130_fd_pr/pfet_01v8.sym} 190 -110 0 0 {name=M4
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130/sky130_fd_pr/pfet_01v8.sym} 0 -210 0 0 {name=M5
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130/sky130_fd_pr/pfet_01v8.sym} 190 -210 0 0 {name=M6
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130/sky130_fd_pr/nfet_01v8.sym} -60 130 0 0 {name=M7
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130/sky130_fd_pr/nfet_01v8.sym} -60 230 0 0 {name=M8
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130/sky130_fd_pr/nfet_01v8.sym} 110 130 0 0 {name=M9
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130/sky130_fd_pr/nfet_01v8.sym} 110 230 0 0 {name=M10
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130/sky130_fd_pr/nfet_01v8.sym} 270 130 0 0 {name=M11
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130/sky130_fd_pr/nfet_01v8.sym} 270 230 0 0 {name=M12
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 160 -210 2 0 {name=p1 lab=B}
C {iopin.sym} -30 -210 2 0 {name=p2 lab=A}
C {iopin.sym} -30 -110 2 0 {name=p3 lab=C}
C {iopin.sym} -30 0 2 0 {name=p4 lab=E}
C {iopin.sym} 160 0 2 0 {name=p5 lab=F}
C {iopin.sym} 160 -110 2 0 {name=p6 lab=D}
C {iopin.sym} 160 60 0 0 {name=p13 lab=Y}
C {iopin.sym} 140 -260 3 0 {name=p14 lab=VP}
C {iopin.sym} 160 280 1 0 {name=p15 lab=VN}
C {lab_pin.sym} -100 130 0 0 {name=l1 sig_type=std_logic lab=A}
C {lab_pin.sym} -100 230 0 0 {name=l2 sig_type=std_logic lab=B}
C {lab_pin.sym} 70 130 0 0 {name=l3 sig_type=std_logic lab=C}
C {lab_pin.sym} 70 230 0 0 {name=l4 sig_type=std_logic lab=D}
C {lab_pin.sym} 230 130 0 0 {name=l5 sig_type=std_logic lab=E}
C {lab_pin.sym} 230 230 0 0 {name=l6 sig_type=std_logic lab=F}
