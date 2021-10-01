#!/bin/bash

read -p "Informe o valor 1: " valor1
read -p "Informe o valor 2: " valor2

read -p "Escolha uma Operação: 
1 = Soma
2 = Subtração
3 = Multiplicação
4 = Divisão
q = SAIR

Opção: " tipoOperacao ; echo

if [[ "$tipoOperacao" -eq "1" ]]
then
	echo "$valor1 + $valor2 = $((valor1+valor2))"
elif [[ "$tipoOperacao" -eq "2" ]]
then
	echo "$valor1 - $valor2 = $((valor1-valor2))"
elif [[ "$tipoOperacao" -eq "3" ]]
then
	if [[ "$valor1" -eq 0 || "$valor2" -eq 0 || "$valor1" -eq "" || "$valor2" -eq "" ]]
	then
		echo "Um dos valores é zero, abortando..."
		exit 1;
	else
		echo "$valor1 X $valor2 = $((valor1*valor2))"
	fi
elif [[ "$tipoOperacao" -eq "4" ]]
then
	divisaoExata=$((valor1%valor2))
	if [[ "valor1" -eq 0 || "$valor2" -eq 0 || "$valor1" -eq "" || "$valor2" -eq "" ]]
	then
		echo "Um dos valores é zero, abortando..."
		exit 1;
	else
		if [ "$divisaoExata" -ne "0" ]
		then
			echo -e "Divisão com resto = $((valor1%valor2))\n"

		else
			echo -e "Divisão exata = $((valor1%valor2))\n"
		fi
		echo "$valor1 / $valor2 = $((valor1/valor2))"

	fi

elif [[ "$tipoOperacao" == "q" || "$tipoOperacao" -eq "" ]]
then
	echo "saindo..."
	sleep 1
	exit 1;
else
	echo "valor incorreto, tente novamente"
fi


