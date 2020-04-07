INSERT INTO Service(nomService, Localisation)
VALUES
	("Secretariat", "42 rue des chaises"),
	("Production", "42 rue des chaises"),
	("Informatique", NULL);

INSERT INTO Employe(idEmploye, nomEmploye, adresseEmploye, nomService)
VALUES
	(1, "CORNU Luc", "56 rue des chaises", "Informatique"),
	(2, "PIOU Gaëtan", "4 rue des artichauds", "Informatique"),
	(3, "STECKEL Nicolas", NULL, "Production"),
	(4, "ZIEGELTRUM Joffrey", "123 rue de machin", "Secretariat");

INSERT INTO Auteur(pseudoAuteur, nomAuteur, dateNaissance, dateMort)
VALUES
	("Derek", NULL, STR_TO_DATE("05 January 1986", "%d %M %Y"), NULL),
	("Sieur Jaaj", "Philippe", STR_TO_DATE("26 June 1991", "%d %M %Y"), STR_TO_DATE("26 June 2011", "%d %M %Y")),
	("Wang", NULL, STR_TO_DATE("01 October 1979", "%d %M %Y"), NULL);

INSERT INTO Ouvrage(ISBN, Titre, Prix, pseudoAuteur)
VALUES
	("bn15935322048", "L'Art de perdre son bras", 100, "Wang"),
	("bx15541551248", "De la production à la vente", 60, "Derek"),
	("cv12589845841", "Les baleines", 50, "Derek");

INSERT INTO Exemplaire(idExemplaire, dateAchat, ISBN)
VALUES
	(1, STR_TO_DATE("06 January 2013", "%d %M %Y"), "bx15541551248"),
	(2, STR_TO_DATE("21 December 2016", "%d %M %Y"), "bx15541551248"),
	(3, STR_TO_DATE("21 December 2016", "%d %M %Y"), "bx15541551248"),
	(4, STR_TO_DATE("19 May 2019", "%d %M %Y"), "bn15935322048");

INSERT INTO Emprunt(idEmprunt, dateDebut, dateFin, idEmploye, idExemplaire)
VALUES
	(1, STR_TO_DATE("07 January 2014", "%d %M %Y"), STR_TO_DATE("13 January 2014", "%d %M %Y"), 1, 4),
	(2, STR_TO_DATE("07 January 2017", "%d %M %Y"), STR_TO_DATE("26 June 2018", "%d %M %Y"), 2, 3),
	(3, STR_TO_DATE("27 July 2018", "%d %M %Y"), STR_TO_DATE("27 August 2018", "%d %M %Y"), 3, 3),
	(4, STR_TO_DATE("27 July 2018", "%d %M %Y"), STR_TO_DATE("27 August 2018", "%d %M %Y"), 3, 1);