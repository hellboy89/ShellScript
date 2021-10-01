#!/bin/bash

<<comment

Abaixo é a forma de declaração de uma função, que é parecida com as classes
utilizadas em outras linguagens de programação.

Existem dois tipos de variáveis que podem ser utilizadas, "locais" e "globais", se caso não for definido nada, será utilizado por padrão as "globais",
se caso quiser utilizar as "locais" bastar preencher "local" antes da variável.

comment

maiuscula () {
	VAR1=$(echo $1 | tr a-z A-Z)
}

maiuscula $1
echo $VAR1
