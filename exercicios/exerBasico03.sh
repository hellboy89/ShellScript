#/bin/bash

echo "\n==================>RELATORIO DO USUARIO<============================"

USERLOGON=$(w | tail -1 | awk '{print $1}')
SHOWID=$(id -u $USERLOGON)
NAMEUSER=$(finger $USERLOGON | head -n 1 | awk '{print $4}')
SIZEHOME=$(du -ch /home/$USERLOGON | tail -1 | awk '{print $1}')
LASTLOGIN=$(last | head -n 1 | grep $USERLOGON | awk '{print $4,$5,$6,$7}')

echo "\nUsuario Logado: $USERLOGON"
echo "\nUID do Usuario: $SHOWID"
echo "\nNome do Usuario: $NAMEUSER"
echo "\nTotal em uso no /home/$USERLOGON/: $SIZEHOME"
echo "\nUltimo logon do usuario $USERLOGON: $LASTLOGIN"

echo "\n===================================================================\n"

