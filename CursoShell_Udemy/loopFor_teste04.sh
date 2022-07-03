#!/bin/bash

for i in /home/kali/ShellScript/*
do
	if [ -f $i ]
	then
		echo "Verificando o arquivo $i"
		linhas=$(cat $i | wc -l)
		echo "O arquivo $i contém $linhas linhas."
		echo
	fi
done

