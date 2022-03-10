CREATE DATABASE joins;
 use joins;

 CREATE TABLE orders(ord_no int primary key, purch_amt float, ord_date date, customer_id int(50), salesman_id int(50));
 select * from orders

 CREATE TABLE CUSTOMER(customer_id int primary key,cust_name varchar(30),city varchar(20),grade int,salesman_id int);
 select*from customer

 CREATE TABLE SALESMAN(salesman_id int primary key,name varchar(20),city varchar(20),commission float);
select*from salesman;


SELECT salesman.name AS "Salesman",
    customer.cust_name, customer.city
    FROM salesman,customer
    WHERE salesman.city=customer.city

 SELECT a.ord_no,a.ord_date,a.purch_amt,
    b.cust_name AS "Customer Name", b.grade,
    c.name AS "Salesman", c.commission
    FROM orders a
    INNER JOIN customer b
    ON a.customer_id=b.customer_id
    INNER JOIN salesman c
    ON a.salesman_id=c.salesman_id;


	SELECT  a.ord_no,a.purch_amt,
   b.cust_name,b.city 
   FROM orders a,customer b 
   WHERE a.customer_id=b.customer_id 
   AND a.purch_amt BETWEEN 500 AND 20000;

   SELECT a.cust_name,a.city,a.grade, 
    b.name AS "Salesman",b.city 
    FROM customer a 
    LEFT JOIN salesman b 
    ON a.salesman_id=b.salesman_id 
    order by a.customer_id;

 
	SELECT a.cust_name,a.city,a.grade, 
    b.name AS "Salesman", b.city 
    FROM customer a 
    RIGHT OUTER JOIN salesman b 
    ON b.salesman_id=a.salesman_id 
    ORDER BY b.salesman_id;


SELECT a.cust_name AS "Customer Name",
    a.city,
    b.ord_no,
    b.ord_date,
    b.purch_amt
    FROM customer a
    RIGHT JOIN orders b
    ON a.customer_id= b.customer_id;


