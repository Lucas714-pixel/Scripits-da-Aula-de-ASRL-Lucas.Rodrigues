#!/bin/bash 

for dominio in $(cat /home/aluno/scripts/dominios) 
do
	./CriarDominio.sh $dominio 
	./Criar.site $dominio
done
