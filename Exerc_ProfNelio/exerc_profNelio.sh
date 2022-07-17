#!/bin/bash

clear

function testeVariavel() {
    teste=1
    teste2=2

    soma=$(($teste1 + $teste2))

    echo "valor = $teste"
    echo "soma = $soma"

}

function terreno_03() {
    read -p "digite a largura do terreno: " largTerreno
    read -p "digite o comprimento do terreno: " compTerreno
    read -p "digite o valor do metro quadrado: " metroQuad

    area=$(expr $largTerreno \* $compTerreno)
    preco=$(expr $area \* $metroQuad)

    echo "area do terreno = $area"
    echo "preco do terreno = $preco"

}

function testeEntradaValor() {
    read -p "digite um valor1: " valor1
    read -p "digite um valor2: " valor2

    soma=$(expr $valor1 \* $valor2)

    echo "valor1 digitado foi: $valor1"
    echo "valor2 digitado foi: $valor2"
    echo "soma dos valores e: $soma"
}

function retangulo_03() {
    read -p "base do retangulo: " baseRet
    read -p "altura do retangulo: " altRet

    area=$(expr $baseRet \* $altRet)
    perimetro=$(expr 2 \* $(($baseRet + $altRet)))
    diagonal=$(expr $((($baseRet ** 2) + ($altRet ** 2))))

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

    media=$(expr $((($idade1 + $idade2) / 2)))

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

    calc=$(expr $precoUnit \* $quantComp)
    troco=$(expr $dinRec - $calc)

    echo "troco = $troco"
}

function circulo_03() {
    read -p "digite o valor do raio do circulo: " raio

    area=$(bc <<<"3.14159 * ($raio^2)")

    echo "Area = $area"
}

# Depois do exercício acima comecei a utilizar o BC (basic calculator), instalei ele pelo comando abaixo.
# apt install bc -y

function calculoPotenciacao() {
    valor1=120

    calc=$(($valor1 ** 2))
    calc2=$(($calc * 1, 3))

    echo "valor = $calc2"
}

function testeBcPow() {
    valor1=10

    calc=$(bc <<<"$valor1^2")

    echo "valor = $calc"
}

function pagamento_03() {
    read -p "nome: " nome
    read -p "valor por hora: " valHora
    read -p "horas trabalhadas: " horasTrab

    calc=$(bc <<<"$valHora * $horasTrab")

    echo "O pagamento para $nome deve ser $calc"
}

function consumo_03() {
    read -p "distancia percorrida: " distPer
    read -p "combustivel gasto: " combGast

    calc=$(bc <<<"$distPer / $combGast")

    echo "consumo medio = $calc"
}

function medidas_03() {
    read -p "digite a medida A: " medA
    read -p "digite a medida B: " medB
    read -p "digite a medida C: " medC

    # o parâmetro scale serve para definir a quantidade de casas decimais depois da virtula.
    areaQuad=$(bc <<<"scale=4; $medA^2")
    areaTriang=$(bc <<<"scale=4; ($medA * $medB) / 2")
    areaTrap=$(bc <<<"scale=4; (($medA + $medB) * $medC) / 2")

    echo "area do quadrado = $areaQuad"
    echo "area do triangulo = $areaTriang"
    echo "area do trapezio = $areaTrap"
}

function duracao_03() {
    read -p "digite a duração em segundos: " duracao

    # Abaixo há uma nova forma que achei mais limpa de calcular, colocando no echo, e mandando a saida para o BC.
    horas=$(echo "$duracao / 3600" | bc)
    resto=$(expr $duracao '%' 3600)

    minutos=$(echo "$resto / 60" | bc)
    segundos=$(expr $resto '%' 60)

    echo "$horas:$minutos:$segundos"
}

