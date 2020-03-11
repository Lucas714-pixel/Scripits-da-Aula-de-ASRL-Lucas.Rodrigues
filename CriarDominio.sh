#!/bin/bash 

dominio=$1 

echo " 
zone \"$dominio\" {
	type master; 
	file \"/etc/bind/db.$dominio\"; 
};" >>/etc/bind/named.conf.local 

cp /etc/bind/db.lucas.com.br /etc/bind/db.$dominio
sed -i s/localhost/$dominio/g /etc/bind/db.$dominio

systemctl restart bind9 
