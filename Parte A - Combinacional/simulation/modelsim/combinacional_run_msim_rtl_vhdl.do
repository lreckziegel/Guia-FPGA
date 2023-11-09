transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/Lucas/Desktop/Guia FPGA/Parte A - Combinacional/combinacional.vhd}

vcom -93 -work work {/home/Lucas/Desktop/Guia FPGA/Parte A - Combinacional/tb_combinacional.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  tb_combinacional

add wave *
view structure
view signals
run 50 ns
