#/bin/bash

####################################################
#	Script que busca nomes no diretorio.	   #
#	Autor: Juan Cleber Faria Alves		   #
#	Descriacaoo: Estudos do curso Udemy.	   #
#						   #
#	Data 20/09/2021.			   #
#						   #
####################################################

ARQNOMES="/home/teste/curso_shell/nomes_teste.txt"

clear
echo "===== Script de Busca de Alunos ====="
echo ""
#echo -n "Por favor, informe o nome do aluno: "
#read ALUNO
# As duas linhas acima, seria exatamente igual a de baixo.
#read -p "Por favor, informe o nome do aluno: " ALUNO

# Com essa modificacao abaixo e possivel colocar o valor da variavel diretamente apos execucao do script.
NOMECOMPLETO=$(grep "$1" $ARQNOMES)

echo ""
echo "O nome completo do aluno é :$NOMECOMPLETO"
echo ""
echo "Fim do script"