function notas_04() {
    read -p "Digite a primeira nota: " nota1
    read -p "Digite a segunda nota: " nota2

    media=$(echo "scale=1; $nota1 + $nota2" | bc)

    echo "media = $media"

    if [[ $media > 60.0 ]]; then
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

    if [[ $delta < 0 ]]; then
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

    if [[ $val1 -eq 1 ]]; then
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

    if [[ $val2 -lt $menor ]]; then
        menor=$val2
    elif [[ $val3 -lt $menor ]]; then
        menor=$val3
    else
        menor=$val1
    fi

    echo "Menor = $menor"
}

function operadora_04() {
    read -p "Digite a quantidade de minutos: " quantMin

    if [[ $quantMin -le 100 ]]; then
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

    if [[ $total -gt $dinRec ]]; then
        calc=$(echo "$total - $dinRec" | bc)
    else
        calc=$(echo "$dinRec - $total" | bc)
    fi

    echo "troco = $calc"
}

function glicose_04() {
    read -p "Digite a medida da glicose: " mediaGlic

    if [[ $mediaGlic < 100 ]]; then
        echo "classificacao = normal"
    elif [[ $mediaGlic -gt 100 ]] && [[ $mediaGlic -le 140 ]]; then
        echo "classificacao = elevado"
    else
        echo "classificacao = diabetes"
    fi

}

function dardo_04() {
    echo "Digite as tres distancias: "
    read -p "" dist1
    read -p "" dist2
    read -p "" dist3

    maior=$dist1

    if [[ $maior -lt $dist2 ]]; then
        maior=$dist2
    fi

    if [[ $maior -lt $dist3 ]]; then
        maior=$dist3
    fi

    echo "Maior Distancia = $maior"

}

function temperatura_04() {
    read -p "vc vai digitar a temperatura em qual escala (c/f): " escEscala

    if [[ $escEscala = "f" ]]; then
        read -p "Digite a temperatura em Fahrenheit: " tempFar
        calc=$(echo "scale=2; (($tempFar - 32) / 1.8)" | bc)
        echo "Temperatura equivalente em Celsius: $calc"
    else
        read -p "Digite a temperatura em Celcius: " tempCel
        calc=$(echo "scale=2; ($tempCel * 1.8) + 32" | bc)
        echo "Temperatura equivalente em Farenheit: $calc"
    fi
}

function lanchonete_04() {
    read -p "Codigo do produto comprado: " codProd
    read -p "Quantidade comprada: " quantComp

    if [[ $codProd -eq 1 ]]; then
        calc=$(echo "scale=2; $quantComp * 5.00" | bc)
        echo "valor a pagar: R$ $calc"
    elif [[ $codProd -eq 2 ]]; then
        calc=$(echo "scale=2; $quantComp * 3.50" | bc)
        echo "valor a pagar: R$ $calc"
    elif [[ $codProd -eq 3 ]]; then
        calc=$(echo "scale=2; $quantComp * 4.80" | bc)
        echo "valor a pagar: R$ $calc"
    elif [[ $codProd -eq 4 ]]; then
        calc=$(echo "scale=2; $quantComp * 8.90" | bc)
        echo "valor a pagar: R$ $calc"
    elif [[ $codProd -eq 5 ]]; then
        calc=$(echo "scale=2; $quantComp * 7.32" | bc)
        echo "valor a pagar: R$ $calc"
    else
        echo "valor incorreto"
    fi
}

function multiplos_04() {
    echo "Digite dois valores inteiros: "
    read -p "" num1
    read -p "" num2

    if [[ $(expr $num1 % $num2) = 0 ]] || [[ $(expr $num2 % $num1) = 0 ]]; then
        echo "sao MULTIPLOS"
    else
        echo "NAO sao MULTIPLOS"
    fi
}

