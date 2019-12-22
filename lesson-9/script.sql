USE shop;

-- Практическое задание по теме “Транзакции, переменные, представления”

-- задание 1

START TRANSACTION;

INSERT INTO sample.users 
SELECT * FROM shop.users WHERE id = 1;

DELETE FROM shop.users WHERE id = 1;

COMMIT;

 -- задание 2

CREATE OR REPLACE VIEW product_category(product, category)
AS SELECT 
		p.name, 
        c.name 
	FROM 
		products p 
		JOIN catalogs c 
	WHERE p.catalog_id = c.id;

SELECT * FROM product_category;

-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"

-- задание 1

DELIMITER //
DROP PROCEDURE IF EXISTS hello;
CREATE PROCEDURE hello()
BEGIN
	DECLARE x INT DEFAULT DATE_FORMAT(CURRENT_TIMESTAMP, "%H");
    IF (x >= 6 AND x < 12) THEN
		SELECT 'доброе утро';
    ELSEIF (x >= 12 AND x < 18) THEN
		SELECT 'добрый день';
	ELSEIF (x >= 18 AND x <= 23) THEN
		SELECT 'добрый вечер';
	ELSEIF (x >= 0 AND x <= 6) THEN
		SELECT 'доброй ночи';
    END IF;
END//
DELIMITER ;

CALL hello();

-- задание 2
DELIMITER //
DROP TRIGGER IF EXISTS chek_name_and_description//
CREATE TRIGGER chek_name_and_description BEFORE INSERT ON shop.products
FOR EACH ROW
BEGIN
	IF (NEW.name IS NULL AND new.description IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NOPE';
    END IF;
	SET NEW.name = COALESCE(NEW.name, 'товар');
	SET NEW.description = COALESCE(NEW.description, 'без описания');
END//
DELIMITER ;

 

    




