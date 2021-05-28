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
mkdir PPE4_FINI
cd PPE4_FINI
git clone https://github.com/zozo404/PPE4_FINI.git
```

Installer Docker ainsi que les images MariaDB & PHPMyAdmin afin d'assurer le bon fonctionnement du site.
- Se connecter sur PHPMyAdmin
- Choisir "Importer" et sélectionner le ficher ppe3(7).sql se situant dans PPE4_FINI
 
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
cd PPE4_FINI
composer install
composer update
```
## Documentation
https://drive.google.com/file/d/19Qr9fpT0aVcU-aOe-R-Ty1GLWM5Q0EuM/view?usp=sharing
## License
[© zozo404](https://github.com/zozo404)
