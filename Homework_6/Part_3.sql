/*Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей. */

SELECT SUM(count_likes) AS sum_all_likes FROM (   

SELECT 
   users_id, birthday,
   (SELECT COUNT(*) FROM likes WHERE media_id IN (SELECT id FROM lesson_vk.media WHERE media.users_id = profiles.users_id)) /*Кол-во лайков в медиа*/ + 
   (SELECT COUNT(*) FROM likes WHERE messages_id IN (SELECT id FROM lesson_vk.messages WHERE messages.from_users_id = profiles.users_id)) /*Кол-во лайков в сообщениях*/ + 
   (SELECT COUNT(*) FROM likes WHERE posts_id IN (SELECT id FROM lesson_vk.posts WHERE lesson_vk.posts.users_id = profiles.users_id)) /*Кол-во лайков в постах*/ AS count_likes
   FROM
    profiles
    ORDER BY birthday DESC
    LIMIT 10) table_likes