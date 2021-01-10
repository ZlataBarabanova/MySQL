SELECT 
  AVG(timestampdiff(year, birthday_at, NOW()))as average_age
FROM
    shop_teach.users;