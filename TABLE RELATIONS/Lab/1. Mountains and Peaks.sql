CREATE TABLE mountains (
    `id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `name` VARCHAR(50)
);

CREATE TABLE peaks (
    `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50),
    `mountain_id` INT,
    CONSTRAINT `fk_peaks_mountains` FOREIGN KEY (`mountain_id`)
        REFERENCES mountains (`id`)
);