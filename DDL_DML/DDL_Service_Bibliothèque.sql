DROP DATABASE IF EXISTS Service_Bibliothèque; #Suppression de la database si elle existe déjà
CREATE DATABASE IF NOT EXISTS Service_Bibliothèque; #Création de la database si elle n'existe pas

use Service_Bibliothèque; #Utilisation de la table en question

DROP TABLE IF EXISTS Service; #Suppression de la table si elle existe déjà
CREATE TABLE Service(
	nomService varchar(50) not null,
	Localisation varchar(100),
	primary key(nomService) #nomService est une clef primaire
)
Engine=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

DROP TABLE IF EXISTS Employe; #Suppression de la table si elle existe déjà
CREATE TABLE Employe(
	idEmploye int not null,
	nomEmploye varchar(50) not null,
	adresseEmploye varchar(50),
	nomService varchar(50) not null,
	primary key(idEmploye), #idEmploye est une clef primaire
	foreign key(nomService) REFERENCES Service(nomService) #nomService est une clef étrangère
)
Engine=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

DROP TABLE IF EXISTS Auteur; #Suppression de la table si elle existe déjà
CREATE TABLE Auteur(
	pseudoAuteur varchar(50) not null,
	nomAuteur varchar(50),
	dateNaissance date not null,
	dateMort date,
	primary key(pseudoAuteur) #pseudoAuteur est une clef primaire
)
Engine=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

DROP TABLE IF EXISTS Ouvrage; #Suppression de la table si elle existe déjà
CREATE TABLE Ouvrage(
	ISBN varchar(13) not null,
	Titre varchar(50) not null,
	Prix date,
	pseudoAuteur varchar(50) not null,
	primary key(ISBN), #ISBN est une clef primaire
	foreign key(pseudoAuteur) REFERENCES Auteur(pseudoAuteur) #pseudoAuteur est une clef étrangère
)
Engine=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

DROP TABLE IF EXISTS Exemplaire; #Suppression de la table si elle existe déjà
CREATE TABLE Exemplaire(
	idExemplaire int not null,
	dateAchat varchar(50),
	ISBN varchar(13) not null,
	primary key(idExemplaire), #idExemplaire est une clef primaire
	foreign key(ISBN) REFERENCES Ouvrage(ISBN) #ISBN est une clef étrangère
)
Engine=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

DROP TABLE IF EXISTS Emprunt; #Suppression de la table si elle existe déjà
CREATE TABLE Emprunt(
	idEmprunt int not null,
	dateDebut date not null,
	dateFin date,
	idEmploye int not null,
	idExemplaire int not null,
	primary key(idEmprunt), #idExemplaire est une clef primaire
	foreign key(idEmploye) REFERENCES Employe(idEmploye), #idEmploye est une clef étrangère
	foreign key(idExemplaire) REFERENCES Exemplaire(idExemplaire) #idExemplaire est une clef étrangère
)
Engine=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;