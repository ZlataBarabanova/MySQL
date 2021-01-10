/*Определить кто больше поставил лайков (всего) - мужчины или женщины? */
SELECT 
   --  *, 
    (SELECT gender FROM lesson_vk.profiles WHERE lesson_vk.likes.users_id = lesson_vk.profiles.users_id)as 'gender',
   COUNT((SELECT gender FROM lesson_vk.profiles WHERE lesson_vk.likes.users_id = lesson_vk.profiles.users_id)) as 'count'
FROM
    lesson_vk.likes
    GROUP BY (SELECT gender FROM lesson_vk.profiles WHERE lesson_vk.likes.users_id = lesson_vk.profiles.users_id)