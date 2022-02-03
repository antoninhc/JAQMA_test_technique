
select SUM(p.prix_produit * (-ms.quantite_mouvement)) as "Chiffre d’affaires de Haribo chez Leclerc"

from stock_produit_magasin s
INNER JOIN fournisseur f ON f.nom_fournisseur = 'HARIBO'
INNER JOIN produit p ON p.id_produit = s.id_produit
INNER JOIN fournisseur_produit fp ON fp.id_produit = p.id_produit AND fp.id_fournisseur = f.id_fournisseur
INNER JOIN magasin m ON m.id_magasin = s.id_magasin
INNER JOIN mouvement_stock ms ON ms.id_produit = p.id_produit AND ms.id_magasin = m.id_magasin
   WHERE  ms.quantite_mouvement < 0
    AND m.id_enseigne IN(
        SELECT e.id_enseigne from enseigne e WHERE e.nom_enseigne = 'LECLERC'
    );