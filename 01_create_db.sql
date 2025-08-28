DROP DATABASE IF EXISTS tifosi;

-- Base de données :
CREATE DATABASE tifosi;

-- Sélection de la dbb : 
USE tifosi;

-- Utilisateur :
CREATE USER 'Tarik'@'localhost' IDENTIFIED BY 'TifosiDataBase';

-- Droits utilisateur :
GRANT ALL PRIVILEGES ON tifosi.* TO 'Tarik'@'localhost' WITH GRANT OPTION;

-- Application des changements : 
FLUSH PRIVILEGES;

