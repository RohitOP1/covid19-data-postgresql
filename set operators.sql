-- SELECT country_region FROM covid_stat
-- UNION
-- SELECT country_region FROM covid19;           --unique countries 

-- SELECT country_region FROM covid_stat
-- UNION ALL
-- SELECT country_region FROM covid19;           -- includes duplicates


-- SELECT country_region FROM covid_stat
-- INTERSECT
-- SELECT country_region FROM covid19;           -- only countries that exist in both tables


-- SELECT country_region FROM covid19
-- EXCEPT
-- SELECT country_region FROM covid_stat;        --  countries in covid19 but not in covid_stat

-- SELECT country_region, who_region
-- FROM covid_stat
-- EXCEPT
-- SELECT country_region, who_region
-- FROM covid19
-- WHERE "Confirmed" > 10;
-- select * from covid19;



