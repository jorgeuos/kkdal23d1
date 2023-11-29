-- Mer sammanhängande.
-- För att få en grundläggande databas som du kan använda denna fil för att sedan testa dina queries.

CREATE SCHEMA demo_db;

CREATE USER 'testuser'@'localhost' IDENTIFIED BY 'password123';

GRANT ALL PRIVILEGES ON demo_db.* TO 'testuser'@'localhost';

USE demo_db;

CREATE TABLE Visits (
    visitID INT NOT NULL AUTO_INCREMENT,
    userID INT NOT NULL,
    page VARCHAR(255) NOT NULL,
    visit_date DATETIME NOT NULL,
    spent_time INT NOT NULL,
    referrer VARCHAR(255) NOT NULL,
    PRIMARY KEY (visitID)
);

CREATE TABLE User (
    userID INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    registration_date DATETIME NOT NULL,
    country VARCHAR(255) NOT NULL,
    PRIMARY KEY (userID)
);

CREATE TABLE Actions (
    actionID INT NOT NULL AUTO_INCREMENT,
    userID INT NOT NULL,
    visitID INT NOT NULL,
    activity_type VARCHAR(255) NOT NULL,
    activity_date DATETIME NOT NULL,
    details VARCHAR(255) NOT NULL,
    PRIMARY KEY (actionID)
);

CREATE TABLE fruits (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    color VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE vegetables (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    color VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO Visits (userID, page, visit_date, spent_time, referrer) VALUES (1, 'Hem', '2023-10-22 08:15:00', 120, 'google.com');
INSERT INTO Visits (userID, page, visit_date, spent_time, referrer) VALUES (2, 'Produktinfo', '2023-10-22 09:00:00', 300, 'facebook.com');
INSERT INTO Visits (userID, page, visit_date, spent_time, referrer) VALUES (3, 'Kontakt', '2023-10-22 09:45:00', 60, 'direkt');
INSERT INTO Visits (userID, page, visit_date, spent_time, referrer) VALUES (4, 'Hem', '2023-10-22 10:00:00', 60, 'direkt');
INSERT INTO Visits (userID, page, visit_date, spent_time, referrer) VALUES (4, 'Blogg', '2023-10-22 10:15:00', 45, 'google.com');

INSERT INTO User (name, registration_date, country) VALUES ('Anna Andersson', '2023-01-15', 'Sverige');
INSERT INTO User (name, registration_date, country) VALUES ('Bo Bengtsson', '2023-03-20', 'Danmark');
INSERT INTO User (name, registration_date, country) VALUES ('Clara Carlsson', '2023-05-30', 'Norge');
INSERT INTO User (name, registration_date, country) VALUES ('David Davidsson', '2023-07-22', 'Finland');
INSERT INTO User (name, registration_date, country) VALUES ('Eva Eriksson', '2023-07-22', 'Island');

INSERT INTO Actions (userID, visitID, activity_type, activity_date, details) VALUES (1, 2, 'Köp', '2023-10-22 09:15:00', 'ProduktID: 123');
INSERT INTO Actions (userID, visitID, activity_type, activity_date, details) VALUES (2, 3, 'Formulär', '2023-10-22 09:30:00', 'Kontaktformulär');
INSERT INTO Actions (userID, visitID, activity_type, activity_date, details) VALUES (3, 1, 'Klick', '2023-10-22 08:20:00', 'Banner: Kampanj');


INSERT INTO fruits (name, color) VALUES ('Apple', 'Red');
INSERT INTO fruits (name, color) VALUES ('Banana', 'Yellow');
INSERT INTO fruits (name, color) VALUES ('Orange', NULL);

INSERT INTO vegetables (name, color) VALUES ('Carrot', 'Orange');
INSERT INTO vegetables (name, color) VALUES ('Broccoli', 'Green');
INSERT INTO vegetables (name, color) VALUES ('Cucumber', NULL);
