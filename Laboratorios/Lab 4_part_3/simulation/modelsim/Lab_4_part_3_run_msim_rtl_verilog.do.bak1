transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Documentos/Circuitos\ Logicos/Prueba1/Tareas/Lab\ 3_part_5 {D:/Documentos/Circuitos Logicos/Prueba1/Tareas/Lab 3_part_5/char_7seg.v}
vlog -vlog01compat -work work +incdir+D:/Documentos/Circuitos\ Logicos/Prueba1/Tareas/Lab\ 4_part_3 {D:/Documentos/Circuitos Logicos/Prueba1/Tareas/Lab 4_part_3/Lab_4_part_3.v}
vlog -vlog01compat -work work +incdir+D:/Documentos/Circuitos\ Logicos/Prueba1/Tareas/Lab\ 4_part_3 {D:/Documentos/Circuitos Logicos/Prueba1/Tareas/Lab 4_part_3/ContadorModuloN.v}

vlog -vlog01compat -work work +incdir+D:/Documentos/Circuitos\ Logicos/Prueba1/Tareas/Lab\ 4_part_3 {D:/Documentos/Circuitos Logicos/Prueba1/Tareas/Lab 4_part_3/Lab_4_part_3_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Lab_4_part_3_tb

add wave *
view structure
view signals
run -all
