#!/bin/bash

clear

fileLog="exerEmail02_log.log"

echo -e "\n=====> Verificando Porcentagem Utilizada do Disco $(date +"%d/%m/%y - %H:%M:%S") <=====\n" >> $fileLog

while [ true ]
do
	porcUsada=$(df -h /dev/sda1 | awk '{print $5}' | tail -n 1 | sed 's/%//')
	dataVerifica=$(date +"%d/%m/%y - %H:%M:%S")

	if [ $porcUsada -ge 80 ]
	then
		# Se tiver variável no echo abaixo ele não envia e-mail.

		echo "disco chegou a mais de 80%" | ssmtp juan.fsj@gmail.com
		echo "$date, disco chegou a mais de 80%" >> $fileLog
		echo "e-mail enviado" >> $fileLog
		break
	else
		echo "$dataVerifica, ainda está no limite aceitável, em $porcUsada%" >> $fileLog
	fi

	sleep 3

done


<<anotacoes

Comando abaixo pega a porcentagem total utilizada do disco.

# df -h /dev/sda1 | awk '{print $5}' | tail -n 1 | sed 's/%//'

anotacoes

