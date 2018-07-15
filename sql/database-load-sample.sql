USE your_db_name;
DROP TABLE IF EXISTS `customer`;

CREATE TABLE IF NOT EXISTS `customer` (
  customer_id INT(3) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  origin_planet VARCHAR(20) NOT NULL
);

INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Robin', 'Wenutu', 'Canceron');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Amanda', 'Graystone', 'Caprica');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Baxter', 'Sarno', 'Caprica');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Carolanne', 'Adama', 'Caprica');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Daniel', 'Graystone', 'Caprica');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'James', 'McManus', 'Caprica');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Karl', 'Agathon', 'Caprica');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Lacy', 'Rand', 'Caprica');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Laura', 'Roslin', 'Caprica');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Michael', 'Robert', 'Caprica');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'William', 'Adama', 'Caprica');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Zoe', 'Graystone', 'Caprica');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Ahsa', 'Janik', 'Picon');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Playa', 'Palacios', 'Picon');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Safiya', 'Sanne', 'Picon');