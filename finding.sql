select title from books where title like '%\_%' -- to search for _
select title, author_fname from books WHERE author_fname like '%da%';
select title, author_fname from books WHERE author_fname like 'da%';
select title, author_fname from books WHERE author_fname like '%da';
select title, author_fname from books WHERE title like 'the%';
select title, author_fname from books WHERE title like '%the%';
select title, stock_quantity from books WHERE stock_quantity like '__'; --two underscores will give 2 length of the result
select title, stock_quantity from books WHERE stock_quantity like '___'; --3 digits in the result
select title from books where title like '%\%%' -- to search for % we need to use \
