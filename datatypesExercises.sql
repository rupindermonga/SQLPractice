
Drop table inventory;

CREATE TABLE inventory (item_name VARCHAR(100), price decimal(8,2), quantity INT);


SELECT CURTIME();

SELECT CURRENT_DATE();

SELECT now();

SELECT Weekday(CURRENT_DATE());

SELECT day(CURRENT_DATE());

SELECT Dayname(CURRENT_DATE());


SELECT Date_format(CURRENT_DATE(), '%m/%d/%Y');

SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

drop table tweets;

create table tweets (content VARCHAR(100), username VARCHAR(100), created_at TimeSTamp default Now());

INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
SELECT * FROM tweets;
    
INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
SELECT * FROM tweets;

