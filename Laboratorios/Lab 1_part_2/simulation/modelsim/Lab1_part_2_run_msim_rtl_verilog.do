transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Documentos/Circuitos\ Logicos/Prueba1/Tareas/Lab\ 1_part_2 {D:/Documentos/Circuitos Logicos/Prueba1/Tareas/Lab 1_part_2/Lab1_part_2.v}
vlog -vlog01compat -work work +incdir+D:/Documentos/Circuitos\ Logicos/Prueba1/Tareas/Lab\ 1_part_2 {D:/Documentos/Circuitos Logicos/Prueba1/Tareas/Lab 1_part_2/mux2to1.v}

vlog -vlog01compat -work work +incdir+D:/Documentos/Circuitos\ Logicos/Prueba1/Tareas/Lab\ 1_part_2 {D:/Documentos/Circuitos Logicos/Prueba1/Tareas/Lab 1_part_2/Lab1_part_2_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Lab1_part_2_TB

add wave *
view structure
view signals
run -all
