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
    read -p "Digite a medida da glicose: " mediaGlic

    if [[ $mediaGlic < 100 ]]
    then
        echo "classificacao = normal"
    elif [[ $mediaGlic -gt 100 ]] && [[ $mediaGlic -le 140 ]]
    then
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

    if [[ $maior -lt $dist2 ]]
    then
        maior=$dist2
    fi
    
    if [[ $maior -lt $dist3 ]]
    then
        maior=$dist3
    fi
    
    echo "Maior Distancia = $maior"

}

function temperatura_04() {
    read -p "vc vai digitar a temperatura em qual escala (c/f): " escEscala

    if [[ $escEscala = "f" ]]
    then
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

    if [[ $codProd -eq 1 ]]
    then
        calc=$(echo "scale=2; $quantComp * 5.00" | bc)
        echo "valor a pagar: R$ $calc"
    elif [[ $codProd -eq 2 ]]
    then
        calc=$(echo "scale=2; $quantComp * 3.50" | bc)
        echo "valor a pagar: R$ $calc"
    elif [[ $codProd -eq 3 ]]
    then
        calc=$(echo "scale=2; $quantComp * 4.80" | bc)
        echo "valor a pagar: R$ $calc"
    elif [[ $codProd -eq 4 ]]
    then
        calc=$(echo "scale=2; $quantComp * 8.90" | bc)
        echo "valor a pagar: R$ $calc"
    elif [[ $codProd -eq 5 ]]
    then
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

    if [[ $(expr $num1 % $num2) = 0 ]] || [[ $(expr $num2 % $num1) = 0 ]]
    then
        echo "sao MULTIPLOS"
    else
        echo "NAO sao MULTIPLOS"
    fi
}

function aumento_04() {
    read -p "Digite o salario da pessoa: " salario

    if [[ $salario -le 1000 ]]
    then
        calcNovoSal=$(echo "scale=2; ($salario * 0.20) + $salario" | bc)
        calcAumento=$(echo "scale=2; ($salario * 0.20)" | bc)

        echo "novo salario = $calcNovoSal"
        echo "aumento = $calcAumento"
        echo "porcentatem = 20%"
    elif [[ $salario -gt 1000 ]] && [[ $salario -le 3000 ]]
    then
        calcNovoSal=$(echo "scale=2; ($salario * 0.15) + $salario" | bc)
        calcAumento=$(echo "scale=2; ($salario * 0.15)" | bc)

        echo "novo salario = $calcNovoSal"
        echo "aumento = $calcAumento"
        echo "porcentatem = 15%"
    elif [[ $salario -gt 3000 ]] && [[ $salario -le 8000 ]]
    then
        calcNovoSal=$(echo "scale=2; ($salario * 0.10) + $salario" | bc)
        calcAumento=$(echo "scale=2; ($salario * 0.10)" | bc)

        echo "novo salario = $calcNovoSal"
        echo "aumento = $calcAumento"
        echo "porcentatem = 10%"
    elif [[ $salario -gt 8000 ]]
    then
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

    if [[ $horaInicial -lt $horaFinal ]]
    then
        calc=$(echo "$horaFinal - $horaInicial" | bc)
    else
        calc=$(echo "24 - ($horaInicial - $horaFinal)" | bc)
    fi

    echo "O jogo durou $calc horas."

}

function coordenadas_04() {
    read -p "valor de X: " valX
    read -p "valor de Y: " valY

    if [[ $valX -gt 0 ]] && [[ $valY -lt 0 ]]
    then
        echo "Q4"
    elif [[ $valX -gt 0 ]] && [[ $valY -gt 0 ]]
    then
        echo "Q1"
    elif [[ $valX -eq 0 ]] && [[ $valY -eq 0 ]]
    then
        echo "Origem"
    elif [[ $valX -gt 0 ]] && [[ $valY -eq 0 ]]
    then
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

        if [[ $val1 -gt $val2 ]]
        then
            echo "crescente"
        elif [[ $val1 -eq $val2 ]]
        then
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

        if [[ $val -eq 0 ]]
        then
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

    while :
    do
        read -p "" val

        if [[ $contador -eq 0 ]] && [[ $val -lt 0 ]]
        then
            echo "IMPOSSIVEL CALCULAR"
            break
        fi

        if [[ $val -gt 0 ]]
        then
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

    while :;
    do

        if [[ $senha -eq 2002 ]]
        then
            echo "Acesso Permitido!"
            break
        else
            read -p "senha invalida, tente novamente: " senha
        fi
    done

}

