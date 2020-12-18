#1.Задание
INSERT INTO users(created_at, updated_at) VALUES
('2020-01-20 20:20:00', '2020-05-17 20:20:00'),
('2020-01-20 20:20:00', '2020-05-17 20:20:00');

SELECT * FROM example.users;

#2.Задание
ALTER TABLE users 
MODIFY created_at datetime default NOW(),
MODIFY updated_at datetime default NOW();


#3.Задание
INSERT INTO storehouses_products(value) VALUES
(0),(2500),(0),(30),(500),(1);
SELECT * FROM example.storehouses_products;

SELECT value FROM example.storehouses_products ORDER BY value;


#Агрегация
#1.Задание
SELECT AVG(birthday_at) FROM example.users;