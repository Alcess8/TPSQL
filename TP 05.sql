SET SQL_SAFE_UPDATES=0
-- a. Mettez en minuscules la désignation de l'article dont l'identifiant est 2
UPDATE article
SET designation = LOWER(designation)
WHERE id = 2;
-- b. Mettez en majuscules les désignations de tous les articles dont le prix est strictement supérieur à 10€
UPDATE article
SET designation = UPPER(designation)
WHERE prix >10;
-- c. Baissez de 10% le prix de tous les articles qui n'ont pas fait l'objet d'une commande.
UPDATE article 
SET prix = prix*0.9
WHERE article.id NOT IN (SELECT id_art FROM compo)
-- d. Une erreur s'est glissée dans les commandes concernant Française d'imports. Les chiffres en base ne sont pas bons. Il faut doubler les quantités de tous les articles commandés à cette société.
--méthode sans 
UPDATE compo  
SET qte = qte*2
WHERE id_bon IN (SELECT id 
    FROM bon
    WHERE bon.id_fou=1
);
--méthode avec jointure 
UPDATE compo  
SET qte = qte*2
WHERE id_bon IN 
    (SELECT bon.id
    FROM bon
    JOIN fournisseur ON bon.id_fou = fournisseur.id
    WHERE fournisseur.bom = 'Francaise d''import'
);
-- e. Mettez au point une requête update qui permette de supprimer les éléments entre parenthèses dans les désignations. Il vous faudra utiliser des fonctions comme substring et position.
UPDATE article
SET designation = SUBSTRING(designation, 1, POSITION('('IN designation), -1)
WHERE POSITION('('IN designation) > 0;