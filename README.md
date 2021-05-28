# PPE4
# Foot 404

Site développé

## C'est quoi

c'est un site en HTML CSS PHP avec Symfony. Il permet d'acheter différents types de ballons ⚽ en fonction des choix des clients.

## Tout d'abord ❗️
Vous devez avoir un IDE pour pouvoir coder, visualiser, éditer (ex : PHPStorm)
Installez Docker afin d'avoir un container pour exécuter un projet Symfony

## Installation 👨‍💻
Pour l'installation du projet:
```bash
mkdir PPE4
cd PPE4
git clone https://github.com/zozo404/PPE4.git
```
Ensuite, il faut installer Docker et les images MariaDB et PHPMyAdmin, une image Symfony (ex : https://github.com/cnadal/machine_docker )
Après, allez sur PHPMyAdmin pour se connecter;
Faire importer, ouvrir le dossier PPE4 pour sélectionner le fichier database.sql et mettez "Go".

Ouvrez votre IDE et, modifiez les informations de connexion au serveur MySQL dans le ficher ".env" qui se situe à la racine du projet:
- Identifiants de connexion (username:password)
- IP de votre serveur
- Le port que vous utilisez pour MySQL

Après cela, installez les dépendances du projet Symfony, pour ceci exécuter le container où est situer le projet:
```bash
docker exec -it <nom-container> bash
cd PPE4
composer install
composer update
```

## License
[© zozo404](https://github.com/zozo404)
