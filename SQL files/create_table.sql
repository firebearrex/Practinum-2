DROP TABLE IF EXISTS `Title_type`;
DROP TABLE IF EXISTS `Type`;
DROP TABLE IF EXISTS `LocalTitle`;
DROP TABLE IF EXISTS `Rating`;
DROP TABLE IF EXISTS `KnownForTitle`;
DROP TABLE IF EXISTS `Title_genre`;
DROP TABLE IF EXISTS `Episode`;
DROP TABLE IF EXISTS `Title_CrewMember`;
DROP TABLE IF EXISTS `Title`;
DROP TABLE IF EXISTS `Genre`;
DROP TABLE IF EXISTS `Person_basics`;
DROP TABLE IF EXISTS `Person_profession`;
DROP TABLE IF EXISTS `Profession`;

CREATE TABLE `Title` (
  `titleID` INT,
  `titleType` ENUM ('movie', 'short', 'tvEpisode', 'tvMiniSeries', 'tvMovie', 'tvShort', 'tvSpecial', 'video', 'videoGame', 'tvSeries'),
  `primaryTitle` TEXT,
  `originalTitle` TEXT,
  `isAdult` Boolean,
  `startYear` varchar(255),
  `endYear` varchar(255),
  `runtimeMinutes` varchar(255),
  PRIMARY KEY (`titleID`)
);

CREATE TABLE `Genre` (
  `genreID` INT,
  `genre_name` VARCHAR(255),
  PRIMARY KEY (`genreID`)
);

CREATE TABLE `Episode` (
  `episodeID` INT,
  `titleID` INT,
  `seasonNumber` INT,
  `episodeNumber` INT,
  PRIMARY KEY (`episodeID`),
  FOREIGN KEY (`titleID`) REFERENCES `Title`(`titleID`)
);

######
CREATE TABLE `Person_basics` (
  `nconst` INT,
  `primaryName` VARCHAR(255),
  `birthYear` INT,
  `deathYear` INT,
  `age` INT,
  `numberOfTitlesParticipated` INT,
  PRIMARY KEY (`nconst`)
);

CREATE TABLE `Profession` (
  `professionID` INT,
  `professionName` VARCHAR(255),
  PRIMARY KEY (`professionID`)
);

CREATE TABLE `Title_CrewMember` (
  `crewMemberID` INT,
  `titleID` INT,
  `category` VARCHAR(255),
  `nconst` INT,
  `job` VARCHAR(255),
  `characters` VARCHAR(255),
   PRIMARY KEY (`crewMemberID`),
   FOREIGN KEY (`titleID`) REFERENCES `Title`(`titleID`),
   FOREIGN KEY (`nconst`) REFERENCES `Person_basics`(`nconst`)
);

CREATE TABLE `LocalTitle` (
  `localTitleID` INT,
  `titleID` INT,
  `title` VARCHAR(255),
  `region` VARCHAR(255),
  `language` VARCHAR(255),
  `attributes` VARCHAR(255),
  `isOriginalTitle` BOOL,
  PRIMARY KEY (`localTitleID`),
  FOREIGN KEY (`titleID`) REFERENCES `Title`(`titleID`)
);

CREATE TABLE `Type` (
  `typeID` INT,
  `content` VARCHAR(255),
  PRIMARY KEY (`typeID`)
);

CREATE TABLE `Title_type` (
  `localTitleID` INT,
  `typeID` INT,
  PRIMARY KEY (`localTitleID`, `typeID`),
  FOREIGN KEY (`localTitleID`) REFERENCES `LocalTitle`(`localTitleID`),
  FOREIGN KEY (`typeID`) REFERENCES `Type`(`typeID`)
);

CREATE TABLE `Rating` (
  `titleID` INT,
  `averageRating` INT,
  `numVotes` INT,
  PRIMARY KEY (`titleID`),
  FOREIGN KEY (`titleID`) REFERENCES `Title`(`titleID`)
);

CREATE TABLE `KnownForTitle` (
  `titleID` INT,
  `nconst` INT,
  PRIMARY KEY (`titleID`, `nconst`),
  FOREIGN KEY (`titleID`) REFERENCES `Title`(`titleID`),
  FOREIGN KEY (`nconst`) REFERENCES `Person_basics`(`nconst`)
);

CREATE TABLE `Person_profession` (
  `professionID` INT,
  `nconst` INT,
  PRIMARY KEY (`professionID`, `nconst`),
  FOREIGN KEY (`professionID`) REFERENCES `Profession`(`professionID`)
);

CREATE TABLE `Title_genre` (
  `genreID` INT,
  `titleID` INT,
  PRIMARY KEY (`genreID`, `titleID`),
  FOREIGN KEY (`genreID`) REFERENCES `Genre`(genreID),
  FOREIGN KEY (`titleID`) REFERENCES `Title`(titleID)
);

