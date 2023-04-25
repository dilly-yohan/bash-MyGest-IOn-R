#!/bin/bash

echo -e "\E[1;35m-----------------------------------------------------"
echo -e "\E[0m "
mysql --user="eleve" --password="btsinfo" -e "SELECT adIP FROM Gestion.Equipement" > IP.txt
echo "Votre fichier a était générer :)"

