# tools installation
### 1. Magic installed:<br>
![magic_installation](https://user-images.githubusercontent.com/38715276/218030660-fcfcb381-2ebf-4829-8708-a51aedf8ea36.png)

### 2. Xschem installed: <br>

![Xschem_installation](https://user-images.githubusercontent.com/38715276/218032470-8d237f84-b5ba-46f3-855a-9948163915e0.png)

### 3. Netgen installed: <br>

![Netgen_installation](https://user-images.githubusercontent.com/38715276/218033080-4a8764d6-4231-40e4-a471-759551d569af.png)

### 4. Ngspice installed:<br>

```
Milad:~$ ngspice
******
** ngspice-26 : Circuit level simulation program
** The U. C. Berkeley CAD Group
** Copyright 1985-1994, Regents of the University of California.
** Please get your ngspice manual from http://ngspice.sourceforge.net/docs.html
** Please file your bug-reports at http://ngspice.sourceforge.net/bugrep.html
******
ngspice 2 ->
```

### 5. Align installed:<br>

```
  Building wheel for align (pyproject.toml) ... done
  Created wheel for align: filename=align-0.9.8-cp39-cp39-linux_x86_64.whl size=16571001 sha256=fc0dd0465eebba673b13208999247d4547429ecca49366b3cb7d98fb79548be3
  Stored in directory: /home/milad/.cache/pip/wheels/88/ab/c1/4f522a9ce4e05e1fd7288baace24bed38e3872a771a4d8ed69
Successfully built align
```


<hr>

# Pre-layout 
### 1. Inverter simulatation in Xschem:

![inverter](https://user-images.githubusercontent.com/38715276/218039911-a98fd9a9-3886-49cd-99e8-da54f784e5e9.png)

### 2. Inverter_test:<br>

 ![inverter_test](https://user-images.githubusercontent.com/38715276/218040418-f9b21ba6-09d8-405e-9e10-e0b6621c7565.png)

### 3. inverter output:<br>

![inverter_output](https://user-images.githubusercontent.com/38715276/218041601-fcf09c3d-91e9-45a1-abad-abe8dce8657a.png)
<hr>

# Post-layout
### 1. Layout implementation:

![layout](https://user-images.githubusercontent.com/38715276/218043347-c7aa90b1-2569-415b-a3b8-0d481d64da8f.png)
<br>

### 2.LVS result:

```
Subcircuit summary:
Circuit 1: inverter_sub.spice              |Circuit 2: inverter_xschem.spice           
-------------------------------------------|-------------------------------------------
sky130_fd_pr__nfet_01v8 (1)                |sky130_fd_pr__nfet_01v8 (1)                
sky130_fd_pr__pfet_01v8 (1)                |sky130_fd_pr__pfet_01v8 (1)                
Number of devices: 2                       |Number of devices: 2                       
Number of nets: 4                          |Number of nets: 4                          
---------------------------------------------------------------------------------------
*** Circuits match uniquely. ***
Property errors were found.
*** Netlists match uniquely. ***
There were property errors.
sky130_fd_pr__nfet_01v8:0 vs. sky130_fd_pr__nfet_01v8:M1:
Property mult in circuit2 has no matching property in circuit1
Cells have no pins;  pin matching not needed.
Device classes inverter_sub.spice and inverter_xschem.spice are equivalent.
Circuits match uniquely.
```
<br>

### 3.Post-layout result:

![post-](https://user-images.githubusercontent.com/38715276/218046266-f30c0742-79bb-44c4-8dce-3ff623c3417a.png)

