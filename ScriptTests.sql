
--Quels sont les noms et prenoms des clients qui ont eu une reservation annulée ?
select nom, prenom from bookwing.client natural join bookwing.reserver inner join bookwing.resa using (numresa) where statut = 'annule';
/*
   nom    | prenom  
----------+---------
 kruglova | Ludmila
 Bonnot   | Armand
(2 rows)
*/

--Quels sont les noms et prenoms des clients qui ont payé le plus cher ? Les 5 premiers en triant par ordre décroissant.
select distinct nom, prenom from bookwing.client natural join bookwing.reserver inner join bookwing.resa using (numresa) order by resa.prixTotal DESC limit(5);
/*
    nom    | prenom 
-----------+--------
 Moretti   | Teresa
 Plantenga | Nancy
 Renaud    | Jean
 Fang      | Lan
(4 rows)
*/

--Ou habitent les clients qui ont eu une reservation annulée ?
select distinct nomville from bookwing.villeclient natural join bookwing.habiter natural join bookwing.reserver natural join bookwing.resa where resa.statut = 'supprime';
/*
  nomville  
------------
 Alexandria
 Milan
 New York
(3 rows)
*/

--Quelles est la capacité maximale de l'avion affecté au vol AA_320 dont le pilote est Renard François ?
select capaciteMax from bookwing.avion inner join bookwing.vol using (numAvion) inner join bookwing.pilote using (numPilote) where vol.numvol = 'AA_320' and pilote.nomPilote = 'Renard' and prenomPilote = 'François';
/*
 capacitemax 
-------------
         440
(1 row)
*/

--Quelle est la somme du montant des vols dont le montant est supèrieure à 500 euros ?
select distinct sum(prixtotal) from bookwing.resa where resa.prixtotal > 500;
/*
       sum         
--------------------
 12892.929999999998
(1 row)
*/

--Quelle  est le statut du vol de M.Renaud?
select resa.statut from bookwing.resa natural join bookwing.reserver natural join bookwing.client where nom = 'Renaud';
/*
 statut  
---------
 reserve
(1 row)
*/
--Quelle est le nom de la compagnie du vol de Armand Bonnot
select nomCompagnie from bookwing.agencevoyage natural join bookwing.client where nom = 'Bonnot' and prenom = 'Armand';
/*
  nomcompagnie    
-------------------
 American_Airlines
(1 row)
*/
--Quelle sont les destinations des vols reservés le 10 janvier 2022 ? Trier par ordre lexicographique
select nomAeroport from bookwing.aeroportarrive natural join bookwing.vol natural join bookwing.reserver natural join bookwing.resa where resa.dateresa = '2022-01-10' order by nomAeroport;
/*
   nomaeroport    
-------------------
 Arlanda
 Charles-De-Gaulle
 El_Dorado
 Frankfurt
 Léonard-de-Vinci
(5 rows)
*/

--Quelle sont le numéro de téléphone et la date de naissance des personnes de natinalité française ayant choisi Lufthansa ? Renommer la sélection, pour numTelephone : numero_telephone 
select numTelephone as numero_Telephone, datenaissance from bookwing.client natural join bookwing.reserver natural join bookwing.vol where nationalite = 'Français' or nationalite = 'Française' and codeCompagnie = 'LH';
/*
 numero_telephone | datenaissance 
------------------+---------------
 +33752625272     | 1985-10-12
 +33172528762     | 1991-12-29
 +33629875628     | 1999-12-12
(3 rows)
*/

--Quelles sont les adresses courriels des clients ayant réserver à Mannheim?
select adressecourriel from bookwing.client natural join bookwing.reserver natural join bookwing.resa where resa.ville = 'Mannheim';
/*
  adressecourriel   
--------------------
 m.dupont@gmail.com
 a.dupont@gmail.com
 c.lavrov@gmail.com
 j.renaud@gmail.com
(4 rows)
*/

--Quelles sont les noms et prénoms des clients ayant réservés le même jour ou dans la même ville?
select distinct nom, prenom from bookwing.client natural join bookwing.reserver natural join bookwing.resa resa1, bookwing.resa resa2 where resa1.numResa <> resa2.numResa and resa1.dateResa = resa2.dateResa and resa1.ville = resa2.ville;
/*
  nom   | prenom  
--------+---------
 lavrov | Cyrus
 Renaud | Jean
 Vergas | Antonio
 Weiss  | Lenah
(4 rows)
*/

--Quels sont les passeports des clients qui ont reservé le même vol et qui ont le même numéro de reservation?
select distinct client.numpasseport from bookwing.client natural join bookwing.reserver reserver1 cross join bookwing.reserver reserver2 where (reserver1.numResa = reserver2.numResa and reserver1.numVol = reserver2.numVol and reserver1.adressecourriel <> reserver2.adressecourriel);
/*
 numpasseport 
--------------
 66FC07043
 73YA85742
(2 rows)
*/

--Quel est le client le plus vieux?
select nom, prenom from bookwing.client order by client.dateNaissance ASC limit(1);
/*
  nom   | prenom 
--------+--------
 Gorski | Karina
(1 row)
*/

--Quelle est le nom l'agence de voyage préférée des français?
select agencevoyage.nomCompagnie, count(agencevoyage.nomCompagnie) from bookwing.agencevoyage natural join bookwing.client where client.nationalite like 'Français%' group by agencevoyage.nomCompagnie order by count(agencevoyage.nomCompagnie) DESC limit(1);
/*
 nomcompagnie | count 
--------------+-------
 Lufthansa    |     2
(1 row)
*/




