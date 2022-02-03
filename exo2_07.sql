SET @id_magasin = 1;
SET @id_produit = 2;

SELECT CONCAT(e.nom_enseigne, ' ', m.adresse_magasin, ' ', m.ville_magasin,' ', m.codepostal_magasin) as "Information du magasin",
       CONCAT(p.libelle_produit, ' à ', p.prix_produit, '€') as "Information produit",
       ms.quantite_mouvement as "Quantité de mouvement",
       IF(ms.quantite_mouvement <0, CONCAT("Vente ", ROUND(ms.quantite_mouvement*p.prix_produit*-1)) , CONCAT("Achat ", ROUND(ms.quantite_mouvement*p.prix_produit))) as "Chiffre d'affaire",
       DATE_FORMAT(ms.date_mouvement, 'Le %d/%m/%Y à %H:%i')
       FROM mouvement_stock ms
       INNER JOIN magasin m ON m.id_magasin = ms.id_magasin AND m.id_magasin = @id_magasin
       INNER JOIN enseigne e ON e.id_enseigne = m.id_enseigne
       INNER JOIN produit p ON p.id_produit = ms.id_produit AND p.id_produit = @id_produit
       WHERE e.nom_enseigne = 'SUPER U' ;