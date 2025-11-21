-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.44 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             12.11.0.7065
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for wilayah_db
CREATE DATABASE IF NOT EXISTS `wilayah_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `wilayah_db`;

-- Dumping structure for table wilayah_db.desa
CREATE TABLE IF NOT EXISTS `desa` (
  `id` text COLLATE utf8mb4_bin,
  `parent_id` text COLLATE utf8mb4_bin,
  `nama_wilayah` text COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.

-- Dumping structure for table wilayah_db.kabupaten
CREATE TABLE IF NOT EXISTS `kabupaten` (
  `id` text COLLATE utf8mb4_bin,
  `parent_id` text COLLATE utf8mb4_bin,
  `nama_wilayah` text COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.

-- Dumping structure for table wilayah_db.kecamatan
CREATE TABLE IF NOT EXISTS `kecamatan` (
  `id` text COLLATE utf8mb4_bin,
  `parent_id` text COLLATE utf8mb4_bin,
  `nama_wilayah` text COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.

-- Dumping structure for table wilayah_db.provinsi
CREATE TABLE IF NOT EXISTS `provinsi` (
  `id` text COLLATE utf8mb4_bin,
  `nama_wilayah` text COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
