CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT check (age >= 18),
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

DROP TABLE student

INSERT INTO
    student (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'Arif',
        'Ahmed',
        21,
        'B',
        'Physics',
        'arif@gmail.com',
        '2004-03-15',
        'A+',
        'Bangladesh'
    ),
    (
        'Sabbir',
        'Hossain',
        23,
        'A',
        'Chemistry',
        'sabbir@gmail.com',
        '2002-11-10',
        'B+',
        'USA'
    ),
    (
        'Nadia',
        'Khan',
        20,
        'C',
        'Biology',
        'nadia@gmail.com',
        '2004-08-05',
        'AB+',
        'Canada'
    ),
    (
        'Rashed',
        'Ali',
        22,
        'B',
        'English',
        'rashed@gmail.com',
        '2003-01-25',
        'O-',
        'USA'
    ),
    (
        'Tania',
        'Akter',
        21,
        'A',
        'History',
        'tania@gmail.com',
        '2004-05-30',
        'A-',
        'Bangladesh'
    ),
    (
        'Fahim',
        'Chowdhury',
        23,
        'C',
        'Geography',
        'fahim@gmail.com',
        '2002-09-12',
        'B-',
        'Canada'
    ),
    (
        'Sadia',
        'Islam',
        20,
        'B',
        'Math',
        'sadia@gmail.com',
        '2004-02-18',
        'O+',
        'USA'
    ),
    (
        'Raihan',
        'Hasan',
        22,
        'A',
        'Computer',
        'raihan@gmail.com',
        '2003-12-07',
        'AB-',
        'Bangladesh'
    ),
    (
        'Mimi',
        'Rahman',
        21,
        'B',
        'Physics',
        'mimi@gmail.com',
        '2004-07-22',
        'A+',
        'Canada'
    ),
    (
        'Imran',
        'Sultana',
        23,
        'C',
        'Chemistry',
        'imran@gmail.com',
        '2002-10-14',
        'B+',
        'China'
    );


INSERT INTO
    student (
        first_name,
        last_name,
        age,
        grade,
        course,
        dob,
        blood_group,
        country
    )
VALUES (
        'A',
        'A',
        21,
        'B',
        'Math',
        '2003-06-02',
        'A+',
        'China'
    );




SELECT * FROM student;

SELECT email FROM student;

SELECT first_name, age FROM student;

SELECT email as "Student Email" FROM student;

SELECT * FROM student ORDER BY age ASC;

SELECT * FROM student ORDER BY blood_group DESC;

SELECT * FROM student ORDER BY first_name ASC;

SELECT DISTINCT age FROM student;

SELECT * FROM student WHERE age = 20;

SELECT * FROM student WHERE country = 'Bangladesh'

SELECT * FROM student WHERE course = 'Physics' AND grade = 'B';

SELECT *
FROM student
WHERE (
        country = 'Bangladesh'
        OR country = 'Canada'
    )
    AND age = 21

SELECT * FROM student WHERE country != 'USA'

SELECT *
FROM student
WHERE
    country != 'USA'
    AND country != 'Canada'

SELECT * FROM student WHERE country <> 'Bangladesh'

-- scalar function

SELECT upper(first_name) FROM student;

SELECT lower(last_name) FROM student;

SELECT concat(first_name, ' ', last_name) FROM student;

SELECT length(first_name) FROM student;

-- aggregate function

SELECT MAX(age) FROM student;

SELECT MIN(age) FROM student;

SELECT avg(age) FROM student;

SELECT SUM(age) FROM student;

SELECT COUNT(*) FROM student;

-- aggregate function close

SELECT * FROM student 
    WHERE NOT country = 'USA'

SELECT * FROM student 
    WHERE email IS NULL;


SELECT * FROM student
    WHERE email IS NOT NULL


SELECT COALESCE(email, 'email not provide') as "Email" , first_name , blood_group FROM student

SELECT * FROM student
    WHERE country IN('USA', 'Canada')

SELECT * FROM student
    WHERE country NOT IN('USA', 'Canada')


SELECT * FROM student
    WHERE dob BETWEEN '2000-01-01' AND '2003-01-01'

SELECT * FROM student
    WHERE first_name LIKE '%m' 

SELECT * FROM student
    WHERE first_name LIKE 'A%'

SELECT * FROM student
    WHERE first_name LIKE '_a%'

SELECT * FROM student
    WHERE first_name ILIKE 'a%'



SELECT * FROM student LIMIT 5;

SELECT * FROM student LIMIT 5 OFFSET 5;

SELECT * FROM student LIMIT 5 OFFSET 2 * 2;


SELECT * FROM student

DELETE FROM student
    WHERE country = 'Canada' AND grade = 'C'


DELETE FROM student
    WHERE id = 11


SELECT * FROM student

UPDATE student
    SET email = 'default@gmail.com'
    WHERE id = 1

UPDATE student
 SET age = 50, first_name = 'tttttttttttttttttttttttt'
 WHERE id = 10