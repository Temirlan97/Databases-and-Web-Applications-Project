-- MySQL Script generated by MySQL Workbench
-- Mon Oct 10 21:21:12 2016
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema eventor
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema eventor
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `eventor` DEFAULT CHARACTER SET latin1 ;
USE `eventor` ;

-- -----------------------------------------------------
-- Table `eventor`.`event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`event` (
  `e_id` MEDIUMINT(9) NOT NULL,
  `u_id` MEDIUMINT(9) NOT NULL,
  `l_id` MEDIUMINT(9) NULL DEFAULT NULL,
  `name` VARCHAR(100) NOT NULL,
  `e_time` VARCHAR(100) NOT NULL,
  `discription` CHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`e_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`board_game`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`board_game` (
  `bo_id` MEDIUMINT(9) NOT NULL,
  `game_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`bo_id`),
  CONSTRAINT `bo_id_fk`
    FOREIGN KEY (`bo_id`)
    REFERENCES `eventor`.`event` (`e_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`users` (
  `u_id` MEDIUMINT(9) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `username` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `realname` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`u_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`faculty`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`faculty` (
  `f_id` MEDIUMINT(9) NOT NULL,
  `position` VARCHAR(100) NOT NULL,
  `field` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`f_id`),
  CONSTRAINT `f_id_fk`
    FOREIGN KEY (`f_id`)
    REFERENCES `eventor`.`users` (`u_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`join_event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`join_event` (
  `u_id` MEDIUMINT(9) NOT NULL,
  `e_id` MEDIUMINT(9) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`location` (
  `l_id` MEDIUMINT(9) NOT NULL,
  `e_id` MEDIUMINT(9) NULL DEFAULT NULL,
  PRIMARY KEY (`l_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`movie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`movie` (
  `mo_id` MEDIUMINT(9) NOT NULL,
  `movie_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`mo_id`),
  CONSTRAINT `mo_id_fk`
    FOREIGN KEY (`mo_id`)
    REFERENCES `eventor`.`event` (`e_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`off_campus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`off_campus` (
  `off_id` MEDIUMINT(9) NOT NULL,
  `address` CHAR(40) NOT NULL,
  PRIMARY KEY (`off_id`),
  CONSTRAINT `off_id_fk`
    FOREIGN KEY (`off_id`)
    REFERENCES `eventor`.`location` (`l_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`on_campus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`on_campus` (
  `on_id` MEDIUMINT(9) NOT NULL,
  `max_people` MEDIUMINT(9) NOT NULL,
  `l_name` VARCHAR(100) NOT NULL,
  `location_l_id` MEDIUMINT(9) NOT NULL,
  PRIMARY KEY (`on_id`, `location_l_id`),
  INDEX `fk_on_campus_location1_idx` (`location_l_id` ASC),
  CONSTRAINT `fk_on_campus_location1`
    FOREIGN KEY (`location_l_id`)
    REFERENCES `eventor`.`location` (`l_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`party`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`party` (
  `pa_id` MEDIUMINT(9) NOT NULL,
  `reason` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`pa_id`),
  CONSTRAINT `pa_id_fk`
    FOREIGN KEY (`pa_id`)
    REFERENCES `eventor`.`event` (`e_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`sport`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`sport` (
  `sp_id` MEDIUMINT(9) NOT NULL,
  `game_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`sp_id`),
  CONSTRAINT `sp_id_fk`
    FOREIGN KEY (`sp_id`)
    REFERENCES `eventor`.`event` (`e_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`students` (
  `s_id` MEDIUMINT(9) NOT NULL,
  `major` VARCHAR(100) NOT NULL,
  `class_of` MEDIUMINT(9) NOT NULL,
  `college` VARCHAR(100) NOT NULL,
  `room_no` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`s_id`),
  CONSTRAINT `s_id_fk`
    FOREIGN KEY (`s_id`)
    REFERENCES `eventor`.`users` (`u_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`study`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`study` (
  `st_id` MEDIUMINT(9) NOT NULL,
  `course` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`st_id`),
  CONSTRAINT `st_id_fk`
    FOREIGN KEY (`st_id`)
    REFERENCES `eventor`.`event` (`e_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`take_place_in`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`take_place_in` (
  `p_l_id` MEDIUMINT(9) NOT NULL,
  `p_e_id` MEDIUMINT(9) NOT NULL,
  INDEX `location_id` (`p_l_id` ASC),
  INDEX `event_id` (`p_e_id` ASC),
  CONSTRAINT `event_id`
    FOREIGN KEY (`p_e_id`)
    REFERENCES `eventor`.`event` (`e_id`),
  CONSTRAINT `location_id`
    FOREIGN KEY (`p_l_id`)
    REFERENCES `eventor`.`location` (`l_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eventor`.`travel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventor`.`travel` (
  `tr_id` MEDIUMINT(9) NOT NULL,
  `budget` INT(11) NOT NULL,
  PRIMARY KEY (`tr_id`),
  CONSTRAINT `tr_id_fk`
    FOREIGN KEY (`tr_id`)
    REFERENCES `eventor`.`event` (`e_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
