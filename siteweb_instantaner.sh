#!/bin/bash
#ce sript install un docker apache avec un site web depuis un github


#menu 
PS3='Please enter your choice: '
options=("Creation du Conteneur" "Suprimer le Conteneur et l'image" "Quit")
select opt in "${options[@]}"
#fin du menu
do
    case $opt in
        "Creation du Conteneur")
#           cloner le github avec le Dockerfile et le siteweb
            git clone https://github.com/marcusss19/Apache2.git
#           Supresion de conteneur identique
            docker rm -f my-running-app
#           Supresion d'un l'image identique
            docker rmi -f my-apache2
#           build l'image avec le Dockerfile du github
            docker build -t my-apache2 ./Apache2
#           construction du conteneur avec detatche interactif et redirection de port 
            docker run -dit --name my-running-app -p 8080:80 my-apache2
#           deleter le folder 
            rm -r -f Apache2
            echo "Le siteweb est up aller tester "
            echo ""
            echo ""
            echo "1) Creation du Conteneur"
            echo "2) Suprimer le Conteneur et l'image"
            echo "3) Quit"
            ;;
        "Suprimer le Conteneur et l'image")
#           Supresion du conteneur 
            docker rm -f my-running-app
#           Supresion de l'image 
            docker rmi -f my-apache2
            echo "le conteneur et l'image son mort R.I.P"
            echo ""
            echo ""
            echo "1) Creation du Conteneur"
            echo "2) Suprimer le Conteneur et l'image"
            echo "3) Quit"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done