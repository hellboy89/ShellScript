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
fi

#if [ ! -d "$VERIFICAULTBACKUP" ]
if [ "$QUANTBACKUPS" -ge 2 ]
then
	echo ; read -p "Já existe um backup criado nos ultimos 7 dias, quer continuar? [S/n] " CONTINUAR
	if [ "$CONTINUAR" == "s" -o "$CONTINUAR" == "S" -o "$CONTINUAR" == "" ]
	then
		echo -e "\nINICIANDO BACKUP..."
		tar -zcvf /home/backup/$NOMEARQUIVO.tar.gz /home/kali/ > /dev/null 2> /dev/null
		echo -e "\nBackup Feito, $NOMEARQUIVO"
	else
		exit 1
	fi
else
	echo -e "\nINICIANDO BACKUP..."
	tar -zcvf /home/backup/$NOMEARQUIVO.tar.gz /home/kali/ > /dev/null 2> /dev/null
fi

echo -e "\n =====> Lista Abaixo de Todos os Backups <===== \n"
ls -l /home/backup/

echo ; read -p "Deseja Limpar o Diretório? [s/N] " OPLIMPAR
if [ "$OPLIMPAR" == "s" ]
then
	rm -fv /home/backup/*
elif [ "$OPLIMPAR" == "" ]
then
	exit 1
else
	exit 1
fi

##### ANOTACOES #####
# Nome do arquivo de backup será como abaixo.
# date +"backup_home_%y%m%d%H%M"
#
#
#
#


