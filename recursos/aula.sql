-- MySQL Script generated by MySQL Workbench
-- 11/18/19 16:33:05
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema aula
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema aula
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `aula` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `aula` ;

-- -----------------------------------------------------
-- Table `aula`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `rol_id` INT NOT NULL COMMENT '',
  `usuario_id` INT NOT NULL COMMENT '',
  `estado` INT NOT NULL COMMENT '',
  PRIMARY KEY (`idusuario`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `aula`.`permiso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `aula`.`permiso` (
  `idint` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `nombre` VARCHAR(90) NOT NULL COMMENT '',
  PRIMARY KEY (`idint`)  COMMENT '',
  CONSTRAINT `idint`
    FOREIGN KEY (`idint`)
    REFERENCES `aula`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
