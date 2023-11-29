-- DML - Data Manipulation Language
-- INSERT, lägg till
-- UPDATE, ändra
-- DELETE, ta bort
-- COMMIT, spara
-- ROLLBACK, återställ
-- SELECT, utsökning 


-- Rader
-- BesökID	AnvändarID	Sida	Besöksdatum	Kvarvarotid	Referrer
-- 1	101	Hem	2023-10-22 08:15:00	120	google.com
-- 2	102	Produktinfo	2023-10-22 09:00:00	300	facebook.com
-- 3	103	Kontakt	2023-10-22 09:45:00	60	direkt

-- Lägg till rader i tabellen Visits
INSERT INTO Visits (userID, page, visit_date, spent_time, referrer) VALUES (101, 'Hem', '2023-10-22 08:15:00', 120, 'google.com');
INSERT INTO Visits (userID, page, visit_date, spent_time, referrer) VALUES (102, 'Produktinfo', '2023-10-22 09:00:00', 300, 'facebook.com');
INSERT INTO Visits (userID, page, visit_date, spent_time, referrer) VALUES (103, 'Kontakt', '2023-10-22 09:45:00', 60, 'direkt');


-- AnvändarID	Namn	Registreringsdatum	Land
-- 101	Anna Andersson	2023-01-15	Sverige
-- 102	Bo Bengtsson	2023-03-20	Danmark
-- 103	Clara Carlsson	2023-05-30	Norge

-- Lägg till rader i tabellen User
INSERT INTO User (name, registration_date, country) VALUES ('Anna Andersson', '2023-01-15', 'Sverige');
INSERT INTO User (name, registration_date, country) VALUES ('Bo Bengtsson', '2023-03-20', 'Danmark');
INSERT INTO User (name, registration_date, country) VALUES ('Clara Carlsson', '2023-05-30', 'Norge');


-- Exempel på rader:
-- AktivitetsID	AnvändarID	BesökID	Aktivitetstyp	Aktivitetsdatum	Detaljer
-- 1	1	2	Köp	2023-10-22 09:15:00	ProduktID: 123
-- 2	2	3	Formulär	2023-10-22 09:30:00	Kontaktformulär
-- 3	3	1	Klick	2023-10-22 08:20:00	Banner: Kampanj

-- Lägg till rader i tabellen Actions
INSERT INTO Actions (userID, visitID, activity_type, activity_date, details) VALUES (1, 2, 'Köp', '2023-10-22 09:15:00', 'ProduktID: 123');
INSERT INTO Actions (userID, visitID, activity_type, activity_date, details) VALUES (2, 3, 'Formulär', '2023-10-22 09:30:00', 'Kontaktformulär');
INSERT INTO Actions (userID, visitID, activity_type, activity_date, details) VALUES (3, 1, 'Klick', '2023-10-22 08:20:00', 'Banner: Kampanj');




-- Rader
-- BesökID	AnvändarID	Sida	Besöksdatum	Kvarvarotid	Referrer
-- 1	101	Hem	2023-10-22 08:15:00	120	google.com
-- 2	102	Produktinfo	2023-10-22 09:00:00	300	facebook.com
-- 3	103	Kontakt	2023-10-22 09:45:00	60	direkt

INSERT INTO Visits (userID, page, visit_date, spent_time, referrer) VALUES (101, 'Hem', '2023-10-22 08:15:00', 120, 'google.com');
INSERT INTO Visits (userID, page, visit_date, spent_time, referrer) VALUES (102, 'Produktinfo', '2023-10-22 09:00:00', 300, 'facebook.com');
INSERT INTO Visits (userID, page, visit_date, spent_time, referrer) VALUES (103, 'Kontakt', '2023-10-22 09:45:00', 60, 'direkt');


-- AnvändarID	Namn	Registreringsdatum	Land
-- 101	Anna Andersson	2023-01-15	Sverige
-- 102	Bo Bengtsson	2023-03-20	Danmark
-- 103	Clara Carlsson	2023-05-30	Norge

INSERT INTO User (name, registration_date, country) VALUES ('Anna Andersson', '2023-01-15', 'Sverige');
INSERT INTO User (name, registration_date, country) VALUES ('Bo Bengtsson', '2023-03-20', 'Danmark');
INSERT INTO User (name, registration_date, country) VALUES ('Clara Carlsson', '2023-05-30', 'Norge');


-- Exempel på rader:
-- AktivitetsID	AnvändarID	BesökID	Aktivitetstyp	Aktivitetsdatum	Detaljer
-- 1	1	2	Köp	2023-10-22 09:15:00	ProduktID: 123
-- 2	2	3	Formulär	2023-10-22 09:30:00	Kontaktformulär
-- 3	3	1	Klick	2023-10-22 08:20:00	Banner: Kampanj

