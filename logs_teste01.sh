#/bin/bash

clear

<<comment-saidaLogs

Forma padrão de salvar a saída de um comento em texto é utilizando > ou >>.
O primeiro é para criar o arquivo e adicionar o log, o segundo é para somente
adicionar, caso o arquivo de log já esteja criado.

comment-saidaLogs

arquivoLog="saidaLogs.log"

ifconfig > $arquivoLog

<<comment-saidaLogs2

Se caso quiser enviar somente o erro que for gerado na saída do comando,
utilize o parâmetro 2>>, se utilizado o >> seria saída somente com sucesso,
mas o erro é mostrado na saída atual.

comment-saidaLogs2

ifonfig >> $arquivoLog 2>> saidaLogs-ERRO.log

cat /etc/passwd | grep ubuntu >> $arquivoLog

<<comment-saidaLogs3

Mas se quiser salvar tanto a saída com sucesso e também o erro no mesmo arquivo,
é possível utizar o parâmetro de exemplo abaixo.

comment-saidaLogs3

ifconfig | tee -a saidaLogs-Total.log

cat /etc/passwd | grep teste | tee -a saidaLogs.log


# ============> ABRINDO ARQUIVO DE LOGS

echo -e "\n=====> ARQUIVO DE LOGS <=====\n"

if [ -f $arquivoLog ]
then
	echo "arquivo existe"
else
	echo "arquivo de logs não existe"
fi


