#!/bin/bash

#répertoire principal
ROOT_DIR="/media/Storage/I.T"
ROOT_DIR2="/media/Storage/L.P"
dir_name=""

# Boucle pour parcourir les sous-répertoires

while true; 
do

# Afficher le répertoire courant

cd $ROOT_DIR

# Demander à lutilisateur de choisir un répertoire ou d'arrêter

  read -p "Chercher dans I.T (o/n)? " choice

  case $choice in
    o) 

# Demander le nom du répertoire à explorer
	ls
	read -p "Dans quel répertoire ? " dir_name
	cd $dir_name || exit  
# Afficher le répertoire courant

	cd $ROOT_DIR/$dir_name

# Demander à lutilisateur de choisir un répertoire ou d'arrêter

	        ls
		read -p "Quel fichier ? " file_name
		if [ -f $ROOT_DIR/$dir_name/$file_name ]; 
		then
    		echo 'Ok, voyons voir.'
		read -p "Quelle est votre question ? : " prompt
                echo "### A propos de : $file_name : $prompt" | tee -a '/media/Storage/I.T/LLama/Q&R.md'
             	else
    		echo 'Il n`existe pas.'
		dir_name=""
		file_name=""
		fi
	;;
      n) 
# Autre boucle
# Demander le nom du répertoire à explorer
	cd $ROOT_DIR2
        ls
        read -p "C'est à quel sujet ? " dir_name
        cd $dir_name || exit    
# Afficher le répertoire courant

        cd $ROOT_DIR2/$dir_name

# Demander à lutilisateur de choisir un répertoire ou d'arrêter

                ls
                read -p "Plus précisément ? " file_name
                if [ -f $ROOT_DIR2/$dir_name/$file_name ]; 
                then
                echo 'Je vais regarder ça.'
                read -p "Quelle est votre question ? : " prompt
                echo "### A propos de : $file_name : $prompt" | tee -a '/media/Storage/P.L/LLama/Q&A.md'
                else
                echo 'Je ne vois pas de quoi il s`agit.'
                dir_name=""
                file_name=""
                fi
       
      ;;
      *) 

# Erreur, demander à l'utilisateur de choisir à nouveau
      echo "Erreur : choix invalide"
      sleep 0.3s
      exit 0
      esac
done
```

