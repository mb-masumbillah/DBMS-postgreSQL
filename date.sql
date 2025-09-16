
SHOW timezone;

CREATE TABLE timeZ(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone)


INSERT INTO timeZ VALUES('2025-01-12 10:40:00', '2025-01-12 10:40:00')

SELECT * FROM timeZ

SELECT now();

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(), 'DDD');

SELECT to_char(now(), 'DD');

SELECT to_char(now(), 'MM')

SELECT to_char(now(), 'month')

SELECT to_char(now(), 'Day')

SELECT CURRENT_DATE - INTERVAL '1 year 2 month'

SELECT age(CURRENT_DATE, '2003-06-20')

SELECT * , age(CURRENT_DATE, dob) FROM student;

SELECT extract(month from '2025-01-25'::DATE)

SELECT extract(day from '2003-06-20'::DATE)

SELECT extract(year from '2003-06-20'::DATE)

SELECT 0::BOOLEAN

SELECT 1::BOOLEAN

SELECT 'y'::BOOLEAN

SELECT 'n'::BOOLEAN