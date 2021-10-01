#!/bin/bash

clear

help () {
	ajuda=$1

	if [ "$ajuda" == "--help" ]
	then
		echo
		echo "Uso ./FuncoesDiversas.sh OPÇÃO DATA"
		echo ""
		echo "DATA nos formatos DDMMYYYY ou MMDDYYYY, com ou sem /"
		echo ""
		echo "Opções: "
		echo "-f = Retorna 0 para BR, 1 para US e 2 quando impossível determinar, 3 Inválido"
		echo "-i = Inverte formato BR para US e US para BR. Inclui as Barras"
		echo "-b = Inclui Barras de Data. Exemplo: de 13081981 para 13/08/1981"
		echo "-e = Exibe a data em formato extenso. Exemplo de 13081918 para 13 de "
		echo "Agosto de 1981"
		echo
	else
		echo "Função Inválida, Tente novamente!"
	fi

}

invertFormato () {
	
}

mostrarHora () {
	hora=$(date)
	echo -e "\n\t=====> $hora <=====\n"
}

leia () {
	echo Ola
}

leia2 () {
	echo Oi
}

somaValores() {
	valor1=1000
	valor2=20
	soma=$((valor1+valor2))
	echo $soma
}

#====================> CHAMADA DE FUNÇÕES <===============

help $1
