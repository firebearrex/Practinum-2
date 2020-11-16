UPDATE Person_basics
SET isDead = IF(deathYear IS NOT NULL,
								TRUE,
                FALSE);

DROP VIEW IF EXISTS actor_actress_info;
CREATE VIEW actor_actress_info AS
		SELECT `primaryName`, `age`, `isDead`
    FROM `Person_basics` AS P
    INNER JOIN `Title_CrewMember` AS T USING(nconst)
    WHERE T.category IN ("actor","actress");
    
SELECT * FROM actor_actress_info;