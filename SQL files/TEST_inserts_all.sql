INSERT INTO `Person_basics` (`nconst`,`primaryName`,`birthYear`, `deathYear`) VALUES 
  (0000006,"Ingrid Bergman",1915,1982),
  (0000007,"Humphrey Bogart",1899,1957),
  (0000008,"Marlon Brando",1924,2004),
  (0000009,"Richard Burton",1925,1984),
  (0000010,"James Cagney",1899,1982),
  (0000084,"Li Gong",1965,NULL);
  
INSERT INTO `Title_CrewMember` (`crewID`,`titleID`,`category`,`nconst`,`job`,`characters`) VALUES
	(1,0038787,"actress",0000006,NULL,"Alicia Huberman"),
	(2,0040897,"actor",0000007,NULL,"Fred C. Dobbs"),
	(3,0068646,"director",0000008,NULL,"Don Vito Corleone"),
	(4,0059749,"producer",0000009,NULL,"Alec Leamas"),
	(5,0042041,"actor",0000010,NULL,"Cody Jarrett"),
	(6,0101640,"actress",0000084,NULL,"Songlian");
    
INSERT INTO `Title_CrewMember` (`crewID`,`titleID`,`category`,`nconst`,`job`,`characters`) VALUES
	(7,0430357,"actress",0000084,NULL,"Empress Ci Xi");

INSERT INTO `Person_basics` (`nconst`,`primaryName`,`birthYear`, `deathYear`) VALUES 
	(0000093,"Brad Pitt",1963,NULL),
	(0000095,"Woody Allen",1935,NULL),
	(0000122,"Charles Chaplin",1889,1977);

INSERT INTO `Title_CrewMember` (`crewID`,`titleID`,`category`,`nconst`,`job`,`characters`) VALUES
	(8,0356910,"actor",0000093,NULL,"Angela"),
	(9,0097123,"actor",0000095,NULL,"Cliff Stern"),
	(10,0027977,"actor",0000122,NULL,"A Factory Worker"),
	(11,0114746,"actress",0000093,NULL,"Jeffrey Goines"),
	(12,1210166,"producer",0000093,NULL,"James Cole");