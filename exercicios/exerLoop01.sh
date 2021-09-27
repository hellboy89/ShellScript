#!/bin/bash

IFS=:

nomeUsuarios=$(cat /etc/passwd | cut -d ":" -f5 | tail -4
)
uidUsuarios=$(cat /etc/passwd | cut -d ":" -f5 | tail -4
)
dirUsuarios=$(cat /etc/passwd | cut -d ":" -f5 | tail -4
)
nomeUsuarios=$(cat /etc/passwd | cut -d ":" -f5 | tail -4
)


IFS=$OLDIFS


################################
#
# Pegando Nome Usuários
# cat /etc/passwd | cut -d ":" -f1 | tail -4
#
# Pegando UID Usuários
# cat /etc/passwd | cut -d ":" -f3 | tail -4
#
# Pegando Diretorio Usuários
# cat /etc/passwd | cut -d ":" -f6 | tail -4
#
# Pegando Nome Completo
# cat /etc/passwd | cut -d ":" -f5 | tail -4
#
#
###############################
