select title from books where title like '%stories%';
select title, pages from books ORDER BY pages desc limit 1;
select CONCAT(title, " - ", released_year) as summary from books order by released_year desc limit 3;
select title, author_lname from books where author_lname like "% %";
SELECT title, released_year, stock_quantity from books ORDER BY stock_quantity limit 3;
SELECT Title, author_lname from books ORDER BY author_lname, title;
SELECT Upper(CONCAT("My Favourite author is ", author_fname," ", author_lname, "!")) as yell from books order BY author_lname;