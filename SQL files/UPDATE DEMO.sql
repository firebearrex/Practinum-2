DROP TABLE IF EXISTS `Title_Crew`;
DROP TABLE IF EXISTS `Person_basics`;

CREATE TABLE `Person_basics` (
  `nconst` INT,
  `primaryName` VARCHAR(255),
  `birthYear` INT,
  `deathYear` INT,
  `age` INT,
  `numberOfTitlesParticipated` INT,
  PRIMARY KEY (`nconst`)
);

CREATE TABLE `Title_Crew` (
  `crewID` INT,
  `titleID` INT,
  `category` VARCHAR(255),
  `nconst` INT,
  `job` VARCHAR(255),
  `characters` VARCHAR(255),
   PRIMARY KEY (`crewID`),
   FOREIGN KEY (`nconst`) REFERENCES `Person_basics`(`nconst`)
);

INSERT INTO `Person_basics` (`nconst`,`primaryName`,`birthYear`, `deathYear`) VALUES 
  (0000006,"Ingrid Bergman",1915,1982),
  (0000007,"Humphrey Bogart",1899,1957),
  (0000008,"Marlon Brando",1924,2004),
  (0000009,"Richard Burton",1925,1984),
  (0000010,"James Cagney",1899,1982),
  (0000084,"Li Gong",1965,NULL);
  
  INSERT INTO `Title_Crew` (`crewID`,`titleID`,`category`,`nconst`,`job`,`characters`) VALUES
	(1,0038787,NULL,0000006,NULL,NULL),
	(2,0040897,NULL,0000007,NULL,NULL),
	(3,0068646,NULL,0000008,NULL,NULL),
	(4,0059749,NULL,0000009,NULL,NULL),
	(5,0042041,NULL,0000010,NULL,NULL),
	(6,0101640,NULL,0000084,NULL,NULL);