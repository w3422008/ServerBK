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

--  テーブル hosplistdb.department の構造をダンプしています
DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `sec_cd` int NOT NULL,
  `sec_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dep_cd` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `dep_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- テーブル hosplistdb.department: ~47 rows (約) のデータをダンプしています
INSERT INTO `department` (`sec_cd`, `sec_name`, `dep_cd`, `dep_name`) VALUES
	(1, '内科系', 'int_int', '内科'),
	(1, '内科系', 'int_res', '呼吸器内科'),
	(1, '内科系', 'int_cir', '循環器内科'),
	(1, '内科系', 'int_dig', '消化器内科'),
	(1, '内科系', 'int_kid', '腎臓内科'),
	(1, '内科系', 'int_ner', '神経内科'),
	(1, '内科系', 'int_uri', '糖尿病内科(代謝内科)'),
	(1, '内科系', 'int_blo', '血液内科'),
	(1, '内科系', 'int_inf', '感染症内科'),
	(1, '内科系', 'int_tum', '臨床腫瘍科'),
	(1, '内科系', 'int_apo', '脳卒中科'),
	(2, '小児科系', 'ped_ped', '小児科'),
	(2, '小児科系', 'ped_sur', '小児外科'),
	(2, '小児科系', 'ped_neo', '新生児科'),
	(3, '外科系', 'sur_sur', '外科'),
	(3, '外科系', 'sur_nes', '呼吸器外科'),
	(3, '外科系', 'sur_car', '循環器外科(心臓･血管外科)'),
	(3, '外科系', 'sur_lac', '乳腺外科'),
	(3, '外科系', 'sur_dig', '消化器外科'),
	(3, '外科系', 'sur_ven', '肛門外科'),
	(3, '外科系', 'sur_ner', '脳神経外科'),
	(4, '整形外科', 'ort_rhe', 'リウマチ科'),
	(4, '整形外科', 'ort_ort', '整形外科'),
	(4, '整形外科', 'ort_pla', '形成外科'),
	(4, '整形外科', 'ort_cos', '美容外科'),
	(4, '整形外科', 'ort_reh', 'リハビリテーション科'),
	(5, '眼科系', 'oph_oph', '眼科'),
	(6, '耳鼻咽喉科系', 'ent_ent', '耳鼻いんこう科'),
	(6, '耳鼻咽喉科系', 'ent_to', '気管食道科'),
	(7, '皮膚科・泌尿器科系', 'so_sky', '皮膚科'),
	(7, '皮膚科・泌尿器科系', 'so_org', '泌尿器科'),
	(8, '産婦人科系', 'gyn_gyn', '産婦人科'),
	(8, '産婦人科系', 'gyn_obs', '産科'),
	(8, '産婦人科系', 'gyn_gyne', '婦人科'),
	(9, '精神科系', 'psy_psy', '精神科'),
	(9, '精神科系', 'psy_psyc', '心療内科'),
	(10, '歯科系', 'den_den', '歯科'),
	(10, '歯科系', 'den_ref', '矯正歯科'),
	(10, '歯科系', 'den_ped', '小児歯科'),
	(10, '歯科系', 'den_cav', '歯科口腔外科'),
	(11, 'その他', 'alle', 'アレルギー科'),
	(11, 'その他', 'rad', '放射線科'),
	(11, 'その他', 'ane', '麻酔科'),
	(11, 'その他', 'pat', '病理診断科'),
	(11, 'その他', 'cli', '臨床検査科'),
	(11, 'その他', 'eme', '救急科'),
	(11, 'その他', 'checkup', '健康診断');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
