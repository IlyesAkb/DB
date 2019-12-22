use vk;

-- задание 1

CREATE INDEX users_id_idx ON users(id);
CREATE INDEX messages_from_user_id_to_user_id_idx ON messages(from_user_id, to_user_id);
CREATE INDEX media_user_id_media_type_id_idx ON media(user_id, media_type_id);
CREATE INDEX friendship_user_id_status_id_idx ON friendship(user_id, status_id);
CREATE INDEX likes_target_id_idx ON likes(target_id);
CREATE INDEX profiles_sex_idx ON profiles(sex);
CREATE INDEX profiles_hometown_idx ON profiles(hometown);
CREATE INDEX profiles_bithday_idx ON profiles(birthday);
CREATE INDEX users_frist_name_idx ON users(first_name);
CREATE INDEX users_last_name_idx ON users(last_name);

-- задание 2

SELECT DISTINCT communities.name,
	FLOOR(COUNT(profiles.user_id) OVER() / (SELECT COUNT(communities.id) FROM communities)) AS avg,
	MAX(profiles.birthday) OVER comunities_id AS youngest_user,
	MIN(profiles.birthday) OVER comunities_id AS oldest_user,
	COUNT(communities_users.user_id) OVER comunities_id AS amount,
	COUNT(profiles.user_id) OVER() AS total,
	ROUND((COUNT(communities_users.user_id) OVER comunities_id /
		COUNT(profiles.user_id) OVER() * 100), 2) as '%%'
FROM communities  
	JOIN communities_users
		ON communities.id = communities_users.community_id
	JOIN profiles
		ON communities_users.user_id = profiles.user_id
	WINDOW comunities_id AS (PARTITION BY communities.id);
