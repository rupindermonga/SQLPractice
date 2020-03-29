SELECT count(*) from books;
SELECT released_year, count(*) from books group by released_year;

Select sum(stock_quantity) from books;
SELECT author_lname, author_fname, avg(released_year) from books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, " ", author_lname) as "full name", pages from books order by pages DESC limit 1;

SELECT released_year as year, count(released_year) as "# books", avg(pages) as "avg pages" from books GROUP By released_year; 