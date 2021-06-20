select title,publisher.name from books join publisher on publisher.id=books.publisher where publisher.country='UK';
