#!/bin/bash

ler () {
	read -p "Informe o Nome: " nome
	read -p "Informe o Sobrenome: " sobrenome
	return 10
}

# Necessário a linha abaixo que irá fazer a chamada da função.

ler

echo "return code = $?"

echo $nome $sobrenome

