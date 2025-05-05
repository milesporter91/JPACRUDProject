-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema fishingdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `fishingdb` ;

-- -----------------------------------------------------
-- Schema fishingdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fishingdb` DEFAULT CHARACTER SET utf8 ;
USE `fishingdb` ;

-- -----------------------------------------------------
-- Table `catch_log`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `catch_log` ;

CREATE TABLE IF NOT EXISTS `catch_log` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fisherman_id` INT NULL DEFAULT NULL,
  `date_caught` DATE NULL DEFAULT NULL,
  `time_caught` TIME NULL DEFAULT NULL,
  `moon_phase` VARCHAR(45) NULL DEFAULT NULL,
  `water_type` VARCHAR(45) NULL DEFAULT NULL,
  `water_temp` DOUBLE NULL DEFAULT NULL,
  `species` VARCHAR(45) NOT NULL DEFAULT 'UNKNOWN',
  `scientific_name` VARCHAR(100) NULL DEFAULT NULL,
  `weight_lbs` DECIMAL(5,2) NULL DEFAULT NULL,
  `length_inches` DECIMAL(5,2) NULL DEFAULT NULL,
  `bait_used` VARCHAR(45) NULL DEFAULT NULL,
  `catch_and_release` TINYINT NOT NULL DEFAULT 1,
  `latitude` DECIMAL(9,6) NULL DEFAULT NULL,
  `longitude` DECIMAL(9,6) NULL DEFAULT NULL,
  `notes` TEXT NULL DEFAULT NULL,
  `image_url` VARCHAR(2000) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS fisherman;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'fisherman' IDENTIFIED BY 'fisherman';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'fisherman';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `catch_log`
-- -----------------------------------------------------
START TRANSACTION;
USE `fishingdb`;
INSERT INTO `catch_log` (`id`, `fisherman_id`, `date_caught`, `time_caught`, `moon_phase`, `water_type`, `water_temp`, `species`, `scientific_name`, `weight_lbs`, `length_inches`, `bait_used`, `catch_and_release`, `latitude`, `longitude`, `notes`, `image_url`) VALUES (1, 1, '2025-05-02', '15:25', 'Full', 'Freshwater', 72.4, 'Largemouth Bass', 'Micropterus nigricans', 3.5, 17.2, 'Spinner', 0, NULL, NULL, 'Caught near submerged logs', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/1351_largemouth_bass_%28Micropterus_salmoides%29_300_dpi.jpg/500px-1351_largemouth_bass_%28Micropterus_salmoides%29_300_dpi.jpg');
INSERT INTO `catch_log` (`id`, `fisherman_id`, `date_caught`, `time_caught`, `moon_phase`, `water_type`, `water_temp`, `species`, `scientific_name`, `weight_lbs`, `length_inches`, `bait_used`, `catch_and_release`, `latitude`, `longitude`, `notes`, `image_url`) VALUES (2, 2, '2025-05-02', '16:00', 'First Quarter', 'Freshwater', 58.9, 'Rainbow Trout', 'Oncorhynchus mykiss', 2.1, 14.3, 'Worm', 1, 39.5501, -105.7821, 'Released after a quick photo', NULL);
INSERT INTO `catch_log` (`id`, `fisherman_id`, `date_caught`, `time_caught`, `moon_phase`, `water_type`, `water_temp`, `species`, `scientific_name`, `weight_lbs`, `length_inches`, `bait_used`, `catch_and_release`, `latitude`, `longitude`, `notes`, `image_url`) VALUES (3, 1, '2025-04-01', '08:00', 'Waning Gibbous', 'Saltwater', 82, 'Redfish', 'Sciaenops ocellatus', 5.7, 22.8, 'Soft plastic shrimp', 0, 29.9511, -90.0715, 'Caught in shallow flats near marsh', NULL);
INSERT INTO `catch_log` (`id`, `fisherman_id`, `date_caught`, `time_caught`, `moon_phase`, `water_type`, `water_temp`, `species`, `scientific_name`, `weight_lbs`, `length_inches`, `bait_used`, `catch_and_release`, `latitude`, `longitude`, `notes`, `image_url`) VALUES (4, 1, '2025-04-15', '11:45', 'New Moon', 'Freshwater', 70.1, 'Smallmouth Bass', 'Micropterus dolomieu', 2.9, 15.7, 'Crank', 1, 41.2033, -77.1945, 'Aggressive strike mid-river', NULL);
INSERT INTO `catch_log` (`id`, `fisherman_id`, `date_caught`, `time_caught`, `moon_phase`, `water_type`, `water_temp`, `species`, `scientific_name`, `weight_lbs`, `length_inches`, `bait_used`, `catch_and_release`, `latitude`, `longitude`, `notes`, `image_url`) VALUES (5, 2, '2025-04-01', '10:15', 'Waxing Crescent', 'Saltwater', 84.6, 'Snook', 'Centropomus undecimalis', 6.2, 26.4, 'Live pilchard', 0, 26.6406, -81.8723, 'Landed under bridge structure', NULL);
INSERT INTO `catch_log` (`id`, `fisherman_id`, `date_caught`, `time_caught`, `moon_phase`, `water_type`, `water_temp`, `species`, `scientific_name`, `weight_lbs`, `length_inches`, `bait_used`, `catch_and_release`, `latitude`, `longitude`, `notes`, `image_url`) VALUES (6, 2, '2025-05-03', '06:00', 'Last Quarter', 'Freshwater', 65.3, 'Bluegill', 'Lepomis macrochirus', 0.9, 8.4, 'Dough ball', 1, 36.1627, -86.7816, 'Caught from dock with kids', NULL);
INSERT INTO `catch_log` (`id`, `fisherman_id`, `date_caught`, `time_caught`, `moon_phase`, `water_type`, `water_temp`, `species`, `scientific_name`, `weight_lbs`, `length_inches`, `bait_used`, `catch_and_release`, `latitude`, `longitude`, `notes`, `image_url`) VALUES (DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL);
INSERT INTO `catch_log` (`id`, `fisherman_id`, `date_caught`, `time_caught`, `moon_phase`, `water_type`, `water_temp`, `species`, `scientific_name`, `weight_lbs`, `length_inches`, `bait_used`, `catch_and_release`, `latitude`, `longitude`, `notes`, `image_url`) VALUES (DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL);
INSERT INTO `catch_log` (`id`, `fisherman_id`, `date_caught`, `time_caught`, `moon_phase`, `water_type`, `water_temp`, `species`, `scientific_name`, `weight_lbs`, `length_inches`, `bait_used`, `catch_and_release`, `latitude`, `longitude`, `notes`, `image_url`) VALUES (DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL);
INSERT INTO `catch_log` (`id`, `fisherman_id`, `date_caught`, `time_caught`, `moon_phase`, `water_type`, `water_temp`, `species`, `scientific_name`, `weight_lbs`, `length_inches`, `bait_used`, `catch_and_release`, `latitude`, `longitude`, `notes`, `image_url`) VALUES (DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL, DEFAULT, NULL, NULL, NULL, NULL);

COMMIT;

