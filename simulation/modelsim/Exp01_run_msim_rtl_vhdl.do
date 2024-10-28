transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/Documents/LabArq-Exp1-AADG/LCD_Display.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/LabArq-Exp1-AADG/Ifetch.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/LabArq-Exp1-AADG/Exp01.vhd}

