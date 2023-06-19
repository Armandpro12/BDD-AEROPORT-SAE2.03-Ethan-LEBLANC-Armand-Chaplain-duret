Insert into bookwing.agencevoyage VALUES ('AF', 'Air_France', 'France'), ('LH','Lufthansa', 'Allemagne'), ('AA','American_Airlines','Amerique'), ('EK', 'Emirates', 'Emirats_Arabes_Unis'), ('MS', 'Egypt_Air', 'Egypte'), ('BA', 'British_Airways', 'Royaume-Uni');

Insert into bookwing.client VALUES  ('a.dupont@gmail.com','Adrien','Dupont', '1985-10-12', 'Français', '66FC07043', '+33752625272','LH'), ('a.vergas@gmail.com','Antonio','Vergas','1994-08-02','Espagnol', '26UY72692', '+34786754272', 'MS'), ('s.johnson@gmail.com','Sherry', 'Johnson', '1991-07-27', 'Americaine' ,'85KF63856', '+1784536712', 'AF'), ('f.goncalves@gmail.com','Fernanda', 'Goncalves', '1983-04-10','Bresilienne', '35JE68664', '+55745275425', 'AA'), ('j.renaud@gmail.com', 'Jean', 'Renaud', '1999-12-12', 'Français', '78KI99641', '+33629875628', 'AA'), ('k.gorski@gmail.com', 'Karina','Gorski', '1965-02-01','Polonaise', '44JB57488', '+48682528541', 'BA'), ('t.moretti@gmail.com','Teresa', 'Moretti', '1973-05-25','Italienne', '22OP08053', '+39672815735', 'AA'), ('h.chin@gmail.com', 'Huan', 'Chin', '1969-06-05','Chinois', '53ER76359', '+86627916752','LH'), ('k.smith@gmail.com','Kate', 'Smith', '1977-07-21', 'Anglaise', '73CE56857', '+44764537262', 'EK'), ('c.lavrov@gmail.com','Cyrus', 'lavrov', '1983-09-09', 'Russe', '71UY65372', '+7652751975', 'LH'), ('n.plantenga@gmail.com', 'Nancy', 'Plantenga','1984-05-07', 'Néerlandaise', '15FD75484', '+31765287152', 'AF'), ('d.saucier@gmail.com', 'Dominique', 'Saucier', '1985-10-14', 'Française', '49HT85685', '+33715268263', 'BA'), ('a.ewing@gmail.com', 'Amber', 'Ewing', '1984-04-17', 'Australienne', '54KI57479', '+61692678164', 'BA'), ('h.zang@gmail.com', 'Huan', 'Zang', '1994-02-08', 'Chinois', '64FT47364', '+41616853539', 'AA'), ('m.dupont@gmail.com', 'Marie', 'Dupont', '1999-12-12', 'Française', '73YA85742', '+33752625272', 'LH'),  ('l.kruglova@gmail.com', 'Ludmila' , 'kruglova', '1995-08-17', 'Russe', '34UH95436', '+7152725222', 'LH'), ('a.bonnot@gmail.com', 'Armand', 'Bonnot', '1991-12-29', 'Français', '74CD89535', '+33172528762', 'MS'), ('d.gerste@gmail.com', 'Daniela', 'Gerste', '1998-01-01', 'Allemande', '48YR95678',  '+49172864762', 'AA'), ('l.weiss@gmail.com', 'Lenah', 'Weiss', '1998-12-24', 'Allemande', '46HF74589', '+49176528762', 'AF'), ('l.fang@gmail.com', 'Lan', 'Fang', '1985-10-12', 'Chinois', '57NF96536', '+41165488762', 'AA');

insert into bookwing.avion VALUES (1,'Airbus_A380', 'avion_de_ligne_gros_porteur', 845), (2,'Boeing_777', 'avion_de_ligne_tres_gros_porteur',550), (3,'Cessna_150L', 'avion_de_tourisme',2), (4,'Airbus_A350', 'avion_de_ligne', 440), (5,'Concorde', 'avion_de_ligne_supersonique',100), (6,'Falcon_2000', 'avion_affaires',10), (7, 'Airbus_A310', 'avion_de_ligne', 275),(8, 'Airbus_A320', 'avion_de_ligne', '246');

insert into bookwing.pilote VALUES (1,'Renard','François'),(2,'Gacia','Ricardo'), (3,'Lewis','Lisa'), (4,'Squire', 'Alexander');

insert into bookwing.aeroportArrive VALUES ('CDG','Charles-De-Gaulle','Paris'), ('ATH','Eleftherios_Venizelos', 'Athenes'), ('JFK', 'John-F.-Kennedy','New-York'), ('ARN' ,'Arlanda', 'Stockholm'), ('BCN', 'Barcelone-El_Prat','Barcelone'),('FRA', 'Frankfurt', 'Francfort'),('LAS','Mccarran', 'Las_Vegas'), ('BOG', 'El_Dorado','Bogota'), ('FCO', 'Léonard-de-Vinci', 'Rome'), ('IAD','Washington-Dulles', 'Washington_DC');

