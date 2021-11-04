if test $# = 0 
then 
  choix= 0;
 
#ici nous présentons le menu principal de nôtre application 

	echo " ===================+ VISUALISER - SCRIPT - V1.0 +================== 
  
   Répondre avec le numéro correspondant pour afficher 

	 ====================+ MENU +=================== 

	 1) Nom de la distribution et version du noyau 
	 2) Liste des shells presents 
	 3) Le shell actuellement utilisé 
	 4) La valeur Actuelle du umask 
	 5) L'architecture du systeme 
	 6) Le contenu de la variable PATH 
	 7) Nombre d'utilisateurs du systeme 
	 8) Nombre d'utilisateurs connectes 
	 9) L'activite CPU du systeme d'exploitation 
	 10 L'utilisation de la mémoire du système d'exploitation 
	 11) Sortir du script "

#ici nous demandons à l\'utilisateur d\'entrer son choîx
		while ((1))
		do
      echo " ---------------------------------------- "
			echo " entrer vôtre choîx ou exit pour quitter: "
			read choix 
				case $choix in
					1)
			   			echo " Nom de la distribution: $(uname)" 
			   			echo " version du noyau: $(uname -srm)"
              ;;
					2)
			  			echo "la liste des shells est: $(cat /etc/shells)"
			  			;;
          3)
              echo " le shell actuellement utilisé est: $SHELL "
              ;;
          4) 
              echo "la valeur actuelle du umask est: $(umask) "
              ;;
          5) 
              echo "L'architecture du système est: $(uname -m) "
              ;;
          6)
              echo "Le contenu de la variable PATH est: "
              echo  " $PATH | tr : \\n "
              ;;
          7) 
              echo "Le nombre d'utilisateur du système est: $(who | wc -l) "
              ;;
          8) 
              echo "Le nombre d'utilisateur connectés est: $(w | wc -l) "
              ;;
          9) 
              echo "l'activité CPU du système d'exploitation est: "
              echo " $(vmstat) "
              ;;
          10)
              echo "L'utilisation de la mémoire du système d'exploitation est : "
              echo "$(free -h)"
              ;;
          11) 
              echo " Merci d'être passer ! "
              exit
              ;;
          exit)
            echo "Merci d'être passer !"
            exit 
              ;;    
		esac
		done
			exit
else
    case $1/$2 in 
      -n/vkernel)
        echo " la version du noyau est: $(uname -srm) "
        ;;
      -n/dist)
        echo " le nom et la version de la distribution est: $(uname) "
        ;;
      -s/shell)
        echo " le shell utilisé est:  $SHELL"
        ;;
      -s/shells)
        echo " les shells présent dans notre système sont : $(cat /etc/shells)"
        ;;
      -u)
        echo " la valeur du umask est : umask"
        ;;
      -U/nbuser)
        echo " le nombre d'utilisateur de notre système est: who | wc -l"
        ;;
      -a/arch)
        echo "l'architecture de notre système est: $(uname -m)"
        ;;
      -p/)
      echo "le contenu de la variable path est:  $PATH " 
      ;;
      ouser/)
      echo " le nombre d'utilsateur connectes est : $(w | wc -l)"
      ;;
      cpu/)
      echo " l'activité du cpu est:  $(vmstat)"
      ;;
      -m/)
      echo " l'utilisation de la mémoire du système est:  $(free -h) "
      ;;
    esac
fi