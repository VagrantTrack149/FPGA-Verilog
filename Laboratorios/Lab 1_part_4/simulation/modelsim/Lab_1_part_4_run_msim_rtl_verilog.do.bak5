transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Documentos/Circuitos\ Logicos/Prueba1/Tareas/Lab\ 1_part_4 {D:/Documentos/Circuitos Logicos/Prueba1/Tareas/Lab 1_part_4/Lab_1_part_4.v}
vlog -vlog01compat -work work +incdir+D:/Documentos/Circuitos\ Logicos/Prueba1/Tareas/Lab\ 1_part_4 {D:/Documentos/Circuitos Logicos/Prueba1/Tareas/Lab 1_part_4/chat_7seg.v}

vlog -vlog01compat -work work +incdir+D:/Documentos/Circuitos\ Logicos/Prueba1/Tareas/Lab\ 1_part_4 {D:/Documentos/Circuitos Logicos/Prueba1/Tareas/Lab 1_part_4/lab_1_part_4_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  lab_1_part_4_TB

add wave *
view structure
view signals
run -all
