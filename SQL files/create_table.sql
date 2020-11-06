DROP TABLE IF EXISTS `Title`;
CREATE TABLE `Title` (
  `titleID` VARCHAR(255),
  `crewID` VARCHAR(255),
  `titleType` TEXT,
  `primaryTitle` TEXT,
  `originalTitle` TEXT,
  `isAdult` Boolean,
  `startYear` YEAR,
  `endYear` YEAR,
  `runtimeMinutes` INT,
  PRIMARY KEY (`titleID`)
);

DROP TABLE IF EXISTS `Genre`;
CREATE TABLE `Genre` (
  `genreID` VARCHAR(255),
  `genre_name` VARCHAR(255),
  PRIMARY KEY (`genreID`)
);

DROP TABLE IF EXISTS `Episode` ;
CREATE TABLE `Episode` (
  `episodeID` VARCHAR(255),
  `parentTconst` VARCHAR(255),
  `seasonNumber` INT,
  `episodeNumber` INT,
  PRIMARY KEY (`episodeID`)
);

DROP TABLE IF EXISTS `Person_basics`;
CREATE TABLE `Person_basics` (
  `nconst` VARCHAR(255),
  `primaryName` VARCHAR(255),
  `birthYear` YEAR,
  `deathYear` YEAR,
  `Age` INT,
  `numberOfTitlesParticipated` INT,
  PRIMARY KEY (`nconst`)
);

DROP TABLE IF EXISTS `Profession`;
CREATE TABLE `Profession` (
  `prefessionID` VARCHAR(255),
  `prefessionName` VARCHAR(255),
  PRIMARY KEY (`prefessionID`)
);

DROP TABLE IF EXISTS `Title_Crew`;
CREATE TABLE `Title_Crew` (
  `crewID` VARCHAR(255),
  `category` VARCHAR(255),
  `nconst` VARCHAR(255),
  `job` VARCHAR(255),
  `characters` VARCHAR(255),
  PRIMARY KEY (`crewID`)
);

DROP TABLE IF EXISTS `Title_type`;
CREATE TABLE `Title_type` (
  `titleID` VARCHAR(255),
  `typeID` VARCHAR(255),
  KEY `PK/FK` (`titleID`, `typeID`)
);

DROP TABLE IF EXISTS `Rating`;
CREATE TABLE `Rating` (
  `titleID` VARCHAR(255),
  `averageRating` INT,
  `numVotes` INT,
  KEY `PK/FK` (`titleID`)
);

DROP TABLE IF EXISTS `KnownForTitle`;
CREATE TABLE `KnownForTitle` (
  `titleID` VARCHAR(255),
  `nconst` VARCHAR(255),
  KEY `PK/FK` (`titleID`, `nconst`)
);

DROP TABLE IF EXISTS `Person_profession`;
CREATE TABLE `Person_profession` (
  `prefessionID` VARCHAR(255),
  `nconst` VARCHAR(255),
  KEY `PK/FK` (`prefessionID`, `nconst`)
);

DROP TABLE IF EXISTS `LocalTitle`;
CREATE TABLE `LocalTitle` (
  `localTitleID` VARCHAR(255),
  `title` VARCHAR(255),
  `region` VARCHAR(255),
  `language` VARCHAR(255),
  `attributes` VARCHAR(255),
  `isOriginalTitle` BOOL,
  KEY `PK/FK` (`localTitleID`)
);

DROP TABLE IF EXISTS `Title_genre`;
CREATE TABLE `Title_genre` (
  `genreID` VARCHAR(255),
  `titleID` VARCHAR(255),
  KEY `PK/FK` (`genreID`, `titleID`)
);

DROP TABLE IF EXISTS `Type`;
CREATE TABLE `Type` (
  `typeID` VARCHAR(255),
  `content` VARCHAR(255),
  PRIMARY KEY (`typeID`)
);

