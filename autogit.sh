#! /bin/bash


git init
git add .

git status

echo "Je suppose que vous êtes connecté, si vous n'êtes pas sûr, quittez le programme et suivez le tuto"

read -p "Est ce que tu es sur de vouloir push? y/n " answer

if (($answer == "y")); then

	read -p "Quel est le chemin vers votre repo? (exemple: https://github.com/MonNomDeCompte/MonRepo.git" path
	read -p "Numero du push? (En lettres en anglais)" numberOC
	git commit -m "$numberOC commit"
	git remote add origin $path
	git push -u origin master
else
	exit
fi
