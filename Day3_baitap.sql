--ex1: hackerank-revising-the-select-query.
SELECT NAME FROM CITY 
WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;

--ex2: hackerank-japanese-cities-attributes.
SELECT * FROM CITY 
WHERE COUNTRYCODE = 'JPN';

--ex3: hackerank-weather-observation-station-1.
SELECT CITY, STATE FROM STATION;

--ex4: hackerank-weather-observation-station-6.
SELECT DISTINCT CITY FROM STATION 
WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%';       

--ex5: hackerank-weather-observation-station-7.
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U';

--ex6: hackerank-weather-observation-station-9.
SELECT DISTINCT CITY FROM STATION 
WHERE NOT (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%');   

ex7: hackerank-name-of-employees.
SELECT NAME FROM EMPLOYEE
ORDER BY NAME ASC;

ex8: hackerank-salary-of-employees.
SELECT NAME FROM EMPLOYEE
WHERE SALARY > 2000 
AND MONTHS < 10
ORDER BY EMPLOYEE_ID ASC;

ex9: leetcode-recyclable-and-low-fat-products.
SELECT PRODUCT_ID FROM PRODUCTS
WHERE LOW_FATS = 'Y'
AND RECYCLABLE = 'Y';

ex10: leetcode-find-customer-referee.
SELECT NAME FROM CUSTOMER
WHERE REFEREE_ID <> 2 OR REFEREE_ID IS NULL;

ex11: leetcode-big-countries.
SELECT NAME, POPULATION, AREA FROM WORLD
WHERE AREA >= 3000000
OR POPULATION >= 25000000;

ex12: leetcode-article-views.
SELECT DISTINCT AUTHOR_ID AS id FROM VIEWS
WHERE AUTHOR_ID = VIEWER_ID
ORDER BY id;

ex13: datalemur-tesla-unfinished-part.
SELECT part, assembly_step FROM parts_assembly
WHERE finish_date IS NULL;

ex14: datalemur-lyft-driver-wages.
SELECT * FROM lyft_drivers
WHERE yearly_salary <= 30000 
OR yearly_salary >= 70000;

ex15: datalemur-find-the-advertising-channel.
SELECT advertising_channel 
FROM uber_advertising
WHERE year = 2019 AND money_spent > 100000;
