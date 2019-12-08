USE vk;

-- задание 2
    
SELECT 
	id,
	first_name,
    last_name,
    (SELECT COUNT(*) FROM messages WHERE from_user_id = users.id AND to_user_id = 6 ) AS messages_count
FROM
	users
WHERE
	id = (SELECT user_id FROM friendship WHERE friend_id = 6)
OR
    id = (SELECT friend_id FROM friendship WHERE user_id = 6)
ORDER BY 
	(SELECT COUNT(id) count FROM messages WHERE from_user_id = users.id AND to_user_id = 6 ) DESC LIMIT 1;
    
-- задание 3

SELECT 
	SUM(likes) AS likes_count
FROM
	(SELECT
	user_id,
    birthday,
    (SELECT COUNT(*) FROM likes WHERE target_id = profiles.user_id) AS likes
FROM profiles
ORDER BY birthday DESC LIMIT 10) AS summ;
	
-- задание 4

SELECT
	male_likes_count,
    female_likes_count
FROM
	(SELECT COUNT(*) AS male_likes_count
		FROM
			(SELECT user_id
			 FROM profiles
			 WHERE sex = 'm'
			 ORDER BY user_id
			) AS male,
			likes WHERE likes.user_id = male.user_id
	) AS male_likes,
    (SELECT COUNT(*) AS female_likes_count
		FROM
			(SELECT user_id
			 FROM profiles
			 WHERE sex = 'f'
			 ORDER BY user_id
			) AS female,
			likes WHERE likes.user_id = female.user_id
	) AS female_likes;
