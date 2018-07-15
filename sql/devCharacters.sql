USE your_db_name;
DELIMITER $$
DROP PROCEDURE IF EXISTS `devCharacters`$$

CREATE PROCEDURE `devCharacters`(
	IN planet VARCHAR(20))
/* TEST: CALL devCharacters('caprica')  */
BEGIN

SELECT
	customer_id
	, first_name
	, last_name
	, origin_planet	
FROM
	customer
WHERE
	origin_planet IN(LOWER(planet));
END$$
DELIMITER ;