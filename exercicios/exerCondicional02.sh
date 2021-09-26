#!/bin/bash

###############################################
#	Script de Backup
#	Criado: Juan Cleber
#	Data: 25/09/2021 10h
###############################################

NOMEARQUIVO=$(date +"backup_home_%y%m%d%H%M%S")
VERIFICADIR="/home/backup/"
VERIFICAULTBACKUP="/home/backup/backup_home*"
QUANTBACKUPS=$(find /home/backup -mtime -7 | wc -l)

if [ ! -d "$VERIFICADIR" ]
then
	echo -e "\nCRIANDO DIRETORIO DE BACKUP\n"
	sleep 2
	mkdir /home/backup
	chmod 777 /home/backup
else
	echo "Diretório $VERIFICADIR, já existe!"
fi

echo ; echo

#if [ ! -d "$VERIFICAULTBACKUP" ]
if [ ! $QUANTBACKUPS -gt "2" ]
then
	read -p "Já existe um backup criado nos ultimos 7 dias, quer continuar [s/n]? " CONTINUAR
	if [ "$CONTINUAR" == "s" ]
	then
		echo -e "\nINICIANDO BACKUP...\n"
		tar -zcvf /home/backup/$NOMEARQUIVO.tar.gz /home/kali/ > /dev/null 2> /dev/null
		echo -e "\nBackup Feito, $NOMEARQUIVO\n"
	else
		exit 1
	fi
fi



##### ANOTACOES #####
# Nome do arquivo de backup será como abaixo.
# date +"backup_home_%y%m%d%H%M"
#
#
#
#


