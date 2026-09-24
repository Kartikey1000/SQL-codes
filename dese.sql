SELECT name, city
FROM schools
WHERE type = 'Public School';


SELECT name
FROM districts
WHERE name LIKE '%(non-op)';

SELECT AVG(per_pupil_expenditure) AS "Average District Per-Pupil Expenditure"
FROM expenditures;

SELECT city, COUNT(*) AS "Number of Public Schools"
FROM schools
WHERE type = 'Public School'
GROUP BY city
ORDER BY "Number of Public Schools" DESC, city
LIMIT 10;

SELECT city, COUNT(*) AS "Number of Public Schools"
FROM schools
WHERE type = 'Public School'
GROUP BY city
HAVING COUNT(*) <= 3
ORDER BY "Number of Public Schools" DESC, city;

SELECT schools.name
FROM schools
JOIN graduation_rates
    ON schools.id = graduation_rates.school_id
WHERE graduation_rates.graduated = 100;

SELECT schools.name
FROM schools
JOIN districts
    ON schools.district_id = districts.id
WHERE districts.name = 'Cambridge';

SELECT districts.name, expenditures.pupils
FROM districts
JOIN expenditures
ON districts.id = expenditures.district_id;

SELECT districts.name
FROM districts
JOIN expenditures
    ON districts.id = expenditures.district_id
WHERE expenditures.pupils = (
    SELECT MIN(pupils)
    FROM expenditures
);


SELECT
    schools.name,
    expenditures.per_pupil_expenditure,
    graduation_rates.graduated
FROM schools
JOIN expenditures
    ON schools.district_id = expenditures.district_id
JOIN graduation_rates
    ON schools.id = graduation_rates.school_id
ORDER BY
    expenditures.per_pupil_expenditure DESC,
    schools.name;

SELECT
    schools.name AS "School",
    districts.name AS "District",
    graduation_rates.graduated AS "Graduation Rate"
FROM schools
JOIN districts
    ON schools.district_id = districts.id
JOIN graduation_rates
    ON schools.id = graduation_rates.school_id
WHERE graduation_rates.graduated < 50
ORDER BY graduation_rates.graduated;