#!/bin/bash

time=5

<<comment-argumento1

Com esse valor abaixo ($#), informa que não foi passado nenhum argumento
após a chamada do script, caso isso ocorra, necessario dar a mensagem abaixo
que mostra no if.

comment-argumento1

if [ $# -eq 0 ]
then
	echo "Favor informar um processo como argumento."
	echo "./(NomeScript).sh <processo>"
	exit 1
fi

<<comment-grep1

Foi utilizado o comando grep abaixo.

$ps -aux | grep $1 | grep -v grep

Interessante esse comando, pois com ele, eu não pego a pesquisa do comando
no PS -AUX, mostrando apenas a saída final.

comment-grep1

while true
do 
	if ps aux | grep $1 | grep -v grep | grep -v $0 > /dev/null
	then
		echo "$1 em execução"
		sleep $time
	else
		echo "Atenção!! O processo $1 NÃO está em execução!"
		sleep $time
	fi
done


