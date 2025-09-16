-- Insertion constraint on INSERT post
-- Attempting to insert a post with a user ID that does not exist
-- Inserting a post with a valid user ID
-- Attempting to insert a post without specifying a user ID

-- Deletion constraint on DELETE user
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL
)

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id)
)

-- Setting NULL -> ON DELETE SET NULL
ALTER TABLE post alter COLUMN user_id set NOT NULL


-- Cascading Deletion -> ON DELETE CASCADE
CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) on delete CASCADE NOT NULL
)


-- Set Default value -> ON DELETE SET DEFAULT

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) on delete set DEFAULT DEFAULT 2 
)

INSERT INTO post (title) VALUES ('test')

-- or -->

INSERT INTO post (title, user_id) VALUES ('test', null)

INSERT INTO
    "user" (user_name)
VALUES ('Masum'),
    ('Billah'),
    ('Sohan'),
    ('Hasan')

INSERT INTO
    post (title, user_id)
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

SELECT * FROM post

SELECT * FROM "user"

DROP TABLE post

DROP TABLE "user"

DELETE FROM "user" WHERE id = 4

DELETE FROM post WHERE id = 5