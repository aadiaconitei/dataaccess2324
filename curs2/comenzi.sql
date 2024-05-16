CREATE TABLE `magazin`.`produse` (`idprodus` INT UNSIGNED NOT NULL AUTO_INCREMENT , `numeprodus` VARCHAR(350) NOT NULL , `cantitate` INT UNSIGNED NOT NULL , `idfirma` INT UNSIGNED NOT NULL , `firma` VARCHAR(250) NOT NULL , `adresafirma` VARCHAR(500) NOT NULL , `modelp` VARCHAR(500) NOT NULL , `stocp` INT NOT NULL , `pret` DECIMAL(8,2) NOT NULL , `categorie` TINYINT NOT NULL , `descrierep` MEDIUMTEXT NOT NULL , PRIMARY KEY (`idprodus`)) ENGINE = InnoDB;
​
INSERT INTO `produse` (`idprodus`, `numeprodus`, `cantitate`, `idfirma`, `firma`, `adresafirma`, `modelp`, `stocp`, `pret`, `categorie`, `descrierep`) VALUES (NULL, 'TV', '150', '1', 'LG', 'Adresa LG', '123 SMART ', '150', '22.5', '1', 'descriere produs');


CREATE TABLE `facultate2`.`student` (`idstudent` INT UNSIGNED NOT NULL AUTO_INCREMENT , `nume` VARCHAR(200) NOT NULL , `prenume` VARCHAR(200) NOT NULL , `grupa` ENUM('1','2','3','4') NOT NULL , `email` VARCHAR(500) NOT NULL , `data_add` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , `status` SET('admis','respins','neevaluat') NOT NULL DEFAULT 'neevaluat' , PRIMARY KEY (`idstudent`), UNIQUE (`email`)) ENGINE = InnoDB;



SELECT c.id_curs, c.titlu_curs, AVG(n.valoare),p.nume, p.prenume  FROM cursuri AS c 
LEFT JOIN didactic AS d ON  c.id_curs = d.id_curs 
LEFT JOIN profesor AS p  ON p.id = d.id_prof
LEFT JOIN note AS n ON c.id_curs = n.id_curs 
WHERE d.id_prof = 1 GROUP BY n.id_curs;