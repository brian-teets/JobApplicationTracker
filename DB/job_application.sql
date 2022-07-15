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
  `salary_low` DECIMAL(10,2) NULL,
  `salary_high` DECIMAL(10,2) NULL,
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
INSERT INTO `jobapptrackerdb`.`job_application` (`id`, `job_title`, `company_name`, `link_to_description`, `salary_low`, `salary_high`, `location_work_model`, `contact_at_company`, `contact_notes`, `my_interest_level`, `app_status`, `offer_made`, `date_of_apply`, `date_of_offer`, `follow_up`, `follow_up_date`, `follow_up_note`) VALUES (1, 'Software Engineer', 'Spectrum', 'https://www.linkedin.com/jobs/view/3146217478', 76800.00, 135800, 'Hybrid', NULL, '', 7, 'Applied', false, '2022/07/13', NULL, NULL, NULL, '');
INSERT INTO `jobapptrackerdb`.`job_application` (`id`, `job_title`, `company_name`, `link_to_description`, `salary_low`, `salary_high`, `location_work_model`, `contact_at_company`, `contact_notes`, `my_interest_level`, `app_status`, `offer_made`, `date_of_apply`, `date_of_offer`, `follow_up`, `follow_up_date`, `follow_up_note`) VALUES (2, 'Junior Engineer', 'DISH Network', 'https://www.linkedin.com/jobs/view/3161388088', 57400, 82000, NULL, NULL, NULL, 7, 'Applied', false, '2022/07/14', NULL, NULL, NULL, NULL);
INSERT INTO `jobapptrackerdb`.`job_application` (`id`, `job_title`, `company_name`, `link_to_description`, `salary_low`, `salary_high`, `location_work_model`, `contact_at_company`, `contact_notes`, `my_interest_level`, `app_status`, `offer_made`, `date_of_apply`, `date_of_offer`, `follow_up`, `follow_up_date`, `follow_up_note`) VALUES (3, 'Full-Stack Developer (Python, SQL, HTML, CSS Web Frameworks, Javascript)', 'LUMEN', NULL, NULL, NULL, '100% Remote', NULL, NULL, 6, 'Applied', false, '2022/07/14', NULL, NULL, NULL, 'Recorded video interview questions and game challenges required within 5 days.');
INSERT INTO `jobapptrackerdb`.`job_application` (`id`, `job_title`, `company_name`, `link_to_description`, `salary_low`, `salary_high`, `location_work_model`, `contact_at_company`, `contact_notes`, `my_interest_level`, `app_status`, `offer_made`, `date_of_apply`, `date_of_offer`, `follow_up`, `follow_up_date`, `follow_up_note`) VALUES (4, 'Entry/Jr. Software Developer', 'MAXAR', 'https://maxar.wd1.myworkdayjobs.com/en-US/Maxar/job/Entry-Jr-Software-Developer_R15224', 61000, 129000, NULL, NULL, NULL, 7, 'Applied', false, '2022/07/14', NULL, NULL, NULL, NULL);
INSERT INTO `jobapptrackerdb`.`job_application` (`id`, `job_title`, `company_name`, `link_to_description`, `salary_low`, `salary_high`, `location_work_model`, `contact_at_company`, `contact_notes`, `my_interest_level`, `app_status`, `offer_made`, `date_of_apply`, `date_of_offer`, `follow_up`, `follow_up_date`, `follow_up_note`) VALUES (5, 'Software Engineer - Early Career', 'Lockheed Martin', 'https://sjobs.brassring.com/TGnewUI/Search/home/HomeWithPreLoad?PageType=JobDetails&partnerid=25037&siteid=5010&jobId=679812#jobDetails=679812_5010', 71900, 119800, 'Littleton', NULL, NULL, 8, 'Applied', false, '2022/07/14', NULL, NULL, NULL, NULL);
INSERT INTO `jobapptrackerdb`.`job_application` (`id`, `job_title`, `company_name`, `link_to_description`, `salary_low`, `salary_high`, `location_work_model`, `contact_at_company`, `contact_notes`, `my_interest_level`, `app_status`, `offer_made`, `date_of_apply`, `date_of_offer`, `follow_up`, `follow_up_date`, `follow_up_note`) VALUES (6, 'Early Career Software Engineer - Embedded Systems Tools', 'BLUE ORIGIN', 'https://www.linkedin.com/jobs/view/2975175662', 76000, 114000, 'Denver', NULL, NULL, 7, 'Applied', false, '2022/07/14', NULL, NULL, NULL, NULL);
INSERT INTO `jobapptrackerdb`.`job_application` (`id`, `job_title`, `company_name`, `link_to_description`, `salary_low`, `salary_high`, `location_work_model`, `contact_at_company`, `contact_notes`, `my_interest_level`, `app_status`, `offer_made`, `date_of_apply`, `date_of_offer`, `follow_up`, `follow_up_date`, `follow_up_note`) VALUES (7, 'Associate Application Developer', 'Nextworld', 'https://www.linkedin.com/jobs/view/3152703001', 70000, 75000, 'Greenwood Village', NULL, NULL, 7, 'Applied', false, '2022/07/14', NULL, NULL, NULL, NULL);
INSERT INTO `jobapptrackerdb`.`job_application` (`id`, `job_title`, `company_name`, `link_to_description`, `salary_low`, `salary_high`, `location_work_model`, `contact_at_company`, `contact_notes`, `my_interest_level`, `app_status`, `offer_made`, `date_of_apply`, `date_of_offer`, `follow_up`, `follow_up_date`, `follow_up_note`) VALUES (8, 'Software Engineer (Remote)', 'Home Depot', 'https://www.linkedin.com/jobs/view/3169144246', 79000, 100000, 'Atlanta (Remote)', NULL, NULL, 7, 'Applied', false, '2022/07/14', NULL, NULL, NULL, NULL);

COMMIT;

