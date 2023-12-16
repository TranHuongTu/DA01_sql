--HÀM TỔNG HỢP (AGGREGATE FUNCTION)
SELECT 
MAX(amount) AS max_amount,
MIN(amount) AS min_amount,
SUM(amount) AS total_amount,
AVG(amount) AS average_amount,
COUNT(*) AS total_record,
COUNT(DISTINCT customer_id) AS total_record_customer
FROM payment
WHERE payment_date BETWEEN '2020-01-01' AND '2020-02-01'
AND amount > 0;

--GROUP BY (gom nhóm)
--hãy cho biết mỗi khách hàng đã trả bao nhiêu tiền?
SELECT * FROM payment;

SELECT customer_id, staff_id,
SUM(amount) AS total_amount,
AVG(amount) AS avg_amount,
MAX(amount) AS max_amount,
MIN(amount) AS min_amount,
COUNT(*) AS count_rental
FROM payment
GROUP BY customer_id, staff_id
ORDER BY customer_id

--cú pháp
SELECT col1, col2, /*chỉ hiển thị tối đa các trường thông tin group by*/
SUM(),
AVG(),
MIN(),
MAX(),
FROM table_nm
GROUP BY col1, col2

/*Group by challenge
Tối đa, tối thiểu, trung bình, tổng chi phí thay thế*/
SELECT film_id,
MAX(replacement_cost) AS max_cost,
MIN(replacement_cost) AS min_cost,
ROUND(AVG(replacement_cost),2) AS avg_cost,
SUM(replacement_cost) AS sum_cost
FROM film
GROUP BY film_id
ORDER BY film_id

/*HAVING
hãy cho biết khách hàng nào đã trả tổng số tiền >100$*/
SELECT * FROM payment;

SELECT customer_id,
sum(amount) AS total_amount
FROM payment
GROUP BY customer_id
HAVING sum(amount) >100

/*HAVING VS WHERE
WHERE lọc điều kiện trên các trường có sẵn
HAVING lọc điều kiện trên những trường thông tin tổng hợp sum, avg, min, max
Having luôn đứng sau mệnh đề group by (sau khi đã gom nhóm)*/

--hãy cho biết khách hàng nào đã trả tổng số tiền >10$ trong t1-2020
SELECT customer_id,
sum(amount) AS total_amount
FROM payment
WHERE payment_date BETWEEN '2020-01-01' AND '2020-02-01'
GROUP BY customer_id
HAVING sum(amount) >10

/*Năm 2020, các ngày 28, 29, 30/4 là những ngày có doanh thu rất cao. 
Hãy tìm số tiền thanh toán trung bình được nhóm theo khách hàng và ngày thanh toán - chỉ xem xét những ngày mà khách hàng có nhiều hơn 1 khoản thanh toán.
Sắp xếp theo số tiền trung bình theo thứ tự giảm dần.*/
SELECT * FROM payment

SELECT customer_id, DATE(payment_date),
AVG(amount) AS avg_amount,
COUNT(payment_id)
FROM payment
WHERE DATE(payment_date) IN ('2020-04-28','2020-04-29','2020-04-30')
GROUP BY customer_id, DATE(payment_date)
HAVING COUNT(payment_id) >1
ORDER BY avg_amount DESC

/*Toán tử số học (mathematic operators)*/
SELECT 3+7, 3-7, 3*7, 7%3, 7^3

/*Hàm số học (mathematic function)
abs(x) giá trị tuyệt đối
round(x,d) làm tròn x đến d số thập phân
ceiling(x) làm tròn ở cận trên
floor(x) làm tròn ở cận dưới*/
SELECT film_id, rental_rate, 
rental_rate+1 AS newrental_rate,
ROUND(rental_rate*1.1,2),
CEILING(rental_rate*1.1),
FLOOR(rental_rate*1.1)-0.1
FROM film

/*Quản lý của bạn đang nghĩ đến việc tăng giá cho những bộ phim có chi phí thay thế cao. Vì vậy, bạn nên tạo một danh sách các bộ phim có giá thuê ít hơn 4% chi phí thay thế. Tạo danh sách film_id đó cùng với tỷ lệ phần trăm (giá thuê/chi phí thay thế) được làm tròn đến 2 chữ số thập phân.*/
SELECT film_id, rental_rate, replacement_cost,
ROUND((rental_rate/replacement_cost)*100,2) AS percentage
FROM film
WHERE ROUND((rental_rate/replacement_cost)*100,2) < 4

/*Tổng kết thứ tự thực hiện câu lệnh*/
SELECT customer_id,
COUNT(*) AS total_record
FROM payment
WHERE payment_date >= '2020-01-30'
GROUP BY customer_id
HAVING COUNT(*) <= 15
ORDER BY total_record desc
LIMIT 5

=> SELECT - FROM - WHERE- GROUP BY - HAVING - ORDER BY- HAVING - ORDER- LIMIT
