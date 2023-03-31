# Section 1: Basics of window comparator
A window comparator consists of two op-amp. Op-amps have two inputs, inverting input (+) and non-inverting input (-), and they operate as (1), where A0 is voltage gain.
V_o=A_0 (V_+-V_-)                       (1)
If two op-amps connect to each other as is shown in fig.1 the result circuit can be a window comparator. In a window comparator circuit, if the input voltage (VIN) rises above a certain level (VLOW), the output voltage (VO) reach VDD, and if VIN rises more to above VHIGH, VO drops to GND. In sum, VO is only ON for voltages in between VLOW and VHIGH. Fig. 2 shows how a window comparator works. 

![klayout]()


<p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/229216133-15d32c7d-13f7-418f-85e4-d43fcc5d5499.PNG"  style="width:30%"/>
    <br>
    <em>Fig.1.a window comparator.</em>
</p>

<p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/229215614-7052ec68-1c0d-4773-ada0-ebc17748196d.png"  style="width:30%"/>
    <br>
    <em>Fig.2.window comparator function.</em>
</p>


# Section 2: Pre-Layout Simulation of window comparator
The schematic of pre-layout simulation in Xschem in shwon in fig..
<p align="center">
 <img src=""/>
    <br>
    <em>Fig.4. The schematic of pre-layout simulation in Xschem.</em>
</p>

The input and outout of window comparator is depicted in fig.5.

<p align="center">
 <img src=""  style="width:50%"  style="width:50%"/>
    <br>
    <em>Fig.5. The pre-layout's input and outout of window comparator.</em>
</p>

The delay of pre-layout implementation equals XXXXX.

# Section 3: Post-Layout Simulation of window comparator

the post-layout result is as fig.8

 <p align="center">
 <img src=""  style="width:50%"/>
    <br>
    <em>Fig.8. The post-layout simulation result.</em>
</p>

for which the delay equals xxxx.

 # Section 4: Comparison Between Post-Layout and Pre-Layout Results
 
 <div align="center">
 
 <em>Table I. Comparison of pre and post-layout results of ADC.</em>
|      |  Pre-layout | Post-layout |
| :---: | :---: | :---: |
|  |   |  |
</div>

From table I, the role of parasitic capacitances on    xdxxxxx.
