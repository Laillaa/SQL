-- Génération des données pour la table batiment
INSERT INTO batiment(id_batiment, adresse) VALUES
(1, "123 Main Street"),
(2, "456 Elm Avenue"),
(3, "789 Oak Drive"),
(4, "101 Pine Lane"),
(5, "567 Maple Court");

-- Génération des données pour la table humain
INSERT INTO humain (id_humain, nom, prenom) VALUES
(1, 'Dupont', 'Jean'),
(2, 'Martin', 'Marie'),
(3, 'Dubois', 'Pierre'),
(4, 'Lefevre', 'Sophie'),
(5, 'Moreau', 'Luc'),
(6, 'Fontaine', 'Isabelle'),
(7, 'Girard', 'Paul'),
(8, 'Roux', 'Claire'),
(9, 'Bertrand', 'Thomas'),
(10, 'Leroy', 'Julie'),
(11, 'Morel', 'Antoine'),
(12, 'Fournier', 'Valérie'),
(13, 'Garcia', 'Alexandre'),
(14, 'Rodriguez', 'Charlotte'),
(15, 'Martinez', 'Mathieu'),
(16, 'Laurent', 'Camille'),
(17, 'Lambert', 'Gabriel'),
(18, 'Simon', 'Léa'),
(19, 'Rousseau', 'Lucas'),
(20, 'Petit', 'Manon'),
(21, 'Blanc', 'Hugo'),
(22, 'Richard', 'Margaux'),
(23, 'Leroy', 'Arthur'),
(24, 'Faure', 'Juliette'),
(25, 'Gauthier', 'Louis'),
(26, 'Garnia', 'Thomas'),
(27, 'Martel', 'Sophie'),
(28, 'Berger', 'Maxime'),
(29, 'Renaud', 'Clara'),
(30, 'Perrot', 'Baptise');

-- Génération des données pour la table employe
INSERT INTO employe (id_employe, nom, prenom, specialisation) VALUES
(1, 'Dupont', 'Jean', 'Médecin'),
(2, 'Martin', 'Marie', 'Infirmier'),
(3, 'Dubois', 'Pierre', 'Technicien de laboratoire'),
(4, 'Lefevre', 'Sophie', 'Chercheur'),
(5, 'Moreau', 'Luc', 'Pharmacien'),
(6, 'Fontaine', 'Isabelle', 'Médecin'),
(7, 'Girard', 'Paul', 'Infirmier'),
(8, 'Roux', 'Claire', 'Technicien de laboratoire'),
(9, 'Bertrand', 'Thomas', 'Chercheur'),
(10, 'Leroy', 'Julie', 'Pharmacien'),
(11, 'Morel', 'Antoine', 'Médecin'),
(12, 'Fournier', 'Valérie', 'Infirmier'),
(13, 'Garcia', 'Alexandre', 'Technicien de laboratoire'),
(14, 'Rodriguez', 'Charlotte', 'Chercheur'),
(15, 'Martinez', 'Mathieu', 'Pharmacien');

-- Génération des données pour la table client
INSERT INTO client (id_client, id_humain, nom, prenom, adresse) VALUES
(1, 16, 'Laurent', 'Camille', '123 Rue de la Santé'),
(2, 17, 'Lambert', 'Gabriel', '456 Avenue des Soins'),
(3, 18, 'Simon', 'Léa', '789 Boulevard de la Médecine'),
(4, 19, 'Rousseau', 'Lucas', '1011 Rue du Laboratoire'),
(5, 20, 'Petit', 'Manon', '1213 Avenue de la Pharmacie'),
(6, 21, 'Blanc', 'Hugo', '1415 Boulevard de la Recherche'),
(7, 22, 'Richard', 'Margaux', '1617 Rue de la Guérison'),
(8, 23, 'Leroy', 'Arthur', '1819 Avenue de la Santé'),
(9, 24, 'Faure', 'Juliette', '2021 Boulevard des Soins'),
(10, 25, 'Gauthier', 'Louis', '2223 Rue de la Médecine'),
(11, 26, 'Garnia', 'Thomas', '2425 Avenue du Laboratoire'),
(12, 27, 'Martel', 'Sophie', '2627 Boulevard de la Pharmacie'),
(13, 28, 'Berger', 'Maxime', '2829 Rue de la Recherche'),
(14, 29, 'Renaud', 'Clara', '3031 Avenue de la Guérison'),
(15, 30, 'Perrot', 'Baptise', '3233 Boulevard de la Santé');

