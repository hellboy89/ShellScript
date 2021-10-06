#!/bin/bash

dataHora=$(date +%H:%M)
arqAlunos="nomes_teste.txt"
admin="juan.fsj@gmail.com"
arqMsg="/tmp/msg_temp.txt"

echo "$(date): Iniciando o Script" >> $arqMsg

clear
echo "=====Meu Primeiro Script===="
echo
echo "Exibir data e hora atual: $dataHora"
sleep 5

echo "============================"
echo "Listagem dos Alunos: "
sort $arqAlunos

dataHora=$(date +%H)
echo "============================"
echo "Nova Hora Atual: $dataHora"

echo "$(date): Script Finalizado" >> $arqMsg

echo "teste" | mail -s "exercicio email" -A $arqMsg $admin

rm -f $arqMsg

