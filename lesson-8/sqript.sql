USE vk;

-- задание 1

DESC profiles;

ALTER TABLE profiles DROP FOREIGN KEY profles_user_id_fk;
ALTER TABLE profiles MODIFY COLUMN photo_id INT(10) UNSIGNED;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;
      
DESC communities_users;

ALTER TABLE communities_users
	ADD CONSTRAINT communities_users_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT communities_users_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
            
DESC friendship;
DESC friendship_statuses;

ALTER TABLE friendship 
	ADD CONSTRAINT friendship_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT friendship_friend_id_fk
		FOREIGN KEY (friend_id) REFERENCES users(id),
	ADD CONSTRAINT frienship_status_id_fk
		FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);

DESC likes;
DESC target_types;

ALTER TABLE likes
	ADD CONSTRAINT likes_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT likes_target_id_fk
		FOREIGN KEY (target_id) REFERENCES media(id),
	ADD CONSTRAINT likes_target_type_fk
		FOREIGN KEY (target_type_id) REFERENCES target_types(id);

DESC media;

ALTER TABLE media
	ADD CONSTRAINT media_media_types_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types(id),
	ADD CONSTRAINT media_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id);
        
DESC messages;

ALTER TABLE messages
	ADD CONSTRAINT messages_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id),
	ADD CONSTRAINT messages_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users(id);
        
DESC privacy;
DESC privacy_exept_user;

ALTER TABLE privacy_exept_user
	ADD CONSTRAINT privacy_exept_user_user_id
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT privacy_exept_user_friend_id
		FOREIGN KEY (friend_id) REFERENCES users(id),
	ADD CONSTRAINT privacy_exept_user_privacy_id
		FOREIGN KEY (privacy_id) REFERENCES privacy(id);
        
DESC profiles;

ALTER TABLE profiles
	ADD CONSTRAINT profiles_user_id
		FOREIGN KEY (user_id) REFERENCES users(id);
        
DESC section;
DESC user_privacy;

ALTER TABLE user_privacy
	ADD CONSTRAINT user_privacy_user_id
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT user_privacy_section_id
		FOREIGN KEY (section_id) REFERENCES section(id),
	ADD CONSTRAINT user_privacy_privacy_id
		FOREIGN KEY (privacy_id) REFERENCES privacy(id);
        
-- задание 3

-- 3.1
    
SELECT 
	CONCAT(u.first_name, ' ', u.last_name) AS name,
    COUNT(to_user_id) AS messages_count
FROM
	messages m
    JOIN users u
    JOIN friendship f
		ON (f.user_id = m.to_user_id AND f.friend_id = u.id) 
			OR (f.friend_id = m.to_user_id AND f.user_id = u.id)
WHERE to_user_id = 6 AND from_user_id = u.id
GROUP BY name
ORDER BY messages_count DESC LIMIT 1;
    

-- 3.2

SELECT * FROM target_types;
DESC profiles;
DESC likes;

SELECT SUM(likes) as likes_count
FROM
	(SELECT 
		p.user_id,
		COUNT(l.id) as likes
	FROM
		profiles p
		JOIN likes l
			ON l.target_id = p.user_id AND l.target_type_id = 2
	WHERE l.target_id = p.user_id AND l.target_type_id = 2
	GROUP BY user_id
	ORDER BY birthday DESC LIMIT 10) AS likes;
    
-- 3.3


SELECT
	male_likes_count,
    female_likes_count
FROM
	(SELECT COUNT(*) AS male_likes_count
		FROM
			profiles p
			JOIN likes l
				ON l.user_id = p.user_id AND p.sex = 'm'
	) AS male_likes,
    (SELECT COUNT(*) AS female_likes_count
		FROM 
			profiles p
			JOIN likes l
				ON l.user_id = p.user_id AND p.sex = 'f'
	) AS female_likes;
    
-- 3.4
    
SELECT
CONCAT(first_name, ' ', last_name) AS user,
COUNT(likes.user_id)+ 
COUNT(media.user_id)+
COUNT(messages.from_user_id) 
AS overall_activity
FROM
	users
    JOIN likes
		ON likes.user_id = users.id
	JOIN media
		ON media.user_id = users.id
	JOIN messages
		ON messages.from_user_id = users.id
GROUP BY user
ORDER BY overall_activity DESC
  LIMIT 10;
  
