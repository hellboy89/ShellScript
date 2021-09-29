#!/bin/bash

minUID=$(grep "^UID_MIN" /etc/login.defs | tr -s "\t" | cut -f2)
maxUID=$(grep "^UID_MAX" /etc/login.defs | tr -s "\t" | cut -f2)

OLDIFS=$IFS
IFS=$'\n'

#Criando o cabeçalho da saída
echo -e "USUARIO\t\tUID\t\tDIR HOME\t\tNOME OU DESCRIÇÃO"

for i in $(cat /etc/passwd)
do
	userID=$(echo $i | cut -d":" -f3)
	if [ $userID -ge $minUID -a $userID -le $maxUID ]
	then
		USER=$(echo $i | cut -d":" -f1)
		USERDESC=$(echo $i | cut -d":" -f5 | tr -d ',')
		USERHOME=$(echo $i | cut -d":" -f6)
		echo -e "$USER\t\t$userID\t\t$USERHOME\t\t$USERDESC"
	fi
done
IFS=$OLDIFS