INSERT INTO Actions (userID, visitID, activity_type, activity_date, details) VALUES (1, 2, 'Köp', '2023-10-22 09:15:00', 'ProduktID: 123');
INSERT INTO Actions (userID, visitID, activity_type, activity_date, details) VALUES (2, 3, 'Formulär', '2023-10-22 09:30:00', 'Kontaktformulär');
INSERT INTO Actions (userID, visitID, activity_type, activity_date, details) VALUES (3, 1, 'Klick', '2023-10-22 08:20:00', 'Banner: Kampanj');


-- Exempel SELECT:

-- SELECT med definierade kolumner, hämta endast det som behövs
SELECT actionID, userID, visitID, activity_type, activity_date, details
FROM kkdal23d1.Actions;

-- SELECT för alla kolumner
SELECT *
FROM kkdal23d1.`User`;

-- SELECT för alla kolumner
SELECT *
FROM kkdal23d1.`Visits`;

-- SELECT med definierade kolumner och villkor
SELECT visitID, userID, page, visit_date, spent_time, referrer
FROM kkdal23d1.Visits
WHERE referrer = 'google.com';

-- SELECT med definierade kolumner och villkor
-- Både AND och OR kan användas
-- Begränsa OR med parenteser för att undvika tautologi
-- Tautologi är när ett uttryck är sant oavsett vad som händer
-- Tautologi är dåligt eftersom det kan leda till felaktiga resultat
-- LIKE används för att söka efter ett mönster
-- Sök efter blogg med %blogg%
-- % matchar alla tecken före och efter blogg
SELECT *
FROM Visits
WHERE (referrer = 'Facebook' OR referrer = 'LinkedIn') AND page <> 'hem'
AND page LIKE "%blogg%";

-- Sök efter blogg med %blogg
-- % matchar alla tecken före men inte efter blogg
SELECT *
FROM Visits
AND page LIKE "%blogg";

-- Sortera resultatet med ORDER BY
-- Sortera i stigande ordning med ASC
-- Sortera i fallande ordning med DESC
ORDER BY visit_date DESC;

-- SELECT count(*) som räknar antalet rader
-- och ger resultatet i en kolumn
-- Använd alias för att ge kolumnen ett namn
-- T.ex. count(*) AS NumberVisits
SELECT count(*) FROM Visits;

-- En explicit inner join
-- matchar rader från båda tabellerna
-- där userID är densamma i båda tabellerna
-- rader som inte matchar ignoreras
INNER JOIN User ON Visits.userID = User.userID;

-- RANGE är ett villkor som anger ett intervall
RANGE
    BETWEEN 1 AND 10;

-- <> betyder inte lika med
SELECT *
FROM Visits
WHERE page <> 'hem'
ORDER BY page DESC, visit_date ASC;

-- DISTINCT tar bort dubletter
SELECT DISTINCT page
FROM Visits
ORDER BY page;



-- Hur testar man för NULL-värden?
-- Man kan inte testa NULL med jämförelse operationer, så som =, <, or <>.
-- Vi måste använda IS NULL och IS NOT NULL istället.

-- IS NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NULL;

-- IS NOT NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;


-- Exempel på Alias
-- Använd alias för att ge kolumnen ett namn
-- t1 och t2 är alias för tabellerna Visits och User
-- Här gör jag en implicit inner join(föråldrat)
SELECT *
FROM kkdal23d1.`Visits` AS t1, kkdal23d1.`User` t2
WHERE t1.userID = t2.userID;

-- IN och EXISTS
-- För att ge ett exempel på hur IN och EXISTS kan användas inom webbanalys, låt oss anta att vi har två tabeller i vår databas: Webbplatsbesök och Användare.

-- Tabell: Visits
-- VisitID	AnvändarID	Sida	    Besöksdatum
-- 1	    1	        Hem	        2023-10-22
-- 2    	2	        Produktinfo 2023-10-22
-- 3    	3	        Kontakt 	2023-10-22
-- 4    	4	        Hem 	    2023-10-23
-- 5    	5	        Blogg   	2023-10-23

-- Tabell: Användare
-- AnvändarID	Namn	        Land
-- 1	        Anna Andersson	Sverige
-- 2	        Bo Bengtsson	Danmark
-- 3	        Clara Carlsson	Norge
-- 4	        David Davidsson	Finland
-- 5	        Eva Eriksson	Island

-- Exempel på IN
-- Antag att vi vill hitta alla besök från användare från Sverige och Norge. Vi kan använda IN för att välja de specifika AnvändarID som matchar dessa kriterier:

SELECT *
FROM Webbplatsbesök
WHERE AnvändarID IN (
    SELECT AnvändarID 
    FROM Användare 
    WHERE Land IN ('Sverige', 'Norge')
);

-- I detta fall väljer den inre frågan (SELECT AnvändarID FROM Användare WHERE Land IN ('Sverige', 'Norge')) alla AnvändarID för användare från Sverige och Norge. Den yttre frågan använder sedan dessa ID:n för att hämta alla besök från dessa användare.

-- Exempel på EXISTS
-- Antag att vi vill hitta alla sidor som har besökts av åtminstone en användare från Sverige. Vi kan använda EXISTS för detta:

SELECT DISTINCT Sida
FROM Webbplatsbesök AS W
WHERE EXISTS (SELECT 1 FROM Användare AS A WHERE A.Land = 'Sverige' AND A.AnvändarID = W.AnvändarID);

