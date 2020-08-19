set XILINX=C:\Logiciels\Xilinx\14.4\ISE_DS\ISE
call "C:\Logiciels\Xilinx\14.4\ISE_DS\ISE\bin\nt64\xst.exe" -ifn top.xst >> synthesis.dfml
call "C:\Logiciels\Xilinx\14.4\ISE_DS\ISE\bin\nt64\netgen.exe" -ofmt vhdl -intstyle silent -w top.ngc  top.vhd >> synthesis.dfml
