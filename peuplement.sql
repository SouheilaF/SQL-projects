INSERT INTO regions
SELECT DISTINCT code_region, nom_region FROM departements_france ;

INSERT INTO departements
SELECT DISTINCT LPAD(code_departement, 3, '0'), code_region, nom_departement
FROM departements_france ;

INSERT INTO communes SELECT DISTINCT codeCommune, LPAD(code_departement, 3, '0'), NomCommune
FROM liste_baignades;

INSERT INTO sites
SELECT DISTINCT idSite, nomSite, codeCommune, dateDeclaration, typeEau, REPLACE(Longitude, ',', '.')::DOUBLE PRECISION, REPLACE(Latitude, ',', '.')::DOUBLE PRECISION FROM liste_baignades;

INSERT INTO evenements(idSite, evenement, debut, fin, mesure)
SELECT DISTINCT idSite, evenement, Datedebut, Datefin, mesures FROM saison_balneaire_info;

INSERT INTO analyses(idSite, datePrelevement, enterocoques, escherichia)
SELECT DISTINCT idSite, datePrelevement, enterocoques, escherichia FROM resultats_analyses;

