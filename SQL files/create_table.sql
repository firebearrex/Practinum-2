DROP TABLE IF EXISTS `Title_type`;
DROP TABLE IF EXISTS `Type`;
DROP TABLE IF EXISTS `LocalTitle`;
DROP TABLE IF EXISTS `Rating`;
DROP TABLE IF EXISTS `KnownForTitle`;
DROP TABLE IF EXISTS `Title_genre`;
DROP TABLE IF EXISTS `Title`;
DROP TABLE IF EXISTS `Genre`;
DROP TABLE IF EXISTS `Episode`;
DROP TABLE IF EXISTS `Title_Crew`;
DROP TABLE IF EXISTS `Person_basics`;
DROP TABLE IF EXISTS `Person_profession`;
DROP TABLE IF EXISTS `Profession`;

CREATE TABLE `Title` (
  `titleID` VARCHAR(255),
  `crewID` VARCHAR(255),
  `titleType` ENUM(`movie`, `short`, `tvEpisode`, `tvMiniSeries`, `tvMovie`, `tvShort`, `tvSpecial`, `video`, `videoGame`),
  `primaryTitle` TEXT,
  `originalTitle` TEXT,
  `isAdult` Boolean,
  `startYear` YEAR,
  `endYear` YEAR,
  `runtimeMinutes` INT,
  PRIMARY KEY (`titleID`)
);

CREATE TABLE `Genre` (
  `genreID` VARCHAR(255),
  `genre_name` VARCHAR(255),
  PRIMARY KEY (`genreID`)
);

CREATE TABLE `Episode` (
  `episodeID` VARCHAR(255),
  `titleID` VARCHAR(255),
  `seasonNumber` INT,
  `episodeNumber` INT,
  PRIMARY KEY (`episodeID`),
  FOREIGN KEY (`titleID`) REFERENCES `Title`(`titleID`)
);

######
CREATE TABLE `Person_basics` (
  `nconst` VARCHAR(255),
  `primaryName` VARCHAR(255),
  `birthYear` YEAR,
  `deathYear` YEAR,
  `Age` INT,
  `numberOfTitlesParticipated` INT,
  PRIMARY KEY (`nconst`)
);

CREATE TABLE `Profession` (
  `prefessionID` VARCHAR(255),
  `prefessionName` VARCHAR(255),
  PRIMARY KEY (`prefessionID`)
);

CREATE TABLE `Title_Crew` (
  `crewID` VARCHAR(255),
  `category` VARCHAR(255),
  `nconst` VARCHAR(255),
  `job` VARCHAR(255),
  `characters` VARCHAR(255),
   PRIMARY KEY (`crewID`),
   FOREIGN KEY (`nconst`) REFERENCES `Person_basics`(`nconst`)
);

CREATE TABLE `LocalTitle` (
  `localTitleID` VARCHAR(255),
  `titleID` VARCHAR(255),
  `title` VARCHAR(255),
  `region` VARCHAR(255),
  `language` VARCHAR(255),
  `attributes` VARCHAR(255),
  `isOriginalTitle` BOOL,
  PRIMARY KEY (`localTitleID`),
  FOREIGN KEY (`titleID`) REFERENCES `Title`(`titleID`)
);

CREATE TABLE `Type` (
  `typeID` VARCHAR(255),
  `content` VARCHAR(255),
  PRIMARY KEY (`typeID`)
);

CREATE TABLE `Title_type` (
  `localTitleID` VARCHAR(255),
  `typeID` VARCHAR(255),
  PRIMARY KEY (`localTitleID`, `typeID`),
  FOREIGN KEY (`localTitleID`) REFERENCES `LocalTitle`(`localTitleID`),
  FOREIGN KEY (`typeID`) REFERENCES `Type`(`typeID`)
);

CREATE TABLE `Rating` (
  `titleID` VARCHAR(255),
  `averageRating` INT,
  `numVotes` INT,
  PRIMARY KEY (`titleID`),
  FOREIGN KEY (`titleID`) REFERENCES `Title`(`titleID`)
);

CREATE TABLE `KnownForTitle` (
  `titleID` VARCHAR(255),
  `nconst` VARCHAR(255),
  PRIMARY KEY (`titleID`, `nconst`),
  FOREIGN KEY (`titleID`) REFERENCES `Title`(`titleID`),
  FOREIGN KEY (`nconst`) REFERENCES `Person_basics`(`nconst`)
);

CREATE TABLE `Person_profession` (
  `prefessionID` VARCHAR(255),
  `nconst` VARCHAR(255),
  PRIMARY KEY (`prefessionID`, `nconst`),
  FOREIGN KEY (`prefessionID`) REFERENCES `Profession`(`prefessionID`)
);

CREATE TABLE `Title_genre` (
  `genreID` VARCHAR(255),
  `titleID` VARCHAR(255),
  PRIMARY KEY (`genreID`, `titleID`),
  FOREIGN KEY (`genreID`) REFERENCES `Genre`(genreID),
  FOREIGN KEY (`titleID`) REFERENCES `Title`(titleID)
);

