DROP SCHEMA IF EXISTS P2_test;
CREATE SCHEMA IF NOT EXISTS P2_test;

DROP TABLE IF EXISTS `Title_CrewMember`;
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

CREATE TABLE `Title_CrewMember` (
  `crewID` INT,
  `titleID` INT,
  `category` VARCHAR(255),
  `nconst` INT,
  `job` VARCHAR(255),
  `characters` VARCHAR(255),
   PRIMARY KEY (`crewID`),
   FOREIGN KEY (`nconst`) REFERENCES `Person_basics`(`nconst`)
);

