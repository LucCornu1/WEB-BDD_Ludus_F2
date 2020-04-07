SELECT Ville, Designation, produit.numproduit, Prix_HT*qCommande FROM Client, Commande, Detail, Produit
WHERE Client.numClient = Commande.numClient AND Commande.numCommande = Detail.numCommande AND Detail.numProd = Produit.numProd
GROUP BY Ville, Produit.numProd

#requête pour avoir le chiffre d'affaire