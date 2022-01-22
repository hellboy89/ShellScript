#!/bin/bash
clear

function apagaArquivos() {
	ls -l /home/teste/teste/
}

function descompactarArquivo() {
	unzip -uo /home/teste/ArquivosTeste.zip -d /home/teste/teste > /dev/null
}

function teste() {
	# para apagar arquivo pode ser utilizado o comando "find"
	# como mostrado abaixo.

	find /home/teste/teste -type f -mtime +2 -delete
	quantFile=$(ls /home/teste/teste | wc -l)
	echo "quant arquivos na pasta: $quantFile"
}

#apagaArquivos
teste
descompactarArquivo
