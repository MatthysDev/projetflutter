Contributors 💫

- MatthysDucrocq : Matthys Ducrocq
- Corentyn: Corentyn Masset
- Rayles59: Gauthier Boddaert
- Jcbutnotjesus : Jan Cornelis

API utilisée : https://brawlstats.readthedocs.io/en/latest/api.html

<img width="1009" alt="Capture d’écran 2021-11-10 à 12 52 20" src="https://user-images.githubusercontent.com/81434852/141108270-344d95d8-54a7-4051-8208-405dbc3e839e.png">


MARCHE À SUIVRE 🛠

Afin de pouvoir utiliser notre application vous allez devoir dans un premier temps vous rendre sur le site de l'API.

" https://developer.brawlstars.com/#/ " 📍

Une fois sur le site vous allez devoir vous connecter à l'aide des identifiants que nous vous avons fournis.

Ensuite rendez-vous dans la section "My Account" afin de pouvoir créer votre API Key !

Vous allez devoir renseigner le NOM de l'API Key sa DESCRIPTION ainsi que mettre votre IP, pour trouver votre IP il vous suffit de vous rendre sur le site de NordVPN (Ceci n'est pas un placement de produit). 

" https://nordvpn.com/fr/what-is-my-ip/ " 📍

<img width="1440" alt="Capture d’écran 2022-01-08 à 14 09 58" src="https://user-images.githubusercontent.com/48148602/148646038-016ae9fb-4921-4f86-8cf6-c5c076d974e7.png">

Une fois la clé créée vous allez devoir l'activer dans la documentation pour ce faire vous devez consulter le TOKEN obtenu lors de la création de cette dernière et le renseigner dans la documentation. ( Cliquer sur le point d'exclamation rouge )

<img width="991" alt="Capture d’écran 2022-01-08 à 14 15 35" src="https://user-images.githubusercontent.com/48148602/148646024-cc536fcd-e9d5-48b8-b216-a168d2795ad1.png">


Une fois que tout cela est fait, il ne vous reste plus qu'à mettre votre token dans le code. Pour ce faire vous devait vous rendre dans le dossier **providers** puis le fichier **dio.dart**.

Une fois dedans vous devez mettre le TOKEN au niveau de const token = "";

Voilà vous êtes pret à utiliser notre application !

Afin de tester l'application nous vous fournissons nos ID BrawlStar afin de pouvoir consulter nos statistiques.

- Matthys :   2OC2GLVCG
- Jan :   GUCQCO2V
- Gauthier :  28JVC9YGR
- Corentyn : 2URUYPP9
