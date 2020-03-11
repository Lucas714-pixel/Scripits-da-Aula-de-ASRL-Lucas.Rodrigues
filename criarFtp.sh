#!/bin/bash

lucas=$(echo $1 | cut -d. -f1)
useradd $lucas -p $(openssl passwd '123') -d /var/www/$1

adduser $lucas userftp

systemctl restart proftpd
