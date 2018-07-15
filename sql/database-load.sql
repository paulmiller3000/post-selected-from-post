USE prmiller_phppostpost;
DROP TABLE IF EXISTS `customer`;

CREATE TABLE IF NOT EXISTS `customer` (
  customer_id INT(3) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  origin_planet VARCHAR(20) NOT NULL
);

INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Gaius', 'Baltar', 'Aerilon');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Saul', 'Tigh', 'Aerilon');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Sekou', 'Hamilton', 'Aerilon');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Sharon', 'Valerii', 'Aerilon');
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
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Jurgen', 'Belzen', 'Gemenon');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Rya', 'Kibby', 'Gemenon');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Sarah', 'Porter', 'Gemenon');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Ahsa', 'Janik', 'Picon');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Playa', 'Palacios', 'Picon');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Safiya', 'Sanne', 'Picon');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Anastasia', 'Dualla', 'Sagittaron');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Clarice', 'Willow', 'Sagittaron');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Leon', 'Grimes', 'Sagittaron');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Portia', 'King', 'Sagittaron');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Tom', 'Zarek', 'Sagittaron');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Willie', 'King', 'Sagittaron');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Helena', 'Cain', 'Tauron');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Sam', 'Adama', 'Tauron');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Joseph', 'Adama', 'Tauron');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Shannon', 'Adama', 'Tauron');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Tamara', 'Adama', 'Tauron');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Tomas', 'Vergis', 'Tauron');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Marshall', 'Bagot', 'Virgon');