-- Här kontrollerar EXISTS-satsen för varje rad i Webbplatsbesök om det finns en matchande rad i Användare där landet är Sverige och AnvändarID är densamma som i Webbplatsbesök. Om en sådan rad finns, väljs sidan från Webbplatsbesök.

-- Dessa exempel visar hur man kan använda IN och EXISTS för att skapa mer specifika och kraftfulla SQL-frågor i ett webbanalys-sammanhang.

-- Lägger till ett par rader till i tabellen Visits
INSERT INTO Visits (userID, page, visit_date, spent_time, referrer) VALUES (4, 'Hem', '2023-10-22 10:00:00', 60, 'direkt');
INSERT INTO Visits (userID, page, visit_date, spent_time, referrer) VALUES (4, 'Blogg', '2023-10-22 10:15:00', 45, 'google.com');

-- Din tabell Visits bör nu se ut så här:
-- +---------+--------+-------------+---------------------+------------+--------------+
-- | visitID | userID | page        | visit_date          | spent_time | referrer     |
-- +---------+--------+-------------+---------------------+------------+--------------+
-- |       1 |      1 | Hem         | 2023-10-22 08:15:00 |        120 | google.com   |
-- |       2 |      2 | Produktinfo | 2023-10-22 09:00:00 |        300 | facebook.com |
-- |       3 |      3 | Kontakt     | 2023-10-22 09:45:00 |         60 | direkt       |
-- |       4 |      4 | Hem         | 2023-10-22 10:00:00 |         60 | direkt       |
-- |       5 |      4 | Blogg       | 2023-10-22 10:15:00 |         45 | google.com   |
-- +---------+--------+-------------+---------------------+------------+--------------+


-- Lägger till ett par rader till i tabellen User
INSERT INTO User (name, registration_date, country) VALUES ('David Davidsson', '2023-07-22', 'Finland');
INSERT INTO User (name, registration_date, country) VALUES ('Eva Eriksson', '2023-07-22', 'Island');

-- Din tabell User bör nu se ut så här:
-- +--------+-----------------+---------------------+---------+
-- | userID | name            | registration_date   | country |
-- +--------+-----------------+---------------------+---------+
-- |      1 | Anna Andersson  | 2023-01-15 00:00:00 | Sverige |
-- |      2 | Bo Bengtsson    | 2023-03-20 00:00:00 | Danmark |
-- |      3 | Clara Carlsson  | 2023-05-30 00:00:00 | Norge   |
-- |      4 | David Davidsson | 2023-07-22 00:00:00 | Finland |
-- |      5 | Eva Eriksson    | 2023-07-22 00:00:00 | Island  |
-- +--------+-----------------+---------------------+---------+


SELECT *
FROM Visits
WHERE userID IN (
    SELECT userID 
    FROM User 
    WHERE country 
    IN ('Sverige', 'Norge'));


SELECT *
FROM Visits
WHERE EXISTS (
    SELECT 1 
    FROM User 
    WHERE country = 'Sverige' 
    AND User.userID = Visits.userID);

-- Resultat
-- +---------+--------+------+---------------------+------------+------------+
-- | visitID | userID | page | visit_date          | spent_time | referrer   |
-- +---------+--------+------+---------------------+------------+------------+
-- |       1 |      1 | Hem  | 2023-10-22 08:15:00 |        120 | google.com |
-- +---------+--------+------+---------------------+------------+------------+


-- Räkna antalet besök per sida
-- Gruppera resultat med GROUP BY
SELECT page, COUNT(*) AS NubmerVisits
FROM Visits
GROUP BY page;





-- En äldre metod för att göra en "join", som ofta kallas för en "implicit join". Istället för att använda den moderna JOIN-syntaxen, utförs joinningen genom att specificera join-villkoret i WHERE-delen av frågan.

-- I detta fall används en implicit "inner join". Här är vad som händer:

-- Tabeller: Frågan använder två tabeller: Visits och User. Dessa är aliaserade som t1 och t2 respektive.

-- Join Villkor: Genom att säga t1.userID = t2.userID i WHERE-delen, säger frågan att den ska matcha rader från Visits (t1) med rader från User (t2) där userID är densamma i båda tabellerna.

-- Resultat: Frågan returnerar alla rader från både Visits och User tabellerna där userID stämmer överens. Om det inte finns någon matchning i någon av tabellerna kommer dessa rader inte att inkluderas i resultatet.

-- Även om denna metod fortfarande är giltig och fungerar, rekommenderas det idag att använda den mer explicita JOIN-syntaxen, eftersom den är mer läsbar, särskilt för mer komplexa join-operationer. Samma fråga med modern JOIN-syntax skulle se ut så här:

SELECT *
FROM kkdal23d1.`Visits` AS t1
INNER JOIN kkdal23d1.`User` AS t2 ON t1.userID = t2.userID;
-- Denna syntax gör det tydligare att en join mellan de två tabellerna utförs baserat på userID.




