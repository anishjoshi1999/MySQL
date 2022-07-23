-- Adding some tuples into bands table
INSERT INTO bands (name) VALUES ("Iron Maiden");
 
INSERT INTO bands (name) VALUES ("Deuce"),("Avenged Sevenfold");
 
INSERT INTO bands (name) VALUES ("Ankor");
-- Adding some tuples into albums table
INSERT INTO albums (name,release_year,band_id) VALUES ("The Number of the Beasts",1985,1),
 ("Power Slave",1984,1),
 ("Nightmare",2018,2),
 ("NIghtmare",2010,3),
 ("Test Album",NULL,3);