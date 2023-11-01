transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/Lucas/Desktop/sumador_completo/FF_D.vhd}
vcom -93 -work work {/home/Lucas/Desktop/sumador_completo/sumador_completo.vhd}

vcom -93 -work work {/home/Lucas/Desktop/sumador_completo/tb_FF_D.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  tb_FF_D

add wave *
view structure
view signals
run 500 ns
