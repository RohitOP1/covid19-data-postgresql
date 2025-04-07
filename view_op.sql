CREATE VIEW country_summary AS
SELECT country_region,
 SUM(deaths) AS total_deaths,
 SUM(recovered) AS total_recovered,
 SUM(daily_new_cases) AS total_new_cases
FROM covid_stat
GROUP BY country_region;

select * from country_summary;

CREATE VIEW high_Cases_countries AS
SELECT *FROM covid_stat
WHERE daily_new_cases > 5000;

select * from high_Cases_countries;

CREATE VIEW low_death_rate AS
SELECT *
FROM covid_stat
WHERE deaths < 100 AND recovered > 1000;

CREATE VIEW country_vaccine_status AS
SELECT cs.country_region,cs.deaths,cs.recovered,cv.people_vaccinated,cv.people_fully_vaccinated
FROM covid_stat cs
JOIN covid_vaccine cv 
ON cs.country_region = cv."Country/Region";