-- Génération des données pour la table dossier_medical
INSERT INTO dossier_medical (id_dossier_medical, id_client, id_genome, maladies, allergies, maladies_parent1, allergies_parent1, maladies_parent2, allergies_parent2) VALUES
(1, 1, 'ADN001', 'Immunodeficience combinee severe', 'Oeufs', 'Immunodeficience combinee severe', 'Oeufs', 'Immunodeficience combinee severe', 'Oeufs'),
(2, 2, 'ADN002', 'Syndrome de Guillain-Barre', 'Arachides', 'Syndrome de Guillain-Barre', 'Arachides', 'Syndrome de Guillain-Barre', 'Arachides'),
(3, 3, 'ADN003', 'Grossesse', 'Fruits de mer', 'Grossesse', 'Fruits de mer', 'Grossesse', 'Fruits de mer'),
(4, 4, 'ADN004', 'Maladie Pulmonaire Obstructive Chronique', 'Antibiotiques', 'Maladie Pulmonaire Obstructive Chronique', 'Antibiotiques', 'Maladie Pulmonaire Obstructive Chronique', 'Antibiotiques'),
(5, 5, 'ADN005', 'Transplantation dorgane', 'Produits laitiers', 'Transplantation dorgane', 'Produits laitiers', 'Transplantation dorgane', 'Produits laitiers'),
(6, 6, 'ADN006', 'Insuffisance renale terminale', 'Noix', 'Insuffisance renale terminale', 'Noix', 'Insuffisance renale terminale', 'Noix'),
(7, 7, 'ADN007', 'Cirrhose', 'Soja', 'Cirrhose', 'Soja', 'Cirrhose', 'Soja'),
(8, 8, 'ADN008', 'Chimiotherapie ou radiotherapie pour le cancer', 'Latex', 'Chimiotherapie ou radiotherapie pour le cancer', 'Latex', 'Chimiotherapie ou radiotherapie pour le cancer', 'Latex'),
(9, 9, 'ADN009', 'Maladies auto-immunes', 'Medicaments anti-inflammatoires non steroidiens', 'Maladies auto-immunes', 'Medicaments anti-inflammatoires non steroidiens', 'Maladies auto-immunes', 'Medicaments anti-inflammatoires non steroidiens'),
(10, 10, 'ADN010', 'Epilepsie', 'Sulfites', 'Epilepsie', 'Sulfites', 'Epilepsie', 'Sulfites'),
(11, 11, 'ADN011', 'Immunodeficience combinee severe', 'Arachides', 'Epilepsie', 'Arachides', 'Immunodeficience combinee severe', 'Sulfites'),
(12, 12, 'ADN012', 'Epilepsie', 'Soja', 'Epilepsie', 'Sulfites', 'Epilepsie', 'Soja'),
(13, 13, 'ADN013', 'Cirrhose', 'Oeufs', 'Cirrhose', 'Oeufs', 'Cirrhose', 'Oeufs' ),
(14, 14, 'ADN014', 'Insuffisance renale terminale', 'Produits laitiers', 'Grossesse', 'Sulfites', 'Insuffisance renale terminale', 'Produits laitiers'),
(15, 15, 'ADN015', 'Grossesse', 'Noix', 'Epilepsie','Noix', 'Epilepsie' , 'Soja');

-- Génération des données pour la table vaccin
INSERT INTO vaccin (id_vaccin, id_client, nom, prix, type, dosage) VALUES
(1, 1, 'Vaccin A', 50, 'Injection', 0.5),
(2, 2, 'Vaccin B', 60, 'Injection', 0.7),
(3, 3, 'Vaccin C', 70, 'Injection', 0.8),
(4, 4, 'Vaccin D', 80, 'Injection', 1.0),
(5, 5, 'Vaccin E', 90, 'Injection', NULL),
(6, 6, 'Vaccin F', 100, 'Injection', NULL),
(7, 7, 'Vaccin G', 110, 'Injection', 2.0),
(8, 8, 'Vaccin H', 120, 'Injection', NULL),
(9, 9, 'Vaccin I', 130, 'Injection', NULL),
(10, 10, 'Vaccin J', 140, 'Injection', NULL),
(11, 11, 'Vaccin K', 100, 'Injection', 1.5),
(12, 12, 'Vaccin L', 150, 'Injection', 4.0),
(13, 13, 'Vaccin M', 75, 'Injection', 0.9),
(14, 14, 'Vaccin N', 90, 'Injection', 1.2),
(15, 15, 'Vaccin O', 115, 'Injection', 2.2);

