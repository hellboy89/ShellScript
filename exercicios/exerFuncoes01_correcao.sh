#!/bin/bash

data=$(echo $2 | tr -d "/")
val1=$(echo $data | cut -c-2)
val2=$(echo $data | cut -c3-4)
ano=$(echo $data | cut -c5-8)

RetornaFormato () {
<<comment1

A função retorna 0 para data em formato BR (DDMMYYYY), 1 para formato US (MMDDYYYY) e 2 quando é possível determinar. Quando dia = mês, considera-se formato BR.
Retorna 3 para formato inválido.

comment1

	if [ $val1 -le 12 -a $val1 -eq $val2 ] # dia = mes = formato BR
	then
		return 0
	elif [ $val1 -gt 12 -a $val2 -le 12 ] # formato BR
	then
		return 0
	elif [ $val1 -le 12 -a $val2 -gt 12 ] # formato US
	then
		return 1
	elif [ $val1 -le 12 -a $val2 -le 12 ] # formato indefinido, mas válido
	then
		return 2
	else
		return 3
	fi
}

InverteDiaMes () {
# Função que inverte os valores do dia com mês e retorna o valor
	RetornaFormato $1
	local FORMATO=$?
	if [ $FORMATO -ne 3 ]
	then
		echo $val2/$val1/$ano
	else
		echo "Formato de Data Inválido"
	fi
}

IncluiBarra () {
# Função que inclui uma barras na data.
	RetornaFormato $1
	local FORMATO=$?

	if [ $FORMATO -ne 3 ]
	then
		echo "$val1/$val2/$ano"
	else
		echo "Formato de Data Inválido"
	fi

}

DataExtenso () {
# Função que recebe uma data em formato BR e exibe a data em formato extenso.
	RetornaFormato $1
	local RETURN_FORM=$?
	case $RETURN_FORM in
		0)	# Data em Formato BR
			local DIA=$val1
			local MES=$val2
			;;
		1)	# Data em Formato BR
			local DIA=$val2
			local MES=$val1
			;;
		2)	# Formato Indefinido. Solicitar ao Usuário.
			local FORMATO=0
			until [ "$FORMATO" = 1 -o "$FORMATO" = 2 ]
			do
				echo
				echo "Impossível determinar o padrão de data."
				echo "1 - BR (DD/MM/YYYY)"
				echo "2 - US (MM/DD/YYYY)"
				read -p "Informe o formato (1 ou 2): " FORMATO
				case $FORMATO in
					1)
						local DIA=$val1
						local MES=$val2
						;;
					2) 
						local DIA=$val2
						local MES=$val1
						;;
					*)
						echo "Opção Inválida"
						;;
				esac
			done
			;;
		3)
			echo "Formato de Data Inválido"
			exit 3
			;;
	esac

	case $MES in
	01)
		local MESEXT=Janeiro
		;;
	02)
		local MESEXT=Fevereiro
		;;
	03) 
		local MESEXT=Março
		;;
	04) 
		local MESEXT=Abril
		;;
	05) 
		local MESEXT=Maio
		;;
	06) 
		local MESEXT=Junho
		;;
	07)
		local MESEXT=Julho
		;;
	08)
		local MESEXT=Agosto
		;;
	09)
		local MESEXT=Setembro
		;;
	10)
		local MESEXT=Outubro
		;;
	11)
		local MESEXT=Novembro
		;;
	12)
		local MESEXT=Dezembro
		;;
	esac
echo "$DIA de $MESEXT de $ano"

}

############################
# Inicio do Fluxo do Script
############################

case $1 in
	"-f")
		RetornaFormato $2
		echo $?
		;;
	"-i")
		InverteDiaMes $2
		;;
	"-b")
		IncluiBarra $2
		;;
	"-e")
		DataExtenso $2
		;;
	"--help")
		echo "Uso $0 OPCAO DATA"
		echo
		echo "Data nos formatos DDMMYYYY ou MMDDYYYY, com ou sem /"
		echo
		echo "Opções:"
		echo "-f = Retorna 0 para BR, 1 para US e 2 quando impossível determinar, 3 inválido"
		echo "-i = Inverte formato BR para US e US para BR. Inclui as Barras"
		echo "-b = Inclui Barras de Data. Exemplo: de 13081981 para 13/08/1981"
		echo "-e = Exibe a data em formato extenso. Exemplo de 13081981 para 13 de Agosto de 1981 "
		;;
	*)
		echo "Uso Indevido. Utilize $0 --help"
		;;
esac




