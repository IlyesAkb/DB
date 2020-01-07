-- База данных сервиса для простомотра видео. Хранит информацию о пользователях, подписках и видео.  

CREATE DATABASE youtube;
USE youtube;

-- СОЗДАНИЕ ТАБЛИЦ

-- таблица с пользователями.
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
	id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
	first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(120),
    phone VARCHAR(120),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
		ON UPDATE NOW()
);

-- Таблица профилей. Содержит более подробную информацию о пользователях.
CREATE TABLE IF NOT EXISTS profiles (
	id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    sex char(1) NOT NULL,
    birhtday DATE,
    hometown VARCHAR(100),
    image_id INT UNSIGNED 
		DEFAULT NULL,
    CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	CONSTRAINT profiles_image_id_fk
		FOREIGN KEY (image_id) REFERENCES media(id)
			ON DELETE SET NULL
);

-- таблица с пользователями и их пописчиками.

DROP TABLE IF EXISTS subscriptions;
CREATE TABLE IF NOT EXISTS subscriptions (
	id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    subscriber_id INT UNSIGNED NOT NULL,
    CONSTRAINT subscriptions_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	CONSTRAINT subscriptions_subscriber_id_fk
		FOREIGN KEY (subscriber_id) REFERENCES users(id)
			ON DELETE CASCADE
);

-- таблица хрянящая основную информацию информацию о видео. 

CREATE TABLE IF NOT EXISTS videos (
	id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
    media_id INT UNSIGNED NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    category_id INT UNSIGNED NOT NULL,
    preview_image_id INT UNSIGNED NOT NULL,
    CONSTRAINT videos_preview_image_id_fk
		FOREIGN KEY (preview_image_id) REFERENCES media(id),
	CONSTRAINT videos_media_id_fk
		FOREIGN KEY (media_id) REFERENCES media(id),
	CONSTRAINT videos_category_id_fk
		FOREIGN KEY (category_id) REFERENCES videos_categories(id)
);

-- категории видео

CREATE TABLE IF NOT EXISTS videos_categories (
	id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(255)
);

-- просмотры видео

CREATE TABLE IF NOT EXISTS video_views (
	id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
    user_id INT UNSIGNED,
    sessionID VARCHAR(255) NOT NULL,
    video_id INT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT video_views_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	CONSTRAINT videos_views_video_id_fk
		FOREIGN KEY (video_id) REFERENCES videos(id)
			ON DELETE CASCADE
);

-- оценки видео(лайки/дизлайки)

CREATE TABLE IF NOT EXISTS videos_ratings (
	id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    video_id INT UNSIGNED NOT NULL,
    rating_type CHAR(1),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT videos_ratings_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	CONSTRAINT videos_ratings_video_id_fk
		FOREIGN KEY (video_id) REFERENCES videos(id)
			ON DELETE CASCADE
);

-- комментарии к видео

CREATE TABLE video_comments (
	id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    video_id INT UNSIGNED NOT NULL,
    body TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updadet_at DATETIME DEFAULT CURRENT_TIMESTAMP
		ON UPDATE NOW(),
	CONSTRAINT video_comments_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	CONSTRAINT video_comments_video_id_fk
		FOREIGN KEY (video_id) REFERENCES videos(id)
			ON DELETE CASCADE
);

-- Таблица медиа. Сначала делать ее не планировалось. Но ведь на том же youtube есть посты, музыка, сториз. Получается, если все это в будущем
-- будет реализовываться, будет много таблиц у которых будут одинаковые поля.
-- По этому я подумал, что будет правильно создать таблицу, включающую в себя основную информацию о медиа файле. 

DROP TABLE IF EXISTS media;
CREATE TABLE IF NOT EXISTS media (
	id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    media_type_id INT UNSIGNED NOT NULL,
    file_name VARCHAR(255) NOT NULL,
    size INT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
		ON UPDATE NOW(),
	CONSTRAINT media_user_id_fk 
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	CONSTRAINT media_media_type_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);

-- Тыпы медиа файлов

CREATE TABLE IF NOT EXISTS media_types (
	id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(255)
);

-- ИНДЕКСЫ 

CREATE INDEX users_id_idx ON users(id);
CREATE INDEX users_first_name_last_name_idx ON users (first_name, last_name);
CREATE INDEX profiles_id_idx ON profiles(id);
CREATE INDEX profiles_user_id_idx ON profiles(user_id);
CREATE INDEX profiles_image_id_idx ON profiles(image_id);
CREATE INDEX subscriptions_user_id_idx ON subscriptions(user_id);
CREATE INDEX subscriptions_subscriber_id_idx ON subscriptions(subscriber_id);
CREATE INDEX videos_video_info_idx ON videos(id, media_id, name, category_id, preview_image_id);
CREATE INDEX video_views_id_idx ON video_views(id);
CREATE INDEX video_views_video_id_idx ON video_views(video_id);
CREATE INDEX videos_ratings_video_id ON videos_ratings(video_id);
CREATE INDEX videos_ratings_rating_type ON videos_ratings(rating_type);
CREATE INDEX viedo_comments_video_id_idx ON video_comments(video_id);
CREATE INDEX video_comments_user_id_idx ON video_comments(user_id);
CREATE INDEX media_id_idx ON media(id);
CREATE INDEX media_file_name_idx ON media(file_name);

-- ТРИГГЕРЫ

DELIMITER //

-- Проверяем, что бы поле email или поле phone было заполнено

DROP TRIGGER IF EXISTS check_email_and_tel_on_insert//
CREATE TRIGGER check_email_and_tel_on_insert BEFORE INSERT ON youtube.users
FOR EACH ROW
BEGIN
	IF (NEW.email IS NULL AND NEW.phone IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'email or phone is not exisits';
	END IF;
END//

DROP TRIGGER IF EXISTS check_email_and_tel_on_update//
CREATE TRIGGER check_email_and_tel_on_update BEFORE UPDATE ON youtube.users
FOR EACH ROW
BEGIN
	IF (NEW.email IS NULL AND NEW.phone IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'email or phone is not exisits';
	END IF;
END//


DELIMITER ;

-- ПРЕДСТАВЛЕНИЯ 

USE youtube;

-- видео пользователей

CREATE OR REPLACE VIEW users_videos (user_id, user_name, video_id, video_name) AS
SELECT
	u.id,
    CONCAT(u.first_name, ' ', u.last_name),
    v.id,
    v.name 
FROM
	users u
    JOIN media m
    JOIN videos v
WHERE 
	u.id = m.user_id AND v.media_id = m.id
ORDER BY u.id;
SELECT * FROM users_videos;

-- статистика видео

CREATE OR REPLACE VIEW video_statistics (video_id, video_name, views_count, ratings_count, comments_count) AS
SELECT
	v.id,
    v.name,
    COUNT(DISTINCT vv.id),
    COUNT(DISTINCT vr.id),
    COUNT(DISTINCT vc.id)
FROM
	videos v
    LEFT JOIN videos_ratings vr
		ON vr.video_id = v.id
	LEFT JOIN video_views vv
		ON vv.video_id = v.id
	LEFT JOIN video_comments vc
		ON vc.video_id = v.id
GROUP BY 
	v.id;
    
SELECT * FROM video_statistics;