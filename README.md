# Booth-Multiplier
Booth multiplier code for Digital Logic Laboratory. The SCP.sh file was modified to allow passing in an item name to synthesize it.

Folders:
* Each _V folder contains verilog components for the booth multiplier, and each has a _S folder for the generated schematic, a Proc.v for each component generated through synthesis, the source verilog file and a testbench.
* Multiplier code contains a pre-built multiplier using all of the individual components.
* TopLevel contains a schematic using the individual components, and TopLevel_Multiplier is a schematic using the prebuild multiplier.
