#!/bin/bash

for user in /home/*
do
	contMP4=0
	contMP3=0
	contJPG=0
	OLDIFS=$IFS
	
<<comment-ifs

	O parâmetro IFS abaixo é para cada vez que o FOR for executado
	cada linha será colocado um valor diferente.
	
comment-ifs

	IFS=$'\n'
	for files in $(find $user -name '*.jpg' -o -name '*.mp4' -o -name '*.mp3')
	do
		case $files in
			*.mp4)
				contMP4=$(expr $contMP4 + 1)
				;;
			*.mp3)
				contMP3=$(expr $contMP3 + 1)
				;;
			*.jpg)
				contJPG=$(expr $contJPG + 1)
				;;
		esac
	done

<<comment-basename
Comando abaixo "basename" utilizado para pegar somente um nome
se quiser testar melhor so utilizar o comando "basename /home/kali".
comment-basename

echo "Usuarios: $(basename $user)"
echo "Arquivos JPG: $contJPG"
echo "Arquivos MP3: $contMP3"
echo "Arquivos MP4: $contMP4"
echo

done

IFS=$OLDIFS
