/*Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине*/

SELECT 
    users.id, users.name, products.name, orders_products.total, products.price 
FROM
 users
JOIN orders ON users.id = orders.user_id
JOIN orders_products ON orders_products.order_id = orders.id
JOIN products ON orders_products.product_id = products.id