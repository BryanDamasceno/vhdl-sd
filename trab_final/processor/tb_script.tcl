#vsim -do tb_script.do
#puts {
#  Arquivo Exemplo de um FFD para Guia de aula_10
#  Laboratoria de Sistemas Digitais 
#  Autores: Professores da Area de Eletronica UFMG
#}

# Exemplo simples de como usar um script em TCL 
# para automatizar as simulacoes com ModelSim
# Para cada novo projeto devem ser modificados 
# os nomes relativos aos arquivos dentro do projeto. 

if {[file exists work]} {
vdel -lib work -all
}
vlib work
vcom -explicit  -93 "processor.vhd"
vcom -explicit -93 "datapath.vhd"
vcom -explicit -93 "controlunit.vhd"
vcom -explicit  -93 "comparador_sensores.vhd"
vcom -explicit  -93 "comparador_temporal.vhd"
vcom -explicit  -93 "contador.vhd"
vcom -explicit  -93 "mux_sensores.vhd"
vcom -explicit  -93 "mux_temporal.vhd"
vcom -explicit  -93 "reg_temperatura.vhd"
vcom -explicit  -93 "reg_umidade.vhd"
vcom -explicit  -93 "reg_tempo.vhd"
vcom -explicit  -93 "reg_intervalo.vhd"
vcom -explicit  -93 "rom.vhd"
vcom -explicit  -93 "tb_processor.vhd"
vsim -t 1ns   -lib work tb_processor
add wave sim:/tb_processor/*
#do {wave.do}
view wave
view structure
view signals
run 480ns
#quit -force

