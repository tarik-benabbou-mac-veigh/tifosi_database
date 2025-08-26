-- Problème rencontré pour la table focaccia dans le CSV avec colonne ingrédient et lignes(13-37):
    --> Solution : Création d'une nouvelle table focaccia_ingredient pour faire le lien entre les tables focaccia et ingredient

-- Insérer les ingrédients pour la focaccia "Mozaccia" (ID 1)
-- Base tomate, Mozarella, cresson, jambon fumé, ail, artichaut, champignon, parmesan, poivre, olive noire
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 1);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 3);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 5);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 7);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 13);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 16);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (1, 25);

-- Insertion des ingrédients pour la focaccia "Mozaccia" (ID 2)
-- (Base tomate, Gorgonzola, cresson, ail, champignon, parmesan, poivre, olive noire)
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 1);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 5);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 7);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 11);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 16);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (2, 20);

-- Insérer les ingrédients pour la focaccia "Raclaccia" (ID 3)
-- Base tomate, raclette, cresson, ail, champignon, parmesan, poivre
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 1);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 5);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 7);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (3, 22);

-- Insérer les ingrédients pour la focaccia "Emmentalaccia" (ID 4)
-- Base crème, Emmental, cresson, champignon, parmesan, poivre, oignon
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 6);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 7);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 10);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 15);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (4, 20);

-- Insérer les ingrédients pour la focaccia "Tradizione" (ID 5)
-- Base tomate, Mozarella, cresson, jambon cuit, champignon(80), parmesan, poivre, olive noire(10), olive verte(10)
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 5);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 7);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 12);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 16);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 17);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (5, 25);

-- Insérer les ingrédients pour la focaccia "Hawaienne" (ID 6)
-- Base tomate, Mozarella, cresson, bacon, ananas, piment, parmesan, poivre, olive noire
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 2);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 4);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 5);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 16);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 19);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (6, 25);

-- Insérer les ingrédients pour la focaccia "Américaine" (ID 7)
-- Base tomate, Mozarella, cresson, bacon, ananas, piment, parmesan, poivre, olive noire
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 4);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 5);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 16);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 21);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (7, 25);

-- Insérer les ingrédients pour la focaccia "Paysanne" (ID 8)
-- Base crème, Chèvre, cresson, pomme de terre, jambon fumé, ail, artichaut, champignon, parmesan, poivre, olive noire, œuf
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 1);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 3);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 6);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 7);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 8);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 9);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 13);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 14);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 16);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 18);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 20);
INSERT INTO focaccia_ingredient (id_focaccia, id_ingredient) VALUES (8, 21);