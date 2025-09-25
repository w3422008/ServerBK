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

--  テーブル hosplistdb.med_ass の構造をダンプしています
DROP TABLE IF EXISTS `med_ass`;
CREATE TABLE IF NOT EXISTS `med_ass` (
  `sec_cd` int NOT NULL,
  `are_cd` int NOT NULL,
  `sec_medarea` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `med_ass` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- テーブル hosplistdb.med_ass: ~24 rows (約) のデータをダンプしています
INSERT INTO `med_ass` (`sec_cd`, `are_cd`, `sec_medarea`, `med_ass`) VALUES
	(1, 1, '県南東部', '岡山市'),
	(2, 1, '県南東部', '西大寺'),
	(3, 1, '県南東部', '玉野市'),
	(4, 1, '県南東部', '御津'),
	(5, 1, '県南東部', '赤磐'),
	(6, 1, '県南東部', '和気'),
	(7, 1, '県南東部', '邑久'),
	(8, 2, '県南西部', '倉敷'),
	(9, 2, '県南西部', '玉島'),
	(10, 2, '県南西部', '児島'),
	(11, 2, '県南西部', '北児島'),
	(12, 2, '県南西部', '井原'),
	(13, 2, '県南西部', '笠岡'),
	(14, 2, '県南西部', '浅口'),
	(15, 2, '県南西部', '都窪'),
	(16, 2, '県南西部', '吉備'),
	(17, 3, '高梁・新見', '高梁'),
	(18, 3, '高梁・新見', '新見'),
	(19, 4, '真庭', '真庭市'),
	(20, 5, '津山・英間', '津山市'),
	(21, 5, '津山・英間', '美作市'),
	(22, 5, '津山・英間', '苫田郡'),
	(23, 5, '津山・英間', '勝田郡'),
	(24, 5, '津山・英間', '久米郡');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
