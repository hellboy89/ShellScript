#!/bin/bash

clear
read -p "Informe o Limite de Processos: " maximo

while [ $(ps aux | wc -l) -le $maximo ]
do
	echo "tudo ok"
	echo "Processos Atuais: $(ps aux | wc -l)"
	sleep 1
	echo
done

echo "Limite de Processos Excedido"
echo "Por favor verifique o sistema"

