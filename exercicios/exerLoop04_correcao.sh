#!/bin/bash

read -p "Informe o nome do arquivo a ser criado: " file
read -p "Informe um confunto de caracteres: " word
read -p "Informe o tamanho final do arquivo (em bytes): " size

# Linha abaixo serve para zerar o arquivo caso, ele já exista.

cat /dev/null > $file

porcExibida=0

until [ $size -le $(stat --printf=%s "$file") ]
do
	echo -n $word >> $file
	sizeAtual=$(stat --printf=%s "$file")
	
	# Abaixo será calculado a porcentagem.

	porcAtual=$(expr $sizeAtual \* 100 / $size)

	# Abaixo só irar executar a cada 10% do arquivo preenchido.
	# Foi criado duas condicionais abaixo, a segunda é para o valor
	# não ser maior do que 100% para não haver repetição.

	if [ $(expr $porcAtual % 10) -eq 0 -a $porcExibida -ne $porcAtual ]
	then
		echo "Concluído: $porcAtual% - Tamanho do Arquivo: $sizeAtual"
		porcExibida=$porcAtual
	fi
done



