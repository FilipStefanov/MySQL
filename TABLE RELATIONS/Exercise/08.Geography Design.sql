CREATE TABLE `continents` (
  `continent_code` char(2) NOT NULL,
  `continent_name` varchar(50) NOT NULL,
  PRIMARY KEY (`continent_code`),
  UNIQUE KEY `PK_Continents` (`continent_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `countries` (
  `country_code` char(2) NOT NULL,
  `iso_code` char(3) NOT NULL,
  `country_name` varchar(45) NOT NULL,
  `currency_code` char(3) DEFAULT NULL,
  `continent_code` char(2) NOT NULL,
  `population` int NOT NULL,
  `are_in_sq_km` int NOT NULL,
  `capital` varchar(30) NOT NULL,
  PRIMARY KEY (`country_code`),
  UNIQUE KEY `PK_Countries` (`country_code`),
  KEY `fk_countries_currencies` (`currency_code`),
  KEY `fk_countries_continents` (`continent_code`),
  CONSTRAINT `fk_countries_continents` FOREIGN KEY (`continent_code`) REFERENCES `continents` (`continent_code`),
  CONSTRAINT `fk_countries_currencies` FOREIGN KEY (`currency_code`) REFERENCES `currencies` (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `countries_rivers` (
  `river_id` int NOT NULL,
  `country_code` char(2) NOT NULL,
  PRIMARY KEY (`river_id`,`country_code`),
  UNIQUE KEY `PK_CountriesRivers` (`country_code`,`river_id`),
  CONSTRAINT `fk_countries_rivers_countries` FOREIGN KEY (`country_code`) REFERENCES `countries` (`country_code`),
  CONSTRAINT `fk_countries_rivers_rivers` FOREIGN KEY (`river_id`) REFERENCES `rivers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `currencies` (
  `currency_code` char(3) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`currency_code`),
  UNIQUE KEY `PK_Currencies` (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `mountains` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mountain_range` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK_Mountains` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

CREATE TABLE `mountains_countries` (
  `mountain_id` int NOT NULL,
  `country_code` char(2) NOT NULL,
  PRIMARY KEY (`mountain_id`,`country_code`),
  UNIQUE KEY `PK_MountainsContinents` (`mountain_id`,`country_code`),
  KEY `fk_mountains_countries_mountains` (`country_code`),
  CONSTRAINT `fk_mountains_countries_countries` FOREIGN KEY (`mountain_id`) REFERENCES `mountains` (`id`),
  CONSTRAINT `fk_mountains_countries_mountains` FOREIGN KEY (`country_code`) REFERENCES `countries` (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `peaks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `peak_name` varchar(50) NOT NULL,
  `elevation` int NOT NULL,
  `mountain_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK_Peaks` (`id`),
  KEY `fk_peaks_mountains` (`mountain_id`),
  CONSTRAINT `fk_peaks_mountains` FOREIGN KEY (`mountain_id`) REFERENCES `mountains` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

CREATE TABLE `rivers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `river_name` varchar(50) NOT NULL,
  `length` int NOT NULL,
  `drainage_area` int NOT NULL,
  `average_discharge` int NOT NULL,
  `outflow` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `PK_Rivers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
