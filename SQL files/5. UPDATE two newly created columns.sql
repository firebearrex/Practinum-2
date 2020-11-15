UPDATE `Person_basics`
SET `age` = IF(`deathYear` IS NOT NULL,
				`deathYear` - `birthYear`,
				YEAR(CURDATE()) - `birthYear`);

UPDATE `Person_basics` AS P
SET `numberOfTitlesParticipated` = (SELECT COUNT(`titleID`)
									FROM `Title_CrewMember` AS T
                                    WHERE T.nconst = P.nconst
									GROUP BY T.nconst
                                    );