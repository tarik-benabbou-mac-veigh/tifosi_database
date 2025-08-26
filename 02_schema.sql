-- Création de différentes tables ---

-- Table focaccia :
CREATE TABLE focaccia(
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom_focaccia VARCHAR(255) unique NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    -- ingredient VARCHAR(255) NOT NULL
);

-- Table pour joindre focaccia et ingrdient : 
CREATE TABLE focaccia_ingredient (
    id_focaccia INT NOT NULL,
    id_ingredient INT NOT NULL,
    PRIMARY KEY (id_focaccia, id_ingredient),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
);

-- Table ingredient :
CREATE TABLE ingredient(
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom_ingredient VARCHAR(255) NOT NULL,
    quantite VARCHAR(5) NOT NULL
);

-- Table boisson :
CREATE TABLE boisson(
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom_boisson VARCHAR(255) NOT NULL,
    id_marque INT,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque) 
);

-- Table marque :
CREATE TABLE marque(
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom_marque VARCHAR(255) unique NOT NULL
);