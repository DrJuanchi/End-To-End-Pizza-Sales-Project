#Check that data was imported correctly
SELECT * FROM pizza_sales;

#QUERIES FOR KPIS

#Total Revenue
SELECT SUM(total_price) as Total_Revenue
FROM pizza_sales;

#Average Order Value
SELECT AVG(Order_Value) AS Average_Order_Value
FROM(
SELECT DISTINCT(order_id), SUM(total_price) as Order_Value
FROM pizza_sales
GROUP BY order_id
) AS DistinctOrderValues;

#Total Pizzas Sold
SELECT SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales;

#Total Orders
SELECT COUNT(DISTINCT(order_id))
AS Total_Orders
FROM pizza_sales;

#Average Pizzas per Order
SELECT AVG(Pizzas_per_Order)
AS Average_Pizzas_Per_Order
FROM(
SELECT DISTINCT(order_id), SUM(quantity) as Pizzas_per_Order
FROM pizza_sales
GROUP BY order_id
) AS DistinctPizzasPerOrder;
