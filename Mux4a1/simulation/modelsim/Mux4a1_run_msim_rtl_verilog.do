transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Documentos/Circuitos\ Logicos/Prueba1/Mux4a1 {D:/Documentos/Circuitos Logicos/Prueba1/Mux4a1/mux4a1.v}

