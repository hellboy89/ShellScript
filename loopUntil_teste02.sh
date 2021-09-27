#!/bin/bash

verificaCmatrix=$(dpkg -l | grep cmatrix | wc -l)

if [ "$verificaCmatrix" -eq 0 ]
then
	echo "Iniciando Instalação..."
	apt install cmatrix -y > /dev/null
	echo "Instalação Completada!"
fi

until ps aux | grep cmatrix | grep -v grep > /dev/null
do
	echo Inicie o Cmatrix
	sleep 3
	echo
done

echo Cmatrix Iniciado...
echo PID: $(pgrep cmatrix)

read -p "Quer desinstalar o Cmatrix? [S/n]" removeCmatrix

if [[ "$removeCmatrix" -eq "s" || "$removeCmatrix" -eq "" ]]
then
	echo "Iniciando Desinstalação..."
	apt remove cmatrix -y > /dev/null
	echo "Desinstalado!"
fi