function aumento_04() {
    read -p "Digite o salario da pessoa: " salario

    if [[ $salario -le 1000 ]]; then
        calcNovoSal=$(echo "scale=2; ($salario * 0.20) + $salario" | bc)
        calcAumento=$(echo "scale=2; ($salario * 0.20)" | bc)

        echo "novo salario = $calcNovoSal"
        echo "aumento = $calcAumento"
        echo "porcentatem = 20%"
    elif [[ $salario -gt 1000 ]] && [[ $salario -le 3000 ]]; then
        calcNovoSal=$(echo "scale=2; ($salario * 0.15) + $salario" | bc)
        calcAumento=$(echo "scale=2; ($salario * 0.15)" | bc)

        echo "novo salario = $calcNovoSal"
        echo "aumento = $calcAumento"
        echo "porcentatem = 15%"
    elif [[ $salario -gt 3000 ]] && [[ $salario -le 8000 ]]; then
        calcNovoSal=$(echo "scale=2; ($salario * 0.10) + $salario" | bc)
        calcAumento=$(echo "scale=2; ($salario * 0.10)" | bc)

        echo "novo salario = $calcNovoSal"
        echo "aumento = $calcAumento"
        echo "porcentatem = 10%"
    elif [[ $salario -gt 8000 ]]; then
        calcNovoSal=$(echo "scale=2; ($salario * 0.05) + $salario" | bc)
        calcAumento=$(echo "scale=2; ($salario * 0.05)" | bc)

        echo "novo salario = $calcNovoSal"
        echo "aumento = $calcAumento"
        echo "porcentatem = 5%"
    else
        echo "valor incorreto"
    fi

}

function tempoDeJogo_04() {
    read -p "Hora Inicial: " horaInicial
    read -p "Hora Final: " horaFinal

    if [[ $horaInicial -lt $horaFinal ]]; then
        calc=$(echo "$horaFinal - $horaInicial" | bc)
    else
        calc=$(echo "24 - ($horaInicial - $horaFinal)" | bc)
    fi

    echo "O jogo durou $calc horas."

}

function coordenadas_04() {
    read -p "valor de X: " valX
    read -p "valor de Y: " valY

    if [[ $valX -gt 0 ]] && [[ $valY -lt 0 ]]; then
        echo "Q4"
    elif [[ $valX -gt 0 ]] && [[ $valY -gt 0 ]]; then
        echo "Q1"
    elif [[ $valX -eq 0 ]] && [[ $valY -eq 0 ]]; then
        echo "Origem"
    elif [[ $valX -gt 0 ]] && [[ $valY -eq 0 ]]; then
        echo "Eixo X"
    else
        echo "valor incorreto"
    fi
}

function crescente_04() {

    while :; do
        echo "Digite dois numeros: "
        read -p "" val1
        read -p "" val2

        if [[ $val1 -gt $val2 ]]; then
            echo "crescente"
        elif [[ $val1 -eq $val2 ]]; then
            break
        else
            echo "decrescente"
        fi

    done

}

function testesWhile() {
    read -p "digite um valor para teste: " valTeste

    while :; do
        read -p "digite 0 para parar: " val

        if [[ $val -eq 0 ]]; then
            echo "PARADO!"
            break
        fi

        echo "valor digitado: $val"
    done
}

function mediaIdades_04() {
    echo "digite as idades: "
    soma=0
    contador=0

    while :; do
        read -p "" val

        if [[ $contador -eq 0 ]] && [[ $val -lt 0 ]]; then
            echo "IMPOSSIVEL CALCULAR"
            break
        fi

        if [[ $val -gt 0 ]]; then
            soma=$(echo "$val + $soma" | bc)
            contador=$(echo "$contador + 1" | bc)
        else
            media=$(echo "scale=2; $soma / $contador" | bc)
            echo "Media = $media"
            break
        fi

    done
}

function senhaFixa_04() {
    read -p "Digite a senha: " senha

    while :; do

        if [[ $senha -eq 2002 ]]; then
            echo "Acesso Permitido!"
            break
        else
            read -p "senha invalida, tente novamente: " senha
        fi
    done

}

