SELECT * FROM  pizza_sales

--Finding the total revenue 
SELECT SUM(total_price) AS Total_revenue FROM pizza_sales

--Finding average order value:
  --Finding the total number of orders 
    SELECT COUNT(DISTINCT(order_id))  AS count_no_orders FROM pizza_sales
  --Finding average
    SELECT SUM(total_price)/COUNT(DISTINCT(order_id)) AS average_order_value FROM pizza_sales

--Total Pizza Sold:
SELECT SUM(quantity)AS Total_pizza_sold  FROM pizza_sales

--Total order placed
SELECT COUNT(DISTINCT(order_id))  AS count_no_orders FROM pizza_sales

--Average Pizzas Per Order
SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2))/ CAST(COUNT(DISTINCT(order_id)) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS avg_perorder FROM pizza_sales


--Hourly Trend for total pizzas sold 
SELECT DATEPART(HOUR, order_time) as order_hour, SUM(quantity) AS Total_pizza_sold FROM pizza_sales
GRoup BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time)

--Weekly trends for total orders
SELECT DATEPART(ISO_WEEK,order_date) as week_date, YEAR(order_date) AS order_year, COUNT((DISTINCT(order_id)) as total_orders FROM  pizza_sales
GRoup BY DATEPART(HOUR, order_time),YEAR(order_date)
ORDER BY DATEPART(HOUR, order_time),YEAR(order_date)