#!/bin/bash

quitter=1
while [[ $quitter -ne 0 ]]
do
echo -e "\E[1;35m-----------------------------------------------------"
echo -e "\E[0m "
echo -e "\nMenu :"
echo "1) Modifier un Equipements"
echo "0) Retour au menu principal"
echo -e "Veuillez choisir une option :"
read choix
case $choix in 
	1 )
        mysql --user="eleve" --password="btsinfo" -e "SELECT * FROM Gestion.Equipement"  
		echo "Modifier la base"
        echo "Entrez la ligne que vous voulez modifier"
        read ID
        echo "Modifier un Nom:"
        read NOM
        echo "Modifier une Adresse MAC:"
        read ADMAC
        echo "Modifier une Adresse IP:"
        read ADIP
        echo "Modifier un Masque:"
        read CIDR
        echo "Modifier un IDT:"
        read IDT
        mysql --user="eleve" --password="btsinfo" Gestion -e "UPDATE Equipement set nom='$NOM' , adMAC='$ADMAC' , adIP='$ADIP' ,  CIDR='$CIDR' , idT='$IDT' WHERE id='$ID'";
		;;
	0 )
		quitter=0
		;;
	* )
		echo "Erreur dans la saisie"
		;;
esac
done


