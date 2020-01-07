use youtube;

-- количество лайков и дизлайков видеороликов

SELECT 
	v.id,
	v.name,
	COUNT(likes.id) as likes,
    COUNT(dislikes.id) as dislikes
FROM
	videos v
    LEFT JOIN videos_ratings likes
		ON likes.video_id = v.id AND likes.rating_type = 'l'
	LEFT JOIN videos_ratings dislikes
		ON dislikes.video_id = v.id AND dislikes.rating_type = 'd'
GROUP BY v.id
ORDER BY likes;


-- 10 самых активных молодых ползователей

SELECT 
	users_activity.id,
	users_activity.name,
    profiles.birthday,
    users_activity.total_activity
FROM
(SELECT
	p.user_id as id,
    CONCAT(u.first_name, ' ', u.last_name) as name,
    COUNT(DISTINCT m.id)+
    COUNT(DISTINCT ratings.id)+
    COUNT(DISTINCT views.id)+
    COUNT(DISTINCT comments.id) as total_activity
FROM
	profiles p
    JOIN users u
		ON u.id = p.user_id
    LEFT JOIN media m
		ON m.user_id = p.user_id AND media_type_id = 2
	LEFT JOIN videos_ratings ratings
		ON ratings.user_id = p.user_id
	LEFT JOIN video_views views
		ON views.user_id = p.user_id
	LEFT JOIN video_comments comments
		ON comments.user_id = p.user_id
GROUP BY p.user_id) users_activity
JOIN profiles
	ON users_activity.id = profiles.id
ORDER BY profiles.birthday DESC LIMIT 10;
