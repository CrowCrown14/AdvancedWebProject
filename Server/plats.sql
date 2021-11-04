-- Retire les tables s'ils existent déjà
DROP TABLE IF EXISTS public.plats CASCADE;
DROP TABLE IF EXISTS public.users CASCADE;

-- Creation table public.plats
CREATE TABLE IF NOT EXISTS public.plats
(
    id integer NOT NULL,
    name text,
    category text,
    description text,
    image text,
	price integer,
    PRIMARY KEY (id)
);

ALTER TABLE public.plats
    OWNER to postgres;

-------------------------------------------------------------

-- Creation table public.users
CREATE TABLE IF NOT EXISTS public.users
(
    id integer NOT NULL,
    username text,
    password text,
    administrator boolean,
    PRIMARY KEY (id)
);

ALTER TABLE public.plats
    OWNER to postgres;

--------------------------------------------------------------
-- Insertion des tuples dans la table
INSERT INTO public.plats(id, name, category, description, image, price)
VALUES 
(1, '1' , 'brochette' , 'Poulet', '/static/images/1.jpeg',450),
(2, '2' , 'brochette' , 'Boulettes de poulet', '/static/images/2.jpeg',450),
(3, '3' , 'brochette' , 'Boeuf', '/static/images/3.jpeg',450),
(4, '4' , 'brochette' , 'Ailes de poulet','/static/images/4.jpeg',450),
(5, '5' , 'brochette' , 'Boeuf au fromage', '/static/images/5.jpeg',450),
(6, '10' , 'brochette' , 'Saumon' , '/static/images/10.jpeg',500),
(7, '11' , 'brochette' , 'Thon','/static/images/11.jpeg',550),
(8, '13' , 'brochette' , 'Champignons', '/static/images/13.jpeg',400),
(9, '14' , 'brochette' , 'Courgettes', '/static/images/14.jpeg',400),
(10, '15' , 'maki' , 'Avocat' , '/static/images/15.jpeg',500),
(11, '16' , 'maki' , 'Fromage' , '/static/images/16.jpeg',500),
(12, '17' , 'maki' , 'Crevette' , '/static/images/17.jpeg',500),
(13, '18' , 'maki' , 'Saumon fromage' , '/static/images/18.jpeg',520),
(14, '19' , 'maki' , 'Crabe' , '/static/images/19.jpeg',500),
(15, '20' , 'maki' , 'Saumon avocat' , '/static/images/20.jpeg',500),
(16, '21' , 'maki' , 'Saumon', '/static/images/21.jpeg',500),
(17, '22' , 'maki' , 'Thon', '/static/images/22.jpeg',500),
(18, '23' , 'maki' , 'Concombre', '/static/images/23.jpeg',500),
(19, '25' , 'california' , 'Saumon avocat' , '/static/images/25.jpeg',550),
(20, '25A' , 'california' , 'Thon cuit mayonnaise', '/static/images/25A.jpeg',600),
(21, '25B' , 'california' , 'Saumon avocat fromage' , '/static/images/25B.jpeg',600),
(22, '26' , 'california' , 'Crevette pannée avocat', '/static/images/26.jpeg',750),
(23, '31' , 'sushi' , 'Saumon' , '/static/images/31.jpeg',480),
(24, '32' , 'sushi' , 'Thon' , '/static/images/32.jpeg',500),
(25, '33' , 'sushi' , 'Daurade' , '/static/images/33.jpeg',450),
(26, '34' , 'sushi' , 'Maquerau' , '/static/images/34.jpeg',450),
(27, '35' , 'sushi' , 'Avocat' , '/static/images/35.jpeg',450),
(28, '36' , 'sushi' , 'Crevette' , '/static/images/36.jpeg',550),
(29, '37' , 'sushi' , 'Saumon avocat' , '/static/images/37.jpeg',500),
(30, '41' , 'sashimi' , 'Saumon' , '/static/images/41.jpeg',1100),
(31, '42' , 'sashimi' , 'Thon' , '/static/images/42.jpeg',1200),
(32, '43' , 'sashimi' , 'Daurade' , '/static/images/43.jpeg',1200),
(33, '45' , 'sashimi' , 'Maquerau' , '/static/images/45.jpeg',1000),
(34, '46' , 'sashimi' , 'Assortiment (3 saumons, 3 thons, 2 daurades, 2 maqueraux)' , '/static/images/46.jpeg',1250),
(35, 'E3' , 'entree' , 'Edamame' , '/static/images/E3.jpeg',400),
(36, 'E5' , 'entree' , 'Riz vinaigré' , '/static/images/E5.jpeg',300),
(37, 'B1' , 'menuBrochette' , '2 boulettes de poulet + 2 poulets' , '/static/images/MenuB1.jpeg',900),
(38, 'B2' , 'menuBrochette' , '2 boeufs, 2 boeufs au fromage' , '/static/images/MenuB2.jpeg',1000),
(39, 'B3' , 'menuBrochette' , '1 boulettes de poulet, 1 poulet, 1 ailes de poulet, 1 boeuf, 1 boeuf au fromage' , '/static/images/MenuB3.jpeg',1200),
(40, 'B4' , 'menuBrochette' , '2 saumons, 2 thons' , '/static/images/MenuB4.jpeg',1280),
(41, 'C1' , 'menuChirashi' , 'Saumon' , '/static/images/MenuC1.jpeg',1250),
(42, 'C3' , 'menuChirashi' , 'Assortiment (saumon, thon, daurade, maquerau)' , '/static/images/MenuC3.jpeg',1300),
(43, 'C5' , 'menuChirashi' , 'Saumon avocat' , '/static/images/MenuC5.jpeg',1300),
(44, 'M1' , 'menuMixte' , '2 sushi saumon, assortiment de 9 sashimi (saumon, thon, daurade, maquerau)' , '/static/images/MenuM1.jpeg',1400),
(45, 'M2' , 'menuMixte' , '8 maki saumon, assortiment de 9 sashimi (saumon, thon, daurade, maquerau)' , '/static/images/MenuM2.jpeg',1400),
(46, 'M3' , 'menuMixte' , '8 Las Vegas, 2 brochettes de saumon' , '/static/images/MenuM3.jpeg',1400),
(47, 'M4' , 'menuSushiMaki' , '8 Las Vegas, 8 California saumon' , '/static/images/MenuM4.jpeg',1400),
(48, 'SA1' , 'menuSashimi' , 'Assortiment de 15 sashimi (saumon, thon, daurade, maquerau)' , '/static/images/MenuSA1.jpeg',1500),
(49, 'SU1' , 'menuSushiMaki' , 'Assortiment de 8 sushi (saumon, thon, daurade, crevette)' , '/static/images/MenuSU1.jpeg',1580),
(50, 'SU2' , 'menuSushiMaki' , '3 sushi saumon, 3 sushi thon, 8 maki saumon' , '/static/images/MenuSU2.jpeg',1580),
(51, 'SU3' , 'menuSushiMaki' , '8 sushi saumon' , '/static/images/MenuSU3.jpeg',1480),
(52, 'SU4' , 'menuMixte' , '2 sushi saumon, 2 sushi thon, assortiment de 9 sashimi (saumon, thon, daurade), 8 maki saumon' , '/static/images/MenuSU4.jpeg',1880),
(53, 'SU5' , 'menuSushiMaki' , '8 maki saumon, 8 maki thon, 8 california saumon avocat' , '/static/images/MenuSU5.jpeg',1400),
(54, 'SU6' , 'menuMixte' , '3 sushi saumon, 3 brochette de saumon' , '/static/images/MenuSU6.jpeg',1480),
(55, 'SU7' , 'menuMixte' , '8 california saumon avocat, 1 brochette boulettes de poulet, 1 brochette de poulet, 1 brochette de boeuf au fromage' , '/static/images/MenuSU7.jpeg',1330),
(56, 'SU8' , 'menuMixte' , '5 sushis, 5 brochettes' , '/static/images/MenuSU8.jpeg',1780),
(57, 'SU9' , 'menuMixte' , '12 sashimi assortiment, 5 brochettes' , '/static/images/MenuSU9.jpeg',2080),
(58, 'SU12' , 'menuMixte' , '6 sashimi saumon, 8 maki saumon, 3 sushi saumon' , '/static/images/MenuSU12.jpeg',1600),
(59, 'O1' , 'oignonFritRolls' , 'Saumon avocat' , '/static/images/O1.jpeg',700),
(60, 'O3' , 'oignonFritRolls' , 'Concombre fromage' , '/static/images/O3.jpeg',680);