DROP DATABASE IF EXISTS Service_Bibliothèque;
CREATE DATABASE IF NOT EXISTS Service_Bibliothèque;

use Service_Bibliothèque;

DROP TABLE IF EXISTS Service,
CREATE TABLE Service(
	nomService varchar(50) not null,
	Localisation varchar(100),
	primary key(nomService)
)
Engine=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

DROP TABLE IF EXISTS Employe,
CREATE TABLE Employe(
	idEmploye int not null,
	nomEmploye varchar(50) not null,
	adresseEmploye varchar(50),
	nomService varchar(50) not null,
	primary key(idEmploye),
	foreign key(nomService) REFERENCES Service(nomService)
)
Engine=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

DROP TABLE IF EXISTS Auteur,
CREATE TABLE Auteur(
	pseudoAuteur varchar(50) not null,
	nomAuteur varchar(50),
	dateNaissance date not null,
	dateMort date,
	primary key(pseudoAuteur)
)
Engine=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

DROP TABLE IF EXISTS Ouvrage,
CREATE TABLE Ouvrage(
	ISBN varchar(13) not null,
	Titre varchar(50) not null,
	Prix date,
	pseudoAuteur varchar(50) not null,
	primary key(ISBN),
	foreign key(pseudoAuteur) REFERENCES Auteur(pseudoAuteur)
)
Engine=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

DROP TABLE IF EXISTS Exemplaire,
CREATE TABLE Exemplaire(
	idExemplaire int not null,
	dateAchat varchar(50),
	ISBN varchar(13) not null,
	primary key(idExemplaire),
	foreign key(ISBN) REFERENCES Ouvrage(ISBN)
)
Engine=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

DROP TABLE IF EXISTS Emprunt,
CREATE TABLE Emprunt(
	idEmprunt int not null,
	dateDebut date not null,
	dateFin date,
	idEmploye int not null,
	idExemplaire int not null,
	primary key(idEmprunt),
	foreign key(idEmploye) REFERENCES Employe(idEmploye),
	foreign key(idExemplaire) REFERENCES Exemplaire(idExemplaire)
)
Engine=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;