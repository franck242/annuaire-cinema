-- MySQL Script generated by MySQL Workbench
-- Wed Dec 18 16:42:15 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`movies` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titles` VARCHAR(45) NOT NULL,
  `synopsis` MEDIUMTEXT NOT NULL,
  `years` INT NOT NULL,
  `pictures` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`gender types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`gender types` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `genders` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`producers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`producers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `producers names` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`movies_has_gender types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`movies_has_gender types` (
  `movies_id` INT NOT NULL,
  `gender types_id` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `gender types_id`),
  INDEX `fk_movies_has_gender types_gender types1_idx` (`gender types_id` ASC),
  INDEX `fk_movies_has_gender types_movies_idx` (`movies_id` ASC),
  CONSTRAINT `fk_movies_has_gender types_movies`
    FOREIGN KEY (`movies_id`)
    REFERENCES `mydb`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_gender types_gender types1`
    FOREIGN KEY (`gender types_id`)
    REFERENCES `mydb`.`gender types` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`movies_has_producers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`movies_has_producers` (
  `movies_id` INT NOT NULL,
  `producers_id` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `producers_id`),
  INDEX `fk_movies_has_producers_producers1_idx` (`producers_id` ASC),
  INDEX `fk_movies_has_producers_movies1_idx` (`movies_id` ASC),
  CONSTRAINT `fk_movies_has_producers_movies1`
    FOREIGN KEY (`movies_id`)
    REFERENCES `mydb`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_producers_producers1`
    FOREIGN KEY (`producers_id`)
    REFERENCES `mydb`.`producers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
