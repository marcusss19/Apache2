## LE PROJET

Ce projet sert a demarer un site web dans un conteneur Docker 
rapidement et efficacement qui sera accesible sur http://IP_OF_HOST:8080

## Les Prerequis
• ubuntu 20.04

• docker 20.10.7

• connection internet  

• Git dans le ubuntu 

## Execution du Projet
demarer le script siteweb_instantaner.sh avec la Commande

$ sudo bash "chemin du fichier siteweb_instantaner"

## Les option du script

1) la premiere option clone le répertoire de Git vers votre poste, build l'image, et exec le conteneur avec la mapping réseaux necessaire.Apres un delete automatique des fichers non nécessaire. 
2) la deuxième option supprime l'image et le conteneur 
3) la troisième option quit le script
