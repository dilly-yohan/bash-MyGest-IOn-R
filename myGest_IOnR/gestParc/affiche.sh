#!/bin/bash

echo -e "\E[1;35m-----------------------------------------------------"
echo -e "\E[0m "
mysql --user="eleve" --password="btsinfo" -e "show tables FROM Gestion"  
mysql --user="eleve" --password="btsinfo" -e "SELECT * FROM Gestion.Equipement"  
mysql --user="eleve" --password="btsinfo" -e "SELECT * FROM Gestion.TypeE" 