function quadrante_04() {
    while :; do
        echo "Digite os valores das coordenadas X e Y: "

        read -p "" valX
        read -p "" valY

        if [[ $valX -gt 0 ]] && [[ $valY -gt 0 ]]; then
            echo "Quadrante Q1"
        elif [[ $valX -gt 0 ]] && [[ $valY -lt 0 ]]; then
            echo "Quadrante Q4"
        elif [[ $valX -lt 0 ]] && [[ $valY -gt 0 ]]; then
            echo "Quadrante Q2"
        elif [[ $valX -lt 0 ]] && [[ $valY -lt 0 ]]; then
            echo "Quadrante Q3"
        elif [[ $valX -eq 0 ]] || [[ $valY -eq 0 ]]; then
            break
        else
            echo "valor incorreto!"
            break
        fi
    done

}

function validacaoDeNota_04() {
    # ============== NOTA1
    read -p "Digite a primeira nota: " nota1
    somaNotas=0

    while :; do
        if [[ $nota1 -gt 10 ]] || [[ $nota1 -lt 0 ]]; then
            read -p "Valor incorreto! Tente novamente: " nota1
        else
            somaNotas=$(echo "$somaNotas + $nota1" | bc)
            break
        fi
    done

    # ============== NOTA2
    read -p "Digite a segunda nota: " nota2

    while :; do
        if [[ $nota2 -gt 10 ]] || [[ $nota2 -lt 0 ]]; then
            read -p "Valor incorreto! Tente novamente: " nota2
        else
            somaNotas=$(echo "$somaNotas + $nota2" | bc)
            break
        fi
    done

    calc=$(echo "scale=2; $somaNotas / 2" | bc)

    echo "Media = $calc"

}

function testeContadores() {
    contador=0
    soma=0

    while :; do
        read -p "digite um valor para a soma: " val

        soma=$(echo "$soma + $val" | bc)

        echo "a soma esta em: $soma"

        if [[ $val -eq 0 ]]; then
            break
        fi
    done

    while :; do
        read -p "digite um segundo valor para a soma: " val2

        soma=$(echo "$soma + $val2" | bc)

        echo "a soma esta em: $soma"

        if [[ $val2 -eq 0 ]]; then
            break
        fi
    done
}

function combustivel_04() {
    alcool=0
    gasolina=0
    diesel=0

    while :; do
        read -p "informe um codigo (1, 2, 3) ou 4 para parar: " valor

        if [[ $valor -eq 1 ]]; then
            alcool=$(echo "$alcool + 1" | bc)
        elif [[ $valor -eq 2 ]]; then
            gasolina=$(echo "$gasolina + 1" | bc)
        elif [[ $valor -eq 3 ]]; then
            diesel=$(echo "$diesel + 1" | bc)
        elif [[ $valor -eq 4 ]]; then
            break
        else
            $teste
        fi
    done

    echo "Muito Obrigado"
    echo "Alcool: $alcool"
    echo "Gasolina: $gasolina"
    echo "Diesel: $diesel"
}

function paresConsecutivos_04() {
    read -p "digite um numero inteiro: " num

    while [ $num -ne 0 ]; do
        if [[ $(expr $num % 2) != 0 ]]; then
            num=$(echo "$num + 1" | bc)
        fi

        soma=$(echo "(5 * $num) + 20" | bc)

        echo "soma = $soma"

        read -p "digite um numero inteiro: " num

    done
}

function testeFor1() {
    for i in {1..10}; do
        echo "contador: $i"
    done
}

function tabuada_04() {
    read -p "deseja a tabuada de qual valor: " num

    for i in {1..10}; do
        calc=$(echo "$num * $i" | bc)
        echo "$num x $i = $calc"
    done
}

