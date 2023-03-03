v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -10 40 20 {
lab=#net1}
N -10 -40 -0 -40 {
lab=A}
N -30 50 -0 50 {
lab=A}
N -30 -40 -30 50 {
lab=A}
N -30 -40 -10 -40 {
lab=A}
N 370 2.5 470 2.5 {
lab=Y}
N -90 0 -30 -0 {
lab=A}
N 40 -70 40 -40 {
lab=VP}
N 40 50 40 80 {
lab=VN}
N 210 -10 210 20 {
lab=#net2}
N 160 -40 170 -40 {
lab=#net1}
N 140 50 170 50 {
lab=#net1}
N 140 -40 140 50 {
lab=#net1}
N 140 -40 160 -40 {
lab=#net1}
N 210 -100 210 -70 {
lab=VP}
N 210 80 210 100 {
lab=VN}
N 210 -70 210 -40 {
lab=VP}
N 210 50 210 80 {
lab=VN}
N 370 -10 370 20 {
lab=Y}
N 320 -40 330 -40 {
lab=#net2}
N 300 50 330 50 {
lab=#net2}
N 300 -40 300 50 {
lab=#net2}
N 300 -40 320 -40 {
lab=#net2}
N 370 -70 370 -40 {
lab=VP}
N 370 50 370 80 {
lab=VN}
N 40 2.5 140 2.5 {
lab=#net1}
N 210 2.5 300 2.5 {
lab=#net2}
N 37.5 -70 210 -70 {
lab=VP}
N 210 -70 372.5 -70 {
lab=VP}
N 210 80 372.5 80 {
lab=VN}
N 37.5 80 210 80 {
lab=VN}
C {sky130/sky130_fd_pr/nfet_01v8.sym} 20 50 0 0 {name=M1
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
C {sky130/sky130_fd_pr/pfet_01v8.sym} 20 -40 0 0 {name=M2
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
C {ipin.sym} -80 0 0 0 {name=p2 lab=A}
C {opin.sym} 460 2.5 0 0 {name=p5 lab=Y}
C {sky130/sky130_fd_pr/nfet_01v8.sym} 190 50 0 0 {name=M3
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
C {sky130/sky130_fd_pr/pfet_01v8.sym} 190 -40 0 0 {name=M4
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
C {iopin.sym} 210 90 1 0 {name=p1 lab=VN}
C {iopin.sym} 210 -90 3 0 {name=p6 lab=VP
L=1}
C {sky130/sky130_fd_pr/nfet_01v8.sym} 350 50 0 0 {name=M5
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
C {sky130/sky130_fd_pr/pfet_01v8.sym} 350 -40 0 0 {name=M6
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
