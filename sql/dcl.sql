-- DCL = Data Control Language
-- CREATE USER, skapa användare
-- CREATE SCHEMA
-- DROP USER, ta bort användare
-- DROP SCHEMA
-- GRANT, ge behörighet
-- REVOKE, ta bort behörighet

-- Exempel på Data Control Language (DCL) i MySQL

-- Skapa databas
CREATE SCHEMA matomo_tableau;

-- Ta bort databas
DROP SCHEMA matomo_tableau;

-- Skapa användare
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';

-- Ta bort användare
DROP USER 'olduser'@'localhost';

-- Ge specifika behörigheter
GRANT SELECT, INSERT ON matomo_tableau.* TO 'user'@'localhost';

-- Eller ge alla behörigheter
GRANT ALL PRIVILEGES ON matomo_tableau.* TO 'user'@'localhost';

-- Ta bort specifika behörigheter
REVOKE INSERT ON mydatabase.* FROM 'user'@'localhost';

-- Eller ta bort alla behörigheter
REVOKE ALL PRIVILEGES ON mydatabase.* FROM 'user'@'localhost';

-- Viktigt att Notera
-- Dessa kommandon bör användas med försiktighet, speciellt DROP-kommandon som permanent tar bort användare eller databaser.
-- Se till att du har lämpliga administratörsbehörigheter när du kör dessa kommandon.
-- Efter att ha ändrat användarbehörigheter med GRANT eller REVOKE, kan det vara nödvändigt att köra FLUSH PRIVILEGES; för att omedelbart tillämpa ändringarna.
-- I reala situationer, välj lösenord och behörigheter noggrant för att säkerställa databassäkerhet.


