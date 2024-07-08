SELECT * FROM pizza_sales;

#Daily Trend for Total orders
SELECT DAYNAME(order_date) as day_name, 
COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY day_name;

#Monthly Trend for Total Orders
SELECT MONTHNAME(order_date) as month_name, 
COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY month_name
ORDER BY total_orders DESC;

#Percentage of Sales by Pizza Category
SELECT pizza_category, 
SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales)
AS Percentage_of_Sales
FROM pizza_sales
GROUP BY pizza_category;

#Percentage of Sales by Pizza Size
SELECT pizza_size, 
SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales)
AS Percentage_of_Sales
FROM pizza_sales
GROUP BY pizza_size;

#Total Pizzas Sold by Pizza Category
SELECT pizza_category, 
COUNT(order_id) AS Total_Sales
FROM pizza_sales
GROUP BY pizza_category;

#Top 5 Best Sellers by: Revenue 
SELECT pizza_name, SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC
LIMIT 5;

#Total Quantity
SELECT pizza_name, SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity DESC
LIMIT 5;

#Total Orders
SELECT pizza_name, COUNT(DISTINCT(order_id)) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders DESC
LIMIT 5;

#Bottom 5 Best Sellers by: Revenue 
SELECT pizza_name, SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue
LIMIT 5;

#Total Quantity
SELECT pizza_name, SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity
LIMIT 5;

#Total Orders
SELECT pizza_name, COUNT(DISTINCT(order_id)) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders
LIMIT 5;