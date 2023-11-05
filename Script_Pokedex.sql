CREATE TABLE Pokemon
    (`ID_Pokemon` int not null, `Pokemon` varchar(11), `HP` int, `Attack` int, `Defense` int, `Special_Attack` int, `Special_Defense` int, `Speed` int, PRIMARY KEY (ID_Pokemon))
;
    
INSERT INTO Pokemon
    (`ID_Pokemon`, `Pokemon`, `HP`, `Attack`, `Defense`, `Special_Attack`, `Special_Defense`, `Speed`)
VALUES
    (1, 'Bulbasaur', 45, 49, 49, 65, 65, 45),
    (2, 'Ivysaur', 60, 62, 63, 80, 80, 60),
    (3, 'Venusaur', 80, 82, 83, 100, 100, 80),
    (4, 'Charmander', 39, 52, 43, 60, 50, 65),
    (5, 'Charmeleon', 58, 64, 58, 80, 65, 80),
    (6, 'Charizard', 78, 84, 78, 109, 85, 100),
    (7, 'Squirtle', 44, 48, 65, 60, 54, 43),
    (8, 'Wartortle', 59, 63, 80, 65, 80, 58),
    (9, 'Blastoise', 79, 83, 100, 85, 105, 78),
    (10, 'Caterpie', 45, 30, 35, 20, 20, 45),
    (11, 'Metapod', 50, 20, 55, 25, 25, 30),
    (12, 'Butterfree', 60, 45, 50, 80, 80, 70),
    (13, 'Weedle', 40, 35, 30, 20, 20, 50),
    (14, 'Kakuna', 45, 25, 50, 25, 25, 35),
    (15, 'Beedrill', 65, 80, 40, 40, 80, 75),
    (16, 'Pidgey', 40, 45, 40, 35, 35, 56),
    (17, 'Pidgeotto', 63, 60, 55, 50, 50, 71),
    (18, 'Pidgeot', 83, 80, 75, 70, 70, 91),
    (19, 'Rattata', 30, 56, 35, 25, 35, 72),
    (20, 'Raticate', 55, 81, 60, 50, 70, 97),
    (21, 'Spearow', 40, 60, 30, 31, 31, 70),
    (22, 'Fearow', 65, 90, 65, 61, 61, 100),
    (23, 'Ekans', 30, 60, 44, 40, 54, 55),
    (24, 'Arbok', 60, 85, 69, 65, 79, 80),
    (25, 'Pikachu', 35, 55, 30, 50, 40, 90),
    (26, 'Raichu', 60, 90, 55, 90, 80, 100),
    (27, 'Sandshrew', 50, 75, 85, 20, 30, 40),
    (28, 'Sandslash', 75, 100, 110, 45, 55, 65),
    (29, 'NidoranF', 55, 47, 52, 40, 40, 41),
    (30, 'Nidorina', 70, 62, 67, 55, 55, 56),
    (31, 'Nidoqueen', 90, 82, 87, 75, 85, 76),
    (32, 'NidoranM', 55, 47, 52, 40, 40, 41),
    (33, 'Nidorino', 61, 72, 57, 55, 55, 65),
    (34, 'Nidoking', 81, 92, 77, 85, 75, 85),
    (35, 'Clefairy', 70, 45, 48, 60, 65, 35),
    (36, 'Clefable', 95, 70, 73, 85, 90, 60),
    (37, 'Vulpix', 38, 41, 40, 50, 65, 65),
    (38, 'Ninetales', 73, 76, 75, 81, 100, 100),
    (39, 'Jigglypuff', 115, 45, 20, 45, 25, 20),
    (40, 'Wigglytuff', 140, 70, 45, 75, 50, 45),
    (41, 'Zubat', 40, 45, 35, 30, 40, 55),
    (42, 'Golbat', 75, 80, 70, 65, 75, 90),
    (43, 'Oddish', 45, 50, 55, 75, 65, 30),
    (44, 'Gloom', 60, 65, 70, 85, 75, 40),
    (45, 'Vileplume', 75, 80, 85, 100, 90, 50),
    (46, 'Paras', 35, 70, 55, 45, 55, 25),
    (47, 'Parasect', 60, 95, 80, 60, 80, 30),
    (48, 'Venonat', 60, 55, 50, 40, 55, 45),
    (49, 'Venomoth', 70, 65, 60, 90, 75, 90),
    (50, 'Diglett', 10, 55, 25, 35, 45, 95),
    (51, 'Dugtrio', 35, 80, 50, 50, 70, 120),
    (52, 'Meowth', 40, 45, 35, 40, 40, 90),
    (53, 'Persian', 65, 70, 60, 65, 65, 115),
    (54, 'Psyduck', 50, 52, 48, 65, 50, 55),
    (55, 'Golduck', 80, 82, 78, 95, 80, 85),
    (56, 'Mankey', 40, 80, 35, 35, 45, 70),
    (57, 'Primeape', 65, 105, 60, 60, 70, 95),
    (58, 'Growlithe', 55, 70, 45, 70, 50, 60),
    (59, 'Arcanine', 90, 110, 80, 100, 80, 95),
    (60, 'Poliwag', 40, 50, 40, 40, 40, 90),
    (61, 'Poliwhirl', 65, 65, 65, 50, 50, 90),
    (62, 'Poliwrath', 90, 85, 95, 70, 90, 70),
    (63, 'Abra', 25, 20, 15, 105, 55, 90),
    (64, 'Kadabra', 40, 35, 30, 120, 70, 105),
    (65, 'Alakazam', 55, 50, 45, 135, 85, 120),
    (66, 'Machop', 70, 80, 50, 35, 35, 35),
    (67, 'Machoke', 80, 100, 70, 50, 60, 45),
    (68, 'Machamp', 90, 130, 80, 65, 85, 55),
    (69, 'Bellsprout', 50, 75, 35, 70, 30, 40),
    (70, 'Weepinbell', 65, 90, 50, 85, 45, 55),
    (71, 'Victreebel', 80, 105, 65, 100, 60, 70),
    (72, 'Tentacool', 40, 40, 35, 50, 100, 70),
    (73, 'Tentacruel', 80, 70, 65, 80, 120, 100),
    (74, 'Geodude', 40, 80, 100, 30, 30, 20),
    (75, 'Graveler', 55, 95, 115, 45, 45, 35),
    (76, 'Golem', 80, 110, 130, 55, 65, 45),
    (77, 'Ponyta', 50, 85, 55, 65, 65, 90),
    (78, 'Rapidash', 65, 100, 70, 80, 80, 105),
    (79, 'Slowpoke', 90, 65, 65, 40, 40, 15),
    (80, 'Slowbro', 95, 75, 110, 100, 80, 30),
    (81, 'Magnemite', 25, 35, 70, 95, 55, 45),
    (82, 'Magneton', 50, 60, 95, 120, 70, 70),
    (83, 'Farfetch''d', 52, 65, 55, 58, 62, 60),
    (84, 'Doduo', 35, 85, 45, 35, 35, 75),
    (85, 'Dodrio', 60, 110, 70, 60, 60, 100),
    (86, 'Seel', 65, 45, 55, 45, 70, 45),
    (87, 'Dewgong', 90, 70, 80, 70, 95, 70),
    (88, 'Grimer', 80, 80, 50, 40, 50, 25),
    (89, 'Muk', 105, 105, 75, 65, 100, 50),
    (90, 'Shellder', 30, 65, 100, 45, 25, 40),
    (91, 'Cloyster', 50, 90, 180, 85, 45, 70),
    (92, 'Gastly', 30, 35, 30, 100, 35, 80),
    (93, 'Haunter', 45, 50, 45, 115, 55, 95),
    (94, 'Gengar', 60, 65, 60, 130, 75, 110),
    (95, 'Onix', 35, 45, 160, 30, 45, 70),
    (96, 'Drowzee', 60, 48, 45, 43, 90, 42),
    (97, 'Hypno', 85, 73, 70, 73, 115, 67),
    (98, 'Krabby', 30, 105, 90, 25, 25, 50),
    (99, 'Kingler', 55, 130, 115, 50, 50, 75),
    (100, 'Voltorb', 40, 30, 50, 55, 55, 100),
    (101, 'Electrode', 60, 50, 70, 80, 80, 140),
    (102, 'Exeggcute', 60, 40, 80, 60, 45, 40),
    (103, 'Exeggutor', 95, 95, 85, 125, 65, 55),
    (104, 'Cubone', 50, 50, 95, 40, 50, 35),
    (105, 'Marowak', 60, 80, 110, 50, 80, 45),
    (106, 'Hitmonlee', 50, 120, 53, 35, 110, 87),
    (107, 'Hitmonchan', 50, 105, 79, 35, 110, 76),
    (108, 'Lickitung', 90, 55, 75, 60, 75, 30),
    (109, 'Koffing', 40, 65, 95, 60, 45, 35),
    (110, 'Weezing', 65, 90, 120, 85, 70, 60),
    (111, 'Rhyhorn', 80, 85, 95, 30, 30, 25),
    (112, 'Rhydon', 105, 130, 120, 45, 45, 40),
    (113, 'Chansey', 250, 5, 5, 35, 105, 50),
    (114, 'Tangela', 65, 55, 115, 100, 40, 60),
    (115, 'Kangaskhan', 105, 95, 80, 40, 80, 90),
    (116, 'Horsea', 30, 40, 70, 70, 25, 60),
    (117, 'Seadra', 55, 65, 95, 95, 45, 85),
    (118, 'Goldeen', 45, 67, 60, 35, 50, 63),
    (119, 'Seaking', 80, 92, 65, 65, 80, 68),
    (120, 'Staryu', 30, 45, 55, 70, 55, 85),
    (121, 'Starmie', 60, 75, 85, 100, 85, 115),
    (122, 'Mr. Mime', 40, 45, 65, 100, 120, 90),
    (123, 'Scyther', 70, 110, 80, 55, 80, 105),
    (124, 'Jynx', 65, 50, 35, 115, 95, 95),
    (125, 'Electabuzz', 65, 83, 57, 95, 85, 105),
    (126, 'Magmar', 65, 95, 57, 100, 85, 93),
    (127, 'Pinsir', 65, 125, 100, 55, 70, 85),
    (128, 'Tauros', 75, 100, 95, 40, 70, 110),
    (129, 'Magikarp', 20, 10, 55, 15, 20, 80),
    (130, 'Gyarados', 95, 125, 79, 60, 100, 81),
    (131, 'Lapras', 130, 85, 80, 85, 95, 60),
    (132, 'Ditto', 48, 48, 48, 48, 48, 48),
    (133, 'Eevee', 55, 55, 50, 45, 65, 55),
    (134, 'Vaporeon', 130, 65, 60, 110, 95, 65),
    (135, 'Jolteon', 65, 65, 60, 110, 95, 130),
    (136, 'Flareon', 65, 130, 60, 95, 110, 65),
    (137, 'Porygon', 65, 60, 70, 85, 75, 40),
    (138, 'Omanyte', 35, 40, 100, 90, 55, 35),
    (139, 'Omastar', 70, 60, 125, 115, 70, 55),
    (140, 'Kabuto', 30, 80, 90, 55, 45, 55),
    (141, 'Kabutops', 60, 115, 105, 65, 70, 80),
    (142, 'Aerodactyl', 80, 105, 65, 60, 75, 130),
    (143, 'Snorlax', 160, 110, 65, 65, 110, 30),
    (144, 'Articuno', 90, 85, 100, 95, 125, 85),
    (145, 'Zapdos', 90, 90, 85, 125, 90, 100),
    (146, 'Moltres', 90, 100, 90, 125, 85, 90),
    (147, 'Dratini', 41, 64, 45, 50, 50, 50),
    (148, 'Dragonair', 61, 84, 65, 70, 70, 70),
    (149, 'Dragonite', 91, 134, 95, 100, 100, 80),
    (150, 'Mewtwo', 106, 110, 90, 154, 90, 130),
    (151, 'Mew', 100, 100, 100, 100, 100, 100)
