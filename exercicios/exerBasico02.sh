#/bin/bash

NOMEPC=$(hostname)
DATAATUAL=$(date | awk '{print $2,$3,$4,$6}')
HORAATIVA=$(last reboot | tail -1 | awk '{print $4,$5,$6,$7}')
VERKERNEL=$(uname -r)
CONTCPU=$(nproc)
MODELCPU=$(lscpu | grep Model | awk '{print $3,$4,$5}' | tail -1)
FREEMEM=$(free -m | awk '{print $4}' | head -n 2 | tail -n 1)
PARTICOES=$(fdisk -l | grep /dev/sd | tail -1 | awk '{print $1}')

echo "=================================================================="
echo "==================>RELATORIO DA MAQUINA $NOMEPC<=================="
echo "=================================================================="

echo -e "\nNome da Maquina: $NOMEPC"
echo -e "\nData e Hora Atual: $DATAATUAL"
echo -e "\nDesde quanto a maquina esta ativa: $HORAATIVA"
echo -e "\nVersao do Kernel: $VERKERNEL"
echo -e "\nQuant de cpu/cores: $CONTCPU"
echo -e "\nModelo da CPU: $MODELCPU"
echo -e "\nMemoria Livre: $FREEMEM MB"
echo -e "\nParticoes: $PARTICOES"

echo
