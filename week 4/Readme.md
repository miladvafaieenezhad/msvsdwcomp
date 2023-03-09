# Section 1: Basics of Analogue to Digital Converter
An analog-to-digital converter (ADC, A/D or A-to-D) is an electronic integrated circuit that converts a continuous quantity to a discrete time digital number. An ADC may also provide an isolated measurement. The reverse operation is performed by a digital-to-analog converter (DAC). The conceptual model of ADC is shown in fig.1.

<p align="center">
 <img src="https://user-images.githubusercontent.com/38715276/224112135-07998ed8-ec7b-44ab-8c4e-daea9c20553e.png"  style="width:50%"/>
    <br>
    <em>Fig.1. conceptual model of ADC.</em>
</p>

# Section 2: 1-Bit ADC

An analogue comparator such as the LM339N which has two analogue inputs, one positive and one negative, and which can be used to compare the magnitudes of two different voltage levels. A voltage input, (VIN) signal is applied to one input of the comparator, while a reference voltage, (VREF) to the other. A comparison of the two voltage levels at the comparator’s input is made to determine the comparators digital logic output state, either a “1” or a “0”. <br>
The reference voltage, VREF is compared against the input voltage, VIN applied to the other input. For an LM339 comparator, if the input voltage is less than the reference voltage, (VIN < VREF) the output is “OFF”, and if it is greater than the reference voltage, (VIN > VREF) the output will be “ON”. Thus a comparator compares two voltage levels and determines which one of the two is higher. Fig.2 shows an analogue comparator(1-bit ADC):

<p align="center">
 <img src=""  style="width:50%"/>
    <br>
    <em>Fig.2. an 1-bit ADC.</em>
</p>

in which the opamp structure is shown in fig.

<p align="center">
 <img src=""  style="width:50%"/>
    <br>
    <em>Fig.3.  A simple opamp.</em>
</p>


# Section 3: Pre-Layout Simulation of 1-Bit ADC
The schematic of 
