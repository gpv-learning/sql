-- Display all the columns from the "authors" table
SELECT * FROM authors;

-- Display only the "title" and "publication_year" columns from "books" table
SELECT title, publication_year FROM books;

-- Display the first five members
SELECT member_name AS name FROM members ORDER BY join_date ASC LIMIT 5;

-- Display books published after 1990
SELECT title FROM books WHERE publication_year > 1990;

-- Display members sorted in descending order by the "join_date" column
SELECT member_name AS name FROM members ORDER BY join_date DESC;

-- Display authors born after 1950
SELECT author_name AS name FROM authors WHERE birth_year > 1950;

-- Display books whose title contains the letter 'a', sorted by publication year (ascending)
SELECT title FROM books WHERE title LIKE '%a%' ORDER BY publication_year ASC;

-- Display members whose names begin with the letter 'M'
SELECT member_name AS name FROM members WHERE member_name LIKE 'M%';

-- Display loans for which the "return_date" value is 'NULL'
SELECT * FROM loans WHERE return_date IS NULL;

-- Display books published between 1990 and 2000
SELECT title FROM books WHERE publication_year BETWEEN 1990 AND 2000;

-- Display members whose names contain at least two vowels
SELECT member_name AS name FROM members WHERE (
    (LENGTH(member_name) - LENGTH(REPLACE(LOWER(member_name), 'a', ''))) + 
    (LENGTH(member_name) - LENGTH(REPLACE(LOWER(member_name), 'e', ''))) +
    (LENGTH(member_name) - LENGTH(REPLACE(LOWER(member_name), 'i', ''))) + 
    (LENGTH(member_name) - LENGTH(REPLACE(LOWER(member_name), 'o', ''))) + 
    (LENGTH(member_name) - LENGTH(REPLACE(LOWER(member_name), 'u', ''))) +
    (LENGTH(member_name) - LENGTH(REPLACE(LOWER(member_name), 'y', ''))) +   
) >= 2;

-- Display authors sorted by name length
SELECT author_name AS name FROM authors ORDER BY LENGTH(author_name);

-- Display books whose titles are more than ten characters long
SELECT title FROM books WHERE LENGTH(title) >= 10;

-- Display members sorted by name length
SELECT member_name AS name FROM members ORDER BY LENGTH(member_name) DESC;

-- Display authors whose names consist of exactly two words
SELECT author_name AS name FROM authors WHERE SPLIT_PART(author_name, ' ', 3) = '';