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

The paoer related to Temperature Sensor Generator can be found [here](https://ieeexplore.ieee.org/document/9816083/authors#authors).

It consists of a ring oscillator whose frequency is controlled by the voltage drop over a MOSFET operating in subthreshold regime, where its dependency on temperature is exponential

![Untitled](https://user-images.githubusercontent.com/38715276/221111085-9e9b414a-aa25-4086-a004-b180923c0d78.png)

The physical implementation of the analog blocks in the circuit is done using two manually designed standard cells:

<li> HEADER cell, containing the transistors in subthreshold operation;

<li> SLC cell, containing the Split-Control Level Converter.

More information about sensor can be found [here](https://openfasoc.readthedocs.io/en/latest/flow-tempsense.html).



