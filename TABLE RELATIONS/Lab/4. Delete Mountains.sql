CREATE TABLE `mountains` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

CREATE TABLE `peaks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `mountain_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_peaks_mountains` (`mountain_id`),
  CONSTRAINT `fk_peaks_mountains` 
  FOREIGN KEY (`mountain_id`) 
  REFERENCES `mountains` (`id`)
  on delete cascade
) ;