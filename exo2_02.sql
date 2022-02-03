
select p.libelle_produit, ms.quantite_mouvement, ms.date_mouvement

from stock_produit_magasin s
INNER JOIN magasin m ON m.id_magasin = s.id_magasin
INNER JOIN produit p ON p.id_produit = s.id_produit
INNER JOIN mouvement_stock ms ON ms.id_produit = p.id_produit AND ms.id_magasin = m.id_magasin
INNER JOIN fournisseur_produit fp ON fp.id_produit = p.id_produit
INNER JOIN fournisseur f ON f.id_fournisseur = fp.id_fournisseur
    WHERE f.nom_fournisseur = 'LU'
    AND m.id_enseigne IN(
        SELECT e.id_enseigne from enseigne e WHERE e.nom_enseigne = 'AUCHAN'
    );