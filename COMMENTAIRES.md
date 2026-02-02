## Voici quelques commentaires sur ce projet : 



### Créations de tables temporaires :

→ On créé des tables temporaires par rapport aux nombres de colonnes que requiert le fichier csv : par exemple, pour le fichier ‘departements_france.csv’, il y a 4 colonnes. Ainsi, des colonnes avec le bon type doivent être créées.
→ Dans certains cas, même si les colonnes sont vides, elles doivent quand même apparaître dans les tables. Sinon, le code renverra une erreur : comme c’est le cas pour la table “resultats_analyses”, dans laquelle 3 colonnes à la fin resteront vides. 

### Copies des fichiers : 

→ Le “HEADER true” permet de ne pas compter la première ligne du csv.
→ Le DELIMITER permet d’informer le compilateur avec quel symbole les données sont séparées (ici “;”).
→ On copie donc dans un premier temps les données dans les tables temporaires correspondantes.

### Peuplement définitif :

→ DOUBLE PRECISION permet de placer des nombres à virgules convenablement. Ces chiffres doivent avoir un point comme délimiteur, c'est pourquoi nous devons utiliser la fonction “REPLACE” afin de changer les virgules en points.
→ Afin de peupler les tables définitives, on reprend les données placées dans les tables temporaires (qu’on avait fait grâce à “\copy”), et on les insère dans grâce à INSERT.
→ Puisque analyses et evenements n’ont pas de clé primaire, on s’en charge d’en générer une grâce à “GENERATED ALWAYS AS IDENTITY”.
