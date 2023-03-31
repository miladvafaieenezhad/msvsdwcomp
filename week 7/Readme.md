# section1: Confirm the correctness of implementation of RO_ADC by using OpenFASoC

To confirm the correctness of implementation of RO_ADC by using OpenFASoC, the result is shown in Openroad in fig.1, and fig.2.

<p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/229226779-4611792f-26ca-4dbb-b20b-d1dfaa61d89a.PNG"  style="width:30%"/>
    <br>
    <em>Fig.1.the result of implementation od RO-ADC in Openroad.</em>
</p>



<p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/229226844-eda42338-c583-436c-bb2a-35f47bb959fa.PNG"  style="width:30%"/>
    <br>
    <em>Fig.2.the result of implementation od RO-ADC in Openroad after zoom in.</em>
</p>

# Section 2: Basics of window comparator
A window comparator consists of two op-amp. Op-amps have two inputs, inverting input (+) and non-inverting input (-), and they operate as (1), where A0 is voltage gain.

$$ 
V_o=A_0 (V_+-V_-)          \tag{1} 
$$
 
If two op-amps connect to each other as is shown in fig.3 the result circuit can be a window comparator. In a window comparator circuit, if the input voltage (VIN) rises above a certain level (VLOW), the output voltage (VO) reach VDD, and if VIN rises more to above VHIGH, VO drops to GND. In sum, VO is only ON for voltages in between VLOW and VHIGH. Fig. 4 shows how a window comparator works. 

<p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/229216133-15d32c7d-13f7-418f-85e4-d43fcc5d5499.PNG"  style="width:30%"/>
    <br>
    <em>Fig.3.a window comparator.</em>
</p>

<p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/229216966-bab287f7-91f7-4bd1-ad52-9a7f5d15bfa6.png"  style="width:30%"/>
    <br>
    <em>Fig.4.window comparator function.</em>
</p>



# Section 3: Pre-Layout Simulation of window comparator
The schematic of pre-layout simulation in Xschem in shwon in fig.5.
<p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/229220928-419f69d9-580d-413f-bc01-a518eb9ffe82.PNG"/>
    <br>
    <em>Fig.5. The schematic of pre-layout simulation in Xschem.</em>
</p>

The input and outout of window comparator is depicted in fig.6.

<p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/229222597-77ad28c9-3c07-4dfa-844a-ebf0322b98d1.PNG"  style="width:50%"  style="width:50%"/>
    <br>
    <em>Fig.6. The pre-layout's inputs and outout of window comparator.</em>
</p>


# Section 4: Post-Layout Simulation of window comparator

the post-layout result is as fig.7

 <p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/229225112-7427b53a-7061-46ef-9fe2-166439cf9e2e.PNG"  style="width:50%"/>
    <br>
    <em>Fig.7. The post-layout simulation result.</em>
</p>
