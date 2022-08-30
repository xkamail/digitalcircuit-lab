onerror {quit -f}
vlib work
vlog -work work lab5part2.vo
vlog -work work lab5part2.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lab5part2_vlg_vec_tst
vcd file -direction lab5part2.msim.vcd
vcd add -internal lab5part2_vlg_vec_tst/*
vcd add -internal lab5part2_vlg_vec_tst/i1/*
add wave /*
run -all
