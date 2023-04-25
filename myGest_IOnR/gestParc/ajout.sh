#!/bin/bash

quitter=1
while [[ $quitter -ne 0 ]]
do
echo -e "\E[1;35m-----------------------------------------------------"
echo -e "\E[0m "
echo -e "\nMenu :"
echo "1) Ajouter un Equipements"
echo "0) Retour au menu principal"
echo -e "Veuillez choisir une option :"
read choix
case $choix in 
	1 )
		echo "ajouter un Equipements"
        echo "ajouter un Nom:"
        read NOM
        echo "ajouter un Adresse MAC:"
        read ADMAC
        echo "ajouter un Adresse IP:"
        read ADIP
        echo "ajouter un Masque(CIDR):"
        read CIDR
        echo "ajouter un IDT:"
        read IDT
        mysql --user="eleve" --password="btsinfo" Gestion -e "INSERT INTO Equipement(nom,adMAC,adIP,CIDR,idT) VALUES('$NOM','$ADMAC','$ADIP','$CIDR','$IDT');"
		;;
	0 )
		quitter=0
		;;
	* )
		echo "Erreur dans la saisie"
		;;
esac
done


