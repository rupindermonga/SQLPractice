SELECT COUNT(*) from books;
SELECT COUNT(author_fname) from books;
SELECT COUNT(Distinct author_fname) from books;
SELECT COUNT(Distinct author_fname, author_lname) from books;
SELECT COUNT(*) from books where title like '%the%';

SELECT title, author_lname FROM books;
SELECT title, author_lname FROM books GROUP BY author_lname;

SELECT author_lname, COUNT(*) as Count from books GROUP BY author_lname;

SELECT title, author_lname, author_fname from books;
SELECT title, author_lname, author_fname from books GROUP BY author_lname;
SELECT author_lname, author_fname, COUNT(*)  from books GROUP BY author_lname;
SELECT author_lname, author_fname, COUNT(*)  from books GROUP BY author_lname, author_fname;

SELECT released_year from books;
SELECT released_year, count(*) from books GROUP BY released_year;
SELECT CONCAT("In ", released_year, " ", count(*), " book(s) released") as year from books GROUP BY released_year;

SELECT title, pages from books;
SELECT MIN(released_year) from books;
SELECT MIN(pages) from books;
SELECT Max(pages) from books;
SELECT title, Max(pages) from books; -- gives wrong result for the title
SELECT Max(pages), title from books;-- gives wrong result for the title

SELECT title, max(pages) from books where pages = (Select max(pages) from books); -- usually slow with huge dataset
SELECT title, min(pages) from books where pages = (Select min(pages) from books); -- usually slow with huge dataset
SELECT title, pages from books ORDER by pages limit 1; -- faster
SELECT title, pages from books ORDER by pages desc limit 1; -- faster

SELECT author_lname, author_fname, min(released_year) from books GROUP BY author_lname, author_fname;
SELECT author_lname, author_fname, max(pages) from books GROUP BY author_lname, author_fname;

SELECT sum(pages) from books;
SELECT author_lname, author_fname, sum(pages) from books group BY author_lname, author_fname;

SELECT AVG(pages) from books;
SELECT author_lname, author_fname, avg(pages) from books group BY author_lname, author_fname;
Select avg(stock_quantity) from books GROUP BY released_year;
