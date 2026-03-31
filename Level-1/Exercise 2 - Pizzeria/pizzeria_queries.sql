SELECT *
FROM ORDER_ITEMS;

SELECT SUM(quantity)
FROM ORDER_ITEMS
JOIN ORDERS ON order_items.order_id = orders.id
JOIN CLIENTS ON orders.client_id = clients.id
JOIN CITIES ON clients.city_id = cities.id
JOIN PRODUCTS ON order_items.product_id = products.id
WHERE product_type = 'drink'
AND city = 'Barcelona';

SELECT *
FROM ORDERS;

SELECT COUNT(*) AS total_orders
FROM ORDERS 
WHERE delivery_employee_id = 2;