function quadrante_04() {
    while :
    do
        echo "Digite os valores das coordenadas X e Y: "

        read -p "" valX
        read -p "" valY

        if [[ $valX -gt 0 ]] && [[ $valY -gt 0 ]]
        then
            echo "Quadrante Q1"
        elif [[ $valX -gt 0 ]] && [[ $valY -lt 0 ]]
        then
            echo "Quadrante Q4"
        elif [[ $valX -lt 0 ]] && [[ $valY -gt 0 ]]
        then
            echo "Quadrante Q2"
        elif [[ $valX -lt 0 ]] && [[ $valY -lt 0 ]]
        then
            echo "Quadrante Q3"
        elif [[ $valX -eq 0 ]] || [[ $valY -eq 0 ]]
        then
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

    while :
    do
        if [[ $nota1 -gt 10 ]] || [[ $nota1 -lt 0 ]]
        then
            read -p "Valor incorreto! Tente novamente: " nota1
        else
            somaNotas=$(echo "$somaNotas + $nota1" | bc)
            break
        fi
    done

    # ============== NOTA2
    read -p "Digite a segunda nota: " nota2

    while :
    do
        if [[ $nota2 -gt 10 ]] || [[ $nota2 -lt 0 ]]
        then
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

    while :
    do
        read -p "digite um valor para a soma: " val

        soma=$(echo "$soma + $val" | bc)

        echo "a soma esta em: $soma"

        if [[ $val -eq 0 ]]
        then
            break
        fi
    done

    while :
    do
        read -p "digite um segundo valor para a soma: " val2

        soma=$(echo "$soma + $val2" | bc)

        echo "a soma esta em: $soma"

        if [[ $val2 -eq 0 ]]
        then
            break
        fi
    done
}

function combustivel_04() {
    alcool=0
    gasolina=0
    diesel=0

    while :
    do
        read -p "informe um codigo (1, 2, 3) ou 4 para parar: " valor


        if [[ $valor -eq 1 ]]
        then
            alcool=$(echo "$alcool + 1" | bc)
        elif [[ $valor -eq 2 ]]
        then
            gasolina=$(echo "$gasolina + 1" | bc)
        elif [[ $valor -eq 3 ]]
        then
            diesel=$(echo "$diesel + 1" | bc)
        elif [[ $valor -eq 4 ]]
        then
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

    while [ $num -ne 0 ]
    do
        if [[ $(expr $num % 2) != 0 ]]
        then
            num=$(echo "$num + 1" | bc)
        fi

        soma=$(echo "(5 * $num) + 20" | bc)

        echo "soma = $soma"

        read -p "digite um numero inteiro: " num

    done
}

function testeFor1() {
    for i in {1..10}
    do
        echo "contador: $i"
    done
}

function tabuada_04() {
    read -p "deseja a tabuada de qual valor: " num

    for i in {1..10}
    do
        calc=$(echo "$num * $i" | bc)
        echo "$num x $i = $calc"
    done
}

function somaImpares_04() {
    echo "digite dois numeros: "
    read -p "" val1
    read -p "" val2

    if [[ $va1 -gt $val2 ]]
    then
        troca=$val1
        val1=$val2
        val2=$troca
    fi

    soma=0

    # PAREI AQUI, TENHO QUE SABER COMO FAZ UM FOR, SOMANDO VALORES
    # COMO ESTÁ NA CORREÇÃO.

    calc=$(echo "$val1 + 1" | bc)
    for i in $(seq $calc $val2)
    do
        if [[ $(expr $i % 2) != 0 ]]
        then
            soma=$(echo "$soma + $i" | bc)
        fi
    done

    echo "soma dos impares = $soma"

}

function testeFor2() {

    val=$(echo "1 + 1" | bc)
    
    for i in $(seq $val 20)
    do
        echo "contador $i"
    done

}

# testeFor2
somaImpares_04