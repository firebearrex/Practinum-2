DROP TRIGGER IF EXISTS ageUpdater;

DELIMITER //
CREATE TRIGGER ageUpdater
BEFORE INSERT ON `Person_basics`
FOR EACH ROW
BEGIN
	# UPDATE `Person_basics`
	SET NEW.`age` = IF(NEW.`deathYear` IS NOT NULL,
					NEW.`deathYear` - NEW.`birthYear`,
					YEAR(CURDATE()) - NEW.`birthYear`);
END //
DELIMITER ;