scriptConf="scripts.conf"
arquivoLog="/var/log/scripts.log"

cd /etc/rsyslog.d/

rm -f $scriptConf

if [ ! -f $scriptConf ]
then
	touch $scriptConf
	chmod 777 $scriptConf
else
	echo "Ja existe"
fi

if [ -f $arquivoLog ]
then
	touch $arquivoLog
	chmod 777 $arquivoLog
	# CONFIGURANDO SCRIPT DE ARMAZENAMENTO DE LOG
	echo "local0.*	/var/log/scripts.log" >> $scriptConf
	echo "local1.*	/var/log/scripts.log" >> $scriptConf
	echo "local2.*	/var/log/outrosscript.log" >> $scriptConf
else
	echo "erro na criação do $arquivoLog"
fi

verificaLog=$(cat $scriptConf | wc -l)

for (( i=1 ; i<=5 ; i++ ))
do
	if [ $verificaLog -gt 2 ]
	then
		systemctl restart rsyslog
		logger -p local0.err -t [TAG] "teste de mensagem - $RANDOM"
	else
		echo "arquivo de $scriptConf incompleto."
	fi

	sleep 2

done

