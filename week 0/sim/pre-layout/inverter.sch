v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -10 40 20 {
lab=Y}
N -10 -40 -0 -40 {
lab=A}
N -30 50 -0 50 {
lab=A}
N -30 -40 -30 50 {
lab=A}
N -30 -40 -10 -40 {
lab=A}
N 40 0 140 -0 {
lab=Y}
N -90 0 -30 -0 {
lab=A}
N 40 -100 40 -70 {
lab=VP}
N 40 80 40 100 {
lab=VN}
N 40 -70 40 -40 {
lab=VP}
N 40 50 40 80 {
lab=VN}
C {sky130/sky130_fd_pr/nfet_01v8.sym} 20 50 0 0 {name=M1
L=0.15
W=1.5
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
C {sky130/sky130_fd_pr/pfet_01v8.sym} 20 -40 0 0 {name=M2
L=0.15
W=1.5
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
C {iopin.sym} 40 90 1 0 {name=p3 lab=VN}
C {iopin.sym} 40 -90 3 0 {name=p4 lab=VP}
C {ipin.sym} -80 0 0 0 {name=p2 lab=A}
C {opin.sym} 135 0 0 0 {name=p5 lab=Y}
