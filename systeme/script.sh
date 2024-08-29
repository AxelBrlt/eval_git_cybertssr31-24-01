#!/bin/bash

# Afficher dans le terminal (echo) : Ou voulez-vous enregistrer le projet ?
echo "Ou voulez-vous enregistrer le projet ? (ex: /c/dossier)"

# Récupérer l’emplacement racine (read dossier).
read dossier

# Vérifier si le répertoire existe.
if [ ! -d "$dossier" ]; then
    echo "Le dossier $dossier n'existe pas. Création..."
    mkdir -p "$dossier"
else
    echo "Le dossier $dossier existe déjà."
fi

# Afficher dans le terminal (echo) : Quel est le nom de votre projet ?
echo "Quel est le nom de votre projet ?"

# Récupérer le nom du projet (read projet).
read projet

# Se déplacer dans le dossier racine (cd $dossier).
cd $dossier

# Créer le dossier du projet (mkdir $projet).
if [ ! -d "$projet" ]; then
    echo "Le dossier du projet $projet n'existe pas. Création..."
    mkdir "$projet"
else
    echo "Le dossier du projet $projet existe déjà."
fi

# Créer les fichiers suivants dans le dossier projet (touch) :
# index.html, style.css et readme.md
touch $projet/index.html $projet/style.css $projet/readme.md

# Afficher dans le terminal (echo) : Le projet a été ajouté.
echo "Le projet a été ajouté."

# Ajouter les modifications en liste d’attente (git add).
git add .

# Sauvegarder les modifications (git commit) avec le message suivant :
# Ajout du script.sh
git commit -m "Ajout du script.sh"

# Envoyer les modifications en ligne (git push).
git push origin main

read -p Finito...