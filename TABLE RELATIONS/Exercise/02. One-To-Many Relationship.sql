CREATE TABLE manufacturers (
    `manufacturer_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL,
    `established_on` DATE
);

CREATE TABLE models (
    `model_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL,
    `manufacturer_id` INT NOT NULL,
    CONSTRAINT fk_models_manufaturers FOREIGN KEY (manufacturer_id)
        REFERENCES manufacturers (manufacturer_id)
);

insert into manufacturers(`name`, `established_on` )
values ('BMW','1916-03-01'),
('Tesla', '2003-01-01'),
('Lada', '1966-05-01');

insert into models(`model_id`, `name`, `manufacturer_id`)
values
	(101, 'X1', 1),
	(102, 'i6', 1),
	(103, 'Model S', 2),
	(104, 'Model X', 2),
	(105, 'Model 3', 2),
	(106, 'Nova', 3);
    
    