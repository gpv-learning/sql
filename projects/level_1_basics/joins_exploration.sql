-- Display all books with corresponding author names
SELECT b.title, a.author_name FROM books b INNER JOIN authors a USING (author_id);

-- Display loans with the corresonding member name
SELECT l.loan_id, m.member_name FROM loans l INNER JOIN members m USING (member_id);

-- Display loans with the corresponding book name
SELECT l.loan_id, b.title FROM loans l INNER JOIN books b USING (book_id);

-- Display all authors even whose who haven't published any books
SELECT a.author_name FROM authors a LEFT JOIN books b USING (author_id);

-- Display all books including those that haven't been checked out yet
SELECT b.title FROM books b  LEFT JOIN loans USING (book_id);

-- Display members and the number of their loans
SELECT m.member_name, COUNT(l.loan_id) AS nb_loans 
FROM members m LEFT JOIN loans l USING (member_id)
GROUP BY m.member_name;

-- Display loans that haven't been returned along with the corresponding member name, book title and the loan date
SELECT l.loan_id, m.member_name, b.title 
FROM loans l
INNER JOIN members m ON m.member_id = l.member_id
INNER JOIN books b ON b.book_id = l.book_id
WHERE l.return_date IS NULL ;

-- Display authors who haven't published any books
SELECT a.author_name 
FROM authors a 
LEFT JOIN books b USING (author_id) 
WHERE b.author_id IS NULL;

-- Display books that haven't been checked out 
SELECT 
    b.title
FROM books b
LEFT JOIN loans l
    USING (book_id)
WHERE l.book_id IS NULL;

-- Display members who have borrowed more than one book by the same author
SELECT 
    m.member_name,
    a.author_name,
    COUNT(b.book_id) AS nb_livres
FROM members m
INNER JOIN loans l ON m.member_id = l.member_id
INNER JOIN books b ON b.book_id = l.book_id
INNER JOIN authors a ON a.author_id = b.author_id
GROUP BY m.member_name, a.author_name
HAVING COUNT(b.book_id) > 1;

-- Display loans with a computed field
SELECT *, CURRENT_DATE - loan_date AS jours_emprunt FROM loans;
