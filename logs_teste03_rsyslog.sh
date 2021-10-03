scriptConf="scripts.conf"

cd /etc/rsyslog.d/

if [ ! -f $scriptConf ]
then
	touch $scriptConf
	chmod 777 $scriptConf
else
	echo "Ja existe"

echo "local0.*
