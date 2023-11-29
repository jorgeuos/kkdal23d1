-- DDl = Data Definition Language
-- CREATE TABLE, skapa tabell
-- ALTER TABLE, ändra tabell
-- DROP TABLE, ta bort tabell
-- CREATE INDEX, skapa index
-- DROP INDEX, ta bort index
-- CREATE VIEW, skapa vy
-- DROP VIEW, ta bort vy

-- Även:
-- CREATE SCHEMA
-- CREATE DATABASE
-- (även CATALOG)
-- CREATE TRIGGER
-- DROP TRIGGER
-- CREATE PROCEDURE
-- DROP PROCEDURE


-- Tabell: Besök
-- Kolumn  Datatyp Beskrivning
-- BesökID INT Unikt ID för varje besök
-- AnvändarID  INT ID för användaren av besöket
-- Sida    VARCHAR Den besökta sidan
-- Besöksdatum DATE    Datum och tid för besöket
-- Kvarvarotid INT Tid spenderad på sidan (i sekunder)
-- Referrer    VARCHAR Hänvisande URL

-- Skapa tabell: Visits
CREATE TABLE Visits (
    visitID INT NOT NULL AUTO_INCREMENT,
    userID INT NOT NULL,
    page VARCHAR(255) NOT NULL,
    visit_date DATETIME NOT NULL,
    spent_time INT NOT NULL,
    referrer VARCHAR(255) NOT NULL,
    PRIMARY KEY (visitID)
);

-- Tabell: Användare
-- Kolumn	Datatyp	Beskrivning
-- AnvändarID	INT	Unikt ID för varje användare
-- Namn	VARCHAR	Användarens namn
-- Registreringsdatum	DATE	Datum för användarregistrering
-- Land	VARCHAR	Användarens land

-- Skapa tabell: User
CREATE TABLE User (
    userID INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    registration_date DATETIME NOT NULL,
    country VARCHAR(255) NOT NULL,
    PRIMARY KEY (userID)
);

-- Actions
-- Kolumn	Datatyp	Beskrivning
-- AktivitetsID	INT	Unikt ID för varje aktivitet
-- AnvändarID	INT	ID för användaren som utfört aktiviteten
-- BesökID	INT	ID för det besök där aktiviteten skedde
-- Aktivitetstyp	VARCHAR	Typ av aktivitet (t.ex. "Köp", "Formulär", "Klick")
-- Aktivitetsdatum	DATETIME	Datum och tid för när aktiviteten utfördes
-- Detaljer	VARCHAR	Ytterligare information om aktiviteten

-- Skapa tabell: Actions
CREATE TABLE Actions (
    actionID INT NOT NULL AUTO_INCREMENT,
    userID INT NOT NULL,
    visitID INT NOT NULL,
    activity_type VARCHAR(255) NOT NULL,
    activity_date DATETIME NOT NULL,
    details VARCHAR(255) NOT NULL,
    PRIMARY KEY (actionID)
);
