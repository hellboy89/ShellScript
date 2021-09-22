#/bin/bash

read -p "Digite o primeiro valor: " VALOR1
read -p "Digite o segundo valor: " VALOR2

SOMA=$((VALOR1+VALOR2))
MULTIPLICACAO=$((VALOR1*VALOR2))
DIVISAO=$((VALOR1/VALOR2))
SUBTRACAO=$((VALOR1-VALOR2))

echo "\nA soma de $VALOR1 e $VALOR2: $SOMA\n"

echo "\nA SOMA dos valores e: $SOMA"
echo "\nA MULTIPLICACAO dos valores e: $MULTIPLICACAO"
echo "\nA DIVISAO dos valores e: $DIVISAO"
echo "\nA SUBTRACAO dos valores e: $SUBTRACAO"

echo

