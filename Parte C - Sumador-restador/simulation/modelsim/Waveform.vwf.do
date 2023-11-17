vlog -work work /home/Lucas/Desktop/Guia FPGA/Parte C - Sumador-restador/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Sumador_restador_vlg_vec_tst
onerror {resume}
add wave {Sumador_restador_vlg_vec_tst/i1/a0}
add wave {Sumador_restador_vlg_vec_tst/i1/a1}
add wave {Sumador_restador_vlg_vec_tst/i1/a2}
add wave {Sumador_restador_vlg_vec_tst/i1/a3}
add wave {Sumador_restador_vlg_vec_tst/i1/b0}
add wave {Sumador_restador_vlg_vec_tst/i1/b1}
add wave {Sumador_restador_vlg_vec_tst/i1/b2}
add wave {Sumador_restador_vlg_vec_tst/i1/b3}
add wave {Sumador_restador_vlg_vec_tst/i1/C}
add wave {Sumador_restador_vlg_vec_tst/i1/clock}
add wave {Sumador_restador_vlg_vec_tst/i1/f0}
add wave {Sumador_restador_vlg_vec_tst/i1/f1}
add wave {Sumador_restador_vlg_vec_tst/i1/f2}
add wave {Sumador_restador_vlg_vec_tst/i1/f3}
add wave {Sumador_restador_vlg_vec_tst/i1/N}
add wave {Sumador_restador_vlg_vec_tst/i1/suma_resta}
add wave {Sumador_restador_vlg_vec_tst/i1/V}
add wave {Sumador_restador_vlg_vec_tst/i1/Z}
run -all
