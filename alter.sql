-- Active: 1757815483896@@127.0.0.1@5432@ph




SELECT * FROM person2;


CREATE TABLE person3(
    id SERIAL, 
    name VARCHAR(200) NOT NULL, 
    email VARCHAR(255) NOT NULL, 
    dob DATE NOT NULL,
    UNIQUE(id, email),
    PRIMARY KEY(id, email)
    )


DROP TABLE person3;


ALTER TABLE person2 RENAME to person;

ALTER TABLE person2
    ADD COLUMN address TEXT DEFAULT 'Dhaka' NOT NULL;


ALTER TABLE person2
    DROP COLUMN address


ALTER TABLE person2
    RENAME COLUMN age to user_age;


ALTER Table person2
    alter COLUMN username type VARCHAR(500)


ALTER TABLE person2
    alter COLUMN dob set NOT NULL;

ALTER Table person2
    alter COLUMN dob DROP NOT NULL

ALTER TABLE person2
    ADD constraint unique_person2_id UNIQUE(id)

ALTER TABLE person2
    DROP constraint unique_person2_id;

ALTER TABLE person2
    ADD constraint pk_person2_username PRIMARY KEY(username) 


ALTER TABLE person2
 ALTER COLUMN address DROP DEFAULT;



TRUNCATE TABLE person2

INSERT INTO person2(id, username, email, user_age, dob, address)
VALUES (1, 'masum', 'masum@gmail.com', 22, '2003-06-20', 'ulipur');