;


CREATE TABLE Rel_Pokemon_Type
    (`ID_Pokemon` int, `ID_Type` int)
;
    
INSERT INTO Rel_Pokemon_Type
    (`ID_Pokemon`, `ID_Type`)
VALUES
    (1, 4),
    (1, 8),
    (2, 4),
    (2, 8),
    (3, 4),
    (3, 8),
    (4, 2),
    (5, 2),
    (6, 2),
    (6, 10),
    (7, 3),
    (8, 3),
    (9, 3),
    (10, 12),
    (11, 12),
    (12, 12),
    (12, 10),
    (13, 12),
    (13, 8),
    (14, 12),
    (14, 8),
    (15, 12),
    (15, 8),
    (16, 1),
    (16, 10),
    (17, 1),
    (17, 10),
    (18, 1),
    (18, 10),
    (19, 1),
    (20, 1),
    (21, 1),
    (21, 10),
    (22, 1),
    (22, 10),
    (23, 8),
    (24, 8),
    (25, 5),
    (26, 5),
    (27, 9),
    (28, 9),
    (29, 8),
    (30, 8),
    (31, 8),
    (31, 9),
    (32, 8),
    (33, 8),
    (34, 8),
    (34, 9),
    (35, 1),
    (36, 1),
    (37, 2),
    (38, 2),
    (39, 1),
    (40, 1),
    (41, 8),
    (41, 10),
    (42, 8),
    (42, 10),
    (43, 4),
    (43, 8),
    (44, 4),
    (44, 8),
    (45, 4),
    (45, 8),
    (46, 12),
    (46, 4),
    (47, 12),
    (47, 4),
    (48, 12),
    (48, 8),
    (49, 12),
    (49, 8),
    (50, 9),
    (51, 9),
    (52, 1),
    (53, 1),
    (54, 3),
    (55, 3),
    (56, 7),
    (57, 7),
    (58, 2),
    (59, 2),
    (60, 3),
    (61, 3),
    (62, 3),
    (62, 7),
    (63, 11),
    (64, 11),
    (65, 11),
    (66, 7),
    (67, 7),
    (68, 7),
    (69, 4),
    (69, 8),
    (70, 4),
    (70, 8),
    (71, 4),
    (71, 8),
    (72, 3),
    (72, 8),
    (73, 3),
    (73, 8),
    (74, 13),
    (74, 9),
    (75, 13),
    (75, 9),
    (76, 13),
    (76, 9),
    (77, 2),
    (78, 2),
    (79, 3),
    (79, 11),
    (80, 3),
    (80, 11),
    (81, 5),
    (81, 17),
    (82, 5),
    (82, 17),
    (83, 1),
    (83, 10),
    (84, 1),
    (84, 10),
    (85, 1),
    (85, 10),
    (86, 3),
    (87, 3),
    (87, 6),
    (88, 8),
    (89, 8),
    (90, 3),
    (91, 3),
    (91, 6),
    (92, 14),
    (92, 8),
    (93, 14),
    (93, 8),
    (94, 14),
    (94, 8),
    (95, 13),
    (95, 9),
    (96, 11),
    (97, 11),
    (98, 3),
    (99, 3),
    (100, 5),
    (101, 5),
    (102, 4),
    (102, 11),
    (103, 4),
    (103, 11),
    (104, 9),
    (105, 9),
    (106, 7),
    (107, 7),
    (108, 1),
    (109, 8),
    (110, 8),
    (111, 9),
    (111, 13),
    (112, 9),
    (112, 13),
    (113, 1),
    (114, 4),
    (115, 1),
    (116, 3),
    (117, 3),
    (118, 3),
    (119, 3),
    (120, 3),
    (121, 3),
    (121, 11),
    (122, 11),
    (123, 12),
    (123, 10),
    (124, 6),
    (124, 11),
    (125, 5),
    (126, 2),
    (127, 12),
    (128, 1),
    (129, 3),
    (130, 3),
    (130, 10),
    (131, 3),
    (131, 6),
    (132, 1),
    (133, 1),
    (134, 3),
    (135, 5),
    (136, 2),
    (137, 1),
    (138, 13),
    (138, 3),
    (139, 13),
    (139, 3),
    (140, 13),
    (140, 3),
    (141, 13),
    (141, 3),
    (142, 13),
    (142, 10),
    (143, 1),
    (144, 6),
    (144, 10),
    (145, 5),
    (145, 10),
    (146, 2),
    (146, 10),
    (147, 16),
    (148, 16),
    (149, 16),
    (149, 10),
    (150, 11)
