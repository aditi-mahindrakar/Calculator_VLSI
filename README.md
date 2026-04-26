4-Bit VLSI Calculator (ALU) - RTL to GDSII Flow
A complete "Level 1" VLSI design project implementing a 4-bit Arithmetic Logic Unit (ALU) using an entirely open-source EDA toolchain. 
This project moves from high-level Verilog hardware description to a manufacture-ready GDSII silicon layout on the SkyWater 130nm PDK.
🛠 Project Specifications
Word Length: 4-bit operands (a, b)
Output: 8-bit result (res) to prevent overflow
Operations: Addition (00), Subtraction (01), Multiplication (10)
Process Node: SkyWater 130nm (Sky130)
Library: Sky130_fd_sc_hd (High Density)
🏗 Toolchain & Platforms
Design: Verilog HDL (Hardware Description)
Simulation: Icarus Verilog (Functional Verification)
Waveforms: EPWave / GTKWave (Timing Visualization)
Synthesis: Yosys (RTL to Gate-level Netlist)
Physical Design: OpenLane (Automated RTL-to-GDSII)
PDK: SkyWater 130nm (Manufacturing Rules)
Deployment: Google Colab (Cloud-based Execution)
📈 Design Journey
1. RTL Design & Logic
The calculator logic was written in Verilog using a combinational always block.
A case statement handles mathematical operations based on a 2-bit opcode.
3. Functional Verification
Using a Testbench, the design was stimulated with various inputs.
The waveforms confirmed that the logic was 100% accurate before moving to hardware synthesis.
5. Synthesis & Schematic
The Verilog code was synthesized using Yosys. This step transformed the code into a hardware schematic
involving hardware blocks for adding, subtracting, and multiplying, plus a Multiplexer to select the output.
6. Physical Design (Back-End)
Using the OpenLane flow, the design underwent:
Floorplanning: Defined the die area (~10,344 µm²) and I/O pins.
Placement: Positioned logic gates in optimized rows.
Routing: Created metal interconnects (Metal 1-5) and established the power grid (VDD/GND).
📊 Final Design Metrics
Die Area: ~96.5 µm x 107.2 µm
Total Area: ~10,344 µm²
PDK: sky130A
Tools: Yosys, OpenLane, Icarus Verilog
