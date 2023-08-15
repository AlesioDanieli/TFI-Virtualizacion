CREATE DATABASE IF NOT EXISTS tfivirtualizacion_db;

USE tfuvirtualizacion_db;

-- -----------------------------------------------------
-- Table `tfivirtualizacion_db`.`blog`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tfivirtualizacion_db`.`blog` (
  `idblog` INT NOT NULL,
  `descripcion` VARCHAR(1000) NULL,
  `direccionpdf` VARCHAR(1000) NULL,
  PRIMARY KEY (`idblog`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tfivirtualizacion_db`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tfivirtualizacion_db`.`persona` (
  `dni` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `edad` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`dni`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tfivirtualizacion_db`.`estudiante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tfivirtualizacion_db`.`estudiante` (
  `legajo` INT NOT NULL,
  `persona_dni` INT NOT NULL,
  `blog_idblog` INT NOT NULL,
  PRIMARY KEY (`legajo`),
  INDEX `fk_estudiante_persona_idx` (`persona_dni` ASC) VISIBLE,
  INDEX `fk_estudiante_blog1_idx` (`blog_idblog` ASC) VISIBLE,
  CONSTRAINT `fk_estudiante_persona`
    FOREIGN KEY (`persona_dni`)
    REFERENCES `tfivirtualizacion_db`.`persona` (`dni`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudiante_blog1`
    FOREIGN KEY (`blog_idblog`)
    REFERENCES `tfivirtualizacion_db`.`blog` (`idblog`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tfivirtualizacion_db`.`trabajo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tfivirtualizacion_db`.`trabajo` (
  `idtrabajo` INT NOT NULL,
  `nombretrabajo` VARCHAR(45) NULL,
  `descripciontrabajo` VARCHAR(1000) NULL,
  `blog_idblog` INT NOT NULL,
  PRIMARY KEY (`idtrabajo`),
  INDEX `fk_trabajo_blog1_idx` (`blog_idblog` ASC) VISIBLE,
  CONSTRAINT `fk_trabajo_blog1`
    FOREIGN KEY (`blog_idblog`)
    REFERENCES `tfivirtualizacion_db`.`blog` (`idblog`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tfivirtualizacion_db`.`herramientas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tfivirtualizacion_db`.`herramientas` (
  `idherramientas` INT NOT NULL,
  `nombreherramienta` VARCHAR(45) NULL,
  `trabajo_idtrabajo` INT NOT NULL,
  PRIMARY KEY (`idherramientas`),
  INDEX `fk_herramientas_trabajo1_idx` (`trabajo_idtrabajo` ASC) VISIBLE,
  CONSTRAINT `fk_herramientas_trabajo1`
    FOREIGN KEY (`trabajo_idtrabajo`)
    REFERENCES `tfivirtualizacion_db`.`trabajo` (`idtrabajo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;