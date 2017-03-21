INSERT INTO role
Select * from (Select 1 role_id,'Administrador' name, 'ADMIN' role) as tmp
WHERE NOT EXISTS ( Select role from role where role = 'ADMIN' ) ;

INSERT INTO role
Select * from (Select 2 role_id,'Usuário' name, 'USER' role ) as tmp
WHERE NOT EXISTS ( Select role from role where role = 'USER' ) ;

insert into user
Select * from (Select '1' user_id, '1' active, 'admin@localhost' as email, 'Administrator' as name, '$2a$10$bsYtqhRrOVR.AAjWF4phGu8HWw60ZsN9sBh4S46/1HLYqbQmhWUsu', NULL) as tmp
WHERE NOT EXISTS (SELECT user_id from user where email = 'admin@localhost') ;

insert into user_role
Select * from (Select '1' user_id, '1' role_id) as tmp
WHERE NOT EXISTS (SELECT user_id from user_role where user_id = '1' and role_id = '1') ;

/*Product Categories*/
insert into category
Select * from (Select '1' category_id, 'Ação' name) as tmp
WHERE NOT EXISTS (SELECT category_id from category where category_id = '1' ) ;

insert into category
Select * from (Select '2' category_id, 'Aventura' name) as tmp
WHERE NOT EXISTS (SELECT category_id from category where category_id = '2' ) ;

insert into category
Select * from (Select '3' category_id, 'Estratégia' name) as tmp
WHERE NOT EXISTS (SELECT category_id from category where category_id = '3' ) ;

insert into category
Select * from (Select '4' category_id, 'RPG' name) as tmp
WHERE NOT EXISTS (SELECT category_id from category where category_id = '4' ) ;

insert into category
Select * from (Select '5' category_id, 'Esporte' name) as tmp
WHERE NOT EXISTS (SELECT category_id from category where category_id = '5' ) ;

insert into category
Select * from (Select '6' category_id, 'Corrida' name) as tmp
WHERE NOT EXISTS (SELECT category_id from category where category_id = '6' ) ;

insert into category
Select * from (Select '7' category_id, 'Jogo on-line' name) as tmp
WHERE NOT EXISTS (SELECT category_id from category where category_id = '7' ) ;

insert into category
Select * from (Select '8' category_id, 'Simulação' name) as tmp
WHERE NOT EXISTS (SELECT category_id from category where category_id = '8' ) ;

insert into category
Select * from (Select '9' category_id, 'Plataforma' name) as tmp
WHERE NOT EXISTS (SELECT category_id from category where category_id = '9' ) ;

insert into category
Select * from (Select '10' category_id, 'Outros Gêneros' name) as tmp
WHERE NOT EXISTS (SELECT category_id from category where category_id = '10' ) ;

/*Product List*/
INSERT INTO product (product_id, active, name, quantity, year_published, category_id)
Select *
from (
Select 1 a, 1 b, 'Eine Harzreise' c, 2 d, 2015 e, 9 f from dual union
Select 2, 1, 'The Jungle Book Game', 5, 2016, 4 from dual union
Select 3, 1, 'The Shared Dream', 1, 2016, 6 from dual union
Select 4, 1, '"Scratch One Flat Top!"', 3, 2017, 5 from dual union
Select 5, 1, '#OccupyBoardwalk', 6, 2016, 5 from dual union
Select 6, 1, '#VECTOR', 10, 2017, 4 from dual union
Select 7, 1, '$ Fever', 0, 2016, 6 from dual union
Select 8, 1, 'The $1,000,000 Chance of a Lifetime Game', 5, 2016, 8 from dual union
Select 9, 1, '$1000 Minute', 0, 2016, 1 from dual union
Select 10, 1, 'The $128,000 Question Game', 8, 2015, 10 from dual union
Select 11, 1, 'The $64,000 Question', 1, 2016, 1 from dual union
Select 12, 1, '$8,000 Grand Prix Race Game', 4, 2015, 3 from dual union
Select 13, 1, '$ue Me!', 0, 2016, 8 from dual union
Select 14, 1, '& Cetera', 10, 2015, 10 from dual union
Select 15, 1, '65: Action Card Expansion', 8, 2016, 8 from dual union
Select 16, 1, '65: Hue City Map Expansion', 7, 2016, 8 from dual union
Select 17, 1, '65: Marines and Anzac', 10, 2016, 1 from dual union
Select 18, 1, '65: Solitaire Expansion', 4, 2016, 9 from dual union
Select 19, 1, '*Star', 4, 2015, 8 from dual union
Select 20, 1, '+10 Bag o Munchkin d6', 8, 2015, 6 from dual union
Select 21, 1, '+18', 6, 2015, 7 from dual union
Select 22, 1, '+6 Bag O Munchkin Babes', 1, 2016, 4 from dual union
Select 23, 1, '+6 Bag O Munchkin Legends', 1, 2015, 9 from dual union
Select 24, 1, '+6 Bag o Munchkin Level Counters', 5, 2017, 5 from dual union
Select 25, 1, '+6 Bag O Munchkin Zombies', 6, 2015, 5 from dual union
Select 26, 1, '+6 Bag O Munchkins', 6, 2017, 4 from dual union
Select 27, 1, '+6 Bag o Radioactive Munchkin d6', 7, 2015, 10 from dual union
Select 28, 1, '+8 Bag O Munchkin Babes & Pawns', 10, 2016, 5 from dual union
Select 29, 1, '-(Mathul8)^2', 8, 2015, 3 from dual union
Select 30, 1, '... ist doch logisch !', 0, 2017, 6 from dual union
Select 31, 1, '...aber Bitte mit Sahne: Das Joker-Stück', 1, 2017, 5 from dual union
Select 32, 1, '.hack//ENEMY', 7, 2016, 2 from dual union
Select 33, 1, '007', 5, 2015, 3 from dual union
Select 34, 1, '007', 4, 2015, 9 from dual union
Select 35, 1, '007 James Bond: Goldfinger', 7, 2016, 6 from dual union
Select 36, 1, '007 James Bond: Live and Let Die', 3, 2015, 4 from dual union
Select 37, 1, '007 James Bond: The Man with the Golden Gun', 0, 2016, 4 from dual union
Select 38, 1, '007 James Bond: You Only Live Twice', 8, 2016, 8 from dual union
Select 39, 1, '007 Underwater Battle from Thunderball', 4, 2017, 9 from dual union
Select 40, 1, '007: Il Gioco di James Bond', 1, 2015, 7 from dual union
Select 41, 1, '011', 8, 2017, 5 from dual union
Select 42, 1, '08/15', 1, 2016, 10 from dual union
Select 43, 1, '0·1 (Zero Point One)', 3, 2016, 6 from dual union
Select 44, 1, '1 ... 2 ... 3 ... viva football', 5, 2016, 9 from dual union
Select 45, 1, '1 2 3 Game', 9, 2015, 10 from dual union
Select 46, 1, 'The 1 Game', 10, 2016, 8 from dual union
Select 47, 1, '1 Minute', 3, 2016, 9 from dual union
Select 48, 1, '1 on 1 Adventure Gamebooks: Battle for the Ancient Robot', 0, 2017, 2 from dual union
Select 49, 1, '1 on 1 Adventure Gamebooks: Castle Arcania', 9, 2015, 5 from dual union
Select 50, 1, '1 on 1 Adventure Gamebooks: Challenge of Druids Grove', 9, 2017, 4 from dual union
Select 51, 1, '1 on 1 Adventure Gamebooks: Dragonsword of Lankhmar', 3, 2016, 5 from dual union
Select 52, 1, '1 on 1 Adventure Gamebooks: Revenge of the Red Dragon', 4, 2017, 3 from dual union
Select 53, 1, '1 on 1 Adventure Gamebooks: The Amber Sword of Worlds End', 1, 2016, 1 from dual union
Select 54, 1, '1 on 1 Adventure Gamebooks: The Doomsday Device', 10, 2017, 7 from dual union
Select 55, 1, '1 on 1 Adventure Gamebooks: The Dragonwand of Krynn', 9, 2017, 4 from dual union
Select 56, 1, '1 on 1 Adventure Gamebooks: The King Takes a Dare', 1, 2016, 6 from dual union
Select 57, 1, '1 on 1 Adventure Gamebooks: Warlords', 4, 2017, 8 from dual union
Select 58, 1, '1 on 1 Sports Baseball Bitty Bucket', 9, 2016, 7 from dual union
Select 59, 1, '1 on 1 Sports Basketball Bitty Bucket', 7, 2015, 6 from dual union
Select 60, 1, '1 on 1 Sports Football Bitty Bucket', 5, 2015, 5 from dual union
Select 61, 1, '1 on 1 Sports Soccer Bitty Bucket', 0, 2015, 5 from dual union
Select 62, 1, '1 Stein + Co.', 0, 2017, 8 from dual union
Select 63, 1, '1 vorwärts 2 zurück und 3 in die Mitte', 0, 2017, 2 from dual union
Select 64, 1, '1 vs. 100 Board Game', 0, 2015, 7 from dual union
Select 65, 1, '1 vs. 100 Card Game', 3, 2017, 4 from dual union
Select 66, 1, '1 vs. 100 DVD Board Game', 0, 2017, 6 from dual union
Select 67, 1, '1 vs. 100: The Puzzle Game', 6, 2017, 1 from dual union
Select 68, 1, '1 x 1: Spiel', 7, 2016, 8 from dual union
Select 69, 1, '1%', 8, 2014, 9 from dual union
Select 70, 1, '1, 2 oder 3', 4, 2015, 8 from dual union
Select 71, 1, '1, 2 oder 3 Kinder-Quiz', 3, 2015, 5 from dual union
Select 72, 1, '1, 2, 3 ...', 3, 2015, 8 from dual union
Select 73, 1, '1, 2, 3 ... ich komme!', 8, 2016, 7 from dual union
Select 74, 1, '1, 2, 3 ... wie lerne ich die Zahlen?', 2, 2016, 6 from dual union
Select 75, 1, '1, 2, 3 bunter Papagei', 2, 2017, 4 from dual union
Select 76, 1, '1, 2, 3 Treasures in the Sea', 6, 2017, 5 from dual union
Select 77, 1, '1, 2, 3 – Hex Herbei!', 10, 2017, 7 from dual union
Select 78, 1, '1, 2, 3, Papagei!', 7, 2015, 1 from dual union
Select 79, 1, '1, 2, 3... Soleil!', 0, 2015, 5 from dual union
Select 80, 1, '1, 2, 3: Drachenrechnerei', 0, 2015, 9 from dual union
Select 81, 1, '1, 2, Hüpferei!', 10, 2016, 4 from dual union
Select 82, 1, '1,000 Drinking Games', 8, 2016, 8 from dual union
Select 83, 1, '1,000 Places to See Before You Die', 7, 2016, 4 from dual union
Select 84, 1, '1,000 SEX Games', 4, 2017, 4 from dual union
Select 85, 1, '1,000 WEED Games', 7, 2016, 2 from dual union
Select 86, 1, '1,2 oder 3 das Spiel', 5, 2017, 10 from dual union
Select 87, 1, '1,2,3! Now you see me...', 0, 2016, 3 from dual union
Select 88, 1, '1,2,3, vorbei', 3, 2016, 6 from dual union
Select 89, 1, '1,2,3: Mäusezählerei', 7, 2017, 3 from dual union
Select 90, 1, '1-10, maths!', 5, 2017, 8 from dual union
Select 91, 1, '1-2-3 Go!', 0, 2015, 7 from dual union
Select 92, 1, '1-2-3 Home Free', 6, 2017, 10 from dual union
Select 93, 1, '1-2-3 OY!', 10, 2016, 7 from dual union
Select 94, 1, '1-2-3 räknar Mamma Mu och Kråkan', 3, 2015, 5 from dual union
Select 95, 1, '1-2-3 Tolle Hexerei', 9, 2016, 6 from dual union
Select 96, 1, '1-2-K3', 5, 2017, 4 from dual union
Select 97, 1, '1-2-X Das Bundesliga-Quiz', 1, 2015, 4 from dual union
Select 98, 1, '1-48 Combat', 3, 2015, 6 from dual union
Select 99, 1, '1. FC Kaiserslautern: Das Gesellschaftsspiel für alle Fans der roten Teufel', 1, 2016, 2 from dual union
Select 100, 1, '1.500 m', 8, 2016, 4 from dual union
Select 101, 1, '10', 0, 2015, 10 from dual union
Select 102, 1, '10 Brettspiele', 5, 2015, 1 from dual union
Select 103, 1, '10 by 10', 10, 2017, 10 from dual union
Select 104, 1, '10 Commandments Dominoes', 1, 2015, 10 from dual union
Select 105, 1, '10 Days in Africa', 2, 2016, 10 from dual union
Select 106, 1, '10 Days in Asia', 0, 2017, 8 from dual union
Select 107, 1, '10 Days in Europe', 4, 2017, 2 from dual union
Select 108, 1, '10 Days in the Americas', 5, 2016, 4 from dual union
Select 109, 1, '10 Days in the USA', 4, 2015, 9 from dual union
Select 110, 1, '10 Die Survival Games Public Domain Promo Cards', 3, 2016, 4 from dual union
Select 111, 1, 'The 10 Die Trilogy', 1, 2017, 9 from dual union
Select 112, 1, '10 Down', 0, 2015, 2 from dual union
Select 113, 1, '10 Dwarves', 9, 2016, 5 from dual union
Select 114, 1, '10 e 10', 7, 2016, 7 from dual union
Select 115, 1, '10 kleine Negerlein', 2, 2015, 10 from dual union
Select 116, 1, 'Die 10 kleinen Negerbuben', 10, 2015, 2 from dual union
Select 117, 1, '10 Mighty Men', 9, 2016, 4 from dual union
Select 118, 1, '10 Minute Heist: The Wizards Tower', 0, 2016, 9 from dual union
Select 119, 1, '10 Negritos', 8, 2017, 8 from dual union
Select 120, 1, '10 Sec. Quiz', 1, 2017, 10 from dual union
Select 121, 1, '10 Tage durch Deutschland', 1, 2016, 2 from dual union
Select 122, 1, '10 Tage durch die Schweiz', 10, 2016, 9 from dual union
Select 123, 1, '10 UP!', 0, 2016, 6 from dual union
Select 124, 1, 'Een 10 voor topo', 7, 2015, 6 from dual union
Select 125, 1, '10 to Kill', 2, 2015, 3 from dual union
Select 126, 1, '10 to Kill: Expansions', 9, 2015, 10 from dual union
Select 127, 1, '10,000 in my Pocket', 2, 2016, 1 from dual union
Select 128, 1, '10-4 Good Buddy: The CB Game', 6, 2016, 1 from dual union
Select 129, 1, '10-4 Mr. Truck Driver', 6, 2017, 9 from dual union
Select 130, 1, '10-Die Poker', 9, 2016, 10 from dual union
Select 131, 1, '10-Four, Good Buddy', 0, 2017, 3 from dual union
Select 132, 1, '100 A.D.', 2, 2015, 1 from dual union
Select 133, 1, '100 Acre Wood Stamp Game', 3, 2017, 5 from dual union
Select 134, 1, '100 einzigartige Orte', 2, 2015, 10 from dual union
Select 135, 1, 'The 100 Games', 4, 2017, 4 from dual union
Select 136, 1, '100 Keren', 8, 2017, 9 from dual union
Select 137, 1, '100 Other Games to Play on a Chessboard', 2, 2016, 1 from dual union
Select 138, 1, '100 Pipers: Battle of the Clans', 5, 2017, 5 from dual union
Select 139, 1, '100 Plus', 1, 2017, 7 from dual union
Select 140, 1, '100 Points Holdem', 3, 2015, 3 from dual union
Select 141, 1, '100 Points Prediction', 2, 2015, 2 from dual union
Select 142, 1, '100 Points Rummy', 9, 2017, 6 from dual union
Select 143, 1, '100 Points: The Card Game', 5, 2017, 6 from dual union
Select 144, 1, '100 Really Dumb Things You Have to do While Playing This Game', 5, 2016, 1 from dual union
Select 145, 1, '100 Strategic Games for Pen and Paper', 1, 2017, 10 from dual union
Select 146, 1, '100 Swords: Kick Sword', 5, 2016, 4 from dual union
Select 147, 1, '100 Swords: Starter Sword', 8, 2016, 3 from dual union
Select 148, 1, '100 Swords: The Blue Mammoths Dungeon', 2, 2016, 10 from dual union
Select 149, 1, '100 Swords: The Chroma Dragons Dungeon Builder Set', 2, 2016, 3 from dual union
Select 150, 1, '100 Swords: The Darkness Dungeon Builder Set', 1, 2016, 7 from dual union
Select 151, 1, '100 Swords: The Gardenin Elms Dungeon Builder Set', 5, 2017, 8 from dual union
Select 152, 1, '100 Swords: The Glowing Plasmapedes Dungeon Builder Set', 0, 2016, 9 from dual union
Select 153, 1, '100 Swords: The Gold Kings Dungeon', 6, 2017, 7 from dual union
Select 154, 1, '100 Swords: The Great Garudas Dungeon Builder Set', 6, 2017, 10 from dual union
Select 155, 1, '100 Swords: The Heads of the Hydra Dungeon Builder Set', 7, 2017, 3 from dual union
Select 156, 1, '100 Swords: The Hive Empresss Dungeon Builder Set', 3, 2017, 4 from dual union
Select 157, 1, '100 Swords: The Magic Computers Dungeon Builder Set', 0, 2016, 4 from dual union
Select 158, 1, '100 Swords: The Multi-User Dungeon Expansion', 8, 2017, 9 from dual union
Select 159, 1, '100 Swords: The Red Dragons Dungeon', 1, 2016, 3 from dual union
Select 160, 1, '100 Swords: The Silver Queens Dungeon', 3, 2017, 3 from dual union
Select 161, 1, '100 Wacky Things you have to do while playing this game', 1, 2017, 4 from dual union
Select 162, 1, '100 Years War', 7, 2017, 1 from dual union
Select 163, 1, '100 Years War Anglo Vs. French', 1, 2017, 7 from dual union
Select 164, 1, '100!', 4, 2016, 10 from dual union
Select 165, 1, '100,000 Blind Dates', 2, 2016, 7 from dual union
Select 166, 1, '1000', 5, 2016, 5 from dual union
Select 167, 1, '1000 and One Treasures', 6, 2016, 6 from dual union
Select 168, 1, '1000 Blank White Cards', 6, 2016, 6 from dual union
Select 169, 1, '1000 Blank White Questions', 8, 2017, 3 from dual union
Select 170, 1, 'Les 1000 Bornes de lHistoire', 5, 2017, 2 from dual union
Select 171, 1, 'Les 1000 Bornes de la Bible', 0, 2015, 1 from dual union
Select 172, 1, '1000 Bornes de la France', 3, 2017, 8 from dual union
Select 173, 1, 'Les 1000 Bornes de la Nature', 9, 2015, 2 from dual union
Select 174, 1, 'Les 1000 Bornes des Animaux', 3, 2016, 3 from dual union
Select 175, 1, 'Les 1000 Bornes des Inventions', 9, 2015, 2 from dual union
Select 176, 1, 'Les 1000 Bornes des Mots', 10, 2015, 7 from dual union
Select 177, 1, '1000 Bornes Express', 5, 2016, 2 from dual union
Select 178, 1, 'Les 1000 Bornes Olympiques', 6, 2017, 7 from dual union
Select 179, 1, '1000 Bornes sur un Plateau', 2, 2016, 8 from dual union
Select 180, 1, '1000 Fragen Quiz', 3, 2017, 10 from dual union
Select 181, 1, '1000 Voltios', 9, 2015, 9 from dual union
Select 182, 1, '1000 Vragen Quiz', 2, 2015, 10 from dual union
Select 183, 1, 'Das 1000-Fragen-Spiel', 6, 2017, 4 from dual union
Select 184, 1, '1001', 3, 2016, 3 from dual union
Select 185, 1, '1001', 2, 2016, 4 from dual union
Select 186, 1, '1001 Erzählungen', 6, 2017, 9 from dual union
Select 187, 1, '1001 Karawane', 4, 2016, 7 from dual union
Select 188, 1, '1001 Karawane: Sonderchips', 5, 2017, 5 from dual union
Select 189, 1, '1001 Odysseys', 2, 2017, 5 from dual union
Select 190, 1, '1001 Tuesday Knights', 3, 2015, 2 from dual union
Select 191, 1, '1001: hezar o yek sab', 2, 2016, 1 from dual union
Select 192, 1, '101 Dalmatians', 3, 2017, 8 from dual union
Select 193, 1, '101 Dalmatians', 10, 2017, 2 from dual union
Select 194, 1, '101 Dalmatians Game', 4, 2017, 2 from dual union
Select 195, 1, '101 Dalmatians Puppy Pairs', 0, 2016, 2 from dual union
Select 196, 1, '101 Dalmatians Puppy Rescue Card Game', 7, 2017, 1 from dual union
Select 197, 1, '101 Dalmatians: Spin for Spots', 10, 2015, 5 from dual union
Select 198, 1, '101 Dalmatians: The game based on the film', 8, 2008, 2 from dual union
Select 199, 1, '101 giochi con carta e matita', 8, 2016, 3 from dual union
Select 200, 1, '101 Nights of Grrrrreat Sex', 7, 2017, 5 from dual union
Select 201, 1, '101.1', 9, 2015, 6 from dual union
Select 202, 1, '101: The Win It All Card Game', 10, 2016, 6 from dual union
Select 203, 1, '1066, Tears To Many Mothers', 4, 2017, 5 from dual union
Select 204, 1, '1066: Battle of Hastings Card Game', 7, 2015, 3 from dual union
Select 205, 1, '1066: End of the Dark Ages', 10, 2017, 10 from dual union
Select 206, 1, '1066: The Battle of Hastings in 3D', 6, 2016, 7 from dual union
Select 207, 1, '1066: The Year of Three Battles', 5, 2015, 8 from dual union
Select 208, 1, '1066: Year of the Comet', 4, 2016, 6 from dual union
Select 209, 1, '107 City', 2, 2015, 3 from dual union
Select 210, 1, '108th Kentucky Derby', 10, 2016, 4 from dual union
Select 211, 1, '1099: Domus clari Geminiani', 5, 2016, 8 from dual union
Select 212, 1, 'The 10th War', 6, 2015, 9 from dual union
Select 213, 1, '11', 10, 2015, 8 from dual union
Select 214, 1, '11 de Setembre', 2, 2017, 7 from dual union
Select 215, 1, '11 de Setembre. Setge 1714', 0, 2017, 2 from dual union
Select 216, 1, '11 gegen 11', 9, 2015, 8 from dual union
Select 217, 1, '11 Kings', 1, 2017, 1 from dual union
Select 218, 1, '11 nimmt!', 8, 2017, 4 from dual union
Select 219, 1, '11 Swing States', 1, 2015, 8 from dual union
Select 220, 1, '111', 4, 2015, 6 from dual union
Select 221, 1, '12 Days', 3, 2017, 1 from dual union
Select 222, 1, '12 Days of Christmas', 9, 2015, 3 from dual union
Select 223, 1, '12 Days of Munchkin Christmas Coloring Book', 5, 2016, 10 from dual union
Select 224, 1, '12 Men on the Field', 3, 2015, 4 from dual union
Select 225, 1, '12 Moons', 1, 2015, 8 from dual union
Select 226, 1, '12 OClock High', 10, 2016, 1 from dual union
Select 227, 1, '12 OClock High Card Game', 1, 2016, 8 from dual union
Select 228, 1, '12 OClock High Game', 9, 2017, 10 from dual union
Select 229, 1, '12 Realms', 3, 2017, 7 from dual union
Select 230, 1, '12 Realms: Ancestors Legacy', 0, 2015, 10 from dual union
Select 231, 1, '12 Realms: Bedtime Story', 5, 2016, 3 from dual union
Select 232, 1, '12 Realms: Bonus Town Cards', 9, 2015, 7 from dual union
Select 233, 1, '12 Realms: Dungeonland', 6, 2017, 1 from dual union
Select 234, 1, '12 Realms: Ghost Galleon', 10, 2015, 5 from dual union
Select 235, 1, '12 Realms: Ghost Town', 2, 2015, 10 from dual union
Select 236, 1, '12 Realms: Promo Invaders Pack', 5, 2015, 2 from dual union
Select 237, 1, '12 Realms: The Crab', 5, 2017, 2 from dual union
Select 238, 1, '12 Thieves', 5, 2017, 7 from dual union
Select 239, 1, 'The 12 Towers', 8, 2013, 7 from dual union
Select 240, 1, '12+1 games for the Mystique Deck', 8, 2015, 2 from dual union
Select 241, 1, '12-21-12', 3, 2015, 9 from dual union
Select 242, 1, '12-21-12: Fire & Ice', 1, 2015, 2 from dual union
Select 243, 1, 'Les 12000 tours minute: Michel Vaillant', 2, 2015, 7 from dual union
Select 244, 1, '123 Dice', 0, 2017, 4 from dual union
Select 245, 1, '123 Roosters Off to See the World Game', 2, 2016, 7 from dual union
Select 246, 1, '12345ive!', 2, 2015, 6 from dual union
Select 247, 1, '13 Black Cats', 4, 2017, 1 from dual union
Select 248, 1, '13 Clues', 6, 2016, 7 from dual union
Select 249, 1, '13 Days: The Cuban Missile Crisis', 6, 2016, 9 from dual union
Select 250, 1, '13 Dead End Drive', 6, 2017, 5 from dual union
Select 251, 1, '13 Frights of Halloween Card Game', 1, 2015, 8 from dual union
Select 252, 1, '13 Minutes: The Cuban Missile Crisis', 6, 2017, 2 from dual union
Select 253, 1, '13 Relics', 10, 2017, 9 from dual union
Select 254, 1, '1302', 7, 2015, 5 from dual union
Select 255, 1, '1313 Dead End Drive', 10, 2017, 3 from dual union
Select 256, 1, '1314 A.D.', 1, 2015, 8 from dual union
Select 257, 1, '13: Assassin Collector Card Game', 2, 2017, 10 from dual union
Select 258, 1, '13: The Colonies in Revolt', 3, 2015, 2 from dual union
Select 259, 1, '14 Days', 1, 2015, 4 from dual union
Select 260, 1, '144: Champions of Hope', 3, 2017, 2 from dual union
Select 261, 1, '1455: Lelefante e laquila', 8, 2017, 5 from dual union
Select 262, 1, '147 Snooker', 0, 2015, 7 from dual union
Select 263, 1, '1492: The New World – North America', 5, 2015, 6 from dual union
Select 264, 1, '15', 6, 2016, 10 from dual union
Select 265, 1, '15 Dias: The Spanish Golden Age', 2, 2015, 9 from dual union
Select 266, 1, 'The 15 Greatest Board Games in the World', 1, 2017, 5 from dual union
Select 267, 1, '15 Love', 5, 2017, 10 from dual union
Select 268, 1, '15 Minutes Of Fame', 1, 2017, 3 from dual union
Select 269, 1, '15 to Zero', 9, 2017, 8 from dual union
Select 270, 1, '15 ○ 9 ×', 7, 2015, 2 from dual union
Select 271, 1, '15s', 7, 2017, 4 from dual union
Select 272, 1, '150-Class', 4, 2017, 1 from dual union
Select 273, 1, '1500 Gold', 6, 2017, 4 from dual union
Select 274, 1, '1500: The New World', 10, 2017, 5 from dual union
Select 275, 1, '1558: Hanfrieds Erbe', 1, 2016, 8 from dual union
Select 276, 1, '1572: The Lost Expedition', 5, 2016, 5 from dual union
Select 277, 1, '16 Memories', 9, 2017, 10 from dual union
Select 278, 1, '16!', 7, 2017, 7 from dual union
Select 279, 1, '16-Bit RPG: The Board Game', 1, 2017, 7 from dual union
Select 280, 1, '1631 Un Empire En Flammes', 8, 2016, 9 from dual union
Select 281, 1, '1644', 7, 2017, 8 from dual union
Select 282, 1, '1644 (second edition)', 0, 2015, 2 from dual union
Select 283, 1, '1648', 8, 2015, 9 from dual union
Select 284, 1, '1650 more Questions & Answers for use with Trivial Pursuit: Set I, Group I', 10, 2017, 1 from dual union
Select 285, 1, '1650 more Questions & Answers for use with Trivial Pursuit: Set I, Group II', 1, 2015, 4 from dual union
Select 286, 1, '1650 more Questions & Answers for use with Trivial Pursuit: Set I, Group III', 7, 2017, 4 from dual union
Select 287, 1, '1650 more Questions & Answers for use with Trivial Pursuit: Set I, Group IV', 7, 2015, 10 from dual union
Select 288, 1, '1650: A capa & espada', 5, 2017, 2 from dual union
Select 289, 1, '1653: Sailors and Merchants', 2, 2015, 6 from dual union
Select 290, 1, '1655: Habemus Papam', 8, 2016, 3 from dual union
Select 291, 1, '1660', 10, 2016, 8 from dual union
Select 292, 1, '1672: The Lost Crew', 0, 2016, 10 from dual union
Select 293, 1, '17!', 6, 2017, 9 from dual union
Select 294, 1, '1714: The Case of the Catalans', 0, 2017, 7 from dual union
Select 295, 1, '1740', 6, 2015, 2 from dual union
Select 296, 1, '1750: Britain vs. France', 6, 2015, 3 from dual union
Select 297, 1, '1754: Conquest – The French and Indian War', 10, 2017, 10 from dual union
Select 298, 1, '1761: From Canal to Rail', 9, 2015, 9 from dual union
Select 299, 1, '1775: Invasion of Canada', 6, 2016, 5 from dual union
Select 300, 1, '1775: Rebellion', 3, 2015, 6 from dual union
Select 301, 1, '1776', 0, 2016, 5 from dual union
Select 302, 1, '1776 Wargaming Rules', 7, 2017, 2 from dual union
Select 303, 1, '1776: The Birth Of A Nation', 3, 2017, 2 from dual union
Select 304, 1, '1777: The Year of the Hangman', 5, 2016, 3 from dual union
Select 305, 1, '1789: Le Jeu de la Révolution Francaise', 5, 2017, 3 from dual union
Select 306, 1, '1792: La Patrie en Danger', 0, 2016, 9 from dual union
Select 307, 1, '18 Card RPG', 4, 2017, 10 from dual union
Select 308, 1, '18 Ghosts', 10, 2017, 7 from dual union
Select 309, 1, '18 giugno 1815: Waterloo', 4, 2017, 4 from dual union
Select 310, 1, '18 Wheeln', 5, 2015, 2 from dual union
Select 311, 1, '18 Wheeler', 6, 2017, 1 from dual union
Select 312, 1, '1800', 6, 2016, 9 from dual union
Select 313, 1, '1805: Sea of Glory', 1, 2017, 4 from dual union
Select 314, 1, '1806: Rossbach Avenged', 6, 2017, 6 from dual union
Select 315, 1, '1807: The Eagles Turn East', 2, 2017, 5 from dual union
Select 316, 1, '1808: Guerra de la Independencia', 2, 2015, 3 from dual union
Select 317, 1, '1809: Napoleons Danube Campaign', 6, 2016, 10 from dual union
Select 318, 1, '1812', 8, 2016, 8 from dual union
Select 319, 1, '1812', 10, 2016, 4 from dual union
Select 320, 1, '1812', 10, 2017, 2 from dual union
Select 321, 1, '1812', 6, 2016, 5 from dual union
Select 322, 1, '1812: Caspara', 10, 2016, 2 from dual union
Select 323, 1, '1812: LAnkou', 3, 2015, 5 from dual union
Select 324, 1, '1812: Les Arapiles', 6, 2015, 5 from dual union
Select 325, 1, '1812: The Invasion of Canada', 5, 2016, 4 from dual union
Select 326, 1, '1813: Napoleons Nemesis', 9, 2016, 4 from dual union
Select 327, 1, '1815: The Waterloo Campaign', 10, 2016, 8 from dual union
Select 328, 1, '1817', 0, 2016, 10 from dual union
Select 329, 1, '1822: The Railways of Great Britain', 2, 2016, 7 from dual union
Select 330, 1, '1824', 6, 2015, 3 from dual union
Select 331, 1, '1825 Development Kit D1: Additional Tiles', 5, 2016, 2 from dual union
Select 332, 1, '1825 Extemsion Kit K1: Supplementary Tiles', 2, 2016, 6 from dual union
Select 333, 1, '1825 Extemsion Kit K2: Advanced Trains', 3, 2015, 8 from dual union
Select 334, 1, '1825 Extemsion Kit K3: Phase Four', 9, 2015, 7 from dual union
Select 335, 1, '1825 Extemsion Kit K5: Minor Companies for Unit 2', 5, 2017, 9 from dual union
Select 336, 1, '1825 Extemsion Kit K6: Advanced Tiles', 7, 2016, 3 from dual union
Select 337, 1, '1825 Extemsion Kit K7: London, Tilbury and Southend Railway', 5, 2017, 6 from dual union
Select 338, 1, '1825 Regional Kit R1: Wales', 6, 2015, 6 from dual union
Select 339, 1, '1825 Regional Kit R2: South West England', 10, 2017, 7 from dual union
Select 340, 1, '1825 Regional Kit R3: North Norfolk', 8, 2016, 4 from dual union
Select 341, 1, '1825 Unit 1', 0, 2015, 1 from dual union
Select 342, 1, '1825 Unit 2', 5, 2016, 1 from dual union
Select 343, 1, '1825 Unit 3', 8, 2016, 2 from dual union
Select 344, 1, '1826', 9, 2017, 3 from dual union
Select 345, 1, '1829', 4, 2016, 5 from dual union
Select 346, 1, '1829 Conversion Kit', 10, 2016, 9 from dual union
Select 347, 1, '1829 Mainline', 1, 2016, 5 from dual union
Select 348, 1, '1829 Northern Board', 3, 2016, 9 from dual union
Select 349, 1, '1830 Cardgame', 8, 2016, 6 from dual union
Select 350, 1, '1830 Lummerland', 10, 2016, 6 from dual union
Select 351, 1, '1830: Chattanooga Promotional Card', 3, 2015, 8 from dual union
Select 352, 1, '1830: Railways & Robber Barons', 8, 2015, 4 from dual union
Select 353, 1, '1830: Révolution Belge', 5, 2016, 10 from dual union
Select 354, 1, '1830: Take A Ride on the Reading', 9, 2015, 2 from dual union
Select 355, 1, '1830: The Coalfields', 2, 2016, 8 from dual union
Select 356, 1, '1830: The Nickel Plate', 6, 2015, 1 from dual union
Select 357, 1, '1830: The Pere Marquette', 8, 2016, 3 from dual union
Select 358, 1, '1830: Variant Box #1', 4, 2015, 5 from dual union
Select 359, 1, '1830: Wabash Cannonball Variant', 0, 2015, 10 from dual union
Select 360, 1, '1831', 5, 2017, 5 from dual union
Select 361, 1, '1831 For our freedom and yours: Battle of Grochow', 0, 2017, 8 from dual union
Select 362, 1, '1832', 5, 2016, 4 from dual union
Select 363, 1, '1834', 7, 2016, 4 from dual union
Select 364, 1, '1835', 0, 2017, 8 from dual union
Select 365, 1, '1835 Schlesien', 7, 2017, 9 from dual union
Select 366, 1, '1836: Short Lines in the West Riding', 8, 2017, 1 from dual union
Select 367, 1, '1836jr', 2, 2015, 10 from dual union
Select 368, 1, '1837', 5, 2015, 3 from dual union
Select 369, 1, '1838: Rheinland', 8, 2016, 10 from dual union
Select 370, 1, '1838TL', 7, 2015, 8 from dual union
Select 371, 1, '1839 The Netherlands', 7, 2017, 10 from dual union
Select 372, 1, '1841', 5, 2016, 7 from dual union
Select 373, 1, '1842: Schleswig Holstein', 5, 2015, 9 from dual union
Select 374, 1, '1843', 5, 2016, 6 from dual union
Select 375, 1, '1844/1854', 4, 2016, 4 from dual union
Select 376, 1, '1844: Switzerland', 9, 2015, 2 from dual union
Select 377, 1, 'Het 1845 Spel', 4, 2016, 6 from dual union
Select 378, 1, '1846', 7, 2016, 1 from dual union
Select 379, 1, '1847:  Road to Mexico City', 9, 2015, 3 from dual union
Select 380, 1, '1847: Pfalz', 8, 2016, 1 from dual union
Select 381, 1, '1848', 10, 2016, 6 from dual union
Select 382, 1, '1848-1849: Hungary Fights for Freedom', 5, 2015, 8 from dual union
Select 383, 1, '1848: Australia', 6, 2015, 9 from dual union
Select 384, 1, '1849', 4, 2016, 8 from dual union
Select 385, 1, '1850', 3, 2015, 8 from dual union
Select 386, 1, '1850 Jr', 6, 2015, 9 from dual union
Select 387, 1, '1851', 7, 2016, 5 from dual union
Select 388, 1, '1853', 7, 2015, 3 from dual union
Select 389, 1, '1854', 0, 2016, 3 from dual union
Select 390, 1, '1856', 4, 2015, 5 from dual union
Select 391, 1, '1857', 6, 2015, 8 from dual union
Select 392, 1, '1858: The Railways of Iberia', 0, 2017, 4 from dual union
Select 393, 1, '1859', 4, 2016, 2 from dual union
Select 394, 1, '1859: Grand Tactical Rules for the Second Italian War of Independence', 2, 2015, 4 from dual union
Select 395, 1, '1860: I mille', 0, 2015, 1 from dual union
Select 396, 1, '1860: Locomotives of the Isle of Wight', 7, 2015, 4 from dual union
Select 397, 1, '1860: Railways on the Isle of Wight', 0, 2015, 9 from dual union
Select 398, 1, '1861', 1, 2017, 5 from dual union
Select 399, 1, '1861: First Manassas', 8, 2016, 8 from dual union
Select 400, 1, '1861: Hokes Run', 7, 2017, 5 from dual union
Select 401, 1, '1861: The Railways of the Russian Empire', 2, 2016, 8 from dual union
Select 402, 1, '1861: Wilsons Creek', 1, 2017, 5 from dual union
Select 403, 1, '1862', 4, 2017, 2 from dual union
Select 404, 1, '1862', 10, 2015, 1 from dual union
Select 405, 1, '1862: Beaver Dam Creek', 7, 2016, 9 from dual union
Select 406, 1, '1862: Cedar Mountain', 0, 2017, 1 from dual union
Select 407, 1, '1862: Cross Keys', 6, 2015, 9 from dual union
Select 408, 1, '1862: First Kernstown', 1, 2017, 8 from dual union
Select 409, 1, '1862: First Winchester', 7, 2016, 8 from dual union
Select 410, 1, '1862: Fort Donelson', 0, 2016, 9 from dual union
Select 411, 1, '1862: Front Royal', 1, 2016, 2 from dual union
Select 412, 1, '1862: Glendale (American Civil War in 3D)', 7, 2017, 3 from dual union
Select 413, 1, '1862: Harpers Ferry', 9, 2016, 10 from dual union
Select 414, 1, '1862: Malvern Hill (American Civil War in 3D)', 2, 2017, 8 from dual union
Select 415, 1, '1862: Pea Ridge', 9, 2015, 4 from dual union
Select 416, 1, '1862: Port Republic', 8, 2016, 5 from dual union
Select 417, 1, '1862: Railway Mania in the Eastern Counties', 10, 2016, 5 from dual union
Select 418, 1, '1862: Retreat to Harrisons Landing', 3, 2015, 5 from dual union
Select 419, 1, '1862: Savages Station', 10, 2015, 7 from dual union
Select 420, 1, '1862: Shiloh', 4, 2016, 4 from dual union
Select 421, 1, '1862: South Mountain', 6, 2016, 7 from dual union
Select 422, 1, '1862: The Pacific Railway Act', 4, 2017, 3 from dual union
Select 423, 1, '1862: Williamsburg', 0, 2016, 4 from dual union
Select 424, 1, '1863', 6, 2015, 10 from dual union
Select 425, 1, '1863', 8, 2016, 3 from dual union
Select 426, 1, '1863 Kampania na Kurpiach', 5, 2016, 10 from dual union
Select 427, 1, '1863 Powstanie Styczniowe: Kampania na Kurpiach', 1, 2016, 10 from dual union
Select 428, 1, '1864: Year of Decision', 7, 2017, 6 from dual union
Select 429, 1, '1865: Midwest', 6, 2015, 4 from dual union
Select 430, 1, '1865: Sardinia', 9, 2015, 6 from dual union
Select 431, 1, '1866: Grand Tactical Rules for the Austro-Prussian War', 9, 2015, 1 from dual union
Select 432, 1, '1866: The Struggle for Supremacy in Germany', 1, 2016, 5 from dual union
Select 433, 1, '1867: The Railways of Canada', 5, 2015, 1 from dual union
Select 434, 1, '1869: The Golden Spike', 1, 2015, 1 from dual union
Select 435, 1, '1869: USA West', 9, 2017, 2 from dual union
Select 436, 1, '1870', 7, 2015, 5 from dual union
Select 437, 1, '1870', 0, 2015, 8 from dual union
Select 438, 1, '1870-1871 La campagne de lArmée de lEst', 1, 2017, 5 from dual union
Select 439, 1, '1870: Grand Tactical Rules for the Franco-Prussian War', 10, 2016, 5 from dual union
Select 440, 1, '1871: Last Stand at Surbiton', 10, 2016, 8 from dual union
Select 441, 1, '1871: The Battle of Dorking', 9, 2016, 7 from dual union
Select 442, 1, '1876', 4, 2016, 5 from dual union
Select 443, 1, '1876 Centennial Baseball', 5, 2017, 10 from dual union
Select 444, 1, '1879', 5, 2017, 10 from dual union
Select 445, 1, 'The 1879 Zulu War', 9, 2016, 9 from dual union
Select 446, 1, '1879: A sangre y fuego en las costas de los Andes', 7, 2016, 4 from dual union
Select 447, 1, '1879: Mins Corebook', 8, 2015, 7 from dual union
Select 448, 1, '1880: China', 4, 2016, 8 from dual union
Select 449, 1, '1881: Das Berliner Strassenbahnspiel', 0, 2017, 5 from dual union
Select 450, 1, '1886', 4, 2016, 4 from dual union
Select 451, 1, '1886 Loures', 10, 2016, 4 from dual union
Select 452, 1, '1889', 6, 2016, 7 from dual union
Select 453, 1, '1890', 1, 2015, 3 from dual union
Select 454, 1, '1891', 1, 2017, 8 from dual union
Select 455, 1, '1893: Cologne', 5, 2017, 3 from dual union
Select 456, 1, '1893: Koln-Bonn', 2, 2017, 1 from dual union
Select 457, 1, '1895 Namibia', 6, 2017, 8 from dual union
Select 458, 1, '1897', 9, 2015, 2 from dual union
Select 459, 1, '1897Large', 4, 2016, 6 from dual union
Select 460, 1, '1897Medium', 5, 2017, 7 from dual union
Select 461, 1, '1898', 1, 2017, 6 from dual union
Select 462, 1, '1899', 4, 2017, 6 from dual union
Select 463, 1, '1899KP', 6, 2016, 8 from dual union
Select 464, 1, '18??', 1, 2017, 3 from dual union
Select 465, 1, '18Africa', 1, 2016, 9 from dual union
Select 466, 1, '18AL', 2, 2017, 5 from dual union
Select 467, 1, '18Ardennes', 9, 2016, 1 from dual union
Select 468, 1, '18BA', 4, 2017, 2 from dual union
Select 469, 1, '18BE Pocket', 4, 2016, 3 from dual union
Select 470, 1, '18C2C: Continental Empires', 3, 2015, 1 from dual union
Select 471, 1, '18C2C: Manifest Destiny', 7, 2016, 4 from dual union
Select 472, 1, '18CLE', 4, 2016, 10 from dual union
Select 473, 1, '18CZ', 9, 2015, 6 from dual union
Select 474, 1, '18Dixie', 9, 2015, 5 from dual union
Select 475, 1, '18Dixie with 18MS and 18GA', 8, 2015, 2 from dual union
Select 476, 1, '18EC: USA East Coast', 5, 2015, 2 from dual union
Select 477, 1, '18ES Caminos de Hierro', 9, 2015, 3 from dual union
Select 478, 1, '18EU', 10, 2017, 6 from dual union
Select 479, 1, '18EZ', 3, 2017, 2 from dual union
Select 480, 1, '18FL', 10, 2017, 1 from dual union
Select 481, 1, '18FR', 10, 2017, 10 from dual union
Select 482, 1, '18GA', 0, 2015, 5 from dual union
Select 483, 1, '18GL', 7, 2015, 7 from dual union
Select 484, 1, '18GM: The 18XX GameMaster', 8, 2017, 2 from dual union
Select 485, 1, '18HeXX', 8, 2017, 6 from dual union
Select 486, 1, '18IA: Building Iowas Railroads', 10, 2015, 1 from dual union
Select 487, 1, '18IB', 8, 2017, 1 from dual union
Select 488, 1, '18Ireland', 5, 2016, 3 from dual union
Select 489, 1, '18Kaas', 6, 2017, 5 from dual union
Select 490, 1, '18MEX', 4, 2016, 4 from dual union
Select 491, 1, '18MY', 1, 2017, 5 from dual union
Select 492, 1, '18NA', 9, 2016, 3 from dual union
Select 493, 1, '18NAC', 3, 2016, 8 from dual union
Select 494, 1, '18NEB', 8, 2016, 6 from dual union
Select 495, 1, '18NK', 8, 2015, 1 from dual union
Select 496, 1, '18NL', 10, 2017, 9 from dual union
Select 497, 1, '18NY', 5, 2016, 3 from dual union
Select 498, 1, '18OE / 18C2C', 7, 2017, 4 from dual union
Select 499, 1, '18OE: On the Rails of the Orient Express', 2, 2017, 9 from dual union
Select 500, 1, '18OH', 5, 2015, 5 from dual union
Select 501, 1, '18PA', 5, 2017, 1 from dual union
Select 502, 1, '18Rhl: Rhineland', 4, 2015, 3 from dual union
Select 503, 1, '18Ruhr', 0, 2015, 10 from dual union
Select 504, 1, '18Ruhr: Extemsion 01', 0, 2015, 8 from dual union
Select 505, 1, '18SA', 2, 2015, 4 from dual union
Select 506, 1, '18Scan', 9, 2015, 3 from dual union
Select 507, 1, '18SP', 6, 2017, 3 from dual union
Select 508, 1, '18SS', 10, 2015, 8 from dual union
Select 509, 1, '18SW', 6, 2015, 5 from dual union
Select 510, 1, '18SX', 2, 2017, 2 from dual union
Select 511, 1, '18SY', 0, 2016, 8 from dual union
Select 512, 1, '18TK', 7, 2016, 1 from dual union
Select 513, 1, '18TN', 3, 2017, 4 from dual union
Select 514, 1, '18US', 7, 2015, 4 from dual union
Select 515, 1, '18USA', 9, 2017, 2 from dual union
Select 516, 1, '18VA', 1, 2015, 6 from dual union
Select 517, 1, '18West', 2, 2015, 10 from dual union
Select 518, 1, '18Xpress', 2, 2017, 1 from dual union
Select 519, 1, '1910', 1, 2017, 4 from dual union
Select 520, 1, '1911 Amundsen vs Scott', 10, 2017, 8 from dual union
Select 521, 1, '1911 Amundsen vs Scott: Expansion 4 – Food Depots', 8, 2017, 10 from dual union
Select 522, 1, 'The 1911 Revolution of China', 4, 2017, 5 from dual union
Select 523, 1, '1914', 8, 2016, 4 from dual union
Select 524, 1, '1914', 3, 2015, 5 from dual union
Select 525, 1, '1914 Revision Kit', 5, 2015, 8 from dual union
Select 526, 1, '1914: Austria-Hungary at War', 9, 2016, 5 from dual union
Select 527, 1, '1914: Dispatches Oregon ConSim Journal', 2, 2016, 2 from dual union
Select 528, 1, '1914: Germany at War', 2, 2015, 8 from dual union
Select 529, 1, '1914: Glorys End', 10, 2016, 1 from dual union
Select 530, 1, '1914: Glorys End / When Eagles Fight', 8, 2015, 5 from dual union
Select 531, 1, '1914: Offensive à outrance', 6, 2015, 10 from dual union
Select 532, 1, '1914: Opening Moves', 9, 2016, 4 from dual union
Select 533, 1, '1914: Serbien Muss Sterbien', 6, 2015, 6 from dual union
Select 534, 1, '1914: Twilight in the East', 1, 2015, 9 from dual union
Select 535, 1, '1916', 10, 2015, 6 from dual union
Select 536, 1, 'The 1916 Brusilov Offensive / Gorlice-Tarnow Breakthrough', 5, 2015, 2 from dual union
Select 537, 1, '1916: Romania, Battle of Nations', 5, 2015, 6 from dual union
Select 538, 1, '1917', 4, 2016, 2 from dual union
Select 539, 1, '1918', 4, 2016, 1 from dual union
Select 540, 1, '1918: Imperial Germanys Last Chance', 9, 2016, 7 from dual union
Select 541, 1, '1918: Storm in the West', 7, 2016, 7 from dual union
Select 542, 1, '1919: The Noble Experiment', 9, 2015, 4 from dual union
Select 543, 1, '1930!', 5, 2016, 1 from dual union
Select 544, 1, '1936: España Dividida', 3, 2017, 6 from dual union
Select 545, 1, '1936: Guerra Civil', 6, 2016, 2 from dual union
Select 546, 1, '1936: What If', 1, 2016, 9 from dual union
Select 547, 1, '1938: What if?', 0, 2017, 3 from dual union
Select 548, 1, '1939', 4, 2016, 5 from dual union
Select 549, 1, '1940', 5, 2017, 1 from dual union
Select 550, 1, '1940: Objetivo europa', 5, 2016, 9 from dual union
Select 551, 1, '1940: What If Germany Went East?', 9, 2015, 4 from dual union
Select 552, 1, '1941', 6, 2017, 1 from dual union
Select 553, 1, '1941: Fire in the sky above Belgrade', 2, 2015, 9 from dual union
Select 554, 1, '1941: Race to Moscow', 0, 2017, 5 from dual union
Select 555, 1, '1941: What If? An Alternative History Wargame of a Second Winter War', 8, 2017, 7 from dual union
Select 556, 1, '1942', 4, 2016, 9 from dual union
Select 557, 1, '1943', 8, 2015, 5 from dual union
Select 558, 1, '1944', 2, 2017, 10 from dual union
Select 559, 1, '1944: Race to the Rhine', 4, 2016, 10 from dual union
Select 560, 1, '1944: Race to the Rhine – Red Ball Express', 7, 2016, 5 from dual union
Select 561, 1, '1944: Second Front', 4, 2017, 4 from dual union
Select 562, 1, '1945', 1, 2016, 2 from dual union
Select 563, 1, '1955 Local Mercenary Promo Card', 6, 2017, 10 from dual union
Select 564, 1, '1955: College Activist Promo Cards', 7, 2016, 6 from dual union
Select 565, 1, '1955: The War of Espionage', 0, 2016, 9 from dual union
Select 566, 1, '1955: The War of Espionage – Political Support Expansion', 2, 2016, 1 from dual union
Select 567, 1, '1960: The Making of the President', 8, 2017, 10 from dual union
Select 568, 1, '1969', 6, 2017, 10 from dual union
Select 569, 1, '1969: Research Promo 2012', 4, 2017, 10 from dual union
Select 570, 1, '1976 Formula One Motor Racing', 10, 2017, 8 from dual union
Select 571, 1, '1980s Apples To Apples Snack Pack', 3, 2017, 8 from dual union
Select 572, 1, '1984: Animal Farm', 4, 2016, 1 from dual union
Select 573, 1, '1984: Animal Farm – Spiel 2012 promo cards', 1, 2016, 6 from dual union
Select 574, 1, '1989: Dawn of Freedom', 10, 2017, 7 from dual union
Select 575, 1, '1992', 3, 2015, 6 from dual union
Select 576, 1, '1999', 9, 2017, 4 from dual union
Select 577, 1, '19th Green', 9, 2015, 6 from dual union
Select 578, 1, '19th Hole', 6, 2017, 10 from dual union
Select 579, 1, 'The 19th Hole', 6, 2000, 1 from dual union
Select 580, 1, 'The 19th hole', 10, 2015, 3 from dual union
Select 581, 1, 'The 19th Hole Classic Golf Card Game', 7, 2017, 4 from dual union
Select 582, 1, '19th Hole Golf', 9, 2017, 1 from dual union
Select 583, 1, '1:0', 5, 2016, 3 from dual union
Select 584, 1, '1st & Goal', 5, 2017, 6 from dual union
Select 585, 1, '1st & Goal: Essen Eagles', 6, 2017, 1 from dual union
Select 586, 1, '1st & Goal: Mideast Division', 6, 2017, 9 from dual union
Select 587, 1, '1st & Goal: Midwest Division', 2, 2016, 8 from dual union
Select 588, 1, '1st & Goal: Northeast Division', 6, 2017, 10 from dual union
Select 589, 1, '1st & Goal: Northwest Division', 3, 2015, 10 from dual union
Select 590, 1, '1st & Goal: Southeast Division', 2, 2015, 8 from dual union
Select 591, 1, '1st & Goal: Southwest Division', 8, 2015, 2 from dual union
Select 592, 1, '1st Alamein', 2, 2016, 9 from dual union
Select 593, 1, '1st Blitzkrieg', 0, 2017, 1 from dual union
Select 594, 1, '1st El Alamein', 9, 2016, 2 from dual union
Select 595, 1, '1st Manassas: 21st July 1861', 2, 2016, 6 from dual union
Select 596, 1, '1st Newbury', 3, 2017, 9 from dual union
Select 597, 1, '1WW: World War One in Europe', 8, 2015, 8 from dual union
Select 598, 1, '1x1 Bingo', 8, 2016, 5 from dual union
Select 599, 1, '1x1 Memory', 6, 2017, 9 from dual union
Select 600, 1, '1x1 Obelisk', 2, 2017, 8 from dual union
Select 601, 1, '2 Count!', 6, 2016, 1 from dual union
Select 602, 1, '2 de Mayo', 8, 2016, 9 from dual union
Select 603, 1, '2 de Mayo: Assault on Palace Grimaldi', 8, 2017, 7 from dual union
Select 604, 1, '2 erste Spiele', 9, 2017, 3 from dual union
Select 605, 1, '2 Hour Dungeon Crawl', 3, 2016, 2 from dual union
Select 606, 1, '2 Hour Test Cricket', 0, 2015, 1 from dual union
Select 607, 1, '2 in 1', 4, 2015, 8 from dual union
Select 608, 1, '2 Kings', 5, 2016, 4 from dual union
Select 609, 1, '2 Super Spiele: Allegro Zet', 6, 2016, 10 from dual union
Select 610, 1, '2 Super-Spiele Glückspilz: Master Mix', 7, 2015, 6 from dual union
Select 611, 1, '2 WAY ボードゲーム 逃走中 ＆ 戦闘中', 9, 2016, 1 from dual union
Select 612, 1, '2 x 2 Napoleonics', 8, 2017, 10 from dual union
Select 613, 1, '2+1 Basketball Showtime', 10, 2016, 10 from dual union
Select 614, 1, '2, 3, 4 Play Air Hockey', 3, 2017, 4 from dual union
Select 615, 1, '2-5 Skidoo', 10, 2017, 4 from dual union
Select 616, 1, '2-Handed Whammy!', 1, 2016, 7 from dual union
Select 617, 1, '20 20 Dice Cricket', 6, 2017, 9 from dual union
Select 618, 1, '20 Jahre Activity', 1, 2016, 6 from dual union
Select 619, 1, '20 Jahre Darmstadt Spielt', 1, 2015, 10 from dual union
Select 620, 1, '20 Jahre deutsche Demokratische Republik', 6, 2015, 3 from dual union
Select 621, 1, '20 Level UP in 60 minutes', 10, 2017, 1 from dual union
Select 622, 1, '20 Questions', 5, 2017, 8 from dual union
Select 623, 1, '20 Questions (Pepys Party Game)', 4, 2016, 3 from dual union
Select 624, 1, '20 Questions for Kids', 5, 2015, 1 from dual union
Select 625, 1, '20 Questions: American Folklore', 10, 2016, 4 from dual union
Select 626, 1, '20 Questions: Nature and Science', 1, 2016, 7 from dual union
Select 627, 1, '20 Squares', 2, 2007, 9 from dual union
Select 628, 1, '20,000 Leagues Under the Sea Game', 4, 2015, 10 from dual union
Select 629, 1, '20.000 Leghe Sotto i Mari', 10, 2016, 7 from dual union
Select 630, 1, '200', 6, 2015, 3 from dual union
Select 631, 1, '200 Jahre Montgolfieren', 9, 2015, 8 from dual union
Select 632, 1, '200 Miles from Moscow', 8, 2017, 7 from dual union
Select 633, 1, '200 Steps to Freedom', 0, 2017, 9 from dual union
Select 634, 1, 'The 2000 Guineas', 2, 2016, 9 from dual union
Select 635, 1, '2000 Jaar Later...', 8, 2016, 6 from dual union
Select 636, 1, '2000 Miles to Paradise', 8, 2015, 9 from dual union
Select 637, 1, '20000 Mijlen onder zee', 7, 2016, 5 from dual union
Select 638, 1, '2000AD: Rogue Trooper Miniatures Game', 1, 2015, 1 from dual union
Select 639, 1, 'The 2010 Election', 9, 2015, 5 from dual union
Select 640, 1, '2010 Swedish Parliament', 10, 2017, 10 from dual union
Select 641, 1, '2012 Overture', 8, 2016, 9 from dual union
Select 642, 1, '2012: Godswake', 5, 2017, 3 from dual union
Select 643, 1, '2012: The Day of Fallout', 3, 2016, 2 from dual union
Select 644, 1, '2012: The Day of Fallout – Commander', 3, 2017, 1 from dual union
Select 645, 1, '2012: The Mayan Calendar', 4, 2015, 6 from dual union
Select 646, 1, 'The 2015 Election', 4, 2015, 4 from dual union
Select 647, 1, '2016.A', 7, 2016, 10 from dual union
Select 648, 1, '2019: The ARCTIC', 10, 2016, 4 from dual union
Select 649, 1, '2024-An Olympic Undertaking', 2, 2016, 10 from dual union
Select 650, 1, '2038: Tycoons of the Asteroid Belt', 10, 2015, 3 from dual union
Select 651, 1, '2038: Tycoons of the Asteroid Belt Expansion Set', 8, 2017, 1 from dual union
Select 652, 1, '2048: The Board Game', 5, 2016, 5 from dual union
Select 653, 1, 'The 20th Century', 2, 2017, 5 from dual union
Select 654, 1, '20th Century', 10, 2017, 5 from dual union
Select 655, 1, '20th Century @ War', 6, 2015, 6 from dual union
Select 656, 1, '20th Century Limited', 2, 2015, 8 from dual union
Select 657, 1, '20th Century Time Travel Card Game', 8, 2016, 3 from dual union
Select 658, 1, '20th Century århundredets spil', 7, 2015, 2 from dual union
Select 659, 1, '21 Freeze Out', 4, 2016, 10 from dual union
Select 660, 1, '21 Letters', 0, 2017, 9 from dual union
Select 661, 1, '21 Motines', 1, 2017, 7 from dual union
Select 662, 1, '21 Mutinies Arrr! Edition', 10, 2016, 7 from dual union
Select 663, 1, '21 Mutinies: Treasures of the Empire', 9, 2017, 6 from dual union
Select 664, 1, '"21" Lawn Dice', 5, 2017, 3 from dual union
Select 665, 1, '2109', 10, 2017, 5 from dual union
Select 666, 1, '2149ers', 10, 2017, 4 from dual union
Select 667, 1, '2184 Generation War', 9, 2016, 2 from dual union
Select 668, 1, '2192 Invasion: Earth', 5, 2015, 2 from dual union
Select 669, 1, '21E', 1, 2017, 4 from dual union
Select 670, 1, '21JumpBall', 9, 2017, 10 from dual union
Select 671, 1, '21st Century Gold Rush', 0, 2016, 6 from dual union
Select 672, 1, '22 B.B.Y.', 1, 2016, 5 from dual union
Select 673, 1, '22 Ku-du', 2, 2015, 3 from dual union
Select 674, 1, '22 Pommes', 6, 2016, 10 from dual union
Select 675, 1, '220', 2, 2015, 1 from dual union
Select 676, 1, '221B Baker St.: Sherlock Holmes & the Time Machine', 0, 2015, 8 from dual union
Select 677, 1, '221B Baker Street: The Master Detective Game', 10, 2017, 2 from dual union
Select 678, 1, '221b Baker Street: The Master Detective Game – Set #2', 4, 2016, 8 from dual union
Select 679, 1, '221b Baker Street: The Master Detective Game – Set #3', 5, 2016, 7 from dual union
Select 680, 1, '221b Baker Street: The Master Detective Game – Set #4', 5, 2015, 7 from dual union
Select 681, 1, '221b Baker Street: The Master Detective Game – Set #5', 0, 2016, 10 from dual union
Select 682, 1, '221b Baker Street: The Master Detective Game – Set #6', 1, 2000, 6 from dual union
Select 683, 1, '221b Baker Street: The Master Detective Game – Set #7', 3, 2016, 7 from dual union
Select 684, 1, '221b Baker Street: The Master Detective Game – Set #8', 7, 2016, 3 from dual union
Select 685, 1, '221b Baker Street: The Master Detective Game – Set #9', 9, 2016, 6 from dual union
Select 686, 1, '221B: A Story Driven Detective Game', 9, 2016, 4 from dual union
Select 687, 1, '22ra', 2, 2016, 10 from dual union
Select 688, 1, '23', 8, 2015, 5 from dual union
Select 689, 1, '23,000ft', 0, 2015, 2 from dual union
Select 690, 1, '2349: Space Prospectors', 4, 2016, 9 from dual union
Select 691, 1, 'The 24 Card Game', 4, 2016, 10 from dual union
Select 692, 1, '24 Card Game', 1, 2017, 2 from dual union
Select 693, 1, '24 Countdown Game', 10, 2016, 1 from dual union
Select 694, 1, '24 CTU Undercover', 5, 2017, 10 from dual union
Select 695, 1, '24 DVD Board Game', 6, 2017, 2 from dual union
Select 696, 1, '24 Game', 3, 2017, 9 from dual union
Select 697, 1, '24 Game Primer Add/Subtract', 8, 2017, 3 from dual union
Select 698, 1, '24 Game: Algebra/Exponents', 7, 2015, 8 from dual union
Select 699, 1, '24 Game: Factors/Multiples', 2, 2017, 3 from dual union
Select 700, 1, '24 Game: Fractions/Decimals', 1, 2016, 5 from dual union
Select 701, 1, '24 Game: Integers positive/negative', 8, 2016, 1 from dual union
Select 702, 1, '24 Game: Primer Multiply/Divide', 4, 2015, 10 from dual union
Select 703, 1, '24 Game: Single/Double Digits', 7, 2016, 2 from dual union
Select 704, 1, 'Les 24 heures du Mans', 7, 2016, 3 from dual union
Select 705, 1, '24 heures moto', 10, 2016, 2 from dual union
Select 706, 1, '24 Karat', 1, 2017, 10 from dual union
Select 707, 1, '24 Trading Card Game', 4, 2017, 7 from dual union
Select 708, 1, '24/7: The Game', 1, 2017, 7 from dual union
Select 709, 1, '247 "two.four.seven"', 0, 2016, 2 from dual union
Select 710, 1, '24: Wer zuletzt sticht, sticht am besten!', 2, 2017, 6 from dual union
Select 711, 1, '25', 10, 2016, 3 from dual union
Select 712, 1, '25 Instant & Irresistible Math Board Games (Grades 2-4)', 4, 2017, 10 from dual union
Select 713, 1, '25 New Games to be Played with Lexicon Cards', 6, 2016, 3 from dual union
Select 714, 1, '25 Random Things About Me', 5, 2015, 1 from dual union
Select 715, 1, '25 Super Cool Math Board Games', 6, 2017, 9 from dual union
Select 716, 1, '25 Words or Less', 7, 2017, 9 from dual union
Select 717, 1, '25 Words or Less: People, Places and Things Edition', 8, 2016, 6 from dual union
Select 718, 1, '26!', 9, 2015, 1 from dual union
Select 719, 1, '26.2: The Marathon Dice Game', 3, 2015, 3 from dual union
Select 720, 1, '270 to Win', 10, 2016, 3 from dual union
Select 721, 1, '27: Five Elements', 7, 2015, 3 from dual union
Select 722, 1, '27th Passenger: A Hunt On Rails', 0, 2017, 2 from dual union
Select 723, 1, '27th Passenger: A Hunt on Rails – Chatty Bunch Promo Pack', 3, 2016, 4 from dual union
Select 724, 1, '27th Passenger: A Hunt on Rails – Spiel 2014 Promo Pack', 5, 2016, 2 from dual union
Select 725, 1, '27th Passenger: A Hunt on Rails – True Colors Promo Pack', 6, 2016, 3 from dual union
Select 726, 1, '29 Lets Go!', 9, 2015, 1 from dual union
Select 727, 1, '2D Yacht', 6, 2017, 8 from dual union
Select 728, 1, '2D-Pachisi', 8, 2016, 5 from dual union
Select 729, 1, '2gether', 5, 2017, 2 from dual union
Select 730, 1, '2GM Tactics', 6, 2015, 6 from dual union
Select 731, 1, '2GM Tactics: German Reinforcements Expansion', 8, 2017, 10 from dual union
Select 732, 1, '2GM Tactics: Italy Expansion', 3, 2017, 2 from dual union
Select 733, 1, '2GM Tactics: Soviet Union Expansion', 3, 2017, 2 from dual union
Select 734, 1, '2GM Tactics: United Kingdom Expansion', 0, 2017, 10 from dual union
Select 735, 1, '2nd El Alemein', 9, 2015, 2 from dual union
Select 736, 1, '2nd Fleet', 1, 2017, 7 from dual union
Select 737, 1, '2nd Guess', 7, 2017, 10 from dual union
Select 738, 1, '2Ruote', 0, 2015, 8 from dual union
Select 739, 1, '2WW', 7, 2015, 10 from dual union
Select 740, 1, '2WW: The War in Europe', 8, 2015, 6 from dual union
Select 741, 1, '2ème D.B. I Normandie', 2, 2015, 2 from dual union
Select 742, 1, '2ème D.B. II Paris', 9, 2016, 5 from dual union
Select 743, 1, '3 3/4 Laps', 6, 2017, 8 from dual union
Select 744, 1, '3 and C', 8, 2017, 4 from dual union
Select 745, 1, '3 Blind Mice', 0, 2017, 9 from dual union
Select 746, 1, '3 Code Football', 9, 2017, 5 from dual union
Select 747, 1, 'The 3 Commandments', 9, 2016, 9 from dual union
Select 748, 1, '3 Dice', 6, 2015, 10 from dual union
Select 749, 1, '3 Dimensional Chess', 2, 2017, 5 from dual union
Select 750, 1, '3 for me', 0, 2016, 8 from dual union
Select 751, 1, '3 gewinnt!', 8, 2015, 4 from dual union
Select 752, 1, '3 Gnus und 7 Kakadus', 6, 2016, 1 from dual union
Select 753, 1, '3 in 1 Table-Top Sports', 8, 2017, 4 from dual union
Select 754, 1, '3 Is Raak', 10, 2015, 7 from dual union
Select 755, 1, '3 Kings', 1, 2015, 3 from dual union
Select 756, 1, 'The 3 Little Pigs', 9, 2016, 10 from dual union
Select 757, 1, '3 Little Pigs and the Big Bad Wolf', 7, 2015, 4 from dual union
Select 758, 1, '3 Little Words', 9, 2016, 6 from dual union
Select 759, 1, '3 Man Chess', 2, 2015, 2 from dual union
Select 760, 1, '3 Mann hoch', 7, 2016, 6 from dual union
Select 761, 1, '3 Men on a Horse', 1, 2016, 3 from dual union
Select 762, 1, '3 mit Kopf & Pfote: Fit, pfiffig, schlau', 7, 2015, 6 from dual union
Select 763, 1, '3 mit Kopf & Pfote: Lustig und schlau!', 10, 2016, 5 from dual union
Select 764, 1, '3 mit Kopf & Pfote: Wettbewerb der Tiere', 6, 2016, 2 from dual union
Select 765, 1, '3 Monkeys', 1, 2015, 8 from dual union
Select 766, 1, '3 on 3', 5, 2017, 1 from dual union
Select 767, 1, '3 Or More', 2, 2016, 8 from dual union
Select 768, 1, '3 Point Landing', 6, 2015, 4 from dual union
Select 769, 1, '3 Secrets', 4, 2017, 3 from dual union
Select 770, 1, '3 Seeds: Reap Where You Sow', 4, 2017, 10 from dual union
Select 771, 1, '3 sind eine zu viel!', 0, 2015, 9 from dual union
Select 772, 1, '3 SPORT GAMES', 1, 2015, 4 from dual union
Select 773, 1, '3 SPOT game', 8, 2017, 8 from dual union
Select 774, 1, '3 Stones', 4, 2017, 2 from dual union
Select 775, 1, '3 Stooges', 8, 2016, 8 from dual union
Select 776, 1, 'The 3 Stooges Fun House', 2, 2017, 9 from dual union
Select 777, 1, '3 Stooges Racing Rampage', 7, 2016, 9 from dual union
Select 778, 1, '3 Tage im Mai', 8, 2017, 7 from dual union
Select 779, 1, '3 to 13', 5, 2016, 4 from dual union
Select 780, 1, '3 to 4 Headed Monster', 4, 2016, 1 from dual union
Select 781, 1, '3 Up', 10, 2016, 6 from dual union
Select 782, 1, '3 Wishes', 0, 2016, 8 from dual union
Select 783, 1, '3 Wishes: More Genies! Promo Card', 0, 2016, 7 from dual union
Select 784, 1, '3, 2, 1... START!', 2, 2017, 6 from dual union
Select 785, 1, '3-2-1', 5, 2015, 7 from dual union
Select 786, 1, '3-2-1 Blast-Off!', 8, 2015, 3 from dual union
Select 787, 1, '3-2-1 Dusty Bin Game', 10, 2017, 3 from dual union
Select 788, 1, '3-4-2', 5, 2015, 3 from dual union
Select 789, 1, '3-A-Side', 2, 2017, 2 from dual union
Select 790, 1, '3-D Bullz Eye Dartz', 6, 2016, 10 from dual union
Select 791, 1, '3-D Chess', 7, 2017, 6 from dual union
Select 792, 1, '3-D Draughts', 3, 2016, 1 from dual union
Select 793, 1, '3-D Game Board', 0, 2015, 9 from dual union
Select 794, 1, '3-D Viewmaster Trivia Quiz', 1, 2017, 3 from dual union
Select 795, 1, '3-high', 2, 2016, 10 from dual union
Select 796, 1, '3-in-a-Row Friend', 6, 2017, 6 from dual union
Select 797, 1, '3-Kaart Trio-Spel', 5, 2016, 5 from dual union
Select 798, 1, '3-Ring Circus Card Game', 9, 2017, 1 from dual union
Select 799, 1, '3-Squared', 8, 2017, 5 from dual union
Select 800, 1, '3-Wide', 9, 2015, 5 from dual union
Select 801, 1, '3.. 2.. 1.. meins!', 2, 2017, 8 from dual union
Select 802, 1, '3.6 international', 1, 2016, 1 from dual union
Select 803, 1, '3/4Takt', 9, 2015, 1 from dual union
Select 804, 1, '3/6', 5, 2016, 10 from dual union
Select 805, 1, '30', 4, 2015, 1 from dual union
Select 806, 1, '30 Carats', 4, 2016, 5 from dual union
Select 807, 1, '30 Days of Night: A Game of Survival', 8, 2016, 2 from dual union
Select 808, 1, '30 points', 10, 2016, 5 from dual union
Select 809, 1, '30 Rails', 4, 2016, 9 from dual union
Select 810, 1, '30 Second Mysteries', 8, 2016, 4 from dual union
Select 811, 1, '30 Second Mysteries for Kids', 9, 2017, 4 from dual union
Select 812, 1, '30 Secondes pour répondre', 3, 2017, 1 from dual union
Select 813, 1, '30 Seconds', 6, 2016, 4 from dual union
Select 814, 1, '30 Seconds Junior', 2, 2015, 5 from dual union
Select 815, 1, '30 Seconds Uitbreiding', 6, 2017, 2 from dual union
Select 816, 1, '30 Years War: Bloodlust Valenstein', 1, 2016, 10 from dual union
Select 817, 1, '300', 10, 2016, 5 from dual union
Select 818, 1, '300 allOra', 9, 2015, 4 from dual union
Select 819, 1, '300 fets de llengua', 1, 2015, 1 from dual union
Select 820, 1, '300 Mile Race Game', 7, 2015, 7 from dual union
Select 821, 1, '300 Pop Questions: 60s', 0, 2016, 1 from dual union
Select 822, 1, '"300"', 4, 2016, 7 from dual union
Select 823, 1, '300: The Board Game', 6, 2016, 5 from dual union
Select 824, 1, '3012', 6, 2015, 3 from dual union
Select 825, 1, '3018: Age of the Interplanetals', 8, 2013, 3 from dual union
Select 826, 1, '303', 9, 2016, 3 from dual union
Select 827, 1, '32', 1, 2016, 2 from dual union
Select 828, 1, '32 Dice', 8, 2015, 4 from dual union
Select 829, 1, '32 Suspects', 10, 2017, 10 from dual union
Select 830, 1, '321 and Bullseye GameShow Duo', 5, 2017, 7 from dual union
Select 831, 1, '33 Miners Board Game', 10, 2017, 5 from dual union
Select 832, 1, '35 or Huntex', 3, 2013, 4 from dual union
Select 833, 1, '360° Air Hockey', 6, 2015, 1 from dual union
Select 834, 1, '369', 2, 2017, 8 from dual union
Select 835, 1, '36d6', 10, 2015, 6 from dual union
Select 836, 1, '37', 5, 2016, 2 from dual union
Select 837, 1, '38th Parallel', 2, 2016, 6 from dual union
Select 838, 1, '38th Parallel', 8, 2015, 2 from dual union
Select 839, 1, '39 Clues: Cahill Commotion', 2, 2015, 9 from dual union
Select 840, 1, '39 Clues: Search for the Keys', 0, 2015, 4 from dual union
Select 841, 1, '3:2...Sieg!', 6, 2017, 5 from dual union
Select 842, 1, '3D Action Snakes and Ladders', 4, 2017, 2 from dual union
Select 843, 1, '3D Block Game', 4, 2015, 9 from dual union
Select 844, 1, '3D Connect', 6, 2017, 7 from dual union
Select 845, 1, '3D Dino Dominoes', 1, 2017, 8 from dual union
Select 846, 1, '3D Dominos', 2, 2016, 5 from dual union
Select 847, 1, '3D Labyrinth', 9, 2017, 3 from dual union
Select 848, 1, '3D Memo Smurfs', 2, 2016, 9 from dual union
Select 849, 1, '3D Pawn', 8, 2016, 3 from dual union
Select 850, 1, '3D Pawn: Checkmate Expansion', 10, 2016, 4 from dual union
Select 851, 1, '3D Pool', 10, 2015, 5 from dual union
Select 852, 1, '3D Risk', 2, 2017, 8 from dual union
Select 853, 1, '3D Tic Tac Toe', 8, 2017, 10 from dual union
Select 854, 1, '3D Tic Tac Toe', 8, 2015, 4 from dual union
Select 855, 1, '3D5 (Cubic)', 5, 2016, 9 from dual union
Select 856, 1, '3Dimensional Chess', 2, 2015, 3 from dual union
Select 857, 1, '3DXWord', 1, 2016, 10 from dual union
Select 858, 1, '3er Schach', 6, 2016, 4 from dual union
Select 859, 1, '3House', 10, 2016, 10 from dual union
Select 860, 1, '3P2K', 2, 2015, 6 from dual union
Select 861, 1, '3quence', 9, 2017, 10 from dual union
Select 862, 1, '3rd Fleet', 3, 2015, 10 from dual union
Select 863, 1, '3rd Millennium Chess', 7, 2017, 5 from dual union
Select 864, 1, '3singes', 10, 2015, 8 from dual union
Select 865, 1, '3UP 3DOWN', 10, 2016, 10 from dual union
Select 866, 1, '3v3: The Commissioned Comic Card Game', 0, 2017, 7 from dual union
Select 867, 1, '3x16', 6, 2016, 10 from dual union
Select 868, 1, '3x3 und eins vorbei', 0, 2017, 5 from dual union
Select 869, 1, '3·4 = Klatsch!', 1, 2015, 10 from dual union
Select 870, 1, '4 Alarm', 3, 2017, 5 from dual union
Select 871, 1, '4 CYTE (Foresight)', 1, 2016, 6 from dual union
Select 872, 1, '4 en Letras', 1, 2015, 5 from dual union
Select 873, 1, '4 First Games', 9, 2017, 4 from dual union
Select 874, 1, '4 gegen 4 und 4 gegen 1', 4, 2017, 10 from dual union
Select 875, 1, '4 Get It', 1, 2015, 4 from dual union
Select 876, 1, '4 Gods', 4, 2016, 9 from dual union
Select 877, 1, '4 Kings', 10, 2016, 2 from dual union
Select 878, 1, '4 Letter Word', 3, 2015, 5 from dual union
Select 879, 1, '4 Letter Words', 7, 2015, 2 from dual union
Select 880, 1, '4 Monkeys', 8, 2015, 8 from dual union
Select 881, 1, '4 Monkeys: Expansion', 1, 2016, 9 from dual union
Select 882, 1, '4 Player Checkers', 6, 2016, 3 from dual union
Select 883, 1, '4 Player Chess', 1, 2015, 1 from dual union
Select 884, 1, '4 Seasons', 2, 2016, 8 from dual union
Select 885, 1, 'De 4 seizoenen', 2, 2015, 2 from dual union
Select 886, 1, '4 Spiele in der Box', 0, 2015, 2 from dual union
Select 887, 1, '4 the Birds', 9, 2016, 8 from dual union
Select 888, 1, '4 Thrones', 0, 2015, 5 from dual union
Select 889, 1, '4 Tractors and a Cow Game', 8, 2016, 1 from dual union
Select 890, 1, '4 Verita-Spiele', 5, 2015, 5 from dual union
Select 891, 1, '4 Warlords', 9, 2015, 3 from dual union
Select 892, 1, '4 X 4', 0, 2017, 3 from dual union
Select 893, 1, '4+', 5, 2016, 4 from dual union
Select 894, 1, '4-Corners', 4, 2016, 2 from dual union
Select 895, 1, '4-mation', 3, 2017, 5 from dual union
Select 896, 1, '4-Square', 10, 2015, 1 from dual union
Select 897, 1, '4-Way Countdown!', 2, 2017, 8 from dual union
Select 898, 1, '4-Way Spelldown!', 10, 2016, 3 from dual union
Select 899, 1, '4/Play', 5, 2017, 1 from dual union
Select 900, 1, '40 Barrels of Beer', 3, 2017, 2 from dual union
Select 901, 1, '40 Hats for 40 Cats', 5, 2015, 6 from dual union
Select 902, 1, '40 Master Composers', 5, 2016, 10 from dual union
Select 903, 1, '40 Overs', 10, 2016, 1 from dual union
Select 904, 1, '40-Love Tennis', 0, 2016, 9 from dual union
Select 905, 1, 'The 400', 9, 2016, 8 from dual union
Select 906, 1, '4000 A.D.', 5, 2016, 10 from dual union
Select 907, 1, '404: Law Not Found', 9, 2015, 1 from dual union
Select 908, 1, '40K Skirmish', 3, 2017, 4 from dual union
Select 909, 1, '41', 2, 2014, 10 from dual union
Select 910, 1, '42', 7, 2013, 4 from dual union
Select 911, 1, '42 Hyperspace Expressway', 7, 2016, 5 from dual union
Select 912, 1, 'The 45', 7, 2016, 7 from dual union
Select 913, 1, '.45 Adventure: Crimefighting Action in the Pulp Era', 9, 2015, 10 from dual union
Select 914, 1, 'Les 45 Tours de France', 2, 2016, 9 from dual union
Select 915, 1, '48STORM', 5, 2017, 7 from dual union
Select 916, 1, '48th Panzer Korps', 0, 2016, 4 from dual union
Select 917, 1, '4: The After Dinner Golf Game with Attitude', 2, 2015, 9 from dual union
Select 918, 1, '4:20 The Boardgame', 9, 2015, 3 from dual union
Select 919, 1, '4D Tic-Tac-Toe', 2, 2015, 9 from dual union
Select 920, 1, '4SQR', 7, 2016, 4 from dual union
Select 921, 1, '4th and Inches', 0, 2015, 9 from dual union
Select 922, 1, '4th Corner', 10, 2017, 7 from dual union
Select 923, 1, '4th Dimension', 1, 2017, 1 from dual union
Select 924, 1, '4th Fleet', 4, 2015, 8 from dual union
Select 925, 1, '4th Quarter TouchDown Football', 8, 2017, 3 from dual union
Select 926, 1, '4th Reich', 10, 2016, 1 from dual union
Select 927, 1, '4th Street Baseball', 3, 2017, 2 from dual union
Select 928, 1, '4th Street Hockey', 3, 2016, 10 from dual union
Select 929, 1, '4th Street Pro Football', 10, 2016, 7 from dual union
Select 930, 1, '4ty4', 1, 2017, 10 from dual union
Select 931, 1, '4Up!', 4, 2016, 6 from dual union
Select 932, 1, '4Word', 6, 2017, 4 from dual union
Select 933, 1, '4X4', 1, 2017, 2 from dual union
Select 934, 1, '4x4 Dice', 5, 2016, 1 from dual union
Select 935, 1, '5 Alive', 7, 2017, 1 from dual union
Select 936, 1, '5 Card Nancy', 1, 2015, 6 from dual union
Select 937, 1, '5 Colonnes à la une', 10, 2015, 8 from dual union
Select 938, 1, 'Det 5 Element', 6, 2016, 5 from dual union
Select 939, 1, '5 in a Row', 4, 2017, 6 from dual union
Select 940, 1, '5 in a Row Challenge', 1, 2016, 4 from dual union
Select 941, 1, '5 Kingdoms', 1, 2016, 6 from dual union
Select 942, 1, '5 Men in Normandy', 4, 2017, 2 from dual union
Select 943, 1, '5 Minuten Denk mal', 5, 2015, 10 from dual union
Select 944, 1, '5 Minutes', 2, 2017, 8 from dual union
Select 945, 1, '5 Pad & Pencil Games People Love to Play', 8, 2017, 8 from dual union
Select 946, 1, '5 Quadrat', 8, 2017, 2 from dual union
Select 947, 1, '5 Score', 10, 2017, 8 from dual union
Select 948, 1, '5 Second Rule', 2, 2017, 3 from dual union
Select 949, 1, '5 Second Rule: Uncensored', 6, 2016, 4 from dual union
Select 950, 1, '5 Seconds', 10, 2016, 5 from dual union
Select 951, 1, '5 Star', 5, 2017, 9 from dual union
Select 952, 1, '5 tegen 5', 4, 2016, 3 from dual union
Select 953, 1, '5 to Close', 10, 2016, 2 from dual union
Select 954, 1, '5 x 5 War', 10, 2015, 2 from dual union
Select 955, 1, '5 Zombies', 2, 2015, 5 from dual union
Select 956, 1, 'Le 5 à cinq', 5, 2017, 4 from dual union
Select 957, 1, '5, 2, 3: Gackerei', 10, 2017, 8 from dual union
Select 958, 1, '5-Across', 9, 2015, 3 from dual union
Select 959, 1, '5-in-a-row', 5, 2017, 6 from dual union
Select 960, 1, '5-Minute Dungeon', 2, 2017, 5 from dual union
Select 961, 1, '5.56mm', 10, 2016, 7 from dual union
Select 962, 1, '50 Card Games for Children', 9, 2016, 4 from dual union
Select 963, 1, 'The 50s', 4, 2016, 6 from dual union
Select 964, 1, '500', 7, 2017, 1 from dual union
Select 965, 1, '500 Malicious Cards', 2, 2015, 5 from dual union
Select 966, 1, '500 Places to Take Your Kids Before They Grow Up', 3, 2017, 4 from dual union
Select 967, 1, '504', 4, 2015, 10 from dual union
Select 968, 1, '50er Jahre Quiz', 1, 2017, 9 from dual union
Select 969, 1, '51 Pegasi', 0, 2015, 7 from dual union
Select 970, 1, '5150', 6, 2016, 6 from dual union
Select 971, 1, '5150: Fighter Command', 0, 2017, 2 from dual union
Select 972, 1, '5150: First Contact', 5, 2017, 8 from dual union
Select 973, 1, '5150: Fringe Space', 1, 2016, 2 from dual union
Select 974, 1, '5150: Illegal Aliens', 0, 2015, 5 from dual union
Select 975, 1, '5150: Infestation', 7, 2017, 4 from dual union
Select 976, 1, '5150: New Beginnings', 3, 2015, 2 from dual union
Select 977, 1, '5150: Star Army', 0, 2015, 2 from dual union
Select 978, 1, '5150: Star Navy', 10, 2016, 10 from dual union
Select 979, 1, '5150: The Negotiating Game', 0, 2015, 10 from dual union
Select 980, 1, '5150: Under A Hishen Sky!', 4, 2017, 6 from dual union
Select 981, 1, '5150: Urban Renewal', 5, 2016, 8 from dual union
Select 982, 1, '51st State', 3, 2015, 8 from dual union
Select 983, 1, '51st State: FLGS Promo', 1, 2016, 3 from dual union
Select 984, 1, '51st State: Master Set', 1, 2016, 2 from dual union
Select 985, 1, '51st State: Master Set pre-order promos', 5, 2016, 3 from dual union
Select 986, 1, '51st State: Master Set – Promo Set 1', 2, 2017, 3 from dual union
Select 987, 1, '51st State: Scavengers', 3, 2017, 8 from dual union
Select 988, 1, '51st State: Wrak Transportera Promo Card', 7, 2017, 9 from dual union
Select 989, 1, '54 Jones: Keeping up with the Joneses', 9, 2015, 5 from dual union
Select 990, 1, '54x12', 6, 2016, 3 from dual union
Select 991, 1, '55', 2, 2015, 10 from dual union
Select 992, 1, 'Le 55', 4, 2015, 2 from dual union
Select 993, 1, '55Stones', 4, 2015, 7 from dual union
Select 994, 1, '57th PANZER KORPS: The Strong Right Hook', 4, 2015, 7 from dual union
Select 995, 1, '59 Seconds', 4, 2017, 7 from dual union
Select 996, 1, '5Crests', 7, 2015, 2 from dual union
Select 997, 1, '5cross', 3, 2016, 7 from dual union
Select 998, 1, '5ive Straight', 2, 2015, 7 from dual union
Select 999, 1, '5ive: Kings Court', 5, 2017, 3 from dual union
Select 1000, 1, '5mm Wargame Rules for Ancient Land Battles, Sieges and Naval Engagements', 10, 2017, 3 from dual)  a
WHERE NOT EXISTS (SELECT product_id from product where product_id = 1 );

INSERT INTO product (product_id, active, name, quantity, year_published, category_id)
Select *
from (
Select 1001, 1, '5Pax', 7, 2015, 9 from dual union
Select 1002, 1, '5Pillars Board Game', 8, 2015, 2 from dual union
Select 1003, 1, '5Pillars Fun Box', 4, 2016, 9 from dual union
Select 1004, 1, '5star', 8, 2016, 2 from dual union
Select 1005, 1, '5th Column (fan expansion for Fortress America)', 0, 2016, 2 from dual union
Select 1006, 1, '5th Column Spy Hunter', 0, 2015, 9 from dual union
Select 1007, 1, '5th Fleet', 2, 2017, 2 from dual union
Select 1008, 1, '5th Gear', 6, 2015, 9 from dual union
Select 1009, 1, 'The 5th Land', 10, 2017, 7 from dual union
Select 1010, 1, '5th Martian Coaster', 1, 2015, 5 from dual union
Select 1011, 1, '5°Dimension Playing Card Game', 0, 2017, 7 from dual union
Select 1012, 1, '6', 3, 2015, 2 from dual union
Select 1013, 1, '6 Billion', 5, 2016, 10 from dual union
Select 1014, 1, '6 day Bike Race', 9, 2015, 2 from dual union
Select 1015, 1, '6 Day Bike Race', 8, 2016, 5 from dual union
Select 1016, 1, 'The 6 Days of Glory', 3, 2016, 4 from dual union
Select 1017, 1, '6 in Einem', 10, 2016, 9 from dual union
Select 1018, 1, 'Les 6 Jours', 6, 2016, 8 from dual union
Select 1019, 1, '6 jours de Paris', 5, 2016, 6 from dual union
Select 1020, 1, '6 kleine Spiele', 5, 2015, 6 from dual union
Select 1021, 1, '6 Little Postmen', 1, 2017, 3 from dual union
Select 1022, 1, '6 Maths Board Games', 1, 2015, 2 from dual union
Select 1023, 1, '6 Memory Skills Board Games', 0, 2012, 6 from dual union
Select 1024, 1, '6 nimmt!', 10, 2016, 7 from dual union
Select 1025, 1, '6 nimmt! Junior', 1, 2016, 6 from dual union
Select 1026, 1, '6 nimmt! Plus', 9, 2015, 10 from dual union
Select 1027, 1, '6 nimmt! Schnupperspiel', 4, 2015, 1 from dual union
Select 1028, 1, 'The 6 Pack of Paper & Pencil Games', 4, 2016, 5 from dual union
Select 1029, 1, '6 richtige', 4, 2016, 4 from dual union
Select 1030, 1, '6 Steps', 1, 2017, 4 from dual union
Select 1031, 1, '6 Tage-Rennen mit Rundengewinn', 9, 2017, 9 from dual union
Select 1032, 1, '6 x 6 Abstract Game', 2, 2017, 4 from dual union
Select 1033, 1, '6 x 6 Klein Monte Carlo', 6, 2015, 9 from dual union
Select 1034, 1, '6%', 1, 2015, 8 from dual union
Select 1035, 1, '6-Minute Princess', 10, 2016, 10 from dual union
Select 1036, 1, '6-TAC', 6, 2016, 9 from dual union
Select 1037, 1, '6-Tage Rennen', 7, 2015, 6 from dual union
Select 1038, 1, '60 Dwarves', 5, 2016, 8 from dual union
Select 1039, 1, '60 Minutes to Save the Earth', 8, 2015, 9 from dual union
Select 1040, 1, 'The 60s: A Game for Your Generation', 0, 2016, 1 from dual union
Select 1041, 1, '600', 5, 2015, 9 from dual union
Select 1042, 1, '600: il Secolo di Ferro', 3, 2015, 8 from dual union
Select 1043, 1, '60er Jahre Quiz', 3, 2015, 3 from dual union
Select 1044, 1, '64 Milestones: The Game of Life', 6, 2015, 3 from dual union
Select 1045, 1, 'The 64,000 Question', 8, 2016, 9 from dual union
Select 1046, 1, '64-32 Ranch Roundup', 6, 2016, 10 from dual union
Select 1047, 1, '65: Squad-Level Combat in the Jungles of Vietnam', 0, 2016, 8 from dual union
Select 1048, 1, 'Das 6600 Fragen-Quiz', 9, 2016, 8 from dual union
Select 1049, 1, '6er Raus', 3, 2017, 9 from dual union
Select 1050, 1, '6mal6', 3, 2017, 4 from dual union
Select 1051, 1, '6th player expansion (fan expansion for Constantinopolis)', 6, 2016, 1 from dual union
Select 1052, 1, '6th Year Cwali', 10, 2015, 3 from dual union
Select 1053, 1, '6x5', 3, 2015, 9 from dual union
Select 1054, 1, '7', 5, 2015, 9 from dual union
Select 1055, 1, '7 & 7', 8, 2016, 10 from dual union
Select 1056, 1, '7 Ages', 6, 2015, 6 from dual union
Select 1057, 1, '7 Answers of Highly Horny People', 10, 2015, 9 from dual union
Select 1058, 1, '7 Ate 9', 2, 2016, 3 from dual union
Select 1059, 1, 'Les 7 Blasons', 10, 2016, 4 from dual union
Select 1060, 1, '7 Card Stud', 6, 2016, 10 from dual union
Select 1061, 1, '7 Days of Westerplatte', 0, 2015, 10 from dual union
Select 1062, 1, '7 de Table', 2, 2015, 1 from dual union
Select 1063, 1, '7 Deadly Sins', 6, 2016, 6 from dual union
Select 1064, 1, '7 Dice Wonders', 6, 2016, 1 from dual union
Select 1065, 1, '7 Dice Wonders: Civilization', 4, 2015, 1 from dual union
Select 1066, 1, 'The 7 Dwarfs', 6, 2017, 6 from dual union
Select 1067, 1, 'De 7 geitjes', 4, 2015, 9 from dual union
Select 1068, 1, 'The 7 Habits of Happy Kids Game', 3, 2017, 7 from dual union
Select 1069, 1, '7 Islands', 6, 2016, 10 from dual union
Select 1070, 1, '7 Kingdoms', 7, 2016, 4 from dual union
Select 1071, 1, '7 little korpokkurs', 5, 2015, 9 from dual union
Select 1072, 1, '7 Missions', 3, 2017, 9 from dual union
Select 1073, 1, 'Las 7 Puertas', 10, 2016, 3 from dual union
Select 1074, 1, '7 Ronin', 3, 2017, 2 from dual union
Select 1075, 1, '7 Ronin: Promo Pack', 0, 2016, 8 from dual union
Select 1076, 1, 'Les 7 Royaumes Combattants', 2, 2017, 3 from dual union
Select 1077, 1, '7 Sachen', 5, 2015, 4 from dual union
Select 1078, 1, '7 Safari', 7, 2016, 4 from dual union
Select 1079, 1, 'les 7 sages', 4, 2017, 9 from dual union
Select 1080, 1, '7 Seize', 9, 2016, 10 from dual union
Select 1081, 1, '7 Sign Circle', 6, 2016, 5 from dual union
Select 1082, 1, '7 Steps', 7, 2016, 3 from dual union
Select 1083, 1, '7 Summits:  A Mountaineering Challenge', 5, 2015, 2 from dual union
Select 1084, 1, '7 Surmapattu', 10, 2015, 9 from dual union
Select 1085, 1, '7 Symbols, and 7 Nations', 6, 2015, 5 from dual union
Select 1086, 1, 'Die 7 Weltwunder Quiz-Spiel', 8, 2016, 7 from dual union
Select 1087, 1, '7 Wonders', 3, 2016, 10 from dual union
Select 1088, 1, '7 Wonders Duel', 1, 2015, 10 from dual union
Select 1089, 1, '7 Wonders Duel: Pantheon', 2, 2016, 9 from dual union
Select 1090, 1, '7 Wonders Duel: Statue of Liberty', 3, 2016, 9 from dual union
Select 1091, 1, '7 Wonders Duel: The Messe Essen', 3, 2015, 4 from dual union
Select 1092, 1, '7 Wonders: Babel', 0, 2015, 6 from dual union
Select 1093, 1, '7 Wonders: Catan', 0, 2017, 4 from dual union
Select 1094, 1, '7 Wonders: Cities', 6, 2015, 5 from dual union
Select 1095, 1, '7 Wonders: Leaders', 10, 2015, 4 from dual union
Select 1096, 1, '7 Wonders: Leaders – Esteban', 1, 2015, 4 from dual union
Select 1097, 1, '7 Wonders: Leaders – Louis', 8, 2017, 7 from dual union
Select 1098, 1, '7 Wonders: Leaders – Nimrod', 6, 2017, 8 from dual union
Select 1099, 1, '7 Wonders: Leaders – Stevie', 10, 2016, 1 from dual union
Select 1100, 1, '7 Wonders: Leaders – Wil', 6, 2015, 3 from dual union
Select 1101, 1, '7 Wonders: Manneken Pis', 3, 2015, 5 from dual union
Select 1102, 1, '7 Wonders: Wonder Pack', 1, 2015, 8 from dual union
Select 1103, 1, '7!7!7!', 9, 2017, 7 from dual union
Select 1104, 1, '7-4-1', 5, 2015, 8 from dual union
Select 1105, 1, '7-Card Slugfest', 1, 2017, 4 from dual union
Select 1106, 1, '7-Spot Yott', 10, 2015, 4 from dual union
Select 1107, 1, '7-Street', 10, 2015, 4 from dual union
Select 1108, 1, 'Der 7. Sinn', 8, 2016, 7 from dual union
Select 1109, 1, 'Der 7. Zwerg', 2, 2017, 4 from dual union
Select 1110, 1, '7.SS-Gebirgs Division "Prinz Eugen"', 1, 2016, 6 from dual union
Select 1111, 1, '70 80', 10, 2015, 4 from dual union
Select 1112, 1, '70 mínútur', 9, 2016, 3 from dual union
Select 1113, 1, 'The 70s Game', 6, 2015, 6 from dual union
Select 1114, 1, '70s Music Trivia', 9, 2016, 1 from dual union
Select 1115, 1, '70s TV Trivia', 10, 2016, 7 from dual union
Select 1116, 1, 'The 70s: A Game for Your Generation', 9, 2015, 9 from dual union
Select 1117, 1, '700 Vragen Quiz', 6, 2016, 4 from dual union
Select 1118, 1, 'Das 70er Jahre Quiz', 2, 2015, 1 from dual union
Select 1119, 1, '70er Jahre Quiz', 1, 2015, 3 from dual union
Select 1120, 1, '71 grader nord', 10, 2016, 5 from dual union
Select 1121, 1, '73 North', 7, 2015, 7 from dual union
Select 1122, 1, '75 Gnom Street', 6, 2016, 4 from dual union
Select 1123, 1, '77', 10, 2017, 4 from dual union
Select 1124, 1, '77 Kivaa Kysymystä ja Vekkulia Vastausta', 2, 2015, 1 from dual union
Select 1125, 1, '77 Sunset Strip', 9, 2015, 10 from dual union
Select 1126, 1, '77 Sunset Strip', 0, 2017, 5 from dual union
Select 1127, 1, '77 ways to play TENZI', 0, 2016, 1 from dual union
Select 1128, 1, '7: The Defense of Lwów', 6, 2015, 3 from dual union
Select 1129, 1, '7ombie TV: For Ghouls and Colleges', 5, 2015, 6 from dual union
Select 1130, 1, '7ombieTV', 7, 2016, 5 from dual union
Select 1131, 1, '7s 11s: A Fast Paced Dice Game of Chance & Risk Taking', 10, 2015, 1 from dual union
Select 1132, 1, '7sins!', 6, 2015, 8 from dual union
Select 1133, 1, '7th Cavalry', 7, 2015, 4 from dual union
Select 1134, 1, 'The 7th Continent', 3, 2017, 1 from dual union
Select 1135, 1, 'The 7th Continent: Action Deck Discard', 9, 2015, 7 from dual union
Select 1136, 1, 'The 7th Continent: Facing the Elements', 4, 2016, 6 from dual union
Select 1137, 1, 'The 7th Continent: Fear the Devourers', 9, 2016, 6 from dual union
Select 1138, 1, 'The 7th Continent: Path of Repentance', 7, 2016, 9 from dual union
Select 1139, 1, 'The 7th Continent: Print & Play Demo', 10, 2015, 5 from dual union
Select 1140, 1, 'The 7th Continent: Swamp of Madness', 9, 2016, 1 from dual union
Select 1141, 1, 'The 7th Continent: The Forbidden Sanctuary', 9, 2016, 4 from dual union
Select 1142, 1, 'The 7th Continent: The Icy Maze', 8, 2016, 9 from dual union
Select 1143, 1, 'The 7th Dwarf', 2, 2016, 10 from dual union
Select 1144, 1, '7th Fleet', 9, 2015, 3 from dual union
Select 1145, 1, '7th Sea Collectible Card Game', 9, 2017, 10 from dual union
Select 1146, 1, '7th Voyage', 2, 2016, 9 from dual union
Select 1147, 1, '7TV', 7, 2015, 4 from dual union
Select 1148, 1, '7TV On Location', 10, 2017, 8 from dual union
Select 1149, 1, '7TV Summer Special', 9, 2016, 8 from dual union
Select 1150, 1, '8 1/2', 5, 2016, 2 from dual union
Select 1151, 1, '8 Dragons', 9, 2016, 9 from dual union
Select 1152, 1, '8 Kingdoms', 2, 2016, 2 from dual union
Select 1153, 1, '8 Masters Revenge', 6, 2017, 2 from dual union
Select 1154, 1, '8 Out Of 10 Cats', 8, 2017, 2 from dual union
Select 1155, 1, '8 Planets: Captains of the Solar System', 8, 2015, 5 from dual union
Select 1156, 1, '8 Second Madness', 2, 2015, 4 from dual union
Select 1157, 1, '8 Seconds', 3, 2003, 7 from dual union
Select 1158, 1, '8 Seconds from Glory', 5, 2016, 4 from dual union
Select 1159, 1, '8 the Liar', 10, 2017, 2 from dual union
Select 1160, 1, '8-28', 9, 2015, 9 from dual union
Select 1161, 1, '8-bit Action Hero: Jungle Adventures', 4, 2017, 9 from dual union
Select 1162, 1, '8-Bit Battle', 0, 2015, 8 from dual union
Select 1163, 1, '8-Bit Gangster', 6, 2015, 5 from dual union
Select 1164, 1, '8-bit Inc', 6, 2016, 6 from dual union
Select 1165, 1, '8-Bit Invaders', 7, 2017, 7 from dual union
Select 1166, 1, '8-Bit Mafia', 4, 2016, 6 from dual union
Select 1167, 1, '8-Bit mini Werewolf & Mafia', 10, 2016, 7 from dual union
Select 1168, 1, '8-Bit Swordsman: Clash For the Prism of Punishment', 7, 2017, 1 from dual union
Select 1169, 1, '8-Bit Werewolf', 0, 2016, 1 from dual union
Select 1170, 1, '8-Sided Poker Dice Game', 2, 2017, 7 from dual union
Select 1171, 1, 'The 80s - 90s Combo Game', 0, 2015, 1 from dual union
Select 1172, 1, '80s 90s Trivia Game', 1, 2016, 9 from dual union
Select 1173, 1, 'The 80s Game', 3, 2015, 8 from dual union
Select 1174, 1, '80s Music Trivia', 4, 2015, 6 from dual union
Select 1175, 1, '80s TV Trivia', 3, 2016, 10 from dual union
Select 1176, 1, 'The 80s: A Game for Your Generation', 10, 2015, 3 from dual union
Select 1177, 1, '800 Heroes: Defense of Sihang Warehouse', 10, 2017, 2 from dual union
Select 1178, 1, '800 Metres', 10, 2016, 2 from dual union
Select 1179, 1, '800: The Game of Verbal Perfection', 5, 2016, 4 from dual union
Select 1180, 1, 'Das 80er Jahre Quiz', 0, 2016, 3 from dual union
Select 1181, 1, '80er Jahre Quiz', 7, 2015, 7 from dual union
Select 1182, 1, '81', 0, 2015, 4 from dual union
Select 1183, 1, '851 Baseball', 5, 2016, 4 from dual union
Select 1184, 1, '878: Vikings – Invasions of England', 2, 2017, 4 from dual union
Select 1185, 1, '88', 9, 2016, 1 from dual union
Select 1186, 1, '88 Stop', 3, 2017, 4 from dual union
Select 1187, 1, '88: Digital Dramatic', 9, 2016, 1 from dual union
Select 1188, 1, '8Bit Flashback: Super Mario Bros 3', 8, 2015, 10 from dual union
Select 1189, 1, '8er-Bahn', 8, 2016, 10 from dual union
Select 1190, 1, '8mal durch Ostfriesland', 0, 2017, 2 from dual union
Select 1191, 1, '8th Army', 1, 2017, 2 from dual union
Select 1192, 1, '8th Army: Operation Crusader', 6, 2017, 8 from dual union
Select 1193, 1, 'The 8th Day', 6, 2017, 3 from dual union
Select 1194, 1, '9 Kingdoms', 10, 2015, 4 from dual union
Select 1195, 1, '9 Letter Word', 7, 2015, 3 from dual union
Select 1196, 1, '9 Minutes to Takeoff', 1, 2015, 9 from dual union
Select 1197, 1, '9 Rings 4 a Row', 9, 2016, 1 from dual union
Select 1198, 1, '9 Tibbit Edition', 8, 2015, 1 from dual union
Select 1199, 1, '9 to 1', 1, 2016, 9 from dual union
Select 1200, 1, '9 Treasures', 7, 2015, 7 from dual union
Select 1201, 1, '9 y medio', 3, 2015, 1 from dual union
Select 1202, 1, '9 Years to Yesterday', 8, 2016, 1 from dual union
Select 1203, 1, '9ers', 5, 2015, 8 from dual union
Select 1204, 1, '9-all', 8, 2017, 1 from dual union
Select 1205, 1, '9-Masu Shogi', 8, 2016, 5 from dual union
Select 1206, 1, '9-Shooter Quick Draw', 6, 2015, 9 from dual union
Select 1207, 1, '9-Way Tic Tac Toe', 9, 2016, 8 from dual union
Select 1208, 1, '90 Grad', 0, 2015, 5 from dual union
Select 1209, 1, '90 Minutes', 2, 2017, 7 from dual union
Select 1210, 1, 'The 90s Game', 6, 2017, 10 from dual union
Select 1211, 1, '90s Music Trivia', 4, 2001, 3 from dual union
Select 1212, 1, '90s TV Trivia', 0, 2017, 10 from dual union
Select 1213, 1, '90210: Truth Be Told Challenge Game', 3, 2017, 9 from dual union
Select 1214, 1, '90er Jahre Quiz', 10, 2016, 6 from dual union
Select 1215, 1, '90°', 5, 2015, 1 from dual union
Select 1216, 1, '9292', 4, 2015, 10 from dual union
Select 1217, 1, '96 Kabal', 3, 2016, 4 from dual union
Select 1218, 1, '97 Cent Space Battle', 1, 2017, 10 from dual union
Select 1219, 1, '98 Degrees: Play for Keeps', 9, 2016, 7 from dual union
Select 1220, 1, '99 chances', 1, 2015, 7 from dual union
Select 1221, 1, '99 Nightmare Street', 5, 2016, 9 from dual union
Select 1222, 1, '999 Games trakteert!', 3, 2015, 10 from dual union
Select 1223, 1, '9DKP', 1, 2016, 1 from dual union
Select 1224, 1, 'The 9th Age', 3, 2016, 2 from dual union
Select 1225, 1, '9tka', 4, 2017, 3 from dual union
Select 1226, 1, '9Tours', 9, 2017, 10 from dual union
Select 1227, 1, '?', 3, 2016, 9 from dual union
Select 1228, 1, '[d0x3d!] v2: a network security game', 3, 2015, 1 from dual union
Select 1229, 1, '[gram-er puh-lease]', 9, 2015, 1 from dual union
Select 1230, 1, 'A 16th Century Mediterranean Galley Wargame', 3, 2016, 7 from dual union
Select 1231, 1, 'A Aventura de Caboclo Bernardo', 5, 2016, 6 from dual union
Select 1232, 1, 'A B Seas', 1, 2015, 9 from dual union
Select 1233, 1, 'A Cha Co', 2, 2017, 7 from dual union
Select 1234, 1, 'A game of Cantonese rice', 2, 2016, 1 from dual union
Select 1235, 1, 'A Game of Thrones: The Card Game (Second Edition)  – Watchers on the Wall', 5, 2017, 7 from dual union
Select 1236, 1, 'A Game of Thrones: The Card Game (Second Edition) – All Men Are Fools', 5, 2017, 5 from dual union
Select 1237, 1, 'A la Bäionette', 8, 2016, 7 from dual union
Select 1238, 1, 'A la carte', 8, 2017, 8 from dual union
Select 1239, 1, 'A la carte: Dessert', 10, 2015, 2 from dual union
Select 1240, 1, 'A la carte: Die Beilage', 6, 2015, 9 from dual union
Select 1241, 1, 'A la Conquista del Reino Cobra', 1, 2016, 1 from dual union
Select 1242, 1, 'A Las Barricadas', 4, 2016, 4 from dual union
Select 1243, 1, 'A las Barricadas!', 8, 2015, 9 from dual union
Select 1244, 1, 'A las Barricadas! (2nd Edition)', 9, 2015, 6 from dual union
Select 1245, 1, 'A Song of Ice and Fief (fan expansion for Fief 1429)', 1, 2016, 5 from dual union
Select 1246, 1, 'A to Z', 6, 2015, 8 from dual union
Select 1247, 1, 'A to Z Electronic', 7, 2016, 3 from dual union
Select 1248, 1, 'A to Z Jr.', 5, 2016, 5 from dual union
Select 1249, 1, 'A To Z Jr. Electronic', 6, 2015, 3 from dual union
Select 1250, 1, 'A vos paniers!', 5, 2017, 7 from dual union
Select 1251, 1, 'a+d+d+d', 4, 2016, 9 from dual union
Select 1252, 1, 'A-A-Arctic Kettering', 3, 2015, 2 from dual union
Select 1253, 1, 'A-B-C Gallery', 10, 2016, 6 from dual union
Select 1254, 1, 'A-B-C OY!', 1, 2016, 2 from dual union
Select 1255, 1, 'A-divino', 4, 2017, 10 from dual union
Select 1256, 1, 'A-HAH! Fruito', 3, 2015, 2 from dual union
Select 1257, 1, 'A-HAH! Memoritz', 10, 2016, 5 from dual union
Select 1258, 1, 'A-Mart', 1, 2016, 7 from dual union
Select 1259, 1, 'A-Math', 8, 2006, 6 from dual union
Select 1260, 1, 'A-mazing rooks', 4, 2017, 7 from dual union
Select 1261, 1, 'The A-Team', 0, 2017, 6 from dual union
Select 1262, 1, 'The A-Team: The Adventures with B.A. Card Game', 10, 2016, 7 from dual union
Select 1263, 1, 'A-topia', 0, 2017, 1 from dual union
Select 1264, 1, 'A-Z Bilderquiz', 6, 2017, 5 from dual union
Select 1265, 1, 'A-Ö', 1, 2017, 10 from dual union
Select 1266, 1, 'A.B.C. Educational Cards', 0, 2017, 4 from dual union
Select 1267, 1, 'A.D. 1706, Le Siège de Turin', 5, 2016, 3 from dual union
Select 1268, 1, 'A.D. 30', 2, 2016, 8 from dual union
Select 1269, 1, 'A.D.A.P.T.', 4, 2016, 7 from dual union
Select 1270, 1, 'A.D.A.P.T. - 5-in-1 Expansion Pack', 7, 2016, 1 from dual union
Select 1271, 1, 'A.D.A.P.T.: Bio-Mech Expansion Pack', 2, 2016, 2 from dual union
Select 1272, 1, 'A.D.A.P.T.: Cephalopod Expansion Pack', 1, 2016, 8 from dual union
Select 1273, 1, 'A.D.A.P.T.: Fantasy Expansion Pack', 5, 2016, 7 from dual union
Select 1274, 1, 'A.D.A.P.T.: Guppy Expansion Pack', 8, 2016, 10 from dual union
Select 1275, 1, 'A.D.A.P.T.: Reptile & Amphibian Expansion Pack', 5, 2016, 3 from dual union
Select 1276, 1, 'A.D.T. Messenger Boy', 2, 2012, 2 from dual union
Select 1277, 1, 'A.E.G.I.S.: Combining Robot Strategy Game', 1, 2016, 6 from dual union
Select 1278, 1, 'A.I.M. Agents for Infiltration and Mayhem', 6, 2017, 1 from dual union
Select 1279, 1, 'A.K.A.', 6, 2016, 6 from dual union
Select 1280, 1, 'The A.N.Z. Mobile Bank Game', 10, 2016, 5 from dual union
Select 1281, 1, 'A.O.C (Amusement dorigine contrôlée)', 10, 2016, 8 from dual union
Select 1282, 1, 'A.O.I. (Africa Oriental Italiana)', 10, 2016, 6 from dual union
Select 1283, 1, 'A.R.P.', 3, 2016, 1 from dual union
Select 1284, 1, 'A.R.P.', 0, 2016, 9 from dual union
Select 1285, 1, 'A4 gewinnt', 0, 2015, 3 from dual union
Select 1286, 1, 'AA Game of the Road', 5, 2015, 3 from dual union
Select 1287, 1, 'The AAA Safe Driver Game', 0, 2016, 3 from dual union
Select 1288, 1, 'Aaargh !', 2, 2017, 8 from dual union
Select 1289, 1, 'AAARGH!!', 0, 2017, 6 from dual union
Select 1290, 1, 'Aachen', 7, 2017, 4 from dual union
Select 1291, 1, 'Aachen-Quiz', 4, 2017, 3 from dual union
Select 1292, 1, 'Das Aachen-Spiel', 3, 2011, 8 from dual union
Select 1293, 1, 'Aachen: First to Fall', 3, 2016, 9 from dual union
Select 1294, 1, 'Aadu Puli Attam', 10, 2016, 8 from dual union
Select 1295, 1, 'Het Aandelenspel', 7, 2015, 9 from dual union
Select 1296, 1, 'Aapep', 9, 2015, 2 from dual union
Select 1297, 1, 'Aardvark', 9, 2017, 10 from dual union
Select 1298, 1, 'Aargh!', 8, 2017, 4 from dual union
Select 1299, 1, 'Aarklash Warpack', 7, 2016, 4 from dual union
Select 1300, 1, 'Aarresaari', 6, 2015, 4 from dual union
Select 1301, 1, 'AARRR!', 3, 2017, 10 from dual union
Select 1302, 1, 'Aasia reis', 6, 2016, 6 from dual union
Select 1303, 1, 'Aastaring Aias', 1, 2017, 7 from dual union
Select 1304, 1, 'Aatheuo', 10, 2015, 10 from dual union
Select 1305, 1, 'Ab auf die Insel', 5, 2015, 1 from dual union
Select 1306, 1, 'Ab die Post!', 2, 2017, 5 from dual union
Select 1307, 1, 'Ab die Post!', 5, 2016, 10 from dual union
Select 1308, 1, 'Ab durch den Dschungel', 8, 2017, 6 from dual union
Select 1309, 1, 'Ab durch die Mitte', 0, 2015, 8 from dual union
Select 1310, 1, 'Ab in den Pool!', 9, 2016, 3 from dual union
Select 1311, 1, 'Ab in den Stall', 4, 2017, 1 from dual union
Select 1312, 1, 'Ab in die Tonne', 0, 2016, 4 from dual union
Select 1313, 1, 'Ab in die Tonne', 1, 2017, 6 from dual union
Select 1314, 1, 'Ab ins Bett, Nils!', 9, 2016, 1 from dual union
Select 1315, 1, 'Ab nach Hause!', 0, 2017, 10 from dual union
Select 1316, 1, 'ab, durch die mitte!', 8, 2015, 8 from dual union
Select 1317, 1, 'ABACA', 4, 2015, 3 from dual union
Select 1318, 1, 'Abacan', 7, 2017, 5 from dual union
Select 1319, 1, 'Abaco Zuzzurellone', 0, 2016, 7 from dual union
Select 1320, 1, 'Abaddon', 2, 2016, 8 from dual union
Select 1321, 1, 'Abaddon: Shattered Command', 9, 2017, 6 from dual union
Select 1322, 1, 'ABAE Football', 5, 2016, 4 from dual union
Select 1323, 1, 'Abagio', 8, 2016, 4 from dual union
Select 1324, 1, 'Abaku', 10, 2017, 4 from dual union
Select 1325, 1, 'Az abakusztól az internetig: informatikai társasjáték', 5, 2015, 10 from dual union
Select 1326, 1, 'Abalone', 5, 2016, 3 from dual union
Select 1327, 1, 'Abalone Extra Player Marbles', 5, 2015, 9 from dual union
Select 1328, 1, 'Abalone Quattro', 10, 2016, 7 from dual union
Select 1329, 1, 'Abande', 5, 2016, 5 from dual union
Select 1330, 1, 'Abande²', 1, 2015, 6 from dual union
Select 1331, 1, 'Abandon Earth', 6, 2017, 4 from dual union
Select 1332, 1, 'Abandon Planet', 1, 2017, 3 from dual union
Select 1333, 1, 'Abandon Ship', 9, 2015, 3 from dual union
Select 1334, 1, 'Abandon Ship!', 9, 2016, 6 from dual union
Select 1335, 1, 'Abbeville 1940', 1, 2016, 10 from dual union
Select 1336, 1, 'Abbotts New Card Games', 7, 2015, 5 from dual union
Select 1337, 1, 'ABC + Phantasie', 3, 2015, 10 from dual union
Select 1338, 1, 'ABC Bingo', 2, 2015, 3 from dual union
Select 1339, 1, 'ABC Bingo Game', 9, 2015, 9 from dual union
Select 1340, 1, 'ABC Dice', 6, 2016, 7 from dual union
Select 1341, 1, 'ABC DRS 3 Das Radio Kultspiel-jetzt auf Hochdeutsch', 10, 2015, 2 from dual union
Select 1342, 1, 'ABC DRS3: Das Radiokultspiel für unterwegs', 9, 2016, 5 from dual union
Select 1343, 1, 'ABC Football', 3, 2017, 6 from dual union
Select 1344, 1, 'ABC Game', 8, 2016, 6 from dual union
Select 1345, 1, 'ABC Game', 5, 2015, 6 from dual union
Select 1346, 1, 'ABC Lotto', 10, 2015, 10 from dual union
Select 1347, 1, 'ABC Monday Night Football', 4, 2016, 4 from dual union
Select 1348, 1, 'ABC Song Game', 1, 2015, 10 from dual union
Select 1349, 1, 'ABC-Karussell', 10, 2015, 9 from dual union
Select 1350, 1, 'ABC-Reise', 5, 2015, 5 from dual union
Select 1351, 1, 'ABC: Animals', 7, 2017, 9 from dual union
Select 1352, 1, 'ABC: In The Jungle', 4, 2016, 1 from dual union
Select 1353, 1, 'Abcdarian', 6, 2015, 10 from dual union
Select 1354, 1, 'Abdanco', 3, 2017, 2 from dual union
Select 1355, 1, 'Abduct-O-Rama', 4, 2016, 2 from dual union
Select 1356, 1, 'Abducted by Aliens', 8, 2016, 10 from dual union
Select 1357, 1, 'The Abductinators', 1, 2017, 10 from dual union
Select 1358, 1, 'Abduction', 8, 2016, 5 from dual union
Select 1359, 1, 'Abduls Adventure', 1, 2015, 1 from dual union
Select 1360, 1, 'Abe Xaviers Final Exam', 10, 2017, 1 from dual union
Select 1361, 1, 'ABeeC Match Game', 1, 2017, 6 from dual union
Select 1362, 1, 'Abeja Reina', 4, 2015, 4 from dual union
Select 1363, 1, 'Abejas', 4, 2017, 6 from dual union
Select 1364, 1, 'Abel-Klingers "Grosse Fahrschule"', 1, 2017, 1 from dual union
Select 1365, 1, 'Abeltje het spel', 5, 2017, 9 from dual union
Select 1366, 1, 'Abenteuer auf dem Zahlen-Fluss', 9, 2016, 2 from dual union
Select 1367, 1, 'Abenteuer im Weltraum: Flieg mit zum Mond!', 10, 2017, 5 from dual union
Select 1368, 1, 'Abenteuer im Wichtelwald', 9, 2015, 9 from dual union
Select 1369, 1, 'Abenteuer in Mexiko', 4, 2015, 1 from dual union
Select 1370, 1, 'Abenteuer Luther', 1, 2017, 7 from dual union
Select 1371, 1, 'Abenteuer Pferd', 6, 2016, 10 from dual union
Select 1372, 1, 'Abenteuer Reiterhof', 0, 2016, 8 from dual union
Select 1373, 1, 'Abenteuer USA', 2, 2017, 3 from dual union
Select 1374, 1, 'Abenteuerinsel', 6, 2017, 2 from dual union
Select 1375, 1, 'Abenteuerland: König und Prinzessin', 6, 2016, 1 from dual union
Select 1376, 1, 'Abenteur Tierwelt', 5, 2015, 2 from dual union
Select 1377, 1, 'Aber Hallo!', 2, 2017, 7 from dual union
Select 1378, 1, 'Aber på Rov', 3, 2017, 2 from dual union
Select 1379, 1, 'AberdeenOpoly', 8, 2017, 4 from dual union
Select 1380, 1, 'The Aberrant Apothecary', 6, 2017, 5 from dual union
Select 1381, 1, 'Abet', 9, 2015, 4 from dual union
Select 1382, 1, 'Abetto', 6, 2017, 3 from dual union
Select 1383, 1, 'abgeblitzt', 0, 2017, 4 from dual union
Select 1384, 1, 'Abgesperrt', 3, 2016, 7 from dual union
Select 1385, 1, 'Abgezockt!', 4, 2015, 10 from dual union
Select 1386, 1, 'Abhi Ya Khabi', 6, 2016, 9 from dual union
Select 1387, 1, 'Abi 94', 3, 2015, 7 from dual union
Select 1388, 1, 'Abi: A Game of Word Recall', 3, 2016, 1 from dual union
Select 1389, 1, 'Abiegnus', 1, 2016, 8 from dual union
Select 1390, 1, 'Abilene', 3, 2017, 4 from dual union
Select 1391, 1, 'Abkürzung', 10, 2017, 2 from dual union
Select 1392, 1, 'Abla Ubla', 5, 2016, 7 from dual union
Select 1393, 1, 'Ablaze!', 3, 2015, 3 from dual union
Select 1394, 1, 'Ablaze!: Feel the Heat!', 9, 2016, 10 from dual union
Select 1395, 1, 'Able Archer', 2, 2015, 4 from dual union
Select 1396, 1, 'Able Dog Sky Raiders over Korea', 8, 2017, 1 from dual union
Select 1397, 1, 'Abluxxen: Königskarten', 5, 2015, 7 from dual union
Select 1398, 1, 'Abluxxen: Sonderkarten / Duell', 9, 2015, 4 from dual union
Select 1399, 1, 'ABO Game', 4, 2017, 6 from dual union
Select 1400, 1, 'Aboculis', 3, 2015, 9 from dual union
Select 1401, 1, 'An Abominable Kind of War:  The Conflict for North America 1755-1761', 4, 2016, 1 from dual union
Select 1402, 1, 'Abordagem', 4, 2017, 3 from dual union
Select 1403, 1, '¡Abordaje!', 9, 2015, 1 from dual union
Select 1404, 1, 'Aborted: The Game', 10, 2015, 2 from dual union
Select 1405, 1, 'Aboukir', 4, 2016, 3 from dual union
Select 1406, 1, 'The Abounding River', 8, 2017, 8 from dual union
Select 1407, 1, 'About Faces', 1, 2017, 5 from dual union
Select 1408, 1, 'About Nothing', 10, 2016, 9 from dual union
Select 1409, 1, 'About Time', 1, 2017, 6 from dual union
Select 1410, 1, 'About Time: Das ZEIT Spiel', 3, 2015, 3 from dual union
Select 1411, 1, 'About Time: USA Edition', 10, 2015, 6 from dual union
Select 1412, 1, 'Above and Below', 5, 2015, 5 from dual union
Select 1413, 1, 'Above and Below: Expanded Edition exclusives', 9, 2015, 1 from dual union
Select 1414, 1, 'Above and Below: G@mebox Building promo card', 3, 2016, 6 from dual union
Select 1415, 1, 'Above and Below: Groves', 4, 2016, 1 from dual union
Select 1416, 1, 'Above and Below: Watch It Played Building promo card', 8, 2016, 9 from dual union
Select 1417, 1, 'Above Snakes', 7, 2015, 6 from dual union
Select 1418, 1, 'Above the Clouds', 10, 2015, 6 from dual union
Select 1419, 1, 'Above Top Secret', 9, 2017, 8 from dual union
Select 1420, 1, 'ABOYNE', 3, 2017, 5 from dual union
Select 1421, 1, 'Abra Palabra', 7, 2016, 3 from dual union
Select 1422, 1, 'Abraca...what?', 6, 2015, 4 from dual union
Select 1423, 1, 'Abracadabra', 5, 2016, 7 from dual union
Select 1424, 1, 'Abracadabra', 5, 2015, 5 from dual union
Select 1425, 1, 'Abracadabra', 4, 2015, 1 from dual union
Select 1426, 1, 'Abracadabra', 4, 2016, 2 from dual union
Select 1427, 1, 'Abracadaver!', 2, 2015, 8 from dual union
Select 1428, 1, 'AbrakaRun', 3, 2017, 6 from dual union
Select 1429, 1, 'AbraKIDdabra', 7, 2015, 7 from dual union
Select 1430, 1, 'Abraxas', 2, 2016, 5 from dual union
Select 1431, 1, 'Abrekodibru', 1, 2015, 3 from dual union
Select 1432, 1, 'aBRIDGEd', 3, 2016, 10 from dual union
Select 1433, 1, 'Abriss', 3, 2016, 1 from dual union
Select 1434, 1, 'Abriss (Zweite Edition)', 2, 2015, 7 from dual union
Select 1435, 1, 'Abriss: Bunker tile', 6, 2015, 9 from dual union
Select 1436, 1, 'Abs-Trac-Toe', 8, 2016, 9 from dual union
Select 1437, 1, 'Absacker', 9, 2016, 9 from dual union
Select 1438, 1, 'Absolut överens', 1, 2017, 5 from dual union
Select 1439, 1, 'Absolute Blast', 5, 2017, 1 from dual union
Select 1440, 1, 'Absolute Victory: World Conflict 1939-1945', 1, 2017, 3 from dual union
Select 1441, 1, 'Absolute War! - The Attack on Russia 1941-44', 3, 2015, 9 from dual union
Select 1442, 1, 'Absolutely English', 3, 2015, 10 from dual union
Select 1443, 1, 'Absolution', 5, 2016, 1 from dual union
Select 1444, 1, 'Absorption', 10, 2016, 1 from dual union
Select 1445, 1, 'Abstrac', 10, 2016, 2 from dual union
Select 1446, 1, 'Abstractables', 2, 2016, 6 from dual union
Select 1447, 1, 'Abstracts', 2, 2016, 7 from dual union
Select 1448, 1, 'Absurd Words', 1, 2014, 6 from dual union
Select 1449, 1, 'Abtei der Rätsel', 10, 2016, 8 from dual union
Select 1450, 1, 'Abtei der wandernden Bücher', 9, 2015, 5 from dual union
Select 1451, 1, 'Abteilung: WW2 Battle Rules for 15mm Figures and Models', 8, 2017, 9 from dual union
Select 1452, 1, 'Abundance', 9, 2017, 3 from dual union
Select 1453, 1, 'Abuse: The Final Insult', 1, 2015, 6 from dual union
Select 1454, 1, 'Abusir: Die fünfte Dynastie', 9, 2016, 4 from dual union
Select 1455, 1, 'Abwrack Prämie: Das Spiel', 5, 2017, 10 from dual union
Select 1456, 1, 'ABX Forces', 8, 2017, 2 from dual union
Select 1457, 1, 'ABXY', 2, 2016, 8 from dual union
Select 1458, 1, 'The Abyss', 8, 2015, 2 from dual union
Select 1459, 1, 'Abyss', 10, 2017, 8 from dual union
Select 1460, 1, 'Abyss', 8, 2015, 5 from dual union
Select 1461, 1, 'The Abyss of the Lurid Cove', 3, 2016, 4 from dual union
Select 1462, 1, 'Abyss: Anglerfish', 0, 2015, 10 from dual union
Select 1463, 1, 'Abyss: Key Monster Tokens', 1, 2015, 2 from dual union
Select 1464, 1, 'Abyss: Kraken', 5, 2015, 4 from dual union
Select 1465, 1, 'AC/DC', 10, 2017, 10 from dual union
Select 1466, 1, 'Academe', 3, 2016, 4 from dual union
Select 1467, 1, 'Academie', 1, 2016, 7 from dual union
Select 1468, 1, 'Academie', 8, 2015, 5 from dual union
Select 1469, 1, 'AcaMania', 9, 2017, 3 from dual union
Select 1470, 1, 'Accasta', 2, 2017, 2 from dual union
Select 1471, 1, 'Accelerator', 9, 2017, 2 from dual union
Select 1472, 1, 'Accentuate', 6, 2016, 2 from dual union
Select 1473, 1, 'Accentuate Quotes Expansion: Films', 7, 2015, 6 from dual union
Select 1474, 1, 'Acceptable Losses', 8, 2015, 8 from dual union
Select 1475, 1, 'Access Denied', 6, 2017, 2 from dual union
Select 1476, 1, 'Acchiappa il Fantasma!', 6, 2016, 2 from dual union
Select 1477, 1, 'Accionista', 5, 2016, 8 from dual union
Select 1478, 1, 'Accolade: Journey to Knighthood', 3, 2016, 4 from dual union
Select 1479, 1, 'According to "Professor" Hoyle... Pocket Trivia', 0, 2016, 3 from dual union
Select 1480, 1, 'Accordion', 2, 2016, 9 from dual union
Select 1481, 1, 'Accu-Stat Pro Football', 10, 2016, 9 from dual union
Select 1482, 1, 'Accusation', 0, 2017, 3 from dual union
Select 1483, 1, 'Accused! Getting Away With Murder?', 7, 2015, 8 from dual union
Select 1484, 1, 'Ace', 1, 2015, 1 from dual union
Select 1485, 1, 'Ace Detective', 7, 2016, 5 from dual union
Select 1486, 1, 'Ace Detective: Strange Tales', 5, 2015, 2 from dual union
Select 1487, 1, 'Ace Handicap Golf', 9, 2015, 8 from dual union
Select 1488, 1, 'Ace in the Chains: A Disc Golf Game', 8, 2015, 8 from dual union
Select 1489, 1, 'Ace of Aces: Balloon Buster', 10, 2017, 2 from dual union
Select 1490, 1, 'Ace of Aces: Flying Machines', 8, 2015, 6 from dual union
Select 1491, 1, 'Ace of Aces: Handy Rotary Deluxe Edition', 4, 2017, 8 from dual union
Select 1492, 1, 'Ace of Aces: Handy Rotary Series', 7, 2015, 7 from dual union
Select 1493, 1, 'Ace of Aces: Jet Eagles', 10, 2015, 4 from dual union
Select 1494, 1, 'Ace of Aces: Powerhouse Series', 6, 2016, 7 from dual union
Select 1495, 1, 'Ace of Aces: Wingleader', 1, 2015, 3 from dual union
Select 1496, 1, 'Ace of Aces: Wingleader Deluxe Boxed Set', 6, 2017, 10 from dual union
Select 1497, 1, 'Ace of Spies', 10, 2016, 7 from dual union
Select 1498, 1, 'Ace Power Trumps', 9, 2017, 8 from dual union
Select 1499, 1, 'Ace Quiz: Pop Music', 10, 2015, 2 from dual union
Select 1500, 1, 'Ace Raiders/Dead Sneakers', 4, 2016, 5 from dual union
Select 1501, 1, 'Ace Trump', 5, 2016, 6 from dual union
Select 1502, 1, 'Acerte o Acento', 2, 2017, 8 from dual union
Select 1503, 1, 'Aces and Faces', 5, 2016, 2 from dual union
Select 1504, 1, 'Aces at Dawn', 5, 2015, 6 from dual union
Select 1505, 1, 'Aces High', 3, 2017, 7 from dual union
Select 1506, 1, 'Aces in the Pot', 8, 2001, 8 from dual union
Select 1507, 1, 'Aces of Valor: Aerial Combat during WWI', 1, 2016, 5 from dual union
Select 1508, 1, 'Ach Du Lieber Biber', 10, 2016, 9 from dual union
Select 1509, 1, 'Ach steig mir doch aufs Dach', 5, 2017, 9 from dual union
Select 1510, 1, 'Ach, du dickes Ei', 3, 2016, 8 from dual union
Select 1511, 1, 'Ach, du dickes Ei!', 5, 2017, 10 from dual union
Select 1512, 1, 'Ach, du dickes Gummibärchen', 5, 2015, 2 from dual union
Select 1513, 1, 'Ach, du Mauseschreck!', 6, 2015, 5 from dual union
Select 1514, 1, 'Achaia', 8, 2015, 8 from dual union
Select 1515, 1, 'Achi', 3, 2017, 4 from dual union
Select 1516, 1, 'Achievers Game', 7, 2015, 4 from dual union
Select 1517, 1, 'Achievus', 7, 2015, 2 from dual union
Select 1518, 1, 'Achoo! The Viral Card Game', 6, 2016, 9 from dual union
Select 1519, 1, 'Achtung Ampel!', 0, 2016, 6 from dual union
Select 1520, 1, 'Achtung Hexe!', 0, 2015, 5 from dual union
Select 1521, 1, 'Achtung Kreuzung: Das neue Verkehrsspiel', 4, 2016, 7 from dual union
Select 1522, 1, 'Achtung Panzer', 1, 2015, 5 from dual union
Select 1523, 1, 'ACHTUNG!', 10, 2015, 6 from dual union
Select 1524, 1, 'Achtung! Cthulhu Skirmish', 3, 2016, 1 from dual union
Select 1525, 1, 'Achtung! Cthulhu: The Secret War', 7, 2016, 6 from dual union
Select 1526, 1, 'Achtung! Panzer!', 0, 2016, 2 from dual union
Select 1527, 1, 'Achtung: Durchfahrt frei!', 8, 2016, 8 from dual union
Select 1528, 1, 'Achtung: Rot!', 5, 2007, 4 from dual union
Select 1529, 1, 'Achtung: Spitfire!', 7, 2017, 1 from dual union
Select 1530, 1, 'Acies', 4, 2016, 8 from dual union
Select 1531, 1, 'Acorn', 7, 2016, 6 from dual union
Select 1532, 1, 'Acoso en Nicaragua', 1, 2016, 7 from dual union
Select 1533, 1, 'Acqua Dolce', 10, 2017, 9 from dual union
Select 1534, 1, 'Acquaint', 10, 2015, 6 from dual union
Select 1535, 1, 'Acquire', 7, 2015, 4 from dual union
Select 1536, 1, 'Acquisition', 5, 2015, 7 from dual union
Select 1537, 1, 'Acquisition', 7, 2015, 7 from dual union
Select 1538, 1, 'AcrabTout!', 4, 2017, 2 from dual union
Select 1539, 1, 'Acre', 5, 2015, 5 from dual union
Select 1540, 1, 'Acre: The Third Crusade Opens', 5, 2016, 9 from dual union
Select 1541, 1, 'Acrion Forêt', 9, 2015, 7 from dual union
Select 1542, 1, 'Les Acrobates', 3, 2016, 7 from dual union
Select 1543, 1, 'Acrobatissimo', 9, 2017, 1 from dual union
Select 1544, 1, 'Acrobats', 3, 2015, 4 from dual union
Select 1545, 1, 'Acronym', 9, 2015, 8 from dual union
Select 1546, 1, 'Acronymble', 9, 2017, 9 from dual union
Select 1547, 1, 'Acronymia', 4, 2015, 3 from dual union
Select 1548, 1, 'Acronymity', 1, 2015, 10 from dual union
Select 1549, 1, 'Acronymity: Trivia Edition', 6, 2015, 1 from dual union
Select 1550, 1, 'Acropolis', 2, 2017, 2 from dual union
Select 1551, 1, 'Acropolis of Athens: Following the Steps of Pausanias', 10, 2015, 9 from dual union
Select 1552, 1, 'Across 5 Aprils', 0, 2016, 9 from dual union
Select 1553, 1, 'Across A Deadly Field: Regimental Rules for Civil War Battles', 7, 2017, 1 from dual union
Select 1554, 1, 'Across Africa', 8, 2015, 1 from dual union
Select 1555, 1, 'Across Africa with Livingstone', 0, 2015, 3 from dual union
Select 1556, 1, 'Across Four Oceans', 8, 2017, 8 from dual union
Select 1557, 1, 'Across Suez', 3, 2017, 3 from dual union
Select 1558, 1, 'Across the Alps: The Battle of Trebbia (218 BC)', 9, 2015, 5 from dual union
Select 1559, 1, 'Across the Americas', 0, 2016, 8 from dual union
Select 1560, 1, 'Across the Andes', 10, 2017, 3 from dual union
Select 1561, 1, 'Across the Atlantic', 0, 2015, 8 from dual union
Select 1562, 1, 'Across the Board', 2, 2017, 4 from dual union
Select 1563, 1, 'Across the Board', 9, 2016, 4 from dual union
Select 1564, 1, 'Across the Board Refills Plus Four Additional Tracks', 3, 2015, 2 from dual union
Select 1565, 1, 'Across the Continent', 5, 2017, 2 from dual union
Select 1566, 1, 'Across the Dead Earth', 8, 2017, 10 from dual union
Select 1567, 1, 'Across the Dniepr: Kiev-Zhitomir 43', 4, 2016, 8 from dual union
Select 1568, 1, 'Across the Pacific', 2, 2016, 1 from dual union
Select 1569, 1, 'Across the Piave: Italy 1918', 3, 2016, 6 from dual union
Select 1570, 1, 'Across the Potomac', 5, 2017, 4 from dual union
Select 1571, 1, 'The Across the U.S.A. Game', 2, 2016, 10 from dual union
Select 1572, 1, 'Across the Void', 3, 2015, 2 from dual union
Select 1573, 1, 'Across the Wide Missouri', 9, 2016, 5 from dual union
Select 1574, 1, 'Across the Wide Missouri-An adventure game of mountain men and Indians', 5, 2017, 9 from dual union
Select 1575, 1, 'Across Ticklers', 3, 2015, 8 from dual union
Select 1576, 1, 'Across Words', 5, 2015, 7 from dual union
Select 1577, 1, 'Act One', 3, 2016, 7 from dual union
Select 1578, 1, 'Act Out', 10, 2015, 8 from dual union
Select 1579, 1, 'Act the Adverb', 2, 2015, 1 from dual union
Select 1580, 1, 'Act Too', 6, 2015, 8 from dual union
Select 1581, 1, 'Act Your Wage!', 8, 2015, 7 from dual union
Select 1582, 1, 'Actiles', 6, 2015, 2 from dual union
Select 1583, 1, 'Acting Out', 3, 2016, 3 from dual union
Select 1584, 1, 'Acting Up', 4, 2008, 6 from dual union
Select 1585, 1, 'Action', 0, 2017, 8 from dual union
Select 1586, 1, 'Action All-Pro Football', 10, 2015, 10 from dual union
Select 1587, 1, 'Action at Carentan!', 6, 2015, 5 from dual union
Select 1588, 1, 'Action Attraction', 10, 2017, 6 from dual union
Select 1589, 1, 'Action Baseball', 2, 2017, 9 from dual union
Select 1590, 1, 'Action bourse', 0, 2017, 5 from dual union
Select 1591, 1, 'Action D-Day', 9, 2017, 8 from dual union
Select 1592, 1, 'Action Dragon', 8, 2017, 8 from dual union
Select 1593, 1, 'Action foot', 8, 2017, 2 from dual union
Select 1594, 1, 'Action Foreign Legion', 0, 2017, 7 from dual union
Select 1595, 1, 'Action Fractions', 5, 2017, 10 from dual union
Select 1596, 1, 'Action Front! Hakko Ichiu', 9, 2017, 7 from dual union
Select 1597, 1, 'Action Front! Watchtower', 4, 2017, 1 from dual union
Select 1598, 1, 'Action Gettysburg', 1, 2016, 6 from dual union
Select 1599, 1, 'Action Ice Hockey Game', 2, 2016, 2 from dual union
Select 1600, 1, 'Action in the Persian Gulf', 1, 2015, 4 from dual union
Select 1601, 1, 'The Action Man Game', 5, 2015, 9 from dual union
Select 1602, 1, 'Action Princesses', 3, 2016, 5 from dual union
Select 1603, 1, 'Action R.P.S', 8, 2017, 5 from dual union
Select 1604, 1, 'Action Stations', 9, 2016, 10 from dual union
Select 1605, 1, 'Action Stations! (third edition)', 6, 2016, 7 from dual union
Select 1606, 1, 'Action Test', 2, 2017, 1 from dual union
Select 1607, 1, 'Action Under Sail 1756-1815', 5, 2016, 3 from dual union
Select 1608, 1, 'Action Vietnam', 7, 2017, 2 from dual union
Select 1609, 1, 'Action Waterloo', 8, 2015, 1 from dual union
Select 1610, 1, 'Action Zulu', 0, 2011, 8 from dual union
Select 1611, 1, 'Action!', 3, 2017, 9 from dual union
Select 1612, 1, 'Action-Mat Football', 9, 2016, 8 from dual union
Select 1613, 1, 'Actionworks', 7, 2015, 9 from dual union
Select 1614, 1, 'Actium', 7, 2016, 10 from dual union
Select 1615, 1, 'Activation Petteia', 7, 2015, 8 from dual union
Select 1616, 1, 'Activator', 2, 2017, 6 from dual union
Select 1617, 1, 'Activator Roundball', 9, 2015, 10 from dual union
Select 1618, 1, 'The Activist Game', 3, 2016, 2 from dual union
Select 1619, 1, 'Activity', 6, 2017, 7 from dual union
Select 1620, 1, 'Activity 1996', 1, 2016, 8 from dual union
Select 1621, 1, 'Activity 1997', 6, 2017, 9 from dual union
Select 1622, 1, 'Activity 2', 3, 2017, 9 from dual union
Select 1623, 1, 'Activity Action', 7, 2015, 4 from dual union
Select 1624, 1, 'Activity Action Pótkérdések', 7, 2016, 6 from dual union
Select 1625, 1, 'Activity Celebrations', 7, 2015, 3 from dual union
Select 1626, 1, 'Activity Champion', 5, 2015, 6 from dual union
Select 1627, 1, 'Activity Club-Edition', 5, 2015, 6 from dual union
Select 1628, 1, 'Activity Code Word', 6, 2016, 5 from dual union
Select 1629, 1, 'Activity connection!', 3, 2015, 5 from dual union
Select 1630, 1, 'Activity Countdown', 10, 2016, 9 from dual union
Select 1631, 1, 'Activity Die siebziger Jahre! Zusatzkarten', 6, 2016, 5 from dual union
Select 1632, 1, 'Activity Ergänzungsset 1000 Jahre Österreich', 7, 2015, 1 from dual union
Select 1633, 1, 'Activity Family Classic', 0, 2015, 4 from dual union
Select 1634, 1, 'Activity for English I/II', 9, 2017, 9 from dual union
Select 1635, 1, 'Activity Franz Ferdinand', 1, 2016, 9 from dual union
Select 1636, 1, 'Activity Junior', 9, 2016, 10 from dual union
Select 1637, 1, 'Activity Junior pótkérdések', 10, 2016, 5 from dual union
Select 1638, 1, 'Activity kompakt', 6, 2017, 7 from dual union
Select 1639, 1, 'Activity Krazy Kritzel', 3, 2016, 9 from dual union
Select 1640, 1, 'Activity Lifestyle', 2, 2016, 6 from dual union
Select 1641, 1, 'Activity Multi Challenge', 9, 2017, 3 from dual union
Select 1642, 1, 'Activity My First', 6, 2015, 8 from dual union
Select 1643, 1, 'Activity professional!', 2, 2015, 5 from dual union
Select 1644, 1, 'Activity Pótkérdések I.', 3, 2016, 9 from dual union
Select 1645, 1, 'Activity Pótkérdések II.', 4, 2015, 7 from dual union
Select 1646, 1, 'Activity Ruhrpott', 1, 2016, 6 from dual union
Select 1647, 1, 'Activity Superthema Freizeit und Essen', 8, 2015, 5 from dual union
Select 1648, 1, 'Activity Superthema Heute', 3, 2016, 8 from dual union
Select 1649, 1, 'Activity Superthema Körper & Natur', 10, 2015, 10 from dual union
Select 1650, 1, 'Activity Superthema Urlaub & Sport', 7, 2015, 2 from dual union
Select 1651, 1, 'Activity Travel', 6, 2015, 5 from dual union
Select 1652, 1, 'Activity Turbo', 7, 2015, 9 from dual union
Select 1653, 1, 'Activity Turbo Junior', 2, 2017, 4 from dual union
Select 1654, 1, 'Activity Zusatzkarten', 1, 2017, 10 from dual union
Select 1655, 1, 'Activity: 25th anniversary edition', 4, 2015, 4 from dual union
Select 1656, 1, 'Activity: Alles ist möglich', 5, 2016, 7 from dual union
Select 1657, 1, 'Activity: Gold Edition', 5, 2015, 1 from dual union
Select 1658, 1, 'ACTOP: Ancient Construct Tower of Philosopher', 7, 2016, 3 from dual union
Select 1659, 1, 'The Acts of the Disciples', 10, 2015, 10 from dual union
Select 1660, 1, 'Actual Size May Vary', 5, 2016, 4 from dual union
Select 1661, 1, 'Acuity', 6, 2017, 1 from dual union
Select 1662, 1, 'Acute Care', 5, 2015, 1 from dual union
Select 1663, 1, 'ACW Riverine Warfare', 8, 2016, 1 from dual union
Select 1664, 1, 'ACW Solitaire', 2, 2017, 5 from dual union
Select 1665, 1, 'Ad Acta', 1, 2015, 6 from dual union
Select 1666, 1, 'Ad Astra', 4, 2016, 8 from dual union
Select 1667, 1, 'Ad Elta Stelpur', 9, 2017, 6 from dual union
Select 1668, 1, 'AD HOP', 4, 2015, 5 from dual union
Select 1669, 1, 'Ad Liners', 7, 2015, 2 from dual union
Select 1670, 1, 'Ad Mania', 4, 2017, 9 from dual union
Select 1671, 1, 'Ad-Lib', 5, 2015, 10 from dual union
Select 1672, 1, 'Ad-Lib Crossword Cubes', 0, 2016, 6 from dual union
Select 1673, 1, 'Ad-Mad', 9, 2015, 7 from dual union
Select 1674, 1, 'Ad-Man! a Game of Advertising Mascots', 5, 2015, 9 from dual union
Select 1675, 1, 'Ad.diction', 5, 2015, 9 from dual union
Select 1676, 1, 'AD2222', 6, 2017, 9 from dual union
Select 1677, 1, 'Adal en Inguesu Landia', 8, 2016, 3 from dual union
Select 1678, 1, 'Adam & Eva', 7, 2015, 7 from dual union
Select 1679, 1, 'Adam Games Football', 4, 2017, 2 from dual union
Select 1680, 1, 'Adaman', 6, 2017, 3 from dual union
Select 1681, 1, 'Adamas', 8, 2015, 1 from dual union
Select 1682, 1, 'Adams Ahn', 4, 2016, 8 from dual union
Select 1683, 1, 'Adapt', 3, 2015, 4 from dual union
Select 1684, 1, 'Adapt3', 8, 2016, 4 from dual union
Select 1685, 1, 'Adaptoid', 5, 2015, 6 from dual union
Select 1686, 1, 'Add & Subtract Chekker Math', 0, 2016, 4 from dual union
Select 1687, 1, 'Add A Bug Math Game', 9, 2015, 10 from dual union
Select 1688, 1, 'Add On', 6, 2016, 1 from dual union
Select 1689, 1, 'AddEm', 8, 2016, 8 from dual union
Select 1690, 1, 'ADD-TOO', 9, 2015, 7 from dual union
Select 1691, 1, 'Addadda', 10, 2016, 7 from dual union
Select 1692, 1, 'The Addams Family', 1, 2016, 6 from dual union
Select 1693, 1, 'The Addams Family', 10, 2016, 9 from dual union
Select 1694, 1, 'The Addams Family', 3, 2015, 1 from dual union
Select 1695, 1, 'The Addams Family Card Game', 3, 2015, 6 from dual union
Select 1696, 1, 'Addams Family Creepy Mansion Action Game', 8, 2015, 7 from dual union
Select 1697, 1, 'The Addams Family Family Reunion Game', 4, 2016, 3 from dual union
Select 1698, 1, 'The Addams Family: Find Uncle Fester! Card Game', 7, 2017, 7 from dual union
Select 1699, 1, 'Addaword', 3, 2016, 9 from dual union
Select 1700, 1, 'Addenda', 5, 2015, 1 from dual union
Select 1701, 1, 'Addi Cats', 8, 2015, 3 from dual union
Select 1702, 1, 'Addict: Le Grand Quiz Interactif', 4, 2017, 4 from dual union
Select 1703, 1, 'Addiction', 9, 2017, 6 from dual union
Select 1704, 1, 'Addictionary', 0, 2017, 4 from dual union
Select 1705, 1, 'Addictive Alchemy', 5, 2015, 5 from dual union
Select 1706, 1, 'ADDIE', 3, 2016, 3 from dual union
Select 1707, 1, 'Addigolo', 4, 2015, 1 from dual union
Select 1708, 1, 'Adding Play', 3, 2016, 7 from dual union
Select 1709, 1, 'Addique', 3, 2015, 3 from dual union
Select 1710, 1, 'Addition and Multiplication Dominoes', 0, 2017, 8 from dual union
Select 1711, 1, 'Addition and Subtraction', 5, 2017, 1 from dual union
Select 1712, 1, 'Addition and Subtraction Quizmo', 7, 2017, 1 from dual union
Select 1713, 1, 'Addition Bingo', 10, 2016, 8 from dual union
Select 1714, 1, 'Addition Bingo', 0, 2016, 2 from dual union
Select 1715, 1, 'Addition in the Amazon', 1, 2016, 4 from dual union
Select 1716, 1, 'Addition Matching Caps', 9, 2016, 9 from dual union
Select 1717, 1, 'Additional Sherlock Holmes Cases for 221B Baker Street, The Master Detective Game', 6, 2015, 3 from dual union
Select 1718, 1, 'Additional Trivia', 10, 2016, 2 from dual union
Select 1719, 1, 'Additions: Soustractions', 10, 2017, 8 from dual union
Select 1720, 1, 'ADDO', 4, 2017, 10 from dual union
Select 1721, 1, 'Adeptus Titanicus', 9, 2017, 8 from dual union
Select 1722, 1, 'Adeptus Titanicus II', 9, 2016, 8 from dual union
Select 1723, 1, 'Adesso ci penso', 10, 2016, 8 from dual union
Select 1724, 1, 'The Adhesives Family Game', 4, 2015, 3 from dual union
Select 1725, 1, 'Adidoku', 10, 2015, 4 from dual union
Select 1726, 1, 'Adigma', 8, 2017, 10 from dual union
Select 1727, 1, 'Adijuh', 1, 2015, 10 from dual union
Select 1728, 1, 'Adios Amigos', 0, 2016, 1 from dual union
Select 1729, 1, 'Adji-boto', 3, 2015, 5 from dual union
Select 1730, 1, 'ADJitation', 0, 2015, 10 from dual union
Select 1731, 1, 'Adjugé', 7, 2015, 3 from dual union
Select 1732, 1, 'Adjugé vendu', 4, 2017, 5 from dual union
Select 1733, 1, 'Adjugé..!', 10, 2015, 6 from dual union
Select 1734, 1, 'Adler Luftkampfspiel', 3, 2016, 2 from dual union
Select 1735, 1, 'Adler Luftverteidigungsspiel', 6, 2015, 6 from dual union
Select 1736, 1, 'Adlung Land', 9, 2017, 3 from dual union
Select 1737, 1, 'Admin Test Item', 6, 2015, 8 from dual union
Select 1738, 1, 'Admin Test Item 2', 3, 2017, 1 from dual union
Select 1739, 1, 'Administrando o seu Dinheiro', 7, 2016, 6 from dual union
Select 1740, 1, 'Administration', 10, 2017, 7 from dual union
Select 1741, 1, 'The Administrative Waltz', 1, 2017, 4 from dual union
Select 1742, 1, 'Admiral', 5, 2016, 7 from dual union
Select 1743, 1, 'Admiral', 7, 2017, 10 from dual union
Select 1744, 1, 'Admiral', 0, 2017, 10 from dual union
Select 1745, 1, 'Admiral', 5, 2016, 2 from dual union
Select 1746, 1, 'Admiral', 8, 2017, 5 from dual union
Select 1747, 1, 'Admiral Ackbar "Its a TRAP!" GAME', 9, 2015, 6 from dual union
Select 1748, 1, 'Admiral Byrds South Pole Game Little America', 1, 2015, 1 from dual union
Select 1749, 1, 'Admiral Graf Spee', 8, 2017, 6 from dual union
Select 1750, 1, 'Admiral of the Black', 2, 2017, 5 from dual union
Select 1751, 1, 'Admiral On Deck', 7, 2015, 1 from dual union
Select 1752, 1, 'Admirals Order: Algeciras 1801', 9, 2015, 1 from dual union
Select 1753, 1, 'Admirals Order: Naval Tactics in the Age of Sail – All Hands!', 7, 2017, 3 from dual union
Select 1754, 1, 'Admirals Order: Naval Tactics in the Age of Sail – Edition 74', 8, 2015, 5 from dual union
Select 1755, 1, 'Admirals Order: Naval Tactics in the Age of Sail – Trafalgar Expansion', 5, 2017, 1 from dual union
Select 1756, 1, 'Admirals Order: Sealed Despatches', 9, 2015, 6 from dual union
Select 1757, 1, 'Admirals', 5, 2017, 6 from dual union
Select 1758, 1, 'Admiralty', 2, 2015, 5 from dual union
Select 1759, 1, 'Adobe Wells', 2, 2017, 1 from dual union
Select 1760, 1, 'Adomoc', 2, 2017, 9 from dual union
Select 1761, 1, 'Adopt-A-Dog', 9, 2016, 6 from dual union
Select 1762, 1, 'Adorable Pandaring', 10, 2015, 5 from dual union
Select 1763, 1, 'Adorable to Horrible', 0, 2016, 10 from dual union
Select 1764, 1, 'Adowa', 6, 2015, 1 from dual union
Select 1765, 1, 'Adrenaline', 4, 2016, 9 from dual union
Select 1766, 1, 'Adrenaline: Chainsaw', 0, 2016, 3 from dual union
Select 1767, 1, 'Adrenaline: Laser-Magnum', 8, 2016, 10 from dual union
Select 1768, 1, 'Adsubmuldi', 2, 2016, 5 from dual union
Select 1769, 1, 'Adua 1896', 10, 2016, 6 from dual union
Select 1770, 1, 'Adugo', 8, 2016, 8 from dual union
Select 1771, 1, 'Adult Drinking Games Compendium', 7, 2017, 3 from dual union
Select 1772, 1, 'Adult Late Night Games', 3, 2015, 7 from dual union
Select 1773, 1, 'Adultery', 5, 2015, 4 from dual union
Select 1774, 1, 'Adultery', 10, 2016, 1 from dual union
Select 1775, 1, 'Adultrivia', 7, 2015, 7 from dual union
Select 1776, 1, 'Adultrivia II: The Jokers Edition', 9, 2016, 3 from dual union
Select 1777, 1, 'Advance', 2, 2017, 3 from dual union
Select 1778, 1, 'Advance Australia', 7, 2016, 2 from dual union
Select 1779, 1, 'Advance Junior', 3, 2016, 3 from dual union
Select 1780, 1, 'Advance the Colors', 6, 2015, 6 from dual union
Select 1781, 1, 'Advance the Flag', 0, 2017, 4 from dual union
Select 1782, 1, 'Advance to Boardwalk', 4, 2015, 5 from dual union
Select 1783, 1, 'Advanced Civilization', 7, 2015, 6 from dual union
Select 1784, 1, 'Advanced Culture & Conquest', 9, 2017, 2 from dual union
Select 1785, 1, 'Advanced Dungeons & Dragons Battlesystem', 2, 2016, 5 from dual union
Select 1786, 1, 'Advanced Dungeons & Dragons Battlesystem (second edition)', 10, 2015, 8 from dual union
Select 1787, 1, 'Advanced Dungeons & Dragons Battlesystem Skirmishes', 5, 2016, 10 from dual union
Select 1788, 1, 'Advanced Dungeons & Dragons Trivia Game', 5, 2015, 4 from dual union
Select 1789, 1, 'Advanced European Theater of Operations', 6, 2016, 4 from dual union
Select 1790, 1, 'Advanced European Theater of Operations: Africa Orientale Italiana', 1, 2016, 10 from dual union
Select 1791, 1, 'Advanced Fighter Combat', 1, 2016, 6 from dual union
Select 1792, 1, 'Advanced Heroquest', 2, 2015, 5 from dual union
Select 1793, 1, 'Advanced Heroquest: Terror In The Dark', 2, 2015, 8 from dual union
Select 1794, 1, 'Advanced Legendary Battles', 6, 2017, 2 from dual union
Select 1795, 1, 'Advanced Pacific Theater of Operations', 5, 2016, 4 from dual union
Select 1796, 1, 'Advanced Persistent Threat Challenge', 4, 2015, 1 from dual union
Select 1797, 1, 'Advanced Platoon Leader', 3, 2017, 5 from dual union
Select 1798, 1, 'Advanced Salvo! 1939-1941', 5, 2015, 6 from dual union
Select 1799, 1, 'Advanced Song of Blades and Heroes', 3, 2016, 9 from dual union
Select 1800, 1, 'Advanced Space Crusade', 7, 2017, 9 from dual union
Select 1801, 1, 'Advanced Squad Leader', 9, 2016, 7 from dual union
Select 1802, 1, 'Advanced Squad Leader Starter Kit Scenario Design Contest', 5, 2015, 9 from dual union
Select 1803, 1, 'Advanced Squad Leader: Deluxe Pack 1', 6, 2017, 1 from dual union
Select 1804, 1, 'Advanced Squad Leader: Forgotten War – Korean War of 1950-1953', 5, 2016, 2 from dual union
Select 1805, 1, 'Advanced Squad Leader: Starter Kit #1', 5, 2017, 4 from dual union
Select 1806, 1, 'Advanced Squad Leader: Starter Kit #2', 8, 2016, 5 from dual union
Select 1807, 1, 'Advanced Squad Leader: Starter Kit #3', 4, 2016, 2 from dual union
Select 1808, 1, 'Advanced Squad Leader: Starter Kit Bonus Pack #1 – Beyond the Beaches', 5, 2017, 2 from dual union
Select 1809, 1, 'Advanced Squad Leader: Starter Kit Expansion Pack #1', 10, 2017, 2 from dual union
Select 1810, 1, 'Advanced Squad Leader: Starter Kit Historical Module 1 – Decision at Elst', 0, 2016, 10 from dual union
Select 1811, 1, 'Advanced Star Frontiers Lensman', 4, 2016, 6 from dual union
Select 1812, 1, 'Advanced Tactics', 3, 2017, 10 from dual union
Select 1813, 1, 'Advanced Third Reich', 8, 2015, 4 from dual union
Select 1814, 1, 'Advanced Title Bout', 5, 2017, 7 from dual union
Select 1815, 1, 'Advanced Tobruk', 6, 2017, 1 from dual union
Select 1816, 1, 'Advanced Tobruk 2016', 2, 2016, 9 from dual union
Select 1817, 1, 'Advanced Tobruk 2016: Expansion 6 – Tunisia II', 8, 2016, 10 from dual union
Select 1818, 1, 'Advanced Tobruk System Basic Game 1a: Screaming Eagles', 7, 2017, 10 from dual union
Select 1819, 1, 'Advanced Tobruk System Basic Game I: Infantry', 3, 2017, 5 from dual union
Select 1820, 1, 'Advanced Tobruk System Basic Game II: Action at Carentan', 8, 2016, 5 from dual union
Select 1821, 1, 'Advanced Tobruk System Basic Game II: Busting the Bocage', 10, 2016, 10 from dual union
Select 1822, 1, 'Advanced Tobruk System Basic Game II: Stalins Fury', 1, 2016, 2 from dual union
Select 1823, 1, 'Advanced Tobruk System Basic Game II: Streets of Stalingrad', 5, 2016, 8 from dual union
Select 1824, 1, 'Advanced Tobruk System: Tank Tactics Guide – Includes Complete Armor Basic Game', 0, 2015, 1 from dual union
Select 1825, 1, 'Advanced Tracks to Telluride', 6, 2017, 7 from dual union
Select 1826, 1, 'Advanced Transmogrification', 8, 2017, 5 from dual union
Select 1827, 1, 'Advanced Vive lEmpereur', 1, 2015, 5 from dual union
Select 1828, 1, 'Advanced War Games', 3, 2017, 1 from dual union
Select 1829, 1, 'Advanced Wizards Quest (fan expansion for Wizards Quest)', 2, 2017, 6 from dual union
Select 1830, 1, 'Advantage Baseball', 6, 2016, 6 from dual union
Select 1831, 1, 'Advantage Basketball', 8, 2015, 1 from dual union
Select 1832, 1, 'Advantage Cricket', 5, 2015, 9 from dual union
Select 1833, 1, 'Advantage Hockey', 10, 2017, 10 from dual union
Select 1834, 1, 'Advantage Tennis', 0, 2015, 1 from dual union
Select 1835, 1, 'Advantage: Tennis – The Game of Singles', 2, 2016, 3 from dual union
Select 1836, 1, 'Advent Saga: Tactical Card Game', 2, 2015, 9 from dual union
Select 1837, 1, 'Adventure 1: The Mountain Keep (fan expansion to HeroQuest)', 8, 2017, 10 from dual union
Select 1838, 1, 'Adventure 2: Slaves Of Zargon (fan expansion for HeroQuest)', 3, 2016, 9 from dual union
Select 1839, 1, 'Adventure 3: The Lost Books (fan expansion for HeroQuest)', 2, 2016, 9 from dual union
Select 1840, 1, 'Adventure 4: In The Kings Service (fan expansion for HeroQuest)', 7, 2015, 4 from dual union
Select 1841, 1, 'Adventure 5: Beyond Grins Crag – Kellars Keep 2 (fan expansion for HeroQuest)', 10, 2016, 2 from dual union
Select 1842, 1, 'Adventure 6: Resurrection – Return of the Witch Lord 2 (fan expansion for HeroQuest)', 2, 2015, 4 from dual union
Select 1843, 1, 'Adventure 7: The Rescue of Princess Millandriell (fan expansion to HeroQuest)', 7, 2015, 9 from dual union
Select 1844, 1, 'Adventure 8: The Horror Inside the Ancient Halls of Sunca (fan expansion to HeroQuest)', 1, 2017, 7 from dual union
Select 1845, 1, 'Adventure Camp: A Sequencing Game', 2, 2017, 9 from dual union
Select 1846, 1, 'Adventure Cards', 9, 2016, 1 from dual union
Select 1847, 1, 'Adventure Class Ships Vol. 1', 4, 2017, 3 from dual union
Select 1848, 1, 'Adventure Class Ships Vol. 2', 2, 2017, 4 from dual union
Select 1849, 1, 'Adventure Club', 2, 2016, 9 from dual union
Select 1850, 1, 'Adventure Game Starter Set', 4, 2017, 1 from dual union
Select 1851, 1, 'Adventure Gaming', 9, 2015, 7 from dual union
Select 1852, 1, 'Adventure in Venice', 3, 2015, 8 from dual union
Select 1853, 1, 'Adventure IN!', 3, 2015, 3 from dual union
Select 1854, 1, 'Adventure Land', 1, 2015, 5 from dual union
Select 1855, 1, 'Adventure Land: Herbs', 4, 2015, 5 from dual union
Select 1856, 1, 'The Adventure League', 7, 2015, 10 from dual union
Select 1857, 1, 'Adventure of D', 5, 2016, 10 from dual union
Select 1858, 1, 'The Adventure of Hayabusa', 1, 2016, 1 from dual union
Select 1859, 1, 'Adventure of Jack Sparrow and Barbossa: The Print and Play Game', 1, 2017, 9 from dual union
Select 1860, 1, 'Adventure of Warado', 3, 2016, 6 from dual union
Select 1861, 1, 'Adventure Park', 7, 2015, 10 from dual union
Select 1862, 1, 'Adventure Time Card Wars: BMO vs. Lady Rainicorn', 4, 2017, 8 from dual union
Select 1863, 1, 'Adventure Time Card Wars: Doubles Tournament', 5, 2016, 8 from dual union
Select 1864, 1, 'Adventure Time Card Wars: Finn vs. Jake', 1, 2017, 9 from dual union
Select 1865, 1, 'Adventure Time Card Wars: Fionna vs Cake', 0, 2016, 4 from dual union
Select 1866, 1, 'Adventure Time Card Wars: For The Glory! Booster Pack', 8, 2016, 7 from dual union
Select 1867, 1, 'Adventure Time Card Wars: Hero Pack #1', 4, 2015, 1 from dual union
Select 1868, 1, 'Adventure Time Card Wars: Ice King vs. Marceline', 6, 2015, 3 from dual union
Select 1869, 1, 'Adventure Time Card Wars: Lemongrab vs. Gunter', 4, 2015, 5 from dual union
Select 1870, 1, 'Adventure Time Card Wars: Princess Bubblegum vs. Lumpy Space Princess', 2, 2015, 1 from dual union
Select 1871, 1, 'Adventure Time Card Wars: Sundae School', 10, 2015, 7 from dual union
Select 1872, 1, 'Adventure Time Everything Burrito Game', 0, 2015, 1 from dual union
Select 1873, 1, 'Adventure Time Fluxx', 8, 2015, 6 from dual union
Select 1874, 1, 'Adventure Time Love Letter', 3, 2015, 6 from dual union
Select 1875, 1, 'Adventure Time: Adventures in the Land of Ooo', 0, 2015, 1 from dual union
Select 1876, 1, 'Adventure Tours', 6, 2017, 3 from dual union
Select 1877, 1, 'Adventureland Game', 9, 2016, 7 from dual union
Select 1878, 1, 'AdventureQuest Worlds: The ANYTHING GOES BattleOn Battle Card Game', 6, 2015, 6 from dual union
Select 1879, 1, 'Adventurer', 3, 2015, 5 from dual union
Select 1880, 1, 'Adventurer Kings', 1, 2017, 3 from dual union
Select 1881, 1, 'Adventurers Kit', 4, 2015, 10 from dual union
Select 1882, 1, 'Adventurer: Card Game', 1, 2016, 8 from dual union
Select 1883, 1, 'Adventurer: Card Game – Chaos Expansion', 1, 2015, 4 from dual union
Select 1884, 1, 'Adventurer: Card Game – Portals Expansion', 4, 2017, 7 from dual union
Select 1885, 1, 'Adventurer: Card Game – Promo Cards', 10, 2015, 2 from dual union
Select 1886, 1, 'Adventurers', 3, 2016, 2 from dual union
Select 1887, 1, 'The Adventurers: The Pyramid of Horus', 2, 2017, 5 from dual union
Select 1888, 1, 'The Adventurers: The Temple of Chac', 3, 2016, 3 from dual union
Select 1889, 1, 'The Adventurers: The Temple of Chac – Dalia Cardoso', 2, 2016, 6 from dual union
Select 1890, 1, 'Adventures in Fairyland', 5, 2017, 10 from dual union
Select 1891, 1, 'Adventures in Jimland', 3, 2017, 4 from dual union
Select 1892, 1, 'Adventures in Oz', 9, 2016, 7 from dual union
Select 1893, 1, 'Adventures in Talislanta', 3, 2016, 8 from dual union
Select 1894, 1, 'Adventures in the Dungeon', 0, 2016, 5 from dual union
Select 1895, 1, 'Adventures in the Lost Lands', 0, 2017, 10 from dual union
Select 1896, 1, 'Adventures in Toothland', 8, 2017, 5 from dual union
Select 1897, 1, 'Adventures in Wonderland', 8, 2017, 10 from dual union
Select 1898, 1, 'The Adventures of a Mailman', 3, 2013, 2 from dual union
Select 1899, 1, 'The Adventures of Captain Can', 7, 2016, 6 from dual union
Select 1900, 1, 'The Adventures of Davy Crockett', 5, 2015, 10 from dual union
Select 1901, 1, 'The Adventures of Dick and Virginia', 3, 2016, 8 from dual union
Select 1902, 1, 'The Adventures of Harley', 7, 2016, 7 from dual union
Select 1903, 1, 'The Adventures of Ko the Koala', 4, 2015, 2 from dual union
Select 1904, 1, 'Adventures of Lassie', 10, 2017, 8 from dual union
Select 1905, 1, 'The Adventures of Oliver & Toes', 7, 2016, 8 from dual union
Select 1906, 1, 'Adventures of Pinocchio: An Electric Game', 3, 2015, 6 from dual union
Select 1907, 1, 'The Adventures of Popeye', 1, 2016, 6 from dual union
Select 1908, 1, 'The Adventures of Rin-Tin-Tin', 9, 2015, 5 from dual union
Select 1909, 1, 'Adventures of Robin Hood', 0, 2015, 4 from dual union
Select 1910, 1, 'The Adventures of Robin Hood Game', 0, 2017, 4 from dual union
Select 1911, 1, 'Adventures of Sir Lancelot', 10, 2015, 6 from dual union
Select 1912, 1, 'The Adventures of Superman', 3, 2015, 5 from dual union
Select 1913, 1, 'Adventures of Tom Sawyer and Huck Finn', 6, 2015, 10 from dual union
Select 1914, 1, 'Adventures on the moon', 2, 2016, 3 from dual union
Select 1915, 1, 'Adventures with Clifford, the Big Red Dog', 2, 2015, 9 from dual union
Select 1916, 1, 'Adventurous Apples To Apples Snack Pack', 5, 2016, 9 from dual union
Select 1917, 1, 'Adversa', 9, 2017, 2 from dual union
Select 1918, 1, 'Adversary', 7, 2016, 9 from dual union
Select 1919, 1, 'Adversity', 4, 2015, 7 from dual union
Select 1920, 1, 'Adverteasing', 1, 2017, 3 from dual union
Select 1921, 1, 'Adverteasing II', 7, 2017, 4 from dual union
Select 1922, 1, 'Adverteasing Junior', 8, 2016, 5 from dual union
Select 1923, 1, 'Advertentiespel', 9, 2016, 8 from dual union
Select 1924, 1, 'Advice', 8, 2015, 10 from dual union
Select 1925, 1, 'AE-WWII', 8, 2016, 8 from dual union
Select 1926, 1, 'AE-WWII: The Occult Expansion', 2, 2017, 9 from dual union
Select 1927, 1, 'AE: Bounty', 6, 2015, 7 from dual union
Select 1928, 1, 'AEG Black Friday Black Box', 7, 2016, 10 from dual union
Select 1929, 1, 'AEG Black Friday Black Box 2015', 8, 2015, 9 from dual union
Select 1930, 1, 'Aegean Fleet', 0, 2016, 3 from dual union
Select 1931, 1, 'Aegean Strike', 9, 2015, 3 from dual union
Select 1932, 1, 'Aegirs Fire', 5, 2017, 1 from dual union
Select 1933, 1, 'Aeons End', 7, 2016, 2 from dual union
Select 1934, 1, 'Aeons End: Bane Sire', 1, 2017, 8 from dual union
Select 1935, 1, 'Aeons End: The Depths', 10, 2016, 7 from dual union
Select 1936, 1, 'Aeons End: The Nameless', 2, 2016, 4 from dual union
Select 1937, 1, 'Aeons End: War Eternal', 3, 2017, 1 from dual union
Select 1938, 1, 'Aera', 4, 2016, 4 from dual union
Select 1939, 1, 'Aerial Assault', 4, 2015, 10 from dual union
Select 1940, 1, 'Aerial Attack', 9, 2017, 9 from dual union
Select 1941, 1, 'Aerial Combat', 0, 2015, 2 from dual union
Select 1942, 1, 'Aerial Contest', 7, 2015, 9 from dual union
Select 1943, 1, 'The Aerial Derby', 0, 2015, 6 from dual union
Select 1944, 1, 'Aero', 1, 2017, 7 from dual union
Select 1945, 1, 'Aero reli', 0, 2016, 6 from dual union
Select 1946, 1, 'Aero Squadron', 7, 2017, 5 from dual union
Select 1947, 1, 'Aero-ball', 5, 2015, 1 from dual union
Select 1948, 1, 'Aero-Chute Target Game', 2, 2017, 1 from dual union
Select 1949, 1, 'Aerochamp', 9, 2017, 5 from dual union
Select 1950, 1, 'Aerodrome', 6, 2017, 8 from dual union
Select 1951, 1, 'Aerodrome II', 7, 2017, 7 from dual union
Select 1952, 1, 'Aeroduel', 10, 2015, 3 from dual union
Select 1953, 1, 'Aeronautica Imperialis', 9, 2016, 4 from dual union
Select 1954, 1, 'Aeronautika', 4, 2016, 5 from dual union
Select 1955, 1, 'Aeronef', 8, 2015, 6 from dual union
Select 1956, 1, 'Aeronef Captains Handbook', 3, 2015, 8 from dual union
Select 1957, 1, 'Aeronef Over the Aegean: Wrath of the Syren', 4, 2016, 2 from dual union
Select 1958, 1, 'Aeroplane Race Round the British Empire', 8, 2015, 10 from dual union
Select 1959, 1, 'Aeroplane Race: Round the World Fliers', 7, 2016, 1 from dual union
Select 1960, 1, 'Aeroplanes: Aviation Ascendant', 4, 2017, 3 from dual union
Select 1961, 1, 'Aeroplanes: Charters', 2, 2015, 10 from dual union
Select 1962, 1, 'Aeroplanes: PWS-24', 1, 2015, 6 from dual union
Select 1963, 1, 'AEROSTAR', 1, 2017, 7 from dual union
Select 1964, 1, 'Aerostarz', 5, 2016, 3 from dual union
Select 1965, 1, 'Aesop', 6, 2015, 7 from dual union
Select 1966, 1, 'Aether', 1, 2015, 6 from dual union
Select 1967, 1, 'Aether Captains', 9, 2015, 4 from dual union
Select 1968, 1, 'Aether Captains: Capek Golems', 8, 2017, 10 from dual union
Select 1969, 1, 'Aether Captains: Clash of Corsairs', 9, 2016, 2 from dual union
Select 1970, 1, 'Aether Captains: Clockwork Cabal', 1, 2015, 1 from dual union
Select 1971, 1, 'Aether Captains: Dread Supremacy', 8, 2015, 6 from dual union
Select 1972, 1, 'Aether Captains: Fleet of Doom', 8, 2016, 9 from dual union
Select 1973, 1, 'Aether Captains: Pirates and Traders', 2, 2017, 4 from dual union
Select 1974, 1, 'Aether Captains: The Search', 8, 2017, 6 from dual union
Select 1975, 1, 'Aether Captains: Triad', 2, 2015, 3 from dual union
Select 1976, 1, 'Aether Captains: Triad 2', 10, 2016, 10 from dual union
Select 1977, 1, 'Aether Magic', 2, 2015, 4 from dual union
Select 1978, 1, 'Aetherium', 8, 2015, 5 from dual union
Select 1979, 1, 'Aetherium: House Ikaru', 5, 2016, 1 from dual union
Select 1980, 1, 'AFCQB', 7, 2017, 10 from dual union
Select 1981, 1, 'Affari tuoi', 1, 2016, 6 from dual union
Select 1982, 1, 'Affection', 6, 2017, 5 from dual union
Select 1983, 1, 'Affectionate: Cats and Cuddles', 6, 2016, 9 from dual union
Select 1984, 1, 'Affen Angeln', 10, 2017, 9 from dual union
Select 1985, 1, 'Affen Wippe', 3, 2017, 4 from dual union
Select 1986, 1, 'Das Affen-Spiel', 6, 2017, 3 from dual union
Select 1987, 1, 'Affenbande', 8, 2015, 4 from dual union
Select 1988, 1, 'Affenfelsenspiel', 10, 2016, 9 from dual union
Select 1989, 1, 'Affengeil', 1, 2016, 9 from dual union
Select 1990, 1, 'Affenparty', 0, 2017, 3 from dual union
Select 1991, 1, 'Affenparty', 3, 2017, 7 from dual union
Select 1992, 1, 'Affenraffen', 3, 2016, 8 from dual union
Select 1993, 1, 'Affenstark', 8, 2015, 10 from dual union
Select 1994, 1, 'Affentanz', 4, 2016, 10 from dual union
Select 1995, 1, 'Affentennis', 10, 2017, 2 from dual union
Select 1996, 1, 'Affentennis: Die Doppelerweiterung', 9, 2016, 7 from dual union
Select 1997, 1, 'Affentheater', 7, 2017, 8 from dual union
Select 1998, 1, 'Affenzahn', 2, 2017, 10 from dual union
Select 1999, 1, 'Affenzirkus', 2, 2016, 2 from dual union
Select 2000, 1, 'AFFLICTION: Salem 1692', 1, 2017, 1 from dual ) b
WHERE NOT EXISTS (SELECT product_id from product where product_id = 1001 );

INSERT INTO product (product_id, active, name, quantity, year_published, category_id)
Select *
from (
Select 2001 a, 1 b, 'Affluence' c, 1 d, 2016 e, 2 f from dual union
Select 2002, 1, 'Affonda', 9, 2016, 4 from dual union
Select 2003, 1, 'Affton Opoly', 0, 2016, 4 from dual union
Select 2004, 1, 'Afghanistan', 8, 2016, 5 from dual union
Select 2005, 1, 'Afghanistan 1980', 6, 2016, 6 from dual union
Select 2006, 1, 'Afghanistan 2010', 3, 2017, 9 from dual union
Select 2007, 1, 'Aficionado', 2, 2015, 5 from dual union
Select 2008, 1, 'AFL DVD Triva Challenge', 2, 2016, 10 from dual union
Select 2009, 1, 'AFL Micro-Figure Game', 9, 2016, 4 from dual union
Select 2010, 1, 'AFL the Board Game', 8, 2016, 6 from dual union
Select 2011, 1, 'Aflakló', 9, 2017, 2 from dual union
Select 2012, 1, 'Afluentes', 1, 2015, 10 from dual union
Select 2013, 1, 'Afoot: Sins of the Flesh', 3, 2016, 8 from dual union
Select 2014, 1, 'Afriboria', 7, 2016, 4 from dual union
Select 2015, 1, 'Africa', 0, 2015, 4 from dual union
Select 2016, 1, 'Africa', 6, 2015, 8 from dual union
Select 2017, 1, 'Africa', 6, 2017, 2 from dual union
Select 2018, 1, 'Africa 1483', 2, 2015, 7 from dual union
Select 2019, 1, 'Africa 1880', 9, 2017, 7 from dual union
Select 2020, 1, 'Africa Aflame', 5, 2016, 8 from dual union
Select 2021, 1, 'Africa Orientale', 9, 2017, 2 from dual union
Select 2022, 1, 'Africa Raid', 0, 2017, 5 from dual union
Select 2023, 1, 'Africa Wild!', 3, 2015, 7 from dual union
Select 2024, 1, 'Africas 30 Year War: Chad Vs. Libya – The Toyota War', 6, 2017, 10 from dual union
Select 2025, 1, 'Africas Big 5: The Ultimate Adventure Board Game', 2, 2016, 7 from dual union
Select 2026, 1, 'African Animal Hunt', 2, 2017, 4 from dual union
Select 2027, 1, 'The African Campaign', 10, 2015, 9 from dual union
Select 2028, 1, 'African Empires', 5, 2016, 1 from dual union
Select 2029, 1, 'African Fleet', 4, 2016, 10 from dual union
Select 2030, 1, 'African Gambit', 5, 2017, 10 from dual union
Select 2031, 1, 'African Kingdoms', 5, 2017, 10 from dual union
Select 2032, 1, 'African Park', 5, 2015, 10 from dual union
Select 2033, 1, 'African Queen', 0, 2017, 9 from dual union
Select 2034, 1, 'African Rails', 0, 2015, 9 from dual union
Select 2035, 1, 'African-American Discovery', 6, 2016, 7 from dual union
Select 2036, 1, 'Africana', 9, 2016, 6 from dual union
Select 2037, 1, 'Africana: Die Farbwechsler', 4, 2015, 3 from dual union
Select 2038, 1, 'Africanus: SPQR Module', 4, 2015, 10 from dual union
Select 2039, 1, 'Afrika', 9, 2016, 9 from dual union
Select 2040, 1, 'Afrika', 5, 2015, 8 from dual union
Select 2041, 1, 'Afrika (second edition)', 8, 2015, 8 from dual union
Select 2042, 1, 'Afrika Korps', 5, 2016, 7 from dual union
Select 2043, 1, 'Afrika Korps', 9, 2017, 3 from dual union
Select 2044, 1, 'Afrika Korps', 1, 2016, 7 from dual union
Select 2045, 1, 'Afrika Korps: Decision in the Desert, 1941-42', 3, 2016, 7 from dual union
Select 2046, 1, 'Afrika: The Northern African Campaign, 1940-1942 (1st edition)', 10, 2015, 10 from dual union
Select 2047, 1, 'Afrikan tähti', 4, 2015, 9 from dual union
Select 2048, 1, 'Afrikan tähti korttipeli', 2, 2015, 6 from dual union
Select 2049, 1, 'Afrikan tähti: Retkikunnat', 8, 2016, 7 from dual union
Select 2050, 1, 'Afrikanische Mühle', 7, 2016, 2 from dual union
Select 2051, 1, 'Afriquenjeux: The Africa Memory Game', 3, 2015, 3 from dual union
Select 2052, 1, 'Afro-American History Mystery I', 0, 2016, 6 from dual union
Select 2053, 1, 'Afro-Celt Mancala System', 6, 2015, 5 from dual union
Select 2054, 1, 'After Days: Survival is Everything!', 8, 2016, 7 from dual union
Select 2055, 1, 'After Dinner Games', 7, 2016, 7 from dual union
Select 2056, 1, 'After Dinner Games', 5, 2015, 1 from dual union
Select 2057, 1, 'After Dinner Games Compendium', 0, 2017, 9 from dual union
Select 2058, 1, 'After Dinner Games Compendium', 9, 2017, 7 from dual union
Select 2059, 1, 'After Dinner Trivia', 5, 2016, 5 from dual union
Select 2060, 1, 'After Dinner: Seven Games for an Evenings Entertainment', 6, 2015, 7 from dual union
Select 2061, 1, 'After Pablo', 1, 2015, 8 from dual union
Select 2062, 1, 'After School', 4, 2017, 10 from dual union
Select 2063, 1, 'After the Disaster: Triage', 9, 2016, 6 from dual union
Select 2064, 1, 'After The Empire', 0, 2017, 7 from dual union
Select 2065, 1, 'After the End', 9, 2016, 1 from dual union
Select 2066, 1, 'After the Fall', 6, 2016, 2 from dual union
Select 2067, 1, 'After the Flood', 10, 2017, 1 from dual union
Select 2068, 1, 'After the Holocaust', 1, 2015, 1 from dual union
Select 2069, 1, 'After the Horsemen', 7, 2015, 3 from dual union
Select 2070, 1, 'After the Titans', 8, 2015, 6 from dual union
Select 2071, 1, 'Afterglow Miniatures Game', 5, 2017, 5 from dual union
Select 2072, 1, 'Afterlife', 7, 2016, 5 from dual union
Select 2073, 1, 'Aftermath', 6, 2016, 8 from dual union
Select 2074, 1, 'Aftermath: The Beginning', 1, 2017, 5 from dual union
Select 2075, 1, 'Aftermath: The Beginning – Kickstarter Exclusive Characters', 1, 2015, 4 from dual union
Select 2076, 1, 'Aftermath: The Newcomers', 2, 2015, 8 from dual union
Select 2077, 1, 'Afternoon Delight', 5, 2015, 9 from dual union
Select 2078, 1, 'AFTERSHOCK Expansion #1: Gender Dimensions of Humanitarian Assistance and Disaster Relief', 0, 2016, 4 from dual union
Select 2079, 1, 'AFTERSHOCK: A Humanitarian Crisis Game', 10, 2015, 10 from dual union
Select 2080, 1, 'AfterTime: Survival', 6, 2015, 6 from dual union
Select 2081, 1, 'Afterwords', 1, 2017, 2 from dual union
Select 2082, 1, 'Afterworld', 8, 2016, 2 from dual union
Select 2083, 1, 'Afterworld: Earth Reborn', 6, 2016, 4 from dual union
Select 2084, 1, 'AFV', 6, 2015, 5 from dual union
Select 2085, 1, 'AFV Skirmish', 10, 2016, 6 from dual union
Select 2086, 1, 'Afvalwijzer', 9, 2016, 1 from dual union
Select 2087, 1, 'Afzakker Probeerspel', 6, 2015, 7 from dual union
Select 2088, 1, 'Agadez', 4, 2017, 5 from dual union
Select 2089, 1, 'Against All Odds', 0, 2017, 1 from dual union
Select 2090, 1, 'Against the Covenant', 0, 2017, 8 from dual union
Select 2091, 1, 'Against the Reich', 7, 2016, 4 from dual union
Select 2092, 1, 'Against the Scourge of God', 6, 2017, 7 from dual union
Select 2093, 1, 'Against Time', 0, 2016, 8 from dual union
Select 2094, 1, 'Agamemnon', 10, 2016, 6 from dual union
Select 2095, 1, 'Agami', 1, 2017, 5 from dual union
Select 2096, 1, 'Agatha Christie: Behind the Screen', 3, 2017, 2 from dual union
Select 2097, 1, 'Agatha Christie: The Scoop', 2, 2017, 3 from dual union
Select 2098, 1, 'Age of Antiquity', 3, 2016, 10 from dual union
Select 2099, 1, 'Age of Arguments', 6, 2015, 9 from dual union
Select 2100, 1, 'Age of Arthur', 10, 2015, 7 from dual union
Select 2101, 1, 'Age of Assassins', 10, 2016, 9 from dual union
Select 2102, 1, 'Age of Aventinus', 0, 2016, 7 from dual union
Select 2103, 1, 'Age of Battles', 8, 2015, 2 from dual union
Select 2104, 1, 'Age of Battles Game: Shogun', 0, 2015, 5 from dual union
Select 2105, 1, 'Age of Battles: 1242 – Battle of Lake Peipus', 1, 2017, 4 from dual union
Select 2106, 1, 'Age of Battles: Cossack Attack', 5, 2016, 9 from dual union
Select 2107, 1, 'Age of Battles: Crusaders', 4, 2017, 5 from dual union
Select 2108, 1, 'Age of Battles: Hannibal', 6, 2015, 2 from dual union
Select 2109, 1, 'Age of Battles: Kulikovos Battle', 1, 2016, 9 from dual union
Select 2110, 1, 'Age of Battles: Sekigahara 1600', 4, 2006, 8 from dual union
Select 2111, 1, 'Age of Bismarck: The Unifications of Italy and Germany 1859-1871', 6, 2017, 6 from dual union
Select 2112, 1, 'Age of Blood (second edition)', 3, 2017, 9 from dual union
Select 2113, 1, 'Age of Chivalry', 1, 2017, 6 from dual union
Select 2114, 1, 'Age of Conan: The Strategy Board Game', 4, 2015, 4 from dual union
Select 2115, 1, 'Age of Conan: The Strategy Board Game – Adventures in Hyboria', 6, 2016, 5 from dual union
Select 2116, 1, 'Age of Conquistadors: 1492-1612', 3, 2006, 10 from dual union
Select 2117, 1, 'Age of Craft', 8, 2017, 1 from dual union
Select 2118, 1, 'Age of Craft Expansion #1: Blueprints and Visitors', 9, 2017, 8 from dual union
Select 2119, 1, 'Age of Craft Expansion #2: Architecture Alliance', 2, 2015, 8 from dual union
Select 2120, 1, 'Age of Craft: Rebel Army', 8, 2015, 7 from dual union
Select 2121, 1, 'The Age of Dante: Montaperti and Campaldino', 4, 2015, 10 from dual union
Select 2122, 1, 'The Age of Dinosaurs', 2, 2016, 8 from dual union
Select 2123, 1, 'Age of Discovery', 5, 2017, 10 from dual union
Select 2124, 1, 'Age of Eagles', 0, 2015, 3 from dual union
Select 2125, 1, 'Age of Empires II', 7, 2016, 1 from dual union
Select 2126, 1, 'Age of Empires III: The Age of Discovery', 1, 2016, 4 from dual union
Select 2127, 1, 'Age of Enlightenment', 8, 2015, 9 from dual union
Select 2128, 1, 'Age of Exploration', 10, 2015, 9 from dual union
Select 2129, 1, 'The Age of Fighting Sail', 9, 2015, 8 from dual union
Select 2130, 1, 'Age of Frederick the Great', 2, 2015, 2 from dual union
Select 2131, 1, 'Age of Gods', 2, 2016, 4 from dual union
Select 2132, 1, 'The Age of Gunpowder', 3, 2016, 9 from dual union
Select 2133, 1, 'Age of Heroes', 7, 2016, 9 from dual union
Select 2134, 1, 'Age of Heroes', 8, 2016, 1 from dual union
Select 2135, 1, 'Age of Honor', 2, 2016, 4 from dual union
Select 2136, 1, 'Age of Imperialism', 0, 2016, 5 from dual union
Select 2137, 1, 'Age of Industry', 6, 2015, 2 from dual union
Select 2138, 1, 'Age of Industry', 4, 2015, 4 from dual union
Select 2139, 1, 'Age of Industry Expansion #1: Japan and Minnesota', 0, 2015, 10 from dual union
Select 2140, 1, 'Age of Industry Expansion: Belgium & USSR', 7, 2016, 10 from dual union
Select 2141, 1, 'Age of Industry Expansion: Great Lakes & South Africa', 9, 2016, 1 from dual union
Select 2142, 1, 'Age of Iron', 3, 2015, 1 from dual union
Select 2143, 1, 'Age of Iron Expansion Rules: Navies in Transition 1865-1890', 7, 2017, 1 from dual union
Select 2144, 1, 'Age of Man', 3, 2017, 7 from dual union
Select 2145, 1, 'The Age of Might and Steel', 4, 2016, 1 from dual union
Select 2146, 1, 'Age of Monarchs', 4, 2017, 8 from dual union
Select 2147, 1, 'Age of Muskets Volume I: Tomb for an Empire', 8, 2016, 3 from dual union
Select 2148, 1, 'Age of Muskets Volume II: Eagles Rising', 7, 2006, 7 from dual union
Select 2149, 1, 'Age of Muskets Volume III: Vienna or Death', 1, 2015, 5 from dual union
Select 2150, 1, 'Age of Mythology: The Boardgame', 6, 2015, 2 from dual union
Select 2151, 1, 'Age of Mythology: The Boardgame – 5-6 Player Expansion', 5, 2015, 4 from dual union
Select 2152, 1, 'Age of Napoleon', 8, 2015, 8 from dual union
Select 2153, 1, 'Age of Nobles', 0, 2016, 8 from dual union
Select 2154, 1, 'Age of Piracy', 3, 2015, 6 from dual union
Select 2155, 1, 'Age of Primes', 8, 2017, 5 from dual union
Select 2156, 1, 'Age of Ravens', 10, 2017, 2 from dual union
Select 2157, 1, 'Age of Ravens', 6, 2016, 2 from dual union
Select 2158, 1, 'Age of Reason', 0, 2017, 3 from dual union
Select 2159, 1, 'Age of Renaissance', 3, 2017, 10 from dual union
Select 2160, 1, 'Age of Revive', 10, 2017, 5 from dual union
Select 2161, 1, 'Age of Rifles', 0, 2015, 9 from dual union
Select 2162, 1, 'Age of Sail', 4, 2015, 4 from dual union
Select 2163, 1, 'Age of Scheme: Routes to Riches', 7, 2017, 5 from dual union
Select 2164, 1, 'Age of Soccer', 10, 2015, 6 from dual union
Select 2165, 1, 'Age of Sovereigns', 7, 2016, 3 from dual union
Select 2166, 1, 'Age of Space', 7, 2015, 3 from dual union
Select 2167, 1, 'Age of Steam', 5, 2017, 2 from dual union
Select 2168, 1, 'Age of Steam Expansion #1: England & Ireland', 7, 2017, 7 from dual union
Select 2169, 1, 'Age of Steam Expansion #2: Western US and Germany', 6, 2017, 8 from dual union
Select 2170, 1, 'Age of Steam Expansion #3: Scandinavia and Korea', 7, 2017, 8 from dual union
Select 2171, 1, 'Age of Steam Expansion #4: France and Italy', 1, 2017, 4 from dual union
Select 2172, 1, 'Age of Steam Expansion: 1830s Pennsylvania / Northern California', 5, 2016, 6 from dual union
Select 2173, 1, 'Age of Steam Expansion: 1867 Georgia Reconstruction, South Carolina & Oklahoma Land Rush', 1, 2017, 5 from dual union
Select 2174, 1, 'Age of Steam Expansion: 1890 Berlin', 10, 2017, 8 from dual union
Select 2175, 1, 'Age of Steam Expansion: 18Steam', 7, 2016, 3 from dual union
Select 2176, 1, 'Age of Steam Expansion: 20,000 Rails Under the Sea', 7, 2017, 8 from dual union
Select 2177, 1, 'Age of Steam Expansion: African Diamond Mines & Taiwan Cube Factories', 8, 2015, 4 from dual union
Select 2178, 1, 'Age of Steam Expansion: Alabama Railways, Antebellum Louisiana & Four Corners', 5, 2015, 5 from dual union
Select 2179, 1, 'Age of Steam Expansion: Alpha Centauri – A New Hope', 5, 2016, 7 from dual union
Select 2180, 1, 'Age of Steam Expansion: Amazon Rainforest & Sahara Desert', 9, 2016, 8 from dual union
Select 2181, 1, 'Age of Steam Expansion: America / Europe', 2, 2017, 4 from dual union
Select 2182, 1, 'Age of Steam Expansion: Argentina / The French Riviera', 8, 2017, 8 from dual union
Select 2183, 1, 'Age of Steam Expansion: Atlantis & Trisland', 9, 2015, 5 from dual union
Select 2184, 1, 'Age of Steam Expansion: Australia & Tasmania', 0, 2017, 2 from dual union
Select 2185, 1, 'Age of Steam Expansion: Austria & India', 1, 2017, 5 from dual union
Select 2186, 1, 'Age of Steam Expansion: Austria, Switzerland & The Netherlands', 8, 2016, 8 from dual union
Select 2187, 1, 'Age of Steam Expansion: Barbados / St. Lucia', 8, 2017, 7 from dual union
Select 2188, 1, 'Age of Steam Expansion: Bay Area', 3, 2016, 4 from dual union
Select 2189, 1, 'Age of Steam Expansion: Beer & Pretzels', 10, 2016, 8 from dual union
Select 2190, 1, 'Age of Steam Expansion: Belgium', 7, 2017, 7 from dual union
Select 2191, 1, 'Age of Steam Expansion: Brazil / Chicago', 3, 2015, 5 from dual union
Select 2192, 1, 'Age of Steam Expansion: California Gold Rush & Underground Railroad', 4, 2015, 7 from dual union
Select 2193, 1, 'Age of Steam Expansion: Chesapeake & Ohio', 0, 2016, 10 from dual union
Select 2194, 1, 'Age of Steam Expansion: Cheshire', 5, 2016, 4 from dual union
Select 2195, 1, 'Age of Steam Expansion: Chile, Egypt and CCCP', 5, 2015, 4 from dual union
Select 2196, 1, 'Age of Steam Expansion: China / South America', 1, 2015, 3 from dual union
Select 2197, 1, 'Age of Steam Expansion: Colony', 0, 2016, 9 from dual union
Select 2198, 1, 'Age of Steam Expansion: Connecticut Corridor', 6, 2015, 1 from dual union
Select 2199, 1, 'Age of Steam Expansion: Corsica', 10, 2015, 10 from dual union
Select 2200, 1, 'Age of Steam Expansion: Cuba & Sicily', 9, 2016, 7 from dual union
Select 2201, 1, 'Age of Steam Expansion: Denmark', 4, 2016, 1 from dual union
Select 2202, 1, 'Age of Steam Expansion: Disco Inferno / Soul Train', 9, 2017, 9 from dual union
Select 2203, 1, 'Age of Steam Expansion: Eastern US & Canada', 7, 2015, 9 from dual union
Select 2204, 1, 'Age of Steam Expansion: Finland & Portugal', 9, 2017, 4 from dual union
Select 2205, 1, 'Age of Steam Expansion: Frontline', 2, 2015, 5 from dual union
Select 2206, 1, 'Age of Steam Expansion: Germany & France', 0, 2015, 4 from dual union
Select 2207, 1, 'Age of Steam Expansion: Great Britain', 7, 2015, 3 from dual union
Select 2208, 1, 'Age of Steam Expansion: Greece and Cyclades', 1, 2015, 6 from dual union
Select 2209, 1, 'Age of Steam Expansion: Holland / Madagascar', 1, 2015, 9 from dual union
Select 2210, 1, 'Age of Steam Expansion: Hong Kong', 5, 2017, 2 from dual union
Select 2211, 1, 'Age of Steam Expansion: Hungary', 0, 2017, 3 from dual union
Select 2212, 1, 'Age of Steam Expansion: Ice Pack & Solar System', 1, 2016, 6 from dual union
Select 2213, 1, 'Age of Steam Expansion: Iceland', 10, 2017, 6 from dual union
Select 2214, 1, 'Age of Steam Expansion: India', 1, 2016, 3 from dual union
Select 2215, 1, 'Age of Steam Expansion: Jamaica / Puerto Rico', 8, 2016, 9 from dual union
Select 2216, 1, 'Age of Steam Expansion: Japan', 0, 2016, 3 from dual union
Select 2217, 1, 'Age of Steam Expansion: Las Vegas and Korea (N&S)', 1, 2017, 5 from dual union
Select 2218, 1, 'Age of Steam Expansion: Mars – Global Surveyor', 7, 2016, 1 from dual union
Select 2219, 1, 'Age of Steam Expansion: Mexico & China', 6, 2016, 4 from dual union
Select 2220, 1, 'Age of Steam Expansion: Mexico, Spain/Portugal', 1, 2017, 3 from dual union
Select 2221, 1, 'Age of Steam Expansion: Mississippi Steamboats / Golden Spike', 9, 2017, 7 from dual union
Select 2222, 1, 'Age of Steam Expansion: Missouri', 0, 2015, 3 from dual union
Select 2223, 1, 'Age of Steam Expansion: Mongolia', 0, 2015, 6 from dual union
Select 2224, 1, 'Age of Steam Expansion: Montréal Métro', 10, 2015, 8 from dual union
Select 2225, 1, 'Age of Steam Expansion: Moon and Berlin Wall', 1, 2015, 10 from dual union
Select 2226, 1, 'Age of Steam Expansion: New England', 9, 2015, 8 from dual union
Select 2227, 1, 'Age of Steam Expansion: New Zealand', 4, 2015, 3 from dual union
Select 2228, 1, 'Age of Steam Expansion: North Eastern USA / South Africa', 6, 2017, 10 from dual union
Select 2229, 1, 'Age of Steam Expansion: Northern England', 3, 2015, 2 from dual union
Select 2230, 1, 'Age of Steam Expansion: Old Europe / 51st State', 7, 2015, 10 from dual union
Select 2231, 1, 'Age of Steam Expansion: Orient Express & Disoriented Express', 1, 2016, 3 from dual union
Select 2232, 1, 'Age of Steam Expansion: Outer Space & Reversteam', 3, 2017, 6 from dual union
Select 2233, 1, 'Age of Steam Expansion: Paris & Moscow', 3, 2015, 8 from dual union
Select 2234, 1, 'Age of Steam Expansion: Poland', 4, 2015, 9 from dual union
Select 2235, 1, 'Age of Steam Expansion: Portugal', 7, 2015, 9 from dual union
Select 2236, 1, 'Age of Steam Expansion: Puerto Rico', 3, 2015, 3 from dual union
Select 2237, 1, 'Age of Steam Expansion: Reunion Island', 2, 2015, 5 from dual union
Select 2238, 1, 'Age of Steam Expansion: Robot & Hexpansion', 0, 2017, 6 from dual union
Select 2239, 1, 'Age of Steam Expansion: Scotland', 5, 2016, 3 from dual union
Select 2240, 1, 'Age of Steam Expansion: Secret Blueprints of Steam Plans 1 & 2', 8, 2017, 6 from dual union
Select 2241, 1, 'Age of Steam Expansion: Sharing', 10, 2017, 7 from dual union
Select 2242, 1, 'Age of Steam Expansion: Siberia', 7, 2016, 4 from dual union
Select 2243, 1, 'Age of Steam Expansion: Slovakia', 9, 2017, 9 from dual union
Select 2244, 1, 'Age of Steam Expansion: South America / South Africa', 6, 2017, 4 from dual union
Select 2245, 1, 'Age of Steam Expansion: South East Australia', 4, 2017, 9 from dual union
Select 2246, 1, 'Age of Steam Expansion: Spain', 0, 2015, 10 from dual union
Select 2247, 1, 'Age of Steam Expansion: Special 2008 Spiel Limited Edition – Essen Spiel & Secret Blueprints of Steam Plan #3', 5, 2016, 5 from dual union
Select 2248, 1, 'Age of Steam Expansion: Sun / London', 7, 2017, 6 from dual union
Select 2249, 1, 'Age of Steam Expansion: Switzerland', 5, 2015, 1 from dual union
Select 2250, 1, 'Age of Steam Expansion: Texas, Oklahoma & New Mexico', 6, 2015, 9 from dual union
Select 2251, 1, 'Age of Steam Expansion: The Alps', 8, 2015, 4 from dual union
Select 2252, 1, 'Age of Steam Expansion: The Giant Maps', 9, 2016, 3 from dual union
Select 2253, 1, 'Age of Steam Expansion: The Netherlands', 0, 2016, 4 from dual union
Select 2254, 1, 'Age of Steam Expansion: The Railroad Switches', 10, 2017, 8 from dual union
Select 2255, 1, 'Age of Steam Expansion: The Zombie Apocalypse', 8, 2016, 6 from dual union
Select 2256, 1, 'Age of Steam Expansion: Tibet and Cyprus', 8, 2015, 3 from dual union
Select 2257, 1, 'Age of Steam Expansion: Time Traveler', 4, 2015, 8 from dual union
Select 2258, 1, 'Age of Steam Expansion: Ukraine', 4, 2017, 4 from dual union
Select 2259, 1, 'Age of Steam Expansion: Umbria', 6, 2016, 2 from dual union
Select 2260, 1, 'Age of Steam Expansion: Vermont, New Hampshire & Central New England', 9, 2017, 10 from dual union
Select 2261, 1, 'Age of Steam Expansion: Wales', 4, 2015, 9 from dual union
Select 2262, 1, 'Age of Steam Expansion: War in Iraq & New York Subway', 6, 2016, 9 from dual union
Select 2263, 1, 'Age of Steam Expansion: Washington DC and The Berlin Wall', 4, 2016, 1 from dual union
Select 2264, 1, 'Age of Steam Expansions: Southern US & Pittsburgh', 5, 2016, 6 from dual union
Select 2265, 1, 'Age of Steam Express', 10, 2017, 6 from dual union
Select 2266, 1, 'Age of Steam: Fukushima/Chernobyl', 6, 2015, 3 from dual union
Select 2267, 1, 'Age of Steam: Human Body/Synapses', 9, 2015, 5 from dual union
Select 2268, 1, 'Age of Steam: Long Island', 5, 2015, 3 from dual union
Select 2269, 1, 'Age of Steam: Southern US / Western US Expansion', 6, 2015, 2 from dual union
Select 2270, 1, 'Age of Steam: The Moon', 1, 2015, 6 from dual union
Select 2271, 1, 'Age of Summoners', 5, 2015, 3 from dual union
Select 2272, 1, 'Age of the Clankomatics', 3, 2015, 7 from dual union
Select 2273, 1, 'Age of Thieves', 0, 2016, 7 from dual union
Select 2274, 1, 'Age of Thieves: Chaos in Hadria', 9, 2016, 10 from dual union
Select 2275, 1, 'Age of Towers', 3, 2017, 4 from dual union
Select 2276, 1, 'Age of Tyrants', 1, 2016, 4 from dual union
Select 2277, 1, 'Age of War', 5, 2016, 6 from dual union
Select 2278, 1, 'Age of War card game', 4, 2016, 5 from dual union
Select 2279, 1, 'AGE: The Amazing Goal Era', 9, 2015, 2 from dual union
Select 2280, 1, 'Agea', 10, 2016, 9 from dual union
Select 2281, 1, 'The Agency', 5, 2016, 6 from dual union
Select 2282, 1, 'The Agency', 4, 2016, 6 from dual union
Select 2283, 1, 'The Agenda Game', 8, 2017, 1 from dual union
Select 2284, 1, 'Agent Bones In: Mission Bonehead', 7, 2017, 2 from dual union
Select 2285, 1, 'Agent Decker', 3, 2015, 5 from dual union
Select 2286, 1, 'Agent Doppelnull', 0, 2016, 6 from dual union
Select 2287, 1, 'Agent Hunter', 9, 2017, 5 from dual union
Select 2288, 1, 'Agent of Change', 1, 2017, 1 from dual union
Select 2289, 1, 'Agent Saboteur', 9, 2015, 4 from dual union
Select 2290, 1, 'Agente Secreto', 7, 2015, 5 from dual union
Select 2291, 1, 'Das Agenten-Comptoir', 6, 2017, 2 from dual union
Select 2292, 1, 'Agentenjagd', 4, 2016, 4 from dual union
Select 2293, 1, 'Agentenjagd', 8, 2015, 2 from dual union
Select 2294, 1, 'Agentes do Destino', 2, 2015, 5 from dual union
Select 2295, 1, 'Agentin salaiset paperit', 8, 2016, 8 from dual union
Select 2296, 1, 'The Agents', 3, 2015, 3 from dual union
Select 2297, 1, 'Agents & Operatives', 8, 2016, 4 from dual union
Select 2298, 1, 'Agents of SECTOR', 1, 2016, 6 from dual union
Select 2299, 1, 'Agents of SMERSH', 1, 2015, 2 from dual union
Select 2300, 1, 'Agents of SMERSH:  Secret Mission Cards', 7, 2017, 5 from dual union
Select 2301, 1, 'Agents of SMERSH: All the Kickstarter Promos', 9, 2015, 5 from dual union
Select 2302, 1, 'Agents of SMERSH: Kickstarter Extras', 7, 2016, 10 from dual union
Select 2303, 1, 'Agents of SMERSH: Showdown!', 9, 2015, 9 from dual union
Select 2304, 1, 'Agents of SMERSH: Swagmans Hope', 3, 2017, 1 from dual union
Select 2305, 1, 'Agents of SMERSH: Swagmans Hope Kickstarter Extras', 7, 2016, 10 from dual union
Select 2306, 1, 'Agents of SMERSH: The Directors Watchful Eye Promo Card', 4, 2015, 10 from dual union
Select 2307, 1, 'Agents Secrets', 0, 2017, 1 from dual union
Select 2308, 1, 'The Agents: Black Ops', 10, 2017, 8 from dual union
Select 2309, 1, 'The Agents: Bounties', 6, 2015, 7 from dual union
Select 2310, 1, 'The Agents: Break the Rules', 10, 2015, 8 from dual union
Select 2311, 1, 'The Agents: Events', 5, 2017, 6 from dual union
Select 2312, 1, 'The Agents: MaVericks', 6, 2016, 5 from dual union
Select 2313, 1, 'The Agents: Mission: Critical', 8, 2017, 9 from dual union
Select 2314, 1, 'The Agents: Sites', 1, 2015, 2 from dual union
Select 2315, 1, 'The Agents: The Secret Agents', 2, 2016, 10 from dual union
Select 2316, 1, 'The Agents: The Special Agents', 0, 2017, 5 from dual union
Select 2317, 1, 'The Agents: The Spoof Agents', 4, 2017, 9 from dual union
Select 2318, 1, 'The Agents: The Commanders', 4, 2015, 6 from dual union
Select 2319, 1, 'The Agents: The Partners', 2, 2017, 10 from dual union
Select 2320, 1, 'Ager Sanguinis', 8, 2016, 4 from dual union
Select 2321, 1, 'AGES', 8, 2015, 9 from dual union
Select 2322, 1, 'Aggersborg', 8, 2017, 10 from dual union
Select 2323, 1, 'Aggieopoly', 1, 2016, 9 from dual union
Select 2324, 1, 'Agglomeration', 4, 2015, 3 from dual union
Select 2325, 1, 'Aggravating Rates', 8, 2015, 7 from dual union
Select 2326, 1, 'Aggravation', 8, 2015, 2 from dual union
Select 2327, 1, 'Aggressivität Partnerschaft-Spielserie', 4, 2015, 4 from dual union
Select 2328, 1, 'AgilUp', 6, 2015, 5 from dual union
Select 2329, 1, 'Agilidade', 1, 2015, 9 from dual union
Select 2330, 1, 'Agility', 2, 2016, 6 from dual union
Select 2331, 1, 'Agincourt', 6, 2015, 3 from dual union
Select 2332, 1, 'Agincourt', 4, 2017, 6 from dual union
Select 2333, 1, 'Agiotare Pretium', 6, 2017, 1 from dual union
Select 2334, 1, 'Aglagla', 7, 2015, 3 from dual union
Select 2335, 1, 'Agoniste', 4, 2017, 9 from dual union
Select 2336, 1, 'Agonizn', 0, 2015, 7 from dual union
Select 2337, 1, 'Agony', 2, 2015, 10 from dual union
Select 2338, 1, 'Agony Aunt', 10, 2016, 6 from dual union
Select 2339, 1, 'Agora', 10, 2016, 3 from dual union
Select 2340, 1, 'Agora', 1, 2016, 1 from dual union
Select 2341, 1, 'Agora Barcelona', 9, 2017, 6 from dual union
Select 2342, 1, 'Agoraphobia', 4, 2017, 4 from dual union
Select 2343, 1, 'Agordat 1893', 4, 2015, 9 from dual union
Select 2344, 1, 'Agrarisch aan- & verkoopspel', 4, 2000, 10 from dual union
Select 2345, 1, 'Agreed by Consensus: The Tournament Game of Quotes', 2, 2004, 10 from dual union
Select 2346, 1, 'Agri-Cup: The John Deere Farming Game', 3, 2016, 8 from dual union
Select 2347, 1, 'Agri-hazard', 7, 2015, 10 from dual union
Select 2348, 1, 'Agri-Venture', 9, 2017, 6 from dual union
Select 2349, 1, 'Agribizz', 8, 2017, 3 from dual union
Select 2350, 1, 'Agricola', 4, 2017, 3 from dual union
Select 2351, 1, 'Agricola', 6, 2017, 2 from dual union
Select 2352, 1, 'Agricola (revised edition)', 2, 2016, 3 from dual union
Select 2353, 1, 'Agricola CZ-Deck', 4, 2017, 9 from dual union
Select 2354, 1, 'Agricola Ereigniskarten', 9, 2017, 7 from dual union
Select 2355, 1, 'Agricola Express', 6, 2016, 2 from dual union
Select 2356, 1, 'Agricola Game Expansion: Blue', 5, 2017, 3 from dual union
Select 2357, 1, 'Agricola Game Expansion: Green', 5, 2017, 6 from dual union
Select 2358, 1, 'Agricola Game Expansion: Purple', 6, 2017, 8 from dual union
Select 2359, 1, 'Agricola Game Expansion: Red', 1, 2017, 6 from dual union
Select 2360, 1, 'Agricola Game Expansion: Tan', 5, 2017, 3 from dual union
Select 2361, 1, 'Agricola Game Expansion: Yellow', 7, 2017, 3 from dual union
Select 2362, 1, 'Agricola L-Deck', 6, 2016, 5 from dual union
Select 2363, 1, 'Agricola X-Deck', 1, 2017, 7 from dual union
Select 2364, 1, 'Agricola Z-Deck', 3, 2016, 10 from dual union
Select 2365, 1, 'Agricola, Master of Britain', 9, 2016, 6 from dual union
Select 2366, 1, 'Agricola: All Creatures Big and Small', 2, 2016, 5 from dual union
Select 2367, 1, 'Agricola: All Creatures Big and Small – Even More Buildings Big and Small', 4, 2016, 4 from dual union
Select 2368, 1, 'Agricola: All Creatures Big and Small – More Buildings Big and Small', 3, 2017, 5 from dual union
Select 2369, 1, 'Agricola: Belgium Deck', 5, 2015, 5 from dual union
Select 2370, 1, 'Agricola: Bielefeld Deck', 1, 2016, 4 from dual union
Select 2371, 1, 'Agricola: Biogas Plant Promo Card', 8, 2016, 7 from dual union
Select 2372, 1, 'Agricola: Brakelhühner Promo Card', 0, 2016, 10 from dual union
Select 2373, 1, 'Agricola: Chłopi i ich zwierzyniec – Jeszcze więcej budynków do zwierzyńca', 9, 2016, 2 from dual union
Select 2374, 1, 'Agricola: De Lage Landen', 9, 2016, 4 from dual union
Select 2375, 1, 'Agricola: Expansion for 5 and 6 Players', 1, 2016, 5 from dual union
Select 2376, 1, 'Agricola: Family Edition', 0, 2016, 7 from dual union
Select 2377, 1, 'Agricola: Farmers of the Moor', 9, 2017, 4 from dual union
Select 2378, 1, 'Agricola: France Deck', 10, 2015, 6 from dual union
Select 2379, 1, 'Agricola: Fruit Tree Promo Card', 3, 2016, 6 from dual union
Select 2380, 1, 'Agricola: Gamers Deck', 0, 2016, 9 from dual union
Select 2381, 1, 'Agricola: Glon­na­cker', 9, 2015, 8 from dual union
Select 2382, 1, 'Agricola: NL-Deck', 9, 2016, 6 from dual union
Select 2383, 1, 'Agricola: Pi-Deck', 2, 2015, 4 from dual union
Select 2384, 1, 'Agricola: The Goodies Expansion', 0, 2017, 3 from dual union
Select 2385, 1, 'Agricola: The Legen*dairy Forest Deck – Chuck the Wood Chuck', 2, 2016, 1 from dual union
Select 2386, 1, 'Agricola: The Legen*dairy Forest Deck – Peruvian Inquisition', 5, 2017, 5 from dual union
Select 2387, 1, 'Agricola: The Legen*dairy Forest-Deck', 6, 2016, 3 from dual union
Select 2388, 1, 'Agricola: Through the Seasons', 9, 2016, 9 from dual union
Select 2389, 1, 'Agricola: Wood Scrounger Promo Card', 5, 2016, 5 from dual union
Select 2390, 1, 'Agricola: World Championship Deck – 2011', 5, 2017, 6 from dual union
Select 2391, 1, 'Agricola: Ö-Deck', 2, 2017, 5 from dual union
Select 2392, 1, 'Agro Invest', 2, 2015, 5 from dual union
Select 2393, 1, 'AGUA', 10, 2017, 5 from dual union
Select 2394, 1, 'Aguila Roja', 8, 2016, 7 from dual union
Select 2395, 1, 'Aguila Roja Junior', 6, 2016, 10 from dual union
Select 2396, 1, 'Aguirre', 0, 2017, 3 from dual union
Select 2397, 1, 'Agvato', 7, 2016, 2 from dual union
Select 2398, 1, 'Agytorna: Játék az IQ-val', 8, 2016, 2 from dual union
Select 2399, 1, 'Ah-Harr', 2, 2015, 9 from dual union
Select 2400, 1, 'Ah-Sitake HA!', 9, 2015, 2 from dual union
Select 2401, 1, 'Aha', 3, 2016, 9 from dual union
Select 2402, 1, 'AHA!', 5, 2015, 10 from dual union
Select 2403, 1, 'Ahead in the Clouds', 1, 2016, 5 from dual union
Select 2404, 1, 'AHHBANG!', 7, 2017, 9 from dual union
Select 2405, 1, 'Ahoi Saale abwärts!', 1, 2015, 6 from dual union
Select 2406, 1, 'Ahoi!', 2, 2017, 4 from dual union
Select 2407, 1, 'The Ahold Family Game', 2, 2017, 4 from dual union
Select 2408, 1, '¡Ahora Caigo!', 7, 2016, 1 from dual union
Select 2409, 1, 'Ahoy', 0, 2016, 3 from dual union
Select 2410, 1, 'Ahoy Treasures!', 6, 2015, 2 from dual union
Select 2411, 1, 'Ahoy, Matey!', 9, 2017, 8 from dual union
Select 2412, 1, 'Ahoy, Me Hearties', 4, 2017, 6 from dual union
Select 2413, 1, 'Ahriman', 8, 2016, 9 from dual union
Select 2414, 1, 'Ai-Jo Monogatari', 7, 2016, 10 from dual union
Select 2415, 1, 'Ai-Nori', 1, 2017, 6 from dual union
Select 2416, 1, 'Ai-Nori: Card Game', 4, 2016, 10 from dual union
Select 2417, 1, 'AiaGaia', 3, 2016, 8 from dual union
Select 2418, 1, 'Aidler-14', 10, 2015, 9 from dual union
Select 2419, 1, 'Aidu-Boshin sensou 会津戊辰戦争', 3, 2017, 2 from dual union
Select 2420, 1, 'Les Aigles', 4, 2017, 3 from dual union
Select 2421, 1, 'Les Aigles: supplément numéro 1', 8, 2017, 8 from dual union
Select 2422, 1, 'LAiglon ou le Lys', 3, 2017, 1 from dual union
Select 2423, 1, 'Aion: A Game Of Serpents', 3, 2016, 3 from dual union
Select 2424, 1, 'Air & Armor', 2, 2015, 7 from dual union
Select 2425, 1, 'Air Aces', 1, 2016, 1 from dual union
Select 2426, 1, 'Air Alliance', 7, 2015, 10 from dual union
Select 2427, 1, 'Air and Shadow', 6, 2017, 6 from dual union
Select 2428, 1, 'Air Assault On Crete/Invasion of Malta: 1942', 7, 2017, 5 from dual union
Select 2429, 1, 'Air Attack', 5, 2004, 9 from dual union
Select 2430, 1, 'Air Baron', 10, 2015, 5 from dual union
Select 2431, 1, 'Air Bridge to Victory', 2, 2016, 2 from dual union
Select 2432, 1, 'Air Cav', 0, 2017, 2 from dual union
Select 2433, 1, 'Air Challenge', 10, 2016, 5 from dual union
Select 2434, 1, 'Air Charter', 6, 2015, 9 from dual union
Select 2435, 1, 'Air Cobra', 5, 2015, 10 from dual union
Select 2436, 1, 'Air Combat', 6, 2017, 7 from dual union
Select 2437, 1, 'Air Combat Maneuver', 4, 2016, 8 from dual union
Select 2438, 1, 'Air Combat Trainer', 1, 2016, 10 from dual union
Select 2439, 1, 'Air Combat: Card Game', 7, 2015, 8 from dual union
Select 2440, 1, 'Air Desa', 8, 2015, 1 from dual union
Select 2441, 1, 'Air Duel: Danger Zone', 9, 2017, 1 from dual union
Select 2442, 1, 'Air Empire', 4, 2015, 9 from dual union
Select 2443, 1, 'Air Fare', 4, 2015, 2 from dual union
Select 2444, 1, 'Air Fleet: Knights of the Sky', 1, 2017, 10 from dual union
Select 2445, 1, 'Air Force', 6, 2017, 2 from dual union
Select 2446, 1, 'Air Force Dauntless Expansion Kit', 3, 2016, 1 from dual union
Select 2447, 1, 'Air Force Game', 9, 2016, 5 from dual union
Select 2448, 1, 'Air Hoops', 10, 2017, 6 from dual union
Select 2449, 1, 'Air King', 3, 2016, 5 from dual union
Select 2450, 1, 'Air King Game', 6, 2016, 9 from dual union
Select 2451, 1, 'Air Power', 2, 2015, 6 from dual union
Select 2452, 1, 'Air Race', 10, 2015, 10 from dual union
Select 2453, 1, 'Air Race', 8, 2003, 2 from dual union
Select 2454, 1, 'Air Race', 1, 2017, 5 from dual union
Select 2455, 1, 'The Air Race Game', 5, 2017, 10 from dual union
Select 2456, 1, 'Air Raid Pearl Harbor', 4, 2016, 10 from dual union
Select 2457, 1, 'Air Raid Warden', 8, 2017, 3 from dual union
Select 2458, 1, 'The Air Ship Game', 6, 2016, 4 from dual union
Select 2459, 1, 'Air Show', 5, 2015, 2 from dual union
Select 2460, 1, 'Air Show: Circus of the Skies', 3, 2016, 6 from dual union
Select 2461, 1, 'Air Soccer', 0, 2005, 9 from dual union
Select 2462, 1, 'Air Strike', 4, 2015, 1 from dual union
Select 2463, 1, 'Air Strike!', 9, 2016, 7 from dual union
Select 2464, 1, 'Air Superiority', 1, 2015, 2 from dual union
Select 2465, 1, 'Air Tac', 10, 2016, 1 from dual union
Select 2466, 1, 'Air to Air', 4, 2015, 8 from dual union
Select 2467, 1, 'Air Traffic Control', 0, 2017, 8 from dual union
Select 2468, 1, 'Air Traffic Controller', 1, 2015, 3 from dual union
Select 2469, 1, 'Air Traffic Madness', 4, 2015, 7 from dual union
Select 2470, 1, 'Air Trafic', 6, 2017, 2 from dual union
Select 2471, 1, 'Air Trix', 6, 2015, 4 from dual union
Select 2472, 1, 'Air War Europe', 7, 2017, 3 from dual union
Select 2473, 1, 'Air War Games', 8, 2015, 4 from dual union
Select 2474, 1, 'Air War Update Kit', 1, 2016, 8 from dual union
Select 2475, 1, 'Air War Vietnam', 10, 2015, 4 from dual union
Select 2476, 1, 'Air War: Modern Tactical Air Combat', 6, 2017, 6 from dual union
Select 2477, 1, 'Air Wars', 10, 2017, 9 from dual union
Select 2478, 1, 'Air-Attack', 3, 2017, 10 from dual union
Select 2479, 1, 'The Air-Eaters Strike Back!', 10, 2016, 1 from dual union
Select 2480, 1, 'Air-musement Park', 4, 2016, 10 from dual union
Select 2481, 1, 'Air-Rallye', 1, 2015, 4 from dual union
Select 2482, 1, 'Airborne Commander', 2, 2015, 1 from dual union
Select 2483, 1, 'Airborne In Your Pocket', 4, 2016, 2 from dual union
Select 2484, 1, 'Airborne In Your Pocket: Currahee!', 8, 2017, 6 from dual union
Select 2485, 1, 'Airborne In Your Pocket: Free Trial Version', 1, 2016, 4 from dual union
Select 2486, 1, 'Airborne In Your Pocket: Hooah!', 8, 2017, 2 from dual union
Select 2487, 1, 'Airborne Stand!', 7, 2016, 4 from dual union
Select 2488, 1, 'Airborne!', 3, 2015, 3 from dual union
Select 2489, 1, 'Airborne!', 5, 2015, 7 from dual union
Select 2490, 1, 'Aircraft Carrier', 10, 2016, 1 from dual union
Select 2491, 1, 'Aircraft Recognition Cards', 7, 2015, 2 from dual union
Select 2492, 1, 'Airderby', 1, 2016, 8 from dual union
Select 2493, 1, 'AireCards', 0, 2016, 10 from dual union
Select 2494, 1, 'Airfix Battles', 3, 2016, 7 from dual union
Select 2495, 1, 'Airfix Battles: Bonus Force Deck 1', 10, 2016, 10 from dual union
Select 2496, 1, 'AirFrame', 2, 2015, 8 from dual union
Select 2497, 1, 'Airhead', 5, 2015, 9 from dual union
Select 2498, 1, 'AirLand Battle: Corps Operational Command in Europe', 8, 2016, 10 from dual union
Select 2499, 1, 'Airline', 9, 2015, 5 from dual union
Select 2500, 1, 'Airline', 7, 2016, 1 from dual union
Select 2501, 1, 'Airline the Card Game', 7, 2015, 1 from dual union
Select 2502, 1, 'Airline: The Big Business game', 8, 2016, 6 from dual union
Select 2503, 1, 'Airlines', 3, 2016, 5 from dual union
Select 2504, 1, 'Airlines', 6, 2015, 7 from dual union
Select 2505, 1, 'Airlines', 9, 2016, 6 from dual union
Select 2506, 1, 'Airlines Europe', 7, 2016, 9 from dual union
Select 2507, 1, 'Airlines Europe: Flight Ban', 4, 2015, 6 from dual union
Select 2508, 1, 'Airlines Europe: New Bonus Connections', 5, 2017, 1 from dual union
Select 2509, 1, 'Airlines Europe: The Presidents', 1, 2017, 9 from dual union
Select 2510, 1, 'Airlines: United States Set 2', 3, 2017, 9 from dual union
Select 2511, 1, 'Airlock', 8, 2015, 9 from dual union
Select 2512, 1, 'Airplay', 3, 2016, 6 from dual union
Select 2513, 1, 'Airpoly', 3, 2017, 10 from dual union
Select 2514, 1, 'Airport', 3, 2015, 3 from dual union
Select 2515, 1, 'Airport', 3, 2016, 7 from dual union
Select 2516, 1, 'Airport', 5, 2017, 8 from dual union
Select 2517, 1, 'Airport', 5, 2015, 1 from dual union
Select 2518, 1, 'Airport', 4, 2016, 5 from dual union
Select 2519, 1, 'Airport', 9, 2016, 6 from dual union
Select 2520, 1, 'Airport Flying Game', 7, 2017, 10 from dual union
Select 2521, 1, 'Airport Football', 0, 2017, 3 from dual union
Select 2522, 1, 'Airship Adventures', 9, 2015, 8 from dual union
Select 2523, 1, 'Airship Assassin', 7, 2017, 4 from dual union
Select 2524, 1, 'Airships', 0, 2016, 4 from dual union
Select 2525, 1, 'Airships of Oberon', 0, 2016, 2 from dual union
Select 2526, 1, 'Airships vs Aliens', 3, 2015, 1 from dual union
Select 2527, 1, 'Airwar Korea', 0, 2016, 4 from dual union
Select 2528, 1, 'AirWar: 1917', 7, 2015, 8 from dual union
Select 2529, 1, 'AirWar: 1918', 9, 2017, 4 from dual union
Select 2530, 1, 'AirWar: C21', 10, 2016, 9 from dual union
Select 2531, 1, 'AirWar: C21 (2nd Edition)', 9, 2015, 9 from dual union
Select 2532, 1, 'AirWar: C21 bomber annex', 5, 2015, 6 from dual union
Select 2533, 1, 'AirWar: C21 Data Annex', 5, 2016, 2 from dual union
Select 2534, 1, 'AirWar: C21 Lite', 2, 2015, 3 from dual union
Select 2535, 1, 'AirWar: C21 Max Edition', 10, 2015, 8 from dual union
Select 2536, 1, 'AirWar: Pacific!', 9, 2017, 5 from dual union
Select 2537, 1, 'AirWar: Pacific! 1942 Expansion Deck', 0, 2015, 7 from dual union
Select 2538, 1, 'Airways', 4, 2017, 9 from dual union
Select 2539, 1, 'Aisopos', 3, 2017, 4 from dual union
Select 2540, 1, 'Aita Aidata', 1, 2017, 8 from dual union
Select 2541, 1, 'Aiutino', 1, 2017, 6 from dual union
Select 2542, 1, 'Ajateenija', 4, 2015, 10 from dual union
Select 2543, 1, 'Ajax Nieuw Magnetisch Voetbalspel', 6, 2015, 10 from dual union
Select 2544, 1, 'Ajax: The Game', 10, 2016, 8 from dual union
Select 2545, 1, 'Ajedrez Maya', 7, 2015, 8 from dual union
Select 2546, 1, 'Ajo y Agua', 2, 2015, 1 from dual union
Select 2547, 1, 'AJR Battle', 4, 2016, 9 from dual union
Select 2548, 1, 'AJT Basketball', 2, 2016, 10 from dual union
Select 2549, 1, 'AK47 Republic', 4, 2017, 9 from dual union
Select 2550, 1, 'AK47 Supplement', 2, 2017, 8 from dual union
Select 2551, 1, 'Aka Fuji', 9, 2016, 2 from dual union
Select 2552, 1, 'Akaba', 3, 2017, 9 from dual union
Select 2553, 1, 'Akatsuki no Tetsudo', 5, 2017, 1 from dual union
Select 2554, 1, 'Akce X', 2, 2016, 6 from dual union
Select 2555, 1, 'Akebono', 1, 2016, 10 from dual union
Select 2556, 1, 'Akhefru', 2, 2016, 2 from dual union
Select 2557, 1, 'Akin', 9, 2017, 2 from dual union
Select 2558, 1, 'Akindo', 4, 2015, 5 from dual union
Select 2559, 1, 'Akita War 1868', 9, 2015, 5 from dual union
Select 2560, 1, 'Akkon: Machtkampf der Tempelritter', 5, 2016, 10 from dual union
Select 2561, 1, 'Akron', 9, 2017, 4 from dual union
Select 2562, 1, 'Akropolis', 9, 2015, 1 from dual union
Select 2563, 1, 'Akropolis', 8, 2015, 6 from dual union
Select 2564, 1, 'Akrotiri', 0, 2015, 2 from dual union
Select 2565, 1, 'Aktenzeichen XY', 9, 2017, 4 from dual union
Select 2566, 1, 'Aktiemillionær', 6, 2015, 2 from dual union
Select 2567, 1, 'Aktienrausch', 10, 2016, 1 from dual union
Select 2568, 1, 'Der Aktionär', 7, 2016, 9 from dual union
Select 2569, 1, 'AkTYwuj Warszawę', 7, 2015, 6 from dual union
Select 2570, 1, 'Aku Ankka', 1, 2017, 8 from dual union
Select 2571, 1, 'Aku Ankka 60 vuotta Juhlapeli', 4, 2017, 7 from dual union
Select 2572, 1, 'Akua', 7, 2016, 9 from dual union
Select 2573, 1, 'Akumulate', 6, 2017, 5 from dual union
Select 2574, 1, 'Akvateka 3+1', 6, 2015, 3 from dual union
Select 2575, 1, 'Akzente', 5, 2016, 5 from dual union
Select 2576, 1, 'Al Aflaj 1245', 2, 2016, 6 from dual union
Select 2577, 1, 'Al Cabohne', 3, 2017, 5 from dual union
Select 2578, 1, 'Al Centro', 1, 2016, 10 from dual union
Select 2579, 1, 'Al Djemma', 2, 2017, 2 from dual union
Select 2580, 1, 'Al Murray The Pub Landlord Ultimate Pub Quiz', 2, 2015, 6 from dual union
Select 2581, 1, 'Al Parlamento', 9, 2015, 5 from dual union
Select 2582, 1, 'Al Pha Bet', 9, 2017, 8 from dual union
Select 2583, 1, 'Al Rashid', 9, 2016, 7 from dual union
Select 2584, 1, 'Al-Andalus', 9, 2015, 3 from dual union
Select 2585, 1, 'Al-Jabar', 10, 2015, 6 from dual union
Select 2586, 1, 'AL-MICAN', 4, 2015, 10 from dual union
Select 2587, 1, 'Arriala: Canal de Garonne – Vendanges', 3, 2016, 4 from dual union
Select 2588, 1, 'ALAARM!', 5, 2016, 5 from dual union
Select 2589, 1, 'Aladdin', 2, 2015, 2 from dual union
Select 2590, 1, 'Aladdin', 9, 2016, 8 from dual union
Select 2591, 1, 'Aladdin', 2, 2017, 1 from dual union
Select 2592, 1, 'Aladdin', 3, 2017, 3 from dual union
Select 2593, 1, 'Aladdin', 10, 2016, 3 from dual union
Select 2594, 1, 'Aladdin', 0, 2015, 3 from dual union
Select 2595, 1, 'Aladdin and the Magic Lamp', 9, 2016, 9 from dual union
Select 2596, 1, 'Aladdins Dragons', 8, 2017, 3 from dual union
Select 2597, 1, 'Aladdins Dragons', 10, 2016, 3 from dual union
Select 2598, 1, 'The Aladdins Lamp Game', 6, 2016, 10 from dual union
Select 2599, 1, 'Aladdin: Jasmine Magic Ring Game', 4, 2017, 2 from dual union
Select 2600, 1, 'Aladdin: Sounds of Fun Electronic Talking Board Game', 0, 2015, 5 from dual union
Select 2601, 1, 'Aladdin: The Magic Carpet Game', 2, 2016, 3 from dual union
Select 2602, 1, 'Aladdin: The Series', 1, 2016, 1 from dual union
Select 2603, 1, 'Aladdins Erbe', 6, 2015, 7 from dual union
Select 2604, 1, 'Aladins fliegender Teppich', 0, 2015, 2 from dual union
Select 2605, 1, 'Alagar XVI', 8, 2016, 3 from dual union
Select 2606, 1, 'Alak', 9, 2015, 2 from dual union
Select 2607, 1, 'AlakaSLAM', 9, 2015, 5 from dual union
Select 2608, 1, 'Alakazam!', 1, 2015, 4 from dual union
Select 2609, 1, 'Alam Halfa', 4, 2015, 4 from dual union
Select 2610, 1, 'El Alamein', 3, 2017, 7 from dual union
Select 2611, 1, 'Alamein', 0, 2015, 7 from dual union
Select 2612, 1, 'El Alamein', 10, 2015, 2 from dual union
Select 2613, 1, 'El Alamein (Europa Demonstration Battle #1)', 10, 2015, 6 from dual union
Select 2614, 1, 'El Alamein 1942', 5, 2016, 5 from dual union
Select 2615, 1, 'El Alamein!', 10, 2015, 8 from dual union
Select 2616, 1, 'El Alamein: Rommel at Alam El Halfa', 6, 2016, 5 from dual union
Select 2617, 1, 'The Alamo', 2, 2016, 4 from dual union
Select 2618, 1, 'The Alamo', 8, 2015, 6 from dual union
Select 2619, 1, 'Alamo', 1, 2015, 1 from dual union
Select 2620, 1, 'Alamo 1836', 8, 2017, 2 from dual union
Select 2621, 1, 'The Alamo Remembered', 1, 2017, 1 from dual union
Select 2622, 1, 'Alamo to Appomattox', 5, 2017, 7 from dual union
Select 2623, 1, 'Alamo to Appomattox', 9, 2002, 4 from dual union
Select 2624, 1, 'The Alamo!', 7, 2017, 10 from dual union
Select 2625, 1, 'The Alamo: Victory in Death', 5, 2017, 4 from dual union
Select 2626, 1, 'The Alamo: Victory or Death', 8, 2016, 5 from dual union
Select 2627, 1, 'Alan Jones Formula 1 Grand Prix Racing Game', 2, 2016, 10 from dual union
Select 2628, 1, 'Alans Adventureland', 3, 2016, 8 from dual union
Select 2629, 1, 'Alapo', 7, 2017, 10 from dual union
Select 2630, 1, 'Alaric the Goth: Fall of the Western Roman Empire', 10, 2016, 10 from dual union
Select 2631, 1, 'Alarm', 10, 2016, 2 from dual union
Select 2632, 1, 'Alarm', 9, 2017, 10 from dual union
Select 2633, 1, 'Alarm für Cobra 11: Das Brettspiel', 1, 2017, 4 from dual union
Select 2634, 1, 'Alarm!', 5, 2015, 10 from dual union
Select 2635, 1, 'Alarm! U-Boot!', 2, 2017, 1 from dual union
Select 2636, 1, 'Alarme', 1, 2015, 1 from dual union
Select 2637, 1, 'Alarme', 3, 2016, 5 from dual union
Select 2638, 1, 'Alarmstufe 6', 10, 2015, 5 from dual union
Select 2639, 1, 'Alaska', 7, 2016, 2 from dual union
Select 2640, 1, 'Alaska (fan expansion to Ticket to Ride)', 5, 2015, 7 from dual union
Select 2641, 1, 'Alaska Adventure', 6, 2015, 3 from dual union
Select 2642, 1, 'Alaska Double Takes', 5, 2016, 2 from dual union
Select 2643, 1, 'Alaska Dyke Life', 7, 2015, 1 from dual union
Select 2644, 1, 'The Alaska Game of Trivia', 3, 2016, 8 from dual union
Select 2645, 1, 'Alaska Oil Game', 2, 2017, 5 from dual union
Select 2646, 1, 'Alaska Pipeline: The Energy Crisis Game', 3, 2016, 5 from dual union
Select 2647, 1, 'Alaska!', 2, 2017, 2 from dual union
Select 2648, 1, 'The Alaskan Gold Rush', 9, 2017, 10 from dual union
Select 2649, 1, 'Alba', 4, 2015, 4 from dual union
Select 2650, 1, 'Alba', 4, 2016, 3 from dual union
Select 2651, 1, 'Alba Longa', 10, 2017, 7 from dual union
Select 2652, 1, 'Alba Longa: The Sentinels', 4, 2015, 4 from dual union
Select 2653, 1, 'Albany in a Box', 5, 2017, 8 from dual union
Select 2654, 1, 'Albarrana', 5, 2016, 5 from dual union
Select 2655, 1, 'Albert', 3, 2015, 4 from dual union
Select 2656, 1, 'Het Albert Heijn Smurfen spel', 6, 2017, 5 from dual union
Select 2657, 1, 'Alberts Big League Baseball Game', 9, 2015, 6 from dual union
Select 2658, 1, 'Alberts Insomnia', 3, 2015, 2 from dual union
Select 2659, 1, 'Alberta-opoly', 10, 2015, 6 from dual union
Select 2660, 1, 'Albi Regionální kvízy Praha', 1, 2015, 9 from dual union
Select 2661, 1, 'Albion', 0, 2016, 6 from dual union
Select 2662, 1, 'Albion 20', 1, 2017, 1 from dual union
Select 2663, 1, 'Albion Triumphant Vol 1: The Peninsular Campaign', 6, 2017, 9 from dual union
Select 2664, 1, 'Albion Triumphant Vol. 2: The Hundred Days Campaign', 5, 2015, 5 from dual union
Select 2665, 1, 'Albions Legacy', 8, 2015, 2 from dual union
Select 2666, 1, 'Albions Legacy: The Errants Journey', 3, 2016, 9 from dual union
Select 2667, 1, 'Albions Legacy: The Old Kings', 0, 2016, 9 from dual union
Select 2668, 1, 'Albion: Kings & Kingdoms', 2, 2016, 1 from dual union
Select 2669, 1, 'Albion: Land of Faerie', 10, 2017, 8 from dual union
Select 2670, 1, 'Albiorix', 10, 2016, 6 from dual union
Select 2671, 1, 'Albuera & Vittoria', 5, 2016, 10 from dual union
Select 2672, 1, 'ALBUERA!', 6, 2016, 9 from dual union
Select 2673, 1, 'Albuquerque-Opoly', 10, 2015, 6 from dual union
Select 2674, 1, 'Alcatraz', 4, 2016, 8 from dual union
Select 2675, 1, 'Alcatraz Escape', 4, 2016, 4 from dual union
Select 2676, 1, 'Alcatraz: The Scapegoat', 1, 2016, 6 from dual union
Select 2677, 1, 'Alcatraz: The Scapegoat – Maximum Security', 5, 2016, 10 from dual union
Select 2678, 1, 'Alcatraz: The Scapegoat – Wrong Plan', 0, 2016, 4 from dual union
Select 2679, 1, 'Alcazar', 7, 2015, 7 from dual union
Select 2680, 1, 'Alcazar', 5, 2015, 8 from dual union
Select 2681, 1, 'Alcañiz 1809, Maria 1809, Castalla 1813', 2, 2016, 2 from dual union
Select 2682, 1, 'Alchemical Crystal Quest', 10, 2015, 10 from dual union
Select 2683, 1, 'Alchemical Crystal Quest (second edition)', 10, 2017, 6 from dual union
Select 2684, 1, 'Alchemicus', 6, 2016, 5 from dual union
Select 2685, 1, 'Alchemidus', 3, 2015, 2 from dual union
Select 2686, 1, 'Alchemist', 2, 2017, 6 from dual union
Select 2687, 1, 'Alchemist Academy', 0, 2016, 2 from dual union
Select 2688, 1, 'Alchemist Atlier', 2, 2017, 5 from dual union
Select 2689, 1, 'Alchemist of Five Elements', 8, 2017, 4 from dual union
Select 2690, 1, 'Alchemists Quest', 8, 2017, 3 from dual union
Select 2691, 1, 'Alchemist: All for One, Two for All', 5, 2015, 9 from dual union
Select 2692, 1, 'Alchemists', 0, 2016, 2 from dual union
Select 2693, 1, 'Alchemists: Publisher', 4, 2015, 6 from dual union
Select 2694, 1, 'Alchemists: Ring of Favor', 2, 2015, 10 from dual union
Select 2695, 1, 'Alchemists: The Kings Golem', 9, 2016, 4 from dual union
Select 2696, 1, 'Alchemy', 9, 2017, 5 from dual union
Select 2697, 1, 'Alchemy', 1, 2015, 1 from dual union
Select 2698, 1, 'Alchemy', 7, 2017, 5 from dual union
Select 2699, 1, 'Alchemy Bazaar', 7, 2017, 3 from dual union
Select 2700, 1, 'Alchemy Dice', 4, 2017, 7 from dual union
Select 2701, 1, 'Alchemy Gothic Treasury', 5, 2017, 7 from dual union
Select 2702, 1, 'Alchemy ICE', 5, 2015, 1 from dual union
Select 2703, 1, 'Alchemy of Askrias', 7, 2016, 5 from dual union
Select 2704, 1, 'Alchemy!', 7, 2016, 2 from dual union
Select 2705, 1, 'Alchemy!: Famous Alchemists, Amazing Potions, & Remarkable Places', 8, 2015, 5 from dual union
Select 2706, 1, 'Alchimech', 1, 2016, 1 from dual union
Select 2707, 1, 'Der Alchimist', 0, 2015, 9 from dual union
Select 2708, 1, 'Alchymia: La Quête du Cristal Noir', 9, 2016, 5 from dual union
Select 2709, 1, 'Aldabra: The Wildlife Game', 0, 2006, 1 from dual union
Select 2710, 1, 'Aldarok Games', 10, 2015, 5 from dual union
Select 2711, 1, 'Ale Historia!', 5, 2016, 10 from dual union
Select 2712, 1, 'alea', 5, 2015, 10 from dual union
Select 2713, 1, 'Alea', 6, 2016, 4 from dual union
Select 2714, 1, 'Alea evangelii', 9, 2017, 2 from dual union
Select 2715, 1, 'Alea Iacta Est', 9, 2015, 1 from dual union
Select 2716, 1, 'Alea Iacta Est', 1, 2015, 1 from dual union
Select 2717, 1, 'Alef-Bet Bingo', 3, 2015, 2 from dual union
Select 2718, 1, 'La alegría de la fe', 7, 2017, 4 from dual union
Select 2719, 1, 'Alemannen-Skat', 1, 2015, 1 from dual union
Select 2720, 1, 'Alemungula', 9, 2017, 5 from dual union
Select 2721, 1, 'Aleph Bet Adventure', 7, 2016, 4 from dual union
Select 2722, 1, 'Alert Force', 9, 2017, 6 from dual union
Select 2723, 1, 'Alerta Roja', 8, 2016, 1 from dual union
Select 2724, 1, 'Alerya', 2, 2017, 5 from dual union
Select 2725, 1, 'Alesia', 3, 2015, 1 from dual union
Select 2726, 1, 'Alesia', 4, 2018, 8 from dual union
Select 2727, 1, 'Alesia 52 B.C.: The Jurassian Hypothesis', 6, 2015, 6 from dual union
Select 2728, 1, 'Alestone', 9, 2016, 4 from dual union
Select 2729, 1, 'The Aleutians Campaign', 9, 2017, 4 from dual union
Select 2730, 1, 'Alewood', 9, 2016, 7 from dual union
Select 2731, 1, 'Alex & Co', 9, 2016, 8 from dual union
Select 2732, 1, 'The Alex Morgan Board Game!', 9, 2015, 5 from dual union
Select 2733, 1, 'Alex Máxima', 0, 2017, 6 from dual union
Select 2734, 1, 'Alexander', 4, 2016, 4 from dual union
Select 2735, 1, 'Alexander at Arbela', 9, 2017, 7 from dual union
Select 2736, 1, 'Alexander at Tyre', 8, 2015, 1 from dual union
Select 2737, 1, 'Alexander at Waterloo', 7, 2015, 8 from dual union
Select 2738, 1, 'Alexander the Great', 10, 2015, 10 from dual union
Select 2739, 1, 'Alexander the Great', 7, 2016, 5 from dual union
Select 2740, 1, 'Alexander the Great in Italy', 0, 2016, 9 from dual union
Select 2741, 1, 'Alexander the Greats Campaigns', 4, 2016, 5 from dual union
Select 2742, 1, 'Alexander the Great: Rise of Macedon 359-323 BC', 1, 2017, 2 from dual union
Select 2743, 1, 'Alexander the Great: The Battle of Issa', 7, 2016, 1 from dual union
Select 2744, 1, 'Alexanders Campaign', 1, 2016, 8 from dual union
Select 2745, 1, 'Alexanders Generals', 0, 2015, 6 from dual union
Select 2746, 1, 'Alexanders Other Battles', 4, 2015, 3 from dual union
Select 2747, 1, 'Alexanders Triumph', 3, 2017, 4 from dual union
Select 2748, 1, 'Alexander: The Card Game', 0, 2017, 5 from dual union
Select 2749, 1, 'Alexandria', 1, 2016, 9 from dual union
Select 2750, 1, 'Alexandria', 4, 2017, 1 from dual union
Select 2751, 1, 'Alexandria, 1801', 2, 2016, 7 from dual union
Select 2752, 1, 'Alexandriaopoly', 10, 2015, 10 from dual union
Select 2753, 1, 'Alexandros', 7, 2015, 2 from dual union
Select 2754, 1, 'Alexandros', 8, 2015, 1 from dual union
Select 2755, 1, 'Alexius 1113 A. D.', 1, 2015, 2 from dual union
Select 2756, 1, 'The Alf Game', 2, 2017, 5 from dual union
Select 2757, 1, 'ALFa beta', 7, 2017, 5 from dual union
Select 2758, 1, 'Alfa-Bild', 10, 2011, 7 from dual union
Select 2759, 1, 'Alfa-Kubes', 10, 2015, 5 from dual union
Select 2760, 1, 'Alfa-Lek', 0, 2016, 1 from dual union
Select 2761, 1, 'Alfabet Spel', 3, 2017, 7 from dual union
Select 2762, 1, 'Alfapet', 2, 2015, 2 from dual union
Select 2763, 1, 'Alfapet Razzle', 3, 2017, 4 from dual union
Select 2764, 1, 'Alfons Godnatt-spel', 9, 2015, 7 from dual union
Select 2765, 1, 'Alfons kortspel', 0, 2017, 4 from dual union
Select 2766, 1, 'Alfons kuliga kojspel', 6, 2015, 5 from dual union
Select 2767, 1, 'Alfons kurragömma-jakt', 5, 2010, 4 from dual union
Select 2768, 1, 'Alfons Åberg Lotto', 2, 2017, 6 from dual union
Select 2769, 1, 'Alfred Hitchcock: The Unexplained', 8, 2016, 9 from dual union
Select 2770, 1, 'Alfred the Great: The Great Heathen Army 871AD', 0, 2015, 5 from dual union
Select 2771, 1, 'Alfred the Great: The Great Heathen Army 871AD – Miniatures Edition', 8, 2017, 2 from dual union
Select 2772, 1, 'Alfred the Great: War in the West Country 876AD', 0, 2015, 3 from dual union
Select 2773, 1, 'Alfreds Wyke', 7, 2016, 6 from dual union
Select 2774, 1, 'Alfredos Food Fight', 4, 2016, 1 from dual union
Select 2775, 1, 'Alfreds Other Game', 10, 2017, 1 from dual union
Select 2776, 1, 'The Algae Eater', 2, 2016, 3 from dual union
Select 2777, 1, 'AlgarveOpoly', 6, 2015, 10 from dual union
Select 2778, 1, 'Algeciras 1801', 0, 2016, 1 from dual union
Select 2779, 1, 'Algeria: The War of Independence 1954-1962', 4, 2017, 8 from dual union
Select 2780, 1, 'Algernon Pulls it Off', 4, 2017, 10 from dual union
Select 2781, 1, 'Algonquin-Voyageurs', 10, 2017, 3 from dual union
Select 2782, 1, 'Algorilude', 2, 2015, 8 from dual union
Select 2783, 1, 'Algoritmo', 2, 2017, 4 from dual union
Select 2784, 1, 'Algorix', 0, 2017, 4 from dual union
Select 2785, 1, 'Alhambra', 0, 2015, 7 from dual union
Select 2786, 1, 'Alhambra: Big Box', 5, 2017, 7 from dual union
Select 2787, 1, 'Alhambra: Big Box Special Edition', 7, 2017, 2 from dual union
Select 2788, 1, 'Alhambra: Family Box', 6, 2017, 1 from dual union
Select 2789, 1, 'Alhambra: Medina Buildings', 1, 2015, 3 from dual union
Select 2790, 1, 'Alhambra: Power of the Sultan', 8, 2017, 7 from dual union
Select 2791, 1, 'Alhambra: The Card Game', 7, 2016, 5 from dual union
Select 2792, 1, 'Alhambra: The City Gates', 8, 2015, 5 from dual union
Select 2793, 1, 'Alhambra: The Dice Game', 4, 2016, 6 from dual union
Select 2794, 1, 'Alhambra: The Falconers', 7, 2016, 5 from dual union
Select 2795, 1, 'Alhambra: The Magical Buildings', 0, 2017, 5 from dual union
Select 2796, 1, 'Alhambra: The Thiefs Turn', 1, 2015, 10 from dual union
Select 2797, 1, 'Alhambra: The Treasure Chamber', 3, 2016, 5 from dual union
Select 2798, 1, 'Alhambra: The Viziers Favor', 1, 2017, 5 from dual union
Select 2799, 1, 'Ali Baba', 5, 2016, 6 from dual union
Select 2800, 1, 'Ali Baba', 9, 2016, 8 from dual union
Select 2801, 1, 'Ali Baba', 4, 2016, 2 from dual union
Select 2802, 1, 'Ali Baba and the Forty Thieves', 6, 2017, 2 from dual union
Select 2803, 1, 'Ali Baba Junior', 9, 2015, 7 from dual union
Select 2804, 1, 'Ali Babas Beute', 8, 2015, 3 from dual union
Select 2805, 1, 'Aliados... por ahora', 4, 2015, 5 from dual union
Select 2806, 1, 'Alias', 7, 2015, 5 from dual union
Select 2807, 1, 'Alias DVD', 1, 2016, 10 from dual union
Select 2808, 1, 'Alias Matkapeli', 8, 2015, 2 from dual union
Select 2809, 1, 'Alias: Extra Cards 2', 0, 2017, 1 from dual union
Select 2810, 1, 'Alias: New Cards', 0, 2015, 4 from dual union
Select 2811, 1, 'Alibi', 1, 2016, 3 from dual union
Select 2812, 1, 'Alibi', 7, 2017, 1 from dual union
Select 2813, 1, 'Alibi', 9, 2015, 3 from dual union
Select 2814, 1, 'Alibi', 8, 2015, 6 from dual union
Select 2815, 1, 'Alibi Saknas: Herrgårdsmordet', 6, 2015, 9 from dual union
Select 2816, 1, 'Alice', 4, 2016, 5 from dual union
Select 2817, 1, 'Alice Chess', 1, 2017, 9 from dual union
Select 2818, 1, 'Alice in Shroomland', 7, 2016, 8 from dual union
Select 2819, 1, 'Alice in Wonderland', 9, 2015, 9 from dual union
Select 2820, 1, 'Alice in Wonderland', 1, 2015, 7 from dual union
Select 2821, 1, 'Alice in Wonderland', 0, 2015, 7 from dual union
Select 2822, 1, 'Alice in Wonderland', 8, 2015, 3 from dual union
Select 2823, 1, 'Alice in Wonderland (fan expansion to Ticket to Ride)', 7, 2015, 6 from dual union
Select 2824, 1, 'Alice in Wonderland Card Game', 0, 2016, 10 from dual union
Select 2825, 1, 'Alice in Wonderland Game', 9, 2016, 8 from dual union
Select 2826, 1, 'Alice in Wonderland: A Card Game', 0, 2015, 6 from dual union
Select 2827, 1, 'Alice in Wonderland: A Curious Collection of Puzzles', 5, 2016, 6 from dual union
Select 2828, 1, 'Alices Adventures in Wonderland', 9, 2015, 3 from dual union
Select 2829, 1, 'Alices mad burger party', 0, 2015, 2 from dual union
Select 2830, 1, 'Alice: Adventures in Wonderland', 7, 2017, 3 from dual union
Select 2831, 1, 'Alician Draughts', 2, 2015, 5 from dual union
Select 2832, 1, 'Alien', 0, 2015, 5 from dual union
Select 2833, 1, 'Alien Abduction', 7, 2015, 5 from dual union
Select 2834, 1, 'The Alien Abduction Home Game', 10, 2015, 3 from dual union
Select 2835, 1, 'Alien Armada', 7, 2015, 10 from dual union
Select 2836, 1, 'Alien Armada', 0, 2016, 2 from dual union
Select 2837, 1, 'Alien Armada', 5, 2015, 5 from dual union
Select 2838, 1, 'Alien Artifacts', 8, 2017, 8 from dual union
Select 2839, 1, 'Alien Assault', 2, 2015, 5 from dual union
Select 2840, 1, 'Alien Assemblage', 0, 2017, 5 from dual union
Select 2841, 1, 'Alien Attack!', 10, 2016, 7 from dual union
Select 2842, 1, 'Alien Autopsy', 2, 2015, 9 from dual union
Select 2843, 1, 'Alien Checkers', 10, 2017, 4 from dual union
Select 2844, 1, 'Alien City', 8, 2017, 7 from dual union
Select 2845, 1, 'Alien Conspiracy', 7, 2015, 3 from dual union
Select 2846, 1, 'Alien Contact', 0, 2017, 6 from dual union
Select 2847, 1, 'Alien Crash Site', 5, 2016, 10 from dual union
Select 2848, 1, 'Alien Empires', 2, 2017, 3 from dual union
Select 2849, 1, 'Alien Encounter', 7, 2017, 1 from dual union
Select 2850, 1, 'Alien Entity', 1, 2015, 8 from dual union
Select 2851, 1, 'Alien Friendly?', 2, 2017, 8 from dual union
Select 2852, 1, 'Alien Frontiers', 2, 2017, 3 from dual union
Select 2853, 1, 'Alien Frontiers Big Box', 3, 2017, 2 from dual union
Select 2854, 1, 'Alien Frontiers: Expansion Pack #1', 3, 2015, 2 from dual union
Select 2855, 1, 'Alien Frontiers: Expansion Pack #2', 1, 2015, 1 from dual union
Select 2856, 1, 'Alien Frontiers: Expansion Pack #3', 7, 2015, 6 from dual union
Select 2857, 1, 'Alien Frontiers: Expansion Pack #4', 4, 2015, 3 from dual union
Select 2858, 1, 'Alien Frontiers: Expansion Pack #5', 5, 2015, 4 from dual union
Select 2859, 1, 'Alien Frontiers: Expansion Pack #6', 10, 2015, 4 from dual union
Select 2860, 1, 'Alien Frontiers: Expansion Pack #7', 7, 2015, 8 from dual union
Select 2861, 1, 'Alien Frontiers: Faction Pack #1', 1, 2016, 10 from dual union
Select 2862, 1, 'Alien Frontiers: Faction Pack #2', 10, 2015, 7 from dual union
Select 2863, 1, 'Alien Frontiers: Faction Pack #3', 9, 2015, 2 from dual union
Select 2864, 1, 'Alien Frontiers: Faction Pack #4', 5, 2015, 2 from dual union
Select 2865, 1, 'Alien Frontiers: Factions', 8, 2015, 2 from dual union
Select 2866, 1, 'Alien Frontiers: Galactic Pack', 2, 2016, 3 from dual union
Select 2867, 1, 'Alien Frontiers: Outer Belt', 8, 2017, 6 from dual union
Select 2868, 1, 'Alien Frontiers: Promo Pack 2017', 1, 2017, 2 from dual union
Select 2869, 1, 'Alien Frontiers: The Mind Control Helmet', 6, 2015, 8 from dual union
Select 2870, 1, 'Alien Frontiers: The Space Crane', 8, 2017, 1 from dual union
Select 2871, 1, 'Alien Galaxy', 10, 2017, 7 from dual union
Select 2872, 1, 'Alien High School', 3, 2017, 3 from dual union
Select 2873, 1, 'Alien Hotshots', 1, 2016, 7 from dual union
Select 2874, 1, 'Alien Incursion', 0, 2016, 2 from dual union
Select 2875, 1, 'Alien Invaders', 2, 2017, 4 from dual union
Select 2876, 1, 'Alien Invasion', 1, 2016, 3 from dual union
Select 2877, 1, 'Alien Invasion', 7, 2016, 5 from dual union
Select 2878, 1, 'Alien Invasion USA', 1, 2016, 5 from dual union
Select 2879, 1, 'Alien Invasion:  Defense of Corona', 8, 2016, 5 from dual union
Select 2880, 1, 'Alien Labyrinth', 2, 2016, 8 from dual union
Select 2881, 1, 'Alien Menace', 10, 2016, 3 from dual union
Select 2882, 1, 'Alien Overlords', 8, 2017, 9 from dual union
Select 2883, 1, 'Alien Overrun', 4, 2017, 10 from dual union
Select 2884, 1, 'Alien Panic', 7, 2017, 4 from dual union
Select 2885, 1, 'Alien Queen Brain', 4, 2016, 6 from dual union
Select 2886, 1, 'Alien Race in Outer Space', 8, 2016, 1 from dual union
Select 2887, 1, 'Alien Run', 8, 2016, 1 from dual union
Select 2888, 1, 'Alien Sen So', 2, 2015, 8 from dual union
Select 2889, 1, 'Alien Skirmish', 6, 2015, 2 from dual union
Select 2890, 1, 'Alien Space Battle Manual', 3, 2015, 4 from dual union
Select 2891, 1, 'Alien Squad Leader', 2, 2016, 5 from dual union
Select 2892, 1, 'Alien Struggle', 1, 2015, 4 from dual union
Select 2893, 1, 'Alien Uprising', 6, 2017, 5 from dual union
Select 2894, 1, 'Alien Uprising: Cliff/Corner Crash Map Pack', 5, 2015, 3 from dual union
Select 2895, 1, 'Alien Uprising: Rex Nova Expansion', 2, 2015, 8 from dual union
Select 2896, 1, 'Alien Uprising: Scenario Promos', 4, 2015, 4 from dual union
Select 2897, 1, 'Alien Uprising: X-14 Expansion', 7, 2016, 7 from dual union
Select 2898, 1, 'Alien Uprising: Zothren Expansion', 0, 2015, 3 from dual union
Select 2899, 1, 'Alien Uprising: Zothren Invasion', 4, 2016, 2 from dual union
Select 2900, 1, 'Alien vs Predator: Alien Crusher Expansion', 6, 2016, 6 from dual union
Select 2901, 1, 'Alien vs Predator: Alien Facehuggers', 8, 2016, 1 from dual union
Select 2902, 1, 'Alien vs Predator: Alien Queen Expansion', 9, 2016, 8 from dual union
Select 2903, 1, 'Alien vs Predator: Alien Royal Guard Expansion', 3, 2016, 6 from dual union
Select 2904, 1, 'Alien vs Predator: Alien Warriors Expansion', 1, 2015, 4 from dual union
Select 2905, 1, 'Alien vs Predator: Power Loader Expansion', 2, 2016, 2 from dual union
Select 2906, 1, 'Alien vs Predator: Predalien Expansion', 5, 2016, 3 from dual union
Select 2907, 1, 'Alien vs Predator: Predator Hellhound Expansion', 3, 2016, 1 from dual union
Select 2908, 1, 'Alien Vs Predator: Predator Young Bloods Expansion', 5, 2016, 5 from dual union
Select 2909, 1, 'Alien vs Predator: The Hunt Begins', 7, 2015, 9 from dual union
Select 2910, 1, 'Alien VS Predator: Unleashed', 1, 2017, 7 from dual union
Select 2911, 1, 'Alien Vs Predator: USCM Sentry Guns Expansion', 10, 2009, 8 from dual union
Select 2912, 1, 'Alien Vs Predator: Weyland Yutani Commandos Expansion', 4, 2015, 7 from dual union
Select 2913, 1, 'Alien War', 6, 2017, 2 from dual union
Select 2914, 1, 'Alien Wars', 7, 2015, 10 from dual union
Select 2915, 1, 'Alien Worlds', 10, 2015, 4 from dual union
Select 2916, 1, 'Alien Zombie Tentacle Apocalypse', 8, 2016, 2 from dual union
Select 2917, 1, 'Alien: Invasion Risk', 1, 2016, 9 from dual union
Select 2918, 1, 'Alienation', 10, 2016, 10 from dual union
Select 2919, 1, 'Alienish', 9, 2016, 8 from dual union
Select 2920, 1, 'Aliens', 1, 2015, 2 from dual union
Select 2921, 1, 'Aliens', 3, 2016, 3 from dual union
Select 2922, 1, 'Aliens', 6, 2016, 1 from dual union
Select 2923, 1, 'Aliens and Amazons', 3, 2017, 5 from dual union
Select 2924, 1, 'Aliens Expansion', 10, 2016, 4 from dual union
Select 2925, 1, 'Aliens in Antarctica', 4, 2016, 7 from dual union
Select 2926, 1, 'Aliens vs. Predator', 0, 2017, 5 from dual union
Select 2927, 1, 'Aliens vs. Predator: Alien Resurrection Expansion Set', 1, 2017, 9 from dual union
Select 2928, 1, 'Aliens vs. Zombies', 0, 2017, 3 from dual union
Select 2929, 1, 'Aliens: This Time Its War', 9, 2017, 5 from dual union
Select 2930, 1, 'Alienz', 9, 2015, 9 from dual union
Select 2931, 1, 'Align', 4, 2016, 4 from dual union
Select 2932, 1, 'Aliyah', 1, 2015, 10 from dual union
Select 2933, 1, 'Aljubarrota', 4, 2016, 1 from dual union
Select 2934, 1, 'Aljubarrota: The Royal Battle', 5, 2015, 8 from dual union
Select 2935, 1, 'Alkelda Dawn', 7, 2015, 10 from dual union
Select 2936, 1, 'Alkemia', 2, 2017, 4 from dual union
Select 2937, 1, 'Alkemy', 8, 2015, 3 from dual union
Select 2938, 1, 'Alkemy: Aurlok Nation Starter Box', 5, 2015, 1 from dual union
Select 2939, 1, 'Alkisah', 10, 2016, 1 from dual union
Select 2940, 1, 'All Aboard', 8, 2017, 6 from dual union
Select 2941, 1, 'All Aboard', 1, 2016, 2 from dual union
Select 2942, 1, 'All Aboard', 9, 2009, 3 from dual union
Select 2943, 1, 'All Aboard!', 2, 2016, 3 from dual union
Select 2944, 1, 'All Aboard!', 9, 2017, 1 from dual union
Select 2945, 1, 'All About Albany', 6, 2017, 10 from dual union
Select 2946, 1, 'All About Appleton', 9, 2016, 1 from dual union
Select 2947, 1, 'All About Auburn - Cayuga County', 2, 2015, 7 from dual union
Select 2948, 1, 'All About Baltimore', 4, 2016, 3 from dual union
Select 2949, 1, 'All About Broome County', 10, 2016, 7 from dual union
Select 2950, 1, 'All About Charlotte', 6, 2016, 10 from dual union
Select 2951, 1, 'All About Colorado Springs Colorado', 6, 2015, 8 from dual union
Select 2952, 1, 'All About Cumberland, Maryland', 1, 2016, 9 from dual union
Select 2953, 1, 'All About Delaware', 3, 2017, 2 from dual union
Select 2954, 1, 'All About Football', 0, 2017, 3 from dual union
Select 2955, 1, 'All About Greeley', 3, 2016, 1 from dual union
Select 2956, 1, 'All About Harrisburg', 5, 2015, 5 from dual union
Select 2957, 1, 'All About Ithaca & Tompkins County, NY', 2, 2016, 10 from dual union
Select 2958, 1, 'All About Jefferson City', 3, 2017, 3 from dual union
Select 2959, 1, 'All About Kansas City', 10, 2015, 8 from dual union
Select 2960, 1, 'All About Knoxville Tennessee', 6, 2015, 7 from dual union
Select 2961, 1, 'All About Lancaster County', 6, 2015, 6 from dual union
Select 2962, 1, 'All About Lancaster Pennsylvania', 3, 2017, 6 from dual union
Select 2963, 1, 'All About Mercer County', 9, 2015, 3 from dual union
Select 2964, 1, 'All About Minneapolis', 4, 2016, 2 from dual union
Select 2965, 1, 'All About New Orleans', 7, 2015, 4 from dual union
Select 2966, 1, 'All About Pittsburgh', 1, 2015, 10 from dual union
Select 2967, 1, 'All About Pueblo', 8, 2016, 4 from dual union
Select 2968, 1, 'All About Raleigh, North Carolina', 6, 2016, 3 from dual union
Select 2969, 1, 'All About Richmond', 4, 2015, 10 from dual union
Select 2970, 1, 'All About Savannah', 9, 2015, 2 from dual union
Select 2971, 1, 'All About Scranton', 3, 2015, 7 from dual union
Select 2972, 1, 'All About St. Paul', 5, 2017, 7 from dual union
Select 2973, 1, 'All About Syracuse', 6, 2015, 10 from dual union
Select 2974, 1, 'All About Town Waterville Maine', 3, 2016, 8 from dual union
Select 2975, 1, 'All About Town: Charleston, South Carolina', 8, 2017, 4 from dual union
Select 2976, 1, 'All About Town: Charlottesville, VA', 1, 2015, 8 from dual union
Select 2977, 1, 'All About Town: Columbia, South Carolina', 9, 2017, 5 from dual union
Select 2978, 1, 'All About Town: Greater Bangor, ME', 7, 2015, 7 from dual union
Select 2979, 1, 'All About Town: Indianapolis', 9, 2016, 8 from dual union
Select 2980, 1, 'All About Town: Milwaukee', 5, 2015, 2 from dual union
Select 2981, 1, 'All About Town: Newport County Rhode Island', 0, 2017, 3 from dual union
Select 2982, 1, 'All About Town: The Game of Louisville', 1, 2015, 5 from dual union
Select 2983, 1, 'All About Town: The Game of the Racine Area', 10, 2017, 7 from dual union
Select 2984, 1, 'All About Ulster County New York', 4, 2013, 8 from dual union
Select 2985, 1, 'All About Vineland', 9, 2016, 7 from dual union
Select 2986, 1, 'All About White Plains', 4, 2015, 4 from dual union
Select 2987, 1, 'All About York', 10, 2015, 3 from dual union
Select 2988, 1, 'All About Yourself', 0, 2011, 1 from dual union
Select 2989, 1, 'All American', 0, 2017, 2 from dual union
Select 2990, 1, 'All American Baseball', 2, 2016, 1 from dual union
Select 2991, 1, 'All American Football', 5, 2016, 2 from dual union
Select 2992, 1, 'All American Handicap', 2, 2017, 8 from dual union
Select 2993, 1, 'All American III: Shanleys Hill', 8, 2015, 10 from dual union
Select 2994, 1, 'The All American Trivia Board Game', 6, 2017, 6 from dual union
Select 2995, 1, 'All American: Kellams Bridge', 2, 2017, 8 from dual union
Select 2996, 1, 'All American: Timmes Orchard', 9, 2017, 8 from dual union
Select 2997, 1, 'All American: United States Expansion Pack', 3, 2016, 5 from dual union
Select 2998, 1, 'All Are Brothers: Solferino, 1859', 9, 2016, 2 from dual union
Select 2999, 1, 'All Around Northern Virginia', 8, 2017, 2 from dual union
Select 3000, 1, 'All Around the Farm', 0, 2017, 4 from dual ) c
WHERE NOT EXISTS (SELECT product_id from product where product_id = 2001 ) ;

INSERT INTO product (product_id, active, name, quantity, year_published, category_id)
Select *
from (
Select 3001 a, 1 b, 'All Around the Playground' c, 6 d, 2016 e, 7 f from dual union
Select 3002, 1, 'All Around Town', 4, 2016, 3 from dual union
Select 3003, 1, 'All Around Town Sorting Game', 0, 2002, 10 from dual union
Select 3004, 1, 'All at Sea', 1, 2015, 7 from dual union
Select 3005, 1, 'All Bunnies Eat Carrots', 9, 2015, 7 from dual union
Select 3006, 1, 'The All Canadian Trivia Board Game', 6, 2017, 6 from dual union
Select 3007, 1, 'All Canadian Trivia Board Game - Supplementary Question Set', 9, 2015, 8 from dual union
Select 3008, 1, 'The All Canadian Trivia Board Game: Junior Edition', 1, 2016, 5 from dual union
Select 3009, 1, 'The All Canadian Trivia Board Game: Millennium Edition', 3, 2015, 1 from dual union
Select 3010, 1, 'All Change', 4, 2016, 3 from dual union
Select 3011, 1, 'All Change', 6, 2016, 3 from dual union
Select 3012, 1, 'All Decked Out', 9, 2005, 5 from dual union
Select 3013, 1, 'All Ears', 10, 2016, 9 from dual union
Select 3014, 1, 'All Fall Down', 7, 2017, 6 from dual union
Select 3015, 1, 'All Fathomed Out', 0, 2015, 5 from dual union
Select 3016, 1, 'All For One', 2, 2016, 8 from dual union
Select 3017, 1, 'All for One', 5, 2017, 4 from dual union
Select 3018, 1, 'All Gods Are Dying', 4, 2016, 9 from dual union
Select 3019, 1, 'ALL GREEN', 0, 2017, 10 from dual union
Select 3020, 1, 'All Grown Up', 4, 2016, 1 from dual union
Select 3021, 1, 'All Hallows Eve', 9, 2017, 4 from dual union
Select 3022, 1, 'All Hands On Deck', 2, 2016, 3 from dual union
Select 3023, 1, 'All Hands on Deck!', 7, 2016, 4 from dual union
Select 3024, 1, 'All Hands!', 1, 2015, 4 from dual union
Select 3025, 1, 'All In', 4, 2017, 2 from dual union
Select 3026, 1, 'All In', 1, 2015, 8 from dual union
Select 3027, 1, 'The All in the Family Game', 2, 2016, 9 from dual union
Select 3028, 1, 'All is lost save Honour', 0, 2017, 8 from dual union
Select 3029, 1, 'All is lost to me: Pavia 1525', 5, 2017, 7 from dual union
Select 3030, 1, 'All kinds of flowers profusion', 6, 2017, 3 from dual union
Select 3031, 1, 'All meine Früchtchen', 8, 2017, 7 from dual union
Select 3032, 1, 'All My Children', 7, 2017, 7 from dual union
Select 3033, 1, 'All My Children Fact or Fantasy Question Card Game', 7, 2015, 6 from dual union
Select 3034, 1, 'All My Diamonds', 10, 2015, 6 from dual union
Select 3035, 1, 'All My Ducks', 4, 2016, 7 from dual union
Select 3036, 1, 'All my Friends are Psycho', 8, 2015, 7 from dual union
Select 3037, 1, 'The All New Act One', 8, 2015, 10 from dual union
Select 3038, 1, 'The All New Brit Quiz Game', 1, 2016, 6 from dual union
Select 3039, 1, 'The All New Dating Game', 4, 2017, 8 from dual union
Select 3040, 1, 'All of Me', 2, 2015, 1 from dual union
Select 3041, 1, 'All of the Word Games: Yes or No', 7, 2016, 3 from dual union
Select 3042, 1, 'All or Nothing', 10, 2016, 2 from dual union
Select 3043, 1, 'All Queens Chess', 0, 2015, 9 from dual union
Select 3044, 1, 'All Quiet on the Martian Front', 1, 2017, 1 from dual union
Select 3045, 1, 'All Quiet on the Western Front', 3, 2015, 8 from dual union
Select 3046, 1, 'All Quiet on the Western Front', 5, 2017, 2 from dual union
Select 3047, 1, 'All Star Basketball', 7, 2015, 3 from dual union
Select 3048, 1, 'All Star Comics Card Game', 5, 2017, 1 from dual union
Select 3049, 1, 'All Star Football', 3, 2015, 9 from dual union
Select 3050, 1, 'All Star Hockey Game', 4, 2015, 5 from dual union
Select 3051, 1, 'All Star NBPA Basketball', 6, 2015, 4 from dual union
Select 3052, 1, 'All Star Wrestling Power Slam VCR Wrestling Game', 0, 2015, 9 from dual union
Select 3053, 1, 'All Stars Coach', 4, 2016, 4 from dual union
Select 3054, 1, 'All the Answers', 5, 2015, 10 from dual union
Select 3055, 1, 'All the Best Drinking Games in the World', 3, 2015, 1 from dual union
Select 3056, 1, 'All the Kings Horses', 10, 2015, 7 from dual union
Select 3057, 1, 'All The Kingdoms Men', 10, 2015, 3 from dual union
Select 3058, 1, 'All The Kings Men', 7, 2016, 3 from dual union
Select 3059, 1, 'All the Way Down', 0, 2017, 9 from dual union
Select 3060, 1, 'All the Winners', 7, 2016, 2 from dual union
Select 3061, 1, 'All Things Zombie', 7, 2016, 8 from dual union
Select 3062, 1, 'All Things Zombie: Better Dead Than Zed!', 7, 2016, 2 from dual union
Select 3063, 1, 'All Things Zombie: Final Fade Out', 4, 2016, 6 from dual union
Select 3064, 1, 'All Things Zombie: Giving Up The Goat', 10, 2015, 8 from dual union
Select 3065, 1, 'All Things Zombie: Haven', 5, 2015, 2 from dual union
Select 3066, 1, 'All Things Zombie: I, Zombie', 0, 2015, 1 from dual union
Select 3067, 1, 'All Things Zombie: Reloaded', 2, 2015, 9 from dual union
Select 3068, 1, 'All Things Zombie: Reloaded – The Dead Never Sleep', 2, 2016, 3 from dual union
Select 3069, 1, 'All Things Zombie: Risks and Rewards', 7, 2017, 10 from dual union
Select 3070, 1, 'All Things Zombie: The Boardgame', 3, 2015, 3 from dual union
Select 3071, 1, 'All Time 9', 2, 2017, 2 from dual union
Select 3072, 1, 'All Time Championship Soccer', 8, 2015, 7 from dual union
Select 3073, 1, 'All Time Favorites', 8, 2016, 8 from dual union
Select 3074, 1, 'All Tricks, No Treats', 4, 2016, 8 from dual union
Select 3075, 1, 'All Wound Up', 4, 2017, 9 from dual union
Select 3076, 1, 'All Wrapped Up!', 2, 2015, 2 from dual union
Select 3077, 1, 'All Your Animals', 6, 2016, 8 from dual union
Select 3078, 1, 'All Your Mechs Are Belong To Us', 7, 2016, 8 from dual union
Select 3079, 1, 'AllAppalto!', 6, 2016, 2 from dual union
Select 3080, 1, 'All-American Football', 4, 2017, 4 from dual union
Select 3081, 1, 'All-American Football Game', 10, 2017, 5 from dual union
Select 3082, 1, 'All-Arounder: Womens Gymnastics Game', 8, 2016, 9 from dual union
Select 3083, 1, 'All-District: The Game of High School Basketball', 10, 2016, 3 from dual union
Select 3084, 1, 'All-in-the-Cards Football', 0, 2017, 5 from dual union
Select 3085, 1, 'All-in-the-Dice Baseball', 5, 2016, 2 from dual union
Select 3086, 1, 'All-Pro Baseball', 2, 2016, 8 from dual union
Select 3087, 1, 'All-Pro Basketball', 1, 2015, 2 from dual union
Select 3088, 1, 'All-Pro Football', 3, 2017, 9 from dual union
Select 3089, 1, 'All-Pro Hockey', 3, 2017, 3 from dual union
Select 3090, 1, 'All-Pro-Star Fighting', 6, 2015, 1 from dual union
Select 3091, 1, 'All-purpose Miniatures Rules', 10, 2017, 2 from dual union
Select 3092, 1, 'All-Season Basketball', 1, 2017, 3 from dual union
Select 3093, 1, 'The All-Seeing Eye', 10, 2015, 5 from dual union
Select 3094, 1, 'All-Star Baseball', 3, 2015, 7 from dual union
Select 3095, 1, 'All-Star Baseball Card Game', 7, 2016, 8 from dual union
Select 3096, 1, 'All-Star Face-Off', 5, 2015, 6 from dual union
Select 3097, 1, 'All-Star Wrestling Rejects', 10, 2016, 10 from dual union
Select 3098, 1, 'All-tes-teg-enuk', 0, 2007, 10 from dual union
Select 3099, 1, 'All-time Baseball', 3, 2016, 1 from dual union
Select 3100, 1, 'All-Time Hockey', 7, 2015, 5 from dual union
Select 3101, 1, 'Alla mot en', 3, 2017, 7 from dual union
Select 3102, 1, 'Alla ricerca di Dory: Occhio al tentacolo', 7, 2016, 1 from dual union
Select 3103, 1, 'Alla vägar bär till Rom', 9, 2015, 9 from dual union
Select 3104, 1, 'Allaboutfootball', 8, 2016, 7 from dual union
Select 3105, 1, 'Allah Akbar: The First Crusaders 1096AD. - 1099 AD.', 9, 2015, 10 from dual union
Select 3106, 1, 'Alle alle', 6, 2017, 8 from dual union
Select 3107, 1, 'Alle Falde del Kilimangiaro', 7, 2017, 8 from dual union
Select 3108, 1, 'Alle Machen Mit: Kofferpacken', 3, 2016, 5 from dual union
Select 3109, 1, 'Alle meine Entchen', 1, 2017, 2 from dual union
Select 3110, 1, 'Alle meine Entchen', 0, 2017, 1 from dual union
Select 3111, 1, 'Alle meine Entchen...', 7, 2017, 8 from dual union
Select 3112, 1, 'Alle meine Tiere', 1, 2017, 2 from dual union
Select 3113, 1, 'Alle meine Tiere', 4, 2015, 2 from dual union
Select 3114, 1, 'Alle meine Tiere', 10, 2016, 4 from dual union
Select 3115, 1, 'Alle Vögel sind schon da', 1, 2017, 6 from dual union
Select 3116, 1, 'Alle Vögel sind schon da!', 10, 2016, 8 from dual union
Select 3117, 1, 'Alle Vögel sind schon da!', 9, 2015, 8 from dual union
Select 3118, 1, 'Alle Wege führen nach Rom', 2, 2016, 1 from dual union
Select 3119, 1, 'Allegiance', 2, 2017, 9 from dual union
Select 3120, 1, 'Allegiance', 3, 2017, 4 from dual union
Select 3121, 1, 'Allegiance', 0, 2016, 8 from dual union
Select 3122, 1, 'Allegiance: A Realm Divided', 3, 2015, 3 from dual union
Select 3123, 1, 'Allegiance: War of Factions', 7, 2017, 2 from dual union
Select 3124, 1, 'Allegrando', 8, 2016, 7 from dual union
Select 3125, 1, 'Allegro', 5, 2015, 3 from dual union
Select 3126, 1, 'Allens Dirt The Game', 8, 2016, 8 from dual union
Select 3127, 1, 'Allenbys Blitzkrieg', 8, 2017, 8 from dual union
Select 3128, 1, 'Allerheim 1645', 4, 2016, 4 from dual union
Select 3129, 1, 'Allerley Spielerey', 0, 2016, 5 from dual union
Select 3130, 1, 'Alles auf Angriff', 9, 2017, 5 from dual union
Select 3131, 1, 'Alles Banane!', 5, 2016, 10 from dual union
Select 3132, 1, 'Alles Banane!', 1, 2015, 7 from dual union
Select 3133, 1, 'Alles dreht sich um die Wilde Wiese', 2, 2017, 7 from dual union
Select 3134, 1, 'Alles Futsch', 2, 2015, 8 from dual union
Select 3135, 1, 'Alles für die Katz?', 9, 2016, 4 from dual union
Select 3136, 1, 'Alles in Ordnung', 5, 2016, 3 from dual union
Select 3137, 1, 'Alles Kanone!', 0, 2015, 1 from dual union
Select 3138, 1, 'Alles klar?', 6, 2016, 4 from dual union
Select 3139, 1, 'Alles Käse', 0, 2015, 9 from dual union
Select 3140, 1, 'Alles Käse!', 6, 2016, 5 from dual union
Select 3141, 1, 'Alles lacht!', 10, 2000, 9 from dual union
Select 3142, 1, 'Alles meins!', 5, 2015, 9 from dual union
Select 3143, 1, 'Alles Müller', 3, 2017, 6 from dual union
Select 3144, 1, 'Alles oder Nichts', 10, 2017, 2 from dual union
Select 3145, 1, 'Alles oder Nichts', 7, 2016, 8 from dual union
Select 3146, 1, 'Alles Paletti?!', 4, 2016, 10 from dual union
Select 3147, 1, 'Alles verdreht', 6, 2016, 7 from dual union
Select 3148, 1, 'Alles Zauberei', 7, 2015, 1 from dual union
Select 3149, 1, 'Alles, alles über Deutschland', 2, 2017, 4 from dual union
Select 3150, 1, 'Alley Cat', 6, 2017, 6 from dual union
Select 3151, 1, 'The Alley Cats Game', 4, 2016, 5 from dual union
Select 3152, 1, 'Alley Oop', 3, 2017, 1 from dual union
Select 3153, 1, 'Alley Oop Jungle Game', 1, 2015, 3 from dual union
Select 3154, 1, 'Alley Thieves', 8, 2016, 9 from dual union
Select 3155, 1, 'Alley Thieves: Guild Expansion', 7, 2015, 9 from dual union
Select 3156, 1, 'Alley Up', 3, 2016, 5 from dual union
Select 3157, 1, 'Alley-Oop', 1, 2015, 8 from dual union
Select 3158, 1, 'Alley-up', 7, 2016, 4 from dual union
Select 3159, 1, 'Allez Saute!', 4, 2016, 7 from dual union
Select 3160, 1, 'Allgemein-Wissen für Kinder', 4, 2017, 3 from dual union
Select 3161, 1, 'Alliances', 7, 2015, 3 from dual union
Select 3162, 1, 'Alliances: Means of Power Expansion', 0, 2016, 6 from dual union
Select 3163, 1, 'Allianz', 5, 2016, 2 from dual union
Select 3164, 1, 'Die Allianz der Unterwelt', 3, 2016, 8 from dual union
Select 3165, 1, 'Allie Patriot Game', 7, 2015, 1 from dual union
Select 3166, 1, 'Allies: Realm of Wonder', 4, 2015, 3 from dual union
Select 3167, 1, 'Alligator Dice Game', 6, 2016, 2 from dual union
Select 3168, 1, 'Alligator Game', 2, 2015, 5 from dual union
Select 3169, 1, 'Alligators, Dice & Doors', 10, 2016, 9 from dual union
Select 3170, 1, 'Allo Allo', 3, 2017, 9 from dual union
Select 3171, 1, 'Allo... Docteur?', 3, 2016, 9 from dual union
Select 3172, 1, 'Allo... la France: Le Grand Jeu du Tėlėphone', 7, 2015, 2 from dual union
Select 3173, 1, 'Allons zo Zoo', 7, 2015, 10 from dual union
Select 3174, 1, 'Allotment Games', 9, 2015, 3 from dual union
Select 3175, 1, 'Allowance', 5, 2017, 7 from dual union
Select 3176, 1, 'The Allowance Game', 9, 2017, 1 from dual union
Select 3177, 1, 'ALLSAFE: The Food Hygiene Board Game', 7, 2016, 8 from dual union
Select 3178, 1, 'Alma', 10, 2015, 7 from dual union
Select 3179, 1, 'Alma 1854', 3, 2016, 1 from dual union
Select 3180, 1, 'ALMANiAC', 3, 2016, 6 from dual union
Select 3181, 1, 'Almansa 1707', 8, 2015, 6 from dual union
Select 3182, 1, 'Almauftrieb happy-time', 7, 2017, 8 from dual union
Select 3183, 1, 'Almeida', 3, 2017, 8 from dual union
Select 3184, 1, 'Almeida et Bussaco 1810', 9, 2017, 7 from dual union
Select 3185, 1, 'Almighty Heroes Adventure', 2, 2016, 10 from dual union
Select 3186, 1, 'Almirante', 2, 2016, 10 from dual union
Select 3187, 1, 'Almirante', 8, 2017, 8 from dual union
Select 3188, 1, 'Aloha', 10, 2015, 10 from dual union
Select 3189, 1, 'Aloha Pioha', 6, 2016, 8 from dual union
Select 3190, 1, 'Aloha: Le jeu rituel des archipels', 6, 2016, 4 from dual union
Select 3191, 1, 'Aloha: The Spirit of Hawaii', 1, 2017, 9 from dual union
Select 3192, 1, 'Alone', 10, 2017, 7 from dual union
Select 3193, 1, 'Alone Against the Aliens', 1, 2016, 2 from dual union
Select 3194, 1, 'Alone in the Storm: Solo Play Expansion for War Storm Series', 6, 2016, 5 from dual union
Select 3195, 1, 'Along Bible Roads', 8, 2017, 1 from dual union
Select 3196, 1, 'Alonso oder: Es lebe das Gute', 1, 2017, 1 from dual union
Select 3197, 1, 'Alouette', 9, 2017, 10 from dual union
Select 3198, 1, 'Alpaca Pakapaka', 9, 2015, 7 from dual union
Select 3199, 1, 'Alpaca-opoly', 3, 2017, 8 from dual union
Select 3200, 1, 'Alpacalypse', 3, 2017, 3 from dual union
Select 3201, 1, 'Alpages: La guerre des moutons', 4, 2017, 4 from dual union
Select 3202, 1, 'Alpen DKT', 1, 2015, 1 from dual union
Select 3203, 1, 'Alpen Express', 9, 2015, 1 from dual union
Select 3204, 1, 'Alpen Roulette', 0, 2015, 5 from dual union
Select 3205, 1, 'Alpenreise', 7, 2017, 3 from dual union
Select 3206, 1, 'Alpens 1873, el joc', 1, 2015, 3 from dual union
Select 3207, 1, 'Alpha', 0, 2015, 6 from dual union
Select 3208, 1, 'Alpha Animals', 5, 2015, 4 from dual union
Select 3209, 1, 'Alpha Bandits', 1, 2016, 9 from dual union
Select 3210, 1, 'Alpha Base', 2, 2016, 3 from dual union
Select 3211, 1, 'Alpha Bet', 10, 2017, 9 from dual union
Select 3212, 1, 'Alpha Bet', 2, 2016, 5 from dual union
Select 3213, 1, 'Alpha Blitz', 5, 2017, 2 from dual union
Select 3214, 1, 'Alpha Brik', 1, 2016, 9 from dual union
Select 3215, 1, 'Alpha Cards: The Game of Games', 5, 2015, 7 from dual union
Select 3216, 1, 'Alpha Cats', 4, 2016, 6 from dual union
Select 3217, 1, 'Alpha Centauri', 3, 2015, 9 from dual union
Select 3218, 1, 'Alpha Centauri', 8, 2016, 5 from dual union
Select 3219, 1, 'Alpha Challenge', 6, 2016, 6 from dual union
Select 3220, 1, 'Alpha Colony', 10, 2015, 2 from dual union
Select 3221, 1, 'Alpha Colony: The Galaxy Prime Expansion', 0, 2015, 9 from dual union
Select 3222, 1, 'Alpha Gamma 5', 6, 2017, 10 from dual union
Select 3223, 1, 'Alpha Nature', 4, 2016, 7 from dual union
Select 3224, 1, 'Alpha Omega', 9, 2015, 3 from dual union
Select 3225, 1, 'Alpha Playing Cards', 10, 2016, 8 from dual union
Select 3226, 1, 'Alpha Strike', 9, 2017, 9 from dual union
Select 3227, 1, 'Alpha Word Game System', 5, 2017, 9 from dual union
Select 3228, 1, 'Alpha-Bug Soup', 2, 2017, 8 from dual union
Select 3229, 1, 'Alpha-Bus', 8, 2017, 3 from dual union
Select 3230, 1, 'Alphabattle', 2, 2017, 7 from dual union
Select 3231, 1, 'Alphabet', 3, 2017, 2 from dual union
Select 3232, 1, 'AlphaBet', 1, 2015, 3 from dual union
Select 3233, 1, 'Alphabet Circus', 4, 2016, 9 from dual union
Select 3234, 1, 'Alphabet City', 2, 2016, 9 from dual union
Select 3235, 1, 'Alphabet Detective', 7, 2015, 10 from dual union
Select 3236, 1, 'Alphabet Dice', 8, 2017, 8 from dual union
Select 3237, 1, 'The Alphabet Game', 7, 2015, 7 from dual union
Select 3238, 1, 'Alphabet Game', 8, 2016, 9 from dual union
Select 3239, 1, 'Alphabet Game', 10, 2004, 2 from dual union
Select 3240, 1, 'Alphabet Game', 1, 2017, 5 from dual union
Select 3241, 1, 'The Alphabet Game', 4, 2017, 5 from dual union
Select 3242, 1, 'Alphabet Land', 4, 2015, 2 from dual union
Select 3243, 1, 'Alphabet Lotto: Farmyard Tales Games', 4, 2016, 4 from dual union
Select 3244, 1, 'Alphabet Match Me', 2, 2015, 8 from dual union
Select 3245, 1, 'Alphabet Pirates', 4, 2016, 6 from dual union
Select 3246, 1, 'Alphabet Race', 10, 2015, 9 from dual union
Select 3247, 1, 'Alphabet Rummy', 6, 2017, 2 from dual union
Select 3248, 1, 'Alphabet Runner', 8, 2015, 8 from dual union
Select 3249, 1, 'Alphabet Runner Cards', 8, 2016, 1 from dual union
Select 3250, 1, 'Alphabet Snap', 6, 2017, 9 from dual union
Select 3251, 1, 'Alphabet Soundtracks', 10, 2017, 4 from dual union
Select 3252, 1, 'Alphabet Soup', 7, 2016, 6 from dual union
Select 3253, 1, 'Alphabet Soup', 10, 2017, 1 from dual union
Select 3254, 1, 'Alphabet Soup', 5, 2015, 7 from dual union
Select 3255, 1, 'Alphabet Soup', 8, 2017, 6 from dual union
Select 3256, 1, 'Alphabet Squiggle', 2, 2015, 7 from dual union
Select 3257, 1, 'Alphabet Woods', 4, 2016, 6 from dual union
Select 3258, 1, 'Alphabet Zoop', 7, 2015, 2 from dual union
Select 3259, 1, 'Alphabetor', 6, 2011, 1 from dual union
Select 3260, 1, 'Alphabid', 7, 2016, 9 from dual union
Select 3261, 1, 'Alphabok', 0, 2015, 4 from dual union
Select 3262, 1, 'Alphacadabra', 8, 2017, 4 from dual union
Select 3263, 1, 'Alphamino', 6, 2017, 4 from dual union
Select 3264, 1, 'AlphaOmega', 8, 2015, 9 from dual union
Select 3265, 1, 'The AlphaPets Game', 2, 2015, 2 from dual union
Select 3266, 1, 'Alphatian Roulette', 9, 2016, 5 from dual union
Select 3267, 1, 'Alphemo', 6, 2015, 3 from dual union
Select 3268, 1, 'Alpine Rally Race', 5, 2016, 3 from dual union
Select 3269, 1, 'Alquerque', 1, 2007, 8 from dual union
Select 3270, 1, 'O Alquimista', 3, 2015, 1 from dual union
Select 3271, 1, 'Alquimix', 9, 2016, 4 from dual union
Select 3272, 1, 'Alra', 9, 2017, 10 from dual union
Select 3273, 1, 'Alsace 1940', 5, 2015, 1 from dual union
Select 3274, 1, 'Alsace 1944', 5, 2015, 2 from dual union
Select 3275, 1, 'Alsace 1945', 5, 2016, 4 from dual union
Select 3276, 1, 'Also', 10, 2015, 3 from dual union
Select 3277, 1, 'Also Ran', 7, 2017, 2 from dual union
Select 3278, 1, 'Also sprach...', 8, 2009, 10 from dual union
Select 3279, 1, 'Alta', 7, 2016, 7 from dual union
Select 3280, 1, 'Alta Velocidade', 7, 2015, 2 from dual union
Select 3281, 1, 'Altairian', 6, 2015, 4 from dual union
Select 3282, 1, 'Altamira', 1, 2017, 1 from dual union
Select 3283, 1, 'Altan Xaraacaj', 8, 2015, 1 from dual union
Select 3284, 1, 'Altar', 7, 2017, 6 from dual union
Select 3285, 1, 'Altar of Freedom', 3, 2015, 4 from dual union
Select 3286, 1, 'Altaria: Clash of Dimensions', 5, 2017, 1 from dual union
Select 3287, 1, 'Das Alte Reich', 6, 2017, 7 from dual union
Select 3288, 1, 'Das alte Rom Quiz', 1, 2015, 9 from dual union
Select 3289, 1, 'Alte Spiele', 2, 2015, 5 from dual union
Select 3290, 1, 'Alte und neue Erzählkunst', 4, 2016, 5 from dual union
Select 3291, 1, 'Alteil: Horizons', 5, 2015, 1 from dual union
Select 3292, 1, 'Die alten Rittersleut', 10, 2017, 8 from dual union
Select 3293, 1, 'Alter Ego', 5, 2015, 7 from dual union
Select 3294, 1, 'Alteration', 4, 2016, 8 from dual union
Select 3295, 1, 'Alternardo', 7, 2017, 6 from dual union
Select 3296, 1, 'Alternativa', 6, 2017, 4 from dual union
Select 3297, 1, 'Alternative Armies: The Compendium No1', 9, 2015, 6 from dual union
Select 3298, 1, 'Alternative Civil War: 1861', 0, 2015, 1 from dual union
Select 3299, 1, 'Alternative Games for the Family', 4, 2016, 4 from dual union
Select 3300, 1, 'Alternative Games for Those Who Like  a Challenge', 10, 2016, 3 from dual union
Select 3301, 1, 'Alternative Sekigahara', 3, 2016, 1 from dual union
Select 3302, 1, 'Alternator', 2, 2017, 1 from dual union
Select 3303, 1, 'Alternatywy 4', 1, 2016, 5 from dual union
Select 3304, 1, 'Althingi', 2, 2016, 7 from dual union
Select 3305, 1, 'Altijd 10', 9, 2015, 2 from dual union
Select 3306, 1, 'Altitude', 3, 2015, 10 from dual union
Select 3307, 1, 'Alton Metropoly', 4, 2015, 1 from dual union
Select 3308, 1, 'Aluette', 8, 2016, 9 from dual union
Select 3309, 1, 'Alumni Fun', 3, 2017, 8 from dual union
Select 3310, 1, 'Alva', 0, 2016, 2 from dual union
Select 3311, 1, 'Always in Motion', 10, 2015, 8 from dual union
Select 3312, 1, 'Always Play Fair!', 3, 2016, 10 from dual union
Select 3313, 1, 'Alzabandiera', 7, 2016, 6 from dual union
Select 3314, 1, 'Alésia, 52 Av. J.-C.: César contre Vercingétorix', 10, 2016, 7 from dual union
Select 3315, 1, 'Am Fuß des Kilimandscharo', 5, 2017, 10 from dual union
Select 3316, 1, 'Am I a Banana?', 4, 2015, 4 from dual union
Select 3317, 1, 'Am I Lion?', 4, 2017, 5 from dual union
Select 3318, 1, 'Am Knobelbrett', 2, 2017, 6 from dual union
Select 3319, 1, 'Am Korallen-Riff', 1, 2015, 4 from dual union
Select 3320, 1, 'Am laufenden Band', 1, 2011, 9 from dual union
Select 3321, 1, 'Am Pranger', 0, 2016, 3 from dual union
Select 3322, 1, 'Am Rande des Gletschers', 2, 2015, 5 from dual union
Select 3323, 1, 'Am Spinnrad', 6, 2017, 4 from dual union
Select 3324, 1, 'AM/FM Music Trivia', 8, 2015, 9 from dual union
Select 3325, 1, 'Amalgimal Zoo', 8, 2016, 9 from dual union
Select 3326, 1, 'The Amanda Knox Board Game', 0, 2015, 8 from dual union
Select 3327, 1, 'Amanecer Zombi', 4, 2017, 5 from dual union
Select 3328, 1, 'Amasser Dragons', 7, 2016, 3 from dual union
Select 3329, 1, 'Amateur Golf', 10, 2015, 8 from dual union
Select 3330, 1, 'Amateurs to Arms!', 8, 2017, 1 from dual union
Select 3331, 1, 'Amaze', 7, 2017, 5 from dual union
Select 3332, 1, 'Amazement', 1, 2017, 1 from dual union
Select 3333, 1, 'The Amazing Adventures of Doctor Dolittle 3D Game', 2, 2016, 6 from dual union
Select 3334, 1, 'The Amazing Adventures of Fibber McGee', 4, 2015, 6 from dual union
Select 3335, 1, 'Amazing Africa: A Cultural Adventure', 2, 2017, 3 from dual union
Select 3336, 1, 'Amazing Animal Trivia Game', 3, 2017, 7 from dual union
Select 3337, 1, 'The Amazing But True Cricket Trivia Game', 6, 2015, 8 from dual union
Select 3338, 1, 'The Amazing Chan and the Chan Clan Game', 4, 2015, 2 from dual union
Select 3339, 1, 'The Amazing Dr. Nim', 2, 2017, 1 from dual union
Select 3340, 1, 'The Amazing Dunninger Mind Reading Game', 7, 2015, 10 from dual union
Select 3341, 1, 'The Amazing Game Board Book', 9, 2017, 4 from dual union
Select 3342, 1, 'Amazing Illusions', 8, 2015, 1 from dual union
Select 3343, 1, 'The Amazing Mammoth Hunt', 2, 2016, 6 from dual union
Select 3344, 1, 'The Amazing Moa Hunt', 4, 2002, 3 from dual union
Select 3345, 1, 'The Amazing Race: DVD Board Game', 3, 2016, 4 from dual union
Select 3346, 1, 'The Amazing Race: The Board Game', 9, 2017, 6 from dual union
Select 3347, 1, 'The Amazing Science Fiction and Horror Trivia Game', 4, 2017, 9 from dual union
Select 3348, 1, 'Amazing Space Venture', 9, 2017, 10 from dual union
Select 3349, 1, 'The Amazing Spider Man Game with the Fantastic Four!', 8, 2017, 5 from dual union
Select 3350, 1, 'The Amazing Spider-Man', 3, 2016, 2 from dual union
Select 3351, 1, 'The Amazing Spider-Man', 3, 2017, 2 from dual union
Select 3352, 1, 'The Amazing Spider-Man Game', 6, 2017, 7 from dual union
Select 3353, 1, 'The Amazing Spider-Man Game', 1, 2015, 3 from dual union
Select 3354, 1, 'The Amazing Spider-Man Labyrinth', 10, 2015, 8 from dual union
Select 3355, 1, 'Amazing Spider-Man Web Spinning Action Game', 6, 2017, 4 from dual union
Select 3356, 1, 'The Amazing State Race Trivia Game', 9, 2016, 8 from dual union
Select 3357, 1, 'Amazing War Stories: Pulp Action in World War II', 7, 2016, 10 from dual union
Select 3358, 1, 'The Amazon Hop', 7, 2015, 4 from dual union
Select 3359, 1, 'Amazon.com Book-ology', 1, 2015, 5 from dual union
Select 3360, 1, 'Amazonas', 5, 2016, 4 from dual union
Select 3361, 1, 'Amazonas', 0, 2016, 7 from dual union
Select 3362, 1, 'Amazonas', 1, 2017, 1 from dual union
Select 3363, 1, 'Amazones', 3, 2016, 5 from dual union
Select 3364, 1, 'Amazons', 0, 2017, 1 from dual union
Select 3365, 1, 'Ambagibus', 9, 2015, 10 from dual union
Select 3366, 1, 'Ambassadeur: Een reis om de wereld in 80 rechten', 4, 2016, 1 from dual union
Select 3367, 1, 'Ambassador: England', 6, 2016, 5 from dual union
Select 3368, 1, 'Amber', 0, 2017, 6 from dual union
Select 3369, 1, 'Amber', 7, 2015, 7 from dual union
Select 3370, 1, 'Amber Road', 9, 2016, 6 from dual union
Select 3371, 1, 'Amber Route', 2, 2015, 4 from dual union
Select 3372, 1, 'The Amberden Affair', 3, 2016, 9 from dual union
Select 3373, 1, 'Ambientolito', 9, 2017, 1 from dual union
Select 3374, 1, 'Ambigram', 7, 2016, 3 from dual union
Select 3375, 1, 'Ambiguity', 0, 2016, 5 from dual union
Select 3376, 1, 'Ambit', 3, 2016, 3 from dual union
Select 3377, 1, 'Ambition', 7, 2017, 1 from dual union
Select 3378, 1, 'Ambition 5000', 0, 2016, 9 from dual union
Select 3379, 1, 'Ambition II', 9, 2017, 3 from dual union
Select 3380, 1, 'Ambitions', 6, 2006, 2 from dual union
Select 3381, 1, 'Ambivalence', 6, 2017, 2 from dual union
Select 3382, 1, 'Ambulance Chase', 3, 2015, 9 from dual union
Select 3383, 1, 'Ambush', 6, 2016, 6 from dual union
Select 3384, 1, 'Ambush', 5, 2015, 6 from dual union
Select 3385, 1, 'Ambush Alley', 1, 2016, 4 from dual union
Select 3386, 1, 'Ambush Alley: Art of War', 5, 2016, 2 from dual union
Select 3387, 1, 'Ambush Alley: Day of the Rangers', 9, 2017, 6 from dual union
Select 3388, 1, 'Ambush Alley: Indian Country', 0, 2015, 3 from dual union
Select 3389, 1, 'Ambush Alley: Lawyers, Guns & Money', 4, 2016, 10 from dual union
Select 3390, 1, 'Ambush Alley: Motor Pool', 6, 2015, 5 from dual union
Select 3391, 1, 'Ambush Alley: Operation – Darkstar', 5, 2016, 6 from dual union
Select 3392, 1, 'Ambush Alley: The Three Block War', 4, 2016, 4 from dual union
Select 3393, 1, 'Ambush Alley: Under the Black Flag', 6, 2015, 5 from dual union
Select 3394, 1, 'Ambush Blitz', 9, 2017, 8 from dual union
Select 3395, 1, 'Ambush Valley', 5, 2015, 7 from dual union
Select 3396, 1, 'Ambush Valley: Vietnam 1965-1975', 6, 2015, 2 from dual union
Select 3397, 1, 'Ambush Z', 6, 2016, 2 from dual union
Select 3398, 1, 'Ambush!', 3, 2016, 5 from dual union
Select 3399, 1, 'Ambush! Move Out!', 3, 2017, 3 from dual union
Select 3400, 1, 'Ambush! Purple Heart', 10, 2017, 9 from dual union
Select 3401, 1, 'Ambush! Silver Star', 3, 2017, 2 from dual union
Select 3402, 1, 'Ambyria: Shroud of the Shadow Demon', 10, 2016, 1 from dual union
Select 3403, 1, 'Ambyria: Starlight & Vengeance', 4, 2017, 9 from dual union
Select 3404, 1, 'AMC Reel Clues', 2, 2017, 6 from dual union
Select 3405, 1, 'Ameboides', 4, 2015, 1 from dual union
Select 3406, 1, 'The Amega Weapon', 0, 2015, 9 from dual union
Select 3407, 1, 'Das Ameisenspiel', 3, 2015, 9 from dual union
Select 3408, 1, 'Amelie, aufgepasst!', 0, 2017, 6 from dual union
Select 3409, 1, 'Amen', 9, 2016, 8 from dual union
Select 3410, 1, 'Amen', 7, 2015, 2 from dual union
Select 3411, 1, 'Amen! Game', 3, 2017, 4 from dual union
Select 3412, 1, 'Amenta', 4, 2017, 5 from dual union
Select 3413, 1, 'America', 4, 2016, 2 from dual union
Select 3414, 1, 'America Falling: The Coming Civil War', 8, 2017, 2 from dual union
Select 3415, 1, 'America in Flames', 6, 2016, 10 from dual union
Select 3416, 1, 'America in the War Card Game', 3, 2017, 2 from dual union
Select 3417, 1, 'America in-a-Box', 0, 2016, 9 from dual union
Select 3418, 1, 'America Rises', 8, 2017, 9 from dual union
Select 3419, 1, 'America the Beautiful: American Art from the White House', 7, 2016, 7 from dual union
Select 3420, 1, 'America Triumphant: The Battle of the Bulge', 4, 2015, 1 from dual union
Select 3421, 1, 'Americas Challenge', 2, 2015, 5 from dual union
Select 3422, 1, 'Americas Crown Stakes', 8, 2017, 4 from dual union
Select 3423, 1, 'Americas Cup', 7, 2017, 7 from dual union
Select 3424, 1, 'The Americas Cup Game', 1, 2017, 10 from dual union
Select 3425, 1, 'Americas Cup: The Game', 8, 2015, 6 from dual union
Select 3426, 1, 'Americas Funniest Home Videos Game', 1, 2017, 8 from dual union
Select 3427, 1, 'Americas History: Multicultural Contributions to America – Colonial Times to Reconstruction', 6, 2016, 4 from dual union
Select 3428, 1, 'Americas History: Multicultural Contributions to America – Modern Age to Contemporary Period', 10, 2017, 6 from dual union
Select 3429, 1, 'Americas Next Top Pimp', 2, 2016, 5 from dual union
Select 3430, 1, 'Americas Spirit', 7, 2015, 3 from dual union
Select 3431, 1, 'America: Kate Smiths Own Game', 0, 2016, 2 from dual union
Select 3432, 1, 'America: The great board game', 3, 2016, 5 from dual union
Select 3433, 1, 'The American Aces', 4, 2017, 4 from dual union
Select 3434, 1, 'American Airlines Travel Game', 7, 2017, 6 from dual union
Select 3435, 1, 'American Art Ditto', 10, 2017, 9 from dual union
Select 3436, 1, 'American Bar', 5, 2017, 7 from dual union
Select 3437, 1, 'American Basketball', 9, 2016, 8 from dual union
Select 3438, 1, 'American Battlelines', 5, 2016, 3 from dual union
Select 3439, 1, 'American Boys', 7, 2015, 10 from dual union
Select 3440, 1, 'American Carrom', 0, 2015, 7 from dual union
Select 3441, 1, 'American Checkers', 10, 2017, 4 from dual union
Select 3442, 1, 'American Chess', 3, 2015, 4 from dual union
Select 3443, 1, 'American Chopper DVD BoardGame', 7, 2015, 7 from dual union
Select 3444, 1, 'The American Civil War', 1, 2015, 7 from dual union
Select 3445, 1, 'The American Civil War', 9, 2015, 4 from dual union
Select 3446, 1, 'American Civil War 1861-1865', 6, 2017, 6 from dual union
Select 3447, 1, 'The American Civil War 1861-1865', 6, 2016, 3 from dual union
Select 3448, 1, 'The American Civil War by Gaslight, Part I:1861-63', 6, 2017, 8 from dual union
Select 3449, 1, 'American Civil War Rules for an Army Level wargame with 2mm or 6mm miniatures', 8, 2017, 1 from dual union
Select 3450, 1, 'American Civil War Rules for an Army-level Wargame with 2mm or 6mm Miniatures', 6, 2017, 2 from dual union
Select 3451, 1, 'American Civil War Wargaming', 7, 2015, 9 from dual union
Select 3452, 1, 'The American Civil War: A Rank & File Supplement', 9, 2015, 6 from dual union
Select 3453, 1, 'American Derby', 10, 2017, 3 from dual union
Select 3454, 1, 'The American Dream Game', 2, 2017, 5 from dual union
Select 3455, 1, 'American Dream Game', 7, 2017, 5 from dual union
Select 3456, 1, 'American Dynasty', 10, 2016, 6 from dual union
Select 3457, 1, 'American Eagle', 3, 2017, 3 from dual union
Select 3458, 1, 'American Fleets: Command at Sea Volume VIII', 8, 2016, 5 from dual union
Select 3459, 1, 'American Football', 2, 2017, 6 from dual union
Select 3460, 1, 'American Football Pursual', 2, 2015, 2 from dual union
Select 3461, 1, 'American Game Hunter', 4, 2016, 5 from dual union
Select 3462, 1, 'The American Game of Business', 6, 2011, 5 from dual union
Select 3463, 1, 'American Geography', 3, 2016, 5 from dual union
Select 3464, 1, 'American Girl 300 Wishes Game', 2, 2016, 1 from dual union
Select 3465, 1, 'American Girl Card Game Collection', 5, 2016, 7 from dual union
Select 3466, 1, 'American Girl Treasures Game', 0, 2017, 7 from dual union
Select 3467, 1, 'The American Girls Collection Card Game', 7, 2016, 2 from dual union
Select 3468, 1, 'The American Girls Game', 1, 2017, 4 from dual union
Select 3469, 1, 'American Gladiators: The Wall', 3, 2017, 1 from dual union
Select 3470, 1, 'The American Goldrush 1849', 10, 2015, 5 from dual union
Select 3471, 1, 'American Heritage Game of the Civil War', 2, 2016, 10 from dual union
Select 3472, 1, 'American Idol All-Star Challenge DVD Game', 9, 2017, 10 from dual union
Select 3473, 1, 'American Idol Board Game', 4, 2017, 7 from dual union
Select 3474, 1, 'American Idol Collectible Card Game', 8, 2015, 1 from dual union
Select 3475, 1, 'American Idols Live Tour 2005: Road to Fame Game – Part One – The Auditions', 2, 2016, 10 from dual union
Select 3476, 1, 'American Illuminati', 0, 2015, 7 from dual union
Select 3477, 1, 'American Indian Map Game', 8, 2016, 4 from dual union
Select 3478, 1, 'American Kennel Club Best in Show Board Game', 7, 2017, 4 from dual union
Select 3479, 1, 'American Kennel Club DVD Board Game', 7, 2016, 4 from dual union
Select 3480, 1, 'American Mah Jongg', 7, 2017, 9 from dual union
Select 3481, 1, 'The American Marksman', 0, 2016, 8 from dual union
Select 3482, 1, 'American Megafauna', 2, 2017, 3 from dual union
Select 3483, 1, 'American Megafauna (second edition) Expansion Set', 5, 2017, 8 from dual union
Select 3484, 1, 'American Monster Hunters', 7, 2007, 6 from dual union
Select 3485, 1, 'American Muscle Challenge: General Motors Edition', 1, 2015, 10 from dual union
Select 3486, 1, 'American Pie', 3, 2017, 9 from dual union
Select 3487, 1, 'American Rails', 0, 2017, 3 from dual union
Select 3488, 1, 'The American Revolution', 4, 2017, 1 from dual union
Select 3489, 1, 'The American Revolution', 2, 2016, 10 from dual union
Select 3490, 1, 'American Revolution', 3, 2017, 8 from dual union
Select 3491, 1, 'The American Revolution 1775-1783', 5, 2016, 1 from dual union
Select 3492, 1, 'American Revolution 20??-The Rebirth of America', 4, 2017, 10 from dual union
Select 3493, 1, 'The American Revolution in the South', 6, 2017, 8 from dual union
Select 3494, 1, 'The American Revolution: Decision in North America', 2, 2015, 2 from dual union
Select 3495, 1, 'American Sports', 4, 2016, 3 from dual union
Select 3496, 1, 'An American Tail: Fievel Goes West', 2, 2017, 8 from dual union
Select 3497, 1, 'American Throttle the Game', 0, 2017, 2 from dual union
Select 3498, 1, 'American Trivia Challenge California Style', 9, 2017, 5 from dual union
Select 3499, 1, 'American Trivia Challenge Texas Style', 4, 2017, 8 from dual union
Select 3500, 1, 'American Trivia Challenge: Tennessee Edition', 6, 2017, 6 from dual union
Select 3501, 1, 'American Trivia Family Edition', 4, 2015, 10 from dual union
Select 3502, 1, 'American Trivia Game: Spirit of the United States', 8, 2016, 1 from dual union
Select 3503, 1, 'American Trivia: Family Edition', 1, 2017, 4 from dual union
Select 3504, 1, 'American Uncivil War', 1, 2017, 2 from dual union
Select 3505, 1, 'American War of Independence Rules', 2, 2016, 6 from dual union
Select 3506, 1, 'American War of Independence Scenarios 1', 6, 2015, 6 from dual union
Select 3507, 1, 'American War of Independence Scenarios 2', 6, 2015, 9 from dual union
Select 3508, 1, 'American War of Independence Scenarios 3', 0, 2017, 1 from dual union
Select 3509, 1, 'American War of Independence: Brandywine', 8, 2017, 4 from dual union
Select 3510, 1, 'American War of Independence: Campaign Set 1 – The Northern Theatre', 5, 2017, 2 from dual union
Select 3511, 1, 'American War of Independence: Campaign Set 2 – The Southern Theatre', 3, 2016, 4 from dual union
Select 3512, 1, 'American War of Independence: Campaign Set 3 – Other Battles', 2, 2016, 2 from dual union
Select 3513, 1, 'American War of Independence: Campaign Set 4 – More Battles', 5, 2015, 6 from dual union
Select 3514, 1, 'American XMAS Dinner', 2, 2016, 9 from dual union
Select 3515, 1, 'Americana', 7, 2016, 3 from dual union
Select 3516, 1, 'Americana Golf Game', 6, 2017, 5 from dual union
Select 3517, 1, 'Americana! Travel Edition', 8, 2015, 5 from dual union
Select 3518, 1, 'Americaopoly', 5, 2017, 7 from dual union
Select 3519, 1, 'Americard U.S.A.', 2, 2016, 5 from dual union
Select 3520, 1, 'Amerigo', 6, 2017, 4 from dual union
Select 3521, 1, 'Amerigo', 7, 2017, 7 from dual union
Select 3522, 1, 'Amerigo Queenie 1: Volcanic Island', 3, 2015, 2 from dual union
Select 3523, 1, 'Amerigo Queenie 2: Cove Island, Bay Island & New Progress Tokens', 8, 2017, 2 from dual union
Select 3524, 1, 'Amerigo Queenie 3: Special Production Buildings and Tokens', 5, 2016, 7 from dual union
Select 3525, 1, 'Amerika', 4, 2015, 1 from dual union
Select 3526, 1, 'Amerika Bomber', 8, 2015, 4 from dual union
Select 3527, 1, 'Ameritocracy', 3, 2016, 7 from dual union
Select 3528, 1, 'Ameritrash', 10, 2015, 6 from dual union
Select 3529, 1, 'Amg! Ice Cream!', 8, 2016, 7 from dual union
Select 3530, 1, 'Ami', 5, 2017, 10 from dual union
Select 3531, 1, 'Amid The Ashes', 2, 2017, 2 from dual union
Select 3532, 1, 'Amida Gyorai', 2, 2016, 5 from dual union
Select 3533, 1, 'Amigos', 2, 2015, 4 from dual union
Select 3534, 1, 'Amigos and Insurrectos: The Philippine Insurrection 1899-1902', 7, 2016, 9 from dual union
Select 3535, 1, 'Amino', 1, 2015, 5 from dual union
Select 3536, 1, 'Amirauté', 7, 2015, 2 from dual union
Select 3537, 1, 'Amis Cube', 5, 2016, 5 from dual union
Select 3538, 1, 'The Amityville Project: Lethargos', 0, 2017, 5 from dual union
Select 3539, 1, 'The Amityville Project: Phobos', 5, 2015, 1 from dual union
Select 3540, 1, 'Ammo Domini: Fight for Europe to the Last Bullet', 6, 2017, 1 from dual union
Select 3541, 1, 'Ammoniten-Rennen', 0, 2017, 5 from dual union
Select 3542, 1, 'Amnesia', 2, 2015, 5 from dual union
Select 3543, 1, 'Amnesia', 10, 2017, 8 from dual union
Select 3544, 1, 'Amnesia: The Short-Term Memory Game.', 2, 2017, 3 from dual union
Select 3545, 1, 'Amoeba', 2, 2015, 10 from dual union
Select 3546, 1, 'Amoeba', 2, 2016, 7 from dual union
Select 3547, 1, 'Amoeba', 3, 2016, 3 from dual union
Select 3548, 1, 'Amoeba Wars', 9, 2016, 6 from dual union
Select 3549, 1, 'Amoebelli', 6, 2015, 8 from dual union
Select 3550, 1, 'Amok', 0, 2017, 9 from dual union
Select 3551, 1, 'Among Nations', 9, 2015, 6 from dual union
Select 3552, 1, 'Among Nobles', 5, 2015, 9 from dual union
Select 3553, 1, 'Among Nobles: Alternate Sibylle of Cleves', 3, 2015, 6 from dual union
Select 3554, 1, 'Among Nobles: Promo Character Cards', 5, 2015, 5 from dual union
Select 3555, 1, 'Among the Stars', 10, 2017, 4 from dual union
Select 3556, 1, 'Among the Stars: Ambassadorial Shuttle', 4, 2015, 8 from dual union
Select 3557, 1, 'Among the Stars: Consulting Firm', 2, 2016, 9 from dual union
Select 3558, 1, 'Among the Stars: Expanding the Alliance', 7, 2016, 4 from dual union
Select 3559, 1, 'Among the Stars: Hythian', 0, 2015, 8 from dual union
Select 3560, 1, 'Among the Stars: Indiegogo Promos', 1, 2016, 4 from dual union
Select 3561, 1, 'Among the Stars: Intelligence Agency', 5, 2016, 4 from dual union
Select 3562, 1, 'Among the Stars: Pre-order Promo Cards', 5, 2015, 9 from dual union
Select 3563, 1, 'Among the Stars: Revival', 1, 2015, 9 from dual union
Select 3564, 1, 'Among the Stars: Revival – Kickstarter Stretch Goals', 10, 2015, 7 from dual union
Select 3565, 1, 'Among the Stars: Section Seal', 5, 2016, 9 from dual union
Select 3566, 1, 'Among the Stars: Space Farms', 7, 2016, 4 from dual union
Select 3567, 1, 'Among the Stars: Stretch Rewards', 8, 2015, 9 from dual union
Select 3568, 1, 'Among the Stars: The Ambassadors', 1, 2016, 5 from dual union
Select 3569, 1, 'Among the Stars: Wiss', 3, 2016, 2 from dual union
Select 3570, 1, 'Among the War Parties: Adventures in the Early Americas', 10, 2017, 3 from dual union
Select 3571, 1, 'Among Thieves', 7, 2016, 7 from dual union
Select 3572, 1, 'Among Us', 7, 2016, 7 from dual union
Select 3573, 1, 'Amontillado', 10, 2016, 8 from dual union
Select 3574, 1, 'Amor und die Herzen', 3, 2015, 5 from dual union
Select 3575, 1, 'Amore', 10, 2016, 10 from dual union
Select 3576, 1, 'Amos Daragon', 9, 2015, 7 from dual union
Select 3577, 1, 'Amos: Čeština v kostce', 7, 2017, 3 from dual union
Select 3578, 1, 'Ampel', 6, 2017, 5 from dual union
Select 3579, 1, 'Die Ampel', 2, 2017, 10 from dual union
Select 3580, 1, 'Amphibious Operation', 10, 2015, 9 from dual union
Select 3581, 1, 'Amphipolis', 0, 2015, 6 from dual union
Select 3582, 1, 'Amphipolis: 424/422 av. J.-C.', 1, 2015, 2 from dual union
Select 3583, 1, 'Amphorae', 7, 2015, 5 from dual union
Select 3584, 1, 'Ampparin Eskari Eläimet', 9, 2017, 2 from dual union
Select 3585, 1, 'Ampparin Eskari Kellonajat', 2, 2017, 1 from dual union
Select 3586, 1, 'Ampparin Eskari Kirjaimet ja sanat', 2, 2016, 10 from dual union
Select 3587, 1, 'Ampparin eskari: Numerot ja laskeminen', 8, 2015, 8 from dual union
Select 3588, 1, 'Ampumahiihtopeli', 1, 2016, 7 from dual union
Select 3589, 1, 'Amro-Dam', 0, 2016, 6 from dual union
Select 3590, 1, 'Amsterdam', 0, 2015, 7 from dual union
Select 3591, 1, 'Amsterdams Gezelschapsspel', 1, 2015, 8 from dual union
Select 3592, 1, 'Amsterdams Zwerfspel', 9, 2016, 9 from dual union
Select 3593, 1, 'Amulets', 2, 2017, 7 from dual union
Select 3594, 1, 'Das Amulett', 10, 2016, 10 from dual union
Select 3595, 1, 'Amun-Re', 3, 2017, 7 from dual union
Select 3596, 1, 'Amundsen: Kappløpet til Sydpolen', 10, 2017, 3 from dual union
Select 3597, 1, 'Amuse Gueule', 10, 2015, 7 from dual union
Select 3598, 1, 'AmuseAmaze', 7, 2016, 6 from dual union
Select 3599, 1, 'Amusement for Beginners in French', 7, 2016, 8 from dual union
Select 3600, 1, 'Amusement in English History', 4, 2016, 9 from dual union
Select 3601, 1, 'Amusement Land', 4, 2017, 4 from dual union
Select 3602, 1, 'An Amusing Game of Horse Show', 1, 2015, 1 from dual union
Select 3603, 1, 'The Amusing Game of Innocence Abroad', 3, 2017, 9 from dual union
Select 3604, 1, 'The Amusing Game of Kilkenny Cats', 5, 2017, 3 from dual union
Select 3605, 1, 'The Amusing Game of Yes or No', 0, 2016, 9 from dual union
Select 3606, 1, 'Amyitis', 8, 2016, 2 from dual union
Select 3607, 1, 'Amyitis: The Palace', 1, 2015, 5 from dual union
Select 3608, 1, 'An Account of Peter Coddles Visit to New York', 5, 2015, 4 from dual union
Select 3609, 1, 'An den Ufern der Elbe', 10, 2017, 8 from dual union
Select 3610, 1, 'An den Ufern des Nils', 4, 2016, 6 from dual union
Select 3611, 1, 'Ana contre Corax', 8, 2016, 6 from dual union
Select 3612, 1, 'Anachronism', 8, 2016, 1 from dual union
Select 3613, 1, 'Anachrony', 8, 2017, 6 from dual union
Select 3614, 1, 'Anachrony: Doomsday Enhancement Pack', 9, 2017, 4 from dual union
Select 3615, 1, 'Anachrony: Exosuit Commander Pack', 1, 2017, 4 from dual union
Select 3616, 1, 'Anaconda', 10, 2015, 4 from dual union
Select 3617, 1, 'Anaconda', 2, 2017, 10 from dual union
Select 3618, 1, 'Anaconda (1864)', 4, 2017, 8 from dual union
Select 3619, 1, 'Anagram', 7, 2015, 5 from dual union
Select 3620, 1, 'Anagram', 10, 2017, 6 from dual union
Select 3621, 1, 'Anagram Poker', 0, 2015, 10 from dual union
Select 3622, 1, 'Anagramania', 9, 2016, 5 from dual union
Select 3623, 1, 'Anagramania Junior Edition', 3, 2017, 5 from dual union
Select 3624, 1, 'Anagramix', 6, 2015, 9 from dual union
Select 3625, 1, 'Anagramme', 7, 2017, 5 from dual union
Select 3626, 1, 'Anagrams', 3, 2017, 9 from dual union
Select 3627, 1, 'Analogies', 0, 2017, 7 from dual union
Select 3628, 1, 'Analysis', 1, 2015, 1 from dual union
Select 3629, 1, 'The Analyst Game', 7, 2016, 5 from dual union
Select 3630, 1, 'Analyze Me', 0, 2016, 8 from dual union
Select 3631, 1, 'Anansi', 5, 2015, 1 from dual union
Select 3632, 1, 'Anansi and the Box of Stories', 3, 2017, 6 from dual union
Select 3633, 1, 'Anarcade Deck Building Game: Raster Red', 10, 2015, 1 from dual union
Select 3634, 1, 'Anarcade Deck Building Game: Vector Blue', 1, 2015, 3 from dual union
Select 3635, 1, 'Anarchy', 3, 2016, 10 from dual union
Select 3636, 1, 'Anarchy', 10, 2017, 5 from dual union
Select 3637, 1, 'The Anarchy', 10, 2015, 9 from dual union
Select 3638, 1, 'Anarchy in the Monarchy', 5, 2016, 4 from dual union
Select 3639, 1, 'Anarchy War', 0, 2016, 2 from dual union
Select 3640, 1, 'Anaryst', 0, 2016, 10 from dual union
Select 3641, 1, 'Anasazi', 1, 2017, 8 from dual union
Select 3642, 1, 'Anastasia', 10, 2017, 8 from dual union
Select 3643, 1, 'Anathema', 10, 2016, 1 from dual union
Select 3644, 1, 'Anatolia 1000 BC', 7, 2016, 8 from dual union
Select 3645, 1, 'Anatolian Fleet', 0, 2015, 6 from dual union
Select 3646, 1, 'An Anatomical Puzzle', 6, 2015, 5 from dual union
Select 3647, 1, 'Anatomix', 10, 2017, 1 from dual union
Select 3648, 1, 'Anatomy Rummy', 2, 2016, 5 from dual union
Select 3649, 1, 'Anaxi', 9, 2016, 1 from dual union
Select 3650, 1, 'Anaxis', 6, 2017, 2 from dual union
Select 3651, 1, 'Ancestors', 6, 2016, 9 from dual union
Select 3652, 1, 'Anchor', 3, 2017, 4 from dual union
Select 3653, 1, 'Anchorage', 4, 2017, 7 from dual union
Select 3654, 1, 'Ancient & Medieval Wargaming', 4, 2016, 8 from dual union
Select 3655, 1, 'Ancient Aliens: Creators of Civilizations', 8, 2017, 8 from dual union
Select 3656, 1, 'The Ancient Americas: Cities of Promise', 6, 2016, 5 from dual union
Select 3657, 1, 'Ancient Battlefields', 0, 2017, 5 from dual union
Select 3658, 1, 'Ancient Battles Deluxe', 0, 2016, 1 from dual union
Select 3659, 1, 'Ancient Battles Deluxe  Expansion Kit 4: The Art of War', 1, 2016, 10 from dual union
Select 3660, 1, 'Ancient Battles Deluxe Expansion Kit 1: Elephants at War', 10, 2015, 3 from dual union
Select 3661, 1, 'Ancient Battles Deluxe Expansion Kit 2: Hells Horsemen', 2, 2016, 10 from dual union
Select 3662, 1, 'Ancient Battles Deluxe Expansion Kit 3: Strange Ordnance', 5, 2016, 2 from dual union
Select 3663, 1, 'Ancient Battles Deluxe Expansion Kit 5.1: Way of the Samurai', 4, 2016, 5 from dual union
Select 3664, 1, 'Ancient Battles Deluxe Expansion Kit 5: Design Your Own', 2, 2017, 8 from dual union
Select 3665, 1, 'Ancient Battles for Wargamers', 6, 2016, 3 from dual union
Select 3666, 1, 'Ancient Board Games', 2, 2016, 6 from dual union
Select 3667, 1, 'Ancient Civilizations of the Inner Sea', 7, 2016, 7 from dual union
Select 3668, 1, 'Ancient Combat', 7, 2016, 2 from dual union
Select 3669, 1, 'Ancient Conflict Treasure Chest', 4, 2016, 3 from dual union
Select 3670, 1, 'Ancient Conquest', 5, 2015, 7 from dual union
Select 3671, 1, 'Ancient Conquest II', 1, 2017, 4 from dual union
Select 3672, 1, 'Ancient Construct', 3, 2016, 6 from dual union
Select 3673, 1, 'Ancient Egypt Go Fish for Art', 0, 2017, 6 from dual union
Select 3674, 1, 'Ancient Empires', 5, 2017, 1 from dual union
Select 3675, 1, 'Ancient Empires: A Simulation of the Wars of Antiquity', 5, 2015, 2 from dual union
Select 3676, 1, 'Ancient Finds', 8, 2016, 10 from dual union
Select 3677, 1, 'Ancient Foes 2', 3, 2017, 1 from dual union
Select 3678, 1, 'Ancient Fortress Siege', 10, 2015, 2 from dual union
Select 3679, 1, 'Ancient Game of GOMI', 1, 2016, 6 from dual union
Select 3680, 1, 'Ancient Generals', 10, 2016, 6 from dual union
Select 3681, 1, 'Ancient Greece (fan expansion to Ticket to Ride)', 6, 2015, 2 from dual union
Select 3682, 1, 'Ancient Historical Battles', 8, 2017, 2 from dual union
Select 3683, 1, 'Ancient Historical Battles, Volume 2', 6, 2016, 6 from dual union
Select 3684, 1, 'The Ancient Magnetic travel set', 9, 2017, 7 from dual union
Select 3685, 1, 'Ancient Naval Wargames Rules: 500 BC to AD 500', 5, 2015, 8 from dual union
Select 3686, 1, 'The Ancient Pirates of Pernia', 10, 2016, 10 from dual union
Select 3687, 1, 'Ancient Rules', 9, 2017, 6 from dual union
Select 3688, 1, 'Ancient Sands', 8, 2017, 1 from dual union
Select 3689, 1, 'Ancient Sicily (fan expansion to Ticket to Ride)', 5, 2015, 10 from dual union
Select 3690, 1, 'Ancient Skirmish', 4, 2016, 4 from dual union
Select 3691, 1, 'Ancient Terrible Things', 4, 2017, 3 from dual union
Select 3692, 1, 'Ancient Terrible Things: The Lost Charter', 5, 2015, 2 from dual union
Select 3693, 1, 'Ancient Terrible Things: Undead Wizard Promo Card', 3, 2015, 3 from dual union
Select 3694, 1, 'Ancient Warfare', 8, 2016, 5 from dual union
Select 3695, 1, 'Ancient Warfare', 8, 2015, 1 from dual union
Select 3696, 1, 'Ancient Warfare', 7, 2015, 5 from dual union
Select 3697, 1, 'Ancient Warfare', 3, 2016, 2 from dual union
Select 3698, 1, 'Ancient Warfare Redux', 4, 2017, 6 from dual union
Select 3699, 1, 'The Ancient Wargame', 7, 2017, 2 from dual union
Select 3700, 1, 'Ancient Wargame Rules', 5, 2016, 9 from dual union
Select 3701, 1, 'Ancient Wargaming', 2, 2016, 4 from dual union
Select 3702, 1, 'The Ancient World', 5, 2015, 3 from dual union
Select 3703, 1, 'The Ancient World: Citadel of Ivories Promo', 5, 2015, 9 from dual union
Select 3704, 1, 'The Ancient World: Kickstarter Promo Cards', 1, 2015, 4 from dual union
Select 3705, 1, 'The Ancient World: The Frog God Statue Promo', 6, 2016, 10 from dual union
Select 3706, 1, 'The Ancient World: The Sacred Cave', 7, 2016, 2 from dual union
Select 3707, 1, 'Ancients', 10, 2016, 7 from dual union
Select 3708, 1, 'Ancients', 10, 2017, 1 from dual union
Select 3709, 1, 'Ancients D6', 1, 2015, 10 from dual union
Select 3710, 1, 'Ancients I', 6, 2015, 3 from dual union
Select 3711, 1, 'Ancients II', 9, 2017, 9 from dual union
Select 3712, 1, 'Ancients: Thapsos & Alexandria', 5, 2015, 4 from dual union
Select 3713, 1, 'Ancona', 9, 2016, 8 from dual union
Select 3714, 1, 'And a Bottle of Rum', 4, 2015, 9 from dual union
Select 3715, 1, 'And Away', 3, 2015, 6 from dual union
Select 3716, 1, 'And Continually Wear the Blue', 3, 2016, 3 from dual union
Select 3717, 1, 'And Now For Something Completely Different... The Board Game', 4, 2015, 2 from dual union
Select 3718, 1, '...And One for All!', 8, 2015, 10 from dual union
Select 3719, 1, '...And One for All! Supplement 1: Additional Rules Variants & Options', 10, 2015, 3 from dual union
Select 3720, 1, 'And Sometimes Y', 3, 2015, 9 from dual union
Select 3721, 1, 'And the Pitch', 3, 2017, 6 from dual union
Select 3722, 1, 'And the Transport Empire', 10, 2015, 5 from dual union
Select 3723, 1, 'And the Winner is...', 7, 2016, 2 from dual union
Select 3724, 1, 'And Then There Were None (Ten Little Indians)', 4, 2015, 3 from dual union
Select 3725, 1, '...and then, we held hands.', 8, 2015, 5 from dual union
Select 3726, 1, 'And Theyre Off!', 8, 2015, 6 from dual union
Select 3727, 1, 'Andale! Andale!', 6, 2017, 7 from dual union
Select 3728, 1, 'Andalusia', 2, 2016, 4 from dual union
Select 3729, 1, 'Andaman Fleet', 5, 2016, 3 from dual union
Select 3730, 1, 'Andantino', 9, 2015, 6 from dual union
Select 3731, 1, 'Andartes', 4, 2015, 3 from dual union
Select 3732, 1, 'Andean Abyss', 6, 2015, 9 from dual union
Select 3733, 1, 'Andedammen', 10, 2015, 3 from dual union
Select 3734, 1, 'Andere Länder, Andere Sitten!', 6, 2015, 3 from dual union
Select 3735, 1, 'Andersonville', 10, 2015, 8 from dual union
Select 3736, 1, 'Andes Fleet', 0, 2015, 3 from dual union
Select 3737, 1, 'Andor: Les Présents de lArbre des Chants', 6, 2015, 9 from dual union
Select 3738, 1, 'Andoria', 7, 2017, 4 from dual union
Select 3739, 1, 'Andoria Battlefields', 6, 2003, 9 from dual union
Select 3740, 1, 'Andrew Zimmerns Bizarre Game', 0, 2016, 4 from dual union
Select 3741, 1, 'Android', 2, 2016, 2 from dual union
Select 3742, 1, 'Android: "A Golem, To Use the Vernacular"', 3, 2016, 7 from dual union
Select 3743, 1, 'Android: "See this? See this? See this? Thats right."', 10, 2016, 10 from dual union
Select 3744, 1, 'Android: "Were tracking you in free fall"', 10, 2016, 1 from dual union
Select 3745, 1, 'Android: Infiltration', 8, 2015, 9 from dual union
Select 3746, 1, 'Android: Mainframe', 8, 2016, 8 from dual union
Select 3747, 1, 'Android: Netrunner', 1, 2017, 1 from dual union
Select 3748, 1, 'Android: Netrunner – 23 Seconds', 8, 2016, 4 from dual union
Select 3749, 1, 'Android: Netrunner – A Study in Static', 8, 2015, 10 from dual union
Select 3750, 1, 'Android: Netrunner – All That Remains', 8, 2016, 6 from dual union
Select 3751, 1, 'Android: Netrunner – Blood and Water', 6, 2017, 9 from dual union
Select 3752, 1, 'Android: Netrunner – Blood Money', 9, 2016, 5 from dual union
Select 3753, 1, 'Android: Netrunner – Breaker Bay', 9, 2015, 4 from dual union
Select 3754, 1, 'Android: Netrunner – Business First', 4, 2016, 10 from dual union
Select 3755, 1, 'Android: Netrunner – Chrome City', 4, 2015, 2 from dual union
Select 3756, 1, 'Android: Netrunner – Creation and Control', 2, 2015, 2 from dual union
Select 3757, 1, 'Android: Netrunner – Cyber Exodus', 7, 2017, 5 from dual union
Select 3758, 1, 'Android: Netrunner – Daedalus Complex', 0, 2017, 8 from dual union
Select 3759, 1, 'Android: Netrunner – Data and Destiny', 8, 2015, 10 from dual union
Select 3760, 1, 'Android: Netrunner – Democracy and Dogma', 4, 2016, 1 from dual union
Select 3761, 1, 'Android: Netrunner – Double Time', 8, 2016, 1 from dual union
Select 3762, 1, 'Android: Netrunner – Earths Scion', 3, 2017, 2 from dual union
Select 3763, 1, 'Android: Netrunner – Escalation', 7, 2016, 2 from dual union
Select 3764, 1, 'Android: Netrunner – Fear and Loathing', 3, 2017, 8 from dual union
Select 3765, 1, 'Android: Netrunner – Fear the Masses', 9, 2016, 8 from dual union
Select 3766, 1, 'Android: Netrunner – First Contact', 9, 2016, 6 from dual union
Select 3767, 1, 'Android: Netrunner – Future Proof', 1, 2015, 4 from dual union
Select 3768, 1, 'Android: Netrunner – Honor and Profit', 5, 2016, 10 from dual union
Select 3769, 1, 'Android: Netrunner – Humanitys Shadow', 9, 2016, 8 from dual union
Select 3770, 1, 'Android: Netrunner – Intervention', 9, 2016, 2 from dual union
Select 3771, 1, 'Android: Netrunner – Kala Ghoda', 8, 2016, 7 from dual union
Select 3772, 1, 'Android: Netrunner – Mala Tempora', 2, 2016, 1 from dual union
Select 3773, 1, 'Android: Netrunner – Martial Law', 5, 2016, 5 from dual union
Select 3774, 1, 'Android: Netrunner – Old Hollywood', 7, 2015, 2 from dual union
Select 3775, 1, 'Android: Netrunner – Opening Moves', 6, 2016, 1 from dual union
Select 3776, 1, 'Android: Netrunner – Order and Chaos', 9, 2015, 6 from dual union
Select 3777, 1, 'Android: Netrunner – Quorum', 3, 2017, 4 from dual union
Select 3778, 1, 'Android: Netrunner – Salsette Island', 8, 2016, 8 from dual union
Select 3779, 1, 'Android: Netrunner – Second Thoughts', 0, 2017, 9 from dual union
Select 3780, 1, 'Android: Netrunner – Station One', 10, 2017, 6 from dual union
Select 3781, 1, 'Android: Netrunner – Terminal Directive', 6, 2017, 1 from dual union
Select 3782, 1, 'Android: Netrunner – The Liberated Mind', 5, 2016, 10 from dual union
Select 3783, 1, 'Android: Netrunner – The Source', 6, 2016, 1 from dual union
Select 3784, 1, 'Android: Netrunner – The Spaces Between', 9, 2016, 5 from dual union
Select 3785, 1, 'Android: Netrunner – The Underway', 2, 2015, 9 from dual union
Select 3786, 1, 'Android: Netrunner – The Universe of Tomorrow', 9, 2015, 8 from dual union
Select 3787, 1, 'Android: Netrunner – The Valley', 2, 2015, 8 from dual union
Select 3788, 1, 'Android: Netrunner – Trace Amount', 7, 2017, 8 from dual union
Select 3789, 1, 'Android: Netrunner – True Colors', 3, 2016, 8 from dual union
Select 3790, 1, 'Android: Netrunner – Up and Over', 6, 2017, 4 from dual union
Select 3791, 1, 'Android: Netrunner – Upstalk', 10, 2016, 2 from dual union
Select 3792, 1, 'Android: Netrunner – What Lies Ahead', 4, 2017, 7 from dual union
Select 3793, 1, 'Android: Netrunner – World Championships 2015: Engineering the Future', 7, 2016, 1 from dual union
Select 3794, 1, 'Android: Netrunner – World Championships 2015: Valencia', 5, 2016, 8 from dual union
Select 3795, 1, 'Androids and Belt Bums', 8, 2015, 6 from dual union
Select 3796, 1, 'Andromeda', 4, 2017, 5 from dual union
Select 3797, 1, 'Andromeda', 1, 2015, 10 from dual union
Select 3798, 1, 'Andromeda', 8, 2016, 10 from dual union
Select 3799, 1, 'Andromeda', 10, 2015, 8 from dual union
Select 3800, 1, 'Andromeda Fight League', 10, 2015, 10 from dual union
Select 3801, 1, 'Andromeda Foundation Official Battle Manual', 9, 2015, 8 from dual union
Select 3802, 1, 'Andromeda traders', 5, 2017, 1 from dual union
Select 3803, 1, 'Anduine: First City in the West', 2, 2017, 5 from dual union
Select 3804, 1, 'The Andy Griffith Show Trivia Game', 7, 2017, 9 from dual union
Select 3805, 1, 'The Andy Griffith Show: Mayberry Mania Game', 1, 2015, 6 from dual union
Select 3806, 1, 'Andy Gump and his Game', 2, 2017, 10 from dual union
Select 3807, 1, 'Andy Pandy and Teddy are Fast Asleep', 9, 2015, 2 from dual union
Select 3808, 1, 'Aneras Arena', 5, 2016, 4 from dual union
Select 3809, 1, 'Aneras Arena uitbreiding #1', 9, 2015, 3 from dual union
Select 3810, 1, 'Aneras Arena uitbreiding #2', 7, 2015, 5 from dual union
Select 3811, 1, 'Anex-A-Gram', 9, 2015, 8 from dual union
Select 3812, 1, 'Angel', 9, 2017, 9 from dual union
Select 3813, 1, 'Angel Chess', 2, 2017, 9 from dual union
Select 3814, 1, 'Angel in the Attic', 2, 2017, 1 from dual union
Select 3815, 1, 'Angel: The Board Game', 2, 2015, 8 from dual union
Select 3816, 1, 'Angela Cartwright Buttons n Bows Game', 2, 2015, 10 from dual union
Select 3817, 1, 'Angelina Ballerina Dance With Me Game', 7, 2015, 6 from dual union
Select 3818, 1, 'Angelina Ballerinas Big Performance Game', 1, 2017, 3 from dual union
Select 3819, 1, 'Angelina Ballerinas Dancing Game', 9, 2015, 2 from dual union
Select 3820, 1, 'Angelinas Dress-Up Card Game', 8, 2016, 8 from dual union
Select 3821, 1, 'Angels and Demons: Battle for Humanity', 4, 2015, 1 from dual union
Select 3822, 1, 'Angels One Five', 3, 2016, 5 from dual union
Select 3823, 1, 'Angels Two-Zero', 0, 2017, 7 from dual union
Select 3824, 1, 'Angels vs Devils', 9, 2016, 10 from dual union
Select 3825, 1, 'Angels: Michaels War', 8, 2015, 8 from dual union
Select 3826, 1, 'Die Angelschlacht 1944', 6, 2017, 10 from dual union
Select 3827, 1, 'Angelspaß', 8, 2017, 2 from dual union
Select 3828, 1, 'The Anger Control Game', 5, 2016, 1 from dual union
Select 3829, 1, 'Anger Management Game', 10, 2015, 8 from dual union
Select 3830, 1, 'The Anger Solution Card Game', 2, 2015, 3 from dual union
Select 3831, 1, 'The Anger Solution Game', 4, 2017, 6 from dual union
Select 3832, 1, 'Angeschmiert', 1, 2015, 2 from dual union
Select 3833, 1, 'Angkor', 6, 2015, 2 from dual union
Select 3834, 1, 'Angle Tangle', 9, 2017, 4 from dual union
Select 3835, 1, 'Anglers Trivia Tournament', 3, 2017, 8 from dual union
Select 3836, 1, 'Angleside School Adventure: A Measurement Game', 2, 2017, 2 from dual union
Select 3837, 1, 'Anglethon', 8, 2015, 6 from dual union
Select 3838, 1, 'Anglin Action', 2, 2017, 8 from dual union
Select 3839, 1, 'Angling', 4, 2015, 2 from dual union
Select 3840, 1, 'Angola', 5, 2016, 10 from dual union
Select 3841, 1, 'Angola', 8, 2017, 6 from dual union
Select 3842, 1, 'Angola', 2, 2016, 3 from dual union
Select 3843, 1, 'Angriff auf die Burg!', 7, 2016, 4 from dual union
Select 3844, 1, 'Angriff auf Moskau', 4, 2017, 8 from dual union
Select 3845, 1, 'Angriff!', 10, 2016, 4 from dual union
Select 3846, 1, 'Angry Birds Go! Jenga: Trophy Cup Challenge', 7, 2016, 8 from dual union
Select 3847, 1, 'Angry Birds Pig Island Smashdown', 9, 2016, 9 from dual union
Select 3848, 1, 'Angry Birds: Action Game', 3, 2017, 5 from dual union
Select 3849, 1, 'Angry Birds: Happy Holidays', 6, 2017, 1 from dual union
Select 3850, 1, 'Angry Birds: Knock on Wood', 0, 2016, 1 from dual union
Select 3851, 1, 'Angry Birds: Mega Fling', 5, 2016, 7 from dual union
Select 3852, 1, 'Angry Birds: Mega Smash game', 7, 2015, 10 from dual union
Select 3853, 1, 'Angry Birds: On Thin Ice', 10, 2016, 2 from dual union
Select 3854, 1, 'Angry Birds: Space', 2, 2017, 3 from dual union
Select 3855, 1, 'Angry Birds: Space – Planet Block Version', 0, 2015, 4 from dual union
Select 3856, 1, 'Angry Birds: Spring is in the Air', 3, 2017, 8 from dual union
Select 3857, 1, 'Angry Birds: Star Wars – At-At Attack Battle Game', 2, 2017, 3 from dual union
Select 3858, 1, 'Angry Birds: Star Wars – Darth Vaders Lightsaber Battle Game', 2, 2015, 1 from dual union
Select 3859, 1, 'Angry Birds: Star Wars – Fight on Tatooine Battle Game', 9, 2015, 6 from dual union
Select 3860, 1, 'Angry Birds: Star Wars – Jabbas Palace Battle Game', 8, 2016, 3 from dual union
Select 3861, 1, 'Angry Birds: Star Wars – Jenga Bespin Battle Game', 10, 2017, 8 from dual union
Select 3862, 1, 'Angry Birds: Star Wars – Jenga Death Star Game', 9, 2016, 5 from dual union
Select 3863, 1, 'Angry Birds: Star Wars – Jenga Hoth Battle Game', 9, 2017, 9 from dual union
Select 3864, 1, 'Angry Birds: Star Wars – Jenga Rise of Darth Vader Game', 10, 2017, 7 from dual union
Select 3865, 1, 'Angry Birds: Star Wars – Jenga Tatooine Battle Game', 10, 2016, 4 from dual union
Select 3866, 1, 'Angry Birds: Star Wars – Jenga TIE Fighter Game', 4, 2015, 4 from dual union
Select 3867, 1, 'Angry Birds: Star Wars – Millennium Falcon Bounce Game', 9, 2017, 2 from dual union
Select 3868, 1, 'Angry Birds: Star Wars – Telepods Star Destroyer Set', 10, 2015, 8 from dual union
Select 3869, 1, 'Angry Birds: The Card Game', 1, 2017, 5 from dual union
Select 3870, 1, 'Angry Birds: Western Round-Up', 3, 2016, 2 from dual union
Select 3871, 1, 'Angry Dice', 6, 2016, 5 from dual union
Select 3872, 1, 'Angry Granny', 9, 2016, 4 from dual union
Select 3873, 1, 'The Angry Monster Machine', 10, 2017, 4 from dual union
Select 3874, 1, 'Angry Pavement', 0, 2015, 8 from dual union
Select 3875, 1, 'Angry Sheep', 7, 2017, 4 from dual union
Select 3876, 1, 'Angry Town: The Super Ultra Violent Childrens Card Game For Adults', 0, 2016, 10 from dual union
Select 3877, 1, 'Angulus', 5, 2017, 10 from dual union
Select 3878, 1, 'Angus: Batalhas Medievais', 2, 2016, 1 from dual union
Select 3879, 1, 'Ani-Gram-It', 9, 2016, 3 from dual union
Select 3880, 1, 'Ani-gram-it To Go', 6, 2017, 1 from dual union
Select 3881, 1, 'Ani-Mayhem', 2, 2016, 6 from dual union
Select 3882, 1, 'Anima', 1, 2017, 3 from dual union
Select 3883, 1, 'Anima Tactics', 8, 2016, 9 from dual union
Select 3884, 1, 'Anima Tactics Rulebook Saga I & II: Awakening & Rise', 6, 2015, 8 from dual union
Select 3885, 1, 'Anima Tactics: Adolf Brunner', 0, 2015, 6 from dual union
Select 3886, 1, 'Anima Tactics: Ahriman, Lord of Darkness', 3, 2015, 3 from dual union
Select 3887, 1, 'Anima Tactics: Akio Kageshima', 9, 2016, 5 from dual union
Select 3888, 1, 'Anima Tactics: Al-Djinn', 6, 2016, 6 from dual union
Select 3889, 1, 'Anima Tactics: Alessa Raincross', 10, 2015, 2 from dual union
Select 3890, 1, 'Anima Tactics: Alis Testarossa', 6, 2016, 6 from dual union
Select 3891, 1, 'Anima Tactics: Alius, Holy Soldier', 2, 2015, 1 from dual union
Select 3892, 1, 'Anima Tactics: Anna Never', 5, 2017, 1 from dual union
Select 3893, 1, 'Anima Tactics: Aoi Inukai', 0, 2016, 10 from dual union
Select 3894, 1, 'Anima Tactics: Arias Vayu', 4, 2015, 1 from dual union
Select 3895, 1, 'Anima Tactics: Arkham', 5, 2017, 2 from dual union
Select 3896, 1, 'Anima Tactics: Azriel', 4, 2015, 4 from dual union
Select 3897, 1, 'Anima Tactics: Azur Agent', 3, 2015, 2 from dual union
Select 3898, 1, 'Anima Tactics: Bael', 6, 2016, 1 from dual union
Select 3899, 1, 'Anima Tactics: Belith', 4, 2015, 5 from dual union
Select 3900, 1, 'Anima Tactics: Bella & Aqua', 1, 2017, 2 from dual union
Select 3901, 1, 'Anima Tactics: Black Sun Box Set', 5, 2017, 5 from dual union
Select 3902, 1, 'Anima Tactics: Celia', 6, 2017, 1 from dual union
Select 3903, 1, 'Anima Tactics: Cenette', 8, 2016, 2 from dual union
Select 3904, 1, 'Anima Tactics: Cennette', 6, 2016, 7 from dual union
Select 3905, 1, 'Anima Tactics: Church Agent', 5, 2016, 7 from dual union
Select 3906, 1, 'Anima Tactics: Claire Adelheid', 1, 2015, 10 from dual union
Select 3907, 1, 'Anima Tactics: Claude Valmore', 8, 2015, 9 from dual union
Select 3908, 1, 'Anima Tactics: Clover', 6, 2015, 6 from dual union
Select 3909, 1, 'Anima Tactics: Cordelia Rosalind', 8, 2017, 8 from dual union
Select 3910, 1, 'Anima Tactics: Covel', 5, 2016, 9 from dual union
Select 3911, 1, 'Anima Tactics: Damaris', 5, 2017, 9 from dual union
Select 3912, 1, 'Anima Tactics: Damien', 2, 2017, 1 from dual union
Select 3913, 1, 'Anima Tactics: Danielle Meris', 3, 2017, 10 from dual union
Select 3914, 1, 'Anima Tactics: Dark Faction Starter', 6, 2015, 6 from dual union
Select 3915, 1, 'Anima Tactics: Deadmoon', 0, 2017, 10 from dual union
Select 3916, 1, 'Anima Tactics: Deimon', 10, 2016, 1 from dual union
Select 3917, 1, 'Anima Tactics: Dereck Shezard', 3, 2017, 8 from dual union
Select 3918, 1, 'Anima Tactics: Dinah', 7, 2017, 2 from dual union
Select 3919, 1, 'Anima Tactics: Drake', 10, 2017, 3 from dual union
Select 3920, 1, 'Anima Tactics: Duncan Reid', 2, 2017, 4 from dual union
Select 3921, 1, 'Anima Tactics: Elhaim, Maiden of Light', 2, 2015, 5 from dual union
Select 3922, 1, 'Anima Tactics: Empire Agent', 8, 2015, 3 from dual union
Select 3923, 1, 'Anima Tactics: Erika', 7, 2015, 10 from dual union
Select 3924, 1, 'Anima Tactics: Faust Orbatos', 8, 2015, 7 from dual union
Select 3925, 1, 'Anima Tactics: Feng Yi', 0, 2016, 10 from dual union
Select 3926, 1, 'Anima Tactics: Frederick Adler', 2, 2015, 6 from dual union
Select 3927, 1, 'Anima Tactics: Frey', 5, 2015, 2 from dual union
Select 3928, 1, 'Anima Tactics: Freya', 5, 2016, 10 from dual union
Select 3929, 1, 'Anima Tactics: Gemini', 8, 2016, 2 from dual union
Select 3930, 1, 'Anima Tactics: Genma', 8, 2017, 6 from dual union
Select 3931, 1, 'Anima Tactics: Goethia', 6, 2016, 3 from dual union
Select 3932, 1, 'Anima Tactics: Grey Rhodes', 8, 2017, 2 from dual union
Select 3933, 1, 'Anima Tactics: Griever', 10, 2016, 6 from dual union
Select 3934, 1, 'Anima Tactics: Grimorium Verum', 10, 2016, 8 from dual union
Select 3935, 1, 'Anima Tactics: Harod', 6, 2017, 7 from dual union
Select 3936, 1, 'Anima Tactics: Hecatondies Zero Sigma', 9, 2017, 7 from dual union
Select 3937, 1, 'Anima Tactics: Hel', 3, 2016, 8 from dual union
Select 3938, 1, 'Anima Tactics: High Arbiter Aizen', 0, 2016, 8 from dual union
Select 3939, 1, 'Anima Tactics: High Arbiter Alastor', 6, 2016, 3 from dual union
Select 3940, 1, 'Anima Tactics: High Arbiter Arkeid', 4, 2015, 2 from dual union
Select 3941, 1, 'Anima Tactics: High Saint Elienai', 5, 2016, 5 from dual union
Select 3942, 1, 'Anima Tactics: Hiro', 0, 2017, 4 from dual union
Select 3943, 1, 'Anima Tactics: Ignis, Fire Demon', 4, 2015, 4 from dual union
Select 3944, 1, 'Anima Tactics: Iosara', 10, 2016, 4 from dual union
Select 3945, 1, 'Anima Tactics: Janiel', 2, 2016, 3 from dual union
Select 3946, 1, 'Anima Tactics: Janus Faith', 7, 2015, 2 from dual union
Select 3947, 1, 'Anima Tactics: Jerome', 0, 2015, 10 from dual union
Select 3948, 1, 'Anima Tactics: Jiang Pao', 7, 2017, 4 from dual union
Select 3949, 1, 'Anima Tactics: Juliette Kaime', 5, 2017, 6 from dual union
Select 3950, 1, 'Anima Tactics: Justina', 1, 2017, 10 from dual union
Select 3951, 1, 'Anima Tactics: Kagemaru', 9, 2015, 9 from dual union
Select 3952, 1, 'Anima Tactics: Kairos', 2, 2017, 10 from dual union
Select 3953, 1, 'Anima Tactics: Kerberos', 0, 2015, 6 from dual union
Select 3954, 1, 'Anima Tactics: Khaine DLacreu', 3, 2015, 5 from dual union
Select 3955, 1, 'Anima Tactics: Kingsley Warlock', 8, 2016, 10 from dual union
Select 3956, 1, 'Anima Tactics: Kira', 4, 2015, 4 from dual union
Select 3957, 1, 'Anima Tactics: Kirsten', 6, 2016, 6 from dual union
Select 3958, 1, 'Anima Tactics: Konosuke', 6, 2015, 6 from dual union
Select 3959, 1, 'Anima Tactics: Kudoi', 7, 2016, 3 from dual union
Select 3960, 1, 'Anima Tactics: Kujaku Hime', 0, 2016, 1 from dual union
Select 3961, 1, 'Anima Tactics: Kyler', 9, 2015, 5 from dual union
Select 3962, 1, 'Anima Tactics: Legacy Of Solomon', 2, 2015, 3 from dual union
Select 3963, 1, 'Anima Tactics: Li Long', 9, 2017, 6 from dual union
Select 3964, 1, 'Anima Tactics: Light Faction Starter', 1, 2017, 6 from dual union
Select 3965, 1, 'Anima Tactics: Lilian Virgil', 7, 2017, 2 from dual union
Select 3966, 1, 'Anima Tactics: Lilith', 1, 2017, 9 from dual union
Select 3967, 1, 'Anima Tactics: Lin Pao', 3, 2015, 6 from dual union
Select 3968, 1, 'Anima Tactics: Lorenzo', 2, 2015, 5 from dual union
Select 3969, 1, 'Anima Tactics: Lostaroth Marchosias', 9, 2015, 7 from dual union
Select 3970, 1, 'Anima Tactics: Luzbell', 6, 2016, 7 from dual union
Select 3971, 1, 'Anima Tactics: Lynn Steiner', 7, 2015, 3 from dual union
Select 3972, 1, 'Anima Tactics: Macbeth', 2, 2015, 5 from dual union
Select 3973, 1, 'Anima Tactics: Maria', 4, 2017, 4 from dual union
Select 3974, 1, 'Anima Tactics: Maximo Ligori', 1, 2016, 1 from dual union
Select 3975, 1, 'Anima Tactics: Momiji', 6, 2016, 10 from dual union
Select 3976, 1, 'Anima Tactics: Morrigan', 7, 2016, 3 from dual union
Select 3977, 1, 'Anima Tactics: Nahimana', 6, 2015, 6 from dual union
Select 3978, 1, 'Anima Tactics: Natures Wrath', 4, 2016, 5 from dual union
Select 3979, 1, 'Anima Tactics: Nero', 9, 2017, 2 from dual union
Select 3980, 1, 'Anima Tactics: Odin Goldsmith', 6, 2016, 7 from dual union
Select 3981, 1, 'Anima Tactics: Ophiel', 5, 2016, 1 from dual union
Select 3982, 1, 'Anima Tactics: Rayne', 7, 2016, 3 from dual union
Select 3983, 1, 'Anima Tactics: Raziel Archetypum', 4, 2016, 3 from dual union
Select 3984, 1, 'Anima Tactics: Raziel Nk-X', 5, 2015, 7 from dual union
Select 3985, 1, 'Anima Tactics: Reindhold', 1, 2017, 5 from dual union
Select 3986, 1, 'Anima Tactics: Romeo Exxet', 6, 2015, 7 from dual union
Select 3987, 1, 'Anima Tactics: Saint Astraege', 3, 2017, 3 from dual union
Select 3988, 1, 'Anima Tactics: Saint Hazael', 2, 2015, 9 from dual union
Select 3989, 1, 'Anima Tactics: Samael Agent', 8, 2017, 5 from dual union
Select 3990, 1, 'Anima Tactics: Samiel, The Black Lion', 2, 2016, 5 from dual union
Select 3991, 1, 'Anima Tactics: Sarah Reinhold', 8, 2015, 6 from dual union
Select 3992, 1, 'Anima Tactics: Shinigami Ayl', 4, 2015, 3 from dual union
Select 3993, 1, 'Anima Tactics: Shinobi', 4, 2015, 5 from dual union
Select 3994, 1, 'Anima Tactics: Sophia Ilmora', 6, 2017, 5 from dual union
Select 3995, 1, 'Anima Tactics: Takanosuke', 1, 2015, 5 from dual union
Select 3996, 1, 'Anima Tactics: The Colonel', 4, 2017, 5 from dual union
Select 3997, 1, 'Anima Tactics: Theurgia', 5, 2015, 4 from dual union
Select 3998, 1, 'Anima Tactics: Tiamat', 4, 2016, 2 from dual union
Select 3999, 1, 'Anima Tactics: Tsubasa Kurokami', 10, 2016, 6 from dual union
Select 4000, 1, 'Anima Tactics: Type 012 Hunter', 1, 2015, 5 from dual ) d
WHERE NOT EXISTS (SELECT product_id from product where product_id = 3001 ) ;

INSERT INTO product (product_id, active, name, quantity, year_published, category_id)
Select *
from (
Select 4001 a, 1 b, 'Anima Tactics: Type-009 Deathhead' c, 5 d, 2016 e, 8 f from dual union
Select 4002, 1, 'Anima Tactics: Type-020 – Verrier', 7, 2017, 9 from dual union
Select 4003, 1, 'Anima Tactics: Valentine', 6, 2017, 5 from dual union
Select 4004, 1, 'Anima Tactics: Valis Ul Del Vilfain', 8, 2017, 9 from dual union
Select 4005, 1, 'Anima Tactics: Vayl', 5, 2016, 9 from dual union
Select 4006, 1, 'Anima Tactics: Veronica', 4, 2016, 5 from dual union
Select 4007, 1, 'Anima Tactics: Wissenschaft Agent', 4, 2016, 3 from dual union
Select 4008, 1, 'Anima Tactics: Wolfgang Metzger', 0, 2017, 9 from dual union
Select 4009, 1, 'Anima Tactics: Xavier', 0, 2017, 4 from dual union
Select 4010, 1, 'Anima Tactics: XII', 9, 2016, 8 from dual union
Select 4011, 1, 'Anima Tactics: Yuki', 9, 2017, 8 from dual union
Select 4012, 1, 'Anima Tactics: Yuri Olson', 9, 2016, 3 from dual union
Select 4013, 1, 'Anima: Beyond Good and Evil', 6, 2016, 7 from dual union
Select 4014, 1, 'Anima: Shadow of Omega', 7, 2016, 5 from dual union
Select 4015, 1, 'Anima: The Twilight of the Gods', 3, 2016, 8 from dual union
Select 4016, 1, 'Animal 2x2', 2, 2015, 4 from dual union
Select 4017, 1, 'Animal Antics or Wheres My Dad', 7, 2015, 10 from dual union
Select 4018, 1, 'Animal Auction', 0, 2016, 10 from dual union
Select 4019, 1, 'Animal Circus (fan expansion for Animal Upon Animal)', 5, 2015, 9 from dual union
Select 4020, 1, 'Animal Crackers Game', 1, 2015, 6 from dual union
Select 4021, 1, 'Animal Domino Card Game', 5, 2016, 8 from dual union
Select 4022, 1, 'Animal Express', 3, 2015, 1 from dual union
Select 4023, 1, 'Animal Fair', 3, 2016, 6 from dual union
Select 4024, 1, 'Animal Farm', 10, 2015, 3 from dual union
Select 4025, 1, 'The Animal Farm', 6, 2015, 3 from dual union
Select 4026, 1, 'Animal Freedom Force', 3, 2016, 10 from dual union
Select 4027, 1, 'Animal Friends: Jungle Party', 1, 2017, 5 from dual union
Select 4028, 1, 'Animal Fun', 4, 2015, 4 from dual union
Select 4029, 1, 'Animal Fun', 5, 2017, 9 from dual union
Select 4030, 1, 'The Animal Games', 7, 2017, 2 from dual union
Select 4031, 1, 'Animal House Trivia Game', 5, 2016, 3 from dual union
Select 4032, 1, 'Animal Hunt', 7, 2015, 2 from dual union
Select 4033, 1, 'Animal Instincts', 2, 2015, 6 from dual union
Select 4034, 1, 'Animal Journeys', 0, 2016, 2 from dual union
Select 4035, 1, 'Animal Kingdom', 3, 2015, 3 from dual union
Select 4036, 1, 'The Animal Kingdom', 4, 2015, 7 from dual union
Select 4037, 1, 'Animal Mastermind Towers', 4, 2017, 5 from dual union
Select 4038, 1, 'Animal Match Puzzle Cards', 5, 2016, 4 from dual union
Select 4039, 1, 'Animal Merry-Go-Round Motor Skill Game', 2, 2017, 6 from dual union
Select 4040, 1, 'Animal Mind', 1, 2016, 1 from dual union
Select 4041, 1, 'Animal Mix and Match', 6, 2015, 8 from dual union
Select 4042, 1, 'Animal Olympics', 5, 2015, 8 from dual union
Select 4043, 1, 'Animal P-P-P-Pickup', 10, 2016, 4 from dual union
Select 4044, 1, 'Animal Pairs', 10, 2017, 2 from dual union
Select 4045, 1, 'Animal Party', 4, 2015, 5 from dual union
Select 4046, 1, 'Animal Planet Dino Dice', 8, 2017, 9 from dual union
Select 4047, 1, 'Animal Reich', 7, 2016, 1 from dual union
Select 4048, 1, 'Animal Rummy', 3, 2017, 2 from dual union
Select 4049, 1, 'Animal Rummy', 5, 2016, 7 from dual union
Select 4050, 1, 'Animal Safari', 4, 2016, 6 from dual union
Select 4051, 1, 'Animal Shelters', 3, 2017, 8 from dual union
Select 4052, 1, 'Animal Shuffle', 6, 2016, 10 from dual union
Select 4053, 1, 'Animal Smackers', 6, 2015, 10 from dual union
Select 4054, 1, 'Animal Snacks', 7, 2016, 9 from dual union
Select 4055, 1, 'Animal Soundtracks', 3, 2017, 2 from dual union
Select 4056, 1, 'Animal Soup Game: Theres Always One!', 0, 2015, 10 from dual union
Select 4057, 1, 'Animal Soup Theres Always One! Card Game', 0, 2017, 7 from dual union
Select 4058, 1, 'Animal Spelling Game', 7, 2015, 3 from dual union
Select 4059, 1, 'Animal Suspect', 8, 2016, 6 from dual union
Select 4060, 1, 'Animal Talk', 0, 2015, 2 from dual union
Select 4061, 1, 'Animal Town', 9, 2015, 6 from dual union
Select 4062, 1, 'Animal Tracks', 5, 2016, 5 from dual union
Select 4063, 1, 'Animal Trap', 1, 2017, 2 from dual union
Select 4064, 1, 'Animal Twins', 8, 2017, 1 from dual union
Select 4065, 1, 'Animal Twister', 8, 2015, 8 from dual union
Select 4066, 1, 'Animal Upon Animal', 6, 2016, 6 from dual union
Select 4067, 1, 'Animal Upon Animal: Balancing Bridge', 4, 2016, 8 from dual union
Select 4068, 1, 'Animal Upon Animal: Crest Climbers', 7, 2017, 10 from dual union
Select 4069, 1, 'Animal Upon Animal: Pig Promo', 1, 2015, 1 from dual union
Select 4070, 1, 'Animal Upon Animal: Rhino Promo', 10, 2015, 8 from dual union
Select 4071, 1, 'Animal Upon Animal: Small and Yet Great!', 5, 2016, 6 from dual union
Select 4072, 1, 'Animal Upon Animal: The Card Game', 6, 2015, 3 from dual union
Select 4073, 1, 'Animal Winner Family Board Game', 9, 2017, 9 from dual union
Select 4074, 1, 'Animal Yahtzee', 5, 2017, 3 from dual union
Select 4075, 1, 'Animalacious', 6, 2015, 1 from dual union
Select 4076, 1, 'Animales de la Muerte', 9, 2016, 1 from dual union
Select 4077, 1, 'Animali da Record', 1, 2017, 10 from dual union
Select 4078, 1, 'Animalia', 3, 2016, 2 from dual union
Select 4079, 1, 'Animalia Fighting PCG', 10, 2015, 4 from dual union
Select 4080, 1, 'Animality', 3, 2016, 8 from dual union
Select 4081, 1, 'Animallum', 4, 2017, 7 from dual union
Select 4082, 1, 'Animals', 8, 2017, 2 from dual union
Select 4083, 1, 'Animals Animals Color Bingo Game', 3, 2015, 4 from dual union
Select 4084, 1, 'Animals expansion (mini fan expansion for Dominion)', 5, 2016, 1 from dual union
Select 4085, 1, 'Animals Frightening Night!', 0, 2016, 7 from dual union
Select 4086, 1, 'Animals Frightening Night! Tortoise and Skunk', 4, 2016, 1 from dual union
Select 4087, 1, 'Animals of the World', 0, 2017, 1 from dual union
Select 4088, 1, 'Animals of the World', 3, 2016, 4 from dual union
Select 4089, 1, 'Animals off the Hook', 0, 2016, 8 from dual union
Select 4090, 1, 'Animals on Board', 6, 2016, 5 from dual union
Select 4091, 1, 'Animals on the Loose: A Beginning Phonics Game for ELLs', 7, 2016, 6 from dual union
Select 4092, 1, 'Animals with Weapons', 4, 2017, 6 from dual union
Select 4093, 1, 'Animaux de la Savane', 1, 2016, 10 from dual union
Select 4094, 1, 'Animaux et Réserves de France', 9, 2017, 6 from dual union
Select 4095, 1, 'Anime Madness', 5, 2017, 10 from dual union
Select 4096, 1, 'Animocity', 10, 2017, 2 from dual union
Select 4097, 1, 'Animoes', 7, 2017, 6 from dual union
Select 4098, 1, 'Animorphs', 3, 2016, 6 from dual union
Select 4099, 1, 'Animorphs: The Invasion Game', 10, 2016, 2 from dual union
Select 4100, 1, 'Animotrax', 9, 2015, 4 from dual union
Select 4101, 1, 'AnimOuch', 6, 2017, 6 from dual union
Select 4102, 1, 'Animouv', 5, 2015, 10 from dual union
Select 4103, 1, 'Animus', 7, 2016, 1 from dual union
Select 4104, 1, 'Aniołowie', 9, 2015, 10 from dual union
Select 4105, 1, 'Anjos & Dragões', 2, 2015, 2 from dual union
Select 4106, 1, 'Ankeborgsloppet', 0, 2017, 3 from dual union
Select 4107, 1, 'Anker auf!', 9, 2016, 9 from dual union
Select 4108, 1, 'Anker spill', 4, 2015, 9 from dual union
Select 4109, 1, 'Ankh', 2, 2016, 2 from dual union
Select 4110, 1, 'Ankoku-seiun', 5, 2015, 8 from dual union
Select 4111, 1, 'Ankor', 6, 2017, 4 from dual union
Select 4112, 1, 'The Ann Arbor Game', 6, 2017, 6 from dual union
Select 4113, 1, 'Anna & Elsa', 3, 2015, 3 from dual union
Select 4114, 1, 'Annettes Secret Passage Game', 9, 2017, 1 from dual union
Select 4115, 1, 'Annex', 6, 2017, 1 from dual union
Select 4116, 1, 'Annexe', 7, 2016, 5 from dual union
Select 4117, 1, 'Annexion', 9, 2015, 7 from dual union
Select 4118, 1, 'Annie', 9, 2015, 9 from dual union
Select 4119, 1, 'Annie Card Game', 5, 2015, 6 from dual union
Select 4120, 1, 'Annie Oakley Game', 3, 2016, 5 from dual union
Select 4121, 1, 'Annie Oakley Game', 6, 2016, 8 from dual union
Select 4122, 1, 'Annie Wants her Stripes', 1, 2016, 8 from dual union
Select 4123, 1, 'Annihilation', 10, 2015, 1 from dual union
Select 4124, 1, 'Annihilator & One World', 6, 2015, 7 from dual union
Select 4125, 1, 'The Anniversary Game', 9, 2016, 9 from dual union
Select 4126, 1, 'Anno 1452', 1, 2015, 6 from dual union
Select 4127, 1, 'Anno 1503', 7, 2015, 7 from dual union
Select 4128, 1, 'Anno 1503: Aristokraten und Piraten', 3, 2017, 7 from dual union
Select 4129, 1, 'Anno 1701: Das Brettspiel', 4, 2016, 4 from dual union
Select 4130, 1, 'Anno 1701: Das Kartemspiel', 6, 2017, 4 from dual union
Select 4131, 1, 'Anno 2000', 1, 2016, 2 from dual union
Select 4132, 1, 'Anno 3000', 2, 2017, 9 from dual union
Select 4133, 1, 'Anno Bosparans Fall', 1, 2015, 1 from dual union
Select 4134, 1, 'Anno Domini', 8, 2017, 2 from dual union
Select 4135, 1, 'Anno Domini: America', 0, 2016, 8 from dual union
Select 4136, 1, 'Anno Domini: Avvenimenti bizzarri', 9, 2016, 10 from dual union
Select 4137, 1, 'Anno Domini: Bern', 0, 2016, 10 from dual union
Select 4138, 1, 'Anno Domini: Deutschland', 1, 2017, 5 from dual union
Select 4139, 1, 'Anno Domini: Erfindungen', 0, 2015, 10 from dual union
Select 4140, 1, 'Anno Domini: Essen & Trinken', 0, 2016, 4 from dual union
Select 4141, 1, 'Anno Domini: Europa', 2, 2017, 8 from dual union
Select 4142, 1, 'Anno Domini: Flopps', 7, 2017, 3 from dual union
Select 4143, 1, 'Anno Domini: Frauen', 9, 2016, 7 from dual union
Select 4144, 1, 'Anno Domini: Fussball', 7, 2017, 6 from dual union
Select 4145, 1, 'Anno Domini: Fussball WM', 7, 2017, 3 from dual union
Select 4146, 1, 'Anno Domini: Gesundheit', 6, 2016, 7 from dual union
Select 4147, 1, 'Anno Domini: Gesundheit und Ernährung', 6, 2015, 5 from dual union
Select 4148, 1, 'Anno Domini: Hannover & Deutschland', 3, 2017, 9 from dual union
Select 4149, 1, 'Anno Domini: Im Namen des Gesetzes', 9, 2015, 7 from dual union
Select 4150, 1, 'Anno Domini: Im Osten', 10, 2017, 7 from dual union
Select 4151, 1, 'Anno Domini: Kirche & Staat', 6, 2015, 1 from dual union
Select 4152, 1, 'Anno Domini: Kunst', 3, 2016, 4 from dual union
Select 4153, 1, 'Anno Domini: Lifestyle', 9, 2015, 5 from dual union
Select 4154, 1, 'Anno Domini: Mixed Edition', 5, 2016, 10 from dual union
Select 4155, 1, 'Anno Domini: Münzen', 0, 2015, 1 from dual union
Select 4156, 1, 'Anno Domini: Natur', 9, 2015, 9 from dual union
Select 4157, 1, 'Anno Domini: Penne e Pennelli', 5, 2016, 10 from dual union
Select 4158, 1, 'Anno Domini: Probespiel', 10, 2016, 10 from dual union
Select 4159, 1, 'Anno Domini: Reisen und Verkehr', 2, 2015, 8 from dual union
Select 4160, 1, 'Anno Domini: Sachsen', 7, 2016, 9 from dual union
Select 4161, 1, 'Anno Domini: Schweiz', 4, 2017, 8 from dual union
Select 4162, 1, 'Anno Domini: Scienza e Natura', 9, 2015, 6 from dual union
Select 4163, 1, 'Anno Domini: Seefahrer & Flieger', 6, 2017, 4 from dual union
Select 4164, 1, 'Anno Domini: Sex & Crime', 3, 2015, 2 from dual union
Select 4165, 1, 'Anno Domini: Showbizz', 6, 2017, 3 from dual union
Select 4166, 1, 'Anno Domini: Spiel des Jahres', 10, 2016, 2 from dual union
Select 4167, 1, 'Anno Domini: Sport', 10, 2015, 8 from dual union
Select 4168, 1, 'Anno Domini: Süden', 9, 2015, 2 from dual union
Select 4169, 1, 'Anno Domini: VIP', 5, 2017, 10 from dual union
Select 4170, 1, 'Anno Domini: Wissenschaft & Forschung', 6, 2017, 3 from dual union
Select 4171, 1, 'Anno Domini: Wort Schrift Buch', 5, 2015, 5 from dual union
Select 4172, 1, 'Anno Domini: Österreich', 0, 2016, 7 from dual union
Select 4173, 1, 'Anno Mundi', 0, 2017, 10 from dual union
Select 4174, 1, 'The Annoying Thing Game', 9, 2015, 10 from dual union
Select 4175, 1, 'Annuvin', 0, 2017, 8 from dual union
Select 4176, 1, 'Les Années télé', 0, 2015, 9 from dual union
Select 4177, 1, 'Anomalies of Love', 8, 2016, 3 from dual union
Select 4178, 1, 'Anomaly', 0, 2016, 7 from dual union
Select 4179, 1, 'Anomia', 10, 2017, 3 from dual union
Select 4180, 1, 'Anomia: Party Edition', 3, 2015, 9 from dual union
Select 4181, 1, 'another damn Civilization game', 8, 2015, 10 from dual union
Select 4182, 1, 'Another Day, Another Dollar: Horror', 7, 2016, 9 from dual union
Select 4183, 1, 'Another Day, Another Dollar: Kung Fu', 7, 2017, 5 from dual union
Select 4184, 1, 'Another Day, Another Dollar: Musicals', 4, 2016, 2 from dual union
Select 4185, 1, 'Another Day, Another Dollar: Space', 6, 2017, 2 from dual union
Select 4186, 1, 'Another Glorious First of June? Jutland 1916', 3, 2015, 5 from dual union
Select 4187, 1, 'Another Horizon', 6, 2015, 9 from dual union
Select 4188, 1, 'ANSA: Mission to Alpha Centauri', 4, 2017, 2 from dual union
Select 4189, 1, 'Answer Bingo: Addition Game', 1, 2015, 1 from dual union
Select 4190, 1, 'Answer That!', 0, 2015, 2 from dual union
Select 4191, 1, 'Answerit', 8, 2016, 9 from dual union
Select 4192, 1, 'Ant & Decs Saturday Night Takeaway', 6, 2016, 9 from dual union
Select 4193, 1, 'Ant Army', 10, 2017, 9 from dual union
Select 4194, 1, 'Ant Assault', 9, 2015, 8 from dual union
Select 4195, 1, 'Ant Attack', 10, 2016, 5 from dual union
Select 4196, 1, 'Ant Eater', 6, 2016, 8 from dual union
Select 4197, 1, 'Ant Farm Game', 3, 2016, 8 from dual union
Select 4198, 1, 'Ant Hill', 2, 2016, 1 from dual union
Select 4199, 1, 'Ant Nest', 6, 2015, 2 from dual union
Select 4200, 1, 'Ant Ranch', 3, 2011, 9 from dual union
Select 4201, 1, 'Ant Wars', 2, 2017, 7 from dual union
Select 4202, 1, 'Ants Picnic', 8, 2015, 7 from dual union
Select 4203, 1, 'Antagon', 8, 2016, 10 from dual union
Select 4204, 1, 'Antagonist', 2, 2017, 6 from dual union
Select 4205, 1, 'Antaire: Dungeons', 4, 2016, 10 from dual union
Select 4206, 1, 'Antakarana: El juego del más allá', 9, 2015, 4 from dual union
Select 4207, 1, 'Antarctic Fleet', 3, 2016, 2 from dual union
Select 4208, 1, 'Antarctica', 7, 2015, 4 from dual union
Select 4209, 1, 'Antarctica', 5, 2015, 4 from dual union
Select 4210, 1, 'Antarctica (fan expansion to Ticket to Ride)', 8, 2016, 4 from dual union
Select 4211, 1, 'Antarctica (first edition)', 3, 2017, 6 from dual union
Select 4212, 1, 'Antarctica (second edition)', 4, 2017, 2 from dual union
Select 4213, 1, 'Antarctica: Penguin Expansion', 3, 2016, 3 from dual union
Select 4214, 1, 'Antartic Treasure', 2, 2016, 9 from dual union
Select 4215, 1, 'Antartik', 2, 2015, 2 from dual union
Select 4216, 1, 'Antavlan', 5, 2017, 6 from dual union
Select 4217, 1, 'Antburger Hill', 10, 2016, 10 from dual union
Select 4218, 1, 'Ante Portas', 4, 2016, 5 from dual union
Select 4219, 1, 'Anteel', 1, 2015, 10 from dual union
Select 4220, 1, 'Antheap', 7, 2017, 6 from dual union
Select 4221, 1, 'Anthem', 2, 2017, 9 from dual union
Select 4222, 1, 'Anti-Grid', 8, 2015, 10 from dual union
Select 4223, 1, 'Anti-Hero', 9, 2015, 5 from dual union
Select 4224, 1, 'Anti-King Chess', 0, 2017, 10 from dual union
Select 4225, 1, 'Anti-Monopoly', 7, 2016, 9 from dual union
Select 4226, 1, 'Anti-Monopoly II', 5, 2016, 7 from dual union
Select 4227, 1, 'Anti-Monopoly III: Washington-Moskau', 10, 2017, 10 from dual union
Select 4228, 1, 'Anti-Social', 0, 2017, 7 from dual union
Select 4229, 1, 'Antichrist', 3, 2017, 10 from dual union
Select 4230, 1, 'Anticipation', 6, 2016, 1 from dual union
Select 4231, 1, 'Antics', 5, 2017, 8 from dual union
Select 4232, 1, 'ANTICS', 9, 2016, 7 from dual union
Select 4233, 1, 'Antics!', 2, 2015, 4 from dual union
Select 4234, 1, 'Antics: The Friendship Game', 5, 2015, 9 from dual union
Select 4235, 1, 'Antidote', 0, 2016, 3 from dual union
Select 4236, 1, 'Antidote: Lab Alliance', 9, 2017, 10 from dual union
Select 4237, 1, 'Antietam', 3, 2015, 2 from dual union
Select 4238, 1, 'Antietam Campaign', 0, 2015, 8 from dual union
Select 4239, 1, 'Antietam: Burnished Rows of Steel', 2, 2016, 8 from dual union
Select 4240, 1, 'Antietam: The Bloodiest Day, 17 September 1862', 7, 2016, 8 from dual union
Select 4241, 1, 'Antigrams', 1, 2016, 8 from dual union
Select 4242, 1, 'Antigua', 2, 2016, 1 from dual union
Select 4243, 1, 'Antike', 3, 2015, 9 from dual union
Select 4244, 1, 'Antike Duellum', 1, 2016, 3 from dual union
Select 4245, 1, 'Antike II', 2, 2015, 5 from dual union
Select 4246, 1, 'Antikrundan', 10, 2003, 5 from dual union
Select 4247, 1, 'Antillia and the Lost Cities of Gold', 2, 2015, 1 from dual union
Select 4248, 1, 'Antimatter Matters', 9, 2016, 3 from dual union
Select 4249, 1, 'Antipalos', 3, 2015, 10 from dual union
Select 4250, 1, 'Antipod', 5, 2015, 8 from dual union
Select 4251, 1, 'Antipode', 2, 2016, 6 from dual union
Select 4252, 1, 'The Antique Auction Game', 9, 2017, 3 from dual union
Select 4253, 1, 'The Antiques Challenge', 0, 2016, 2 from dual union
Select 4254, 1, 'Antiques Roadshow', 2, 2017, 2 from dual union
Select 4255, 1, 'Antiques Roadshow: The Game', 8, 2015, 1 from dual union
Select 4256, 1, 'Antiquity', 10, 2015, 10 from dual union
Select 4257, 1, 'Antiquity Trivia Game', 8, 2015, 8 from dual union
Select 4258, 1, 'Antler Island', 7, 2017, 2 from dual union
Select 4259, 1, 'Antons Schwimmschule', 7, 2017, 10 from dual union
Select 4260, 1, 'Antonine! The Battle for Caledonia', 10, 2016, 5 from dual union
Select 4261, 1, 'Antonys Retreat from Parthia: 36 BC', 7, 2016, 10 from dual union
Select 4262, 1, 'Antonym Line Up', 0, 2017, 4 from dual union
Select 4263, 1, 'Ants 4X', 2, 2016, 6 from dual union
Select 4264, 1, 'Ants in the Pants', 2, 2016, 7 from dual union
Select 4265, 1, 'Ants!', 7, 2015, 2 from dual union
Select 4266, 1, 'ANTS! The Battle For The Backyard Has Begun!', 8, 2015, 3 from dual union
Select 4267, 1, 'Antshouse', 0, 2015, 10 from dual union
Select 4268, 1, 'Het Antwerps Gezelschapsspel', 3, 2015, 9 from dual union
Select 4269, 1, 'Anvil-Dragoon', 5, 2015, 8 from dual union
Select 4270, 1, 'Anvil-Dragoon: Southwall 1944', 5, 2016, 3 from dual union
Select 4271, 1, 'Anvil-Dragoon: The Second D-Day', 0, 2016, 7 from dual union
Select 4272, 1, 'Anybodys Guess', 9, 2016, 1 from dual union
Select 4273, 1, 'Anyone Can Par', 8, 2016, 3 from dual union
Select 4274, 1, 'Anyone for Tennis?', 7, 2016, 10 from dual union
Select 4275, 1, 'Anything Goes', 9, 2016, 1 from dual union
Select 4276, 1, 'Anything To Declare?: The International Game of Smuggling and Detection', 8, 2016, 9 from dual union
Select 4277, 1, 'The Anyville Horror', 0, 2016, 10 from dual union
Select 4278, 1, 'Anyways', 9, 2015, 6 from dual union
Select 4279, 1, 'Anzio', 9, 2017, 3 from dual union
Select 4280, 1, 'Anzio Beachhead', 1, 2016, 5 from dual union
Select 4281, 1, 'Anzio The Bloodiest Beachhead', 10, 2017, 5 from dual union
Select 4282, 1, 'Anzio, From Wildcat to Whale', 8, 2004, 8 from dual union
Select 4283, 1, 'Anzio/Cassino', 4, 2016, 6 from dual union
Select 4284, 1, 'Anzio: Drive to Rome (1944)', 8, 2015, 2 from dual union
Select 4285, 1, 'Anzio: Operation Shingle', 8, 2017, 4 from dual union
Select 4286, 1, 'Anzio: The Fight For The Beachhead', 3, 2017, 2 from dual union
Select 4287, 1, 'Ap-Bingo', 8, 2015, 1 from dual union
Select 4288, 1, 'Apache', 6, 2015, 6 from dual union
Select 4289, 1, 'Apache', 2, 2016, 8 from dual union
Select 4290, 1, 'Apache Pass', 1, 2017, 7 from dual union
Select 4291, 1, 'Apagos', 2, 2015, 2 from dual union
Select 4292, 1, 'Apaspil', 4, 2016, 7 from dual union
Select 4293, 1, 'APBA American Saddle Racing', 9, 2016, 7 from dual union
Select 4294, 1, 'APBA Basketball', 8, 2017, 3 from dual union
Select 4295, 1, 'APBA Boxing', 10, 2017, 5 from dual union
Select 4296, 1, 'APBA Golf Game', 0, 2017, 6 from dual union
Select 4297, 1, 'APBA Major League Baseball Master Game', 7, 2017, 3 from dual union
Select 4298, 1, 'APBA Major League Baseball: All Star Edition', 3, 2017, 4 from dual union
Select 4299, 1, 'APBA National Football League: Pro Bowl Edition', 6, 2015, 5 from dual union
Select 4300, 1, 'APBA Pro Baseball', 10, 2017, 10 from dual union
Select 4301, 1, 'APBA Pro Football', 0, 2015, 1 from dual union
Select 4302, 1, 'APBA Pro Hockey', 7, 2015, 5 from dual union
Select 4303, 1, 'APBA Professional Bowling', 8, 2017, 1 from dual union
Select 4304, 1, 'APBA Professional Golf', 1, 2016, 7 from dual union
Select 4305, 1, 'APBA Professional Golf: Firestone', 2, 2015, 5 from dual union
Select 4306, 1, 'APBA Professional Golf: Merion', 6, 2016, 1 from dual union
Select 4307, 1, 'APBA Professional Golf: Pebble Beach', 1, 2015, 7 from dual union
Select 4308, 1, 'APBA Professional Golf: Pine Valley', 0, 2016, 6 from dual union
Select 4309, 1, 'APBA Professional Golf: Pinehurst No.2', 0, 2015, 8 from dual union
Select 4310, 1, 'APBA Professional Golf: The Masters', 9, 2016, 4 from dual union
Select 4311, 1, 'APBA Soccer', 4, 2015, 3 from dual union
Select 4312, 1, 'APBA SuperStars Baseball', 6, 2016, 10 from dual union
Select 4313, 1, 'APBA SuperStars Football', 7, 2017, 6 from dual union
Select 4314, 1, 'Aperitivo con delitto', 9, 2015, 10 from dual union
Select 4315, 1, 'Apex', 3, 2017, 8 from dual union
Select 4316, 1, 'Apex TDBG: Exotic Predators Add-On – Quetzalcoatlus & Sarcosuchus Expansion Cards', 5, 2016, 3 from dual union
Select 4317, 1, 'Apex Theropod Deck-Building Game', 10, 2015, 9 from dual union
Select 4318, 1, 'Apex Theropod Deck-Building Game: Exotic Predators', 7, 2015, 2 from dual union
Select 4319, 1, 'Apex Theropod Deck-Building Game: Megalodon Expansion Deck', 6, 2015, 4 from dual union
Select 4320, 1, 'Apex Theropod Deck-Building Game: Promethean Wars Expansion Deck', 6, 2016, 7 from dual union
Select 4321, 1, 'Apex Theropod Deck-Building Game: Saurophaganax Expansion Deck', 10, 2015, 1 from dual union
Select 4322, 1, 'Apex Theropod Deck-Building Game: Second Kickstarter Stretch Goal Pack', 0, 2015, 4 from dual union
Select 4323, 1, 'Apex Theropod Deck-Building Game: Stomping Grounds Expansion Deck', 7, 2015, 10 from dual union
Select 4324, 1, 'Apex Theropod Deck-Building Game: Suchomimus Expansion Deck', 10, 2015, 10 from dual union
Select 4325, 1, 'Apex Theropod Deck-Building Game: Therizinosaurus Expansion Deck', 1, 2015, 2 from dual union
Select 4326, 1, 'Apfel-Ernte.', 3, 2016, 8 from dual union
Select 4327, 1, 'Der Apfelbaum', 0, 2002, 8 from dual union
Select 4328, 1, 'Der Apfelbaum: Ein neues Rechenspiel', 10, 2015, 6 from dual union
Select 4329, 1, 'Apfelernte', 5, 2016, 1 from dual union
Select 4330, 1, 'Apfelhexe', 8, 2015, 6 from dual union
Select 4331, 1, 'Apicultura', 3, 2015, 6 from dual union
Select 4332, 1, 'Apina', 8, 2016, 9 from dual union
Select 4333, 1, 'Apinyat: El Joc dels Castellers de Badalona', 3, 2016, 6 from dual union
Select 4334, 1, 'Apit-Sodok', 2, 2016, 3 from dual union
Select 4335, 1, 'Apocalypse', 2, 2017, 1 from dual union
Select 4336, 1, 'Apocalypse Chaos', 5, 2015, 4 from dual union
Select 4337, 1, 'Apocalypse Frenzy', 5, 2017, 6 from dual union
Select 4338, 1, 'Apocalypse in the East: The Rise of the First Caliphate 646-656 A.D.', 5, 2016, 1 from dual union
Select 4339, 1, 'Apocalypse Pack', 3, 2015, 8 from dual union
Select 4340, 1, 'Apocalypse Road', 6, 2018, 5 from dual union
Select 4341, 1, 'Apocalypse Universe: Galactic Arena', 5, 2015, 6 from dual union
Select 4342, 1, 'Apocalypse Z', 10, 2017, 5 from dual union
Select 4343, 1, 'Apocalypse: The Game of Nuclear Devastation', 3, 2015, 1 from dual union
Select 4344, 1, 'Apocalypse: Zombie Edition', 1, 2016, 9 from dual union
Select 4345, 1, 'ApocalypZe Card Game', 8, 2016, 6 from dual union
Select 4346, 1, 'ApocalypZe Card Game: Biker/Zombie Promo', 5, 2017, 10 from dual union
Select 4347, 1, 'ApocalypZe Card Game: Church Promo', 8, 2016, 2 from dual union
Select 4348, 1, 'ApocalypZe Card Game: Patsy McNally Promo', 8, 2016, 2 from dual union
Select 4349, 1, 'ApocalypZe Card Game: Surge Promo', 7, 2015, 6 from dual union
Select 4350, 1, 'Apocrypha Adventure Card Game', 1, 2017, 9 from dual union
Select 4351, 1, 'Apokalypse', 4, 2015, 6 from dual union
Select 4352, 1, 'Apokalypse', 3, 2017, 7 from dual union
Select 4353, 1, 'Apokalypsis', 5, 2016, 8 from dual union
Select 4354, 1, 'Apollo', 6, 2015, 1 from dual union
Select 4355, 1, 'Apollo Space Rocket Checkers', 0, 2016, 10 from dual union
Select 4356, 1, 'Apollo XIII', 0, 2015, 2 from dual union
Select 4357, 1, 'Apollo: A Voyage to the Moon', 8, 2016, 9 from dual union
Select 4358, 1, 'Apophis', 4, 2016, 2 from dual union
Select 4359, 1, 'Apostlaspelet', 10, 2016, 9 from dual union
Select 4360, 1, 'Apostles', 2, 2016, 3 from dual union
Select 4361, 1, 'Apostles', 8, 2015, 9 from dual union
Select 4362, 1, 'Apostolos', 5, 2015, 9 from dual union
Select 4363, 1, 'Apotheca', 6, 2016, 9 from dual union
Select 4364, 1, 'Apotheca: Tima the Red Promo Card', 8, 2016, 6 from dual union
Select 4365, 1, 'Appd: The Card Game', 7, 2016, 4 from dual union
Select 4366, 1, 'Appalachian Rails', 3, 2017, 4 from dual union
Select 4367, 1, 'Appalachian Trail', 6, 2015, 1 from dual union
Select 4368, 1, 'Appalachian Trail Game', 3, 2017, 3 from dual union
Select 4369, 1, 'Appalachian Trail Game: Special Edition', 6, 2015, 8 from dual union
Select 4370, 1, 'Apparatus', 3, 2017, 3 from dual union
Select 4371, 1, 'Appeteaser', 1, 2017, 2 from dual union
Select 4372, 1, 'Appetite for Adventure', 1, 2016, 8 from dual union
Select 4373, 1, 'Appetizing Castle', 9, 2015, 1 from dual union
Select 4374, 1, 'Appian Way Cafe', 4, 2016, 2 from dual union
Select 4375, 1, 'Applause', 2, 2017, 1 from dual union
Select 4376, 1, 'Apple Addition', 7, 2017, 10 from dual union
Select 4377, 1, 'The Apple Game', 8, 2001, 9 from dual union
Select 4378, 1, 'The Apple Orchard Game', 5, 2016, 8 from dual union
Select 4379, 1, 'Apple Picking', 3, 2017, 5 from dual union
Select 4380, 1, 'Apple Pie', 6, 2016, 8 from dual union
Select 4381, 1, 'Apple Pop', 8, 2015, 6 from dual union
Select 4382, 1, 'Apple Tree', 3, 2015, 4 from dual union
Select 4383, 1, 'Apples Way', 8, 2016, 1 from dual union
Select 4384, 1, 'AppLEOpoly', 9, 2017, 7 from dual union
Select 4385, 1, 'Apples & Oranges', 4, 2015, 4 from dual union
Select 4386, 1, 'Apples in the Basket', 0, 2016, 2 from dual union
Select 4387, 1, 'Apples to Apples', 1, 2017, 1 from dual union
Select 4388, 1, 'Apples to Apples 15th Appleversary Edition', 0, 2015, 2 from dual union
Select 4389, 1, 'Apples to Apples Dice Game', 4, 2017, 4 from dual union
Select 4390, 1, 'Apples to Apples Junior', 9, 2017, 6 from dual union
Select 4391, 1, 'Apples to Apples Junior: Jewish Edition', 3, 2016, 5 from dual union
Select 4392, 1, 'Apples to Apples Kids', 3, 2015, 2 from dual union
Select 4393, 1, 'Apples to Apples Mod', 0, 2016, 1 from dual union
Select 4394, 1, 'Apples to Apples Ni&ntilde,os', 8, 2015, 3 from dual union
Select 4395, 1, 'Apples to Apples Party Box Expansion ONE', 0, 2015, 2 from dual union
Select 4396, 1, 'Apples to Apples Party Box Expansion TWO', 0, 2017, 10 from dual union
Select 4397, 1, 'Apples to Apples to Go', 10, 2017, 4 from dual union
Select 4398, 1, 'Apples to Apples: Bible Edition', 10, 2017, 8 from dual union
Select 4399, 1, 'Apples to Apples: British Isles Edition', 0, 2017, 8 from dual union
Select 4400, 1, 'Apples to Apples: Expansion Set #1', 7, 2015, 5 from dual union
Select 4401, 1, 'Apples to Apples: Expansion Set #2', 5, 2016, 4 from dual union
Select 4402, 1, 'Apples to Apples: Expansion Set #3', 7, 2015, 8 from dual union
Select 4403, 1, 'Apples to Apples: Expansion Set #4', 0, 2016, 4 from dual union
Select 4404, 1, 'Apples To Apples: Family', 5, 2017, 8 from dual union
Select 4405, 1, 'Apples to Apples: Freestyle', 3, 2015, 6 from dual union
Select 4406, 1, 'Apples to Apples: Jelly Belly Special Edition', 4, 2016, 8 from dual union
Select 4407, 1, 'Apples to Apples: Jewish Edition', 8, 2015, 8 from dual union
Select 4408, 1, 'Apples to Apples: Yiddish Edition', 7, 2015, 1 from dual union
Select 4409, 1, 'Apples to the basket', 9, 2017, 6 from dual union
Select 4410, 1, 'Appleseed', 6, 2017, 4 from dual union
Select 4411, 1, 'Appletters', 2, 2015, 8 from dual union
Select 4412, 1, 'Application Crunch', 7, 2015, 2 from dual union
Select 4413, 1, 'The Appreciation Game', 9, 2015, 1 from dual union
Select 4414, 1, 'Apprenti sorcier', 6, 2015, 10 from dual union
Select 4415, 1, 'The Apprentice', 0, 2015, 9 from dual union
Select 4416, 1, 'The Apprentice Game', 1, 2017, 6 from dual union
Select 4417, 1, 'Les Apprentis de la Manufacture', 2, 2017, 5 from dual union
Select 4418, 1, 'The Approved Little League Baseball Game', 9, 2015, 1 from dual union
Select 4419, 1, 'Los Aprendices', 9, 2015, 6 from dual union
Select 4420, 1, 'Aprils Harvest: The Battle of Shiloh, April 6 & 7, 1862', 4, 2016, 9 from dual union
Select 4421, 1, 'Aprile 1945 Lultima battaglia (the last battle)', 9, 2017, 8 from dual union
Select 4422, 1, 'Après Ski Het Spel', 7, 2016, 3 from dual union
Select 4423, 1, 'Aqeuropoly', 9, 2015, 2 from dual union
Select 4424, 1, 'Aqua', 9, 2017, 6 from dual union
Select 4425, 1, 'Aqua Around the World', 8, 2016, 7 from dual union
Select 4426, 1, 'Aqua Brunch', 10, 2016, 5 from dual union
Select 4427, 1, 'Aqua Brunch: The Sea Dragon Promo Card', 1, 2015, 2 from dual union
Select 4428, 1, 'Aqua Park', 0, 2015, 1 from dual union
Select 4429, 1, 'Aqua Romana', 5, 2016, 2 from dual union
Select 4430, 1, 'Aqua Tivitz', 1, 2016, 4 from dual union
Select 4431, 1, 'Aquaducts', 2, 2015, 3 from dual union
Select 4432, 1, 'Aquamemo', 4, 2003, 8 from dual union
Select 4433, 1, 'The Aquanauts', 10, 2017, 8 from dual union
Select 4434, 1, 'Aquanemo', 3, 2015, 8 from dual union
Select 4435, 1, 'Aquaquest', 7, 2017, 2 from dual union
Select 4436, 1, 'Aquaretto', 2, 2015, 2 from dual union
Select 4437, 1, 'Aquaretto: The Training Camp', 1, 2015, 10 from dual union
Select 4438, 1, 'Aquaretto: The Trains', 2, 2017, 3 from dual union
Select 4439, 1, 'Aquaretto: Three Coworker Tiles', 4, 2017, 10 from dual union
Select 4440, 1, 'Aquarian Age', 6, 2015, 7 from dual union
Select 4441, 1, 'Aquarium', 7, 2017, 5 from dual union
Select 4442, 1, 'Aquarium', 3, 2015, 2 from dual union
Select 4443, 1, 'Aquarium Expansion', 7, 2015, 5 from dual union
Select 4444, 1, 'Aquarium: Rainbowfish', 2, 2015, 4 from dual union
Select 4445, 1, 'Aquarius', 4, 2016, 5 from dual union
Select 4446, 1, 'Aquarius Rising', 5, 2017, 2 from dual union
Select 4447, 1, 'Aquarius: Dragon', 5, 2015, 6 from dual union
Select 4448, 1, 'AquaSphere', 6, 2017, 10 from dual union
Select 4449, 1, 'AquaTerra', 0, 2017, 4 from dual union
Select 4450, 1, 'Aquatika', 3, 2016, 2 from dual union
Select 4451, 1, 'Aqueducts', 10, 2017, 5 from dual union
Select 4452, 1, 'LAquila e il Leone', 10, 2015, 2 from dual union
Select 4453, 1, 'Aquileia', 0, 2015, 6 from dual union
Select 4454, 1, 'Aquitaine', 4, 2016, 10 from dual union
Select 4455, 1, 'Aquädukt', 6, 2017, 5 from dual union
Select 4456, 1, 'Ar Seizh Bigoudenn', 2, 2017, 6 from dual union
Select 4457, 1, 'Ara', 7, 2016, 10 from dual union
Select 4458, 1, 'Ara', 3, 2017, 8 from dual union
Select 4459, 1, 'The Arab Israel Fleet', 6, 2017, 3 from dual union
Select 4460, 1, 'The Arab Israeli Wars', 5, 2016, 3 from dual union
Select 4461, 1, 'Arab Israeli Wars', 3, 2017, 1 from dual union
Select 4462, 1, 'The Arab-Israeli Wars', 8, 2017, 4 from dual union
Select 4463, 1, 'Arabana-Ikibiti', 10, 2017, 6 from dual union
Select 4464, 1, 'Arabia', 6, 2015, 2 from dual union
Select 4465, 1, 'Arabian Game', 8, 2016, 5 from dual union
Select 4466, 1, 'The Arabian Horse Game', 9, 2016, 9 from dual union
Select 4467, 1, 'Arabian Nightmare: The Kuwait War', 10, 2017, 3 from dual union
Select 4468, 1, 'Arabian Nights', 4, 2016, 4 from dual union
Select 4469, 1, 'Arabian Nights Flying Carpet Game', 6, 2015, 1 from dual union
Select 4470, 1, 'The Arabian Pots', 5, 2016, 5 from dual union
Select 4471, 1, 'Arabistan Fleet', 0, 2016, 9 from dual union
Select 4472, 1, 'Arachne', 1, 2016, 6 from dual union
Select 4473, 1, 'Arachnid Army Book', 3, 2015, 7 from dual union
Select 4474, 1, 'Arachnid Trap War', 4, 2015, 1 from dual union
Select 4475, 1, 'ARAM', 10, 2017, 10 from dual union
Select 4476, 1, 'Aras An Uachtaran', 8, 2016, 3 from dual union
Select 4477, 1, 'Arbalester', 1, 2015, 3 from dual union
Select 4478, 1, 'Arbela', 1, 2017, 7 from dual union
Select 4479, 1, 'Arbela: Gaugamela, 331 BC', 5, 2016, 4 from dual union
Select 4480, 1, 'Arbitration: A Game of Decision Making', 0, 2015, 3 from dual union
Select 4481, 1, 'Arbora', 4, 2016, 1 from dual union
Select 4482, 1, 'Arboretum', 7, 2015, 2 from dual union
Select 4483, 1, 'Arbos', 5, 2016, 4 from dual union
Select 4484, 1, 'Arbos Apfel', 9, 2016, 6 from dual union
Select 4485, 1, 'Arbos XXL', 1, 2015, 3 from dual union
Select 4486, 1, 'Arby: The Meter Reader Game', 2, 2016, 5 from dual union
Select 4487, 1, 'ARC', 10, 2016, 1 from dual union
Select 4488, 1, 'Arc Gammon', 1, 2015, 10 from dual union
Select 4489, 1, 'Arc of Fire', 8, 2015, 4 from dual union
Select 4490, 1, 'Arc The Lad Card Game', 3, 2015, 5 from dual union
Select 4491, 1, 'A Arca dos Contos', 6, 2015, 9 from dual union
Select 4492, 1, 'Arcade', 7, 2015, 8 from dual union
Select 4493, 1, 'Arcade Revival', 7, 2016, 3 from dual union
Select 4494, 1, 'Arcade-opoly', 5, 2015, 8 from dual union
Select 4495, 1, 'Arcade: Reinforcements – The Arachnoid', 4, 2015, 3 from dual union
Select 4496, 1, 'Arcade: Reinforcements – The Artillery', 4, 2016, 2 from dual union
Select 4497, 1, 'Arcade: Reinforcements – The Interceptor', 0, 2015, 9 from dual union
Select 4498, 1, 'Arcade: Reinforcements – The Minelayer Sidecar', 5, 2015, 2 from dual union
Select 4499, 1, 'Arcade: Terrain pack', 1, 2015, 3 from dual union
Select 4500, 1, 'Arcadia', 8, 2015, 3 from dual union
Select 4501, 1, 'Arcadia', 7, 2015, 2 from dual union
Select 4502, 1, 'Arcadia of My Youth', 1, 2016, 3 from dual union
Select 4503, 1, 'Arcadia Quest', 10, 2015, 2 from dual union
Select 4504, 1, 'Arcadia Quest: Aeric', 3, 2015, 6 from dual union
Select 4505, 1, 'Arcadia Quest: Anvil & Valma', 6, 2017, 7 from dual union
Select 4506, 1, 'Arcadia Quest: Beyond the Grave', 1, 2015, 7 from dual union
Select 4507, 1, 'Arcadia Quest: Bob the Conjurer', 7, 2017, 6 from dual union
Select 4508, 1, 'Arcadia Quest: Chaos Dragon', 2, 2017, 1 from dual union
Select 4509, 1, 'Arcadia Quest: Elysia', 8, 2016, 3 from dual union
Select 4510, 1, 'Arcadia Quest: Farfalla', 8, 2015, 7 from dual union
Select 4511, 1, 'Arcadia Quest: Fire Dragon', 0, 2017, 7 from dual union
Select 4512, 1, 'Arcadia Quest: Frost Dragon', 0, 2017, 10 from dual union
Select 4513, 1, 'Arcadia Quest: Guildmaster Kickstarter Heroes', 5, 2015, 4 from dual union
Select 4514, 1, 'Arcadia Quest: Haldor & Brenna', 9, 2015, 8 from dual union
Select 4515, 1, 'Arcadia Quest: Hassan', 0, 2015, 2 from dual union
Select 4516, 1, 'Arcadia Quest: Healing Fountain', 10, 2016, 8 from dual union
Select 4517, 1, 'Arcadia Quest: Hoshi', 8, 2017, 1 from dual union
Select 4518, 1, 'Arcadia Quest: Hïlda', 5, 2017, 4 from dual union
Select 4519, 1, 'Arcadia Quest: Inferno', 3, 2017, 9 from dual union
Select 4520, 1, 'Arcadia Quest: Inferno – Kickstarter Exclusives', 2, 2017, 5 from dual union
Select 4521, 1, 'Arcadia Quest: Inferno – Whole Lotta Lava', 2, 2017, 1 from dual union
Select 4522, 1, 'Arcadia Quest: Koba', 0, 2016, 9 from dual union
Select 4523, 1, 'Arcadia Quest: Leeroy', 6, 2017, 3 from dual union
Select 4524, 1, 'Arcadia Quest: Mamba & Rosh', 2, 2017, 6 from dual union
Select 4525, 1, 'Arcadia Quest: McHammer', 2, 2015, 8 from dual union
Select 4526, 1, 'Arcadia Quest: Nibbles', 7, 2015, 10 from dual union
Select 4527, 1, 'Arcadia Quest: Nina', 0, 2017, 4 from dual union
Select 4528, 1, 'Arcadia Quest: Pet Pack 1', 9, 2017, 5 from dual union
Select 4529, 1, 'Arcadia Quest: Pet Pack 2', 1, 2017, 6 from dual union
Select 4530, 1, 'Arcadia Quest: Pets', 1, 2017, 4 from dual union
Select 4531, 1, 'Arcadia Quest: Pets – Cerby', 7, 2017, 3 from dual union
Select 4532, 1, 'Arcadia Quest: Pigsy', 0, 2016, 8 from dual union
Select 4533, 1, 'Arcadia Quest: Steady Slingshot Promo Pack', 5, 2016, 1 from dual union
Select 4534, 1, 'Arcadia Quest: The Nameless Campaign', 0, 2015, 4 from dual union
Select 4535, 1, 'Arcadia Quest: Tiaret & Mittems', 5, 2015, 2 from dual union
Select 4536, 1, 'Arcadia Quest: Tomrick', 1, 2015, 1 from dual union
Select 4537, 1, 'Arcadia Quest: Viola & Crash', 6, 2017, 2 from dual union
Select 4538, 1, 'Arcadia Quest: Yona & Kuruk', 4, 2017, 6 from dual union
Select 4539, 1, 'Arcadia Quest: Yun', 10, 2015, 3 from dual union
Select 4540, 1, 'Arcadia Quest: Zahra', 8, 2016, 1 from dual union
Select 4541, 1, 'Arcadia: The Wyld Hunt', 5, 2016, 1 from dual union
Select 4542, 1, 'Arcana', 5, 2017, 7 from dual union
Select 4543, 1, 'Arcane Academy', 8, 2016, 5 from dual union
Select 4544, 1, 'Arcane Duels', 8, 2016, 4 from dual union
Select 4545, 1, 'Arcane Legions', 6, 2016, 4 from dual union
Select 4546, 1, 'Arcane Legions: Booster Pack', 9, 2015, 4 from dual union
Select 4547, 1, 'Arcane Legions: Dragons of the Far East', 7, 2016, 2 from dual union
Select 4548, 1, 'Arcane Legions: Egyptian Army Pack – Cavalry', 6, 2016, 5 from dual union
Select 4549, 1, 'Arcane Legions: Egyptian Army Pack – Infantry', 7, 2017, 8 from dual union
Select 4550, 1, 'Arcane Legions: Han Army Pack – Cavalry', 6, 2016, 3 from dual union
Select 4551, 1, 'Arcane Legions: Han Army Pack – Infantry', 0, 2017, 2 from dual union
Select 4552, 1, 'Arcane Legions: Roman Army Pack – Cavalry', 3, 2015, 9 from dual union
Select 4553, 1, 'Arcane Legions: Roman Army Pack – Infantry', 7, 2017, 6 from dual union
Select 4554, 1, 'Arcane Legions: Servants of Thebes', 3, 2015, 10 from dual union
Select 4555, 1, 'Arcane Legions: Siege Engines of Rome', 7, 2017, 2 from dual union
Select 4556, 1, 'Arcane Warfare Excel 10', 0, 2016, 7 from dual union
Select 4557, 1, 'The Arcane Warfare Project', 8, 2015, 7 from dual union
Select 4558, 1, 'Arcania', 2, 2016, 9 from dual union
Select 4559, 1, 'Arcanist', 3, 2015, 8 from dual union
Select 4560, 1, 'Arcanite Wars', 6, 2015, 8 from dual union
Select 4561, 1, 'Arcanity', 10, 2017, 8 from dual union
Select 4562, 1, 'Arcanor', 7, 2015, 6 from dual union
Select 4563, 1, 'Arcanum', 7, 2016, 7 from dual union
Select 4564, 1, 'Arcanum', 10, 2016, 1 from dual union
Select 4565, 1, 'Arcanum Heroes', 5, 2016, 6 from dual union
Select 4566, 1, 'Arcanum Legends', 2, 2017, 7 from dual union
Select 4567, 1, 'Arcanum Myths', 8, 2015, 9 from dual union
Select 4568, 1, 'Arcanum: Call to Adventure', 10, 2017, 10 from dual union
Select 4569, 1, 'Arcanum: The Witch', 6, 2015, 7 from dual union
Select 4570, 1, 'Arcanya: Magic Academy', 8, 2015, 9 from dual union
Select 4571, 1, 'Arcasam: Beat The Dragon', 4, 2016, 4 from dual union
Select 4572, 1, 'Arcatype', 1, 2016, 5 from dual union
Select 4573, 1, 'Arch Rival', 8, 2017, 1 from dual union
Select 4574, 1, 'Arch-Rival Basketball', 7, 2016, 3 from dual union
Select 4575, 1, 'Archaeologia', 2, 2016, 1 from dual union
Select 4576, 1, 'Archaeologia: Patate dOr Promo', 1, 2015, 7 from dual union
Select 4577, 1, 'Archaeologia: The Goodies', 3, 2015, 6 from dual union
Select 4578, 1, 'Archaeologist Sen So', 9, 2017, 1 from dual union
Select 4579, 1, 'Archaeologists', 7, 2017, 9 from dual union
Select 4580, 1, 'Archaeology', 3, 2017, 6 from dual union
Select 4581, 1, 'Archaeology: The Card Game', 4, 2016, 6 from dual union
Select 4582, 1, 'Archaeology: The New Expedition', 8, 2016, 10 from dual union
Select 4583, 1, 'Archaic Animalia', 6, 2017, 9 from dual union
Select 4584, 1, 'Archchess', 2, 2017, 4 from dual union
Select 4585, 1, 'ArchCriminal', 10, 2015, 3 from dual union
Select 4586, 1, 'Arche de la nature', 3, 2015, 9 from dual union
Select 4587, 1, 'Arche Extra Mix 2', 0, 2015, 8 from dual union
Select 4588, 1, 'Arche Noah', 5, 2017, 9 from dual union
Select 4589, 1, 'Das Arche-Noah Spiel', 5, 2017, 5 from dual union
Select 4590, 1, 'Archean Empires', 8, 2016, 10 from dual union
Select 4591, 1, 'Archegona', 2, 2015, 5 from dual union
Select 4592, 1, 'Archeoegypt', 0, 2016, 1 from dual union
Select 4593, 1, 'Archer Sen So', 2, 2016, 3 from dual union
Select 4594, 1, 'Archer: Fast and Loose', 7, 2015, 2 from dual union
Select 4595, 1, 'Archer: Once You Go Blackmail...', 5, 2016, 4 from dual union
Select 4596, 1, 'Archer: The Danger Zone! Board Game', 3, 2015, 8 from dual union
Select 4597, 1, 'Archers', 1, 2017, 10 from dual union
Select 4598, 1, 'The Archers', 1, 2017, 10 from dual union
Select 4599, 1, 'The Archers', 7, 2016, 9 from dual union
Select 4600, 1, 'Archie Bunkers Card Game', 8, 2016, 5 from dual union
Select 4601, 1, 'Archie Comic Game', 1, 2015, 8 from dual union
Select 4602, 1, 'The Archie Game', 7, 2016, 7 from dual union
Select 4603, 1, 'Archieball', 9, 2017, 5 from dual union
Select 4604, 1, 'Archimago', 9, 2015, 3 from dual union
Select 4605, 1, 'Archimedes', 6, 2016, 6 from dual union
Select 4606, 1, 'Archimedes', 9, 2016, 1 from dual union
Select 4607, 1, 'Archimedes', 7, 2017, 6 from dual union
Select 4608, 1, 'Archipel', 3, 2016, 9 from dual union
Select 4609, 1, 'Archipel', 3, 2015, 4 from dual union
Select 4610, 1, 'Archipelago', 2, 2015, 5 from dual union
Select 4611, 1, 'Archipelago', 7, 2016, 5 from dual union
Select 4612, 1, 'Archipelago: Solo Expansion', 2, 2016, 2 from dual union
Select 4613, 1, 'Archipelago: War & Peace', 1, 2017, 3 from dual union
Select 4614, 1, 'Architect', 6, 2015, 3 from dual union
Select 4615, 1, 'The Architect', 1, 2016, 6 from dual union
Select 4616, 1, 'ArchitecTown', 7, 2017, 5 from dual union
Select 4617, 1, 'Architectus', 2, 2017, 5 from dual union
Select 4618, 1, 'Architekton', 9, 2017, 1 from dual union
Select 4619, 1, 'ArchMage', 1, 2015, 10 from dual union
Select 4620, 1, 'Archmagery', 9, 2016, 4 from dual union
Select 4621, 1, 'Archmagi', 6, 2017, 4 from dual union
Select 4622, 1, 'Archon Arena', 5, 2017, 2 from dual union
Select 4623, 1, 'Archon Skirmish', 3, 2017, 3 from dual union
Select 4624, 1, 'Archon: Glory & Machination', 6, 2017, 4 from dual union
Select 4625, 1, 'Archon: Glory & Machination – BGG Mini Expansion', 8, 2015, 9 from dual union
Select 4626, 1, 'Archon: Glory & Machination – Kickstarter Stretch Rewards', 8, 2016, 6 from dual union
Select 4627, 1, 'Archos', 7, 2016, 10 from dual union
Select 4628, 1, 'Archworld', 6, 2017, 2 from dual union
Select 4629, 1, 'Archäo', 3, 2017, 6 from dual union
Select 4630, 1, 'Arclight', 6, 2015, 4 from dual union
Select 4631, 1, 'Arclight: Close Encounters in Nearspace', 8, 2016, 2 from dual union
Select 4632, 1, 'Arcola: The Battle for Italy, 1796', 4, 2017, 6 from dual union
Select 4633, 1, 'Arcole 1796', 1, 2016, 7 from dual union
Select 4634, 1, 'Arcology', 6, 2016, 5 from dual union
Select 4635, 1, 'Arcology', 3, 2018, 4 from dual union
Select 4636, 1, 'Arctic', 8, 2016, 5 from dual union
Select 4637, 1, 'Arctic Dash: A Narwhal Race', 6, 2016, 10 from dual union
Select 4638, 1, 'Arctic Dash: Curious Kids', 7, 2016, 1 from dual union
Select 4639, 1, 'Arctic Disaster: The Destruction of Convoy PQ-17', 5, 2016, 9 from dual union
Select 4640, 1, 'Arctic Front', 10, 2015, 2 from dual union
Select 4641, 1, 'Arctic Hunting', 1, 2015, 6 from dual union
Select 4642, 1, 'Arctic Meltdown: 2 Player Mini Version', 2, 2016, 4 from dual union
Select 4643, 1, 'Arctic Scavengers', 10, 2015, 1 from dual union
Select 4644, 1, 'Arctic Scavengers: Base Game+HQ+Recon', 10, 2015, 8 from dual union
Select 4645, 1, 'Arctic Scavengers: HQ', 6, 2015, 3 from dual union
Select 4646, 1, 'Arctic Scavengers: Recon', 9, 2015, 7 from dual union
Select 4647, 1, 'Arctic Storm: The Russo-Finnish Winter War 1939-40', 9, 2015, 8 from dual union
Select 4648, 1, 'Arctic Survival', 7, 2016, 7 from dual union
Select 4649, 1, 'Arctica', 2, 2016, 7 from dual union
Select 4650, 1, 'ArcWorlde', 9, 2016, 4 from dual union
Select 4651, 1, 'El arcón del pirata', 1, 2017, 3 from dual union
Select 4652, 1, 'Ard Ri', 10, 2015, 6 from dual union
Select 4653, 1, 'Ard Rí', 3, 2015, 10 from dual union
Select 4654, 1, 'Ardennes', 1, 2016, 10 from dual union
Select 4655, 1, 'Ardennes 44', 5, 2015, 5 from dual union
Select 4656, 1, 'Ardennes 1944', 10, 2017, 6 from dual union
Select 4657, 1, 'The Ardennes Offensive', 6, 2015, 8 from dual union
Select 4658, 1, 'Ardennes Petite: A Battle of the Bulge, Ardennes 1944, Minigame', 5, 2015, 5 from dual union
Select 4659, 1, 'Ardeny 1944', 7, 2015, 10 from dual union
Select 4660, 1, 'Ardeny 1944-45', 5, 2015, 5 from dual union
Select 4661, 1, 'Ardor', 7, 2016, 10 from dual union
Select 4662, 1, 'The Arduous Beginning', 7, 2015, 3 from dual union
Select 4663, 1, 'Are We There Yet?', 10, 2016, 1 from dual union
Select 4664, 1, 'Are We There Yet? The Air Travel Card Game', 6, 2016, 8 from dual union
Select 4665, 1, 'Are You 4 Real?', 4, 2017, 2 from dual union
Select 4666, 1, 'Are You Afraid of the Dark?', 7, 2017, 6 from dual union
Select 4667, 1, 'Are You Being Served?', 8, 2016, 4 from dual union
Select 4668, 1, 'Are You Chicken?', 9, 2016, 1 from dual union
Select 4669, 1, 'Are you joking?', 3, 2016, 2 from dual union
Select 4670, 1, 'Are You My Baby?: Animal Game', 0, 2015, 10 from dual union
Select 4671, 1, 'Are You Normal?', 3, 2017, 7 from dual union
Select 4672, 1, 'Are You Not Entertained?', 0, 2016, 5 from dual union
Select 4673, 1, 'Are You On The Ball?', 3, 2015, 9 from dual union
Select 4674, 1, 'Are You Phrazy?', 8, 2015, 3 from dual union
Select 4675, 1, 'Are You Phrazy? Holiday Carols Edition', 4, 2016, 6 from dual union
Select 4676, 1, 'Are You Phrazy? TV Edition', 2, 2016, 4 from dual union
Select 4677, 1, 'Are You Ready For The 4th Grade?', 1, 2016, 1 from dual union
Select 4678, 1, 'Are You Smarter Than a 5th Grader?', 2, 2017, 7 from dual union
Select 4679, 1, 'Are you Smarter Than a 5th Grader? Card Game', 10, 2017, 5 from dual union
Select 4680, 1, 'Are you Smarter Than a 5th Grader? Disney Edition Card Game', 3, 2017, 7 from dual union
Select 4681, 1, 'Are You the Cultist? Intrigue Edition', 6, 2016, 7 from dual union
Select 4682, 1, 'Are You the Cultist? Party Edition', 9, 2016, 8 from dual union
Select 4683, 1, 'Are You the Traitor?', 10, 2017, 9 from dual union
Select 4684, 1, 'Are You... Over The Hill', 7, 2017, 5 from dual union
Select 4685, 1, 'Area 1851', 10, 2015, 2 from dual union
Select 4686, 1, 'Area 1851: Promo Cards', 6, 2015, 8 from dual union
Select 4687, 1, 'Area 51', 1, 2016, 4 from dual union
Select 4688, 1, 'Area 51: Top Secret', 0, 2016, 5 from dual union
Select 4689, 1, 'Arena', 3, 2016, 4 from dual union
Select 4690, 1, 'Arena', 9, 2017, 4 from dual union
Select 4691, 1, 'Arena', 8, 2015, 8 from dual union
Select 4692, 1, 'Arena', 6, 2016, 10 from dual union
Select 4693, 1, 'Arena', 2, 2015, 10 from dual union
Select 4694, 1, 'Arena', 8, 2017, 1 from dual union
Select 4695, 1, 'Arena', 5, 2016, 8 from dual union
Select 4696, 1, 'Arena', 6, 2015, 1 from dual union
Select 4697, 1, 'Arena', 3, 2017, 6 from dual union
Select 4698, 1, 'Arena', 4, 2016, 9 from dual union
Select 4699, 1, 'Arena', 8, 2016, 6 from dual union
Select 4700, 1, 'Arena Albionu', 4, 2017, 2 from dual union
Select 4701, 1, 'Arena Assault', 6, 2015, 4 from dual union
Select 4702, 1, 'Arena Assault: Catfight', 1, 2015, 2 from dual union
Select 4703, 1, 'Arena Assault: Robot War', 4, 2015, 10 from dual union
Select 4704, 1, 'Arena Assault: Samurai vs Ninja', 7, 2016, 1 from dual union
Select 4705, 1, 'Arena Bizarre', 1, 2016, 5 from dual union
Select 4706, 1, 'Arena DeathMatch', 6, 2017, 4 from dual union
Select 4707, 1, 'Arena Football', 5, 2017, 10 from dual union
Select 4708, 1, 'Arena Games', 10, 2015, 2 from dual union
Select 4709, 1, 'Arena Gladiators', 5, 2016, 5 from dual union
Select 4710, 1, 'Arena Magica', 7, 2015, 10 from dual union
Select 4711, 1, 'Arena Maximus', 10, 2017, 1 from dual union
Select 4712, 1, 'Arena of Blood', 1, 2015, 1 from dual union
Select 4713, 1, 'Arena of Death', 5, 2016, 1 from dual union
Select 4714, 1, 'Arena of Heroes', 7, 2015, 8 from dual union
Select 4715, 1, 'Arena Rex', 9, 2016, 6 from dual union
Select 4716, 1, 'Arena: For the Gods!', 7, 2017, 2 from dual union
Select 4717, 1, 'Arena: Horácios e Curiácios', 2, 2015, 10 from dual union
Select 4718, 1, 'Arena: Morituri te salutant', 6, 2017, 5 from dual union
Select 4719, 1, 'Arena: Roma II', 3, 2016, 6 from dual union
Select 4720, 1, 'Arena: Sangue & Glória', 10, 2016, 9 from dual union
Select 4721, 1, 'Arena: The Contest', 3, 2017, 2 from dual union
Select 4722, 1, 'Arenario', 9, 2015, 4 from dual union
Select 4723, 1, 'Arepo', 5, 2016, 8 from dual union
Select 4724, 1, 'The Ares Project', 7, 2017, 2 from dual union
Select 4725, 1, 'ARES: Miniatures Wargaming System', 3, 2017, 9 from dual union
Select 4726, 1, 'Arete: The Philosophy Board Game', 9, 2015, 6 from dual union
Select 4727, 1, 'Arf!', 1, 2016, 10 from dual union
Select 4728, 1, 'Argent:  Promo Pack #1', 1, 2015, 10 from dual union
Select 4729, 1, 'Argent: Hall Monitor', 6, 2015, 5 from dual union
Select 4730, 1, 'Argent: Mancers of the University', 3, 2015, 8 from dual union
Select 4731, 1, 'Argent: Summer Break', 7, 2016, 5 from dual union
Select 4732, 1, 'Argent: The Consortium', 7, 2015, 8 from dual union
Select 4733, 1, 'Argentilandia', 1, 2016, 3 from dual union
Select 4734, 1, 'ARGH', 10, 2017, 2 from dual union
Select 4735, 1, 'Argh!', 6, 2017, 7 from dual union
Select 4736, 1, 'Arginussae', 9, 2015, 7 from dual union
Select 4737, 1, 'Argle Bargle', 1, 2017, 7 from dual union
Select 4738, 1, 'Argo', 3, 2016, 1 from dual union
Select 4739, 1, 'Argonaute', 2, 2015, 9 from dual union
Select 4740, 1, 'Argonauts', 3, 2015, 7 from dual union
Select 4741, 1, 'Argonauts Mini Expansion', 8, 2015, 3 from dual union
Select 4742, 1, 'Argonians-1', 7, 2015, 10 from dual union
Select 4743, 1, 'Argonians-2', 6, 2015, 5 from dual union
Select 4744, 1, 'Argonians-3', 7, 2017, 4 from dual union
Select 4745, 1, 'Argosy', 3, 2015, 1 from dual union
Select 4746, 1, 'Argosy Command', 0, 2015, 2 from dual union
Select 4747, 1, 'Argotics', 4, 2016, 2 from dual union
Select 4748, 1, 'Argue', 5, 2017, 7 from dual union
Select 4749, 1, 'Arguile', 1, 2016, 10 from dual union
Select 4750, 1, 'Ariadnes Thread', 7, 2015, 6 from dual union
Select 4751, 1, 'The Arian Controversy', 3, 2017, 8 from dual union
Select 4752, 1, 'Ariel the little mermaid', 10, 2015, 4 from dual union
Select 4753, 1, 'Aries', 8, 2016, 4 from dual union
Select 4754, 1, 'Arimaa', 0, 2015, 7 from dual union
Select 4755, 1, 'Arion', 5, 2015, 3 from dual union
Select 4756, 1, 'Ariovistus: A Falling Sky Expansion', 5, 2016, 6 from dual union
Select 4757, 1, 'Aristo', 6, 2015, 6 from dual union
Select 4758, 1, 'Aristo-Maze', 5, 2016, 1 from dual union
Select 4759, 1, 'Aristocats', 8, 2017, 2 from dual union
Select 4760, 1, 'Aristocracy', 7, 2016, 2 from dual union
Select 4761, 1, 'The Aristocrats', 1, 2017, 6 from dual union
Select 4762, 1, 'Aristoocrazy', 9, 2015, 4 from dual union
Select 4763, 1, 'Aristotles Stairway', 9, 2004, 3 from dual union
Select 4764, 1, 'Aristozzle', 0, 2015, 6 from dual union
Select 4765, 1, 'Arithmanix', 6, 2016, 10 from dual union
Select 4766, 1, 'Arithmattack', 2, 2016, 9 from dual union
Select 4767, 1, 'Arithmechips Multiplication Game', 8, 2015, 10 from dual union
Select 4768, 1, 'Arithmetic Bingo', 3, 2017, 1 from dual union
Select 4769, 1, 'Arithmetic Rummy', 3, 2017, 5 from dual union
Select 4770, 1, 'Arithmetic Tic-Tac-Toe', 4, 2016, 4 from dual union
Select 4771, 1, 'Arithmetical Croquet', 8, 2015, 3 from dual union
Select 4772, 1, 'Arithmetical Pastime: Intended to Infuse the Rudiments of Arithmetics under the Idea of Amusement', 6, 2016, 2 from dual union
Select 4773, 1, 'Arival: the Path of the Past', 7, 2016, 6 from dual union
Select 4774, 1, 'Arizona Trivia', 6, 2016, 3 from dual union
Select 4775, 1, 'Ark', 4, 2015, 3 from dual union
Select 4776, 1, 'Ark', 5, 2015, 4 from dual union
Select 4777, 1, 'Ark', 0, 2017, 7 from dual union
Select 4778, 1, 'The Ark', 6, 2015, 8 from dual union
Select 4779, 1, 'Ark & Noah', 8, 2017, 3 from dual union
Select 4780, 1, 'Ark Extra Mix', 6, 2016, 6 from dual union
Select 4781, 1, 'Ark of Animals', 7, 2016, 5 from dual union
Select 4782, 1, 'Ark of Animals: Alternative Board Promo', 7, 2016, 7 from dual union
Select 4783, 1, 'The Ark of the Covenant', 0, 2017, 9 from dual union
Select 4784, 1, 'Ark Royal', 5, 2016, 5 from dual union
Select 4785, 1, 'ARK: The Great Race', 9, 2017, 1 from dual union
Select 4786, 1, 'Arkadia', 0, 2017, 2 from dual union
Select 4787, 1, 'Arkado', 5, 2016, 3 from dual union
Select 4788, 1, 'Arkana Miłości', 7, 2017, 7 from dual union
Select 4789, 1, 'Arkana Miłości: Dominacja', 4, 2016, 10 from dual union
Select 4790, 1, 'Arkana Miłości: Kochankowie', 4, 2015, 3 from dual union
Select 4791, 1, 'Arkansas Bluff', 4, 2017, 10 from dual union
Select 4792, 1, 'Arkantis', 8, 2015, 6 from dual union
Select 4793, 1, 'Arkanum', 4, 2015, 5 from dual union
Select 4794, 1, 'Arkel: De Ontdekkingsreis Sinds 1442', 2, 2017, 10 from dual union
Select 4795, 1, 'Arkham Express', 10, 2016, 6 from dual union
Select 4796, 1, 'Arkham Horror', 2, 2015, 1 from dual union
Select 4797, 1, 'Arkham Horror', 6, 2017, 5 from dual union
Select 4798, 1, 'Arkham Horror: Arkham Nights 2010 Promotional Ancient One Cards', 1, 2015, 9 from dual union
Select 4799, 1, 'Arkham Horror: Arkham Nights 2011 Promotional Ancient One Card', 3, 2015, 2 from dual union
Select 4800, 1, 'Arkham Horror: Arkham Nights 2012 Promotional Ancient One Card', 6, 2015, 10 from dual union
Select 4801, 1, 'Arkham Horror: Curse of the Dark Pharaoh Expansion', 8, 2016, 9 from dual union
Select 4802, 1, 'Arkham Horror: Dance of the Damned (Mythos)', 8, 2015, 5 from dual union
Select 4803, 1, 'Arkham Horror: Dunwich Horror Expansion', 0, 2017, 9 from dual union
Select 4804, 1, 'Arkham Horror: Innsmouth Horror Expansion', 4, 2016, 4 from dual union
Select 4805, 1, 'Arkham Horror: Kingsport Horror Expansion', 6, 2015, 7 from dual union
Select 4806, 1, 'Arkham Horror: Miskatonic Horror Expansion', 7, 2017, 2 from dual union
Select 4807, 1, 'Arkham Horror: Oliver Grayson (Ally)', 3, 2016, 3 from dual union
Select 4808, 1, 'Arkham Horror: Penny Arcade Characters', 9, 2016, 8 from dual union
Select 4809, 1, 'Arkham Horror: The Black Goat of the Woods Expansion', 9, 2017, 2 from dual union
Select 4810, 1, 'Arkham Horror: The Card Game', 0, 2016, 6 from dual union
Select 4811, 1, 'Arkham Horror: The Card Game – Blood on the Altar: Mythos Pack', 6, 2017, 6 from dual union
Select 4812, 1, 'Arkham Horror: The Card Game – Carnevale of Horrors – Scenario Pack', 2, 2016, 2 from dual union
Select 4813, 1, 'Arkham Horror: The Card Game – Curse of the Rougarou: Scenario Pack', 4, 2016, 3 from dual union
Select 4814, 1, 'Arkham Horror: The Card Game – The Dunwich Legacy', 0, 2017, 4 from dual union
Select 4815, 1, 'Arkham Horror: The Card Game – The Essex County Express: Mythos Pack', 5, 2017, 9 from dual union
Select 4816, 1, 'Arkham Horror: The Card Game – The Miskatonic Museum: Mythos Pack', 5, 2017, 7 from dual union
Select 4817, 1, 'Arkham Horror: The Card Game – Undimensioned and Unseen: Mythos Pack', 1, 2017, 4 from dual union
Select 4818, 1, 'Arkham Horror: The Curse of the Dark Pharaoh Expansion (Revised Edition)', 4, 2017, 10 from dual union
Select 4819, 1, 'Arkham Horror: The Dark Pharaoh (Herald)', 9, 2017, 9 from dual union
Select 4820, 1, 'Arkham Horror: The Dunwich Horror (Herald)', 3, 2016, 1 from dual union
Select 4821, 1, 'Arkham Horror: The King in Yellow Expansion', 1, 2015, 10 from dual union
Select 4822, 1, 'Arkham Horror: The Lurker at the Threshold Expansion', 10, 2016, 1 from dual union
Select 4823, 1, 'Arkham Investigator', 6, 2017, 1 from dual union
Select 4824, 1, 'Arkham Nights', 1, 2016, 2 from dual union
Select 4825, 1, 'Arkham Ritual', 2, 2017, 7 from dual union
Select 4826, 1, 'Arkham Terror: Experimental Therapy', 1, 2015, 5 from dual union
Select 4827, 1, 'Arkhangel: The Great Nameless', 6, 2017, 1 from dual union
Select 4828, 1, 'Arkhangelsk', 2, 2015, 5 from dual union
Select 4829, 1, 'Arktia', 7, 2017, 5 from dual union
Select 4830, 1, 'Arkwright', 8, 2016, 2 from dual union
Select 4831, 1, 'Arkwright: Noblesse Oblige', 2, 2016, 1 from dual union
Select 4832, 1, 'Arlecchino', 1, 2017, 1 from dual union
Select 4833, 1, 'Arlequin', 10, 2016, 9 from dual union
Select 4834, 1, 'Arm Chair Quarterback: A Game of Skill', 1, 2016, 6 from dual union
Select 4835, 1, 'Arm Weapons And Climb Solo: Gulf War', 6, 2016, 9 from dual union
Select 4836, 1, 'Arma', 5, 2016, 9 from dual union
Select 4837, 1, 'Armada', 3, 2015, 1 from dual union
Select 4838, 1, 'Armada', 10, 2015, 3 from dual union
Select 4839, 1, 'Armada', 0, 2015, 2 from dual union
Select 4840, 1, 'Armada', 8, 2017, 5 from dual union
Select 4841, 1, 'Armada', 2, 2015, 1 from dual union
Select 4842, 1, 'Armada', 4, 2016, 8 from dual union
Select 4843, 1, 'Armada', 3, 2016, 1 from dual union
Select 4844, 1, 'Armada Beginners Box', 6, 2017, 5 from dual union
Select 4845, 1, 'Armadöra', 2, 2016, 9 from dual union
Select 4846, 1, 'Armageddon', 2, 2015, 1 from dual union
Select 4847, 1, 'Armageddon', 8, 2015, 5 from dual union
Select 4848, 1, 'Armageddon', 7, 2015, 5 from dual union
Select 4849, 1, 'Armageddon', 6, 2016, 3 from dual union
Select 4850, 1, 'Armageddon Hour', 1, 2017, 1 from dual union
Select 4851, 1, 'Armageddon Preppin', 5, 2017, 6 from dual union
Select 4852, 1, 'Armageddon: Das strategische Fantasyspiel', 8, 2015, 4 from dual union
Select 4853, 1, 'Armageddon: Tactical Combat 3000 to 500 B.C.', 7, 2017, 10 from dual union
Select 4854, 1, 'Armageddon: The End is Near', 5, 2015, 3 from dual union
Select 4855, 1, 'Armalion', 1, 2017, 2 from dual union
Select 4856, 1, 'Armalion: Der Orkensturm', 9, 2017, 7 from dual union
Select 4857, 1, 'Armalion: Kampf um Ilsur', 1, 2017, 9 from dual union
Select 4858, 1, 'Armalion: Zauberey und Göttermacht', 3, 2017, 3 from dual union
Select 4859, 1, 'Armatac II', 10, 2016, 2 from dual union
Select 4860, 1, 'Armati', 6, 2016, 5 from dual union
Select 4861, 1, 'Armati II', 2, 2016, 4 from dual union
Select 4862, 1, 'Armchair Cricket', 0, 2017, 4 from dual union
Select 4863, 1, 'Armchair Generals', 4, 2016, 2 from dual union
Select 4864, 1, 'Armchair Golf', 8, 2005, 10 from dual union
Select 4865, 1, 'Armchair Racing', 9, 2017, 9 from dual union
Select 4866, 1, 'Armed Legion', 10, 2016, 6 from dual union
Select 4867, 1, 'Armed Legion Portable', 0, 2016, 5 from dual union
Select 4868, 1, 'Armed Warfare', 1, 2017, 8 from dual union
Select 4869, 1, 'Armego: The Board Game', 8, 2016, 4 from dual union
Select 4870, 1, 'Armenian Checkers', 1, 2017, 7 from dual union
Select 4871, 1, 'Armies At Lutzen', 5, 2016, 9 from dual union
Select 4872, 1, 'Armies of Antiquity', 2, 2017, 1 from dual union
Select 4873, 1, 'Armies of Arcana', 7, 2016, 4 from dual union
Select 4874, 1, 'Armies of Chivalry', 4, 2017, 2 from dual union
Select 4875, 1, 'Armies of Oblivion: ASL Module 12', 10, 2016, 9 from dual union
Select 4876, 1, 'Armies of Oz', 5, 2016, 5 from dual union
Select 4877, 1, 'Armies of Riddle TCG', 4, 2017, 3 from dual union
Select 4878, 1, 'The Armies of Tekumel, Volume I: Tsolyanu', 2, 2015, 6 from dual union
Select 4879, 1, 'The Armies of Tekumel, Volume II: Yan Kor and Allies', 0, 2017, 3 from dual union
Select 4880, 1, 'The Armies of Tekumel, Volume III: Muugalavya', 7, 2017, 4 from dual union
Select 4881, 1, 'The Armies of Tekumel, Volume IV: Salarvya', 3, 2016, 8 from dual union
Select 4882, 1, 'The Armies of Tekumel, Volume V: Livyanu and Tsolei', 4, 2017, 7 from dual union
Select 4883, 1, 'The Armies of Tekumel, Volume VI: Shenyu', 9, 2015, 7 from dual union
Select 4884, 1, 'Armies of the Dead', 10, 2016, 10 from dual union
Select 4885, 1, 'Armies of the Imperium', 1, 2015, 5 from dual union
Select 4886, 1, 'Armies of the War of Spanish Succession and the Great Northern War', 0, 2017, 4 from dual union
Select 4887, 1, 'Armies of the White Sun', 3, 2017, 5 from dual union
Select 4888, 1, 'Arminius and the Defense of Germania', 6, 2015, 3 from dual union
Select 4889, 1, 'Armis', 10, 2015, 6 from dual union
Select 4890, 1, 'Armor', 7, 2015, 10 from dual union
Select 4891, 1, 'Armor & Ash', 4, 2016, 1 from dual union
Select 4892, 1, 'Armor Attacks: The Tank Platoon', 6, 2017, 7 from dual union
Select 4893, 1, 'Armor Grid: Mech Attack!', 4, 2015, 5 from dual union
Select 4894, 1, 'Armor of God', 3, 2016, 8 from dual union
Select 4895, 1, 'The Armor of God', 4, 2015, 7 from dual union
Select 4896, 1, 'Armor Quest: Quæstro – Expansion Set', 6, 2015, 8 from dual union
Select 4897, 1, 'Armor Supremacy', 10, 2017, 8 from dual union
Select 4898, 1, 'Armored Assault', 10, 2015, 5 from dual union
Select 4899, 1, 'Armored Assault', 10, 2017, 4 from dual union
Select 4900, 1, 'Armored Attack: 1939 to 1990', 6, 2016, 9 from dual union
Select 4901, 1, 'Armored Knights North Africa: Operation Crusader', 1, 2015, 4 from dual union
Select 4902, 1, 'Armored Knights North Africa: Operation Venezia', 7, 2016, 9 from dual union
Select 4903, 1, 'Armored Knights: Guderian Crosses the Desna 1941', 2, 2016, 6 from dual union
Select 4904, 1, 'Armored Knights: Operation Gazelle', 8, 2017, 1 from dual union
Select 4905, 1, 'Armored Reserves', 6, 2015, 6 from dual union
Select 4906, 1, 'Armored Stand', 9, 2016, 10 from dual union
Select 4907, 1, 'Armored Trooper Votoms: Battling', 7, 2017, 10 from dual union
Select 4908, 1, 'Armored Trooper Votoms: Civil War', 5, 2017, 9 from dual union
Select 4909, 1, 'Armored Trooper Votoms: Conflict on Kummen', 0, 2014, 8 from dual union
Select 4910, 1, 'Armored Trooper Votoms: Plotters City Woodo', 2, 2013, 2 from dual union
Select 4911, 1, 'Armored Trooper Votoms: Red Shoulder', 1, 2015, 9 from dual union
Select 4912, 1, 'Armored Trooper Votoms: The Battling Card Game', 6, 2017, 7 from dual union
Select 4913, 1, 'Armored: The Art of War', 7, 2015, 10 from dual union
Select 4914, 1, 'Armorica', 5, 2015, 8 from dual union
Select 4915, 1, 'Armory', 8, 2016, 5 from dual union
Select 4916, 1, 'Armour and Infantry', 3, 2015, 1 from dual union
Select 4917, 1, 'Armour Quest: Quæstro', 0, 2015, 6 from dual union
Select 4918, 1, 'Armoured Clash', 5, 2017, 3 from dual union
Select 4919, 1, 'Armoured Syndicate', 8, 2017, 3 from dual union
Select 4920, 1, 'Armoured Wargaming: A Detailed Guide to Model Tank Warfare', 2, 2017, 2 from dual union
Select 4921, 1, 'Arms Race', 2, 2016, 4 from dual union
Select 4922, 1, 'Army Air Corps', 9, 2016, 8 from dual union
Select 4923, 1, 'Army Ants', 1, 2017, 6 from dual union
Select 4924, 1, 'Army Brats', 2, 2017, 1 from dual union
Select 4925, 1, 'Army Checkers', 8, 2016, 5 from dual union
Select 4926, 1, 'Army For Sale', 4, 2015, 5 from dual union
Select 4927, 1, 'The Army Game', 0, 2016, 2 from dual union
Select 4928, 1, 'Army Group Center', 2, 2016, 7 from dual union
Select 4929, 1, 'Army Group Narwa', 7, 2017, 8 from dual union
Select 4930, 1, 'Army Group North 1944', 2, 2016, 2 from dual union
Select 4931, 1, 'Army Group North: The Summer Offensive Against Leningrad, 1941', 8, 2017, 10 from dual union
Select 4932, 1, 'Army Lists 3000BC - 1250AD', 7, 2016, 5 from dual union
Select 4933, 1, 'Army Lists Book One: 3000 BC – 75 AD', 1, 2015, 2 from dual union
Select 4934, 1, 'Army Lists Book Three: Armies originating after 1000 AD', 5, 2017, 6 from dual union
Select 4935, 1, 'Army Lists Book Two: 55 BC – 1000 AD', 8, 2016, 2 from dual union
Select 4936, 1, 'Army Lists for the Revolution in Warfare: Volume 1 1550-1660AD', 6, 2015, 4 from dual union
Select 4937, 1, 'Army Lists for The Shock of Impact', 6, 2015, 1 from dual union
Select 4938, 1, 'Army Lists Volume 1: Armies of the Ancient Near East 3000BC - 500 BC', 9, 2015, 4 from dual union
Select 4939, 1, 'Army Lists Volume 2: Armies of the Far East, Asia, and America', 8, 2015, 10 from dual union
Select 4940, 1, 'Army Man Backgammon', 5, 2015, 4 from dual union
Select 4941, 1, 'Army Men Combat', 5, 2015, 9 from dual union
Select 4942, 1, 'Army of Civilisation', 2, 2017, 5 from dual union
Select 4943, 1, 'Army of Darkness', 4, 2015, 1 from dual union
Select 4944, 1, 'Army of Darkness Card Game', 4, 2016, 1 from dual union
Select 4945, 1, 'Army of Darkness Skirmish', 0, 2016, 5 from dual union
Select 4946, 1, 'Army of Frogs', 1, 2017, 8 from dual union
Select 4947, 1, 'Army of Ireland', 3, 2015, 5 from dual union
Select 4948, 1, 'Army of Lappland', 7, 2017, 1 from dual union
Select 4949, 1, 'Army of Shadows', 8, 2015, 10 from dual union
Select 4950, 1, 'Army of the Barbarians', 3, 2015, 7 from dual union
Select 4951, 1, 'Army of the Dwarves', 0, 2017, 6 from dual union
Select 4952, 1, 'Army of the Elves', 3, 2015, 5 from dual union
Select 4953, 1, 'Army of the Goblinoids', 8, 2017, 5 from dual union
Select 4954, 1, 'The Army of the Heartland: The Army of Tennessees Campaigns, 1861-1863', 4, 2017, 10 from dual union
Select 4955, 1, 'Army of Zero', 8, 2017, 2 from dual union
Select 4956, 1, 'Army Quest', 3, 2016, 6 from dual union
Select 4957, 1, 'Army vs. Aliens', 2, 2015, 8 from dual union
Select 4958, 1, 'The Army without a General', 2, 2016, 6 from dual union
Select 4959, 1, 'Armymals', 3, 2017, 4 from dual union
Select 4960, 1, 'Arne', 7, 2017, 2 from dual union
Select 4961, 1, 'Arne Expansion', 3, 2015, 9 from dual union
Select 4962, 1, 'Arne Junior', 2, 2017, 10 from dual union
Select 4963, 1, 'Arne Total', 6, 2015, 9 from dual union
Select 4964, 1, 'Arnhem', 10, 2017, 4 from dual union
Select 4965, 1, 'Arnhem', 0, 2015, 10 from dual union
Select 4966, 1, 'Arnhem 44', 6, 2015, 1 from dual union
Select 4967, 1, 'Arnhem 1944', 10, 2017, 5 from dual union
Select 4968, 1, 'Arnhem 1944', 10, 2016, 8 from dual union
Select 4969, 1, 'Arnhem and Operation Market-Garden', 9, 2016, 5 from dual union
Select 4970, 1, 'Arnhem Bridge', 10, 2016, 10 from dual union
Select 4971, 1, 'Arnhem: Defiant Stand', 2, 2017, 4 from dual union
Select 4972, 1, 'Arnhem: Defiant Stand & Scottish Corridor Gamers Guide', 2, 2015, 4 from dual union
Select 4973, 1, 'Arnhem: Defiant Stand Master Set', 9, 2016, 5 from dual union
Select 4974, 1, 'Arnhem: The Farthest Bridge', 3, 2016, 1 from dual union
Select 4975, 1, 'Arnhem: The Third Bridge', 8, 2017, 10 from dual union
Select 4976, 1, 'Arnold Palmer Golf Game', 8, 2016, 2 from dual union
Select 4977, 1, 'Arnold Palmers Golf Card Game', 9, 2015, 7 from dual union
Select 4978, 1, 'Arnold Palmers Inside Golf', 6, 2016, 6 from dual union
Select 4979, 1, 'Arnold Palmers Pro Shot Golf', 3, 2015, 1 from dual union
Select 4980, 1, 'Arnolds Finest Hour', 6, 2017, 1 from dual union
Select 4981, 1, 'Arns rike', 10, 2017, 10 from dual union
Select 4982, 1, 'Aronda', 9, 2015, 9 from dual union
Select 4983, 1, 'Around the Commonwealth by Aeroplane', 1, 2017, 6 from dual union
Select 4984, 1, 'Around The Horn', 5, 2017, 2 from dual union
Select 4985, 1, 'Around the House Treasure Hunt Game', 6, 2016, 9 from dual union
Select 4986, 1, 'Around the Jewish Year: The Game That Takes "A Year" To Play!', 8, 2016, 9 from dual union
Select 4987, 1, 'Around The Table', 5, 2017, 8 from dual union
Select 4988, 1, 'Around the World', 4, 2016, 8 from dual union
Select 4989, 1, 'Around the world', 6, 2015, 2 from dual union
Select 4990, 1, 'Around the World', 0, 2015, 8 from dual union
Select 4991, 1, 'Around the World', 9, 2016, 3 from dual union
Select 4992, 1, 'Around the World', 8, 2017, 6 from dual union
Select 4993, 1, 'Around the World in 80 Days', 7, 2017, 9 from dual union
Select 4994, 1, 'Around the World in 80 Days', 7, 2017, 4 from dual union
Select 4995, 1, 'Around the World in 80 Days', 10, 2015, 8 from dual union
Select 4996, 1, 'Around the World in 80 Days', 8, 2017, 6 from dual union
Select 4997, 1, 'Around the World in 80 Days', 7, 2016, 8 from dual union
Select 4998, 1, 'Around the World in 80 Days with Michael Palin', 1, 2017, 10 from dual union
Select 4999, 1, 'Arpaa Turup', 10, 2017, 8 from dual union
Select 5000, 1, 'Arquebus: Men of Iron Volume IV', 9, 2015, 7 from dual ) e
WHERE NOT EXISTS (SELECT product_id from product where product_id = 4001 ) ;