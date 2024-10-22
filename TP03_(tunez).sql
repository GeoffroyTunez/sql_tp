ALTER TABLE Article ADD CONSTRAINT FK_fournisseur_article FOREIGN KEY (id_fou) REFERENCES Fournisseur(id);

ALTER TABLE Bon ADD CONSTRAINT FK_fournisseur_bon FOREIGN KEY (id_fou) REFERENCES Fournisseur(id);

ALTER TABLE Compo ADD CONSTRAINT FK_article_bon FOREIGN KEY (id_art) REFERENCES Article(id);

ALTER TABLE Compo ADD CONSTRAINT FK_bon_compo FOREIGN KEY (id_bon) REFERENCES Bon(id);

INSERT INTO Fournisseur (id, nom) VALUES (NULL, 'Française D\'Imports'), (NULL, 'FDM SA'), (NULL, 'Dubois & Fils');

INSERT INTO 'Article' ('id', 'ref', 'designation', 'prix', 'id_fou') VALUES (NULL, 'A01', 'Perceuse P1', '74.99', '1'), (NULL, 'F01', 'Boulon laiton 4 x 40MM (sachet de 10)', '2.25', '2'), (NULL, 'F02', 'Boulon laiton 5 x 40MM (sachet de 10)', '4.45', '2'), (NULL, 'D01', 'Boulon laiton 6 x 40MM (sachet de 10)', '4.40', '3'), (NULL, 'A02', 'Meuleuse 125mm', '37.85', '1'), (NULL, 'D03', 'Boulon acier zingué 4 x 40mm (sachet de 10)', '1.8', '3'), (NULL, 'A03', 'Perceuse à solonne', '185.25', '1'), (NULL, 'D04', 'Coffret mêches à bois', '12.25', '3'), (NULL, 'F03', 'Coffret mêches plates', '6.25', '2'), (NULL, 'F04', 'Fraises d\'encastrement', '8.14', '2');

INSERT INTO 'Bon' ('id', 'numero', 'date_cmde', 'delai', 'id_fou') VALUES (NULL, '1', '2024-10-21', '3j', '1');

INSERT INTO 'Compo' ('id', 'qte', 'id_art', 'id_bon') VALUES (NULL, '3', '1', '1'), (NULL, '4', '5', '1'), (NULL, '1', '7', '1') ;

