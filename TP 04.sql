-- a. Listez les articles dans l'ordre alphabétique des désignations
SELECT *
FROM article
ORDER BY designation
-- b. Listez les articles dans l'ordre des prix du plus élevé au moins élevé
SELECT *
FROM article 
ORDER BY prix DESC
-- c. Listez tous les articles qui sont des « boulons » et triez les résultats par ordre de prix ascendant
SELECT *
FROM article 
WHERE designation LIKE'%boulon%'
ORDER BY prix
-- d. Listez tous les articles dont la désignation contient le mot « sachet ».
SELECT * 
FROM article 
WHERE designation LIKE '%sachets%';
-- e. Listez tous les articles dont la désignation contient le mot « sachet » indépendamment de la casse !
SELECT * 
FROM article 
WHERE LOWER(designation) LIKE LOWER('%sachet%');
-- f. Listez les articles avec les informations fournisseur correspondantes. Les résultats doivent être triées dans l'ordre alphabétique des fournisseurs et par article du prix le plus élevé au moins élevé.
SELECT * 
FROM article, fournisseur 
WHERE article.id_fou=fournisseur.id 
ORDER BY nom ASC, prix DESC;
-- g. Listez les articles de la société « Dubois & Fils »
SELECT * 
FROM article, fournisseur 
WHERE article.id_fou=fournisseur.id AND id_fou=3;
-- h. Calculez la moyenne des prix des articles de la société « Dubois & Fils »
SELECT nom, AVG (prix) AS moyenne
FROM article, fournisseur 
WHERE article.id_fou=fournisseur.id AND id_fou=3
GROUP BY nom
-- i. Calculez la moyenne des prix des articles de chaque fournisseur
SELECT nom, AVG (prix) AS moyenne 
FROM article, fournisseur 
WHERE article.id_fou=fournisseur.id 
GROUP BY nom;
-- j. Sélectionnez tous les bons de commandes émis entre le 01/03/2019 et le 05/04/2019 à 12h00.
SELECT * 
FROM bon 
WHERE date_cmde BETWEEN '2019/03/01' AND '2019/04/05 12:00:00';
-- k. Sélectionnez les divers bons de commande qui contiennent des boulons
SELECT * 
FROM bon, compo, article 
WHERE bon.id=compo.id_bon AND article.id=compo.ID_ART AND article.DESIGNATION LIKE '%boulon%';
-- l. Sélectionnez les divers bons de commande qui contiennent des boulons avec le nom du fournisseur associé.
SELECT bon.NUMERO, fournisseur.NOM, article.DESIGNATION 
FROM bon, compo, article, fournisseur 
WHERE bon.id=compo.id_bon AND article.id=compo.ID_ART AND bon.id_fou=fournisseur.id AND article.DESIGNATION LIKE '%boulon%';
-- m. Calculez le prix total de chaque bon de commande
SELECT bon.NUMERO, SUM(prix*qte) 
FROM bon, compo, article 
WHERE bon.id=compo.id_bon AND article.id=compo.ID_ART 
GROUP BY bon.NUMERO;
-- n. Comptez le nombre d'articles de chaque bon de commande
SELECT bon.NUMERO, SUM(qte) 
FROM bon, compo, article 
WHERE bon.id=compo.id_bon AND article.id=compo.ID_ART 
GROUP BY bon.NUMERO;
-- o. Affichez les numéros de bons de commande qui contiennent plus de 25 articles et affichez le nombre d'articles de chacun de ces bons de commande
SELECT bon.NUMERO, SUM(compo.QTE) 
FROM bon, compo WHERE bon.id=compo.id_bon 
GROUP BY bon.NUMERO HAVING SUM(compo.QTE) >=25;
-- p. Calculez le coût total des commandes effectuées sur le mois d'avril
SELECT SUM(prix*qte) 
FROM bon, compo, article 
WHERE bon.id=compo.id_bon AND article.id=compo.ID_ART AND date_cmde BETWEEN '2019/04/01' AND '2019/04/31 12:00:00';