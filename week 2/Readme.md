# Section 1: OpenFASoC installation

OpenFASoC: Fully Open-Source Autonomous SoC Synthesis using Customizable Cell-Based Synthesizable Analog Circuits<br>
OpenFASOC is focused on open-source automate analog generation from user specification to GDSII with fully open-sourced tools.

Before installing OpenFASoC, some dependendies including Magic, Netgen, Klayout, Yosys and Openroad must be installed. <br>

## Dependencies installation


To install Magic and Netgen see [here](https://github.com/miladvafaieenezhad/msvsdwcomp/blob/main/week%200/Readme.md).<br>
  

### 1. Openroad installation:

<li> Refer to following webpages to install:<br>
  
[webpage 1](https://openroad-flow-scripts.readthedocs.io/en/latest/user/BuildLocally.html) <br>
[webpage 2](https://cadhut.com/2022/08/07/how-to-install-openroad-and-other-vlsi-tools-under-ubuntu-22-04-or-linux-mint-21/) <br>
  
<li> Openroad environment after running 32-bit RISC-V CPU core:
  
  ![Untitled](https://user-images.githubusercontent.com/38715276/220562052-fab97ef7-a2e0-42d1-89f3-8beac79f5a2d.png)

  
### 2. Yosys installation:<br>

<li> Refer to following webpages to install:<br>
  
[webpage 1](https://github.com/YosysHQ/yosys) <br>

  
<li> Running yosys:
 
  ```
  (base) Milad:~/milad$ yosys

 /----------------------------------------------------------------------------\
 |                                                                            |
 |  yosys -- Yosys Open SYnthesis Suite                                       |
 |                                                                            |
 |  Copyright (C) 2012 - 2020  Claire Xenia Wolf <claire@yosyshq.com>         |
 |                                                                            |
 |  Permission to use, copy, modify, and/or distribute this software for any  |
 |  purpose with or without fee is hereby granted, provided that the above    |
 |  copyright notice and this permission notice appear in all copies.         |
 |                                                                            |
 |  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES  |
 |  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF          |
 |  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR   |
 |  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    |
 |  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN     |
 |  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF   |
 |  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.            |
 |                                                                            |
 \----------------------------------------------------------------------------/

 Yosys 0.13+15 (git sha1 bc027b2ca, gcc 11.3.0-1ubuntu1~22.04 -fPIC -Os)


yosys> 
```
  
 ### 3. Klayout installation:<br>

<li> Refer to following webpages to install:<br>
  
[webpage 1](https://www.klayout.de/build.html) <br>
[webpage 2](https://installati.one/ubuntu/21.04/klayout/)<br>
  
<li> Klayout environment:
  
  ![Untitled](https://user-images.githubusercontent.com/38715276/220562750-97ad2953-2048-4f60-afa0-e1f3721d9759.png)
  
  
## OpenFASoC installation
  
  <li> Refer to following webpages to install:<br>
  
[webpage 1](https://openfasoc.readthedocs.io/en/latest/getting-started.html#installation) <br>
    
    
# Section 2: Running a sample using OpenFASoC
    
The video for this section can be found [here](https://onedrive.live.com/?authkey=%21ANgZedkxG5nArLI&id=E0E9B5EEF85B162E%2198904&cid=E0E9B5EEF85B162E&parId=root&parQt=sharedby&parCid=60A96227DD109893&o=OneUp) and the repository [here](https://github.com/rakshit-23/OpenFASOC).

### Rerun the Temperature Sensor Generator in OpenFASoC

The paper related to Temperature Sensor Generator can be found [here](https://ieeexplore.ieee.org/document/9816083/authors#authors).

The circuit consists of a ring oscillator whose frequency is controlled by the voltage drop over a MOSFET operating in subthreshold regime, where its dependency on temperature is exponential

![Untitled](https://user-images.githubusercontent.com/38715276/221111085-9e9b414a-aa25-4086-a004-b180923c0d78.png)

The physical implementation of the analog blocks in the circuit is done using two manually designed standard cells:

<li> HEADER cell, containing the transistors in subthreshold operation:

![Screenshot from 2023-02-24 02-35-10](https://user-images.githubusercontent.com/38715276/221120288-f5a96770-e7be-4199-b415-41b5bbdf1933.png)

<li> SLC cell, containing the Split-Control Level Converter:

![Screenshot from 2023-02-24 02-42-22](https://user-images.githubusercontent.com/38715276/221121190-ecf0b196-319c-4f1d-8b7d-c3bf0deb793b.png)

More information about sensor can be found [here](https://openfasoc.readthedocs.io/en/latest/flow-tempsense.html).

The <code>.gds</code>  files exist in <code>/.../openfasoc/openfasoc/generators/temp-sense-gen/blocks/sky130hd/gds </code> 

By using <code>make sky130hd_temp_verilog</code> in <code>/.../openfasoc/openfasoc/generators/temp-sense-gen</code> the verilog code based on <code>.jason</code> file will get generated. In this file temperature is being varied from -20 C to 100 C. In this file the parameter toward which the circuit must be optimized is selected which is "error" here. Based on the operating temperature range, generator calculates the number of header and inverters to minimize the error. 

<li> test.jason:

```
{
    "module_name": "tempsenseInst_error",
    "generator": "temp-sense-gen",
    "specifications": {
    	"temperature": { "min": -20, "max": 100 },
    	"power": "",
    	"error": "",
    	"area": "",
    	"optimization":"error",
    	"model" :"modelfile.csv"
	}
}
```

By runnung <code>make sky130hd_temp_verilog</code>, the result on Terminal is:

```
File present : SEARCH already done
---check_search_done---- get old research results :    20 2.44027697469062e-07 -0.311720262269828 6 3 Tempmin:-20,Tempmax:100,Optimization:error,Model:tools/..//models/modelfile.csv,Delta_1st_pass:10
Error :  -0.311720262269828
Inv :  6
Header :  3
History :  Tempmin:-20,Tempmax:100,Optimization:error,Model:tools/..//models/modelfile.csv,Delta_1st_pass:10
INV:6
HEADER:3

#----------------------------------------------------------------------
# Verilog Generation
#----------------------------------------------------------------------
#----------------------------------------------------------------------
# Verilog Generated
#----------------------------------------------------------------------

Exiting tool....
```

the opmization is done based on "modelfile.csv" exists in  <code>/.../openfasoc/openfasoc/generators/temp-sense-gen/models</code> 

The model file is like:

![Screenshot from 2023-02-24 03-45-01](https://user-images.githubusercontent.com/38715276/221133591-8cee3ae5-248a-4c6c-8707-464cc90da7e9.png)

After running the `make sky130hd_temp_verilog` command the verilog files of counter.v, TEMP_ANALOG_hv.nl.v, TEMP_ANALOG_lv.nl.v are created in the <code>/.../openfasoc/openfasoc/generators/temp-sense-gen/src</code> folder.
	

### Synthesis

for completeing the process like floorplan, routing, placement and the like, OpenRoad Flow is used.	
The OpenROAD Flow starts with a flow configuration file (config.mk) in <code>/.../openfasoc/openfasoc/generators/temp-sense-gen/flow/design/sky130hd</code>, the chosen platform (sky130hd, for example) and the Verilog files generated from the previous part in <code>/.../openfasoc/openfasoc/generators/temp-sense-gen/flow/design/src</code>.

From them, synthesis is run using Yosys to find the appropriate circuit implementation from the available cells in the platform.
	
To complete the flow, run <code>make sky130hd_temp</code>
	
The result will be in <code>/.../openfasoc/openfasoc/generators/temp-sense-gen/flow/results/sky130hd</code>
	
For debugging purposes, it is also possible to generate only part of the flow, visualize the results in OpenROAD GUI or generate DEF files of all intermediary results. For doing so, the Makefile in temp-sense-gen/flow/ contains special targets.

After running make sky130hd_temp in temp-sense-gen/ once, cd into the flow/ directory and use one of the commands from the following table:

|Command|Function|
|---|---|
|make synth   | Stops the flow after synthesis|
|make floorplan |  Stops the flow after floorplan|
|make place   |   Stops the flow after placement|
|make route   |  Stops the flow after routing|
|make finish  |  Runs the whole RTL-to-GDS flow|
|make gui_floorplan   |  Opens the design after floorplan in OpenROAD GUI|
|make gui_place  |   Opens the design after placement in OpenROAD GUI|
|make gui_route  |  Opens the design after routing in OpenROAD GUI|
|make gui_final   |  Opens the finished design in OpenROAD |
|make all_defs  |   Creates DEF files in flow/results/ of every step in the flow|
|make print-ENV_VARIABLE_NAME   |  Prints the value of an env variable recognized by OpenROAD Flow|
	
	
<li> The final result is:
	
![kjkj](https://user-images.githubusercontent.com/38715276/221177042-c3fe9d6f-726d-4d4c-bc9e-72d8e8983e72.png)

