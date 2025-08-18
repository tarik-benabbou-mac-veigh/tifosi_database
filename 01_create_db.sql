-- Base de données :
CREATE DATABASE tifosi;

-- Utilisateur :
CREATE USER 'Tarik'@'localhost' IDENTIFIED BY 'TifosiDataBase';

-- Droits utilisateur :
GRANT ALL PRIVILEGES ON tifosi.* TO 'Tarik'@'localhost';

-- Application des changements : 
FLUSH PRIVILEGES;