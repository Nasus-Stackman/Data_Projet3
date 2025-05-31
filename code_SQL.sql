
CREATE TABLE Region (
                Code_dep_code_commune VARCHAR(20) NOT NULL,
                reg_code INT NOT NULL,
                reg_nom VARCHAR(100) NOT NULL,
                aca_nom VARCHAR(100) NOT NULL,
                dep_nom VARCHAR(100) NOT NULL,
                com_nom_maj_court VARCHAR(100) NOT NULL,
                dep_code VARCHAR(10) NOT NULL,
                dep_nom_num VARCHAR(100) NOT NULL,
                PRIMARY KEY (Code_dep_code_commune)
);


CREATE TABLE Contrat (
                Contrat_ID INT NOT NULL,
                No_voie INT NOT NULL,
                B_T_Q CHAR(1) NOT NULL,
                Type_de_voie VARCHAR(50) NOT NULL,
                Voie VARCHAR(100) NOT NULL,
                Code_dep_code_commune1 VARCHAR(20) NOT NULL,
                Code_postal INT NOT NULL,
                Surface INT NOT NULL,
                Type_local VARCHAR(50) NOT NULL,
                Occupation VARCHAR(50) NOT NULL,
                Type_contrat VARCHAR(50) NOT NULL,
                Formule VARCHAR(50) NOT NULL,
                Valeur_declaree_biens VARCHAR(50) NOT NULL,
                Prix_cotisation_mensuel VARCHAR(50) NOT NULL,
                PRIMARY KEY (Contrat_ID)
);


ALTER TABLE Contrat ADD CONSTRAINT region_contrat_fk
FOREIGN KEY (Code_dep_code_commune1)
REFERENCES Region (Code_dep_code_commune)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
