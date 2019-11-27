USE vk;
SELECT * FROM users LIMIT 10;

UPDATE users SET created_at = updated_at WHERE created_at > updated_at;
UPDATE messages SET 
	from_user_id = FLOOR(1 + (RAND() * 100)),
    to_user_id = FLOOR(1 + (RAND() * 100));
    
SELECT * FROM media_types LIMIT 10;

DELETE FROM media_types;
TRUNCATE media_types;

INSERT INTO media_types (name) VALUES 
	('photo'),
	('audio'),
	('video')
;

SELECT * FROM media LIMIT 10;

UPDATE media SET media_type_id = FLOOR(1 + (RAND() * 3));

UPDATE media SET user_id = FLOOR(1 + (RAND() * 100));
UPDATE media SET metadata = CONCAT('{"', filename, '":"', size, '"}');
ALTER TABLE media MODIFY COLUMN metadata JSON;

SELECT * FROM friendship_statuses;

SELECT MAX(status_id) FROM friendship;

SELECT * FROM communities;

SELECT * FROM communities_users LIMIT 10;

ALTER TABLE profiles MODIFY COLUMN photo_id INT;

CREATE TABLE user_privacy (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL,
    section_id INT UNSIGNED NOT NULL, 
    privacy_id INT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
);

CREATE TABLE section (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO section (`id`, `name`) VALUES (1, 'Кто видит основную информацию моей страницы');
INSERT INTO section (`id`, `name`) VALUES (2, 'Кто видит фотографии на которых меня отметили');
INSERT INTO section (`id`, `name`) VALUES (3, 'Кто видис список моих сохраненных фотографий');
INSERT INTO section (`id`, `name`) VALUES (4, 'Кто видит список моих групп');

CREATE TABLE privacy (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO privacy (`id`, `name`) VALUES (1, 'Все пользователи');
INSERT INTO privacy (`id`, `name`) VALUES (2, 'Только друзья');
INSERT INTO privacy (`id`, `name`) VALUES (3, 'Друзья и друзья друзей');
INSERT INTO privacy (`id`, `name`) VALUES (4, 'Только я');
INSERT INTO privacy (`id`, `name`) VALUES (5, 'Все кроме...');
INSERT INTO privacy (`id`, `name`) VALUES (6, 'Некоторые друзья');

CREATE TABLE privacy_exept_user (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL,
    friend_id INT UNSIGNED NOT NULL,
    privacy_id INT UNSIGNED NOT NULL
);

ALTER TABLE communities ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP AFTER name;
ALTER TABLE communities ADD COLUMN is_closed BOOLEAN AFTER created_at;
ALTER TABLE communities ADD COLUMN closed_at TIMESTAMP AFTER is_closed;

UPDATE communities SET is_closed = TRUE WHERE id IN (3, 7, 33, 56, 72);
UPDATE communities SET closed_at = NOW() WHERE is_closed IS TRUE;

SELECT * FROM communities LIMIT 10;

ALTER TABLE communities_users ADD COLUMN  is_admin BOOLEAN AFTER user_id;
ALTER TABLE communities_users ADD COLUMN is_banned BOOLEAN AFTER is_admin;

SELECT * FROM communities_users;

UPDATE communities_users SET is_admin = TRUE WHERE user_id IN (3, 7, 33, 56, 72);
UPDATE communities_users SET is_banned = TRUE WHERE user_id IN (9, 13, 24, 77, 46);


