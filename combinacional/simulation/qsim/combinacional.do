onerror {quit -f}
vlib work
vlog -work work combinacional.vo
vlog -work work combinacional.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.compuerta_nand_vlg_vec_tst
vcd file -direction combinacional.msim.vcd
vcd add -internal compuerta_nand_vlg_vec_tst/*
vcd add -internal compuerta_nand_vlg_vec_tst/i1/*
add wave /*
run -all
