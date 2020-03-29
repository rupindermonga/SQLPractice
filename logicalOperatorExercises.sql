SELECT 10 != 10;
SELECT 15>14 && 99-5 <= 94;
SELECT 1 in (5,3) || 9 BETWEEN 8 and 10;

SELECT * FROM books where released_year <1980;

SELECT title, author_lname from books where author_lname in ("Eggers", "Chabon");

SELECT title, author_lname, released_year from books where author_lname = "Lahiri" and released_year> 2000;

SELECT title, pages from books where pages BETWEEN 100 and 200;

SELECT title, author_lname from books where author_lname like "C%" or author_lname like "S%";

SELECT title, author_lname,
    CASE
        WHEN title like "%stories%" THEN "Short Stories"
        WHEN title = "Just Kids" || title like "A Heartbreaking Work%" THEN "Memoir"
        Else "Novel"
    END as TYPE
from books;


-- SELECT CONCAT("In ", released_year, " ", count(*), " book(s) released") as year from books GROUP BY released_year;
Select COUNT(*) from books GROUP BY author_lname, author_fname;

SELECT title, author_lname,
    CASE
        WHEN COUNT(*) = 1 then "1 book"
        ELSE CONCAT(count(*), " books")
    END AS "COUNT"
from books GROUP BY author_lname, author_fname;