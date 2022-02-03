
select s.stock,m.ville_magasin, p.libelle_produit

from stock_produit_magasin s
INNER JOIN magasin m ON m.id_magasin = s.id_magasin
INNER JOIN produit p ON p.id_produit = s.id_produit
INNER JOIN fournisseur_produit fp ON fp.id_produit = p.id_produit
INNER JOIN fournisseur f ON f.id_fournisseur = fp.id_fournisseur
    WHERE f.nom_fournisseur = 'NUTELLA'
    AND m.id_enseigne IN(
        SELECT e.id_enseigne from enseigne e WHERE e.nom_enseigne = 'LECLERC'
    );

