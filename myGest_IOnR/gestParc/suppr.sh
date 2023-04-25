#!/bin/bash

echo -e "\E[1;35m-----------------------------------------------------"
echo -e "\E[0m "
mysql --user="eleve" --password="btsinfo" -e "SELECT * FROM Gestion.Equipement"  
echo "Quelle ligne voulez vous supprimer(ID)"
read ID
 mysql --user="eleve" --password="btsinfo" Gestion -e "DELETE FROM Equipement WHERE id=$ID;"

 echo "La ligne $ID a était supprimer"

