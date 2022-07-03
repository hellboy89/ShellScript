#!/bin/bash

ARQALUNOS="/home/kali/ShellScript/nomes_teste.txt"

clear
echo "===== SCRIPT DE BUSCA DE ALUNOS ====="
echo

# if test $# -gt 0
# Sintaxe abaixo e exatamente igual a de cima.

if [ $# -gt 0 ]
then
	ALUNOCOMPLETO=$(grep "$1" "$ARQALUNOS")
	echo "O nome completo do aluno e: "$ALUNOCOMPLETO""
else
	echo "Informe o nome do aluno como parametro!"
fi

echo
echo "Fim do Script"
