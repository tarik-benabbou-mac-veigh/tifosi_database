-- 1. Afficher la liste des noms des focaccias par ordre alphabétique croissant :
SELECT * FROM focaccia
ORDER BY nom_focaccia;

-- Résultat attendu et obtenu :
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
| id_focaccia| nom_focaccia  | prix  | ingredient                                                                                                                   |
+----------+--------------+-------+------------------------------------------------------------------------------------------------------------------------------+
|        7 | AmÃ©ricaine     | 10.80 | Base tomate, Mozarella, cresson, bacon, pomme de terre(40), parmesan, poivre, olive noire                                    |
|        4 | Emmentalaccia   |  9.80 | Base crÃ¨me, Emmental, cresson, champignon, parmesan, poivre, oignon                                                         |
|        2 | Gorgonzollaccia | 10.80 | Base tomate, Gorgonzola, cresson, ail, champignon, parmesan, poivre, olive noire                                             |
|        6 | Hawaienne       | 11.20 | Base tomate, Mozarella, cresson, bacon, ananas, piment, parmesan, poivre, olive noire                                        |
|        1 | Mozaccia        |  9.80 | Base tomate, Mozarella, cresson, jambon fumÃ©, ail, artichaut, champignon, parmesan, poivre, olive noire                     |
|        8 | Paysanne        | 12.80 | Base crÃ¨me, ChÃ¨vre, cresson, pomme de terre, jambon fumÃ©, ail, artichaut, champignon, parmesan, poivre, olive noire, Å?uf |
|        3 | Raclaccia       |  8.90 | Base tomate, raclette, cresson, ail, champignon, parmesan, poivre                                                            |
|        5 | Tradizione      |  8.90 | Base tomate, Mozarella, cresson, jambon cuit, champignon(80), parmesan, poivre, olive noire(10), olive verte(10)             |
+-------------+-----------------+-------+-----------------------------------------------------------------------------------------------------------------------------


-- 2. Afficher le nombre total d'ingrédients :
SELECT COUNT(*) FROM ingredient;

-- Résultat attendu et obtenu :
+----------+
| COUNT(*) |
+----------+
|       25 |
+----------+


-- 3. Afficher le prix moyen des focaccias :
SELECT AVG(prix) FROM focaccia;

-- Résultat attendu et obtenu : 
+-----------+
| AVG(prix) |
+-----------+
| 10.375000 |
+-----------+


-- 4. Afficher la liste des boissons avec leur marque, triée par nom de boisson :



-- 5. Afficher la liste des ingrédients pour une Raclaccia :
SELECT nom_focaccia, ingredient FROM focaccia
WHERE nom_focaccia = "Raclaccia";

-- Résultat attendu et obtenu :
+--------------+-------------------------------------------------------------------+
| nom_focaccia | ingredient                                                        |
+--------------+-------------------------------------------------------------------+
| Raclaccia    | Base tomate, raclette, cresson, ail, champignon, parmesan, poivre |
+--------------+-------------------------------------------------------------------+


-- 6. Afficher le nom et le nombre d'ingrédients pour chaque foccacia :
SELECT focaccia.nom_focaccia, COUNT(focaccia_ingredient.id_ingredient) AS nombre_ingredients FROM focaccia
JOIN focaccia_ingredient
ON focaccia.id_focaccia = focaccia_ingredient.id_focaccia
GROUP BY focaccia.nom_focaccia
ORDER BY focaccia.nom_focaccia;

-- Résultat attendu et obtenu :
+-----------------+--------------------+
| nom_focaccia    | nombre_ingredients |
+-----------------+--------------------+
| AmÃ©ricaine     |                  8 |
| Emmentalaccia   |                  7 |
| Gorgonzollaccia |                  8 |
| Hawaienne       |                  9 |
| Mozaccia        |                 10 |
| Paysanne        |                 12 |
| Raclaccia       |                  7 |
| Tradizione      |                  9 |
+-----------------+--------------------+

-- 7. Afficher le nom de la focaccia qui a le plus d'ingrédients :
SELECT * FROM focaccia
ORDER BY ingredients DESC
LIMIT 1;


-- 8. Afficher la liste des focaccia qui contiennent de l'ail :
SELECT * FROM focaccia
WHERE ingredient LIKE '%ail%';

-- Résultat attendu et obtenu :
+-------------+-----------------+-+---------------------------------------------------------------------------------------------------------------------------------+
|id_focaccia| nom_focaccia| prix  | ingredient                                                                                                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|         1 | Mozaccia        |  9.80 | Base tomate, Mozarella, cresson, jambon fumÃ©, ail, artichaut, champignon, parmesan, poivre, olive noire                     |
|         2 | Gorgonzollaccia | 10.80 | Base tomate, Gorgonzola, cresson, ail, champignon, parmesan, poivre, olive noire                                             |
|         3 | Raclaccia       |  8.90 | Base tomate, raclette, cresson, ail, champignon, parmesan, poivre                                                            |
|         8 | Paysanne        | 12.80 | Base crÃ¨me, ChÃ¨vre, cresson, pomme de terre, jambon fumÃ©, ail, artichaut, champignon, parmesan, poivre, olive noire, Å?uf |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

-- 9. Afficher la liste des ingrédients inutilisés :


-- 10. Afficher la liste des focaccia qui n'ont pas de champignons :
SELECT focaccia.nom_focaccia FROM focaccia
WHERE focaccia.id_focaccia NOT IN (
	SELECT focaccia_ingredient.id_focaccia FROM focaccia_ingredient
	INNER JOIN ingredient 
	ON focaccia_ingredient.id_ingredient = ingredient.id_ingredient
	WHERE ingredient.nom_ingredient = 'Champignon');

-- Résultat attendu et obtenu :
+--------------+
| nom_focaccia |
+--------------+
| AmÃ©ricaine  |
| Hawaienne    |
+--------------+