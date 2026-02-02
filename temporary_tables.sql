-- on crée les tables temporaires pour le futur peuplement.
CREATE TEMP TABLE departements_france (
code_departement VARCHAR,
nom_departement VARCHAR,
code_region INTEGER,
nom_region VARCHAR
);

CREATE TEMP TABLE liste_baignades (
saison_balneaire INTEGER,
region VARCHAR,
code_departement VARCHAR,
idSite VARCHAR,
idPrecedentSite TEXT,
evolution_annee VARCHAR,
nomSite VARCHAR,
codeCommune VARCHAR,
NomCommune VARCHAR,
dateDeclaration DATE,
typeEau VARCHAR,
Longitude TEXT,
Latitude TEXT
);

CREATE TEMP TABLE saison_balneaire_info (
saison_balneaire INTEGER,
nomregion VARCHAR,
codeDepartement VARCHAR,
idSite VARCHAR,
evenement VARCHAR,
Datedebut DATE,
Datefin DATE,
mesures VARCHAR
);

CREATE TEMP TABLE resultats_analyses (
saison_balneaire INTEGER,
nomRegion VARCHAR,
codeDepartement VARCHAR,
idSite VARCHAR,
datePrelevement DATE,
enterocoques INTEGER,
escherichia INTEGER,
statut VARCHAR,
col9 TEXT,
col10 TEXT,
col11 TEXT
);
