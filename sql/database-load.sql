USE prmiller_phppostpost;
DROP TABLE IF EXISTS `customer`;

USE prmiller_phppostpost;
CREATE TABLE IF NOT EXISTS `customer` (
  customer_id INT(3) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  origin_planet VARCHAR(20) NOT NULL
);

USE prmiller_phppostpost;
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'William', 'Adama', 'Caprica');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Kara', 'Thrace', 'Picon');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Gaius', 'Baltar', 'Picon');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Karl', 'Agathon', 'Caprica');
INSERT INTO customer ( first_name, last_name, origin_planet ) VALUES( 'Tom', 'Zarek', 'Sagittaron');

