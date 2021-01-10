/*Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае.
 Месяцы заданы в виде списка английских названий (may, august) */

SELECT 
    firstname, lastname, gender, birthday, DATE_FORMAT(birthday, '%M') AS birthday_month
FROM
    lesson_vk.users, lesson_vk.profiles
WHERE
users.id=profiles.users_id AND
(birthday LIKE '%-05-%' OR birthday LIKE '%-08-%');

