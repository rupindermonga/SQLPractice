-- CHAR is of fixed length after that it truncates. it pads on right side with the blanks, though when we retreive training spaces are removed
-- if not fixed length use VARCHAR
-- Decimal(5,2) ... it can have max 5 digits including decimals and 2 is number of decimals 999.99

-- CREATE TABLE items(price DECIMAL(5,2));
    
-- INSERT INTO items(price) VALUES(7);
    
-- INSERT INTO items(price) VALUES(7987654);
    
-- INSERT INTO items(price) VALUES(34.88);
    
-- INSERT INTO items(price) VALUES(298.9999);
    
-- INSERT INTO items(price) VALUES(1.9999);
    
-- SELECT * FROM items;

-- Float and DOuble are approximate calculations (floating types) and decimals are exact.
-- Float and Double store large numbers using less space but less precision

-- CREATE TABLE thingies (price FLOAT);
    
-- INSERT INTO thingies(price) VALUES (88.45);
    
-- SELECT * FROM thingies;
    
-- INSERT INTO thingies(price) VALUES (8877.45);
    
-- SELECT * FROM thingies;
    
-- INSERT INTO thingies(price) VALUES (8877665544.45); -- doesnt truncate but put zeros after 7 digits
    
-- SELECT * FROM thingies;

-- DAte time
-- CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);
    
-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
    
-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');
    
-- SELECT * FROM people;


-- CURDate() gives current date
-- CurTime() gives current time
-- Now() gives current date time

-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES('Micro', CURDate(), CurTime(), Now());
    
-- SELECT * FROM people;
-- Delete from people where name = "Micro"

SELECT name, birthdate FROM people;
 
SELECT name, DAY(birthdate) FROM people;
 
SELECT name, birthdate, DAY(birthdate) FROM people;
 
SELECT name, birthdate, DAYNAME(birthdate) FROM people;
 
SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
 
SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;
 
SELECT name, birthtime, DAYOFYEAR(birthtime) FROM people;
 
SELECT name, birthdt, DAYOFYEAR(birthdt) FROM people;
 

    
SELECT name, birthdt, MONTH(birthdt) FROM people;
    
SELECT name, birthdt, MONTHNAME(birthdt) FROM people;
    
SELECT name, birthtime, HOUR(birthtime) FROM people;
    
SELECT name, birthtime, MINUTE(birthtime) FROM people;
    
SELECT CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate)) FROM people;
    
SELECT DATE_FORMAT(birthdt, 'Was born on a %W') FROM people;
    
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;
    
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%m') FROM people;

