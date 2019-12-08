USE shop;

-- задание 1

SELECT id, name FROM users
WHERE id IN (SELECT user_id FROM orders);
    
-- задание 2

SELECT 
	p.name,
    p.description,
    c.name AS category
FROM
	products p JOIN catalogs c 
ON
	p.catalog_id = c.id;
    
-- задание 3

USE flights_db;

SELECT
	(SELECT name FROM cities WHERE label = 	f.from) AS 'from',
    (SELECT name FROM cities WHERE label = 	f.to) AS 'to'
FROM
	flights f;
    

    
	
    




    













