-- MySQL Script generated by MySQL Workbench
-- 11/28/17 15:48:53
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `idCliente` INT NOT NULL,
  `Nome` VARCHAR(45) NULL,
  `Endereço` VARCHAR(45) NULL,
  `CNH` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Telefone` INT NULL,
  `Data_Nascimento` DATE NULL,
  `Login` VARCHAR(45) NULL,
  `Senha` VARCHAR(45) NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Veiculos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Veiculos` (
  `idVeiculos` INT NOT NULL,
  `Categoria` VARCHAR(45) NULL,
  `Valor_Diaria` INT NULL,
  `Ano` DATE NULL,
  `Fabricante` VARCHAR(45) NULL,
  `Placa` VARCHAR(45) NULL,
  `N_Chassi` INT NULL,
  PRIMARY KEY (`idVeiculos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Reservas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Reservas` (
  `idReservas` INT NOT NULL,
  `Cliente_idCliente` INT NOT NULL,
  `Veiculos_idVeiculos` INT NOT NULL,
  `Valor_Aproximado` VARCHAR(45) NULL,
  `Data_de_Locacao` DATE NULL,
  `Data_de_Devolucao` DATE NULL,
  `Seguro` VARCHAR(45) NULL,
  `Acessorio` VARCHAR(45) NULL,
  PRIMARY KEY (`idReservas`),
  INDEX `fk_Reservas_Cliente_idx` (`Cliente_idCliente` ASC),
  INDEX `fk_Reservas_Veiculos1_idx` (`Veiculos_idVeiculos` ASC),
  CONSTRAINT `fk_Reservas_Cliente`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `mydb`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservas_Veiculos1`
    FOREIGN KEY (`Veiculos_idVeiculos`)
    REFERENCES `mydb`.`Veiculos` (`idVeiculos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ADM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ADM` (
  `idADM` INT NULL,
  `Login` VARCHAR(45) NOT NULL,
  `Senha` VARCHAR(45) NULL,
  PRIMARY KEY (`Login`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
