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
vcom -explicit  -93 "contador.vhd"
vcom -explicit  -93 "tb_contador.vhd"
vsim -t 1ns   -lib work tb_contador
add wave sim:/tb_contador/*
#do {wave.do}
view wave
view structure
view signals
run 4000 ms
#quit -force

