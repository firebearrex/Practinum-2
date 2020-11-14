UPDATE `Person_basics`
SET `age` = IF(`deathYear` IS NOT NULL,
				YEAR(CURDATE()) - `birthYear`,
				`deathYear` - `birthYear`);

UPDATE `Person_basics`
SET `numberOfTitlesParticipated` = (SELECT COUNT(`nconst`)
									FROM `Title_Crew`
									GROUP BY `titleID`);