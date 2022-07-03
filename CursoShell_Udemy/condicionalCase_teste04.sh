#!/bin/bash

# Exibicao do Manu

clear
echo "Escolha uma opção do Menu: "
echo
echo "1 - Adicionar"
echo "2 - Remover"
echo "3 - Alterar"
echo "q - Sair"
echo
read -p "Opcao: " opcao

# Rotinas das Opcoes
case "$opcao" in
	1)
		echo "Opcao 1 escolhida."
		echo "Iniciar operacao de inclusao..."
		sleep 3
		;;
	2)
		echo "Opcao 2 escolhida."
		echo "Iniciar operacao de remocao..."
		sleep 3
		;;
	3)
		echo "Opcao 3 escolhida."
		echo "Iniciar operacao de alteracao..."
		sleep 3
		;;
	q)
		echo "Saindo..."
		sleep 3
		exit 0
		;;
	*)
		echo "opcao invalida"
		exit 2
		;;
esac

