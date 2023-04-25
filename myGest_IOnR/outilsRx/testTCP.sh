#!/bin/bash

echo -e "\E[1;35m-----------------------------------------------------"
echo -e "\E[0m "
echo "Veuillez saisir une IP"
read IP
echo "Veuillez saisir un Port TCP"
read Port
#Vérification du port si il est ouvert ou fermer avec netcat
nc -zv $IP $Port > /dev/null 2>&1

#Donne si le port et ouvert ou fermer avec un si sinon et fin de si
if [ $? -eq 0 ]; 
then
echo "Le port $Port est ouvert sur l'adresse $IP"
else 
echo "Le port $Port est fermer sur l'adresse $IP"
fi
