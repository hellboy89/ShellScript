#!/bin/bash

#USUARIOATUAL=$(w | head -3 | tail -1 | awk '{print $1}')

USUARIO=$(grep "$1" /etc/passwd)

if [ -n "$USUARIO" ]
then
	echo "o usuario, existe "
else
	echo "o usuario, NAO existe"
fi
