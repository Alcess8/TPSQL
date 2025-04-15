SET SQL_SAFE_UPDATES=0
-- a. Supprimer dans la table compo toutes les lignes concernant les bons de commande d'avril 2019
DELETE FROM compo
WHERE id_bon IN5
SELECT id
FROM bon
WHERE MONTH(date_cmde) = 4 AND YEAR(date_cmde) = 2019
-- b. Supprimer dans la table bon tous les bons de commande d'avril 2019.
DELETE FROM compo 
WHERE id_bon IN ( 
    SELECT id FROM bon 
    WHERE bon.DATE_CMDE BETWEEN '2019/04/01' AND '2019/04/30'
);