function somaImpares_04() {
    echo "digite dois numeros: "
    read -p "" val1
    read -p "" val2

    if [[ $val1 -gt $val2 ]]; then
        troca=$val1
        val1=$val2
        val2=$troca
    fi

    soma=0

    calc=$(echo "$val1 + 1" | bc)
    calc2=$(echo "$val2 - 1" | bc)
    for i in $(seq $calc $calc2); do
        if [[ $(expr $i % 2) != 0 ]]; then
            soma=$(echo "$soma + $i" | bc)
        fi
    done

    echo "soma dos impares = $soma"

}

function testeFor2() {

    val=$(echo "1 + 1" | bc)

    for i in $(seq $val 20); do
        echo "contador $i"
    done

}

function sequenciaImpares_04() {
    read -p "Digite o valor de X: " valX

    for i in $(seq 1 $valX); do
        if [[ $(expr $i % 2) != 0 ]]; then
            echo "$i"
        fi
    done
}

function dentroFora() {
    read -p "Quantos numeros vc vai digitar? " quantNum
    somaInterval=0
    somaForaInt=0

    for i in $(seq 1 $quantNum); do
        read -p "Digite um numero: " num

        if [[ $num -ge 10 ]] && [[ $num -le 20 ]]; then
            somaInterval=$(echo "$somaInterval + 1" | bc)
        else
            somaForaInt=$(echo "$somaForaInt + 1" | bc)
        fi
    done

    echo "$somaInterval Dentro"
    echo "$somaForaInt Fora"
}

function parImpar() {
    read -p "Quantos numeros vc vai digitar? " quantNum

    for i in $(seq 1 $quantNum); do
        read -p "Digite um numero: " num

        if [[ $num -lt 0 ]] && [[ $(expr $num % 2) -ne 0 ]]; then
            echo "impar negativo"
        elif [[ $num -eq 0 ]]; then
            echo "nulo"
        elif [[ $num -gt 0 ]] && [[ $(expr $num % 2) -ne 0 ]]; then
            echo "impar positivo"
        elif [[ $num -lt 0 ]] && [[ $(expr $num % 2) -eq 0 ]]; then
            echo "par negativo"
        else
            echo "incorreto, tente novamente"
        fi
    done
}

function mediaPonderada_04() {
    read -p "quantos casos vc vai digitar? " quantCasos

    for i in $(seq 1 $quantCasos); do
        echo "Digite $i numeros: "

        read -p "" num1
        read -p "" num2
        read -p "" num3

        media=$(echo "scale=1; (($num1 * 2) + ($num2 * 3) + ($num3 * 5)) / 10" | bc)

        echo "Media = $media"
    done
}

function divisao_04() {
    read -p "quantos casos vc vai digitar? " quantCasos

    for i in $(seq 1 $quantCasos); do
        read -p "entre com o numerador: " numerador
        read -p "entre com o denominador: " denominador

        if [[ $denominador -ne 0 ]]; then
            calc=$(echo "scale=2; $numerador / $denominador" | bc)
            echo "Divisao = $calc"
        else
            echo "divisao impossivel"
        fi

    done
}

function fatorial_04() {
    read -p "digite o valor de N: " num

    fatorial=1

    for ((i = $num; i > 0; i--)); do
        fatorial=$(echo "$fatorial * $i" | bc)
    done

    echo "Fatorial = $fatorial"
}

function forContagemInvertida() {

    for ((i = 20; i > 0; i--)); do
        echo "contador: $i"
    done
}

