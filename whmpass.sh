#!/bin/bash
# *********************************************
# Author: Renan Pessoa
# E-Mail: contato@renanhpessoa.com
# Date: 2017-Abr-26
# *********************************************

ip=$(hostname -i);

if [[ "$1" == "-r" ]] ;then
	
	[[ -z "$2" ]] && echo -e "You must supply the reseller username!" && exit

	[[ -z `cut -d: -f2 /etc/trueuserowners | grep -w "$2"` ]] && echo -e "Reseller not found" && exit

	USER=$2;
else
	USER=root;
fi

api=$(whmapi1 create_user_session user=${USER} service=whostmgrd |awk '/url/{print $2}' | sed 's/'$HOSTNAME'/'$ip'/');

echo -e "\e[1;33m${api}\e[0;00m"
