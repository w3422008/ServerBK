-- --------------------------------------------------------
-- ホスト:                          hosplist.kawasaki-m.ac.jp
-- サーバーのバージョン:                   8.0.41 - Source distribution
-- サーバー OS:                      Linux
-- HeidiSQL バージョン:               12.11.0.7065
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--  テーブル hosplistdb.maintenance_start の構造をダンプしています
DROP TABLE IF EXISTS `maintenance_start`;
CREATE TABLE IF NOT EXISTS `maintenance_start` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `comment` text,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `comment2` text,
  `view` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- テーブル hosplistdb.maintenance_start: ~0 rows (約) のデータをダンプしています
INSERT INTO `maintenance_start` (`id`, `title`, `comment`, `date`, `start_time`, `end_time`, `comment2`, `view`) VALUES
	(1, 'ただいまメンテナンス中です', '只今、サーバーメンテナンス実施に伴うサービスの一時的な運用停止中につき、アクセスすることができません。\n何卒ご了承下さいますようお願い申し上げます。\nメンテナンスの詳細につきましては、以下の通りとなります', '2025-09-08', '11:45:00', '12:30:00', '', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
