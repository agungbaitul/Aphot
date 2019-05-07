-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: hoteria
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audits`
--

DROP TABLE IF EXISTS `audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) unsigned DEFAULT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audits`
--

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;
INSERT INTO `audits` VALUES (1,14,'DELETE',2,'categories_room','{\"categories_room_id\":\"2\",\"categories_room_name\":\"Sandy Andryanto\",\"categories_room_cost\":\"234234\",\"categories_room_description\":\"sdfsdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 14:59:09\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"2\",\"categories_room_name\":\"Sandy Andryanto\",\"categories_room_cost\":\"234234\",\"categories_room_description\":\"sdfsdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 14:59:09\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:52:40\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:52:41','2019-05-01 13:52:41'),(2,14,'DELETE',3,'categories_room','{\"categories_room_id\":\"3\",\"categories_room_name\":\"admindevel\",\"categories_room_cost\":\"10000\",\"categories_room_description\":\"ssss\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 15:12:14\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"3\",\"categories_room_name\":\"admindevel\",\"categories_room_cost\":\"10000\",\"categories_room_description\":\"ssss\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 15:12:14\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:52:44\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:52:44','2019-05-01 13:52:44'),(3,14,'CREATE',4,'categories_room','[null]','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"333\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:07\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:53:08','2019-05-01 13:53:08'),(4,14,'UPDATE',4,'categories_room','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"333\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:07\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"id\":\"4\",\"name\":\"dfddfdfdf\",\"cost\":\"111111\",\"description\":\"dfdfdfdf\",\"created_on\":\"2019-05-01 20:53:17\",\"created_by\":\"14\"}','http://localhost:5000/web/category_room/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:53:17','2019-05-01 13:53:17'),(5,14,'DELETE',4,'categories_room','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"111111\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:17\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"111111\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:17\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:53:57\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/web/category_room/delete/4/0','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:53:57','2019-05-01 13:53:57'),(6,14,'DELETE',4,'categories_room','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"111111\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:17\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"4\",\"categories_room_name\":\"dfddfdfdf\",\"categories_room_cost\":\"111111\",\"categories_room_description\":\"dfdfdfdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 20:53:17\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:55:09\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/web/category_room/delete/4/0','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:55:09','2019-05-01 13:55:09'),(7,14,'DELETE',3,'categories_room','{\"categories_room_id\":\"3\",\"categories_room_name\":\"admindevel\",\"categories_room_cost\":\"10000\",\"categories_room_description\":\"ssss\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 15:12:14\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"3\",\"categories_room_name\":\"admindevel\",\"categories_room_cost\":\"10000\",\"categories_room_description\":\"ssss\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 15:12:14\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:55:16\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:55:16','2019-05-01 13:55:16'),(8,14,'DELETE',2,'categories_room','{\"categories_room_id\":\"2\",\"categories_room_name\":\"Sandy Andryanto\",\"categories_room_cost\":\"234234\",\"categories_room_description\":\"sdfsdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 14:59:09\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"2\",\"categories_room_name\":\"Sandy Andryanto\",\"categories_room_cost\":\"234234\",\"categories_room_description\":\"sdfsdf\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-01 14:59:09\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:55:19\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:55:19','2019-05-01 13:55:19'),(9,14,'DELETE',1,'categories_room','{\"categories_room_id\":\"1\",\"categories_room_name\":\"Hello World\",\"categories_room_cost\":\"0\",\"categories_room_description\":\"sss\",\"categories_room_image\":null,\"categories_room_created_on\":null,\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','{\"categories_room_id\":\"1\",\"categories_room_name\":\"Hello World\",\"categories_room_cost\":\"0\",\"categories_room_description\":\"sss\",\"categories_room_image\":null,\"categories_room_created_on\":null,\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":\"2019-05-01 20:55:23\",\"categories_room_deleted_by\":\"14\"}','http://localhost:5000/api/category_room/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-01 13:55:23','2019-05-01 13:55:23'),(10,14,'CREATE',1,'categories_room','[null]','{\"categories_room_id\":\"1\",\"categories_room_name\":\"Delux\",\"categories_room_cost\":\"500\",\"categories_room_description\":\"-\",\"categories_room_image\":\"uploads\\/b759c0467b11443dcbfb3ee9e60e194c.png\",\"categories_room_created_on\":\"2019-05-03 15:16:11\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 08:16:11','2019-05-03 08:16:11'),(11,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:29:31','2019-05-03 17:29:31'),(12,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:29:34','2019-05-03 17:29:34'),(13,14,'DELETE',19,'users','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:29:38','2019-05-03 17:29:38'),(14,14,'DELETE',17,'users','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:40:53','2019-05-03 17:40:53'),(15,14,'DELETE',17,'users','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:40:57','2019-05-03 17:40:57'),(16,14,'DELETE',17,'users','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:41:02','2019-05-03 17:41:02'),(17,14,'DELETE',19,'users','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:41:32','2019-05-03 17:41:32'),(18,14,'DELETE',15,'users','{\"users_id\":\"15\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"fitriani00\",\"users_password\":\"$2y$10$ej7R\\/wCuN96.x4DlsCbRb.DZ5U9eQtF5WU2sK4MsicInSA8p9D1qu\",\"users_email\":\"langgeng.pradipta@example.org\",\"users_phone\":\"(+62) 219 0241 885\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"15\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"fitriani00\",\"users_password\":\"$2y$10$ej7R\\/wCuN96.x4DlsCbRb.DZ5U9eQtF5WU2sK4MsicInSA8p9D1qu\",\"users_email\":\"langgeng.pradipta@example.org\",\"users_phone\":\"(+62) 219 0241 885\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:42:23','2019-05-03 17:42:23'),(19,14,'DELETE',16,'users','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:42:26','2019-05-03 17:42:26'),(20,14,'DELETE',19,'users','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:42:30','2019-05-03 17:42:30'),(21,14,'DELETE',17,'users','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"17\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"halima34\",\"users_password\":\"$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke\",\"users_email\":\"ryolanda@example.net\",\"users_phone\":\"0704 4832 1580\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:43:59','2019-05-03 17:43:59'),(22,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:03','2019-05-03 17:44:03'),(23,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:06','2019-05-03 17:44:06'),(24,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:10','2019-05-03 17:44:10'),(25,14,'DELETE',16,'users','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:13','2019-05-03 17:44:13'),(26,14,'DELETE',15,'users','{\"users_id\":\"15\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"fitriani00\",\"users_password\":\"$2y$10$ej7R\\/wCuN96.x4DlsCbRb.DZ5U9eQtF5WU2sK4MsicInSA8p9D1qu\",\"users_email\":\"langgeng.pradipta@example.org\",\"users_phone\":\"(+62) 219 0241 885\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"15\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"fitriani00\",\"users_password\":\"$2y$10$ej7R\\/wCuN96.x4DlsCbRb.DZ5U9eQtF5WU2sK4MsicInSA8p9D1qu\",\"users_email\":\"langgeng.pradipta@example.org\",\"users_phone\":\"(+62) 219 0241 885\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:16','2019-05-03 17:44:16'),(27,14,'DELETE',19,'users','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:19','2019-05-03 17:44:19'),(28,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:22','2019-05-03 17:44:22'),(29,14,'DELETE',18,'users','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"18\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"situmorang.eli\",\"users_password\":\"$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu\",\"users_email\":\"dirja.hutapea@example.net\",\"users_phone\":\"0544 5180 2405\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:36','2019-05-03 17:44:36'),(30,14,'DELETE',16,'users','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:39','2019-05-03 17:44:39'),(31,14,'DELETE',16,'users','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"16\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"gawati82\",\"users_password\":\"$2y$10$ljWogeUXrA4fEHmVG6V\\/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK\",\"users_email\":\"kalim.andriani@example.com\",\"users_phone\":\"0395 0372 342\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698631\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 17:44:43','2019-05-03 17:44:43'),(32,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:12:57','2019-05-03 18:12:57'),(33,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:15:39','2019-05-03 18:15:39'),(34,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/web/user/delete/22','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:15:51','2019-05-03 18:15:51'),(35,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:16:04','2019-05-03 18:16:04'),(36,14,'DELETE',23,'users','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/web/user/delete/23','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:19:08','2019-05-03 18:19:08'),(37,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/web/user/delete/22','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:19:12','2019-05-03 18:19:12'),(38,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/web/user/delete/22','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:21:58','2019-05-03 18:21:58'),(39,14,'DELETE',23,'users','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/web/user/delete/23','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:22:06','2019-05-03 18:22:06'),(40,14,'DELETE',22,'users','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"22\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"sasuke\",\"users_password\":\"$2y$10$oVsAXhHGIyyR\\/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS\",\"users_email\":\"sasuke@test.com\",\"users_phone\":\"858585588\",\"users_activation_selector\":\"f10d617dffe1d9fabfb7\",\"users_activation_code\":\"$2y$10$I2Lf.mfONOlT1a7SM64nnu0e\\/9SZ8aDJ6Xc4JrW87yzu.mL\\/evCEW\",\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932332\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:22:12','2019-05-03 18:22:12'),(41,14,'DELETE',23,'users','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/web/user/delete/23','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 18:26:45','2019-05-03 18:26:45'),(42,14,'DELETE',42,'groups','{\"groups_id\":\"42\",\"groups_name\":\"director\",\"groups_description\":\"DIRECTOR\",\"groups_created_on\":null,\"groups_created_by\":null,\"groups_deleted_on\":null,\"groups_deleted_by\":null}','{\"groups_id\":\"42\",\"groups_name\":\"director\",\"groups_description\":\"DIRECTOR\",\"groups_created_on\":null,\"groups_created_by\":null,\"groups_deleted_on\":\"2019-05-04 02:27:37\",\"groups_deleted_by\":\"14\"}','http://localhost:5000/api/role/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-03 19:27:37','2019-05-03 19:27:37'),(43,14,'CREATE',45,'groups','[null]','{\"name\":\"ddd\",\"description\":\"ddd\",\"created_on\":\"2019-05-05 13:54:22\",\"created_by\":\"14\"}','http://localhost:5000/web/role/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 06:54:22','2019-05-05 06:54:22'),(44,14,'CREATE',46,'groups','[null]','{\"name\":\"AAA\",\"description\":\"AAAA\",\"created_on\":\"2019-05-05 13:54:40\",\"created_by\":\"14\"}','http://localhost:5000/web/role/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 06:54:41','2019-05-05 06:54:41'),(45,14,'CREATE',47,'groups','[null]','{\"name\":\"QQQ\",\"description\":\"QQQ\",\"created_on\":\"2019-05-05 14:12:34\",\"created_by\":\"14\"}','http://localhost:5000/web/role/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:12:34','2019-05-05 07:12:34'),(46,14,'UPDATE',47,'groups','{\"groups_id\":\"47\",\"groups_name\":\"QQQ\",\"groups_description\":\"QQQ\",\"groups_created_on\":\"2019-05-05 14:12:34\",\"groups_created_by\":\"14\",\"groups_deleted_on\":null,\"groups_deleted_by\":null}','{\"name\":\"QQQ\",\"description\":\"QQQ\",\"created_on\":\"2019-05-05 14:29:24\",\"created_by\":\"14\"}','http://localhost:5000/web/role/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:29:24','2019-05-05 07:29:24'),(47,14,'CREATE',1,'taxes','[null]','{\"taxes_id\":\"1\",\"taxes_name\":\"PPH\",\"taxes_cost\":\"25\",\"taxes_description\":\"-\",\"taxes_created_on\":\"2019-05-05 14:35:51\",\"taxes_created_by\":\"14\",\"taxes_deleted_on\":null,\"taxes_deleted_by\":null,\"taxes_active\":\"1\"}','http://localhost:5000/web/tax/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:35:51','2019-05-05 07:35:51'),(48,14,'CREATE',2,'taxes','[null]','{\"taxes_id\":\"2\",\"taxes_name\":\"Service\",\"taxes_cost\":\"5\",\"taxes_description\":\"-\",\"taxes_created_on\":\"2019-05-05 14:37:04\",\"taxes_created_by\":\"14\",\"taxes_deleted_on\":null,\"taxes_deleted_by\":null,\"taxes_active\":\"1\"}','http://localhost:5000/web/tax/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:37:05','2019-05-05 07:37:05'),(49,14,'UPDATE',1,'taxes','{\"taxes_id\":\"1\",\"taxes_name\":\"PPH\",\"taxes_cost\":\"25\",\"taxes_description\":\"-\",\"taxes_created_on\":\"2019-05-05 14:35:51\",\"taxes_created_by\":\"14\",\"taxes_deleted_on\":null,\"taxes_deleted_by\":null,\"taxes_active\":\"1\"}','{\"id\":\"1\",\"name\":\"PPH\",\"cost\":\"25\",\"description\":\"-\",\"active\":0,\"created_on\":\"2019-05-05 14:37:20\",\"created_by\":\"14\"}','http://localhost:5000/web/tax/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:37:20','2019-05-05 07:37:20'),(50,14,'DELETE',23,'users','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:39:06','2019-05-05 07:39:06'),(51,14,'DELETE',23,'users','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:39:11','2019-05-05 07:39:11'),(52,14,'DELETE',19,'users','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:39:14','2019-05-05 07:39:14'),(53,14,'DELETE',19,'users','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"19\",\"users_ip_address\":\"0.0.0.0\",\"users_username\":\"xmayasari\",\"users_password\":\"$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq\",\"users_email\":\"yuni27@example.com\",\"users_phone\":\"(+62) 287 3607 9709\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556698632\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:39:20','2019-05-05 07:39:20'),(54,14,'DELETE',23,'users','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"0\"}','{\"users_id\":\"23\",\"users_ip_address\":\"127.0.0.1\",\"users_username\":\"kakashi\",\"users_password\":\"$2y$10$BU439RpOOiBPyZaX2XPEiu9C1\\/29Ms37\\/K4InbY9HwWcSNxqBjWIC\",\"users_email\":\"kakashi@test.com\",\"users_phone\":\"959595959\",\"users_activation_selector\":null,\"users_activation_code\":null,\"users_forgotten_password_selector\":null,\"users_forgotten_password_code\":null,\"users_forgotten_password_time\":null,\"users_remember_selector\":null,\"users_remember_code\":null,\"users_created_on\":\"1556932363\",\"users_last_login\":null,\"users_active\":\"1\"}','http://localhost:5000/api/user/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:39:23','2019-05-05 07:39:23'),(55,14,'UPDATE',47,'groups','{\"groups_id\":\"47\",\"groups_name\":\"QQQ\",\"groups_description\":\"QQQ\",\"groups_created_on\":\"2019-05-05 14:29:24\",\"groups_created_by\":\"14\",\"groups_deleted_on\":null,\"groups_deleted_by\":null}','{\"name\":\"Super Admin\",\"description\":\"Devel only\",\"created_on\":\"2019-05-05 14:55:41\",\"created_by\":\"14\"}','http://localhost:5000/web/role/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 07:55:41','2019-05-05 07:55:41'),(56,14,'CREATE',1,'customers','[null]','{\"customers_id\":\"1\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"47867458678457\",\"customers_name\":\"Sandy Andryanto\",\"customers_phone\":\"959595959\",\"customers_email\":\"sandy.andryanto.dev@gmail.com\",\"customers_address\":\"Kebon Kopi\",\"customers_created_on\":\"2019-05-05 15:24:22\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','http://localhost:5000/web/customer/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 08:24:22','2019-05-05 08:24:22'),(57,14,'UPDATE',1,'customers','{\"customers_id\":\"1\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"47867458678457\",\"customers_name\":\"Sandy Andryanto\",\"customers_phone\":\"959595959\",\"customers_email\":\"sandy.andryanto.dev@gmail.com\",\"customers_address\":\"Kebon Kopi\",\"customers_created_on\":\"2019-05-05 15:24:22\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','{\"id\":\"1\",\"identity_type\":\"NPWP\",\"identity_number\":\"11212.234234.123123.111\",\"name\":\"PT PERTAMINA\",\"phone\":\"458694586989\",\"email\":\"pertamina@test.com\",\"address\":\"Jakarta Pusat\",\"created_on\":\"2019-05-05 15:26:15\",\"created_by\":\"14\"}','http://localhost:5000/web/customer/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 08:26:15','2019-05-05 08:26:15'),(58,14,'CREATE',2,'customers','[null]','{\"customers_id\":\"2\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"47867458678457\",\"customers_name\":\"admindevel\",\"customers_phone\":\"9456859468\",\"customers_email\":\"sandyandryanto@outlook.com\",\"customers_address\":\"-\",\"customers_created_on\":\"2019-05-05 15:26:36\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','http://localhost:5000/web/customer/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 08:26:36','2019-05-05 08:26:36'),(59,14,'DELETE',2,'customers','{\"customers_id\":\"2\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"47867458678457\",\"customers_name\":\"admindevel\",\"customers_phone\":\"9456859468\",\"customers_email\":\"sandyandryanto@outlook.com\",\"customers_address\":\"-\",\"customers_created_on\":\"2019-05-05 15:26:36\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','{\"customers_id\":\"2\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"47867458678457\",\"customers_name\":\"admindevel\",\"customers_phone\":\"9456859468\",\"customers_email\":\"sandyandryanto@outlook.com\",\"customers_address\":\"-\",\"customers_created_on\":\"2019-05-05 15:26:36\",\"customers_created_by\":\"14\",\"customers_deleted_on\":\"2019-05-05 15:26:43\",\"customers_deleted_by\":\"14\"}','http://localhost:5000/web/customer/delete/2','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 08:26:43','2019-05-05 08:26:43'),(60,14,'DELETE',1,'customers','{\"customers_id\":\"1\",\"customers_identity_type\":\"NPWP\",\"customers_identity_number\":\"11212.234234.123123.111\",\"customers_name\":\"PT PERTAMINA\",\"customers_phone\":\"458694586989\",\"customers_email\":\"pertamina@test.com\",\"customers_address\":\"Jakarta Pusat\",\"customers_created_on\":\"2019-05-05 15:26:15\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','{\"customers_id\":\"1\",\"customers_identity_type\":\"NPWP\",\"customers_identity_number\":\"11212.234234.123123.111\",\"customers_name\":\"PT PERTAMINA\",\"customers_phone\":\"458694586989\",\"customers_email\":\"pertamina@test.com\",\"customers_address\":\"Jakarta Pusat\",\"customers_created_on\":\"2019-05-05 15:26:15\",\"customers_created_by\":\"14\",\"customers_deleted_on\":\"2019-05-05 15:26:50\",\"customers_deleted_by\":\"14\"}','http://localhost:5000/api/customer/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 08:26:50','2019-05-05 08:26:50'),(61,14,'DELETE',5,'invoices','{\"invoices_id\":\"5\",\"invoices_invoice_number\":\"IN.20190505.00001\",\"invoices_invoice_date\":\"2019-05-05\",\"invoices_customer_id\":null,\"invoices_number_of_days\":\"0\",\"invoices_check_in_on\":null,\"invoices_check_out_on\":null,\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"1\",\"invoices_created_on\":\"2019-05-05 16:27:45\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":null,\"customers_identity_type\":null,\"customers_identity_number\":null,\"customers_name\":null,\"customers_phone\":null,\"customers_email\":null,\"customers_address\":null,\"customers_created_on\":null,\"customers_created_by\":null,\"customers_deleted_on\":null,\"customers_deleted_by\":null}','{\"invoices_id\":\"5\",\"invoices_invoice_number\":\"IN.20190505.00001\",\"invoices_invoice_date\":\"2019-05-05\",\"invoices_customer_id\":null,\"invoices_number_of_days\":\"0\",\"invoices_check_in_on\":null,\"invoices_check_out_on\":null,\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"1\",\"invoices_created_on\":\"2019-05-05 16:27:45\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":\"2019-05-05 16:29:29\",\"invoices_deleted_by\":\"14\",\"customers_id\":null,\"customers_identity_type\":null,\"customers_identity_number\":null,\"customers_name\":null,\"customers_phone\":null,\"customers_email\":null,\"customers_address\":null,\"customers_created_on\":null,\"customers_created_by\":null,\"customers_deleted_on\":null,\"customers_deleted_by\":null}','http://localhost:5000/api/reservation/delete','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 09:29:29','2019-05-05 09:29:29'),(62,14,'CREATE',1,'categories_food','[null]','{\"categories_food_id\":\"1\",\"categories_food_name\":\"Asian Food\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/47639ab1393cb02d0e06b17ad6adbac8.png\",\"categories_food_created_on\":\"2019-05-05 16:46:25\",\"categories_food_created_by\":\"14\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','http://localhost:5000/web/category_food/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 09:46:25','2019-05-05 09:46:25'),(63,14,'CREATE',1,'foods','[null]','{\"foods_id\":\"1\",\"foods_category_id\":\"1\",\"foods_name\":\"Nasi Goreng Mafia\",\"foods_description\":\"-\",\"foods_image\":\"uploads\\/533bcc501a38509f1310102d7c0aab82.jpg\",\"foods_cost\":\"5000\",\"foods_created_on\":\"2019-05-05 16:57:45\",\"foods_created_by\":\"14\",\"foods_deleted_on\":null,\"foods_deleted_by\":null,\"categories_food_id\":\"1\",\"categories_food_name\":\"Asian Food\",\"categories_food_description\":\"-\",\"categories_food_image\":\"uploads\\/47639ab1393cb02d0e06b17ad6adbac8.png\",\"categories_food_created_on\":\"2019-05-05 16:46:25\",\"categories_food_created_by\":\"14\",\"categories_food_deleted_on\":null,\"categories_food_deleted_by\":null}','http://localhost:5000/web/menu/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 09:57:45','2019-05-05 09:57:45'),(64,14,'CREATE',2,'categories_room','[null]','{\"categories_room_id\":\"2\",\"categories_room_name\":\"VIP\",\"categories_room_cost\":\"10000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-05 19:12:34\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 12:12:34','2019-05-05 12:12:34'),(65,14,'CREATE',3,'categories_room','[null]','{\"categories_room_id\":\"3\",\"categories_room_name\":\"VVIP\",\"categories_room_cost\":\"2000\",\"categories_room_description\":\"-\",\"categories_room_image\":null,\"categories_room_created_on\":\"2019-05-05 19:12:50\",\"categories_room_created_by\":\"14\",\"categories_room_deleted_on\":null,\"categories_room_deleted_by\":null}','http://localhost:5000/web/category_room/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 12:12:50','2019-05-05 12:12:50'),(66,14,'UPDATE',11,'invoices','{\"invoices_id\":\"11\",\"invoices_invoice_number\":\"INN.20190506.00001\",\"invoices_invoice_date\":\"2019-05-06\",\"invoices_customer_id\":null,\"invoices_number_of_days\":\"0\",\"invoices_check_in_on\":null,\"invoices_check_out_on\":null,\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"1\",\"invoices_created_on\":\"2019-05-06 03:26:13\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":null,\"customers_identity_type\":null,\"customers_identity_number\":null,\"customers_name\":null,\"customers_phone\":null,\"customers_email\":null,\"customers_address\":null,\"customers_created_on\":null,\"customers_created_by\":null,\"customers_deleted_on\":null,\"customers_deleted_by\":null}','true','http://localhost:5000/web/reservation/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 20:30:55','2019-05-05 20:30:55'),(67,14,'UPDATE',11,'invoices','{\"invoices_id\":\"11\",\"invoices_invoice_number\":\"INN.20190506.00001\",\"invoices_invoice_date\":\"2019-05-06\",\"invoices_customer_id\":\"3\",\"invoices_number_of_days\":\"1\",\"invoices_check_in_on\":\"2019-06-05 00:00:00\",\"invoices_check_out_on\":\"2019-06-05 00:00:00\",\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"0\",\"invoices_created_on\":\"2019-05-06 03:26:13\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":\"3\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"34857348578347\",\"customers_name\":\"Sandy Andryanto\",\"customers_phone\":\"934839849\",\"customers_email\":\"sandy.andryantoo@gmail.com\",\"customers_address\":\"Cimahi\",\"customers_created_on\":\"2019-05-14 22:43:05\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','true','http://localhost:5000/web/reservation/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 20:55:59','2019-05-05 20:55:59'),(68,14,'CREATE',1,'discounts','[null]','{\"discounts_id\":\"1\",\"discounts_name\":\"Diskon Akhir Tahun\",\"discounts_cost\":\"2\",\"discounts_description\":\"-\",\"discounts_type\":\"0\",\"discounts_created_on\":\"2019-05-06 04:23:16\",\"discounts_created_by\":\"14\",\"discounts_deleted_on\":null,\"discounts_deleted_by\":null,\"discounts_active\":\"1\"}','http://localhost:5000/web/discount/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 21:23:16','2019-05-05 21:23:16'),(69,14,'UPDATE',1,'discounts','{\"discounts_id\":\"1\",\"discounts_name\":\"Diskon Akhir Tahun\",\"discounts_cost\":\"2\",\"discounts_description\":\"-\",\"discounts_type\":\"0\",\"discounts_created_on\":\"2019-05-06 04:23:16\",\"discounts_created_by\":\"14\",\"discounts_deleted_on\":null,\"discounts_deleted_by\":null,\"discounts_active\":\"1\"}','{\"id\":\"1\",\"name\":\"Diskon Akhir Tahun\",\"cost\":\"2\",\"type\":\"1\",\"description\":\"-\",\"active\":1,\"created_on\":\"2019-05-06 04:26:24\",\"created_by\":\"14\"}','http://localhost:5000/web/discount/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 21:26:24','2019-05-05 21:26:24'),(70,14,'CREATE',2,'discounts','[null]','{\"discounts_id\":\"2\",\"discounts_name\":\"Diskon Akhir Tahun\",\"discounts_cost\":\"1\",\"discounts_description\":\"-\",\"discounts_type\":\"1\",\"discounts_created_on\":\"2019-05-06 04:28:45\",\"discounts_created_by\":\"14\",\"discounts_deleted_on\":null,\"discounts_deleted_by\":null,\"discounts_active\":\"1\"}','http://localhost:5000/web/discount/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 21:28:45','2019-05-05 21:28:45'),(71,14,'UPDATE',1,'discounts','{\"discounts_id\":\"1\",\"discounts_name\":\"Diskon Akhir Tahun\",\"discounts_cost\":\"2\",\"discounts_description\":\"-\",\"discounts_type\":\"1\",\"discounts_created_on\":\"2019-05-06 04:26:24\",\"discounts_created_by\":\"14\",\"discounts_deleted_on\":null,\"discounts_deleted_by\":null,\"discounts_active\":\"1\"}','{\"id\":\"1\",\"name\":\"Diskon Akhir Tahun\",\"cost\":\"2\",\"type\":\"0\",\"description\":\"-\",\"active\":1,\"created_on\":\"2019-05-06 04:29:02\",\"created_by\":\"14\"}','http://localhost:5000/web/discount/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 21:29:02','2019-05-05 21:29:02'),(72,14,'UPDATE',1,'taxes','{\"taxes_id\":\"1\",\"taxes_name\":\"PPH\",\"taxes_cost\":\"25\",\"taxes_description\":\"-\",\"taxes_type\":null,\"taxes_created_on\":\"2019-05-05 14:37:20\",\"taxes_created_by\":\"14\",\"taxes_deleted_on\":null,\"taxes_deleted_by\":null,\"taxes_active\":\"0\"}','{\"id\":\"1\",\"name\":\"PPH\",\"cost\":\"25\",\"type\":\"0\",\"description\":\"-\",\"active\":1,\"created_on\":\"2019-05-06 04:35:08\",\"created_by\":\"14\"}','http://localhost:5000/web/tax/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 21:35:08','2019-05-05 21:35:08'),(73,14,'UPDATE',2,'taxes','{\"taxes_id\":\"2\",\"taxes_name\":\"Service\",\"taxes_cost\":\"5\",\"taxes_description\":\"-\",\"taxes_type\":null,\"taxes_created_on\":\"2019-05-05 14:37:04\",\"taxes_created_by\":\"14\",\"taxes_deleted_on\":null,\"taxes_deleted_by\":null,\"taxes_active\":\"1\"}','{\"id\":\"2\",\"name\":\"Service\",\"cost\":\"5\",\"type\":\"1\",\"description\":\"-\",\"active\":1,\"created_on\":\"2019-05-06 04:35:13\",\"created_by\":\"14\"}','http://localhost:5000/web/tax/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 21:35:13','2019-05-05 21:35:13'),(74,14,'UPDATE',1,'discounts','{\"discounts_id\":\"1\",\"discounts_name\":\"Diskon Akhir Tahun\",\"discounts_cost\":\"2\",\"discounts_description\":\"-\",\"discounts_type\":\"0\",\"discounts_created_on\":\"2019-05-06 04:29:02\",\"discounts_created_by\":\"14\",\"discounts_deleted_on\":null,\"discounts_deleted_by\":null,\"discounts_active\":\"1\"}','{\"id\":\"1\",\"name\":\"Diskon Penjualan\",\"cost\":\"2\",\"type\":\"0\",\"description\":\"-\",\"active\":1,\"created_on\":\"2019-05-06 05:26:17\",\"created_by\":\"14\"}','http://localhost:5000/web/discount/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 22:26:17','2019-05-05 22:26:17'),(75,14,'UPDATE',1,'taxes','{\"taxes_id\":\"1\",\"taxes_name\":\"PPH\",\"taxes_cost\":\"25\",\"taxes_description\":\"-\",\"taxes_type\":\"0\",\"taxes_created_on\":\"2019-05-06 04:35:08\",\"taxes_created_by\":\"14\",\"taxes_deleted_on\":null,\"taxes_deleted_by\":null,\"taxes_active\":\"1\"}','{\"id\":\"1\",\"name\":\"PPH\",\"cost\":\"10\",\"type\":\"0\",\"description\":\"-\",\"active\":1,\"created_on\":\"2019-05-06 05:26:52\",\"created_by\":\"14\"}','http://localhost:5000/web/tax/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-05 22:26:52','2019-05-05 22:26:52'),(76,14,'CREATE',3,'discounts','[null]','{\"discounts_id\":\"3\",\"discounts_name\":\"Diskon Ramadhan\",\"discounts_cost\":\"10\",\"discounts_description\":\"-\",\"discounts_type\":\"0\",\"discounts_created_on\":\"2019-05-06 08:30:22\",\"discounts_created_by\":\"14\",\"discounts_deleted_on\":null,\"discounts_deleted_by\":null,\"discounts_active\":\"1\"}','http://localhost:5000/web/discount/store','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-06 01:30:22','2019-05-06 01:30:22'),(77,14,'UPDATE',11,'invoices','{\"invoices_id\":\"11\",\"invoices_invoice_number\":\"INN.20190506.00001\",\"invoices_invoice_date\":\"2019-05-06\",\"invoices_customer_id\":\"3\",\"invoices_number_of_days\":\"1\",\"invoices_check_in_on\":\"2019-06-05 00:00:00\",\"invoices_check_out_on\":\"2019-06-05 00:00:00\",\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"0\",\"invoices_created_on\":\"2019-05-06 03:26:13\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":\"3\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"34857348578347\",\"customers_name\":\"Sandy Andryanto\",\"customers_phone\":\"934839849\",\"customers_email\":\"sandy.andryantoo@gmail.com\",\"customers_address\":\"Cimahi\",\"customers_created_on\":\"2019-05-14 22:43:05\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','true','http://localhost:5000/web/reservation/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-06 02:28:44','2019-05-06 02:28:44'),(78,14,'UPDATE',11,'invoices','{\"invoices_id\":\"11\",\"invoices_invoice_number\":\"INN.20190506.00001\",\"invoices_invoice_date\":\"2019-05-06\",\"invoices_customer_id\":\"3\",\"invoices_number_of_days\":\"1\",\"invoices_check_in_on\":\"2019-06-05 00:00:00\",\"invoices_check_out_on\":\"2019-06-05 00:00:00\",\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"0\",\"invoices_created_on\":\"2019-05-06 03:26:13\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":\"3\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"34857348578347\",\"customers_name\":\"Sandy Andryanto\",\"customers_phone\":\"934839849\",\"customers_email\":\"sandy.andryantoo@gmail.com\",\"customers_address\":\"Cimahi\",\"customers_created_on\":\"2019-05-14 22:43:05\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','true','http://localhost:5000/web/reservation/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36',NULL,'2019-05-06 02:34:16','2019-05-06 02:34:16'),(79,14,'UPDATE',14,'invoices','{\"invoices_id\":\"14\",\"invoices_invoice_number\":\"INN.20190506.00001\",\"invoices_invoice_date\":\"2019-05-06\",\"invoices_customer_id\":null,\"invoices_number_of_days\":\"0\",\"invoices_check_in_on\":\"2019-05-06 13:16:00\",\"invoices_check_out_on\":null,\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"1\",\"invoices_created_on\":\"2019-05-06 13:16:00\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":null,\"customers_identity_type\":null,\"customers_identity_number\":null,\"customers_name\":null,\"customers_phone\":null,\"customers_email\":null,\"customers_address\":null,\"customers_created_on\":null,\"customers_created_by\":null,\"customers_deleted_on\":null,\"customers_deleted_by\":null}','true','http://localhost:5000/web/reservation/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36',NULL,'2019-05-06 06:21:00','2019-05-06 06:21:00'),(80,14,'UPDATE',14,'invoices','{\"invoices_id\":\"14\",\"invoices_invoice_number\":\"INN.20190506.00001\",\"invoices_invoice_date\":\"2019-05-06\",\"invoices_customer_id\":\"3\",\"invoices_number_of_days\":\"2\",\"invoices_check_in_on\":\"2019-05-06 13:16:00\",\"invoices_check_out_on\":null,\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"0\",\"invoices_created_on\":\"2019-05-06 13:16:00\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":\"3\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"34857348578347\",\"customers_name\":\"Sandy Andryanto\",\"customers_phone\":\"934839849\",\"customers_email\":\"sandy.andryantoo@gmail.com\",\"customers_address\":\"Cimahi\",\"customers_created_on\":\"2019-05-14 22:43:05\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','true','http://localhost:5000/web/reservation/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36',NULL,'2019-05-06 06:21:57','2019-05-06 06:21:57'),(81,14,'UPDATE',15,'invoices','{\"invoices_id\":\"15\",\"invoices_invoice_number\":\"INN.20190506.00001\",\"invoices_invoice_date\":\"2019-05-06\",\"invoices_customer_id\":null,\"invoices_number_of_days\":\"0\",\"invoices_check_in_on\":\"2019-05-06 13:29:44\",\"invoices_check_out_on\":null,\"invoices_tendered\":null,\"invoices_due\":null,\"invoices_change\":null,\"invoices_payment_type\":null,\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"1\",\"invoices_created_on\":\"2019-05-06 13:29:44\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":null,\"customers_identity_type\":null,\"customers_identity_number\":null,\"customers_name\":null,\"customers_phone\":null,\"customers_email\":null,\"customers_address\":null,\"customers_created_on\":null,\"customers_created_by\":null,\"customers_deleted_on\":null,\"customers_deleted_by\":null}','true','http://localhost:5000/web/reservation/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36',NULL,'2019-05-06 06:41:44','2019-05-06 06:41:44'),(82,14,'UPDATE',15,'invoices','{\"invoices_id\":\"15\",\"invoices_invoice_number\":\"INN.20190506.00001\",\"invoices_invoice_date\":\"2019-05-06\",\"invoices_customer_id\":\"3\",\"invoices_number_of_days\":\"3\",\"invoices_check_in_on\":\"2019-05-06 13:29:44\",\"invoices_check_out_on\":\"2019-05-06 21:10:57\",\"invoices_tendered\":\"0\",\"invoices_due\":\"4410\",\"invoices_change\":\"0\",\"invoices_discount\":\"0\",\"invoices_tax\":\"0\",\"invoices_payment_type\":\"1\",\"invoices_type\":\"0\",\"invoices_parent_id\":null,\"invoices_is_draft\":\"0\",\"invoices_bank_name\":\"Bank Mandiri\",\"invoices_credit_number\":\"464.56567.5675675.657\",\"invoices_created_on\":\"2019-05-06 21:38:47\",\"invoices_created_by\":\"14\",\"invoices_deleted_on\":null,\"invoices_deleted_by\":null,\"customers_id\":\"3\",\"customers_identity_type\":\"KTP\",\"customers_identity_number\":\"34857348578347\",\"customers_name\":\"Sandy Andryanto\",\"customers_phone\":\"934839849\",\"customers_email\":\"sandy.andryantoo@gmail.com\",\"customers_address\":\"Cimahi\",\"customers_created_on\":\"2019-05-14 22:43:05\",\"customers_created_by\":\"14\",\"customers_deleted_on\":null,\"customers_deleted_by\":null}','true','http://localhost:5000/web/reservation/update','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36',NULL,'2019-05-06 14:39:03','2019-05-06 14:39:03');
/*!40000 ALTER TABLE `audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_food`
--

DROP TABLE IF EXISTS `categories_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_food` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_food`
--

