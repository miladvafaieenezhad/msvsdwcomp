# Section 1: Basics of window comparator
A window comparator consists of two op-amp. Op-amps have two inputs, inverting input (+) and non-inverting input (-), and they operate as (1), where A0 is voltage gain.

$$ 
V_o=A_0 (V_+-V_-)          \tag{1} 
$$
 
If two op-amps connect to each other as is shown in fig.1 the result circuit can be a window comparator. In a window comparator circuit, if the input voltage (VIN) rises above a certain level (VLOW), the output voltage (VO) reach VDD, and if VIN rises more to above VHIGH, VO drops to GND. In sum, VO is only ON for voltages in between VLOW and VHIGH. Fig. 2 shows how a window comparator works. 

<p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/229216133-15d32c7d-13f7-418f-85e4-d43fcc5d5499.PNG"  style="width:30%"/>
    <br>
    <em>Fig.1.a window comparator.</em>
</p>

<p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/229216966-bab287f7-91f7-4bd1-ad52-9a7f5d15bfa6.png"  style="width:30%"/>
    <br>
    <em>Fig.2.window comparator function.</em>
</p>



# Section 2: Pre-Layout Simulation of window comparator
The schematic of pre-layout simulation in Xschem in shwon in fig.3.
<p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/229220928-419f69d9-580d-413f-bc01-a518eb9ffe82.PNG"/>
    <br>
    <em>Fig.3. The schematic of pre-layout simulation in Xschem.</em>
</p>

The input and outout of window comparator is depicted in fig.5.

<p align="center">
 <img src=""  style="width:50%"  style="width:50%"/>
    <br>
    <em>Fig.5. The pre-layout's input and outout of window comparator.</em>
</p>


# Section 3: Post-Layout Simulation of window comparator

the post-layout result is as fig.6

 <p align="center">
 <img src=""  style="width:50%"/>
    <br>
    <em>Fig.8. The post-layout simulation result.</em>
</p>

