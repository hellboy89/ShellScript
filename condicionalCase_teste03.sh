#!/bin/bash

case "$1" in
	[0-9])
		echo "o parametro e um numero"
		;;
	[A-Z])
		echo "o parametro e uma letra maiuscula"
		;;
	[a-z])
		echo "o parametro e uma letra minuscula"
		;;
	*)
		echo "o parametro e um caracter especial"
		;;
esac

