DROP VIEW IF EXISTS actor_actress_info;

CREATE VIEW actor_actress_info AS
		SELECT DISTINCT `primaryName`, `age`, `isDead`, `Number of movies known for`
    FROM `Person_basics` AS P
    INNER JOIN `Title_CrewMember` AS T USING(nconst)
    INNER JOIN (SELECT K.nconst, COUNT(K.`titleID`) AS `Number of movies known for`
								FROM `KnownForTitle` AS K
                GROUP BY K.nconst) AS `CountKnown` USING(nconst)
    WHERE T.category IN ("actor","actress");
    
SELECT * FROM actor_actress_info;