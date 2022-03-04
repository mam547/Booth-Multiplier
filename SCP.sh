#!/bin/sh
#cktfile must contain list of all the verilog file needed to
#contruct the design
#
#this script takes ckts in cktfile runs them through vpp
#the output is sent to stdout
#

# Usage: ./SCP.sh NAME

cktdir=/home/gota/EECS301/lab3/$1_V

elsyn << //EOF
read  /mgc/Leonardo/lib/ami05_typ.syn
#read /mgc/Leonardo/lib/tsmc035_typ.syn

read {$cktdir/$1.v}

pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize
pre_optimize -extract
optimize -macro -auto -effort quick -hierarchy auto

optimize .work.$1.INTERFACE -macro -auto -effort quick -hierarchy auto
optimize_timing .work.$1.INTERFACE
set edif_write_arrays FALSE

write -downto PRIMITIVES -format vhdl   Proc.vhd
write -downto PRIMITIVES -format edif   Proc.edf
write -downto PRIMITIVES -format verilog  Proc.v
#write -format verilog  Proc.v
write -format SDF -downto PRIMITIVES Proc.sdf
set report_file_name CriticalPath
report_delay -num_paths 1 -show_schematic 1 -critical_paths 
exit
//EOF
        echo "// End >>> $cktdir/$ckt <<<"
exit