function experiencias_04() {
    read -p "Quantos casos de teste serao digitados? " quantCasos
    contCoelhos=0
    contRatos=0
    contSapos=0
    contTotal=0

    for ((i = 0 + 1; i <= $quantCasos; i++)); do
        read -p "quantidade de cobaias: " quantCob
        read -p "tipo de cobaia: " tipoCob

        if [[ $tipoCob = "c" ]]; then
            contCoelhos=$(echo "$contCoelhos + $quantCob" | bc)
            contTotal=$(echo "$contTotal + $quantCob" | bc)
        elif [[ $tipoCob = "s" ]]; then
            contSapos=$(echo "$contSapos + $quantCob" | bc)
            contTotal=$(echo "$contTotal + $quantCob" | bc)
        elif [[ $tipoCob = "r" ]]; then
            contRatos=$(echo "$contRatos + $quantCob" | bc)
            contTotal=$(echo "$contTotal + $quantCob" | bc)
        else
            echo "incorreto, tente novamente."
        fi
    done

    porcCoelhos=$(echo "scale=2; ($contCoelhos * 100) / $contTotal" | bc)
    porcRatos=$(echo "scale=2; ($contRatos * 100) / $contTotal" | bc)
    porcSapos=$(echo "scale=2; ($contSapos * 100) / $contTotal" | bc)

    echo "Relatorio Final: "
    echo "Total: $contTotal"
    echo "Total de coelhos: $contCoelhos"
    echo "Total de ratos: $contRatos"
    echo "Total de sapos: $contSapos"
    echo "Percentual de coelhos: $porcCoelhos"
    echo "Percentual de ratos: $porcRatos"
    echo "Percentual de sapos: $porcSapos"

}

function testesArray1() {
    meuArray=()

    for i in $(seq 1 10); do
        meuArray+=($i)
    done

    for i in ${meuArray[*]}; do
        echo "valor = $i"
    done

}

function negativos_05() {
    read -p "Quantos numeros vc vai digitar? " quantNum

    valores=()

    for ((i = 1; i <= $quantNum; i++)); do
        read -p "digite um numero: " val
        valores[$i]+=$val
    done

    echo "numeros negativos: "
    for i in ${valores[*]}; do
        if [[ $i -lt 0 ]]; then
            echo "$i"
        fi
    done
}

function somaVetor_05() {
    read -p "Quantos numeros vc vai digitar? " quantNum
    valores=()
    somaValores=0
    contNum=0

    for ((i = 0; i <= $quantNum - 1; i++)); do
        read -p "Digite um numero: " val
        valores[$i]+=$val
        somaValores=$(echo "$somaValores + $val" | bc)
        contNum=$(echo "$contNum + 1" | bc)
    done

    calcMedia=$(echo "scale=2; $somaValores / $contNum" | bc)

    echo "valores = ${valores[*]}"
    echo "soma = $somaValores"
    echo "media = $calcMedia"

}

function calcNumDecimal() {
    val1=1.82
    val2=1.82
    val3=1.40

    soma=$(echo "scale=2; ($val1 + $val2 + $val3) / 2" | bc)

    echo "resultado = $soma"

}

function convertTypeString() {
    read -p "digite o valor1: " val1
    read -p "digite o valor2: " val2

    soma=$(echo "$val1 + $val2" | bc)
    somaExpr=$(expr $val1 + $val2)

    echo "soma com bc: $soma"
    echo "soma com expr: $somaExpr"
}

function testesIfDecimais() {
    valor1=1.52

    if [[ $valor1 == 1.52 ]]; then
        echo "caiu no valor CORRETO"
    else
        echo "valor INCORRETO"
    fi
}

function alturas_05() {
    read -p "Quantas pessoas serao digitadas? " quantPessoas
    nomes=()
    idades=()
    alturas=()
    somaAlturas=0
    contMenos16=0

    for ((i = 0; i < $quantPessoas; i++)); do
        numPessoa=$(expr $i + 1)
        echo "Dados da $numPessoa: "

        read -p "Nome: " nome
        nomes[$i]+=$nome
        read -p "Idade: " idade
        idades[$i]+=$idade
        read -p "Altura: " altura
        alturas[$i]+=$altura
        somaAlturas=$(echo "$somaAlturas + $altura" | bc)

        if [[ $idade -lt 16 ]]; then
            contMenos16=$(echo "$contMenos16 + 1" | bc)
        fi
    done

    calcAltMedia=$(echo "scale=2; $somaAlturas / $quantPessoas" | bc)
    calcMenos16=$(echo "scale=2; ($contMenos16 * 100) / $quantPessoas" | bc)

    echo
    echo "quantidade de pessoas: $quantPessoas"
    echo "soma alturas = $somaAlturas"
    echo "nomes: ${nomes[*]}"
    echo "idades: ${idades[*]}"
    echo "alturas: ${alturas[*]}"
    echo
    echo "Altura media: $calcAltMedia"
    echo "Pessoas com menos de 16 anos: $calcMenos16"
    for ((i = 0; i < $quantPessoas; i++)); do
        if [[ ${idades[$i]} -lt 16 ]]; then
            echo "${nomes[$i]}"
        fi
    done
    echo
    echo
}

