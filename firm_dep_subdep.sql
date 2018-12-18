-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.13 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table firm_dep_subdep.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `firm_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_departments_firms` (`firm_id`),
  CONSTRAINT `FK_departments_firms` FOREIGN KEY (`firm_id`) REFERENCES `firms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table firm_dep_subdep.departments: ~6 rows (approximately)
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` (`id`, `name`, `firm_id`) VALUES
	(1, 'Asdf\r\n', 1),
	(2, 'SDF', 1),
	(3, 'DFGDF', 3),
	(4, 'WERWER', 2),
	(5, 'DFfgfh', 2),
	(6, 'XCVXCv', 3);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Dumping structure for table firm_dep_subdep.firms
CREATE TABLE IF NOT EXISTS `firms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table firm_dep_subdep.firms: ~3 rows (approximately)
/*!40000 ALTER TABLE `firms` DISABLE KEYS */;
INSERT INTO `firms` (`id`, `name`) VALUES
	(1, 'A'),
	(2, 'B'),
	(3, 'C');
/*!40000 ALTER TABLE `firms` ENABLE KEYS */;

-- Dumping structure for table firm_dep_subdep.subdepartments
CREATE TABLE IF NOT EXISTS `subdepartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `dep_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_subdepartments_departments` (`dep_id`),
  CONSTRAINT `FK_subdepartments_departments` FOREIGN KEY (`dep_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table firm_dep_subdep.subdepartments: ~3 rows (approximately)
/*!40000 ALTER TABLE `subdepartments` DISABLE KEYS */;
INSERT INTO `subdepartments` (`id`, `name`, `dep_id`) VALUES
	(3, '1q', 1),
	(5, '2dfgd', 5),
	(7, '0Fhjkjh', 2);
/*!40000 ALTER TABLE `subdepartments` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
