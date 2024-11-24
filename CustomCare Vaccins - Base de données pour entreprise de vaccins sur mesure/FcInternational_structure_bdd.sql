DROP DATABASE IF EXISTS fc_international;
CREATE DATABASE fc_international CHARACTER SET 'utf8';

-- Création de la table humain

CREATE TABLE humain (
    id_humain INT NOT NULL,
    nom VARCHAR(30),
    prenom VARCHAR(30),
    PRIMARY KEY (id_humain)
);


-- Transformation d’un héritage en une table, Transformation par push-down

-- Création de la table employe (va hériter tout ce qu'il y a dans humain)
CREATE TABLE employe (
    id_employe INT NOT NULL,
    nom VARCHAR(30) NOT NULL,
    prenom VARCHAR(30) NOT NULL,
    specialisation VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_employe)
);

-- Création de la table client (va hériter tout ce qu'il y a dans humain)
CREATE TABLE client(
  id_client INT NOT NULL, 
  id_humain INT NOT NULL,
  nom VARCHAR(30) NOT NULL,
  prenom VARCHAR(30) NOT NULL,
  adresse VARCHAR(50),
  PRIMARY KEY(id_client)
);

-- Transformation d’un héritage en une table, Transformation par push-down

-- Création de la table personnel de sante (va hériter tout ce qu'il y a dans employe)
CREATE TABLE personnel_sante (
    id_employe INT NOT NULL,
    nom VARCHAR(30) NOT NULL,
    prenom VARCHAR(30) NOT NULL,
    specialisation VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_employe)
);

-- Création de la table technicien de labo (va heriter tout ce qui y a dans employe)

CREATE TABLE technicien_labo (
    id_employe INT NOT NULL,
    nom VARCHAR(30) NOT NULL,
    prenom VARCHAR(30) NOT NULL,
    specialisation VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_employe)
);

-- Création de la table prestataire de soin de sante (va heriter tout ce qui y a dans employe)

CREATE TABLE prestataire_soin_sante (
    id_employe INT NOT NULL,
    nom VARCHAR(30) NOT NULL,
    prenom VARCHAR(30) NOT NULL,
    specialisation VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_employe)
);

-- Création de la table chercheur (va heriter tout ce qui y a dans employe)

CREATE TABLE chercheur (
    id_employe INT NOT NULL,
    nom VARCHAR(30) NOT NULL,
    prenom VARCHAR(30) NOT NULL,
    specialisation VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_employe)
);

CREATE TABLE batiment(
  id_batiment INT PRIMARY KEY NOT NULL,
  adresse VARCHAR(50)
);

CREATE TABLE commande_client(
  id_commande INT NOT NULL,
  id_client INT NOT NULL,
  adresse_client VARCHAR(50),
  date_commande DATE NOT NULL,
  PRIMARY KEY (id_commande)
  -- FOREIGN KEY (id_client) REFERENCES client(id_client)
);

ALTER TABLE commande_client
	ADD CONSTRAINT fk_commande_client_client
    FOREIGN KEY (id_client)
	REFERENCES client(id_client);


CREATE TABLE vaccin(
    id_vaccin INT PRIMARY KEY NOT NULL,
	id_client INT,
    nom	VARCHAR(50), 
    prix INT,
    type VARCHAR(50),
    dosage FLOAT,
    FOREIGN KEY (id_client) REFERENCES client(id_client)
);

-- Création de la table evaluation_pre_vaccin (class association)
CREATE TABLE eval_pre_vaccin(
  id_eval_pre INT NOT NULL,
  id_vaccin INT NOT NULL,
  id_client INT NOT NULL,
  resultat BOOL NOT NULL,
  date_eval DATE,
  PRIMARY KEY (id_eval_pre),
  FOREIGN KEY(id_vaccin) REFERENCES vaccin(id_vaccin),
  FOREIGN KEY(id_client) REFERENCES client(id_client)
);

-- Création de la table evaluation_post_vaccin (class association)
CREATE TABLE eval_post_vaccin(
  id_eval_post INT NOT NULL,
  id_vaccin INT NOT NULL,
  id_client INT NOT NULL,
  niveau_corps_en_unités_ml INT, -- peut etre NULL car y peut avoir les patients non eligibles d'apres l'eval_pre_vaccin
  effets_secondaires VARCHAR(50),
  date_evaluation DATE,
  PRIMARY KEY(id_eval_post),
  FOREIGN KEY(id_vaccin) REFERENCES vaccin(id_vaccin),
  FOREIGN KEY(id_client) REFERENCES client(id_client)
);

-- Création de la table controle technique
CREATE TABLE controle_technique(
  id_controle_technique INT NOT NULL,
  id_vaccin INT NOT NULL, -- Pour savoir le controle est fait sur la production de quel vaccin
  nom_responsable VARCHAR(50),
  rapport VARCHAR(50), -- Data warehousing comme pour le genome
  PRIMARY KEY (id_controle_technique)
);

