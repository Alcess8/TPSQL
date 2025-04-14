// Listez toutes les données concernant les articles :
SELECT *
FROM article;

// Listez uniquement les références et désignations des articles de plus de 2 € :
SELECT ref, designation 
FROM article 
WHERE prix > 2;
WHERE prix > 2;

// En utilisant les opérateurs de comparaison ,listez tous les articles dont le prix est compris entre 2 et 6.25 € :
SELECT *
FROM article
WHERE prix BETWEEN 2 AND 6.5;

// Listez tous les articles dans l'ordre des prix descendants et dont le prix n'est pas compris entre 2 et 6.25€ et dont le forunisseur est Français d'Import:
SELECT *
FROM article
WHERE prix NOT BETWEEN 2 AND 6.25
AND id-fou = 1
ORDER BY prix DESC;


// En utilisant un opérateur logique, listez tous les articles dont les fournisseurs sont la
Française d’imports ou Dubois et Fils :
SELECT *
FROM article
WHERE id_fou =1 OR id_fou = 3;


// En utilisant l’opérateur IN, réalisez la même requête que précédemment :
SELECT *
FROM article
WHERE id_fou IN (1,3);


// En utilisant les opérateurs NOT et IN, listez tous les articles dont les fournisseurs ne
sont ni Française d’Imports, ni Dubois et Fils.

SELECT *
FROM article
WHERE id_fou NOT IN (1,3);



// Listez tous les bons de commande dont la date de commande est entre le
01-02-2019 et le 30-04-2019.

SELECT *
FROM bon
WHERE date_cmde BETWEEN '2019-02-01' AND '2019-04-30';
