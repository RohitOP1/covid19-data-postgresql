
-- CREATE TABLE

CREATE TABLE covid19 (
    country_region VARCHAR(100) NOT NULL,
    confirmed INTEGER NOT NULL,
    deaths INTEGER NOT NULL,
    recovered INTEGER NOT NULL,
    active INTEGER NOT NULL,
    new_cases INTEGER NOT NULL,
    new_deaths INTEGER NOT NULL,
    new_recovered INTEGER NOT NULL,
    deaths_per_100_cases FLOAT NOT NULL,
    recovered_per_100_cases FLOAT NOT NULL,
    deaths_per_100_recovered FLOAT NOT NULL,
    confirmed_last_week INTEGER NOT NULL,
    one_week_change INTEGER NOT NULL,
    one_week_percent_increase FLOAT NOT NULL,
    who_region VARCHAR(100) NOT NULL
);


-- READ (SELECT QUERIES)


-- Get all data from covid19 table
SELECT * FROM covid19;

-- Select deaths & recovered count for a specific country
SELECT deaths, recovered 
FROM covid19 
WHERE country_region = 'Afghanistan';

-- Get all countries with more than 5000 daily new cases
SELECT * FROM covid19
WHERE new_cases >= 5000;

-- Get countries whose name starts with "A"
SELECT * FROM covid19
WHERE country_region LIKE 'A%';

-- Get records where deaths=423 OR new_cases=616
SELECT * FROM covid19
WHERE deaths = 423 OR new_cases = 616;

-- Get distinct country names
SELECT DISTINCT country_region FROM covid19;

-- Count unique country names
SELECT COUNT(DISTINCT country_region) FROM covid19;

-- Get the country with the **highest recovered cases**
SELECT * FROM covid19
ORDER BY recovered DESC
LIMIT 1;

-- Get the **top 20 countries** by deaths
SELECT * FROM covid19
ORDER BY deaths DESC
LIMIT 20;

-- Get **next 20 countries** (pagination example)
SELECT * FROM covid19
ORDER BY deaths DESC
LIMIT 20 OFFSET 20;

-- Get the **minimum recovered cases**
SELECT MIN(recovered) FROM covid19;

-- Get the **maximum recovered cases**
SELECT MAX(recovered) FROM covid19;

-- Get the **total sum of recovered cases**
SELECT SUM(recovered) FROM covid19;

-- Get the **average recovered cases**
SELECT AVG(recovered) AS avg_recovered FROM covid19;


-- UPDATE (MODIFY DATA)


-- Update new cases for Afghanistan
UPDATE covid19
SET new_cases = 110  
WHERE country_region = 'Afghanistan';

-- Rename a column (Change 'new_cases' to 'daily_new_cases')
ALTER TABLE covid19
RENAME COLUMN new_cases TO daily_new_cases;

-- Increase new cases by 10% for all countries
UPDATE covid19
SET new_cases = new_cases * 1.1;


-- DELETE DATA


-- Delete records for Albania
DELETE FROM covid19
WHERE country_region = 'Albania';

-- Delete all records where deaths = 0
DELETE FROM covid19
WHERE deaths = 0;

-- Delete all data but keep table structure
-- DELETE FROM covid19;

-- Drop the entire table 
-- DROP TABLE IF EXISTS covid19;

