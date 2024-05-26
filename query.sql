-- queries

-- query 1

-- Retrieve All South Indian Restaurants
SELECT * FROM restaurants WHERE cuisine_type = 'South Indian';

-- query 2
-- Retrieve Menu Items for a Specific Restaurant
SELECT * FROM menu_items WHERE restaurant_id = 1;

-- query3
-- Retrieve Customers

SELECT * FROM customers;

-- query 4
-- Retrieve Orders Placed by a Specific Customer

SELECT * FROM orders WHERE customer_id = 1;

-- query 5
-- Retrieve Order Items for a Specific Order

SELECT * FROM order_items WHERE order_id = 1;

-- query 6
-- Calculate Total Amount of an Order

SELECT SUM(quantity * unit_price) AS total_amount FROM order_items WHERE order_id = 1;


-- query 7
-- Calculate Total Sales for Each South Indian Restaurant


SELECT r.name AS restaurant_name, SUM(oi.quantity * mi.price) AS total_sales
FROM restaurants r
JOIN menu_items mi ON r.restaurant_id = mi.restaurant_id
JOIN order_items oi ON mi.item_id = oi.item_id
JOIN orders o ON oi.order_id = o.order_id
WHERE r.cuisine_type = 'South Indian'
GROUP BY r.name;

-- query 8
-- Retrieve Orders with Status "Delivered"

SELECT * FROM orders WHERE status = 'Delivered';

-- query 9
-- Retrieve Orders Placed Today


SELECT * FROM orders WHERE DATE(order_date) = CURDATE();

-- query 10
-- Retrieve Customers Who Ordered Masala Dosa

SELECT c.*
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN menu_items mi ON oi.item_id = mi.item_id
JOIN restaurants r ON mi.restaurant_id = r.restaurant_id
WHERE r.cuisine_type = 'South Indian' AND mi.name = 'Masala Dosa';
