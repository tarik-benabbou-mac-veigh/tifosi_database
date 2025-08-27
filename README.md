# TIFOSI - Base de données pour un restaurant de Street-Food italien
Ce projet réalisé est un **examen proposé par le CEF** et contient mes différents scripts SQL pour la création et le peuplement d'une base de données MySQL du restaurant de Street-Food italien fictif : **Tifosi**. 
Ma base de données a été conçue pour gérer les informations transmises via 4 fichiers Excel, à savoir : 
1. **focaccia.xls,**
2. **ingrédients.xls,**
3. **boissons.xls,**
4. **marques.xls.**

## 1_ Structure du projet Tifosi
**01_create_db.sql :** Script pour la création de la base de données tifosi, de l'utilisateur tifosi, et des droits d'accès.

**02_schema.sql :** Script pour la création des tables : focaccia, focaccia_ingredient, ingredient, boisson, marque, client, menu, commande. 
Vous trouverez aussi les contraintes d'intégrité pour les tables de jointures (focaccia_ingredient et commande).

**03_insert_data.sql :** Script pour le peuplement des tables grâce à la commande **INSERT INTO** pour la table **focaccia_ingreient**

**04_update_data.sql :** Script pour la mise à jour de la table **boisson** avec la commande **UPDATE**. Cette est optionnelle MAIS nous permet d'avoir accès à l'**id_marque**.

**05_test_queries.sql :** Script regroupant les requêtes de test pour vérifier la conformité de la base de données avec les besoins du projet. En tout 10 requêtes ont été exécutées, et pour chacune d'entre elle vous y trouverez : 
- **L'intitulé**
- **La requête SQL**
- **Résultat attendu et obtenu**

## 2_ Lancement du projet Tifosi
Pour utiliser cette base de données en local, suivez les étapes ci-dessous :

- **Clonez le dépôt GitHub :**
git clone [https://github.com/votre-nom-utilisateur/nom-du-depot.git](https://github.com/tarik-benabbou-mac-veigh/tifosi_database.git) 

- **Ouvrez MySQL Workbench**

- **Exécutez le script de création de la base de données :** ouvrez et exécutez le fichier 01_create_db.sql.

- **Exécutez le script du schéma :** ouvrez et exécutez le fichier 02_schema.sql.

- **Exécutez le script d'insertion des données :** ouvrez et exécutez le fichier 03_insert_data.sql.

- **Exécutez les requêtes de test :** ouvrez et exécutez le fichier **05_test_queries.sql** pour vérifier le bon fonctionnement de ma base de données.

## 3_ Modèle de données (schéma relationnel)
Comme ce projet se focalise sur les relations entre les tables d'une base de données, vous trouverez des relations complexes dans les focaccia_ingredient et commande.

## 4_ Projet évolutif
Bien que ce projet m'est été proposé par le CEF, il est destiné à être évolutif. 
N'hésitez pas à me faire part de **vos recommandations pour améliorer la structure du code**, la conception de la base de données ou l'efficacité des requêtes.
