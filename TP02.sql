INSERT INTO fournisseur (ID, NOM) VALUES (1, 'Française d Imports');
INSERT INTO fournisseur (ID, NOM) VALUES (2, 'FDM SA');
INSERT INTO fournisseur (ID, NOM) VALUES (3, 'Dubois & Fils');     

INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (1, 'A01', 'Perceuse P1', 74,99, 1);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (2, 'F01', 'Boulon laiton 4x40mm (sachet de 10)', 2,25, 2);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (3, 'F02', 'Boulon laiton 5x40mm (sachet de 10)', 4,45, 2);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (4, 'D01', 'Boulon laiton 5x40mm (sachet de 10)', 4,40, 3);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (5, 'A02', 'Meuleuse 125mm', 37,85, 1);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (6, 'D03', 'Boulon acier zingué 4x40mm (sachet de 10)', 1,80, 3);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (7, 'A03', 'Perceuse à colonne', 185,25, 1);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (8, 'D04', 'Coffret mèches à bois', 12,25, 3);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (9, 'F03', 'Coffret mèches plates', 6,25, 2);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) VALUES (10, 'F01', 'Fraise d encastrement', 8,14, 2);

INSERT INTO bon (ID, NUMERO, DATE_CMDE, DELAI, ID_FOU) VALUES (1, 001,'2025-04-14 14:48:00', 3, 1);
INSERT INTO compo (ID_ART, ID_BON, QTE) VALUES (1, 1, 3);
INSERT INTO compo (ID_ART, ID_BON, QTE) VALUES (5, 1, 4);
INSERT INTO compo (ID_ART, ID_BON, QTE) VALUES (7, 1, 1);