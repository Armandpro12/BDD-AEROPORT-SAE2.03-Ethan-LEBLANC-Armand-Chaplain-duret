drop schema if  exists bookwing cascade;

create schema if not exists bookwing;

CREATE TABLE bookwing.aeroportArrive(IdAeroportArrive VARCHAR(3), nomAeroport VARCHAR(50),nomVilleAeroport VARCHAR(50),PRIMARY KEY(IdAeroportArrive));

CREATE TABLE bookwing.pilote(numPilote SMALLINT,nomPilote VARCHAR(50),prenomPilote VARCHAR(50),PRIMARY KEY(numPilote));

CREATE TABLE bookwing.villeClient(codePostal VARCHAR(7),nomVille VARCHAR(50),nomPays VARCHAR(50),PRIMARY KEY(codePostal));

CREATE TABLE bookwing.aeroportDepart(IdAeroportDepart VARCHAR(3),nomAeroport VARCHAR(50),nomVilleAeroport VARCHAR(50),PRIMARY KEY(IdAeroportDepart));

CREATE TABLE bookwing.Resa(numResa SMALLINT,classe DECIMAL(1,0),ville VARCHAR(50),dateResa DATE,prixTotal  DOUBLE PRECISION,statut VARCHAR(8),PRIMARY KEY(numResa));

alter table bookwing.resa add constraint ck_resa_statut CHECK (statut in ('annule', 'supprime', 'reserve'));

CREATE TABLE bookwing.avion(numAvion SMALLINT,nomAvion VARCHAR(64), TypeAvion VARCHAR(50),capaciteMax INTEGER,PRIMARY KEY(numAvion));

alter table bookwing.avion add constraint ck_avion_capaciteMax CHECK (capaciteMax < 900);

CREATE TABLE bookwing.agenceVoyage(codeCompagnie CHAR(2), nomCompagnie VARCHAR(50), paysCompagnie VARCHAR(50), PRIMARY KEY(codeCompagnie));

CREATE TABLE bookwing.vol(numVol VARCHAR(7),capacite DOUBLE PRECISION, hDepart TIME, dateDepart DATE, hArrive TIME,dateArrive DATE,numAvion  SMALLINT,numPilote INT NOT NULL,codeCompagnie VARCHAR(2) NOT NULL,IdAeroportDepart VARCHAR(3),IdAeroportArrive VARCHAR(3),PRIMARY KEY(numVol));

alter table bookwing.vol add constraint ck_vol_numVol CHECK (numVol in ('LH_1034', 'AF_181', 'EK_143', 'AA_820', 'AF_1002','AF_580', 'AA_320', 'EK_823', 'MS_1725', 'AA_813', 'BA_825', 'MS_1790', 'LH_1128', 'AA_486', 'AA_1280', 'LH_1222', 'BA_834', 'EK_1710', 'BA_1256', 'BA_811'));

alter table bookwing.vol add constraint ck_vol_dateDepart CHECK (dateDepart < dateArrive or dateDepart = dateArrive);

alter table bookwing.vol add constraint ck_vol_capacite CHECK (capacite < 900);

alter table bookwing.vol add constraint fk_vol_numAvion FOREIGN KEY(numAvion) REFERENCES bookwing.Avion(numAvion);

alter table bookwing.vol add constraint fk_vol_numPilote FOREIGN KEY(numPilote) REFERENCES bookwing.Pilote(numPilote);

alter table bookwing.vol add constraint fk_vol_codeCompagnie FOREIGN KEY(codeCompagnie) REFERENCES bookwing.AgenceVoyage(codeCompagnie);

alter table bookwing.vol add constraint fk_vol_IdAeroportDepart FOREIGN KEY(IdAeroportDepart) REFERENCES bookwing.AeroportDepart;

alter table bookwing.vol add constraint fk_vol_IdAeroportArrive FOREIGN KEY(IdAeroportArrive) REFERENCES bookwing.AeroportArrive(IdAeroportArrive);

CREATE TABLE bookwing.client(AdresseCourriel VARCHAR(128),prenom VARCHAR(64),nom VARCHAR(64), dateNaissance DATE NOT NULL,nationalite VARCHAR(50), numPasseport CHAR(9), numTelephone VARCHAR(12),codeCompagnie VARCHAR(2) NOT NULL, PRIMARY KEY(AdresseCourriel));

alter table bookwing.client add constraint ck_client_dateNaissance CHECK (dateNaissance > '1900-01-01' and dateNaissance < '2004-01-17');

alter table bookwing.client add constraint ck_client_codeCompagnie CHECK (codeCompagnie in ('AF', 'AA', 'LH','MS', 'EK', 'BA'));

alter table bookwing.client add constraint fk_client_codeCompagnie FOREIGN KEY(codeCompagnie) REFERENCES BookWing.AgenceVoyage(codeCompagnie);

CREATE TABLE bookwing.reserver(numVol VARCHAR(7),numResa INT,AdresseCourriel VARCHAR(128),PRIMARY KEY(numVol, numResa, AdresseCourriel));

alter table bookwing.reserver add constraint fk_reserver_numVol FOREIGN KEY(numVol) REFERENCES BookWing.vol(numVol);

alter table bookwing.reserver add constraint fk_reserver_numResa FOREIGN KEY(numResa) REFERENCES BookWing.Resa(numResa);

alter table bookwing.reserver add constraint fk_reserver_AdresseCourriel FOREIGN KEY(AdresseCourriel) REFERENCES BookWing.Client(AdresseCourriel);

CREATE TABLE bookwing.habiter(codePostal VARCHAR(7),AdresseCourriel VARCHAR(128),PRIMARY KEY(codePostal, AdresseCourriel));

alter table bookwing.habiter add constraint fk_habiter_codePostal FOREIGN KEY(codePostal) REFERENCES BookWing.villeClient(codePostal);

alter table bookwing.habiter add constraint fk_habiter_AdresseCourriel FOREIGN KEY(AdresseCourriel) REFERENCES BookWing.Client(AdresseCourriel);
