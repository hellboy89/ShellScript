#!/bin/bash

dataHora=$(date +%H:%M)
arqAlunos="nomes_teste.txt"
log="saidaLogs.log"

echo "Iniciando o Script..." | logger -p local0.warn -t [$0]
$logger -p local0.warn -t [$0] "Iniciando o Script"

clear
echo "===== Meu Primeiro Script ====="
echo
echo "Exibir data e hora atual: $dataHora"

# Area de leitura da lista de alunos
echo "================================"
echo "Listagem de Alunos: "
sort $arqAlunos | logger -p local0.warn

# Com esse parametro abaixo, ele irá mostrar a saída no comendo na tela
# Atual e também salvar no arquivo de log.

sort $arqAlunos | tee -a >(logger -p local0.warn -t [$0])

sort $arqAlunos | tee -a | logger -p local0.warn -t [$0]

dataHora=$(date +%H)
echo "================================"
echo "Nota Hora Atual: $dataHora"

#echo "$(date) - Fim do Script..." >> $log
logger -p local0.warn -t [$0] "Fim do Script"
