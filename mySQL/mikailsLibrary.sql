SELECT * FROM books;
SELECT * FROM authors;
SELECT * FROM author_books;
show tables;

select title, published, authors.firstname, authors.lastname
from books
join author_books on books.id = author_books.BookID
join authors on author_books.AuthorId = authors.id;


#Antal böcker efter år 2000
SELECT count(*) FROM books WHERE books.Published > '2000';

#Antal böcker skriven av Astrid Lindgren
select count(*) FROM author_books 
join authors on AuthorId = authors.id
WHERE authors.firstname = "Astrid" and authors.lastname = "Lindgren";

#Lista på böcker skriven av Astrid Lindgren
SELECT title FROM books
join author_books on books.id = author_books.BookId
join authors on AuthorId = authors.id
WHERE authors.firstname = "Astrid" and authors.lastname = "Lindgren";

#antal böcker från Astrid Lindgren som har fler än 200 sidor
select count(*) FROM author_books 
join books on books.id = author_books.BookId
join authors on AuthorId = authors.id
WHERE authors.firstname = "Astrid" and authors.lastname = "Lindgren"
AND books.pages > 200;

#Vilka böcker som är gjorda av författare som har första bokstan H i sitt namn
select title, authors.Firstname, authors.Lastname from books
join author_books on books.id = author_books.BookId
join authors on author_books.AuthorId = authors.id
where authors.Firstname like 'h%';

#Hur många då?
select count(*) from books
join author_books on books.id = author_books.BookId
join authors on author_books.AuthorId = authors.id
where authors.Firstname like 'h%';

#antal böcker som har fler än 100 sidor och skrivna av författare som har ett efternamn som slutar på gren
select count(*) from books
join author_books on books.id = author_books.BookId
join authors on author_books.AuthorId = authors.id
where authors.Lastname like '%gren' and pages > 100;

#Vilka böcker är det då?
select title, pages, authors.lastname from books
join author_books on books.id = author_books.BookId
join authors on author_books.AuthorId = authors.id
where authors.Lastname like '%gren' and pages > 100;

#Hur många böcker har fler än en författare
select count(*) 
from ( 
select count(AuthorID) 
from author_books
group by bookID 
HAVING COUNT(AuthorID)> 1 ) AS X;

#bara för att testa 
select bookID from author_books
group by bookID having count(AuthorID) > 1;

#Antal böcker varje författare har släppt ut efter 2012
select authors.firstname, authors.lastname, count(*) as books from author_books
join books on BookID = books.id
join authors on AuthorId = authors.id
where books.published > 2012
group by authorID having count(BookID);

#Författare som har släppt ut fler än 4 böcker
select authors.firstname, authors.lastname, count(*) as books from author_books
join books on BookID = books.id
join authors on AuthorId = authors.id
group by authorID having count(BookID) > 4;