insert into bookwing.villeClient VALUES ('10021', 'New York','Etats-Unis'), ('75048', 'Montreuil', 'France'), ('EC2P_2E', 'Londres', 'Royaume-Uni'), ('111_38','Stockholm', 'Suede'), ('20121', 'Milan', 'Italie'), ('22320', 'Alexandria', 'Etats-Unis'), ('02000', 'Chlef','Algerie'), ('31000','Oran', 'Algerie'), ('200000', 'Shangai', 'Chine'), ('41002', 'Seville','Espagne');

insert into bookwing.aeroportDepart VALUES ('LAS','Mccarran', 'Las_Vegas'),('ATH','Eleftherios_Venizelos', 'Athenes'), ('JFK', 'John-F.-Kennedy','New-York'),('LHR','Heathrow', 'Londres'), ('ATL','Hartsfield-Jackson','Atlanta'), ('ARN' ,'Arlanda', 'Stockholm'), ('CDG','Charles-De-Gaulle','Paris'),('FCO', 'Léonard-de-Vinci', 'Rome'), ('BCN', 'Barcelone-El_Prat','Barcelone'), ('BOG', 'El_Dorado','Bogota'), ('IAD','Washington-Dulles', 'Washington_DC'), ('FRA', 'Frakfurt', 'Francfort');

insert into bookwing.vol VALUES ('AF_181', 215, '17:10:00', '2022-01-04', '12:10:00', '2022-01-05',2,4,'AF', 'LAS', 'CDG'), ('LH_1128', 100, '13:20:00', '2022-01-10', '15:20:00', '2022-01-10',4,1, 'LH', 'FRA', 'BCN'), ('LH_1034',250,'12:20:00','2022-01-07','13:35:00','2022-01-07',7, 4,'LH', 'FRA','CDG'), ('EK_143', 90, '21:30:00', '2022-02-06', '10:30:00', '2022-02-07', 5, 2, 'EK', 'LHR', 'LAS'), ('AA_820', 200,  '12:30:00','2022-03-20', '02:30:00', '2022-03-20', 7, 3, 'AA','LHR', 'LAS'), ('AF_1002', 2, '10:00:00', '2022-01-16', '14:00:00','2022-01-16', 3, 1,'AF', 'CDG', 'FRA'), ('AA_320', 178, '19:00:00', '2022-03-15', '05:51:00', '2022-03-16', 4, 1,'AA', 'ARN', 'FCO'),('AF_580', 500, '04:10:00', '2022-02-13', '22:40:00', '2022-02-13', 1, 2,'AF', 'FCO', 'JFK'), ('LH_1222', 8, '09:00:00', '2022-01-28', '15:12:00', '2022-01-28', 6, 4,'LH', 'JFK', 'BOG'), ('EK_823', 35, '11:00:00', '2022-02-10', '15:10:00', '2022-02-10', 5, 4,'EK', 'LHR', 'ATH'), ('MS_1725', 750, '19:00:00', '2022-01-21', '22:10:00', '2022-01-21', 1, 2,'MS', 'FCO', 'FRA'), ('AA_813', 250, '19:00:00', '2022-01-27', '03:30:00', '2022-01-28', 7, 1,'AA', 'CDG', 'JFK'), ('AA_486', 9, '11:00:00', '2022-02-15', '21:20:00', '2022-02-15', 6, 3,'AA', 'BCN', 'JFK'), ('EK_1710', 150, '18:00:00', '2022-01-22', '09:30:00', '2022-01-23', 8, 3,'EK', 'BOG', 'CDG'), ('BA_1256', 125, '14:00:00', '2022-01-20', '03:10:00', '2022-01-21', 7, 3,'BA', 'LAS', 'FCO'), ('BA_811', 7, '19:00:00', '2022-01-17', '05:30:00', '2022-01-18', 6, 3,'BA', 'IAD', 'ATH'), ('AA_1280', 90, '11:00:00', '2022-02-15', '22:20:00', '2022-02-15', 5, 3,'AA', 'FRA', 'IAD'), ('MS_1790',131, '8:00:00', '2022-01-14', '10:40:00', '2022-01-14', 8, 4,'MS', 'CDG', 'ARN'), ('BA_825', 450, '19:00:00', '2022-01-27', '03:30:00', '2022-01-28', 3, 2,'BA', 'CDG', 'JFK'), ('BA_834', 490, '11:00:00', '2022-02-15', '22:00:00', '2022-02-15', 2, 1,'BA', 'ATH', 'JFK');

