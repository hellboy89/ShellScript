#/bin/bash

read -p "Digite o primeiro valor: " VALOR1
read -p "Digite o segundo valor: " VALOR2

SOMA=$((VALOR1+VALOR2))
MULTIPLICACAO=$((VALOR1*VALOR2))
DIVISAO=$((VALOR1/VALOR2))
SUBTRACAO=$((VALOR1-VALOR2))

echo -e "\nA SOMA dos valores e: $SOMA"
echo -e "\nA MULTIPLICACAO dos valores e: $MULTIPLICACAO"
echo -e "\nA DIVISAO dos valores e: $DIVISAO"
echo -e "\nA SUBTRACAO dos valores e: $SUBTRACAO"

echo

