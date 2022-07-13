-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema jobapptrackerdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `jobapptrackerdb` ;

-- -----------------------------------------------------
-- Schema jobapptrackerdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `jobapptrackerdb` DEFAULT CHARACTER SET utf8 ;
USE `jobapptrackerdb` ;

-- -----------------------------------------------------
-- Table `jobapptrackerdb`.`job_application`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jobapptrackerdb`.`job_application` ;

CREATE TABLE IF NOT EXISTS `jobapptrackerdb`.`job_application` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `job_title` VARCHAR(200) NOT NULL,
  `company_name` VARCHAR(500) NOT NULL,
  `link_to_description` TEXT NULL,
  `posted_salary` DECIMAL(10,2) NULL,
  `location_work_model` VARCHAR(45) NULL,
  `contact_at_company` VARCHAR(100) NULL,
  `contact_notes` TEXT NULL,
  `my_interest_level` INT NULL COMMENT 'My interest level in the job posting from 1 to 10.',
  `app_status` VARCHAR(45) NULL,
  `offer_made` TINYINT NULL COMMENT 'Offer made? True or False',
  `date_of_apply` DATE NULL,
  `date_of_offer` DATE NULL,
  `follow_up` TINYINT NULL COMMENT 'Have I followed up? True or False',
  `follow_up_date` DATE NULL,
  `follow_up_note` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS user;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'user' IDENTIFIED BY 'dbuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE `jobapptrackerdb`.* TO 'user';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `jobapptrackerdb`.`job_application`
-- -----------------------------------------------------
START TRANSACTION;
USE `jobapptrackerdb`;
INSERT INTO `jobapptrackerdb`.`job_application` (`id`, `job_title`, `company_name`, `link_to_description`, `posted_salary`, `location_work_model`, `contact_at_company`, `contact_notes`, `my_interest_level`, `app_status`, `offer_made`, `date_of_apply`, `date_of_offer`, `follow_up`, `follow_up_date`, `follow_up_note`) VALUES (1, 'Software Engineer', 'Spectrum', 'https://www.linkedin.com/jobs/view/3146217478', 76800.00, 'Hybrid', NULL, '', 7, 'Applied', False, NULL, NULL, NULL, NULL, '2022/07/13');

COMMIT;

