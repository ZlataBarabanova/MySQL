/*Пусть задан некоторый пользователь.  
Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем. */

SELECT 
   lesson_vk.messages.from_users_id, lesson_vk.messages.to_users_id1, COUNT(*) AS 'count_messages'
FROM
    lesson_vk.messages
    WHERE lesson_vk.messages.to_users_id1 = 80 AND from_users_id IN (
    SELECT IF(lesson_vk.friend_requests.from_users_id = 80, lesson_vk.friend_requests.to_users_id1, lesson_vk.friend_requests.from_users_id) 
    FROM lesson_vk.friend_requests WHERE status = 1 and (lesson_vk.friend_requests.from_users_id = 80 OR lesson_vk.friend_requests.to_users_id1 = 80)
    ) /*Находим друзей данного пользователя*/
       GROUP BY  lesson_vk.messages.to_users_id1, lesson_vk.messages.from_users_id
       ORDER BY COUNT(*) DESC LIMIT 1