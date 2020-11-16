SELECT `primaryName`
FROM `Person_basics`
WHERE `primaryName` = "Li Gong";

# DROP INDEX idx_actor_names ON `Person_basics`;
CREATE INDEX idx_actor_names ON `Person_basics`(`primaryName`);

SELECT `primaryName`
FROM `Person_basics`
WHERE `primaryName` = "Li Gong";