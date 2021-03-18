--person table solution----
-- #1:
CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name TEXT,
  age INTEGER,
  height INTEGER,
  city TEXT,
  favorite_color TEXT
  );

-- #2:
INSERT INTO person
(NAME, AGE, HEIGHT, CITY, FAVORITE_COLOR)
VALUES
('Kaya Han', 25, 153, 'St. George', 'tartan green')

INSERT INTO person
(NAME, AGE, HEIGHT, CITY, FAVORITE_COLOR)
VALUES
('Christopher Han', 24, 170, 'St. George', 'brown')

INSERT INTO person
(NAME, AGE, HEIGHT, CITY, FAVORITE_COLOR)
VALUES
('Chloe Lichtenberg', 23, 180, 'Hailey', 'pink')

INSERT INTO person
(NAME, AGE, HEIGHT, CITY, FAVORITE_COLOR)
VALUES
('Anja Capener', 24, 170, 'Seoul', 'black')

INSERT INTO person
(NAME, AGE, HEIGHT, CITY, FAVORITE_COLOR)
VALUES
('Hyeon-Ju Han', 50, 160, 'Provo', 'yellow')

-- #3:
SELECT * FROM person
ORDER BY height DESC;

-- #4:
SELECT * FROM person
ORDER BY height ASC;

-- #5:
SELECT * FROM person
ORDER BY age DESC;

-- #6:
SELECT * FROM person
WHERE age > 20;

-- #7:
SELECT * FROM person
WHERE age = 18;

-- #8:
SELECT * FROM person
WHERE age <20 OR age >30;

-- #9:
SELECT * FROM person
WHERE age != 27;

-- #10:
SELECT * FROM person
WHERE favorite_color != 'red';

-- #11:
SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

-- #12:
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- #13:
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- #14: 
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');


--orders table solution----
-- #1: 
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name TEXT,
  product_price NUMERIC,
  quantity INTEGER );

-- #2:
INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(12345, 'shirt', 74.99, 1);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(67890, 'pants', 287.99, 2);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(24680, 'hoodie', 97.36, 1);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(12345, 'socks', 16.99, 3);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(67890, 'hoodie', 97.36, 4);

-- #3:
SELECT * FROM orders;

-- #4:
SELECT SUM(quantity) FROM orders;

-- #5:
SELECT SUM(product_price * quantity) FROM orders;

-- #6:
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 67890;


--artist table solution----
-- #1:
INSERT INTO artist
(NAME)
VALUES
('Sigrid');

INSERT INTO artist
(NAME)
VALUES
('Alex G');

INSERT INTO artist
(NAME)
VALUES
('John Mayer');

-- #2:
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

-- #3:
SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

-- #4:
SELECT * FROM artist
WHERE name LIKE ('Black%');

-- #5:
SELECT * FROM artist
WHERE name LIKE ('%Black%');


--employee table solution----
-- #1:
SELECT first_name, last_name FROM employee
WHERE city ILIKE 'Calgary';

-- #2:
SELECT birth_date FROM employee
ORDER BY birth_date DESC
LIMIT 1;

-- #3:
SELECT MIN(birth_date) FROM employee;

-- #4:
-- find nancy
SELECT employee_id FROM employee
WHERE first_name = 'Nancy';
-- find those who report to her
SELECT * FROM employee
WHERE reports_to = 2;

-- #5:
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';


--invoice table solution----
-- #1:
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-- #2:
SELECT MAX(total) FROM invoice;

-- #3:
SELECT MIN(total) FROM invoice;

-- #4:
SELECT  * FROM invoice
WHERE total > 5;

-- #5:
SELECT * FROM invoice
WHERE total < 5;

-- #6:
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- #7:
SELECT AVG(total) FROM invoice;

-- #8:
SELECT SUM(total) FROM invoice;





