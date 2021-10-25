-- Запит для визначення найпопулярнішого продукту
SELECT product_name, SUM(spent_money) FROM customers JOIN spendings USING(customer_id) JOIN products USING(product_barcode) GROUP BY product_name ORDER BY sum DESC

-- Запит для визначення частки, що витрачається кожним покупцем щомісяця
SELECT customer_id, SUM(100 * spent_money) / (customer_income / 12) FROM customers JOIN spendings USING(customer_id) GROUP BY customer_id

-- Запит для визначення залежності витрат від доходу
SELECT customer_id, customer_income, SUM(spent_money) FROM customers JOIN spendings USING(customer_id) GROUP BY customer_id ORDER BY customer_income