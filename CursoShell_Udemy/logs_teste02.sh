#!/bin/bash

dataHora=$(date +%H:%M)
arqAlunos="nomes_teste.txt"
log="saidaLogs.log"

<<comment-logs

Com esses 2 comandos execs abaixo, a saída padrão e também de erro de todo o script será adicionado na variável log.

comment-logs

exec 1>> $log
exec 2>&1

# Função de leitura da data e hora

echo "$(date) - Iniciando o Script..." # >> $log

clear
echo "===== Meu Primeiro Script ====="
echo
echo "Exibir data e hora atual: $dataHora"

# Area de leitura da lista de alunos
echo "================================"
echo "Listagem de Alunos: "
sort $arqAlunos # | tee -a $log

dataHora=$(date +%H)
echo "================================"
echo "Nota Hora Atual: $dataHora"
echo "$(date) - Fim do Script..." # >> $log