;


CREATE TABLE Types
    (`ID_Type` int not null, `Type` varchar(8), PRIMARY KEY(ID_Type))
;
    
INSERT INTO Types
    (`ID_Type`, `Type`)
VALUES
    (0, 'Typeless'),
    (1, 'Normal'),
    (2, 'Fire'),
    (3, 'Water'),
    (4, 'Grass'),
    (5, 'Electric'),
    (6, 'Ice'),
    (7, 'Fighting'),
    (8, 'Poison'),
    (9, 'Ground'),
    (10, 'Flying'),
    (11, 'Psychic'),
    (12, 'Bug'),
    (13, 'Rock'),
    (14, 'Ghost'),
    (15, 'Dark'),
    (16, 'Dragon'),
    (17, 'Steel')
;


CREATE TABLE Rel_Trainer_Pokemon
    (`ID_Trainer` int, `ID_Pokemon` int)
;
    
INSERT INTO Rel_Trainer_Pokemon
    (`ID_Trainer`, `ID_Pokemon`)
VALUES
    (1, 25),
    (1, 3),
    (1, 6),
    (1, 9),
    (1, 131),
    (1, 143),
    (2, 74),
    (2, 95),
    (3, 120),
    (3, 121),
    (4, 26),
    (5, 114),
    (5, 70),
    (5, 44),
    (6, 48),
    (6, 48),
    (6, 48),
    (6, 49),
    (7, 63),
    (7, 64),
    (7, 65),
    (8, 38),
    (8, 78),
    (8, 59),
    (9, 51),
    (9, 53),
    (9, 31),
    (9, 34),
    (9, 112),
    (10, 28),
    (10, 65),
    (10, 103),
    (10, 82),
    (10, 38),
    (10, 134),
    (11, 23),
    (11, 52),
    (11, 109),
    (12, 130),
    (12, 148),
    (12, 149),
    (12, 142),
    (12, 149)
;


CREATE TABLE Trainers
    (`ID_Trainer` int not null, `Trainer` varchar(11), `Badges` int, PRIMARY KEY(ID_Trainer))
;
    
INSERT INTO Trainers
    (`ID_Trainer`, `Trainer`, `Badges`)
VALUES
    (1, 'Ash', 9),
    (2, 'Brock', 1),
    (3, 'Misty', 2),
    (4, 'Lt. Surge', 3),
    (5, 'Erika', 4),
    (6, 'Koga', 5),
    (7, 'Sabrina', 6),
    (8, 'Blaine', 7),
    (9, 'Giovanni', 8),
    (10, 'Gary', 9),
    (11, 'Team Rocket', 0),
    (12, 'Lance', 9)
;

SELECT * FROM Pokemon;
SELECT * FROM Trainers; 
SELECT * FROM Types;
SELECT * FROM Rel_Pokemon_Type; 
SELECT * FROM Rel_Trainer_Pokemon; 
