CREATE TABLE avion
(
av INT AUTO_INCREMENT UNIQUE NOT NULL,
marque VARCHAR(10) NOT NULL,
typeA   VARCHAR(10) NOT NULL,
localisation VARCHAR(20) NOT NULL,

PRIMARY KEY (av)
);

CREATE TABLE pilote
(
pil INT AUTO_INCREMENT UNIQUE NOT NULL,
nom VARCHAR(10) NOT NULL,
adresse VARCHAR(20) NOT NULL,

PRIMARY KEY (pil)
);

CREATE TABLE vol
(
vol CHAR(5)  UNIQUE NOT NULL,
av INT NOT NULL,
pil INT NOT NULL, 
vd VARCHAR(20) NOT NULL,
va VARCHAR(20) NOT NULL,
hd TIME NOT NULL,
ha TIME NOT NULL,

PRIMARY KEY (vol),
FOREIGN KEY (av) REFERENCES avion(av),
FOREIGN KEY (pil) REFERENCES pilote(pil)
);

