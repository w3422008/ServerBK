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

--  テーブル hosplistdb.user の構造をダンプしています
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ins` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bel` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `adm_user` int DEFAULT NULL,
  `edi_user` int DEFAULT NULL,
  `start` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `end` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `onf` int NOT NULL,
  `up_date` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- テーブル hosplistdb.user: ~59 rows (約) のデータをダンプしています
INSERT INTO `user` (`user_id`, `user_name`, `ins`, `bel`, `pw`, `adm_user`, `edi_user`, `start`, `end`, `onf`, `up_date`) VALUES
	('K0082036', '田中　ゆう子', '1', '0', '$2y$10$DBi3ANerokYaQ62/GF.dfuhNt11WMV4VON6CHeAca3TnzMfGwd4Ku', 2, NULL, '2025/09/08 11:01:35', '', 0, ''),
	('k0083017', '武内　裕美', '0', '0', '$2y$10$ZlAekr.82DK8eZyAD0o8qOSJNUWQudREIntjW0tzQHJ6RmdUlFyuW', 2, NULL, '2023/01/23 14:36:22', '', 0, ''),
	('k0090029', '村上　美奈子', '0', '0', '$2y$10$/0zcNXw7jW8Rzmexy2asm.L5TWuL0yu3J6yLnSlgi/ERn1yLCD0hG', 2, NULL, '2023/01/23 14:40:44', '2025/08/28 11:38:22', 1, ''),
	('k0092021', '高谷　靖子', '1', '3', '$2y$10$dLLgjnTOLIvypRlxdG3bouw.3l0WX4ruwZu5zZiJz8BeIVT4B.bce', 2, NULL, '2025/08/28 11:50:47', '', 0, ''),
	('K0093006', '加藤　弘幸', '1', '3', '$2y$10$aRvPz8CCOoeIZ7AyHgrwOOj1QWBUh/ta7QkognckbHJ1sJktpVEn6', 2, NULL, '2023/05/23 14:50:57', '2025/07/24 14:33:15', 1, ''),
	('k0098014', '田村　由記江', '0', '0', '$2y$10$hSnImvWCmMNnVetQlksLuOvzvWzFMptouHPDj2/5eqLjr7xlkD4f2', 1, NULL, '2022/11/14 11:17:30', '', 0, ''),
	('k0100019', '松尾　ゆかり', '0', '0', '$2y$10$kayiTiz8pkJ77S7Rm1FK4.6f79QODzaSZ5ViVkH8OXqJYd34ccx7m', 2, NULL, '2023/01/23 14:41:48', '', 0, ''),
	('k0102015', '井上　智子', '0', '4', '$2y$10$zJqjK2seMkvscqP6eP0rQeSxXjqnNi4XX5zpIV9R6inCxFSNZ4QXK', 3, NULL, '2022/11/09 14:32:30', '', 0, '2025/07/10 09:22:44'),
	('k0105028', '山本　景子', '0', '0', '$2y$10$uyCsvpbRZYL2HDCjs3ffIO5oqCqpcbtqZ9uNFmhsBOwg17ZDmXSuC', 2, NULL, '2023/01/23 14:43:01', '2023/10/16 09:49:13', 1, ''),
	('k0106017', '金島　由佳', '0', '0', '$2y$10$en5iiPCP3IZhwYtRht6OsOkazJuAw4OlQkXQOfQNFYc13joAQyK8K', 1, NULL, '2022/11/15 12:58:02', '', 0, ''),
	('k0110013', '高橋　誉文', '0', '0', '$2y$10$uyjMICFN/VM7JnMnlE6sPemmPP5Mj0XceKgCoIt/fY/.zBJkmiXFa', 2, NULL, '2023/01/23 14:44:24', '', 0, ''),
	('k0110302', '難波　直樹', '0', '0', '$2y$10$cDY3j/zwFGlOiOi.UQ9xgutDTUv3.yfPKNToDCn7GKtsejDy07Vlu', 1, NULL, '2022/11/14 11:23:55', '', 0, '2023/10/17 17:20:38'),
	('k0111326', '小野　由起', '0', '0', '$2y$10$puGPrDhHUEaXdPairyWyo.ZScJ/Dv981aRZgoMmd8VpyF1LFMbL8S', 1, NULL, '2022/11/14 11:19:12', '', 0, '2023/07/06 12:32:26'),
	('K0113374', '三木　知幸', '0', '3', '$2y$10$TbGRogPNu88JuXkXBKX0TeZCC7M58J3jSVbVNsZM3KwMwSEnsQY1a', 2, NULL, '2024/06/06 12:58:21', '2025/03/14 14:46:31', 1, '2024/08/06 14:43:57'),
	('K0114062', '友野　郁子', '1', '0', '$2y$10$LEUFu9IbPO4YzK6HCABRxegvVbDcBa8iY4xvkamO38BbW3slA1Xvq', 2, NULL, '2025/08/28 12:34:31', '', 0, ''),
	('k0114064', '三宅　佳花', '0', '0', '$2y$10$gjBY6t7823XgWd1ML6BWZOnKXfKYyRGez.NOUb9bbkEEEzvo5qe0K', 2, NULL, '2023/01/23 14:52:42', '', 0, ''),
	('k0115027', '安井　梨紗', '0', '0', '$2y$10$Ev.8xm7b/fd8FCR7cl1AlOZ9IhcIHZixBWd0Z9DenC.JLq8qKcYRe', 2, NULL, '2023/01/23 14:57:06', '', 0, ''),
	('k0115075', '筒井　大', '0', '0', '$2y$10$EBypOLXqyWlG9mbfdUShlOoA4lSc7UPBbkSEMnypzHn5XkValtjaC', 2, NULL, '2023/01/23 15:00:52', '', 0, ''),
	('K0115210', '藤井　裕幸', '1', '0', '$2y$10$Wk6b3voIrBIbfZgmU2w.X.mfuUHHuk.Oh7AVptmfKPKNztATbEksm', 2, NULL, '2025/09/08 11:04:48', '', 0, ''),
	('k0116040', '荒木野　ひかる', '0', '0', '$2y$10$YzVklFMmlbSYhVPRoUUcNOQw0kaM1uHVHlddWd0bFTHQP/PtYdY3y', 2, NULL, '2023/01/23 15:02:51', '', 0, ''),
	('k0117038', '川上　陽大', '0', '0', '$2y$10$WTLlcmK8BpFxPQeSxkKTyuwEOGbRdYDjK1GmCHZuRsoT/tPCJk1G2', 2, NULL, '2023/01/23 15:11:55', '', 0, ''),
	('k0118011', '新井　優佳', '0', '4', '$2y$10$pRhh3iX1Uyrkhya/Q7nrPeZFyeCvqdz9EjVAJS0nbY8hf1p2ip9UO', 3, NULL, '2022/11/02 15:52:03', '', 0, '2025/07/07 17:06:42'),
	('K0118013', '中島　保佐奈', '0', '3', '$2y$10$SH2NEDHgU.vKEtT1qzZhpuZy0D8PmbijXuQ0u/0zydO9dLdIxqa8W', 2, NULL, '2023/08/25 16:27:31', '', 0, '2024/08/06 14:43:20'),
	('k0118035', '高田　梨奈', '0', '0', '$2y$10$L9ZdYpanILRXe5DIxD94TOqTPzEdzArpRXQg8sskDVU/oFaRrPqTG', 2, NULL, '2023/01/23 15:12:53', '', 0, ''),
	('k0118036', '大川内　真甫', '0', '0', '$2y$10$90JumCDu3.2l5rs8QWIdNuBHEPT7tfVZ.dB2NBGxjV45wc1Enx4vm', 2, NULL, '2023/01/23 15:20:58', '', 0, ''),
	('K0118371', '野村　美世', '0', '3', '$2y$10$8GmPjxIYYep/PWD4s1droe/Xty/KKvw30MFp5ySogzi.O.yzfMgwm', 1, NULL, '2024/03/28 16:23:47', '', 0, ''),
	('k0118392', '田中　一恵', '0', '0', '$2y$10$W3HSHU44pFo0FMlNi/EWNucJI37QIt9JpOetOkhq6Z3H73Ed3lbDO', 2, NULL, '2023/01/23 15:22:15', '2024/11/07 13:55:32', 1, ''),
	('K0119011', '忠岡　麻衣子', '0', '3', '$2y$10$HLDNKLDPaZ/i0KfpCr5cY.gP.z8JCGZjgppR9WC8xa2AdtEWSR3wS', 2, NULL, '2023/08/25 16:33:00', '2025/03/14 14:47:32', 1, '2025/03/14 14:45:41'),
	('K0119015', '室山　浩輔', '1', '0', '$2y$10$cIRJ9JqH/hBNwTjc5nx5bOkS6Vi/tk9zO7YZYothCUQ24h1.tsXf6', 2, NULL, '2025/09/08 11:12:48', '', 0, ''),
	('K0119017', '永野　実和', '1', '3', '$2y$10$Q9IH2lkThZm52cGqY6sNoODiia.9iJwnJg3AJKn9Z9QlLhu6LEsEu', 1, NULL, '2023/05/02 15:00:18', '', 0, ''),
	('k0119034', '中畑　海咲', '0', '0', '$2y$10$tqOBQHhfB71qNWA2ueYluO7kGW3nf.fUzvt9P9QHp.cM3Q6n.KDZi', 2, NULL, '2023/01/23 15:26:14', '', 0, ''),
	('k0119035', '平野　叶笑', '0', '0', '$2y$10$uHqsBmOejvt9lZRrta6Q9.UlU0oWBAKYZW065V9o1MflkmLZXCV/a', 2, NULL, '2023/01/23 15:27:35', '', 0, ''),
	('k0119325', '難波　弥生', '1', '2', '$2y$10$K9g1iEiZq1tz9wpXr0sOeeGoz4DFaUZXpLOrR54P5gRo/s3LOeNfy', 1, NULL, '2024/06/20 14:51:03', '', 0, ''),
	('k0119458', '木下　彰二', '2', '0', '$2y$10$egpsBoCFWMoKvvnJUIpjNOjlpDPoRfZVrxnrsgZhbNdZI8LgonO6.', 1, NULL, '2025/09/01 14:32:56', '', 0, ''),
	('K0119479', '藤井　美幸', '1', '0', '$2y$10$Mspm.1P7zE0w.zRxtsplzeXW/lm7yFlgFErDMfikRQlOMRufEtGcS', 2, NULL, '2025/09/08 11:14:15', '', 0, ''),
	('K0120034', '池田　有沙', '1', '0', '$2y$10$2mjvsjjY9nSXni2BVh5etuujeJmKynn1kdgI8FioFKQfrvMuRMGdm', 2, NULL, '2025/09/18 20:18:03', '', 0, ''),
	('k0122076', '行元　亜美', '0', '0', '$2y$10$W/YeICN9lYJbYDW7jQ3Lueov2jKFE8.hQ01HeFbbeUPTEHDkvLD4W', 2, NULL, '2023/01/23 15:29:01', '', 0, ''),
	('k0122464', '美甘　勝士', '2', '0', '$2y$10$O8il../tD3fE5YIOotzuj.PPjIlQv9id1kFAHXRZcoTy9a2OCr9jK', 1, NULL, '2023/01/23 14:29:40', '', 0, '2025/09/01 14:49:41'),
	('K0123065', '廣石　早紀', '1', '0', '$2y$10$LTcLrgNV9A8rhuWX82rJdOnRJZexZlR.uiyc9U2/V9oj1ioN13v7y', 2, NULL, '2025/08/28 12:30:08', '', 0, ''),
	('K0123471', '高石　裕子', '1', '0', '$2y$10$BabpjPgB9TUKl2H6o6kvwu9gIfC9UmiF2inuPCqLE.2Nyv4Frre0W', 2, NULL, '2025/09/08 11:15:07', '', 0, ''),
	('K0124484', '和田　明優夏', '0', '0', '$2y$10$F170RHOEhpM3ro2DXKQpOewv6bPRB0pY9jXJAe35N/KioL5Db/mPa', 1, NULL, '2025/04/08 09:22:43', '', 0, ''),
	('k0125034', '中尾　拓磨', '0', '4', '$2y$10$G1YdSZXSuPWz24uMSQBxWe2n5D1LwH1wkwAZcWCDS6wTV4EJRFjy.', 3, NULL, '2025/07/08 17:06:22', '', 0, ''),
	('k0125035', '三宅　葵', '0', '4', '$2y$10$amTuREglBsPetuXyPu75OOuml4mwnKpfO8DWSXkDF60oEROAhtGk6', 3, NULL, '2025/07/10 08:35:44', '', 0, ''),
	('k0902347', '馬場　淳子', '0', '0', '$2y$10$cWRaHFhLnwlSgX147ig2dOS7v5oNevuW1NgS.ha7S9AI8LXR/fL8u', 2, NULL, '2023/01/23 15:29:57', '2024/11/07 13:55:50', 1, ''),
	('k0903267', '浅野　由紀子', '0', '2', '$2y$10$aNm82CS7/Y8iwA.xiRFwM.dWjbCO4QfyppZxTWMQ011gatijMveq2', 1, NULL, '2022/11/14 11:20:35', '', 0, ''),
	('k0903320', '和田　明優夏', '0', '0', '$2y$10$3/3aP/HHe4aYZG2syqwgP.75GEsD/ApmKL5bF2nOZpAwdMZz/9i0y', 1, NULL, '2023/01/23 15:31:02', '2025/04/08 09:22:58', 1, '2024/04/03 13:17:16'),
	('K0903778', '髙山　朋郁', '0', '3', '$2y$10$7PQ9HylAX8ePPEES..8hief6vByOJYoWf.xP3r1dE20oOwhYuAVQ.', 2, NULL, '2024/08/06 14:57:31', '', 0, ''),
	('K0903819', '山本珠美', '0', '4', '$2y$10$xqcq4v8DthCh69oa2h7tA.s2xpFKU6H5xX4CPEic4bDBxQYy50pBW', 3, NULL, '2025/07/14 09:21:21', '', 0, '2025/07/23 12:07:51'),
	('K0903828', '戸田　美里', '1', '0', '$2y$10$GX8Phf5/QdOZNzvWEMZDx./aVJrur6wEA9NgmpU6lpdO5MxAOQou2', 2, NULL, '2025/09/08 11:16:41', '', 0, ''),
	('k0999999', 'テスト事務職員', '0', '4', '$2y$10$uaq5CvP0OsK4qPRUZjdeueU1Rc7YLKshlA6h1K/O0ZW4J6esg6ipO', 2, NULL, '2023/06/28 09:07:20', '', 0, ''),
	('k1987005', '森永　奈緒美', '2', '0', '$2y$10$wc6AlSMQWobESzbFNTpoQ.Tj0UHBXvDvC3ugsE3SnjNjp/3OrR33e', 1, NULL, '2025/09/01 14:35:41', '', 0, ''),
	('K1994003', '今田　憲吾', '1', '0', '$2y$10$0IqEalixhB7bZeaGHY.GVOhLsAsRc31OBxqvVBtEJ5Bx1xZj0LVp6', 1, NULL, '2023/11/01 15:53:16', '', 0, ''),
	('k2001017', '問田　和俊', '1', '2', '$2y$10$/hREdgt01yJO5iE6LZAiGORBcdhCod/UYJVDJyE2atdpvyP6JlBC6', 1, NULL, '2024/06/18 13:21:04', '', 0, ''),
	('K2005008', '鈴木　智恵', '1', '0', '$2y$10$Ju3Gn1PU9J0L4uke9qK8rOj5vUR9IE.wXIn1M1neE/JpUI.e9nZti', 1, NULL, '2023/11/01 16:07:53', '', 0, ''),
	('k2005009', '土師　智子', '1', '0', '$2y$10$xLF3dHMDHkjYNIpQSfHTOueu0o0sYAD1bDSzIO6TeI3Oy7BPst6AS', 1, NULL, '2025/09/02 09:05:34', '', 0, ''),
	('T1111111', 'テスト管理者', '0', '4', '$2y$10$Z9wjtNRQuAB5DNqv.3pEC.oQspNwLnLP4JoNFiM1kAPFKzNj4XQuq', 1, NULL, '2025/07/09 16:59:06', '', 0, ''),
	('T2222222', 'テスト一般事務', '0', '4', '$2y$10$Ijj/1.Z1DteUO/3C.gu16.jEEJDnrfJmJZXRthnp9kq7IrFMmb.ZO', 2, NULL, '2025/07/09 17:00:45', '', 0, '2025/07/09 17:04:48'),
	('T3333333', 'テスト一般', '0', '4', '$2y$10$hgx44QKovMgalpPbnuIT2uXRLS1Ps6FoRAwDrQ/kyes0SOrjeLRgS', 0, NULL, '2025/07/09 17:02:47', '', 0, '2025/07/09 17:06:13'),
	('w3422008', '加藤　稜也', '0', '4', '$2y$10$evQHBCfuXxdgQhu1wUcwOut/q6lraAB18Eu0TsfcIjUIOo19Pm8RK', 3, NULL, '2025/07/08 13:22:15', '', 0, ''),
	('w3422014', '畑　祐人', '0', '4', '$2y$10$k2A/6sULjdBMWyqsDHK96uis86H7HHD6ZrhkkUpyedINnXFt6vijS', 3, NULL, '2025/07/09 16:55:53', '', 0, '');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
