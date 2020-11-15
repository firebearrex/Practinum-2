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

CREATE TRIGGER titlesParUpdater
AFTER INSERT ON `Title_CrewMember`
FOR EACH ROW
BEGIN
	UPDATE `Person_basics` AS P
	SET `numberOfTitlesParticipated` = (SELECT COUNT(`titleID`)
										FROM `Title_CrewMember` AS T
										WHERE T.nconst = P.nconst
										GROUP BY T.nconst
										);
END //
DELIMITER ;