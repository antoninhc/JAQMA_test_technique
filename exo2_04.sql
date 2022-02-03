SET @id_magasin = 3;
SET @id_produit = 17;
SET @quantite_mouvement = -200;


INSERT INTO mouvement_stock (id_produit, id_magasin, quantite_mouvement) VALUES
                          (@id_produit, @id_magasin, @quantite_mouvement);

UPDATE stock_produit_magasin
SET stock = stock + @quantite_mouvement
WHERE id_magasin = @id_magasin AND id_produit = @id_produit;