-- Génération des données pour la table commande_client
INSERT INTO commande_client (id_commande, id_client, adresse_client, date_commande) VALUES
(1, 1, '123 Rue de la Santé', '2020-07-01'),
(2, 2, '456 Avenue des Soins', '2020-06-04'),
(3, 3, '789 Boulevard de la Médecine', '2020-12-15'),
(4, 4, '1011 Rue du Laboratoire', '2021-03-03'),
(5, 5, '1213 Avenue de la Pharmacie', '2021-09-20'),
(6, 6, '1415 Boulevard de la Recherche', '2021-11-27'),
(7, 7, '1617 Rue de la Guérison', '2019-11-11'),
(8, 8, '1819 Avenue de la Santé', '2019-11-23'),
(9, 9, '2021 Boulevard des Soins', '2020-05-24'),
(10, 10, '2223 Rue de la Médecine', '2022-08-25'),
(11, 11, '2425 Avenue du Laboratoire', '2023-06-26'),
(12, 12, '2627 Boulevard de la Pharmacie', '2020-07-27'),
(13, 13, '2829 Rue de la Recherche', '2022-08-28'),
(14, 14, '3031 Avenue de la Guérison', '2024-02-29'),
(15, 15, '3233 Boulevard de la Santé', '2021-03-30');

-- Génération des données pour la table composant
INSERT INTO composant (id_composant, id_vaccin, formule) VALUES
(1, 1, 'Formule A'),
(2, 2, 'Formule B'),
(3, 3, 'Formule C'),
(4, 4, 'Formule D'),
(5, 5, 'Formule E'),
(6, 6, 'Formule F'),
(7, 7, 'Formule G'),
(8, 8, 'Formule H'),
(9, 9, 'Formule I'),
(10, 10, 'Formule J');

-- Génération des données pour la table stock
INSERT INTO stock (id_stock, id_composant, id_batiment, stock) VALUES
(1, 1, 1, '100'),
(2, 2, 2, '150'),
(3, 3, 3, '200'),
(4, 4, 4, '250'),
(5, 5, 5, '300'),
(6, 6, 1, '350'),
(7, 7, 2, '400'),
(8, 8, 3, '450'),
(9, 9, 4, '500'),
(10, 10, 5, '550');

-- Génération des données pour la table fournisseur
INSERT INTO fournisseur (id_fournisseur, NOM, ADRESSE) VALUES
(1, 'Fournisseur A', '123 Rue des Fournitures'),
(2, 'Fournisseur B', '456 Avenue des Approvisionnements'),
(3, 'Fournisseur C', '789 Boulevard des Livraisons'),
(4, 'Fournisseur D', '1011 Rue des Stocks'),
(5, 'Fournisseur E', '1213 Avenue des Produits'),
(6, 'Fournisseur F', '1415 Boulevard des Commandes'),
(7, 'Fournisseur G', '1617 Rue des Approvisionnements'),
(8, 'Fournisseur H', '1819 Avenue des Livraisons'),
(9, 'Fournisseur I', '2021 Boulevard des Stocks'),
(10, 'Fournisseur J', '2223 Rue des Produits');

-- Génération des données pour la table commande_composant
INSERT INTO commande_composant (id_commande_composant, id_composant, id_fournisseur, quantite) VALUES
(1, 1, 1, 100),
(2, 2, 2, 150),
(3, 3, 3, 200),
(4, 4, 4, 250),
(5, 5, 5, 300),
(6, 6, 6, 350),
(7, 7, 7, 400),
(8, 8, 8, 450),
(9, 9, 9, 500),
(10, 10, 10, 550);

-- Génération des données pour la table machine
INSERT INTO machine (id_machine, id_batiment) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5);


-- Génération des données pour la table chercheur
INSERT INTO chercheur (id_employe, nom, prenom, specialisation) VALUES
(4, 'Lefevre', 'Sophie', 'Chercheur'),
(9, 'Bertrand', 'Thomas', 'Chercheur'),
(14, 'Rodriguez', 'Charlotte', 'Chercheur');

-- Génération des données pour la table technicien_labo
INSERT INTO technicien_labo (id_employe, nom, prenom, specialisation) VALUES
(3, 'Dubois', 'Pierre', 'Technicien de laboratoire'),
(8, 'Roux', 'Claire', 'Technicien de laboratoire'),
(13, 'Garcia', 'Alexandre', 'Technicien de laboratoire');

-- Génération des données pour la table prestataire_soin_sante
INSERT INTO prestataire_soin_sante (id_employe, nom, prenom, specialisation) VALUES
(2, 'Martin', 'Marie', 'Infirmier'),
(7, 'Girard', 'Paul', 'Infirmier'),
(12, 'Fournier', 'Valérie', 'Infirmier');

