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

function idades_03() {
    echo "Dados da Primeira Pessoa: "

    read -p "Nome: " nome1
    read -p "Idade: " idade1

    echo "Dados da Segunda Pessoa: "

    read -p "Nome: " nome2
    read -p "Nome: " idade2

    media=`expr $((($idade1 + $idade2) / 2))`

    echo "A idade média de $nome1 e $nome2 é de $media."
}

function soma_03() {
    read -p "digite o valor de X: " valX
    read -p "digite o valor de Y: " valY

    soma=$(($valX + $valY))

    echo "soma = $soma"
}

function troco_03() {
    read -p "preço unitário do produto: " precoUnit
    read -p "quantidade comprada: " quantComp
    read -p "dinheiro recebido: " dinRec

    calc=`expr $precoUnit \* $quantComp`
    troco=`expr $dinRec - $calc`

    echo "troco = $troco"
}  

function circulo_03() {
    read -p "digite o valor do raio do circulo: " raio

    area=$(bc <<< "3.14159 * ($raio^2)")

    echo "Area = $area"
}

# Depois do exercício acima comecei a utilizar o BC (basic calculator), instalei ele pelo comando abaixo.
# apt install bc -y

function calculoPotenciacao() {
    valor1=120

    calc=$(($valor1 ** 2))
    calc2=$(($calc * 1,3))

    echo "valor = $calc2"
}

function testeBcPow() {
    valor1=10

    calc=$(bc <<< "$valor1^2")

    echo "valor = $calc"
}

function pagamento_03() {
    read -p "nome: " nome
    read -p "valor por hora: " valHora
    read -p "horas trabalhadas: " horasTrab

    calc=$(bc <<< "$valHora * $horasTrab")

    echo "O pagamento para $nome deve ser $calc"
}

function consumo_03() {
    read -p "distancia percorrida: " distPer
    read -p "combustivel gasto: " combGast
    
    calc=$(bc <<< "$distPer / $combGast")

    echo "consumo medio = $calc"
}

function medidas_03() {
    read -p "digite a medida A: " medA
    read -p "digite a medida B: " medB
    read -p "digite a medida C: " medC

    # o parâmetro scale serve para definir a quantidade de casas decimais depois da virtula.
    areaQuad=$(bc <<< "scale=4; $medA^2")
    areaTriang=$(bc <<< "scale=4; ($medA * $medB) / 2")
    areaTrap=$(bc <<< "scale=4; (($medA + $medB) * $medC) / 2")

    echo "area do quadrado = $areaQuad"
    echo "area do triangulo = $areaTriang"
    echo "area do trapezio = $areaTrap"
}

function duracao_03() {
    read -p "digite a duração em segundos: " duracao

    # Abaixo há uma nova forma que achei mais limpa de calcular, colocando no echo, e mandando a saida para o BC.
    horas=$(echo "$duracao / 3600" | bc)
    resto=`expr $duracao '%' 3600`

    minutos=$(echo "$resto / 60" | bc)
    segundos=`expr $resto '%' 60`

    echo "$horas:$minutos:$segundos"
}

function notas_04() {
    read -p "Digite a primeira nota: " nota1
    read -p "Digite a segunda nota: " nota2

    media=$(echo "scale=1; $nota1 + $nota2" | bc)

    echo "media = $media"

    if [[ $media > 60.0 ]]
    then
        echo "aprovado"
    else
        echo "reprovado"
    fi
}

function baskara_04() {
    read -p "coeficiente A: " valA
    read -p "coeficiente B: " valB
    read -p "coeficiente C: " valC

    delta=$(echo "($valB * $valB) - (4 * $valA * $valC)" | bc)
    echo "valor de delta: $delta"

    if [[ $delta < 0 ]]
    then
        echo "esta equação não possui raízes reais"
    else
        x1=$(echo "scale=4; ((-$valB) + sqrt($delta)) / (2 * $valA)" | bc)
        x2=$(echo "scale=4; ((-$valB) - sqrt($delta)) / (2 * $valA)" | bc)

        echo "x1 = $x1"
        echo "x2 = $x2"
    fi
}

function trocaValores() {
    val1=1

    troca=$val1

    if [[ $val1 -eq 1 ]]
    then
        echo "entrou aqui"
        troca=10
    fi

    echo "troca = $troca"
}

function menorDeTres_04() {
    read -p "Digite o primeiro valor: " val1
    read -p "Digite o segundo valor: " val2
    read -p "Digite o terceiro valor: " val3

    menor=$val1

    if [[ $val2 -lt $menor ]]
    then
        menor=$val2
    elif [[ $val3 -lt $menor ]]
    then
        menor=$val3
    else
        menor=$val1
    fi

    echo "Menor = $menor"
}

function operadora_04() {
    read -p "Digite a quantidade de minutos: " quantMin

    if [[ $quantMin -le 100 ]]
    then
        echo "Valor a pagar: R$ 50.00"
    else
        calc=$(echo "scale=2; (($quantMin - 100) * 2) + 50" | bc)
        echo "Valor a pagar: R$ $calc"
    fi
}

function trocoVerificado_04() {
    read -p "Preco unitário do produto: " precoUnit
    read -p "Quantidade comprada: " quantComp
    read -p "Dinheiro recebido: " dinRec

    total=$(echo "$precoUnit * $quantComp" | bc)

    if [[ $total -gt $dinRec ]]
    then
        calc=$(echo "$total - $dinRec" | bc)
    else
        calc=$(echo "$dinRec - $total" | bc)
    fi

    echo "troco = $calc"
}

function glicose_04() {
    # PAREI AQUI..
}

glicose_04