function numerosPares_05() {
    read -p "Quantos numeros vc vai digitar? " quantPessoas
    numeros=()
    contPares=0

    for ((i = 0; i < $quantPessoas; i++)); do
        read -p "Digite um numero: " num
        numeros[$i]+=$num
    done

    echo "Numeros Pares: "
    for ((i = 0; i < $quantPessoas; i++)); do
        if [[ $(expr ${numeros[$i]} % 2) -eq 0 ]]; then
            echo "${numeros[$i]}"
            contPares=$(echo "$contPares + 1" | bc)
        fi
    done

    echo
    echo "Quantidade de pares: $contPares"
    echo
}

function maiorPosicao_05() {
    read -p "Quantos numeros vc vai digitar? " quantNum
    numeros=()

    for ((i = 0; i < $quantNum; i++)); do
        read -p "Digite um numero: " num
        numeros[$i]+=$num
    done

    maior=${numeros[0]}

    for ((i = 0; i < $quantNum; i++)); do
        if [[ $maior -lt ${numeros[$i]} ]]; then
            maior=${numeros[$i]}
            posicao=$i
        fi
    done

    echo
    echo "maior valor = $maior"
    echo "posicao do maior valor = $posicao"
    echo
}

function testeTimer() {
    contador=0
    while :; do
        contador=$(echo "$contador + 1" | bc)
        echo "contador: $contador"

        if [[ $contador -eq 30 ]]; then
            break
        fi

        sleep 0.5
    done
}

function somaVetores_05() {
    read -p "Quantos valores vai ter cada vetor? " quantVal
    vetA=()
    vetB=()

    echo "Digite os valores do vetor A: "
    for ((i = 0; i < $quantVal; i++)); do
        read -p "" val1
        vetA[$i]+=$val1
    done

    echo "Digite os valores do vetor B: "
    for ((i = 0; i < $quantVal; i++)); do
        read -p "" val2
        vetB[$i]+=$val2
    done

    echo "VETOR RESULTANTE: "
    for ((i = 0; i < $quantVal; i++)); do
        soma=$(echo "${vetA[$i]} + ${vetB[$i]}" | bc)
        echo "$soma"
    done
}

function abaixoDaMedia_05() {
    read -p "Quantos elementos vai ter o vetor? " quantElementos
    elementos=()
    somaElementos=0

    for ((i = 0; i < $quantElementos; i++)); do
        read -p "Digite um numero: " val
        elementos[$i]+=$val
        somaElementos=$(echo "$somaElementos + $val" | bc)
    done

    mediaElementos=$(echo "$somaElementos / $quantElementos" | bc)

    echo
    echo "valores vetor = ${elementos[*]}"
    echo "Media do vetor = $mediaElementos"
    echo "Elementos abaixo da Media: "

    for ((i = 0; i < $quantElementos; i++)); do
        if [[ ${elementos[$i]} -lt $mediaElementos ]]; then
            echo "${elementos[$i]}"
        fi
    done
}

