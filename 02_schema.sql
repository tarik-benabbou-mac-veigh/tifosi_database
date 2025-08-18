-- Création de mes différentes tables ---

-- Table foccacia :
CREATE TABLE focaccia(
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom_focaccia VARCHAR(255),
    prix DECIMAL(5,2)
);

-- Table ingredient :
CREATE TABLE ingredient(
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom_ingredient VARCHAR(255)
);

-- Table boisson :
CREATE TABLE boisson(
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom_boisson VARCHAR(255)
);

-- Table marque :
CREATE TABLE marque(
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom_marque VARCHAR(255)
);