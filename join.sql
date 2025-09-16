
CREATE TABLE person1 (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL
)

CREATE TABLE post1 (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES person1 (id)
)

INSERT INTO
    person1 (user_name)
VALUES ('Masum'),
    ('Billah'),
    ('Sohan'),
    ('Hasan')

INSERT INTO
    post1 (title, user_id)
VALUES (
        'Enjoying a sunny day with Akash! ☀️',
        2
    ),
    (
        'Batash just shared an amazing recipe! 🍲',
        1
    ),
    (
        'Exploring adventures with Sagor.🌟',
        4
    ),
    (
        'Nodi''s wisdom always leaves me inspired. 📚',
        4
    );

DROP Table post1

DROP Table person1

SELECT * FROM post1

SELECT * FROM person1


SELECT * FROM post1 as p
    JOIN person1 as pn ON p.user_id = pn.id

SELECT title, user_name FROM post1
    JOIN person1 ON post1.user_id = person1.id 

INSERT INTO post1(id, title, user_id)
    VALUES(5, 'hellw Bangladesh', NULL)

SELECT * FROM post1
    LEFT OUTER JOIN person1 ON post1.user_id = person1.id

SELECT * FROM post1
    RIGHT OUTER JOIN person1 ON post1.user_id = person1.id


SELECT * FROM post1
    FULL OUTER JOIN person1 ON post1.user_id = person1.id