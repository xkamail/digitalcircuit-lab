onerror {quit -f}
vlib work
vlog -work work lab4part5.vo
vlog -work work lab4part5.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lab4part5_vlg_vec_tst
vcd file -direction lab4part5.msim.vcd
vcd add -internal lab4part5_vlg_vec_tst/*
vcd add -internal lab4part5_vlg_vec_tst/i1/*
add wave /*
run -all
