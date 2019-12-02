#! /bin/bash


git init
git add -a

git status

read -p "Est ce que tu es sur de vouloir push? y/n" answer

case answer in

	y)
		read -p "Quel est le chemin vers votre repo? (exemple: https://github.com/MonNomDeCompte/MonRepo.git" path
		read -p "Numero du push? (En lettres en anglais)" numberOC
		git commit -m "$numberOC commit"
		git remote add origin $path
		git push -u origin master;;

	*)
		exit;;
esac
