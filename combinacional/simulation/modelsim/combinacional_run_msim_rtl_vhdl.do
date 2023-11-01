transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/Lucas/Desktop/combinacional/compuerta_nand.vhd}

vcom -93 -work work {/home/Lucas/Desktop/combinacional/tb_compuerta_nand.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  tb_compuerta_nand

add wave *
view structure
view signals
run 500 ns
