
# Section 1: Tools installation

&#9733; Some useful webpages to install tools are suggested other than those introduced in [Task_week0](https://github.com/miladvafaieenezhad/msvsdwcomp/blob/main/week%200/Task_week0.md).

### 1. Magic installation:<br>

<li> Refer to following webpages to install:<br>

[webpage 1](http://opencircuitdesign.com/magic/index.html) <br>
[webpage 2](https://github.com/RTimothyEdwards/magic) <br>
[webpage 3](https://lootr5858.wordpress.com/2020/10/06/magic-vlsi-skywater-pdk-local-installation-guide/)<br>
[webpage 4](https://www.bananatronics.org/first-steps-with-google-skywater-pdk-free-open-source-silicon-for-everyone/)<br>
  
 <li> How to run magic with SKY130A technology:<br>
   
  ```
  tcsh
  magic -T sky130A
```
<li> Magic environment: 
  
![magic_installation](https://user-images.githubusercontent.com/38715276/218030660-fcfcb381-2ebf-4829-8708-a51aedf8ea36.png)

### 2. Xschem installation: <br>
  
<li> Refer to following webpages to install:<br>

[webpage 1](https://github.com/StefanSchippers/xschem) <br>
[webpage 2](https://xschem.sourceforge.io/stefan/index.html) <br>
    
 <li> Xschem environment:
   
![Xschem_installation](https://user-images.githubusercontent.com/38715276/218032470-8d237f84-b5ba-46f3-855a-9948163915e0.png)

### 3. Netgen installation: <br>
  
<li> Refer to following webpages to install:<br>

[webpage 1](http://opencircuitdesign.com/netgen/index.html) <br>
[webpage 2](https://github.com/RTimothyEdwards/netgen) <br>

<li> Netgen environment:
  
![Netgen_installation](https://user-images.githubusercontent.com/38715276/218033080-4a8764d6-4231-40e4-a471-759551d569af.png)

### 4. Ngspice installation:<br>
  
<li> Refer to following webpage to install:<br>

[webpage 1](https://ngspice.sourceforge.io/download.html) <br>
 
  
<li> Ngspice environment:
  
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

### 5. Align installation:<br>
  
 <li> Refer to following webpage to install:<br>

[webpage 1](https://github.com/ALIGN-analoglayout/ALIGN-public) <br>
   
<li> if Align is installed well the following message will be shown on the terminal:

```
  Building wheel for align (pyproject.toml) ... done
  Created wheel for align: filename=align-0.9.8-cp39-cp39-linux_x86_64.whl size=16571001 sha256=fc0dd0465eebba673b13208999247d4547429ecca49366b3cb7d98fb79548be3
  Stored in directory: /home/milad/.cache/pip/wheels/88/ab/c1/4f522a9ce4e05e1fd7288baace24bed38e3872a771a4d8ed69
Successfully built align
```

<li> How to run and test Align:<br>

  First set the environment:
  
  ```
python -m venv general
source general/bin/activate
mkdir work
cd work
  ```
  
  Then run:
  
  ```
schematic2layout.py <NETLIST_DIR> -p <PDK_DIR> -c
  ````
  For example:
  ```
  schematic2layout.py ../ALIGN-pdk-sky130/examples/five_transistor_ota -p ../pdks/SKY130_PDK/
  ````
   
  &#9733; An initial working directory can be made by copying the required files as follows:
    
```
$ mkdir Lab1_and
$ cd Lab1_and
$ mkdir mag
$ mkdir netgen
$ mkdir xschem
$ cd xschem
$ cp /usr/local/share/pdk/sky130A/libs.tech/xschem/xschemrc .
$ cp /usr/local/share/pdk/sky130A/libs.tech/ngspice/spinit .spiceinit
$ cd ../mag
$ cp /usr/local/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
$ cd ../netgen
$ cp /usr/local/share/pdk/sky130A/libs.tech/netgen//sky130A_setup.tcl .  
```   
   
&#9734; It is recommended to install Gaw and Klayout, as well.   
   
   
   
   
   
  
<hr>

# Section 2: Pre-layout of an Inverter
### 1. Inverter simulatation in Xschem:

![inverter](https://user-images.githubusercontent.com/38715276/218039911-a98fd9a9-3886-49cd-99e8-da54f784e5e9.png)<br>
   
<li> The generated netlist is:
  
 ```
   ** sch_path: /home/milad/.xschem/xschem_library/VSD/week0/inverter.sch
**.subckt inverter VN VP A Y
*.iopin VN
*.iopin VP
*.ipin A
*.opin Y
XM1 Y A VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM2 Y A VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
**.ends
.end
 ```
 ### 2. Making a symbol:<br> 
  ![Untitled](https://user-images.githubusercontent.com/38715276/218259483-b6d89401-873e-4627-a979-69d67692a5a2.png)

### 3. Inverter_test:<br>

 ![inverter_test](https://user-images.githubusercontent.com/38715276/218040418-f9b21ba6-09d8-405e-9e10-e0b6621c7565.png)<br>
  
<li> The generated netlist is:
  
  ```
  ** sch_path: /home/milad/.xschem/xschem_library/VSD/week0/inverter_tran_test.sch
**.subckt inverter_tran_test
x1 Vin VDD Vo GND inverter
Vdd VDD GND 1.8
Vin Vin GND pulse 0 1.8 10ns 10ns 10ns 40ns 100ns
**** begin user architecture code

.tran 1n 1u
.save all

 .lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
**** end user architecture code
**.ends

* expanding   symbol:  VSD/week0/inverter.sym # of pins=4
** sym_path: /home/milad/.xschem/xschem_library/VSD/week0/inverter.sym
** sch_path: /home/milad/.xschem/xschem_library/VSD/week0/inverter.sch
.subckt inverter  A VP Y VN
*.iopin VN
*.iopin VP
*.ipin A
*.opin Y
XM1 Y A VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM2 Y A VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=1.5 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
.ends

.GLOBAL VDD
.GLOBAL GND
.end
```

### 4. inverter output:<br>

![inverter_output](https://user-images.githubusercontent.com/38715276/218041601-fcf09c3d-91e9-45a1-abad-abe8dce8657a.png)
  
 
&#9733; Simulations for this section can be found [here](https://github.com/miladvafaieenezhad/msvsdwcomp/tree/main/week%200/sim/1).
  
  
<hr>

  
  
  
  
  
  
  
  
# Section 3: Post-layout of an Inverter
### 1. Layout implementation:

<li> This layout is implemented manually
  
![layout](https://user-images.githubusercontent.com/38715276/218043347-c7aa90b1-2569-415b-a3b8-0d481d64da8f.png) <br>
  
 <li> By running following commands:
   
   ```
   save
   extract all
   ext2spice scale off 
   ext2spice cthresh infinite
   ext2spice
   ```
  
 The extracted spice netlist is:
  
  ```
  * SPICE3 file created from inverter_sub.ext - technology: sky130A

X0 Y A VN VN sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.5e+06u l=150000u
X1 Y A VP VP sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.5e+06u l=150000u
```
  
&#9733; Files can be found [here](https://github.com/miladvafaieenezhad/msvsdwcomp/tree/main/week%200/sim/2)
   
### 2. LVS check:
   
 Now generated netlist of [schematic](https://github.com/miladvafaieenezhad/msvsdwcomp/blob/main/week%200/Readme.md) and [layout](https://github.com/miladvafaieenezhad/msvsdwcomp/blob/main/week%200/Readme.md) must be compared.<br>
   
By running <code> lvs inverter_sub.spice inverter_xschem.spice </code> in netgen for this [forlder](https://github.com/miladvafaieenezhad/msvsdwcomp/tree/main/week%200/sim/3) the result is:

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
   
 They match.
<br>

### 3.Post-layout result:
   
By setting ports for layout the generated netlist becomes:
 
```
 * SPICE3 file created from inverter_sub.ext - technology: sky130A

.subckt inverter_sub A VP Y VN
X0 Y A VN VN sky130_fd_pr__nfet_01v8 ad=7.5e+11p pd=4e+06u as=7.5e+11p ps=4e+06u w=1.5e+06u l=150000u
X1 Y A VP VP sky130_fd_pr__pfet_01v8 ad=7.5e+11p pd=4e+06u as=7.5e+11p ps=4e+06u w=1.5e+06u l=150000u
.ends
```
   
 By using this netlist in Xschem, the post-layout result is:
   
![post-](https://user-images.githubusercontent.com/38715276/218046266-f30c0742-79bb-44c4-8dce-3ff623c3417a.png)
   
It is worth mentioning that for symbol in Xschem must be inserted new attribute in this step.. 

&#9733; The related files for Xschem and Magic can be found [here](https://github.com/miladvafaieenezhad/msvsdwcomp/tree/main/week%200/sim/4) and [here](https://github.com/miladvafaieenezhad/msvsdwcomp/tree/main/week%200/sim/5), respectively
<br>

### 4. layout implementation with Align:

Align is a little tricky; for example, for using Align the number of fingers "nf" must be even, 'W' must be in order of 210nm, and the name of the folder, SPICE file, and top-design name should match. Therefore, the result would not match the layout implemented in Magic perfectly because I changed some varriables to get result from Align.
   
Some hints can be found [here](https://docs.google.com/document/d/1RldOLssqc29qNuLmmlAmxlnkeW40NMr4uQ9kXzd2MMI/edit?usp=sharing), [here](https://1drv.ms/v/s!Ai4WW_jutenghoM4JLbwC4_BBz3e3g?e=dq553l) and [here](https://1drv.ms/v/s!Ai4WW_jutenghoMJiplUM5Bygk1IGQ) for how to use Align.

#### a. inverter.gds

![Align](https://user-images.githubusercontent.com/38715276/218207141-245e9978-d51b-4162-a820-81f21fe60aa0.png)
<br>

#### b. inverter.lef

![Align](https://user-images.githubusercontent.com/38715276/218207316-b4d5151b-0e1a-4161-9444-9882b6934df9.png)

&#9733; Files can be found [here](https://github.com/miladvafaieenezhad/msvsdwcomp/tree/main/week%200/sim/6).

