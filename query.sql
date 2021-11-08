-- Запит для визначення найпопулярнішого продукту
SELECT product_name, SUM(order_quantity * product_price) FROM customers JOIN orders USING(customer_steamid) JOIN products USING(product_id) GROUP BY product_name ORDER BY sum DESC

-- Запит для визначення частки, що витрачається кожним покупцем щомісяця
SELECT customer_steamid, COUNT(order_id) FROM customers LEFT JOIN orders USING(customer_steamid) GROUP BY customer_steamid

-- Запит для визначення залежності витрат від доходу
SELECT order_date, COUNT(*) FROM orders GROUP BY order_date ORDER BY order_date ASC