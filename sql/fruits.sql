-- Jag använder fruits & vegetables för att visa exempel på UNION.

CREATE TABLE fruits (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    color VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO fruits (name, color) VALUES ('Apple', 'Red');
INSERT INTO fruits (name, color) VALUES ('Banana', 'Yellow');
INSERT INTO fruits (name, color) VALUES ('Orange', NULL);


CREATE TABLE vegetables (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    color VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO vegetables (name, color) VALUES ('Carrot', 'Orange');
INSERT INTO vegetables (name, color) VALUES ('Broccoli', 'Green');
INSERT INTO vegetables (name, color) VALUES ('Cucumber', NULL);


SELECT * FROM fruits
UNION
SELECT * FROM vegetables;


-- mysql> SELECT * FROM fruits;
-- +----+--------+--------+
-- | id | name   | color  |
-- +----+--------+--------+
-- |  1 | Apple  | Red    |
-- |  2 | Banana | Yellow |
-- |  3 | Orange | NULL   |
-- +----+--------+--------+
-- 3 rows in set (0.00 sec)

-- mysql> SELECT * FROM vegetables;
-- +----+----------+--------+
-- | id | name     | color  |
-- +----+----------+--------+
-- |  1 | Carrot   | Orange |
-- |  2 | Broccoli | Green  |
-- |  3 | Cucumber | NULL   |
-- +----+----------+--------+

-- mysql> SELECT * FROM fruits
--     -> UNION
--     -> SELECT * FROM vegetables;
-- +----+----------+--------+
-- | id | name     | color  |
-- +----+----------+--------+
-- |  1 | Apple    | Red    |
-- |  2 | Banana   | Yellow |
-- |  3 | Orange   | NULL   |
-- |  1 | Carrot   | Orange |
-- |  2 | Broccoli | Green  |
-- |  3 | Cucumber | NULL   |
-- +----+----------+--------+
