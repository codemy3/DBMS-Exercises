-- Display all products from both tables
SELECT * FROM product1
UNION 
SELECT * FROM product2;

-- Display products common in both tables
SELECT * FROM product1
INTERSECT 
SELECT * FROM product2;

-- Display products present in Product1 but not in Product2
SELECT * FROM product1
MINUS 
SELECT * FROM product2;

-- Display product with the highest price
SELECT pname FROM product1 
WHERE price = (SELECT MAX(price) FROM product1);
