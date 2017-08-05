vlog -work work /home/game/electivaIV/PROYECTOS/muxrtl/simulation/modelsim/mux.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mux_vlg_vec_tst
onerror {resume}
add wave {mux_vlg_vec_tst/i1/m}
add wave {mux_vlg_vec_tst/i1/s}
add wave {mux_vlg_vec_tst/i1/x}
add wave {mux_vlg_vec_tst/i1/y}
run -all
