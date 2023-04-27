DROP TABLE IF EXISTS person;

CREATE TABLE person (
	ID INTEGER PRIMARY KEY,
    LastName VARCHAR(32) NOT NULL,
    FirstName VARCHAR(32) NOT NULL,
    Gender CHAR(1) CHECK(Gender IN ('M','F','X')),
    DateOfBirth DATE NOT NULL,
    DateOfDeath DATE,
    CONSTRAINT dateCheck CHECK ((DateOfDeath IS NULL) OR (DateOfBirth < DateOfDeath))
);

INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Wayne', 'Bruce', 'M', '1966-12-31', '2011-12-31');
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Allen', 'Barry', 'M', '1971-07-31', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Zor-El', 'Kara', 'F', '1985-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Kent',  'Clark', 'M', '1975-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Wayne', 'Bruce', 'M', '1966-12-31', '2011-12-31');
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Allen', 'Barry', 'M', '1971-07-31', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Zor-El', 'Kara', 'F', '1985-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Kent',  'Clark', 'M', '1975-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Wayne', 'Bruce', 'M', '1966-12-31', '2011-12-31');
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Allen', 'Barry', 'M', '1971-07-31', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Zor-El', 'Kara', 'F', '1985-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Zor-El', 'Kara', 'F', '1985-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Kent',  'Clark', 'M', '1975-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Wayne', 'Bruce', 'M', '1966-12-31', '2011-12-31');
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Allen', 'Barry', 'M', '1971-07-31', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Zor-El', 'Kara', 'F', '1985-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Kent',  'Clark', 'M', '1975-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Wayne', 'Bruce', 'M', '1966-12-31', '2011-12-31');
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Allen', 'Barry', 'M', '1971-07-31', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Zor-El', 'Kara', 'F', '1985-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Kent',  'Clark', 'M', '1975-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Wayne', 'Bruce', 'M', '1966-12-31', '2011-12-31');
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Allen', 'Barry', 'M', '1971-07-31', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Zor-El', 'Kara', 'F', '1985-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Kent',  'Clark', 'M', '1975-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Wayne', 'Bruce', 'M', '1966-12-31', '2011-12-31');
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Allen', 'Barry', 'M', '1971-07-31', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Zor-El', 'Kara', 'F', '1985-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Kent',  'Clark', 'M', '1975-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Wayne', 'Bruce', 'M', '1966-12-31', '2011-12-31');
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Allen', 'Barry', 'M', '1971-07-31', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Zor-El', 'Kara', 'F', '1985-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Kent',  'Clark', 'M', '1975-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Wayne', 'Bruce', 'M', '1966-12-31', '2011-12-31');
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Allen', 'Barry', 'M', '1971-07-31', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Zor-El', 'Kara', 'F', '1985-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Kent',  'Clark', 'M', '1975-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Wayne', 'Bruce', 'M', '1966-12-31', '2011-12-31');
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Allen', 'Barry', 'M', '1971-07-31', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Zor-El', 'Kara', 'F', '1985-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('Kent',  'Clark', 'M', '1975-02-27', NULL);
INSERT INTO person (LastName, FirstName, Gender, DateOfBirth, DateOfDeath) 
    VALUES ('12345678901234567890123456789012345677890123456',  '98765432109876543210987654321098', 'M', '1975-02-27', NULL);