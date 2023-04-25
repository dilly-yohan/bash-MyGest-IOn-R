#!/bin/bash

echo -e "\E[1;35m-----------------------------------------------------"
echo -e "\E[0m "
echo "Veuilez saisir une IP"
read IP
#Vérification de l'adresse avec un ping
res=$(ping $IP -w 3 | grep " 0% packet loss" | wc -l)

#Donne la réponse
if [[ $res -eq 1 ]]
then 
echo "Ping est OK"
else 
echo " Le ping ne marche pas "
fi
