select title from books join books_subjects on books.id=books_subjects.book where books_subjects.subject in (3,8);
