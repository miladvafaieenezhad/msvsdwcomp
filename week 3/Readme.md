# Section 1: Pre-Layout Simulation of a 3-Stage-Ring-Oscillator

## Basics of Ring Oscillator

A Ring Oscillator(RO), shown in fig.1, is a device composed of an odd number of NOT gates in a ring, whose output oscillates between two voltage levels, representing true and false. The NOT gates, or inverters, are attached in a chain and the output of the last inverter is fed back into the first. If t represents the time delay for a single inverter and n represents the number of inverters in the inverter chain, then the frequency of oscillation is as (1).



$$
 f={\frac {1}{2tn}}       \tag{1}
$$

<br>

<p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/222668574-94dc19f1-36d1-42e0-adf8-6baf5ed02933.png"  style="width:50%"/>
    <br>
    <em>Fig.1. A-three-stage-ring-oscillator.</em>
</p>

# Section 2: Pre_Layout Simulation of a 3-Stage-Ring-Oscillator

Fig.2.(a) shows the circuit implemented in the Xschem and fig.2.(b) shows the circuit under test. 

<p  align="center">
 <img src="https://user-images.githubusercontent.com/38715276/222711559-47aefa18-ed44-43bc-a190-b3c45e106b40.png"  style="height:250px" style="width:40%" />
 &nbsp; &nbsp; &nbsp; &nbsp;
 <img src="https://user-images.githubusercontent.com/38715276/222712195-4539b398-a9f3-4bbe-824b-6a5bb5f33225.png"  style="height:250px" style="width:40%" />
    <br>
    <em>Fig.2.(a) Ring oscillator schematic, (b) Ring Oscillator under test.</em>
</p>
<br>

the output is shown in fig.3.
<p  align="center">
 <img src="https://user-images.githubusercontent.com/38715276/222729541-20c151b9-a71c-4704-9054-2fbab904907c.png"   style="width:70%" />
    <br>
    <em>Fig.3. Ring oscillator output.</em>
</p>

