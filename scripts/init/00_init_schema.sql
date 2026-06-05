--- CREATING TABLES ---

--- Avoid duplicate tables
DROP TABLE IF EXISTS authors ;
DROP TABLE IF EXISTS books ;
DROP TABLE IF EXISTS members ;
DROP TABLE IF EXISTS loans ;
---

CREATE TABLE authors (
    author_id INTEGER PRIMARY KEY,
    author_name TEXT NOT NULL,
    birth_year INTEGER CHECK (birth_year > 0), 
    created_at DATE DEFAULT CURRENT_DATE
);

CREATE TABLE books (
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    publication_year INTEGER CHECK (publication_year > 0),
    author_id INTEGER,
    date_added DATE DEFAULT CURRENT_DATE,

    CONSTRAINT fk_authors 
        FOREIGN KEY (author_id)
        REFERENCES authors(author_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE members (
    member_id INTEGER PRIMARY KEY,
    member_name TEXT NOT NULL,
    join_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE loans (
    loan_id INTEGER PRIMARY KEY,
    loan_date DATE NOT NULL,
    return_date DATE,
    member_id INTEGER,
    book_id INTEGER,

    CONSTRAINT fk_members
        FOREIGN KEY (member_id)
        REFERENCES members(member_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_books
        FOREIGN KEY (book_id)
        REFERENCES books(book_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);