function mediaPares_05() {
    read -p "Quantos elementos vai ter o vetor? " quantElementos
    elementos=()
    somaPares=0
    contPares=0

    for ((i = 0; i < $quantElementos; i++)); do
        read -p "Digite um numero: " num
        elementos[$i]+=$num

        if [[ $(expr $num % 2) -eq 0 ]]; then
            somaPares=$(echo "$somaPares + $num" | bc)
            contPares=$(echo "$contPares + 1" | bc)
        fi
    done

    if [[ $contPares -gt 0 ]]; then
        calcMedia=$(echo "scale=1; $somaPares / $contPares" | bc)
        echo "Media dos pares = $calcMedia"
    else
        echo "Nenhum Numero Par"
    fi
}

function maisVelhos_05() {
    read -p "Quantas pessoas vc vai digitar? " quantPessoas
    nomes=()
    idades=()

    for ((i = 0; i < $quantPessoas; i++)); do
        contP=$(echo "$i + 1" | bc)
        echo "Dados da $contP pessoa: "
        read -p "Nome: " nome
        nomes[$i]+=$nome
        read -p "Idade: " idade
        idades[$i]+=$idade
    done

    maior=${idades[0]}

    for ((i = 0; i < $quantPessoas; i++)); do
        if [[ maior -lt ${idades[$i]} ]]; then
            maior=${idades[$i]}
            posicao=$i
        fi
    done

    echo "Pessoa mais velha = ${nomes[$posicao]}"
}

function aprovados_05() {
    read -p "Quantos alunos serao digitados? " quantAlunos
    nomes=()
    notas1=()
    notas2=()
    mediaNotas=()

    for ((i = 0; i < $quantAlunos; i++)); do
        somaNum=$(echo "$i + 1" | bc)
        echo "Digite nome, primeira e segunda nota do $somaNum aluno: "
        read -p "" nome
        nomes[$i]+=$nome
        read -p "" nota1
        notas1[$i]+=$nota1
        read -p "" nota2
        notas2[$i]+=$nota2
        mediaNotas[$i]+=$(echo "($nota1 + $nota2) / 2" | bc)

    done

    echo "Alunos aprovados: "

    for ((i = 0; i < $quantAlunos; i++)); do
        if [[ ${mediaNotas[$i]} -ge 6 ]]; then
            posicao=$i
            echo "${nomes[$posicao]}"
        fi
    done

}

function valoresLista() {
	
	valores=('10' '20' '30' '40' '50')

	for ((i = 0; i < 4; i++)); do
		echo "${valores[$i]}"
	done

}

function dadosPessoas_05() {
	read -p "Quantas pessoas serao digitadas? " quantPessoas
	alturas=()
	generos=()

	for ((i = 0; i < $quantPessoas; i++)); do
		contarI=$(echo "$i + 1" | bc)
		read -p "altura da $contarI pessoa: " altura
		alturas[$i]+=$altura
		read -p "genero da $contarI pessoa: " genero
		generos[$i]+=$genero
	done

	menorAlt=${alturas[0]}
	maiorAlt=${alturas[0]}
	contF=0
	contM=0
	somaAltF=0

	for ((i = 0; i < $quantPessoas; i++)); do
		if [[ $menorAlt > ${alturas[$i]} ]]; then
			menorAlt=${alturas[$i]}
		fi

		if [[ $maiorAlt < ${alturas[$i]} ]]; then
			maiorAlt=${alturas[$i]}
		fi

		if [[ ${generos[$i]} = "f" ]]; then
			contF=$(echo "$contF + 1" | bc)
			somaAltF=$(echo "$somaAltF + ${alturas[$i]}" | bc)
		else
			contM=$(echo "$contM + 1" | bc)
		fi


	done

	calcMediaAltF=$(echo "scale=2; $somaAltF / $contF" | bc)

	echo "Menor Altura = $menorAlt"
	echo "Maior Altura = $maiorAlt"
	echo "Media das alturas das mulheres = $calcMediaAltF"
	echo "Numeros de homens = $contM"
}

function comerciante_05() {

}

comerciante_05
