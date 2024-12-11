#!/bin/bash

# Fonction pour compter le nombre de fichiers dans le répertoire
count_files() {
    echo $(ls -1 | wc -l)
}

# Demander à l'utilisateur de deviner le nombre de fichiers
echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"
correct_answer=$(count_files)
user_guess=0

# Boucle de jeu
while [[ $user_guess -ne $correct_answer ]]
do
    read -p "Entrez votre réponse : " user_guess
    
    if [[ $user_guess -lt $correct_answer ]]
    then
        echo "Trop bas, essayez encore !"
    elif [[ $user_guess -gt $correct_answer ]]
    then
        echo "Trop haut, essayez encore !"
    fi
done

echo "Félicitations, vous avez trouvé la bonne réponse !"
