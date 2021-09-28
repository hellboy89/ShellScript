#!/bin/bash

clear

IFS=:

nomeUsuarios=$(cat /etc/passwd | cut -d ":" -f1 | tail -4)
uidUsuarios=$(cat /etc/passwd | cut -d ":" -f3 | tail -4)
dirUsuarios=$(cat /etc/passwd | cut -d ":" -f6 | tail -4)
nomeUsuarios=$(cat /etc/passwd | cut -d ":" -f5 | tail -4)

#Contagem
contNomeUsuarios=$(echo "$nomeUsuarios" | wc -l)


for titulo in USUARIO UID DIR_HOME NOME
do
	echo -n "$titulo "
done

echo

cat /etc/passwd | column -t -s ":" | awk '{print $1,$3,$6,$5}' | tail -4


#echo "$nomeUsuarios $uidUsuarios"


IFS=$OLDIFS

<<dicas

Pegando Nome Usuários
cat /etc/passwd | cut -d ":" -f1 | tail -4

Pegando UID Usuários
cat /etc/passwd | cut -d ":" -f3 | tail -4

Pegando Diretorio Usuários
cat /etc/passwd | cut -d ":" -f6 | tail -4

Pegando Nome Completo
cat /etc/passwd | cut -d ":" -f5 | tail -4

dicas


