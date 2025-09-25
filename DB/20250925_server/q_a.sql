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

--  テーブル hosplistdb.q_a の構造をダンプしています
DROP TABLE IF EXISTS `q_a`;
CREATE TABLE IF NOT EXISTS `q_a` (
  `que_id` int NOT NULL AUTO_INCREMENT COMMENT '管理番号',
  `order_date` date NOT NULL COMMENT '依頼日',
  `r_staff_num` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '依頼者の職員番号',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'お問い合わせ内容',
  `req_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '依頼者から送られてくる画像',
  `advisability` int DEFAULT NULL COMMENT '対応可否',
  `supp_status` int DEFAULT NULL COMMENT '対応状況',
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'お問い合わせに対する回答',
  `ans_image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '回答者からの画像',
  `ans_date` date DEFAULT NULL COMMENT '回答日',
  `a_staff_num` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '回答者の職員番号',
  `supp_date` date DEFAULT NULL COMMENT '対応日',
  `emerg` int DEFAULT NULL COMMENT '緊急',
  `trash_flg` int NOT NULL,
  PRIMARY KEY (`que_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='お問い合わせ画面用DB';

-- テーブル hosplistdb.q_a: ~0 rows (約) のデータをダンプしています
INSERT INTO `q_a` (`que_id`, `order_date`, `r_staff_num`, `content`, `req_image`, `advisability`, `supp_status`, `answer`, `ans_image`, `ans_date`, `a_staff_num`, `supp_date`, `emerg`, `trash_flg`) VALUES
	(27, '2025-07-11', '0', '検索画面に追加が可能かご検討お願いいたします。\r\nがんパスを結んでいる医療機関の検索画面を追加可能でしょうか。\r\n\r\n連携室　和田', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