insert into bookwing.resa VALUES (1,2, 'Mannheim','2021-12-20',  250.50, 'reserve'), (2,1,'Paris', '2022-01-01', 300.00, 'reserve'), (3,2,'Denver','2022-01-03',1115.99, 'reserve'), (4,2,'Birmingham','2021-11-27', 250.00, 'annule'), (5, 1, 'Cambridge', '2021-11-13', 750.00, 'reserve'), (6, 2, 'Phoenix','2022-01-10', 1000.00, 'reserve'),(7, 1, 'Paris', '2022-01-10', 1000.00, 'supprime'), (8, 1, 'Paris', '2022-01-10', 1000.00, 'supprime'), (9, 1, 'Cali', '2022-01-10', 1000.00, 'reserve'), (10, 1, 'Phoenix', '2022-01-13', 699.99, 'reserve'), (11, 1, 'Mannheim', '2022-01-08', 1000.00, 'supprime'),(12,1, 'Mannheim','2022-01-08', 1000.99, 'reserve'), (13, 1, 'Stockholm', '2022-01-10', 849.99, 'reserve'), (14, 1, 'Springfield', '2022-01-10', 430.00, 'reserve'), (15, 1, 'Phoenix', '2022-01-18', 310.00, 'annule') , (16, 1, 'Mandra', '2022-01-11', 400.00, 'reserve') , (17, 1, 'Rome', '2022-01-01', 943.00, 'reserve'), (18,1, 'Baltimore','2022-01-04', 550.99, 'reserve'), (19,1, 'Saragosse','2021-12-11', 1430.99, 'reserve'), (20,1, 'Paris','2021-12-01', 550.99, 'supprime'), (21, 2, 'Philadelphie', '2021-12-24', 700.99, 'reserve');

insert into bookwing.reserver VALUES ('LH_1034', 1, 'm.dupont@gmail.com'), ('AF_181', '3', 'n.plantenga@gmail.com'), ('LH_1034',1, 'a.dupont@gmail.com'), ('EK_143', 4, 'l.kruglova@gmail.com'), ('AA_820', 5, 'l.fang@gmail.com'), ('AF_1002', 7, 'l.weiss@gmail.com'), ('AF_580',17, 's.johnson@gmail.com'), ('AA_320', 13, 'f.goncalves@gmail.com'), ('EK_823', 16, 'h.zang@gmail.com'), ('MS_1725', 15, 'a.bonnot@gmail.com'), ('AA_813', 20, 'd.gerste@gmail.com'), ('BA_825', 2, 'a.ewing@gmail.com'), ('MS_1790', 8, 'a.vergas@gmail.com'), ('LH_1128', 11, 'c.lavrov@gmail.com'), ('AA_486', 19, 't.moretti@gmail.com'), ('AA_1280', 12, 'j.renaud@gmail.com'), ('LH_1222', 14, 'h.chin@gmail.com'), ('BA_834', 16, 'd.saucier@gmail.com'), ('EK_1710', 9, 'k.smith@gmail.com'), ('BA_1256', 10, 'k.gorski@gmail.com'), ('BA_811', 21, 'd.gerste@gmail.com');

insert into bookwing.habiter VALUES ('EC2P_2E','s.johnson@gmail.com'), ('31000','h.zang@gmail.com'), ('75048','a.bonnot@gmail.com'), ('111_38','c.lavrov@gmail.com'), ('41002','h.chin@gmail.com'), ('20121','a.vergas@gmail.com'), ('22320','a.dupont@gmail.com'), ('20121','t.moretti@gmail.com'), ('02000','a.ewing@gmail.com'), ('EC2P_2E','n.plantenga@gmail.com'), ('111_38','m.dupont@gmail.com'), ('10021','f.goncalves@gmail.com'), ('200000','l.weiss@gmail.com'), ('22320','d.gerste@gmail.com'), ('EC2P_2E','l.kruglova@gmail.com'), ('41002','d.saucier@gmail.com'), ('EC2P_2E','j.renaud@gmail.com'), ('10021','l.fang@gmail.com'), ('02000','k.gorski@gmail.com'), ('75048','k.smith@gmail.com');



--Air France : Atlanta et Athènes

--Lufthansa : New York et Stockholm

--American Airlines : Barcelone et Paris

--Emirates : Bogota et Las Vegas

--British Airways : Washingtone  et Londres

--Egypt Air :  Rome et Washington

--barcelone:	 Saragosse
--Athènes :	 Mandra
--Paris :	 Montreuil
--Washingtone :	 Philadelphie
--Londres :	 Birmingham
--Las Vegas :	 Phoenix
--Frankfort :	 Mayence
--New york :	 Springfield
--Stockholm :	 Gustavsberg
--Rome :		 Rome
--Bogota :	 Cali
--Atlanta :	 Atlanta





