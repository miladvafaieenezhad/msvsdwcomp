v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 250 -220 250 10 {
lab=Y}
N 60 -220 60 10 {
lab=#net1}
N -100 -90 -100 10 {
lab=#net2}
N -250 -90 -250 10 {
lab=#net3}
N -250 -180 -250 -150 {
lab=#net4}
N -250 -180 -100 -180 {
lab=#net4}
N -100 -180 -100 -150 {
lab=#net4}
N -170 -220 -170 -180 {
lab=#net4}
N -210 40 -140 40 {
lab=#net3}
N -250 -20 -180 -20 {
lab=#net3}
N -180 -20 -180 40 {
lab=#net3}
N -170 -300 -170 -280 {
lab=VP}
N -170 -300 250 -300 {
lab=VP}
N 250 -300 250 -280 {
lab=VP}
N 60 -300 60 -280 {
lab=VP}
N -10 40 20 40 {
lab=VP}
N -10 -300 -10 40 {
lab=VP}
N -100 -40 210 -40 {
lab=#net2}
N 210 -40 210 40 {
lab=#net2}
N -130 -250 20 -250 {
lab=#net1}
N 150 -250 210 -250 {
lab=#net1}
N 150 -250 150 -180 {
lab=#net1}
N 60 -180 150 -180 {
lab=#net1}
N 10 -180 60 -180 {
lab=#net1}
N 10 -250 10 -180 {
lab=#net1}
N -250 70 -250 90 {
lab=VN}
N -250 90 250 90 {
lab=VN}
N 250 70 250 90 {
lab=VN}
N 60 70 60 90 {
lab=VN}
N -100 70 -100 90 {
lab=VN}
N 250 -120 320 -120 {
lab=Y}
N -60 -120 -60 -60 {
lab=B}
N -330 -60 -60 -60 {
lab=B}
N -330 -120 -290 -120 {
lab=A}
N 0 -340 -0 -300 {
lab=VP}
N -0 90 0 120 {
lab=VN}
N -170 -280 -170 -250 {
lab=VP}
N 60 -280 60 -250 {
lab=VP}
N 250 -280 250 -250 {
lab=VP}
N 250 40 250 70 {
lab=VN}
N 60 40 60 70 {
lab=VN}
N -100 40 -100 70 {
lab=VN}
N -250 40 -250 70 {
lab=VN}
N -250 -120 -100 -120 {
lab=VP}
N -210 -300 -210 -120 {
lab=VP}
N -210 -300 -170 -300 {
lab=VP}
C {sky130/sky130_fd_pr/nfet_01v8.sym} 40 40 0 0 {name=M1
L=0.15
W=0.42
nf=2 
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
C {sky130/sky130_fd_pr/nfet_01v8.sym} 230 40 0 0 {name=M2
L=0.15
W=0.42
nf=2 
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
C {sky130/sky130_fd_pr/nfet_01v8.sym} -120 40 0 0 {name=M3
L=0.15
W=0.42
nf=2 
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
C {sky130/sky130_fd_pr/nfet_01v8.sym} -230 40 0 1 {name=M4
L=0.15
W=0.42
nf=2 
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
C {sky130/sky130_fd_pr/pfet_01v8.sym} -80 -120 0 1 {name=M6
L=0.15
W=0.42
nf=2
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
C {sky130/sky130_fd_pr/pfet_01v8.sym} -270 -120 0 0 {name=M5
L=0.15
W=0.42
nf=2
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
C {sky130/sky130_fd_pr/pfet_01v8.sym} -150 -250 0 1 {name=M7
L=0.15
W=0.42
nf=2
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
C {sky130/sky130_fd_pr/pfet_01v8.sym} 40 -250 0 0 {name=M8
L=0.15
W=0.42
nf=2
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
C {sky130/sky130_fd_pr/pfet_01v8.sym} 230 -250 0 0 {name=M9
L=0.15
W=0.42
nf=2
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
C {opin.sym} 310 -120 0 0 {name=p1 lab=Y}
C {ipin.sym} -320 -120 0 0 {name=p2 lab=A}
C {ipin.sym} -320 -60 0 0 {name=p3 lab=B}
C {iopin.sym} 0 110 1 0 {name=p4 lab=VN}
C {iopin.sym} 0 -330 3 0 {name=p5 lab=VP}
