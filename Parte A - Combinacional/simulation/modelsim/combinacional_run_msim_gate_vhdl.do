transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {combinacional.vho}

vcom -93 -work work {/home/Lucas/Desktop/Guia FPGA/Parte A/tb_combinacional.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  tb_combinacional

add wave *
view structure
view signals
run 50 ns