LOCK TABLES `categories_food` WRITE;
/*!40000 ALTER TABLE `categories_food` DISABLE KEYS */;
INSERT INTO `categories_food` VALUES (1,'Asian Food','-','uploads/47639ab1393cb02d0e06b17ad6adbac8.png','2019-05-05 16:46:25',14,NULL,NULL);
/*!40000 ALTER TABLE `categories_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_room`
--

DROP TABLE IF EXISTS `categories_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cost` double(20,0) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_room`
--

LOCK TABLES `categories_room` WRITE;
/*!40000 ALTER TABLE `categories_room` DISABLE KEYS */;
INSERT INTO `categories_room` VALUES (1,'Delux',500,'-','uploads/b759c0467b11443dcbfb3ee9e60e194c.png','2019-05-03 15:16:11',14,NULL,NULL),(2,'VIP',10000,'-',NULL,'2019-05-05 19:12:34',14,NULL,NULL),(3,'VVIP',2000,'-',NULL,'2019-05-05 19:12:50',14,NULL,NULL);
/*!40000 ALTER TABLE `categories_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('ihq8m1rirj8q6u8el83teot0vcb04pvp','127.0.0.1',1557193498,'__ci_last_regenerate|i:1557193323;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557170480\";last_check|i:1557192328;'),('fcub7nqnh2vcv5tdvpdhl5iaua2sv81a','127.0.0.1',1557193323,'__ci_last_regenerate|i:1557193323;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557170480\";last_check|i:1557192328;'),('4na1tj4vn084vbkjnvr5v73gl7noco57','127.0.0.1',1557193011,'__ci_last_regenerate|i:1557193011;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557170480\";last_check|i:1557192328;'),('ad8k7u78bs413j63ku6c28u0j4125rjn','127.0.0.1',1557192651,'__ci_last_regenerate|i:1557192651;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557170480\";last_check|i:1557192328;'),('ovqvi2fkt5trc5lop6iam5kjl1mlk3h4','127.0.0.1',1557192328,'__ci_last_regenerate|i:1557192328;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557170480\";last_check|i:1557192328;'),('gms4kj4q56b4q0cdbv96e9qkie3p659g','127.0.0.1',1557179242,'__ci_last_regenerate|i:1557179070;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('qfnq18d046p2vavljsj403oojm0kv4kd','127.0.0.1',1557179070,'__ci_last_regenerate|i:1557179070;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('78m0uubj1melvtodksqtveu40siijkoa','127.0.0.1',1557178700,'__ci_last_regenerate|i:1557178700;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('8r46nt762fg724kms8406mfc1t2gn1c8','127.0.0.1',1557178396,'__ci_last_regenerate|i:1557178396;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('s9u40jq8ps2aksbvtogvk1sso8e84793','127.0.0.1',1557178000,'__ci_last_regenerate|i:1557178000;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('6hbblqkgq18riufdpf83u4d0nud5b9od','127.0.0.1',1557170480,'__ci_last_regenerate|i:1557170480;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('g6pq1iuc7fash20j1jomug51gsqi60sr','127.0.0.1',1557170918,'__ci_last_regenerate|i:1557170918;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('qdn4e1hsf8sg6pr2li9tqr6lt8hkt92b','127.0.0.1',1557171998,'__ci_last_regenerate|i:1557171998;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('6r6u81lbntf4conle8gb8nkp15umm8ch','127.0.0.1',1557172578,'__ci_last_regenerate|i:1557172578;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('uijv4d143jhudmk30u9dm2v689u6gn47','127.0.0.1',1557172908,'__ci_last_regenerate|i:1557172908;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('a98vv6osemi34lu0crh6rcvedbt8ommd','127.0.0.1',1557173361,'__ci_last_regenerate|i:1557173361;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('b9lc6df8t09qa8tl0h1plukapee3oabd','127.0.0.1',1557173679,'__ci_last_regenerate|i:1557173679;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('foticluj6o6qms5u0ugu3qfo0u3cd001','127.0.0.1',1557173995,'__ci_last_regenerate|i:1557173995;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('5b1869a40gvc5clkhmle40ti7nvjasb1','127.0.0.1',1557174666,'__ci_last_regenerate|i:1557174666;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('55m1j4nlh4md1snuc40p2esj354q2i8p','127.0.0.1',1557174992,'__ci_last_regenerate|i:1557174992;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('k37qe9acvv8vv1te5eqmubdp3gt0ltt6','127.0.0.1',1557175961,'__ci_last_regenerate|i:1557175961;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('dq2ledrn2s3b60fs2faeip2qjhao5l6m','127.0.0.1',1557176279,'__ci_last_regenerate|i:1557176279;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('t5lmm4ev8cvkj8blrjddpluimbhmemte','127.0.0.1',1557176809,'__ci_last_regenerate|i:1557176809;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('g7i92h2010ak3vhn5vum19hefimn5fp6','127.0.0.1',1557177199,'__ci_last_regenerate|i:1557177199;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;'),('ekdmn1881k61p53np5du0vfhr4b40u07','127.0.0.1',1557177510,'__ci_last_regenerate|i:1557177510;identity|s:21:\"admin.admin@devel.com\";email|s:21:\"admin.admin@devel.com\";user_id|s:2:\"14\";old_last_login|s:10:\"1557147798\";last_check|i:1557170480;');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'company-name','PT Hello World'),(2,'company-npwp','12345'),(3,'company-postal-code','57567'),(4,'company-email','hello.world@test.com'),(5,'company-phone','458648567584678'),(6,'company-address','Jalan Asia Afrika bandung'),(7,'company-province','Jawa Barat'),(8,'company-regency','Bandung'),(9,'company-district','Asia Afrika'),(10,'company-village','Alun alun'),(11,'company-logo','uploads/00d60f6423114c41066702a1105cbd88.jpg');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identity_type` varchar(255) DEFAULT NULL,
  `identity_number` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'NPWP','11212.234234.123123.111','PT PERTAMINA','458694586989','pertamina@test.com','Jakarta Pusat','2019-05-05 15:26:15',14,'2019-05-05 15:26:50',14),(2,'KTP','47867458678457','admindevel','9456859468','sandyandryanto@outlook.com','-','2019-05-05 15:26:36',14,'2019-05-05 15:26:43',14),(3,'KTP','34857348578347','Sandy Andryanto','934839849','sandy.andryantoo@gmail.com','Cimahi','2019-05-14 22:43:05',14,NULL,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cost` double(20,0) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,'Diskon Penjualan',2,'-',0,'2019-05-06 05:26:17',14,NULL,NULL,1),(2,'Diskon Akhir Tahun',1,'-',1,'2019-05-06 04:28:45',14,NULL,NULL,1),(3,'Diskon Ramadhan',10,'-',0,'2019-05-06 08:30:22',14,NULL,NULL,1);
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra`
--

DROP TABLE IF EXISTS `extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extra` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cost` double(20,0) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra`
--

LOCK TABLES `extra` WRITE;
/*!40000 ALTER TABLE `extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `foods_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories_food` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` VALUES (1,1,'Nasi Goreng Mafia','-','uploads/533bcc501a38509f1310102d7c0aab82.jpg',5000,'2019-05-05 16:57:45',14,NULL,NULL);
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (39,'admin','ADMIN',NULL,NULL,NULL,NULL),(40,'receptionst','RECEPTIONST',NULL,NULL,NULL,NULL),(41,'manager','MANAGER',NULL,NULL,NULL,NULL),(42,'director','DIRECTOR',NULL,NULL,'2019-05-04 02:27:37',14),(43,'supervisor','SUPERVISOR',NULL,NULL,NULL,NULL),(44,'engineer','ENGINEER',NULL,NULL,NULL,NULL),(45,'ddd','ddd','2019-05-05 13:54:22',14,NULL,NULL),(46,'AAA','AAAA','2019-05-05 13:54:40',14,NULL,NULL),(47,'Super Admin','Devel only','2019-05-05 14:55:41',14,NULL,NULL);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_discount`
--

DROP TABLE IF EXISTS `invoice_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_discount` (
  `invoice_id` int(10) unsigned NOT NULL,
  `discount_id` int(10) unsigned NOT NULL,
  `cost` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`discount_id`),
  KEY `discount_id` (`discount_id`),
  CONSTRAINT `invoice_discount_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_discount_ibfk_2` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_discount`
--

LOCK TABLES `invoice_discount` WRITE;
/*!40000 ALTER TABLE `invoice_discount` DISABLE KEYS */;
INSERT INTO `invoice_discount` VALUES (15,1,90),(15,3,450);
/*!40000 ALTER TABLE `invoice_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_extra`
--

DROP TABLE IF EXISTS `invoice_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_extra` (
  `invoice_id` int(10) unsigned NOT NULL,
  `extra_id` int(10) unsigned NOT NULL,
  `cost` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`extra_id`),
  KEY `extra_id` (`extra_id`),
  CONSTRAINT `invoice_extra_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_extra_ibfk_2` FOREIGN KEY (`extra_id`) REFERENCES `extra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_extra`
--

LOCK TABLES `invoice_extra` WRITE;
/*!40000 ALTER TABLE `invoice_extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_food`
--

DROP TABLE IF EXISTS `invoice_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_food` (
  `invoice_id` int(10) unsigned NOT NULL,
  `food_id` int(10) unsigned NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` double(20,0) DEFAULT NULL,
  `total` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_food`
--

LOCK TABLES `invoice_food` WRITE;
/*!40000 ALTER TABLE `invoice_food` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_room`
--

DROP TABLE IF EXISTS `invoice_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_room` (
  `invoice_id` int(11) unsigned NOT NULL,
  `room_id` int(10) unsigned NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `occupant` int(11) DEFAULT NULL,
  `price` double(20,0) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `total` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`room_id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `invoice_room_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_room_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_room`
--

LOCK TABLES `invoice_room` WRITE;
/*!40000 ALTER TABLE `invoice_room` DISABLE KEYS */;
INSERT INTO `invoice_room` VALUES (15,1,2,2,500,3,1500),(15,2,2,2,500,3,1500),(15,3,2,2,500,3,1500);
/*!40000 ALTER TABLE `invoice_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_service`
--

DROP TABLE IF EXISTS `invoice_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_service` (
  `invoice_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `cost` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`service_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `invoice_service_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_service`
--

LOCK TABLES `invoice_service` WRITE;
/*!40000 ALTER TABLE `invoice_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_tax`
--

DROP TABLE IF EXISTS `invoice_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_tax` (
  `invoice_id` int(10) unsigned NOT NULL,
  `tax_id` int(10) unsigned NOT NULL,
  `cost` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`,`tax_id`),
  KEY `tax_id` (`tax_id`),
  CONSTRAINT `invoice_tax_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_tax_ibfk_2` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_tax`
--

LOCK TABLES `invoice_tax` WRITE;
/*!40000 ALTER TABLE `invoice_tax` DISABLE KEYS */;
INSERT INTO `invoice_tax` VALUES (15,1,450);
/*!40000 ALTER TABLE `invoice_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(255) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `number_of_days` int(11) DEFAULT '0',
  `check_in_on` datetime DEFAULT NULL,
  `check_out_on` datetime DEFAULT NULL,
  `tendered` double(20,0) DEFAULT NULL,
  `due` double(20,0) DEFAULT NULL,
  `change` double(20,0) DEFAULT NULL,
  `discount` double(20,0) DEFAULT NULL,
  `tax` double(20,0) DEFAULT NULL,
  `payment_type` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `is_draft` tinyint(4) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `credit_number` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`parent_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (15,'INN.20190506.00001','2019-05-06',3,3,'2019-05-06 13:29:44','2019-05-06 21:10:57',0,4410,0,0,0,1,0,NULL,0,'Bank Mandiri','464.56567.5675675.657','2019-05-06 21:39:12',14,NULL,NULL);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempts`
--

LOCK TABLES `login_attempts` WRITE;
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `route_id` int(10) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  `can_create` tinyint(4) DEFAULT NULL,
  `can_update` tinyint(4) DEFAULT NULL,
  `can_view` tinyint(4) DEFAULT NULL,
  `can_delete` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`route_id`,`group_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permissions_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (190,39,1,1,1,1),(190,40,1,1,1,1),(190,41,1,1,1,1),(190,42,1,1,1,1),(190,43,1,1,1,1),(190,44,1,1,1,1),(190,45,1,1,1,1),(190,46,1,1,1,1),(190,47,1,1,1,1),(191,39,1,1,1,1),(191,40,1,1,1,1),(191,41,1,1,1,1),(191,42,1,1,1,1),(191,43,1,1,1,1),(191,44,1,1,1,1),(191,45,0,0,0,0),(191,46,0,0,0,0),(191,47,0,0,0,0),(192,39,1,1,1,1),(192,40,1,1,1,1),(192,41,1,1,1,1),(192,42,1,1,1,1),(192,43,1,1,1,1),(192,44,1,1,1,1),(192,45,0,0,0,0),(192,46,0,0,0,0),(192,47,0,0,0,0),(193,39,1,1,1,1),(193,40,1,1,1,1),(193,41,1,1,1,1),(193,42,1,1,1,1),(193,43,1,1,1,1),(193,44,1,1,1,1),(193,45,1,1,1,1),(193,46,1,1,1,1),(193,47,1,1,1,1),(194,39,1,1,1,1),(194,40,1,1,1,1),(194,41,1,1,1,1),(194,42,1,1,1,1),(194,43,1,1,1,1),(194,44,1,1,1,1),(194,45,0,0,0,0),(194,46,0,0,0,0),(194,47,0,0,0,0),(195,39,1,1,1,1),(195,40,1,1,1,1),(195,41,1,1,1,1),(195,42,1,1,1,1),(195,43,1,1,1,1),(195,44,1,1,1,1),(195,45,1,1,1,1),(195,46,1,1,1,1),(195,47,1,1,1,1),(196,39,1,1,1,1),(196,40,1,1,1,1),(196,41,1,1,1,1),(196,42,1,1,1,1),(196,43,1,1,1,1),(196,44,1,1,1,1),(196,45,1,1,1,1),(196,46,1,1,1,1),(196,47,1,1,1,1),(197,39,1,1,1,1),(197,40,1,1,1,1),(197,41,1,1,1,1),(197,42,1,1,1,1),(197,43,1,1,1,1),(197,44,1,1,1,1),(197,45,1,1,1,1),(197,46,1,1,1,1),(197,47,1,1,1,1),(198,39,1,1,1,1),(198,40,1,1,1,1),(198,41,1,1,1,1),(198,42,1,1,1,1),(198,43,1,1,1,1),(198,44,1,1,1,1),(198,45,1,1,1,1),(198,46,1,1,1,1),(198,47,1,1,1,1),(199,39,1,1,1,1),(199,40,1,1,1,1),(199,41,1,1,1,1),(199,42,1,1,1,1),(199,43,1,1,1,1),(199,44,1,1,1,1),(199,45,1,1,1,1),(199,46,1,1,1,1),(199,47,1,1,1,1),(200,39,1,1,1,1),(200,40,1,1,1,1),(200,41,1,1,1,1),(200,42,1,1,1,1),(200,43,1,1,1,1),(200,44,1,1,1,1),(200,45,1,1,1,1),(200,46,1,1,1,1),(200,47,1,1,1,1),(201,39,1,1,1,1),(201,40,1,1,1,1),(201,41,1,1,1,1),(201,42,1,1,1,1),(201,43,1,1,1,1),(201,44,1,1,1,1),(201,45,1,1,1,1),(201,46,1,1,1,1),(201,47,1,1,1,1),(202,39,1,1,1,1),(202,40,1,1,1,1),(202,41,1,1,1,1),(202,42,1,1,1,1),(202,43,1,1,1,1),(202,44,1,1,1,1),(202,45,1,1,1,1),(202,46,1,1,1,1),(202,47,1,1,1,1),(203,39,1,1,1,1),(203,40,1,1,1,1),(203,41,1,1,1,1),(203,42,1,1,1,1),(203,43,1,1,1,1),(203,44,1,1,1,1),(203,45,1,1,1,1),(203,46,1,1,1,1),(203,47,1,1,1,1),(204,39,1,1,1,1),(204,40,1,1,1,1),(204,41,1,1,1,1),(204,42,1,1,1,1),(204,43,1,1,1,1),(204,44,1,1,1,1),(204,45,1,1,1,1),(204,46,1,1,1,1),(204,47,1,1,1,1),(205,39,1,1,1,1),(205,40,1,1,1,1),(205,41,1,1,1,1),(205,42,1,1,1,1),(205,43,1,1,1,1),(205,44,1,1,1,1),(205,45,1,1,1,1),(205,46,1,1,1,1),(205,47,1,1,1,1),(206,39,1,1,1,1),(206,40,1,1,1,1),(206,41,1,1,1,1),(206,42,1,1,1,1),(206,43,1,1,1,1),(206,44,1,1,1,1),(206,45,1,1,1,1),(206,46,1,1,1,1),(206,47,1,1,1,1),(207,39,1,1,1,1),(207,40,1,1,1,1),(207,41,1,1,1,1),(207,42,1,1,1,1),(207,43,1,1,1,1),(207,44,1,1,1,1),(207,45,1,1,1,1),(207,46,1,1,1,1),(207,47,1,1,1,1),(208,39,1,1,1,1),(208,40,1,1,1,1),(208,41,1,1,1,1),(208,42,1,1,1,1),(208,43,1,1,1,1),(208,44,1,1,1,1),(208,45,1,1,1,1),(208,46,1,1,1,1),(208,47,1,1,1,1),(209,39,1,1,1,1),(209,40,1,1,1,1),(209,41,1,1,1,1),(209,42,1,1,1,1),(209,43,1,1,1,1),(209,44,1,1,1,1),(209,45,1,1,1,1),(209,46,1,1,1,1),(209,47,1,1,1,1),(210,39,1,1,1,1),(210,40,1,1,1,1),(210,41,1,1,1,1),(210,42,1,1,1,1),(210,43,1,1,1,1),(210,44,1,1,1,1),(210,45,1,1,1,1),(210,46,1,1,1,1),(210,47,1,1,1,1),(211,39,1,1,1,1),(211,45,1,1,1,1),(211,46,1,1,1,1),(211,47,1,1,1,1),(212,39,1,1,1,1),(212,47,1,1,1,1);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_service`
--

DROP TABLE IF EXISTS `room_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_service` (
  `room_id` int(10) unsigned NOT NULL,
  `service_id` int(10) unsigned NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`room_id`,`service_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `room_service_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `room_service_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_service`
--

LOCK TABLES `room_service` WRITE;
/*!40000 ALTER TABLE `room_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned DEFAULT NULL,
  `status_id` int(10) unsigned DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `occupant` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rooms_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status_room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,1,1,'D001',2,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(2,1,2,'D002',2,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(3,1,3,'D003',2,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(4,2,1,'V001',3,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(5,2,2,'V002',3,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(6,2,3,'V003',3,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(7,3,1,'VV001',4,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(8,3,2,'VV002',4,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL),(9,3,3,'VV003',4,0,'-',NULL,'2019-05-06 02:23:39',14,NULL,NULL);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `protected` tinyint(4) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `routes_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (190,'Dashboard','dashboard',NULL,NULL,1,NULL),(191,'Master Data',NULL,NULL,NULL,2,NULL),(192,'Transaksi',NULL,NULL,NULL,3,NULL),(193,'Laporan','laporan',NULL,NULL,4,NULL),(194,'Pengaturan',NULL,NULL,NULL,5,NULL),(195,'Kategori Menu','category_food',NULL,NULL,1,191),(196,'Kategori Kamar','category_room',NULL,NULL,2,191),(197,'Diskon','discount',NULL,NULL,NULL,194),(198,'Extra','extra',NULL,NULL,3,191),(199,'Menu','menu',NULL,NULL,4,191),(200,'Akses Pengguna','role',NULL,NULL,NULL,194),(201,'Reservasi','reservation',NULL,NULL,NULL,192),(202,'Restoran','resto',NULL,NULL,NULL,192),(203,'Kamar','room',NULL,NULL,5,191),(204,'Servis','service',NULL,NULL,6,191),(205,'Status Ruangan','status_room',NULL,NULL,7,191),(206,'Pajak','tax',NULL,NULL,NULL,194),(207,'Pengguna','user',NULL,NULL,NULL,194),(208,'Profil Saya','profile',NULL,1,NULL,194),(209,'Akun Saya','account',NULL,1,NULL,194),(210,'Profil Perusahaan','company',NULL,NULL,NULL,194),(211,'Audit','audit',NULL,NULL,NULL,194),(212,'Pelanggan','customer',NULL,NULL,NULL,191);
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cost` double(20,0) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `config_value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_room`
--

DROP TABLE IF EXISTS `status_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_room`
--

LOCK TABLES `status_room` WRITE;
/*!40000 ALTER TABLE `status_room` DISABLE KEYS */;
INSERT INTO `status_room` VALUES (1,'Tersedia','-','2019-05-06 02:22:03',14,NULL,NULL),(2,'Di Bersihkan','-','2019-05-06 02:22:03',14,NULL,NULL),(3,'Tidak Dipakai','-','2019-05-06 02:22:03',14,NULL,NULL);
/*!40000 ALTER TABLE `status_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cost` double(20,0) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (1,'PPH',10,'-',0,'2019-05-06 05:26:52',14,NULL,NULL,1),(2,'Service',5,'-',1,'2019-05-06 04:35:13',14,NULL,NULL,1);
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_email` (`email`),
  UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  UNIQUE KEY `uc_remember_selector` (`remember_selector`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (14,'0.0.0.0','admin','$2y$10$ljWogeUXrA4fEHmVG6V/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK','admin.admin@devel.com','0792 6022 340',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698631,1557192328,1),(15,'0.0.0.0','fitriani00','$2y$10$ej7R/wCuN96.x4DlsCbRb.DZ5U9eQtF5WU2sK4MsicInSA8p9D1qu','langgeng.pradipta@example.org','(+62) 219 0241 885',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698631,NULL,1),(16,'0.0.0.0','gawati82','$2y$10$ljWogeUXrA4fEHmVG6V/W..4rKVqJhtGPgeJdLNUfyNn3GDlilqMK','kalim.andriani@example.com','0395 0372 342',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698631,NULL,1),(17,'0.0.0.0','halima34','$2y$10$dJ6Xap0h8byZbOyRgSuIKu.LGC4myUbbY1iHuleUZXAXV2zbPf3ke','ryolanda@example.net','0704 4832 1580',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698632,NULL,1),(18,'0.0.0.0','situmorang.eli','$2y$10$qySdFDC8lVa1qm5xx73BMuo.KFGpgSe.oGDMv1ctUDgRIdKY2D9mu','dirja.hutapea@example.net','0544 5180 2405',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698632,NULL,1),(19,'0.0.0.0','xmayasari','$2y$10$FC2xhsSJP1wiUoAZmdNRHeONz21.3YY55ZZy.lL5jqKMwju3FSoeq','yuni27@example.com','(+62) 287 3607 9709',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556698632,NULL,1),(20,'127.0.0.1','sandy_andryanto','$2y$10$3bc1an/MbkNBNcT7hq.gKuc.tZx9cfPlgGekZVDYs1Vsv0TwGmJ4a','sandy_andryanto32@testing.com','85759062617',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556931794,NULL,1),(21,'127.0.0.1','kaguya','$2y$10$z1O1JdqoY5tVR2yX9KDjbut0G9HcVHrBDdFWl3lZ1wZqoMisuQMCq','kaguya@test.com','303030303030',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556932135,NULL,1),(22,'127.0.0.1','sasuke','$2y$10$oVsAXhHGIyyR/19Y3AJV5ecauIbKnJzH4QdmTs6zYzNp1dfREXHlS','sasuke@test.com','858585588','f10d617dffe1d9fabfb7','$2y$10$I2Lf.mfONOlT1a7SM64nnu0e/9SZ8aDJ6Xc4JrW87yzu.mL/evCEW',NULL,NULL,NULL,NULL,NULL,1556932332,NULL,1),(23,'127.0.0.1','kakashi','$2y$10$BU439RpOOiBPyZaX2XPEiu9C1/29Ms37/K4InbY9HwWcSNxqBjWIC','kakashi@test.com','959595959',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1556932363,NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (15,14,39),(16,15,40),(17,16,41),(18,17,42),(19,18,43),(20,19,44),(21,20,41),(22,20,42),(23,20,43),(34,21,40),(35,21,41),(36,21,42),(37,21,43),(38,21,44),(27,22,41),(28,23,44);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_profile`
--

DROP TABLE IF EXISTS `users_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_profile` (
  `user_id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `blood` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `address` longtext,
  `description` longtext,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `users_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_profile`
--

LOCK TABLES `users_profile` WRITE;
/*!40000 ALTER TABLE `users_profile` DISABLE KEYS */;
INSERT INTO `users_profile` VALUES (14,'Sandy','Andryanto',0,0,0,'Kebon Kopi','Kumaha Maneh Weh Lah','1991-08-31','Cimahi','uploads/b12bcfcdbcd83b38467761a35ce22153.png'),(15,'Puput','Hutapea',1,1,1,'Ut est eum voluptates quod suscipit enim suscipit. Eos est aut minus eos commodi non. Ratione omnis dolore occaecati et.','Eveniet voluptate veritatis minus sunt itaque odio. Ut ipsum corporis ut omnis et. Ut laudantium dicta dolor sunt aut.','2019-05-01','Tasikmalaya',NULL),(16,'Intan','Melani',0,0,1,'Mollitia rerum praesentium consequatur corrupti tempore accusantium error. Rem laboriosam consequatur sit aspernatur sit.','Molestiae ab eos aut consequatur. Iure ipsa iste eum quia laborum. Dolor est ut qui soluta ea.','2019-05-01','Gorontalo',NULL),(17,'Irwan','Wulandari',0,2,0,'Nemo fuga velit qui autem beatae similique nostrum. Quo dignissimos saepe iure cumque. Est aut quia facilis veritatis nemo pariatur et quibusdam. Ut tenetur ut eveniet ullam omnis.','Consequatur ullam beatae sunt quidem consectetur illum quos. Omnis quod et inventore dolorem architecto nihil. Sed mollitia et alias voluptates. Dolor reiciendis fuga ratione.','2019-05-01','Solok',NULL),(18,'Raditya','Prayoga',1,1,0,'Ducimus delectus corporis voluptatem ea totam impedit deleniti. Ut sunt quaerat distinctio ut rerum deserunt. Culpa quia molestiae dolores necessitatibus ut. Rerum deleniti consequatur quasi aut.','Architecto numquam quisquam tenetur sequi et. Quia perspiciatis at omnis et occaecati ipsa.','2019-05-01','Kotamobagu',NULL),(19,'Silvia','Mardhiyah',0,3,2,'Iusto dolore dolorem explicabo. Earum inventore repellat ab facere cumque iure temporibus. Omnis molestiae rerum adipisci et aspernatur ut adipisci. Non delectus ut debitis ut.','Veniam delectus et fugiat soluta voluptatem a unde. Dolore ab sed minima doloremque voluptate ea at. Pariatur mollitia perspiciatis vel.','2019-05-01','Madiun',NULL),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-07  8:45:37
