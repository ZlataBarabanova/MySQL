/*Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети. */

SELECT 
     users.id, CONCAT(firstname, ' ', lastname) AS name, 
     messages.id AS 'messages_id', posts.id AS 'posts.id', media.id AS 'media.id', likes.*
FROM
    lesson_vk.users
   LEFT JOIN messages ON users.id = messages.from_users_id
   LEFT JOIN posts ON users.id = posts.users_id
   LEFT JOIN media ON users.id = media.users_id
   LEFT JOIN likes ON users.id = likes.users_id
WHERE posts.id IS NULL AND messages.id IS NULL AND media.id IS NULL
LIMIT 10