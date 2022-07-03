#!/bin/bash

clear

function testeVariavel() {
    teste=1
    teste2=2

    soma=$(($teste1+$teste2))

    echo "valor = $teste"
    echo "soma = $soma"

}

function terreno_03() {
    read -p "digite a largura do terreno: " largTerreno
    read -p "digite o comprimento do terreno: " compTerreno
    read -p "digite o valor do metro quadrado: " metroQuad

    area=`expr $largTerreno \* $compTerreno`
    preco=`expr $area \* $metroQuad`

    echo "area do terreno = $area"
    echo "preco do terreno = $preco"

}

function testeEntradaValor() {
    read -p "digite um valor1: " valor1
    read -p "digite um valor2: " valor2

    soma=`expr $valor1 \* $valor2`

    echo "valor1 digitado foi: $valor1"
    echo "valor2 digitado foi: $valor2"
    echo "soma dos valores e: $soma"
}

function retangulo_03() {
    read -p "base do retangulo: " baseRet
    read -p "altura do retangulo: " altRet

    area=`expr $baseRet \* $altRet`
    perimetro=`expr 2 \* $(($baseRet + $altRet))`
    diagonal=`expr $((($baseRet ** 2) + ($altRet ** 2)))`
    
    # CALCULO RAIZ QUADRADA (SQRT)
    raizQuad=$(echo "$diagonal" | awk '{print sqrt($1)}')

    echo "area = $area"
    echo "perimetro = $perimetro"
    echo "diagonal = $raizQuad"
}

function testeRaizQuadrada() {
    read -p "Enter a number: " number
    square_root=$(echo "$number" | awk '{print sqrt($1)}')
    echo "Square Root of $number is $square_root"
}

retangulo_03
