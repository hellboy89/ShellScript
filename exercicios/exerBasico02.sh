#!/bin/bash

NOMEPC=$(hostname)
DATAATUAL=$(date)
HORAATIVA=$(last reboot | tail -1 | awk '{print $4,$5,$6,$7}')
VERKERNEL=$(uname -r)
CONTCPU=$(nproc)
MODELCPU=$(lscpu | grep Model | awk '{print $3,$4,$5}' | tail -1)
FREEMEM=$(free -m | awk '{print $4}' | head -n 2 | tail -n 1)
PARTICOES=$(fdisk -l | grep /dev/sd | tail -1 | awk '{print $1}')

echo "\n==================>RELATORIO DA MAQUINA $NOMEPC<==================\n"
echo "\n==========>Data/Hora: $DATAATUAL<===============\n"

echo "\nNome da Maquina: $NOMEPC"
echo "\nData e Hora Atual: $DATAATUAL"
echo "\nDesde quanto a maquina esta ativa: $HORAATIVA"
echo "\nVersao do Kernel: $VERKERNEL"
echo "\nQuant de cpu/cores: $CONTCPU"
echo "\nModelo da CPU: $MODELCPU"
echo "\nMemoria Livre: $FREEMEM MB"
echo "\nParticoes: $PARTICOES"

echo "\n==================================================================\n"