-- Génération des données pour la table personnel_sante
INSERT INTO personnel_sante (id_employe, nom, prenom, specialisation) VALUES
(1, 'Dupont', 'Jean', 'Médecin'),
(5, 'Moreau', 'Luc', 'Pharmacien'),
(6, 'Fontaine', 'Isabelle', 'Médecin'),
(10, 'Leroy', 'Julie', 'Pharmacien'),
(11, 'Morel', 'Antoine', 'Médecin'),
(15, 'Martinez', 'Mathieu', 'Pharmacien');

INSERT INTO controle_technique(id_controle_technique, id_vaccin, nom_responsable, rapport) VALUES
(1,1, 'Adrien Dubois', 'RAP001'),
(2,2, 'Céleste Renaul' , 'RAP002'),
(3,3, 'Émile Fontaine', 'RAP003'),
(4,4, 'Anaïs Mercier', 'RAP004'),
(5,5, 'Quentin Lefevre', 'RAP005'),
(6,6, 'Émile Fontaine', 'RAP006' ),
(7,7, 'Céleste Renault', 'RAP007'),
(8,8, 'Adrien Dubois','RAP008'),
(9,9, 'Émile Fontaine', 'RAP009'),
(10,10, 'Quentin Lefevre', 'RAP010'),
(11,11, 'Émile Fontaine', 'RAP011'),
(12,12, 'Anaïs Mercier', 'RAP012'),
(13,13, 'Adrien Dubois', 'RAP013'),
(14,14, 'Céleste Renault', 'RAP014'),
(15,15, 'Quentin Lefevre', 'RAP015');

INSERT INTO eval_pre_vaccin (id_eval_pre, id_vaccin, id_client, resultat, date_eval) VALUES 
(1, 1, 1, TRUE, '2020-07-22'),
(2, 2, 2, TRUE, '2020-06-25'),
(3, 3, 3, TRUE, '2021-01-08'),
(4, 4, 4, TRUE, '2021-03-24'),
(5, 5, 5, FALSE, '2021-10-10'),
(6, 6, 6, FALSE, '2021-12-18'),
(7, 7, 7, TRUE, '2019-12-02'),
(8, 8, 8, FALSE, '2019-12-14'),
(9, 9, 9, FALSE, '2020-06-14'),
(10, 10, 10, FALSE, '2022-09-15'),
(11, 11, 11, TRUE, '2023-07-16'),
(12, 12, 12, TRUE, '2020-08-17'),
(13, 13, 13, TRUE, '2022-09-18'),
(14, 14, 14, TRUE, '2024-03-19'),
(15, 15, 15, TRUE, '2021-04-21');


INSERT INTO eval_post_vaccin (id_eval_post, id_vaccin, id_client, niveau_corps_en_unités_ml, effets_secondaires, date_evaluation) VALUES 
-- Puisque le seuil pour lequel le niveau d'anticorps post-vaccin est considéré suffisant depend du vaccin, nous allons supposer que pour tous nos vaccins, le seuil est de 50 unités/ml (unité arbitraire utilisée pour simplification)
(1, 1, 1, 65, "Douleur au site d'injection", '2020-08-01'),
(2, 2, 2, 72, "Fatigue", '2020-07-03'),
(3, 3, 3, 89, "Fièvre légère", '2021-01-18'),
(4, 4, 4, 58, "Maux de tête", '2021-04-04'),
(5, 5, 5, NULL, NULL, NULL), -- False dans l'eval_pre_vaccin
(6, 6, 6, NULL, NULL, NULL), -- False dans l'eval_pre_vaccin
(7, 7, 7, 82, "Fatigue, Fièvre légère", '2019-12-12'),
(8, 8, 8, NULL, NULL, NULL), -- False dans l'eval_pre_vaccin
(9, 9, 9, NULL, NULL, NULL), -- False dans l'eval_pre_vaccin
(10, 10, 10, NULL, NULL, NULL), -- False dans l'eval_pre_vaccin
(11, 11, 11, 110, "Maux de tête, Fatigue", '2023-07-26'),
(12, 12, 12, 87, "Fatigue", '2020-08-27'),
(13, 13, 13, 99, "Douleur au site d'injection", '2022-09-28'),
(14, 14, 14, 76, "Douleurs musculaires et articulaires", '2024-03-29'),
(15, 15, 15, 115, "Douleur au site d'injection, Fatigue", '2021-04-30');