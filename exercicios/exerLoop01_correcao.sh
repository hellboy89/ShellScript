#!/bin/bash

<<uid-usuarios

Nessa linha abaixo ele consulta o arquivo /etc/login.defs, onde mostra
qual o UID mínimo e máximo para cada usuário criado, no padrão do Ubuntu
assim que criado o usuário o UID é maior do que 1000.

Onde ele busca pelo UID_MIN e UID_MAX, nas linhas de configuração.

uid-usuarios

# O símbolo ^ no começo, quer dizer tudo que começar com UID_MIN.

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

