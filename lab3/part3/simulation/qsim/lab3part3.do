onerror {quit -f}
vlib work
vlog -work work lab3part3.vo
vlog -work work lab3part3.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lab3part3_vlg_vec_tst
vcd file -direction lab3part3.msim.vcd
vcd add -internal lab3part3_vlg_vec_tst/*
vcd add -internal lab3part3_vlg_vec_tst/i1/*
add wave /*
run -all
