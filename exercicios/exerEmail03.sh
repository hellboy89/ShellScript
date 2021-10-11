#!/bin/bash

clear

scriptConf="/etc/rsyslog.d/scripts.conf"
arquivoLog="/var/log/scripts.log"

rm -f $scriptConf
rm -f $arquivoLog

if [ ! -e $scriptConf ]
then
	touch $arquivoLog
	chmod 777 $arquivoLog
else
	echo "ja existe"
fi

if [ ! -e $arquivoLog ]
then
	touch $arquivoLog
	chmod 777 $arquivoLog
	# CONFIGURANDO SCRIPT DE ARMAZENAMENTO DE LOG
	echo "local0.* /var/log/scripts.log" >> $scriptConf
	echo "local1.* /var/log/scripts.log" >> $scriptConf
else
	echo "erro na criação do $arquivoLog"
fi

systemctl restart rsyslog

while [ true ]
do
	consumoSwap=$(free -m | awk '{print $3}' | tail -n 1)

	porcCons=$((100*consumoSwap/4096))

	if [ $porcCons -ge 50 -a $porcCons -le 80 ]
	then
		echo "consumo está entre 50% e 80%, está em $porcCons%"
		logger -p local0.err -t [TAG] "consumo está entre 50% e 80%, está em $porcCons%"
	elif [ $porcCons -gt 80 ]
	then
		echo "consumo está acima de 80%, está em $porcCons%"
		logger -p local0.err -t [TAG] "consumo está acima de 80%, está em $porcCons%"
	else
		echo "consumo está aceitável, está em $porcCons%"
		logger -p local0.err -t [TAG] "consumo está aceitável, está em $porcCons%"
	fi

	sleep 2

done





<<anotacoes

Linha de baixo irá pegar sometne o que está sendo utilizado no swap.

# free -m | awk '{print $3}' | tail -n 1

Para Simular um consumo alto de memória utilize o app abaixo.

# apt install stress-ng

Com o comando abaixo. Que irá consumir 5GB de memória por 10 segundos.

stress-ng --vm 2 --vm-bytes 5G --timeout 10s


anotacoes
