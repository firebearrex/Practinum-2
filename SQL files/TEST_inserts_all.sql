INSERT INTO `Person_basics` (`nconst`,`primaryName`,`birthYear`, `deathYear`) VALUES 
  (0000006,"Ingrid Bergman",1915,1982),
  (0000007,"Humphrey Bogart",1899,1957),
  (0000008,"Marlon Brando",1924,2004),
  (0000009,"Richard Burton",1925,1984),
  (0000010,"James Cagney",1899,1982),
  (0000084,"Li Gong",1965,NULL);
  
INSERT INTO `Title_CrewMember` (`crewID`,`titleID`,`category`,`nconst`,`job`,`characters`) VALUES
	(1,0038787,NULL,0000006,NULL,NULL),
	(2,0040897,NULL,0000007,NULL,NULL),
	(3,0068646,NULL,0000008,NULL,NULL),
	(4,0059749,NULL,0000009,NULL,NULL),
	(5,0042041,NULL,0000010,NULL,NULL),
	(6,0101640,NULL,0000084,NULL,NULL);
    
INSERT INTO `Title_CrewMember` (`crewID`,`titleID`,`category`,`nconst`,`job`,`characters`) VALUES
	(7,0430357,NULL,0000084,NULL,NULL);

INSERT INTO `Person_basics` (`nconst`,`primaryName`,`birthYear`, `deathYear`) VALUES 
	(0000093,"Brad Pitt",1963,NULL),
	(0000095,"Woody Allen",1935,NULL),
	(0000122,"Charles Chaplin",1889,1977);

INSERT INTO `Title_CrewMember` (`crewID`,`titleID`,`category`,`nconst`,`job`,`characters`) VALUES
	(8,0356910,NULL,0000093,NULL,NULL),
	(9,0097123,NULL,0000095,NULL,NULL),
	(10,0027977,NULL,0000122,NULL,NULL),
	(11,0114746,NULL,0000093,NULL,NULL),
	(12,1210166,NULL,0000093,NULL,NULL);