ALTER TABLE controle_technique
	ADD CONSTRAINT fk_controle_technique_vaccin
	FOREIGN KEY (id_vaccin)
	REFERENCES vaccin (id_vaccin);

CREATE TABLE composant (
    id_composant INT NOT NULL,
    id_vaccin INT,
    formule	VARCHAR(50),
  	PRIMARY KEY (id_composant),
    FOREIGN KEY(id_vaccin) REFERENCES vaccin(id_vaccin)
);

CREATE TABLE stock(
    id_stock INT PRIMARY KEY NOT NULL,
    id_composant INT,
    id_batiment INT,
    stock VARCHAR(50),
    FOREIGN KEY(id_composant) REFERENCES composant(id_composant),
    FOREIGN KEY(id_batiment) REFERENCES batiment(id_batiment)
);

CREATE TABLE fournisseur(
    id_fournisseur INT PRIMARY KEY NOT NULL, 
    NOM VARCHAR(30),
    ADRESSE VARCHAR(75)
);

CREATE TABLE commande_composant (
    id_commande_composant INT PRIMARY KEY NOT NULL, 
    id_composant INT,
    id_fournisseur INT,
    quantite INT,
    FOREIGN KEY(id_composant) REFERENCES composant(id_composant),
    FOREIGN KEY(id_fournisseur) REFERENCES fournisseur(id_fournisseur)
);

CREATE TABLE machine(
    id_machine INT PRIMARY KEY NOT NULL,
    id_batiment INT, 
    FOREIGN KEY(id_batiment) REFERENCES batiment(id_batiment)
);

CREATE TABLE dossier_medical (
  id_dossier_medical INT PRIMARY KEY,
  id_client INT,
  id_genome VARCHAR(50),
  maladies ENUM('Immunodeficience combinee severe', 
                'Syndrome de Guillain-Barre', 
                'Grossesse', 
                'Maladie Pulmonaire Obstructive Chronique', 
                'Transplantation dorgane', 
                'Insuffisance renale terminale', 
                'Cirrhose', 
                'Chimiotherapie ou radiotherapie pour le cancer', 
                'Maladies auto-immunes', 
                'Epilepsie', 
                'Hemophilie', 
                'Virus de limmunodeficience humaine', 
                'Asthme severe', 
                'Fibrose kystique') NOT NULL,
  allergies ENUM('Oeufs',
                'Arachides',
                'Fruits de mer',
                'Antibiotiques',
                'Produits laitiers',
                'Noix',
                'Soja',
                'Latex',
                'Medicaments anti-inflammatoires non steroidiens',
                'Sulfites',
                'Piqures dinsectes',
                'Certains medicaments',
                'Produits chimiques',
                'Acariens',
                'Moisissures'),
  maladies_parent1 ENUM('Immunodeficience combinee severe', 
                        'Syndrome de Guillain-Barre', 
                        'Grossesse', 
                        'Maladie Pulmonaire Obstructive Chronique', 
                        'Transplantation dorgane', 
                        'Insuffisance renale terminale', 
                        'Cirrhose', 
                        'Chimiotherapie ou radiotherapie pour le cancer', 
                        'Maladies auto-immunes', 
                        'Epilepsie', 
                        'Hemophilie', 
                        'Virus de limmunodeficience humaine', 
                        'Asthme severe', 
                        'Fibrose kystique'),
  allergies_parent1 ENUM('Oeufs',
                'Arachides',
                'Fruits de mer',
                'Antibiotiques',
                'Produits laitiers',
                'Noix',
                'Soja',
                'Latex',
                'Medicaments anti-inflammatoires non steroidiens',
                'Sulfites',
                'Piqures dinsectes',
                'Certains medicaments',
                'Produits chimiques',
                'Acariens',
                'Moisissures'),
  maladies_parent2 ENUM('Immunodeficience combinee severe', 
                        'Syndrome de Guillain-Barre', 
                        'Grossesse', 
                        'Maladie Pulmonaire Obstructive Chronique', 
                        'Transplantation dorgane', 
                        'Insuffisance renale terminale', 
                        'Cirrhose', 
                        'Chimiotherapie ou radiotherapie pour le cancer', 
                        'Maladies auto-immunes', 
                        'Epilepsie', 
                        'Hemophilie', 
                        'Virus de limmunodeficience humaine', 
                        'Asthme severe', 
                        'Fibrose kystique'),
  allergies_parent2 ENUM('Oeufs',
                'Arachides',
                'Fruits de mer',
                'Antibiotiques',
                'Produits laitiers',
                'Noix',
                'Soja',
                'Latex',
                'Medicaments anti-inflammatoires non steroidiens',
                'Sulfites',
                'Piqures dinsectes',
                'Certains medicaments',
                'Produits chimiques',
                'Acariens',
                'Moisissures'),
  FOREIGN KEY (id_client) REFERENCES client(id_client)
);
