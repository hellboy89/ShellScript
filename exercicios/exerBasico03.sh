#/bin/bash

echo -e "\n==================>RELATORIO DO USUARIO<============================"

USERLOGON=$(w | tail -1 | awk '{print $1}')
SHOWID=$(id -u $USERLOGON)

echo -e "\nUsuario Logado: $USERLOGON"
echo -e "\nUID do Usuario: $SHOWID"


echo -e "\n===================================================================\n"

