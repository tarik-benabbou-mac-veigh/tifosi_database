-- Création de différentes tables ---
-- Table focaccia :
CREATE TABLE focaccia(
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom_focaccia VARCHAR(50) unique NOT NULL,
    prix DECIMAL(5,2) NOT NULL
);

-- Table ingredient :
CREATE TABLE ingredient(
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom_ingredient VARCHAR(255) NOT NULL,
    quantite VARCHAR(5) NOT NULL
);

-- Table pour joindre focaccia et ingredient : 
CREATE TABLE focaccia_ingredient (
    id_focaccia INT NOT NULL,
    id_ingredient INT NOT NULL,
    PRIMARY KEY (id_focaccia, id_ingredient), 
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
);
-- (utilisation à la fois de clé primaire/étrangère car il c'est une table liée à 2 autres)

-- Table marque :
CREATE TABLE marque(
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom_marque VARCHAR(50) unique NOT NULL
);

-- Table boisson :
CREATE TABLE boisson(
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom_boisson VARCHAR(50) NOT NULL,
    marque VARCHAR(255),
    id_marque INT,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque) 
);

-- Table client :
CREATE TABLE client(
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL unique,
    email VARCHAR(150) NOT NULL unique,
    code_postal INT NOT NULL
);

-- Table menu : 
CREATE TABLE menu(
    id_menu INT AUTO_INCREMENT PRIMARY KEY,
    id_client INT,
    date_achat DATETIME NOT NULL,
    FOREIGN KEY (id_client) REFERENCES client(id_client)
);

-- Table commande :
CREATE TABLE commande(
    id_menu INT NOT NULL,
    id_focaccia INT,
    id_boisson INT,
    PRIMARY KEY (id_menu, id_focaccia, id_boisson), 
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson)
);
-- (utilisation à la fois de clé primaire/étrangère car c'est une table liée à 3 autres)
