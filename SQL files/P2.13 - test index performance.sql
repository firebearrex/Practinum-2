# test the performance before and after creating the index from task 12
INSERT INTO `Person_basics` (`nconst`,`primaryName`,`birthYear`, `deathYear`) VALUES 
	(0000134,"Robert De Niro",1943,NULL);

# create and test more indexes
CREATE INDEX idx_actor_birthYear ON `Person_basics`(`birthYear`);

# INSERT INTO `Person_basics` (`nconst`,`primaryName`,`birthYear`, `deathYear`) VALUES 
# 	(0000134,"Robert De Niro",1943,NULL);

CREATE INDEX idx_actor_deathYear ON `Person_basics`(`deathYear`);

# INSERT INTO `Person_basics` (`nconst`,`primaryName`,`birthYear`, `deathYear`) VALUES 
# 	(0000134,"Robert De Niro",1943,NULL);

CREATE INDEX idx_actor_isDead ON `Person_basics`(`isDead`);

# INSERT INTO `Person_basics` (`nconst`,`primaryName`,`birthYear`, `deathYear`) VALUES 
# 	(0000134,"Robert De Niro",1943,NULL);

CREATE INDEX idx_actor_age ON `Person_basics`(`age`);

# INSERT INTO `Person_basics` (`nconst`,`primaryName`,`birthYear`, `deathYear`) VALUES 
# 	(0000134,"Robert De Niro",1943,NULL);

CREATE INDEX idx_actor_numOfTitles ON `Person_basics`(`numberOfTitlesParticipated`);

# INSERT INTO `Person_basics` (`nconst`,`primaryName`,`birthYear`, `deathYear`) VALUES 
# 	(0000134,"Robert De Niro",1943,NULL);
