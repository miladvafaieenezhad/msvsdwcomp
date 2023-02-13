.subckt my_inverter A  VP Y VN
mp1 Y A VP VP sky130_fd_pr__pfet_01v8 w=8.4e-7 l=150e-9  nf=2
mn1 Y A VN VN sky130_fd_pr__nfet_01v8 w=8.4e-7 l=150e-9  nf=2
.ends my_inverter
