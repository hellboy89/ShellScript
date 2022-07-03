#!/bin/bash
clear

funcao1() {
	echo 'ola mundo'
}

funcao2() {
	echo 'ola mundo da segunda funcao'
}

funcao3() {
	echo 'vamo q vamo'
}

function teste() {
	echo 'digitando funcao'
}

function saida() {
	echo teste
}

#funcao1
#funcao2
#funcao3
#teste
#saida(10)

function _03_terreno() {
	read -p 'digite a largura do terreno: ' largTerreno
	read -p 'digite o cumprimento do terreno: ' compTerreno
	read -p 'digite o valor do metro quadrado: ' valMetQuad
	#soma=$((largTerreno + compTerreno + valMetQuad))
	areaTerreno=$((largTerreno * compTerreno))
	precoTerreno=$((areaTerreno * valMetQuad))
	
	echo 'Area do terreno = '$areaTerreno
	echo 'Preco do terreno = '$precoTerreno
}

#_03_terreno

function decimal() {
	valor1=100,58
	valor2=2,59
	divisao=$((valor1/valor2))
	printf '%.3f \n' $divisao
	echo $divisao
	echo 'hehe'

}

#decimal

function _03_retangulo() {
	baseRet=4,12
	altRet=5,33
	teste=$((baseRet * altRet))
	areaRet=$((baseRet * altRet))
	perimetro=$((2 * (baseRet + altRet)))
	diagonal=$((baseRet * baseRet + (altRet + altRet)))

	echo 'Area = '$areaRet
	echo 'Perimetro = '$perimetro
	echo 'Diagonal = '$diagonal
	echo 'teste = '$teste
	echo $teste | bc -l
}

#_03_retangulo

function decimais01() {
	#printf %.2f $(echo "$float/1.18" | bc -l) > /dev/null
	echo 'ola'
	echo "scale=2; ${3}" | bc
	echo 'ola2'
	a=1.25
	b=3.49
	sum=$(echo "scale=2; "$a"+"$b | bc -l)

}

#decimais01

function testeVariavel() {
	echo "ola $nome"
}

function pegarIP() {
	ip a
}

pegarIP



