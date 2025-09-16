

SELECT * FROM student;


SELECT country , count(*), avg(age) FROM student
    GROUP BY country


SELECT country, max(age) from student
    GROUP BY country
       HAVING max(age) > 20
    ;



-- Filter Groups Using HAVING to Show Only Countries with Average Age Above 20.60

SELECT country, avg(age) as age FROM student
    GROUP BY country
    HAVING avg(age) > 22


-- Count Students Born in Each Year
SELECT extract(year from dob) as birth_year FROM student
    GROUP BY birth_year