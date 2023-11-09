vlog -work work /home/Lucas/Desktop/Guia FPGA/Parte B - Sumador completo/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sumador_completo_vlg_vec_tst
onerror {resume}
add wave {sumador_completo_vlg_vec_tst/i1/clk}
add wave {sumador_completo_vlg_vec_tst/i1/in_a}
add wave {sumador_completo_vlg_vec_tst/i1/in_b}
add wave {sumador_completo_vlg_vec_tst/i1/in_c}
add wave {sumador_completo_vlg_vec_tst/i1/out_c}
add wave {sumador_completo_vlg_vec_tst/i1/out_f}
run -all
