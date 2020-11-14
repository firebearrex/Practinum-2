UPDATE `Person_basics`
SET 'Age' = IF(`deathYear` IS NOT NULL,
				YEAR(CURDATE()) - `birthYear`,
				`deathYear` - `birthYear`);