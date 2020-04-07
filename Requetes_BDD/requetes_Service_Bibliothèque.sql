SELECT * FROM Auteur;

SELECT * FROM Employe;

SELECT * FROM Ouvrage;

SELECT * FROM Emprunt;

SELECT nomEmploye FROM Employe WHERE idEmploye = 1;

SELECT nomEmploye FROM Employe WHERE adresseEmploye = NULL; #Permet de trouver les employés qui n'ont pas donnés leurs adresses

SELECT nomEmploye, idEmploye FROM Employe WHERE idEmploye IN (SELECT idEmploye FROM Emprunt); #Permet de trouver les employés ayant déjà fait un ou plusieurs emprunts

SELECT Employe.nomEmploye, Employe.idEmploye, Ouvrage.Titre FROM Employe, Ouvrage WHERE Employe.idEmploye IN (SELECT idEmploye FROM Emprunt WHERE dateFin = NULL); #Permet de trouver les employés qui n'ont pas rendus leurs livres

SELECT pseudoAuteur, Titre FROM Ouvrage WHERE Prix > 70; #Permet de trouver les livres ayant coûtés plus de 70€ à la bibliothèque

SELECT * FROM Auteur WHERE dateMort = NULL; #Permet de trouver les auteurs n'étant pas encore mort (pour un autographe)