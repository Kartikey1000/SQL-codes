CREATE VIEW rural AS 
SELECT *
FROM census
WHERE locality LIKE '%rural%';

CREATE VIEW total AS
SELECT
    SUM(families) AS families,
    SUM(households) AS households,
    SUM(population) AS population,
    SUM(male) AS male,
    SUM(female) AS female
FROM census;

CREATE VIEW by_district AS
SELECT
    district,
    SUM(families) AS families,
    SUM(households) AS households,
    SUM(population) AS population,
    SUM(male) AS male,
    SUM(female) AS female
FROM census
GROUP BY district;

CREATE VIEW most_populated AS
SELECT
    district,
    SUM(families) AS families,
    SUM(households) AS households,
    SUM(population) AS population,
    SUM(male) AS male,
    SUM(female) AS female
FROM census
GROUP BY district
ORDER BY population DESC;