CREATE TABLE log` ( 
  `id` VARCHAR(36) NOT NULL DEFAULT 'UUID()' , 
  `source` VARCHAR(200) NOT NULL DEFAULT 'not_given' , 
  `level` VARCHAR(200) NOT NULL DEFAULT 'not_given' , 
  `message` VARCHAR(140) NOT NULL , 
  `message_long` TEXT NOT NULL , 
  `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
  PRIMARY KEY (`id`), 
  INDEX (`source`), 
  INDEX (`level`), 
  FULLTEXT (`message`), 
  FULLTEXT (`message_long`)
  ) 
ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_unicode_ci;