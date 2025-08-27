-- Mise à jour de la table 'boisson' avec l'ajout de colonne id_marque :

-- Marque Coca-cola :
UPDATE boisson
SET id_marque = (SELECT id_marque FROM marque WHERE nom_marque = 'Coca-cola')
WHERE marque = 'Coca-cola';

-- Marque Cristalline :
UPDATE boisson
SET id_marque = (SELECT id_marque FROM marque WHERE nom_marque = 'Cristalline')
WHERE marque = 'Cristalline';

-- Marque Monster :
UPDATE boisson
SET id_marque = (SELECT id_marque FROM marque WHERE nom_marque = 'Monster')
WHERE marque = 'Monster';

-- Marque Pepsico :
UPDATE boisson
SET id_marque = (SELECT id_marque FROM marque WHERE nom_marque = 'Pepsico')
WHERE marque = 'Pepsico';