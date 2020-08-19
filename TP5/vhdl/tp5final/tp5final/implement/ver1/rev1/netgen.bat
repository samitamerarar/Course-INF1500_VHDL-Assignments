@set XILINX=C:\Logiciels\Xilinx\14.4\ISE_DS\ISE
@set PATH=C:\Logiciels\Xilinx\14.4\ISE_DS\ISE\bin\nt64
@"C:\Logiciels\Xilinx\14.4\ISE_DS\ISE\bin\nt64\netgen.exe" -w -sim -ofmt vhdl -pcf "top.pcf"  -tpw 0  -rpw 100  -s  1  -ar  Structure  -insert_pp_buffers true "top.ncd" "time_sim.vhd"
