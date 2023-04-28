DROP TABLE IF EXISTS person;

CREATE TABLE person (
	ID INTEGER PRIMARY KEY,
    LastName TEXT NOT NULL CHECK(LENGTH(LastName) > 0 AND LENGTH(LastName) <= 32),
    FirstName TEXT NOT NULL CHECK(LENGTH(FirstName) > 0 AND LENGTH(FirstName) <= 32),
    Gender CHAR CHECK(Gender IN ('M','F','X')),
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