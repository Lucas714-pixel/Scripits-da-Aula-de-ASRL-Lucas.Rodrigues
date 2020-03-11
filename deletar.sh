#!/bin/bash 


lucas=$1


rm -rf "/etc/bind/db.$lucas";

rm -rf "/etc/apache2/sites-available/$lucas";
rm -rf "/var/www/$lucas/index.html";

deluser $lucas -shell /bin/false -home /home/$lucas
deluser $lucas userftp
rm -rf /home/$lucas/ftp

