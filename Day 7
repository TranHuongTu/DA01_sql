-- ex1:
SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY SUBSTR(NAME, -3), ID;

--ex2:
SELECT
  user_id,
  UPPER(LEFT(name, 1)) || LOWER(SUBSTRING(name FROM 2)) AS name
FROM Users
ORDER BY user_id;

--ex3:
SELECT
  manufacturer,
  CONCAT('$', ROUND(SUM(total_sales) / 1000000), ' million') AS total_sales
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY
  ROUND(SUM(total_sales) / 1000000) DESC,
  manufacturer ASC;

--ex4:
SELECT EXTRACT(MONTH FROM submit_date) AS mth, product_id AS product, ROUND(AVG(stars), 2) AS avg_stars
FROM reviews
GROUP BY EXTRACT(MONTH FROM submit_date), product_id
ORDER BY EXTRACT(MONTH FROM submit_date), product_id;

--ex5:
SELECT sender_id, COUNT(message_id) as message_count 
FROM messages
WHERE EXTRACT(year FROM sent_date) = '2022' AND EXTRACT(month FROM sent_date) = '08'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2 ;

--ex6:
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

--ex7:
SELECT 
  activity_date AS day,
  COUNT(DISTINCT user_id) AS active_users
FROM activity
WHERE activity_date <= DATE '2019-07-27'
  AND activity_date > DATE '2019-07-27' - INTERVAL '29 days'
GROUP BY activity_date;

--ex8:
SELECT 
    COUNT(id) AS number_of_employees,
    EXTRACT(MONTH FROM joining_date) AS month
FROM employees
WHERE joining_date BETWEEN '2022-01-01' AND '2022-07-31'
GROUP BY EXTRACT(MONTH FROM joining_date)
ORDER BY month;

--ex9:
SELECT POSITION('a' IN first_name) AS position_of_a
FROM worker
WHERE first_name = 'Amitah';

--ex10:
SELECT
    title,
    CAST(
        SUBSTRING(title FROM '\m(19|20)\d{2}\M') AS INTEGER
    ) AS year
FROM winemag_p2
WHERE country = 'Macedonia'
  AND title ~ '\m(19|20)\d{2}\M';
