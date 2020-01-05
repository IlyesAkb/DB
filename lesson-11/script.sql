USE shop;

-- Практическое задание по теме “Оптимизация запросов”

-- задание 1

DROP TABLE IF EXISTS logs;
CREATE TABLE IF NOT EXISTS logs (
	id SERIAL PRIMARY KEY,
    `talbe_name` VARCHAR(255) NOT NULL,
    record_id INT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //
DROP TRIGGER IF EXISTS users_log_record//
CREATE TRIGGER users_log_record AFTER INSERT ON shop.users 
FOR EACH ROW 
BEGIN
	INSERT INTO shop.logs (`talbe_name`, record_id, `name`) VALUES ('users', NEW.id, NEW.name);
END//

DROP TRIGGER IF EXISTS products_log_record//
CREATE TRIGGER products_log_record AFTER INSERT ON shop.products
FOR EACH ROW
BEGIN
	INSERT INTO shop.logs (`talbe_name`, record_id, `name`) VALUES ('products', NEW.id, NEW.name);
END//

DROP TRIGGER IF EXISTS catalogs_log_record//
CREATE TRIGGER catalogs_log_record AFTER INSERT ON shop.catalogs
FOR EACH ROW
BEGIN
	INSERT INTO shop.logs (`talbe_name`, record_id, `name`) VALUES ('catalogs', NEW.id, NEW.name);
END//

DELIMITER ;

INSERT INTO users (name, birthday_at) VALUES ('petya', '1990-10-05'); 
INSERT INTO products (name, description, price, catalog_id) VALUES ('что-то', 'неведомое нечто', 2000, 2);
INSERT INTO catalogs (name) VALUE ('наушники');

TRUNCATE TABLE logs;


