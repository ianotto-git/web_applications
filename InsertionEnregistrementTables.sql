USE LOCATIONVOITURES;

#------------------------------------
#-- Mise à jour de la table CategorieVoiture
#------------------------------------
INSERT INTO CategorieVoiture VALUES ('TV1','économique','petite voiture, 4 places');
INSERT INTO CategorieVoiture VALUES ('TV2','luxe','grosse voiture ou 5 places');
INSERT INTO CategorieVoiture VALUES ('TV3','camping car', '4 ou 5 places');

#------------------------------------
#-- Mise à jour de la table Voiture
#------------------------------------
INSERT INTO Voiture VALUES ('V1','123 XY 57','1999-01-11','TV1');
INSERT INTO Voiture VALUES ('V2','1016 YD 57','2000-03-12','TV2');
INSERT INTO Voiture VALUES ('V3','2087 YF 57','2001-05-13','TV3');
INSERT INTO Voiture VALUES ('V4','3001 ZU 57','2008-07-14','TV1');
INSERT INTO Voiture VALUES ('V5','201 AKD 57','2007-09-15','TV2');


#------------------------------------
#-- Mise à jour de la table TypePeriode
#------------------------------------
INSERT INTO TypePeriode VALUES ('P1','Journée');
INSERT INTO TypePeriode VALUES ('P2','Fin de semaine');
INSERT INTO TypePeriode VALUES ('P3','Semaine');

#------------------------------------
#-- Mise à jour de la table Tarif
#------------------------------------
INSERT INTO Tarif VALUES ('TV1','P2',70);
INSERT INTO Tarif VALUES ('TV1','P1',45);
INSERT INTO Tarif VALUES ('TV1','P3',120);
INSERT INTO Tarif VALUES ('TV2','P2',80);
INSERT INTO Tarif VALUES ('TV2','P1',75);
INSERT INTO Tarif VALUES ('TV2','P3',150);
INSERT INTO Tarif VALUES ('TV3','P2',180);
INSERT INTO Tarif VALUES ('TV3','P1',90);
INSERT INTO Tarif VALUES ('TV3','P3',220);


#------------------------------------
#-- Mise à jour de la table Client
#------------------------------------
INSERT INTO Client VALUES ('C1','Dupond','Metz','Carte Visa');
INSERT INTO Client VALUES ('C2','Durant','Nancy','Carte Visa Premier');
INSERT INTO Client VALUES ('C3','Martin','Thionville','Chèque Bancaire');
INSERT INTO Client VALUES ('C4','Deker','Forbach','Espèce');


#------------------------------------
#-- Mise à jour de la table Location
#------------------------------------
INSERT INTO Location VALUES ('V1','2009-01-07','C1','P1');
INSERT INTO Location VALUES ('V1','2009-02-21','C3','P1');
INSERT INTO Location VALUES ('V1','2009-03-05','C3','P3');
INSERT INTO Location VALUES ('V1','2009-03-27','C2','P3');
INSERT INTO Location VALUES ('V1','2009-04-10','C1','P2');
INSERT INTO Location VALUES ('V1','2009-04-23','C2','P3');
INSERT INTO Location VALUES ('V2','2009-01-12','C2','P2');
INSERT INTO Location VALUES ('V2','2009-04-02','C4','P1');
INSERT INTO Location VALUES ('V3','2009-03-10','C1','P1');
INSERT INTO Location VALUES ('V3','2009-03-19','C1','P1');
INSERT INTO Location VALUES ('V3','2009-04-12','C3','P2');
INSERT INTO Location VALUES ('V3','2009-04-17','C4','P2');
INSERT INTO Location VALUES ('V5','2009-03-01','C1','P2');
INSERT INTO Location VALUES ('V5','2009-03-12','C4','P2');



