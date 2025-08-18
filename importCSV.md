IMPORTATION VIA TERMINAL : 
1) 'mysql -u Tarik -p' + password : 'TifosiDataBase'
2) use tifosi
3) LOAD DATA LOCAL INFILE 'C:/Users/tarik/OneDrive/Documents/Développement web/04_SQL/projet_tifosi/focaccia.csv'
INTO TABLE focaccia
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

4) ERROR 2068 (HY000): LOAD DATA LOCAL INFILE file request rejected due to restrictions on access.


J'ai donc cherché en ligne, et la seule solution trouvée : taper "mysql -u Tarik -p --local-infile=1" au lieu de "mysql -u Tarik -p"

Le résultat reste le même..