#--------------------------------------------------------------------------------
#-- Script SQL qui permet de cr�er les tables de l'�tude de 
#-- cas sur la location de voitures. Ce script n'a pas �t� g�n�r� 
#-- par outil, il a �t� �crit � la main.
#-------------------------------------------------------------------------------
#-- Avant d'ex�cuter ce script, dans la Console MySQL, taper 
#-- la commande "use test" pour cr�er les tables dans la base de 
#-- donn�es "test" 
#--------------------------------------------------------------------------------

DROP Table IF EXISTS  Client;
DROP TABLE IF EXISTS Location;
DROP Table IF EXISTS  TypePeriode;
DROP TABLE IF EXISTS  CategorieVoiture;
DROP TABLE IF EXISTS  TypePeriode;
DROP TABLE IF EXISTS  Tarif;

#------------------------------------
#-- Table Client
#------------------------------------
CREATE TABLE Client (
	NumClient VARCHAR(10) PRIMARY KEY, 
	Nom VARCHAR(20), 
	Adresse VARCHAR(20), 
	MoyenPaiement VARCHAR(20)
);

#------------------------------------
#-- Table Location
#------------------------------------
CREATE TABLE Location (
	NumVoiture VARCHAR(10) REFERENCES Voiture(NumVoiture), 
	DateLocation Date NOT NULL, 
	NumClient VARCHAR(10) REFERENCES Client(NumClient), 
	Periode VARCHAR(10) REFERENCES TypePeriode(Periode),
	PRIMARY KEY (NumVoiture, DateLocation)
);

#------------------------------------
#-- Table TypePeriode
#------------------------------------
CREATE TABLE TypePeriode (
	Periode VARCHAR(10) PRIMARY KEY, 
	NomPeriode VARCHAR(20)
);

#------------------------------------
#-- Table Voiture
#------------------------------------
CREATE TABLE Voiture (
	NumVoiture VARCHAR(10) PRIMARY KEY, 
	Immat VARCHAR(20), 
	DateAchat Date, 
	Categorie VARCHAR(20) REFERENCES CategorieVoiture(Categorie)
);


#------------------------------------
#-- Table Tarif
#------------------------------------
CREATE TABLE Tarif(
	Categorie VARCHAR(10) REFERENCES CategorieVoiture(Categorie), 
	Periode VARCHAR(10) REFERENCES TypePeriode(Periode),
	Prix DOUBLE,
	PRIMARY KEY (Categorie, Periode)
);


#------------------------------------
#-- Table CategorieVoiture
#------------------------------------
CREATE TABLE CategorieVoiture (
	Categorie VARCHAR(10) PRIMARY KEY, 
	TypeCategorie VARCHAR(20), 
	Libelle VARCHAR(100)
);


