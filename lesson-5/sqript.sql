USE shop;

-- задание 1

UPDATE users SET created_at = NOW(), updated_at = NOW();

-- задание 2
ALTER TABLE users MODIFY COLUMN created_at VARCHAR(255);
ALTER TABLE users MODIFY COLUMN updated_at VARCHAR(255);


CREATE TABLE new_users(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
birthday_at DATE,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO new_users (name, birthday_at, created_at, updated_at)
SELECT name, birthday_at, created_at, updated_at 
FROM users;

DROP TABLE users;

RENAME TABLE new_users TO users;

-- задание 3

SELECT * FROM storehouses_products ORDER BY value > 0 DESC, value ASC;

-- задание 4

SELECT name, DATE_FORMAT(birthday_at, "%M") AS birth_mouth 
FROM users 
WHERE DATE_FORMAT(birthday_at, "%M") = 'may' 
OR DATE_FORMAT(birthday_at, "%M") = 'august';

-- задание 5

SELECT * FROM catalogs WHERE id IN(5, 1, 2) ORDER BY id < 5, id ASC;

-- агрегация данных 

-- задание 1

SELECT FLOOR(AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW()))) AS age_avg FROM users;

-- задание 2

SELECT 
GROUP_CONCAT(name SEPARATOR ',') AS names,
DAYOFWEEK(CONCAT_WS('-', DATE_FORMAT(birthday_at, '%d-%m'),
DATE_FORMAT(NOW(), '%y'))) AS day_of_week,
COUNT(DAYOFWEEK(CONCAT_WS('-', DATE_FORMAT(birthday_at, '%d-%m'),
DATE_FORMAT(NOW(), '%y')))) AS count 
FROM users 
GROUP BY day_of_week;

