-- select * from covid_stat;
-- select * from covid19;

-- ALTER TABLE covid19
-- RENAME COLUMN "Country/Region" TO country_region;


SELECT *
FROM covid_stat AS cs
INNER JOIN covid19 AS c                    --matching country names
ON cs.country_region = c.country_region;

-- SELECT *
-- FROM covid_stat AS cs
-- LEFT JOIN covid19 AS c
-- ON cs.country_region = c.country_region;

-- SELECT *
-- FROM covid_stat AS cs
-- RIGHT JOIN covid19 AS c
-- ON cs.country_region = c.c.country_region;

-- SELECT *
-- FROM covid_stat AS cs
-- FULL JOIN covid19 AS c
-- ON cs.country_region = c.country_region;

