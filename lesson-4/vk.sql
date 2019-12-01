-- MySQL dump 10.13  Distrib 8.0.18, for Linux (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_closed` tinyint(1) DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'illo','2019-11-27 16:52:13',NULL,NULL),(2,'optio','2019-11-27 16:52:13',NULL,NULL),(3,'aut','2019-11-27 16:52:13',1,'2019-11-27 16:56:35'),(4,'enim','2019-11-27 16:52:13',NULL,NULL),(5,'esse','2019-11-27 16:52:13',NULL,NULL),(6,'beatae','2019-11-27 16:52:13',NULL,NULL),(7,'labore','2019-11-27 16:52:13',1,'2019-11-27 16:56:35'),(8,'commodi','2019-11-27 16:52:13',NULL,NULL),(9,'quaerat','2019-11-27 16:52:13',NULL,NULL),(10,'incidunt','2019-11-27 16:52:13',NULL,NULL),(11,'delectus','2019-11-27 16:52:13',NULL,NULL),(12,'ut','2019-11-27 16:52:13',NULL,NULL),(13,'odio','2019-11-27 16:52:13',NULL,NULL),(14,'impedit','2019-11-27 16:52:13',NULL,NULL),(15,'quibusdam','2019-11-27 16:52:13',NULL,NULL),(16,'quam','2019-11-27 16:52:13',NULL,NULL),(17,'molestiae','2019-11-27 16:52:13',NULL,NULL),(18,'ad','2019-11-27 16:52:13',NULL,NULL),(19,'possimus','2019-11-27 16:52:13',NULL,NULL),(20,'rem','2019-11-27 16:52:13',NULL,NULL),(21,'eius','2019-11-27 16:52:13',NULL,NULL),(22,'perspiciatis','2019-11-27 16:52:13',NULL,NULL),(23,'cum','2019-11-27 16:52:13',NULL,NULL),(24,'voluptatem','2019-11-27 16:52:13',NULL,NULL),(25,'velit','2019-11-27 16:52:13',NULL,NULL),(26,'omnis','2019-11-27 16:52:13',NULL,NULL),(27,'quis','2019-11-27 16:52:13',NULL,NULL),(28,'iusto','2019-11-27 16:52:13',NULL,NULL),(29,'sed','2019-11-27 16:52:13',NULL,NULL),(30,'suscipit','2019-11-27 16:52:13',NULL,NULL),(31,'est','2019-11-27 16:52:13',NULL,NULL),(32,'fuga','2019-11-27 16:52:13',NULL,NULL),(33,'autem','2019-11-27 16:52:13',1,'2019-11-27 16:56:35'),(34,'eligendi','2019-11-27 16:52:13',NULL,NULL),(35,'ab','2019-11-27 16:52:13',NULL,NULL),(36,'saepe','2019-11-27 16:52:13',NULL,NULL),(37,'vero','2019-11-27 16:52:13',NULL,NULL),(38,'numquam','2019-11-27 16:52:13',NULL,NULL),(39,'modi','2019-11-27 16:52:13',NULL,NULL),(40,'qui','2019-11-27 16:52:13',NULL,NULL),(41,'corrupti','2019-11-27 16:52:13',NULL,NULL),(42,'amet','2019-11-27 16:52:13',NULL,NULL),(43,'necessitatibus','2019-11-27 16:52:13',NULL,NULL),(44,'explicabo','2019-11-27 16:52:13',NULL,NULL),(45,'fugiat','2019-11-27 16:52:13',NULL,NULL),(46,'placeat','2019-11-27 16:52:13',NULL,NULL),(47,'unde','2019-11-27 16:52:13',NULL,NULL),(48,'tempore','2019-11-27 16:52:13',NULL,NULL),(49,'sint','2019-11-27 16:52:13',NULL,NULL),(50,'rerum','2019-11-27 16:52:13',NULL,NULL),(51,'consequatur','2019-11-27 16:52:13',NULL,NULL),(52,'dolores','2019-11-27 16:52:13',NULL,NULL),(53,'cupiditate','2019-11-27 16:52:13',NULL,NULL),(54,'atque','2019-11-27 16:52:13',NULL,NULL),(55,'accusamus','2019-11-27 16:52:13',NULL,NULL),(56,'repellendus','2019-11-27 16:52:13',1,'2019-11-27 16:56:35'),(57,'quia','2019-11-27 16:52:13',NULL,NULL),(58,'sapiente','2019-11-27 16:52:13',NULL,NULL),(59,'nihil','2019-11-27 16:52:13',NULL,NULL),(60,'laudantium','2019-11-27 16:52:13',NULL,NULL),(61,'deserunt','2019-11-27 16:52:13',NULL,NULL),(62,'nulla','2019-11-27 16:52:13',NULL,NULL),(63,'quod','2019-11-27 16:52:13',NULL,NULL),(64,'aliquid','2019-11-27 16:52:13',NULL,NULL),(65,'iure','2019-11-27 16:52:13',NULL,NULL),(66,'alias','2019-11-27 16:52:13',NULL,NULL),(67,'et','2019-11-27 16:52:13',NULL,NULL),(68,'culpa','2019-11-27 16:52:13',NULL,NULL),(69,'animi','2019-11-27 16:52:13',NULL,NULL),(70,'dolor','2019-11-27 16:52:13',NULL,NULL),(71,'totam','2019-11-27 16:52:13',NULL,NULL),(72,'in','2019-11-27 16:52:13',1,'2019-11-27 16:56:35'),(73,'reprehenderit','2019-11-27 16:52:13',NULL,NULL),(74,'error','2019-11-27 16:52:13',NULL,NULL),(75,'distinctio','2019-11-27 16:52:13',NULL,NULL),(76,'laboriosam','2019-11-27 16:52:13',NULL,NULL),(77,'sunt','2019-11-27 16:52:13',NULL,NULL),(78,'deleniti','2019-11-27 16:52:13',NULL,NULL),(79,'vel','2019-11-27 16:52:13',NULL,NULL),(80,'libero','2019-11-27 16:52:13',NULL,NULL),(81,'assumenda','2019-11-27 16:52:13',NULL,NULL),(82,'hic','2019-11-27 16:52:13',NULL,NULL),(83,'nobis','2019-11-27 16:52:13',NULL,NULL),(84,'quae','2019-11-27 16:52:13',NULL,NULL),(85,'similique','2019-11-27 16:52:13',NULL,NULL),(86,'eum','2019-11-27 16:52:13',NULL,NULL),(87,'tenetur','2019-11-27 16:52:13',NULL,NULL),(88,'expedita','2019-11-27 16:52:13',NULL,NULL),(89,'reiciendis','2019-11-27 16:52:13',NULL,NULL),(90,'natus','2019-11-27 16:52:13',NULL,NULL),(91,'aliquam','2019-11-27 16:52:13',NULL,NULL),(92,'blanditiis','2019-11-27 16:52:13',NULL,NULL),(93,'ipsam','2019-11-27 16:52:13',NULL,NULL),(94,'minima','2019-11-27 16:52:13',NULL,NULL),(95,'non','2019-11-27 16:52:13',NULL,NULL),(96,'facere','2019-11-27 16:52:13',NULL,NULL),(97,'officia','2019-11-27 16:52:13',NULL,NULL),(98,'voluptatibus','2019-11-27 16:52:13',NULL,NULL),(99,'ducimus','2019-11-27 16:52:13',NULL,NULL),(100,'ea','2019-11-27 16:52:13',NULL,NULL);
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities_users`
--

DROP TABLE IF EXISTS `communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `is_banned` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities_users`
--

LOCK TABLES `communities_users` WRITE;
/*!40000 ALTER TABLE `communities_users` DISABLE KEYS */;
INSERT INTO `communities_users` VALUES (1,33,1,NULL),(2,8,1,NULL),(3,51,NULL,NULL),(4,45,1,NULL),(5,61,NULL,NULL),(6,18,NULL,NULL),(7,50,NULL,NULL),(8,89,NULL,NULL),(9,24,NULL,1),(10,94,NULL,NULL),(11,1,NULL,NULL),(12,44,NULL,NULL),(13,84,NULL,NULL),(14,96,NULL,NULL),(15,55,NULL,NULL),(16,28,NULL,NULL),(17,43,NULL,NULL),(18,77,NULL,1),(19,12,1,NULL),(20,14,NULL,NULL),(21,73,NULL,NULL),(22,39,NULL,NULL),(23,15,NULL,NULL),(24,97,NULL,NULL),(25,86,NULL,NULL),(26,5,NULL,NULL),(27,78,NULL,NULL),(28,69,NULL,NULL),(29,27,NULL,NULL),(30,63,NULL,NULL),(31,92,NULL,NULL),(32,93,NULL,NULL),(33,22,NULL,NULL),(34,37,NULL,NULL),(35,85,NULL,NULL),(36,68,NULL,NULL),(37,90,NULL,NULL),(38,3,1,NULL),(39,9,NULL,1),(40,62,NULL,NULL),(41,53,NULL,NULL),(42,100,NULL,NULL),(43,81,NULL,NULL),(44,17,NULL,NULL),(45,72,1,NULL),(46,58,NULL,NULL),(47,80,NULL,NULL),(48,21,NULL,NULL),(49,26,NULL,NULL),(50,71,NULL,NULL),(51,60,NULL,NULL),(52,95,NULL,NULL),(53,11,NULL,NULL),(54,36,NULL,NULL),(55,4,NULL,NULL),(56,88,NULL,NULL),(57,47,NULL,NULL),(58,41,NULL,NULL),(59,59,NULL,NULL),(60,87,NULL,NULL),(61,35,NULL,NULL),(62,49,NULL,NULL),(63,57,NULL,NULL),(64,42,NULL,NULL),(65,98,NULL,NULL),(66,52,NULL,NULL),(67,79,NULL,NULL),(68,99,NULL,NULL),(69,74,NULL,NULL),(70,32,NULL,NULL),(71,2,NULL,NULL),(72,20,NULL,NULL),(73,7,1,NULL),(74,25,NULL,NULL),(75,54,NULL,NULL),(76,66,NULL,NULL),(77,30,NULL,NULL),(78,19,NULL,NULL),(79,91,NULL,NULL),(80,83,NULL,NULL),(81,82,NULL,NULL),(82,48,NULL,NULL),(83,70,NULL,NULL),(84,10,NULL,NULL),(85,16,NULL,NULL),(86,56,1,NULL),(87,6,NULL,NULL),(88,76,1,NULL),(89,65,NULL,NULL),(90,31,NULL,NULL),(91,75,NULL,NULL),(92,23,1,NULL),(93,34,NULL,NULL),(94,38,NULL,NULL),(95,40,NULL,NULL),(96,13,NULL,1),(97,67,NULL,NULL),(98,64,NULL,NULL),(99,46,NULL,1),(100,29,NULL,NULL);
/*!40000 ALTER TABLE `communities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
INSERT INTO `friendship` VALUES (1,93,1,'2005-06-03 17:56:41','2003-12-02 04:42:50'),(2,57,2,'1996-11-19 19:28:44','1998-11-10 10:56:00'),(3,6,3,'2014-08-09 13:42:04','1982-10-06 00:25:54'),(4,3,4,'1994-06-29 16:50:57','1970-03-25 06:47:48'),(5,46,5,'1982-01-17 01:56:51','2000-08-19 09:53:04'),(6,100,1,'2018-04-22 07:55:02','2009-02-06 04:34:57'),(7,18,2,'1974-08-23 00:11:21','2007-08-31 06:33:20'),(8,8,3,'1995-04-19 00:39:51','1976-12-31 11:27:19'),(9,24,4,'2001-05-19 11:05:49','2018-06-21 15:26:27'),(10,23,5,'1974-08-30 06:33:28','1992-04-13 11:40:08'),(11,54,1,'2007-09-25 12:48:34','1977-05-12 15:32:26'),(12,67,2,'1990-04-27 15:09:29','1984-05-20 17:53:50'),(13,9,3,'2016-10-12 14:49:36','2005-07-02 02:46:12'),(14,12,4,'1973-07-07 18:48:25','1993-07-12 04:10:44'),(15,95,5,'1977-04-17 07:50:32','1995-06-22 01:59:15'),(16,94,1,'2019-07-11 12:39:38','2013-02-07 10:48:35'),(17,85,2,'1972-01-08 00:13:37','1978-06-13 11:19:39'),(18,52,3,'1992-07-14 09:10:14','1970-03-21 00:03:15'),(19,14,4,'1987-10-13 10:50:00','2006-12-01 13:45:53'),(20,19,5,'2013-08-26 10:13:32','1977-03-12 15:29:15'),(21,66,1,'2014-03-10 21:54:29','2007-02-07 00:50:17'),(22,68,2,'2014-05-06 08:54:45','2008-10-08 04:06:48'),(23,28,3,'2013-11-22 01:58:09','2014-12-10 00:03:20'),(24,44,4,'1998-06-07 10:23:08','1995-04-30 19:37:29'),(25,43,5,'1980-03-31 18:33:22','1992-03-22 09:13:20'),(26,82,1,'2019-05-31 09:48:15','1987-09-22 13:44:44'),(27,96,2,'1977-08-02 20:51:44','1986-07-12 04:18:13'),(28,75,3,'2009-10-02 18:03:01','1986-08-24 12:55:39'),(29,42,4,'2013-05-28 18:21:52','1972-12-09 13:17:55'),(30,69,5,'1976-02-18 13:57:05','1995-09-15 19:09:44'),(31,36,1,'2014-01-16 22:39:35','1990-08-15 00:05:31'),(32,32,2,'2005-10-24 22:56:53','2019-04-04 01:29:32'),(33,63,3,'1979-11-30 12:56:13','2016-06-07 10:48:19'),(34,50,4,'1987-03-19 13:18:00','2008-11-30 13:59:27'),(35,51,5,'2001-08-27 11:10:31','2000-12-23 23:14:26'),(36,1,1,'1988-07-05 05:39:56','1994-02-25 09:58:24'),(37,30,2,'2002-06-04 07:18:07','1981-11-16 16:47:51'),(38,56,3,'1977-11-27 17:19:33','2005-05-31 20:58:24'),(39,31,4,'2013-04-04 09:52:32','1997-10-05 09:11:33'),(40,5,5,'2019-11-01 05:42:07','2012-04-24 03:39:56'),(41,15,1,'2007-02-06 02:12:57','2016-10-07 04:20:51'),(42,86,2,'2009-09-18 15:13:45','1989-07-07 00:45:51'),(43,29,3,'2017-08-21 17:53:04','1999-10-22 18:45:27'),(44,88,4,'2007-06-11 23:29:43','2014-10-11 03:33:28'),(45,21,5,'1995-02-22 02:12:17','1971-12-05 04:16:13'),(46,97,1,'2006-12-31 04:57:13','1995-06-01 10:16:20'),(47,26,2,'2017-10-13 19:12:38','2014-11-20 13:50:36'),(48,73,3,'1989-08-29 08:20:23','2016-09-30 08:24:36'),(49,91,4,'2005-03-27 19:48:00','1977-12-25 18:58:21'),(50,40,5,'1993-10-23 02:49:06','1990-06-17 02:24:23'),(51,45,1,'2018-05-12 00:14:58','1978-05-03 06:47:11'),(52,71,2,'1992-08-14 10:17:27','2006-03-16 09:20:21'),(53,2,3,'2001-10-08 17:20:57','1986-03-12 15:00:36'),(54,62,4,'2004-11-26 16:00:37','1982-09-07 20:44:51'),(55,89,5,'1997-04-26 16:49:01','1991-08-15 09:10:11'),(56,35,1,'2011-07-01 03:49:00','1983-02-13 07:19:07'),(57,80,2,'2001-07-17 16:10:00','2015-11-19 12:16:08'),(58,92,3,'2000-10-07 08:36:46','2016-05-01 02:46:39'),(59,11,4,'2004-10-21 05:31:18','2018-11-30 00:36:58'),(60,20,5,'1989-07-06 01:15:27','2014-10-20 08:37:52'),(61,48,1,'2012-03-22 05:05:23','1983-07-10 01:22:04'),(62,83,2,'1972-06-17 01:26:45','1986-03-21 09:46:52'),(63,79,3,'1971-06-05 20:25:27','2016-09-30 07:02:42'),(64,58,4,'2000-06-17 22:20:06','2017-12-06 14:41:24'),(65,41,5,'2018-09-14 18:45:43','1993-01-19 04:13:51'),(66,59,1,'1972-02-12 13:31:17','1977-08-05 21:35:44'),(67,16,2,'1995-12-16 14:02:09','1973-05-14 11:44:24'),(68,17,3,'1993-08-15 07:12:59','1995-12-29 18:04:42'),(69,99,4,'1974-09-29 05:16:03','1972-10-31 11:07:15'),(70,27,5,'2011-12-29 04:28:43','1980-11-13 08:24:05'),(71,84,1,'2007-08-27 07:53:35','1992-02-02 14:06:31'),(72,77,2,'2015-07-14 19:54:42','2017-06-15 04:15:28'),(73,10,3,'2007-02-07 13:35:39','1989-08-26 01:34:29'),(74,4,4,'1983-11-28 15:19:13','1985-07-30 21:51:02'),(75,87,5,'1976-10-15 19:22:46','1984-08-07 16:21:14'),(76,38,1,'1991-07-28 19:33:32','1994-12-09 22:10:08'),(77,22,2,'1993-08-02 22:59:06','1982-02-05 07:55:00'),(78,34,3,'2001-09-13 07:04:51','2007-05-15 12:23:48'),(79,61,4,'2004-10-13 07:38:10','2010-01-30 21:04:58'),(80,78,5,'1973-04-29 17:34:03','2002-09-29 14:51:03'),(81,47,1,'2004-11-14 18:11:50','1989-02-05 08:04:12'),(82,70,2,'1982-01-23 05:06:39','1992-05-05 19:35:33'),(83,98,3,'2011-07-31 05:59:28','2008-06-20 08:41:16'),(84,33,4,'2018-08-08 19:47:05','2018-12-02 20:33:06'),(85,60,5,'1976-06-01 22:42:47','2008-11-01 14:37:50'),(86,39,1,'2017-12-07 06:17:25','2002-11-21 14:12:54'),(87,49,2,'2007-03-04 05:09:23','2005-09-22 19:05:06'),(88,74,3,'1999-01-18 10:14:41','1971-08-27 14:11:45'),(89,55,4,'2014-11-26 13:43:37','1979-01-20 17:41:18'),(90,37,5,'1993-11-08 15:45:21','1988-09-22 00:21:14'),(91,53,1,'1973-11-16 02:14:55','2002-12-06 13:39:52'),(92,72,2,'1994-01-17 03:19:23','2011-02-28 04:45:19'),(93,25,3,'2006-07-01 12:08:24','1988-01-10 02:04:37'),(94,7,4,'1995-10-15 10:09:49','2002-08-22 12:43:57'),(95,90,5,'2012-03-12 21:01:25','2001-10-11 06:41:08'),(96,65,1,'2005-11-20 09:20:15','1997-10-22 05:47:45'),(97,13,2,'2011-08-05 13:16:50','1980-04-24 19:31:48'),(98,64,3,'1997-12-25 22:34:54','1977-10-18 09:07:48'),(99,81,4,'2011-02-10 11:53:05','2012-08-27 23:12:08'),(100,76,5,'1974-05-28 16:05:16','2006-07-18 10:10:49');
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship_statuses`
--

DROP TABLE IF EXISTS `friendship_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship_statuses`
--

LOCK TABLES `friendship_statuses` WRITE;
/*!40000 ALTER TABLE `friendship_statuses` DISABLE KEYS */;
INSERT INTO `friendship_statuses` VALUES (3,'друзья'),(5,'коллеги'),(4,'одногрупиники'),(2,'одноклассники'),(1,'родственники');
/*!40000 ALTER TABLE `friendship_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,52,'architecto',326882954,'{\"architecto\": \"326882954\"}','2017-04-10 15:32:12','2019-11-27 20:13:21'),(2,3,4,'ex',33827370,'{\"ex\": \"33827370\"}','1994-01-18 10:57:32','2019-11-27 20:13:21'),(3,2,65,'corporis',45611,'{\"corporis\": \"45611\"}','1982-05-15 20:14:44','2019-11-27 20:13:21'),(4,3,10,'adipisci',663351958,'{\"adipisci\": \"663351958\"}','1991-04-20 02:00:05','2019-11-27 20:13:21'),(5,3,55,'rem',887181807,'{\"rem\": \"887181807\"}','1979-09-08 01:20:11','2019-11-27 20:13:21'),(6,2,45,'voluptates',7,'{\"voluptates\": \"7\"}','2001-05-04 17:49:33','2019-11-27 20:13:21'),(7,1,60,'quaerat',52890,'{\"quaerat\": \"52890\"}','2017-01-18 16:16:16','2019-11-27 20:13:21'),(8,3,66,'expedita',787279,'{\"expedita\": \"787279\"}','2017-05-06 00:18:59','2019-11-27 20:13:21'),(9,3,48,'sed',6,'{\"sed\": \"6\"}','1987-12-01 03:11:20','2019-11-27 20:13:21'),(10,1,40,'beatae',79,'{\"beatae\": \"79\"}','2013-05-24 21:06:45','2019-11-27 20:13:21'),(11,2,57,'quis',5545,'{\"quis\": \"5545\"}','1978-08-29 08:07:30','2019-11-27 20:13:21'),(12,2,65,'qui',80402,'{\"qui\": \"80402\"}','1981-03-23 01:16:19','2019-11-27 20:13:21'),(13,2,53,'qui',8284,'{\"qui\": \"8284\"}','2016-11-24 11:40:27','2019-11-27 20:13:21'),(14,2,69,'totam',801,'{\"totam\": \"801\"}','1981-09-05 20:48:53','2019-11-27 20:13:21'),(15,1,85,'eius',68,'{\"eius\": \"68\"}','1974-11-28 16:38:24','2019-11-27 20:13:21'),(16,3,20,'error',47859607,'{\"error\": \"47859607\"}','1974-07-27 05:21:44','2019-11-27 20:13:21'),(17,1,44,'ab',975391214,'{\"ab\": \"975391214\"}','1977-10-05 12:14:21','2019-11-27 20:13:21'),(18,2,57,'minus',710155848,'{\"minus\": \"710155848\"}','1987-01-29 18:28:42','2019-11-27 20:13:21'),(19,3,54,'beatae',3487543,'{\"beatae\": \"3487543\"}','1990-11-12 05:36:41','2019-11-27 20:13:21'),(20,2,97,'in',85390,'{\"in\": \"85390\"}','2003-02-08 02:38:10','2019-11-27 20:13:21'),(21,3,25,'qui',3129,'{\"qui\": \"3129\"}','2002-02-02 06:30:25','2019-11-27 20:13:21'),(22,2,32,'dolor',0,'{\"dolor\": \"0\"}','1972-01-05 12:15:28','2019-11-27 20:13:21'),(23,1,85,'quis',9552915,'{\"quis\": \"9552915\"}','1996-01-18 18:01:49','2019-11-27 20:13:21'),(24,1,29,'recusandae',5644141,'{\"recusandae\": \"5644141\"}','1980-01-13 07:24:22','2019-11-27 20:13:21'),(25,3,90,'excepturi',613043843,'{\"excepturi\": \"613043843\"}','2009-10-11 13:19:37','2019-11-27 20:13:21'),(26,1,64,'nihil',6914785,'{\"nihil\": \"6914785\"}','1990-09-24 10:57:24','2019-11-27 20:13:21'),(27,1,46,'eaque',1,'{\"eaque\": \"1\"}','1996-01-28 13:55:18','2019-11-27 20:13:21'),(28,1,40,'eos',16964,'{\"eos\": \"16964\"}','2015-12-30 06:10:15','2019-11-27 20:13:21'),(29,2,59,'ut',23,'{\"ut\": \"23\"}','1999-03-23 05:28:46','2019-11-27 20:13:21'),(30,1,76,'ex',0,'{\"ex\": \"0\"}','2005-05-22 06:30:06','2019-11-27 20:13:21'),(31,3,100,'earum',440105,'{\"earum\": \"440105\"}','1981-09-28 13:19:33','2019-11-27 20:13:21'),(32,2,74,'dolorum',2,'{\"dolorum\": \"2\"}','2007-04-15 09:04:03','2019-11-27 20:13:21'),(33,2,69,'qui',893,'{\"qui\": \"893\"}','2015-09-30 05:16:19','2019-11-27 20:13:21'),(34,3,21,'nisi',2630,'{\"nisi\": \"2630\"}','2004-05-27 13:55:49','2019-11-27 20:13:21'),(35,1,99,'ipsum',903640564,'{\"ipsum\": \"903640564\"}','1980-05-17 01:39:15','2019-11-27 20:13:21'),(36,2,32,'aut',737,'{\"aut\": \"737\"}','2000-11-01 20:31:41','2019-11-27 20:13:21'),(37,3,63,'quis',0,'{\"quis\": \"0\"}','2019-03-29 00:45:46','2019-11-27 20:13:21'),(38,3,18,'nostrum',708669,'{\"nostrum\": \"708669\"}','1988-03-09 23:32:15','2019-11-27 20:13:21'),(39,1,99,'provident',24517,'{\"provident\": \"24517\"}','2000-11-07 06:27:26','2019-11-27 20:13:21'),(40,3,39,'sint',348,'{\"sint\": \"348\"}','1975-04-07 06:22:49','2019-11-27 20:13:21'),(41,1,1,'ut',88919752,'{\"ut\": \"88919752\"}','2006-03-20 14:53:12','2019-11-27 20:13:21'),(42,3,85,'laboriosam',93193,'{\"laboriosam\": \"93193\"}','2013-11-30 14:36:29','2019-11-27 20:13:21'),(43,1,23,'consequatur',3751716,'{\"consequatur\": \"3751716\"}','2010-07-29 16:24:00','2019-11-27 20:13:21'),(44,2,60,'non',81932601,'{\"non\": \"81932601\"}','1988-11-01 22:25:34','2019-11-27 20:13:21'),(45,2,30,'aut',28,'{\"aut\": \"28\"}','2016-09-07 00:48:55','2019-11-27 20:13:21'),(46,1,71,'provident',69,'{\"provident\": \"69\"}','2015-09-28 11:01:26','2019-11-27 20:13:21'),(47,1,65,'velit',0,'{\"velit\": \"0\"}','2017-02-23 05:19:49','2019-11-27 20:13:21'),(48,3,10,'dolorem',9324,'{\"dolorem\": \"9324\"}','2013-08-16 09:17:12','2019-11-27 20:13:21'),(49,2,54,'fugiat',0,'{\"fugiat\": \"0\"}','1998-12-07 23:46:40','2019-11-27 20:13:21'),(50,2,41,'necessitatibus',923,'{\"necessitatibus\": \"923\"}','1979-10-01 12:00:12','2019-11-27 20:13:21'),(51,2,43,'rerum',924425,'{\"rerum\": \"924425\"}','2010-06-02 08:10:35','2019-11-27 20:13:21'),(52,3,91,'exercitationem',61628169,'{\"exercitationem\": \"61628169\"}','2009-10-18 20:36:06','2019-11-27 20:13:21'),(53,3,27,'consequatur',551937,'{\"consequatur\": \"551937\"}','2005-09-25 01:40:39','2019-11-27 20:13:21'),(54,3,61,'amet',29925,'{\"amet\": \"29925\"}','2009-04-17 11:30:38','2019-11-27 20:13:21'),(55,1,21,'qui',7,'{\"qui\": \"7\"}','2001-12-20 03:57:54','2019-11-27 20:13:21'),(56,2,23,'ipsum',20656,'{\"ipsum\": \"20656\"}','1983-06-19 15:50:36','2019-11-27 20:13:21'),(57,1,52,'odio',8180726,'{\"odio\": \"8180726\"}','1992-10-30 15:36:55','2019-11-27 20:13:21'),(58,3,91,'amet',429,'{\"amet\": \"429\"}','2010-06-21 08:16:35','2019-11-27 20:13:21'),(59,3,97,'dolor',205,'{\"dolor\": \"205\"}','1999-11-02 11:05:44','2019-11-27 20:13:21'),(60,1,12,'fuga',53229,'{\"fuga\": \"53229\"}','1991-08-26 14:37:45','2019-11-27 20:13:21'),(61,3,70,'expedita',4,'{\"expedita\": \"4\"}','2001-12-13 21:21:04','2019-11-27 20:13:21'),(62,3,12,'natus',9,'{\"natus\": \"9\"}','2000-04-01 17:37:20','2019-11-27 20:13:21'),(63,2,50,'vero',436363537,'{\"vero\": \"436363537\"}','2013-01-13 05:12:59','2019-11-27 20:13:21'),(64,2,15,'cumque',50,'{\"cumque\": \"50\"}','2007-06-13 01:54:36','2019-11-27 20:13:21'),(65,2,25,'quia',87,'{\"quia\": \"87\"}','2017-07-19 07:32:15','2019-11-27 20:13:21'),(66,1,77,'id',236,'{\"id\": \"236\"}','1999-09-18 22:06:58','2019-11-27 20:13:21'),(67,2,9,'eveniet',0,'{\"eveniet\": \"0\"}','1993-01-20 19:22:55','2019-11-27 20:13:21'),(68,1,13,'deserunt',7051120,'{\"deserunt\": \"7051120\"}','2002-04-05 12:12:42','2019-11-27 20:13:21'),(69,3,40,'sunt',88291,'{\"sunt\": \"88291\"}','1984-02-28 02:55:34','2019-11-27 20:13:21'),(70,3,58,'non',15969,'{\"non\": \"15969\"}','1986-03-12 04:16:34','2019-11-27 20:13:21'),(71,1,69,'mollitia',0,'{\"mollitia\": \"0\"}','2001-06-27 03:22:57','2019-11-27 20:13:21'),(72,1,71,'qui',36586,'{\"qui\": \"36586\"}','1974-04-21 06:40:33','2019-11-27 20:13:21'),(73,2,49,'est',76739,'{\"est\": \"76739\"}','2010-03-12 13:12:36','2019-11-27 20:13:21'),(74,1,32,'nobis',274294,'{\"nobis\": \"274294\"}','1982-05-16 13:59:28','2019-11-27 20:13:21'),(75,3,12,'inventore',2128890,'{\"inventore\": \"2128890\"}','1999-06-27 20:53:16','2019-11-27 20:13:21'),(76,1,65,'minima',5,'{\"minima\": \"5\"}','2003-02-16 16:27:25','2019-11-27 20:13:21'),(77,1,88,'cum',4211505,'{\"cum\": \"4211505\"}','1976-06-03 20:15:32','2019-11-27 20:13:21'),(78,1,44,'magni',35,'{\"magni\": \"35\"}','1986-04-10 21:54:49','2019-11-27 20:13:21'),(79,1,55,'dolorem',688941461,'{\"dolorem\": \"688941461\"}','1971-12-26 14:59:25','2019-11-27 20:13:21'),(80,3,44,'exercitationem',198,'{\"exercitationem\": \"198\"}','1990-03-11 06:47:17','2019-11-27 20:13:21'),(81,3,56,'aliquid',0,'{\"aliquid\": \"0\"}','2002-07-07 04:46:03','2019-11-27 20:13:21'),(82,2,45,'aut',148205044,'{\"aut\": \"148205044\"}','2015-12-31 12:59:00','2019-11-27 20:13:21'),(83,3,56,'eius',88791,'{\"eius\": \"88791\"}','1993-06-21 09:40:41','2019-11-27 20:13:21'),(84,2,46,'incidunt',446188,'{\"incidunt\": \"446188\"}','2015-12-09 19:20:15','2019-11-27 20:13:21'),(85,3,61,'accusantium',140080,'{\"accusantium\": \"140080\"}','2011-05-07 09:47:10','2019-11-27 20:13:21'),(86,1,67,'eius',3395573,'{\"eius\": \"3395573\"}','2007-04-13 16:08:22','2019-11-27 20:13:21'),(87,3,50,'ea',5,'{\"ea\": \"5\"}','1996-02-28 14:28:08','2019-11-27 20:13:21'),(88,2,50,'quae',3581679,'{\"quae\": \"3581679\"}','1977-07-31 05:09:53','2019-11-27 20:13:21'),(89,1,98,'rerum',49,'{\"rerum\": \"49\"}','1997-10-08 21:09:50','2019-11-27 20:13:21'),(90,1,41,'doloremque',99515833,'{\"doloremque\": \"99515833\"}','2002-10-19 16:19:43','2019-11-27 20:13:21'),(91,1,11,'enim',57,'{\"enim\": \"57\"}','2011-09-20 12:21:45','2019-11-27 20:13:21'),(92,3,30,'deserunt',52351768,'{\"deserunt\": \"52351768\"}','2018-03-29 21:55:01','2019-11-27 20:13:21'),(93,3,17,'nostrum',703212,'{\"nostrum\": \"703212\"}','2009-02-26 05:48:53','2019-11-27 20:13:21'),(94,1,95,'voluptatem',1139913,'{\"voluptatem\": \"1139913\"}','1978-11-14 14:45:13','2019-11-27 20:13:21'),(95,1,24,'provident',6,'{\"provident\": \"6\"}','2006-02-21 16:47:41','2019-11-27 20:13:21'),(96,3,35,'quia',74522,'{\"quia\": \"74522\"}','2010-03-30 01:59:53','2019-11-27 20:13:21'),(97,2,100,'in',57699357,'{\"in\": \"57699357\"}','1999-06-28 21:19:46','2019-11-27 20:13:21'),(98,2,98,'non',84470486,'{\"non\": \"84470486\"}','1999-07-24 22:56:15','2019-11-27 20:13:21'),(99,1,86,'ea',8,'{\"ea\": \"8\"}','1973-04-06 09:30:41','2019-11-27 20:13:21'),(100,2,37,'sint',37,'{\"sint\": \"37\"}','2004-11-08 12:03:46','2019-11-27 20:13:21');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (2,'audio'),(1,'photo'),(3,'video');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,100,49,'Cum est doloribus aspernatur qui. Voluptate deserunt dolorem vel eius est occaecati veniam culpa. Sit ut eos et modi.',0,0,'1992-05-08 18:23:13'),(2,43,69,'Ad qui sapiente nobis nam. Aut molestiae fugit voluptatem laborum voluptates eveniet non. Eveniet dolorem ut quas ut.',1,1,'1985-02-17 18:17:10'),(3,17,75,'Quasi quasi sed maxime repellat ea animi vel. Et qui tenetur facere vel dolore sed animi. Et consequatur temporibus perspiciatis quaerat quos iusto.',1,0,'1977-03-08 20:24:57'),(4,25,100,'Ut quo nobis in doloremque laboriosam aliquam sed. Neque aut quis omnis iste molestiae. Ipsam ullam sit beatae aut consequuntur laborum esse. Dolorum iste officia voluptatum eos ullam quia vel.',1,0,'1983-09-10 22:57:57'),(5,23,13,'Molestiae minus quia explicabo voluptas. Inventore cumque vero suscipit nobis. Quia fuga id velit tenetur est. Facilis laboriosam itaque dicta in id ad et quasi. Voluptatem enim ratione ut ducimus tempora vitae culpa minus.',1,1,'1996-10-22 18:09:28'),(6,97,46,'Sequi facere sint atque asperiores. Odit fugiat dolore dolor voluptas veritatis. Est est maiores eius est ipsa assumenda non. Iure ea distinctio nam in tempora atque qui.',1,0,'2017-01-13 04:24:18'),(7,39,58,'Nemo voluptas veritatis optio consequuntur. Amet quam voluptatem libero perspiciatis dolores sunt. Dignissimos vero et ut quia.',1,0,'2010-03-29 09:14:42'),(8,69,72,'Recusandae facere sed voluptatibus sed repellendus. Non ut blanditiis in suscipit maxime. Commodi quisquam doloribus molestias nesciunt. Veritatis quo similique ea eos eos.',1,1,'1989-01-24 02:28:06'),(9,52,46,'Consequatur aut aut modi et et. Numquam similique ut consectetur. Dignissimos et reiciendis ipsam ea. A est aut labore nulla laboriosam.',1,0,'1997-02-14 06:47:32'),(10,71,15,'Qui labore est delectus officia magni. Beatae in quisquam excepturi. Aut sit facilis magnam laudantium ut consequatur et. Sed nulla cumque odio expedita consequatur.',0,0,'2019-10-06 19:30:53'),(11,63,71,'At quidem et in est accusamus totam. Esse adipisci omnis voluptatem ipsam sint ea labore. Dolores hic officia sed incidunt ducimus aut veniam autem.',1,1,'1986-01-20 17:59:20'),(12,66,16,'Et maiores porro recusandae ipsam hic eum adipisci. Tenetur omnis provident occaecati consectetur commodi deleniti. Rerum dolor est dignissimos voluptatum eveniet rerum est.',1,1,'2013-07-25 21:32:12'),(13,80,50,'Voluptatem amet sapiente deserunt nihil ullam quisquam animi. Voluptate placeat repellendus recusandae vel repudiandae maxime dolor. Odio et et perferendis praesentium incidunt sint at. Similique deserunt autem assumenda tempore.',0,1,'2006-10-13 21:17:24'),(14,12,10,'Nihil repudiandae et earum quam nemo similique veniam. Quia quidem qui voluptatem quis. Similique possimus expedita aut esse aut omnis sint quia.',1,0,'1970-10-06 15:52:14'),(15,15,42,'Nihil asperiores aut modi nostrum ipsum magni. Esse quidem fugit ab minus qui. Quo voluptatem ut omnis est ducimus aut ex.',0,1,'1973-05-20 18:24:34'),(16,65,99,'Voluptas consequuntur harum quod non consequatur. Illo et in quisquam sint ut. Aliquid autem repellat et voluptas nisi at. Quis et sapiente quia fuga possimus ratione facere.',0,1,'1978-05-04 03:54:14'),(17,98,91,'Consectetur sequi quod et minima laborum quo. Rerum voluptatum et delectus corrupti est. Illo qui et sequi iste error. Sunt porro voluptatem pariatur doloribus eveniet.',0,0,'2018-08-11 03:54:50'),(18,64,44,'Autem officia sed distinctio eum quam cum illum. Facere sint quia dolor magnam quis. Itaque quidem dolor consequuntur cupiditate nobis consectetur exercitationem.',0,0,'1990-05-29 14:22:19'),(19,28,9,'Magnam asperiores repudiandae molestiae nulla et quibusdam. Quidem praesentium qui rerum natus soluta et. Asperiores aut eveniet et hic voluptatibus dolor sit ut. Mollitia ad quas nam distinctio et quam voluptatibus.',1,0,'1998-03-12 10:28:29'),(20,61,75,'Voluptates qui ex sit qui illum. Quia quia quidem quod esse non est. Eveniet et temporibus voluptatem deleniti.',0,1,'2005-02-01 11:33:28'),(21,93,39,'Officia sint possimus culpa consequuntur earum enim dolore. Asperiores deserunt pariatur ea minus impedit. Voluptatem quia quisquam ea rerum explicabo. Doloremque soluta deleniti tempore sunt nesciunt. Nobis cupiditate officia corrupti quod alias qui.',0,0,'2019-10-15 04:58:43'),(22,15,58,'Veritatis sequi harum aliquam similique. Minima sed unde non odio vel perspiciatis a. Quas quam dicta aut odit veniam.',0,0,'2017-10-25 14:52:43'),(23,46,55,'Et sapiente sint iusto eligendi omnis. Adipisci natus deleniti in sint atque. Assumenda eius dolorum libero. Deserunt sequi dignissimos quo pariatur architecto accusamus unde.',1,0,'1994-07-20 09:22:21'),(24,37,20,'Qui nobis quibusdam architecto qui. Quia corrupti velit amet. Doloribus perspiciatis incidunt possimus maiores ipsum. Nobis delectus similique tempora quasi.',1,1,'1984-06-06 18:50:00'),(25,88,80,'Quo sit quis voluptates ut vitae omnis. Repudiandae occaecati explicabo quos odit quidem dicta voluptatibus. Molestiae maiores pariatur qui voluptas.',0,0,'1996-08-01 04:14:32'),(26,35,34,'Consequatur ullam totam accusamus alias veritatis. Cupiditate accusamus autem ad quisquam est. Et qui libero laudantium velit est.',0,1,'2005-09-21 07:22:16'),(27,66,26,'Non repellendus est nesciunt. Quae consequuntur iusto sequi aut vel eaque. Similique ut ratione expedita ipsum optio quibusdam.',0,0,'1986-08-29 20:53:43'),(28,34,89,'Placeat et nesciunt laboriosam dolor. Eius sunt eos qui voluptas asperiores mollitia. Iusto est repellendus est saepe explicabo. Quis fuga saepe blanditiis vel adipisci. Dolorum non quos temporibus quo ipsa.',0,0,'2005-01-26 02:19:08'),(29,45,58,'Aut odio velit non molestiae. Dolorem autem sed totam enim et. Maiores beatae rerum quia non facilis. Quia quia quisquam aliquam quo aliquid et dolores qui.',1,0,'2005-11-13 15:15:31'),(30,53,89,'Et aut et quo. Molestiae voluptas dolor et.',0,1,'1999-03-15 13:09:48'),(31,87,69,'Nisi autem accusantium voluptas animi eos dolorum et aut. Similique dolores et ut molestiae. Nobis dolore et quasi voluptatem reiciendis et. Similique quis error consectetur iure.',1,0,'2009-02-05 15:00:22'),(32,83,5,'Mollitia harum nemo totam ut minus. Qui illum tempora at ipsum molestiae autem. Enim dolores delectus et iure non qui.',1,1,'1996-11-19 02:05:35'),(33,79,76,'Quidem sed similique consequatur laboriosam ex cum numquam. Adipisci incidunt reprehenderit similique iusto rerum. Odio nemo mollitia doloribus.',1,1,'2013-06-18 10:43:13'),(34,44,89,'Doloremque laudantium et voluptatem et et. Voluptas fugit exercitationem et odio assumenda ducimus repellat. Non fugit voluptas consequatur quia eum dolor alias. Voluptas consequuntur nihil perspiciatis aut.',0,0,'1974-09-17 06:53:12'),(35,16,12,'Excepturi quo fugiat numquam vero quia explicabo. Sunt pariatur enim delectus esse dicta delectus repellat. Aut quibusdam placeat illo assumenda. Ea ut facere unde numquam consectetur deserunt aut.',0,1,'1994-07-15 13:06:31'),(36,12,23,'Explicabo dolores omnis magnam magnam. Iure quos dicta corporis. At fugit in illum ut. Praesentium possimus asperiores enim et architecto.',1,0,'2006-07-20 04:07:49'),(37,77,17,'Alias tempora cupiditate omnis et ullam sunt non placeat. Suscipit quia aliquam nobis rerum sit harum. Corrupti corporis reiciendis voluptas sed. Maxime libero amet deserunt perspiciatis in.',0,0,'1990-12-13 16:01:01'),(38,54,18,'Autem rem consectetur rerum. Voluptatem et delectus architecto quo animi accusantium nobis. Voluptate et culpa voluptatem exercitationem distinctio. Est et et aliquid doloremque earum ut.',1,0,'1994-01-16 01:01:31'),(39,26,78,'Quaerat rem id quia sit temporibus error rerum. Consequatur consequatur in inventore inventore voluptatibus ut qui. Aliquam quia iure et qui autem voluptatem est.',0,0,'2012-04-29 12:06:28'),(40,10,16,'Sit magnam voluptatem est rerum perspiciatis autem quod. Et est tempora sunt voluptatum nam. Neque et quis nisi cum. Doloremque fugiat quia culpa harum architecto eum.',0,0,'1989-08-05 23:49:22'),(41,51,6,'Et temporibus fugit voluptatem similique ut reiciendis. In rem ad earum assumenda sint dicta. Est quas aliquid harum.',1,1,'2019-07-10 09:23:42'),(42,75,56,'Adipisci delectus voluptatem provident. Quis tempora rerum veniam rem tempora fugit est at.',0,1,'1974-03-21 14:51:31'),(43,55,9,'Ut reprehenderit blanditiis sit iusto. Sit dicta esse cumque quia illo quis eum eligendi. Repellat rerum aut in deleniti tempore. Aut laboriosam et autem aut cumque.',0,0,'1993-06-12 01:08:08'),(44,77,57,'Dolorem doloremque necessitatibus occaecati aut. Voluptate aut non deserunt cupiditate quis temporibus et deleniti. Voluptatem eaque omnis aut est dolor. Tenetur ut harum animi inventore enim sint.',0,0,'2002-07-31 21:32:52'),(45,54,99,'Nihil ut accusamus ipsa eos natus dignissimos ut. Voluptatem minima ipsa officia magnam sunt minima. Unde quis eos molestiae hic. Recusandae mollitia vel nostrum voluptas pariatur dolorem adipisci.',0,1,'2008-12-10 13:29:53'),(46,34,72,'Id sunt vero et quam ipsa. Sed aut aspernatur harum sit enim. Cumque dolore vitae error voluptatem reprehenderit quia fugiat deleniti.',0,1,'2006-12-07 09:29:46'),(47,56,63,'Ipsam ipsum eum rerum ratione ipsam at dolor. Quis expedita illum doloribus repellat voluptatum. Veniam qui soluta odit maxime in minus magni. Voluptatibus atque ipsam quia cupiditate.',1,1,'2012-12-31 00:42:44'),(48,46,42,'Voluptates recusandae non sunt quos est reprehenderit laboriosam. Repudiandae iure saepe voluptatibus consequuntur harum quas. Harum est cum modi est facilis. Id aliquid quidem voluptatem qui doloribus.',0,0,'2003-12-24 04:48:21'),(49,73,36,'Neque deleniti et quia. Consectetur voluptatem rerum est nulla. Ut ut et cumque atque non quos veniam dolores. Reprehenderit ipsam aliquid iusto provident sint dolores.',1,1,'2002-05-23 23:45:56'),(50,60,92,'Mollitia eius itaque debitis omnis laboriosam. Sint repellat illo voluptatem similique nihil.',0,1,'1972-01-10 21:07:02'),(51,79,20,'Ut maiores autem molestiae blanditiis. Ut est praesentium perspiciatis sint nemo hic quaerat. Fuga non illo doloribus rerum non alias soluta. Sed sunt voluptates sequi optio. Officiis sit voluptatem ratione ut.',0,0,'1986-08-19 11:10:23'),(52,61,47,'Corporis et laboriosam quos velit. Quo ut sint sed velit impedit aliquid optio. Quisquam sit impedit similique et eum hic in.',0,0,'1972-10-17 11:46:12'),(53,50,8,'Labore sint voluptas maiores sequi dolorem architecto nam ea. Occaecati dolor eos ut sequi illum.',0,0,'2008-12-23 15:41:46'),(54,90,26,'Sequi expedita quae repellat velit ea. Odio et fugit consequatur ducimus.',0,0,'1999-10-09 13:32:38'),(55,60,22,'Eum non voluptatem at. Est et ut ea ut vero. Aut ipsum architecto sunt asperiores recusandae.',0,0,'1990-07-27 09:26:26'),(56,30,82,'Est pariatur distinctio distinctio quam dolorem et error. Aut voluptatibus fuga unde alias occaecati ea dolor. Non ab aut cupiditate ut doloremque.',0,0,'2012-06-13 11:28:20'),(57,22,61,'Accusantium voluptatem sed dolor et fuga et eius. Beatae expedita laborum expedita id. Nihil voluptatem qui quia et.',0,0,'1999-06-04 12:40:37'),(58,39,10,'Quidem velit commodi ut ducimus est qui qui. Temporibus ad fugit est at voluptatem sit praesentium. Ad quas alias dolorem odio neque nihil minima sapiente.',0,1,'1988-09-11 18:36:43'),(59,34,38,'Esse ut doloribus sit magnam excepturi. Rerum est quaerat voluptas est. Ipsam numquam molestiae doloribus itaque aut error non.',0,1,'2011-05-23 06:45:49'),(60,86,19,'Totam aut enim dolor ut voluptatem reiciendis deleniti. Est veritatis voluptas sit mollitia debitis dolor dolore. Nihil est est quidem corrupti.',1,0,'2002-07-29 14:28:50'),(61,36,22,'Maiores expedita ut id assumenda quidem fugit aperiam quibusdam. Porro ratione et ut iure eius non enim. Veniam non a aut eveniet sunt eum accusantium. Laborum iste repellendus ea fugit harum ab.',1,0,'2018-10-22 04:54:00'),(62,100,35,'Neque eos ullam eum perferendis. Fugiat quo ut ratione et consequatur consequatur voluptatibus. Sed optio voluptates sed aspernatur non nihil. Id et molestias et et enim cupiditate est. Distinctio eius optio aut sit tenetur error illum.',1,1,'1987-01-15 23:05:11'),(63,74,66,'Ducimus et dolor et aut. Est explicabo dolore et sit rerum nihil. Aperiam cumque qui iure rerum.',0,0,'1994-01-17 17:54:55'),(64,8,39,'Maiores totam nihil quaerat consectetur dolorem. Id sit nihil et nisi nemo. Doloremque explicabo animi saepe delectus officiis dicta. Totam repudiandae sit perferendis ea quia quia qui repellendus.',0,0,'1997-12-25 23:56:00'),(65,73,46,'Id eligendi quis voluptates eum magnam voluptatem et. Impedit molestiae perferendis quisquam ipsa voluptatem. Ex maxime vel molestiae voluptatibus magnam est pariatur. Et aut et nam ad itaque non non.',1,1,'2017-10-11 08:42:16'),(66,9,9,'Numquam sint consequatur provident ut quos est. Velit blanditiis necessitatibus quod tempore quis nemo. Pariatur corporis quia quo modi unde a sapiente.',1,0,'1989-08-28 05:05:31'),(67,19,64,'Beatae illo autem omnis aut ut. Aspernatur explicabo facere rerum recusandae voluptas sunt dolores.',1,0,'2004-07-01 19:39:39'),(68,64,25,'Recusandae nam et blanditiis hic nisi. Vel rem explicabo quidem eos eum ut. A dolorem itaque error expedita alias optio delectus in.',0,1,'2018-02-11 02:07:33'),(69,36,4,'Inventore tempora et labore non a. Qui exercitationem quam esse alias et praesentium. Enim est voluptatem placeat error excepturi quas. Sapiente non laboriosam omnis error aut aliquid sapiente.',1,0,'1985-09-21 17:53:01'),(70,10,38,'Voluptates cum et voluptatem ut odit earum laudantium. Consequatur asperiores eaque laudantium ea harum. Debitis iusto et et ea at. Maxime id error et aut.',0,1,'2013-12-11 13:42:11'),(71,61,90,'Cumque voluptas ut asperiores id quae praesentium aut. Aspernatur debitis repellat fugiat quos sit ut facere. Est numquam blanditiis voluptas ab est provident.',0,1,'2011-09-28 18:47:05'),(72,65,57,'Et recusandae eos dolores atque eligendi. Unde vel illo blanditiis laudantium et omnis et beatae. Quidem rerum dolorem totam. Aut quidem et nihil hic deleniti consequatur.',0,1,'1995-10-09 05:24:40'),(73,87,63,'Et molestiae numquam minima blanditiis vero. Optio illo voluptas sint illo aut praesentium. Autem quia eveniet et eligendi et numquam veniam. Aut quasi officia beatae rerum non qui dolores.',0,1,'1994-05-01 05:55:38'),(74,54,82,'Placeat consequatur cum autem velit. Non temporibus ut modi quia quis sit placeat. Voluptatum quo id sit voluptas perferendis aut consequuntur fuga. Officia dolorum sed saepe in voluptas sed.',0,0,'1976-11-21 11:26:55'),(75,46,82,'Nulla quis quae cupiditate voluptas voluptatem quibusdam deleniti et. Possimus nulla quia architecto nobis nostrum autem voluptatum.',1,1,'1999-12-16 05:52:38'),(76,74,23,'Quo commodi dolor totam cum. Neque molestias maiores molestias deleniti excepturi quia sunt eaque. Qui nemo ea eveniet omnis aut molestias voluptatem aut.',1,1,'1977-04-29 21:45:18'),(77,91,88,'Ullam nihil quis dolore quisquam. Aspernatur est explicabo cum voluptas placeat quia repellendus eum. Corporis omnis provident et nobis at voluptatem porro. Eveniet enim alias voluptatem a.',0,0,'1972-07-11 10:54:06'),(78,65,61,'Officia quia neque ut eveniet et veniam aut possimus. Fugiat et in nostrum possimus dolorem id. Deleniti sed aliquam totam voluptas odio sit rerum et. Minima id et tenetur quia optio.',0,0,'1988-05-16 18:55:37'),(79,10,67,'Ut est totam iure ex dignissimos fuga nobis. Praesentium consequatur et a vel et non sed.',1,1,'2008-01-26 13:06:15'),(80,5,21,'Dolorum doloribus ut et odio. Omnis et iste qui quia sint consectetur. Optio nesciunt tempore autem sed fugiat dolorem earum illum.',0,1,'1990-08-23 09:55:31'),(81,91,90,'Cupiditate molestiae voluptatibus repellat pariatur quis et quasi adipisci. Enim rem ab nam et doloremque hic quisquam est. Aperiam saepe corporis iusto unde dolores occaecati ab. Cum sed debitis dolorem. Quisquam ut est iusto deserunt enim nesciunt.',0,1,'2008-08-30 18:28:07'),(82,79,22,'Id repellat qui ratione blanditiis earum. Optio placeat rerum quo voluptas est est.',1,0,'1975-01-23 22:31:27'),(83,75,10,'Voluptate explicabo voluptatibus ullam modi. Doloribus quis cupiditate facilis et. Et quo ea non sed sed dolorum alias. Qui sint vero ex ab numquam dolor dicta.',0,1,'1975-11-20 22:47:17'),(84,21,74,'Error aut et voluptatem explicabo vel commodi eligendi. Voluptatem adipisci et dolores hic velit maiores maiores. Quasi sint architecto magni nisi. Nam facere eius natus.',0,1,'2012-03-11 04:22:37'),(85,8,18,'Non tenetur dicta eos perferendis sed tempora officia. Velit minima ab consequuntur officiis. Quos necessitatibus sed voluptatem est et quibusdam blanditiis. At sit sed ea quam.',0,0,'1994-01-15 09:19:31'),(86,65,72,'Dolores et quae vero blanditiis illo ut. Est quas animi qui sit ipsam enim illo. Consectetur voluptatem est saepe autem ad quis doloribus.',1,1,'2008-09-13 23:34:20'),(87,64,5,'Quia quo eaque vel ipsa fuga sed. Harum accusantium nobis autem adipisci cupiditate nulla. Expedita quis ut tenetur quis alias libero modi.',1,0,'1984-01-02 02:06:28'),(88,31,40,'Aut necessitatibus qui quibusdam et et labore voluptatem. Cum nisi numquam ex optio. Itaque velit quia repellendus.',0,1,'2007-05-26 10:28:59'),(89,7,16,'Quia sed reiciendis reprehenderit repellendus. Iusto occaecati sit repellat omnis et et tempore. Autem id enim et fugiat aliquid dolores iste.',1,1,'2014-07-16 07:44:31'),(90,55,28,'Eligendi maxime iusto sint sunt id ex accusamus dolorem. Autem voluptas eaque assumenda cum vel. Asperiores accusamus ut quaerat harum distinctio rerum. Minus autem aut aut odit quos nemo. Maxime qui saepe quas est soluta.',0,0,'1990-04-22 16:06:32'),(91,73,82,'Fugit eos et ad. Labore magnam quaerat sunt non quis. Sequi quibusdam officia enim ullam. Consectetur rerum voluptatem delectus quidem quis illo.',1,0,'1988-08-14 19:52:25'),(92,91,8,'Debitis aspernatur illo alias culpa. Vitae temporibus dolorum quidem qui provident. Qui nesciunt consequuntur temporibus. Soluta nisi optio magni dolor quam vitae excepturi.',0,0,'2018-11-01 07:56:29'),(93,66,7,'Laboriosam eos quia dolor et ipsum doloremque natus. Sapiente est dolor repellat delectus soluta consequatur. Molestias harum aliquid excepturi dignissimos.',0,0,'2018-01-23 10:54:39'),(94,36,59,'Ut optio et ducimus delectus qui sed dolorem itaque. Culpa error voluptatum incidunt maxime. Dolores libero iusto nihil perspiciatis et. Consequatur sed exercitationem explicabo amet qui esse alias. Quasi voluptatem eius fugit rerum et architecto.',1,0,'1997-09-26 07:18:27'),(95,84,44,'Voluptate qui eos officia quod aut rerum. Blanditiis voluptas eaque exercitationem iste nemo vero alias. Odio ipsum enim possimus nostrum sit architecto explicabo. Eum facilis inventore quae ut illum.',0,0,'2004-04-03 21:23:09'),(96,69,9,'Reprehenderit quis commodi ipsa asperiores autem eius cumque quisquam. Non rem ut dolorem. Expedita dolorem est natus exercitationem provident. Autem labore quo nihil dolores voluptatem sit omnis odio.',0,1,'1980-04-12 02:24:12'),(97,41,77,'Quod praesentium quisquam est ipsa eligendi aut. Velit voluptates culpa est quia. Corporis et aut voluptate voluptates nulla. Possimus magnam dolor optio sapiente ut culpa.',1,1,'1990-09-04 07:25:40'),(98,62,76,'Blanditiis exercitationem omnis neque incidunt. Aut pariatur nobis voluptatem minima et ipsam.',0,1,'1973-07-14 15:06:45'),(99,96,51,'Id fugit similique dolores voluptates sed. Possimus alias omnis aut rem nulla adipisci. Reiciendis consequuntur sed iure voluptas officia. Alias sint possimus placeat neque.',0,1,'2009-01-19 09:14:08'),(100,67,81,'Quia minus minus quos et cupiditate. Quidem doloremque sapiente debitis placeat quisquam suscipit. Aut vero cupiditate eligendi nesciunt.',0,1,'2002-09-07 00:21:36');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy`
--

DROP TABLE IF EXISTS `privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privacy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy`
--

LOCK TABLES `privacy` WRITE;
/*!40000 ALTER TABLE `privacy` DISABLE KEYS */;
INSERT INTO `privacy` VALUES (1,'Все пользователи'),(2,'Только друзья'),(3,'Друзья и друзья друзей'),(4,'Только я'),(5,'Все кроме...'),(6,'Некоторые друзья');
/*!40000 ALTER TABLE `privacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy_exept_user`
--

DROP TABLE IF EXISTS `privacy_exept_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privacy_exept_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `privacy_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy_exept_user`
--

LOCK TABLES `privacy_exept_user` WRITE;
/*!40000 ALTER TABLE `privacy_exept_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `privacy_exept_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `sex` char(1) NOT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'m','2003-08-17','North Kevonland',1),(2,'m','2018-10-07','South Alexandria',2),(3,'m','2006-02-24','Ebertfurt',3),(4,'f','2001-06-05','Johnnytown',4),(5,'m','2016-09-16','Willburgh',5),(6,'m','2000-05-05','Kuhicside',6),(7,'f','2003-08-04','Raheemmouth',7),(8,'f','2005-01-05','Stromanville',8),(9,'m','2001-03-20','Goodwinport',9),(10,'m','2012-10-23','New Mikaylaport',10),(11,'m','1982-07-31','Stehrfort',11),(12,'f','1970-05-09','East Albina',12),(13,'f','1973-04-11','North Kellie',13),(14,'f','1990-09-09','Haleyberg',14),(15,'m','1985-08-18','South Vidal',15),(16,'f','2017-03-23','Ryanland',16),(17,'f','1979-01-01','Lake Hildegardside',17),(18,'m','2003-04-22','Stromanside',18),(19,'f','1992-03-28','Tyreefort',19),(20,'f','1999-08-07','Yadirachester',20),(21,'m','2000-09-17','Balistreribury',21),(22,'m','1983-11-24','Port Tess',22),(23,'f','1999-01-02','Reyeschester',23),(24,'f','1993-05-01','Westburgh',24),(25,'m','1980-07-20','Jeniferstad',25),(26,'f','2008-02-16','West Zackary',26),(27,'f','2017-12-13','North Louieport',27),(28,'m','1985-08-07','East Ignacio',28),(29,'m','1989-08-07','Aliview',29),(30,'m','2017-08-06','Jakubowskiview',30),(31,'f','2017-03-24','East Hendersonbury',31),(32,'f','2014-03-02','Hermannshire',32),(33,'m','1977-04-12','South Otilia',33),(34,'f','2007-08-07','Wilfredfort',34),(35,'m','1997-01-28','Kochburgh',35),(36,'m','2017-04-06','Daniellefort',36),(37,'f','1973-10-22','East Marianneburgh',37),(38,'f','1972-12-15','Bartonberg',38),(39,'m','1981-02-16','O\'Connerburgh',39),(40,'f','2008-04-25','Willowborough',40),(41,'f','1997-09-01','West Dexter',41),(42,'f','2016-03-29','North Abbeychester',42),(43,'f','1990-12-09','West Zackery',43),(44,'m','2006-02-05','Port Chanelborough',44),(45,'m','1983-02-07','Lake Rylan',45),(46,'f','1975-10-05','South Derrick',46),(47,'f','1996-09-24','New Olin',47),(48,'f','2015-11-02','Gardnerton',48),(49,'m','1983-12-11','Bradtkechester',49),(50,'f','1985-03-22','Evanview',50),(51,'m','2007-08-18','Lake Gustfurt',51),(52,'f','1997-03-21','North Westonfort',52),(53,'m','2018-10-17','Ludietown',53),(54,'f','1982-05-04','Lake Angelinashire',54),(55,'m','1992-11-05','New Ceciliabury',55),(56,'m','2019-04-01','Wunschhaven',56),(57,'f','1974-03-20','Gersonmouth',57),(58,'f','1978-12-24','Edburgh',58),(59,'m','2010-10-08','New Violette',59),(60,'m','1977-07-08','Lolaport',60),(61,'f','2019-09-04','Danykaberg',61),(62,'m','1975-05-14','Hoppeport',62),(63,'m','1996-07-15','New Kyleburgh',63),(64,'m','1988-07-19','Maudieville',64),(65,'f','1975-01-12','Lake Kennedy',65),(66,'m','1973-03-24','Estellafurt',66),(67,'m','1991-08-12','Lake Talon',67),(68,'f','1974-02-07','Laishatown',68),(69,'f','2004-08-14','Hintzbury',69),(70,'m','1992-06-01','East Gunnarmouth',70),(71,'f','1980-05-06','Port Trace',71),(72,'m','2005-06-04','New Arvelview',72),(73,'f','2009-04-01','West Richardhaven',73),(74,'m','1975-03-07','East Kale',74),(75,'f','2008-01-06','Lake Addie',75),(76,'f','1978-07-14','Shaniyachester',76),(77,'m','1998-09-16','North Jodychester',77),(78,'m','1994-05-05','South Destany',78),(79,'m','1983-09-07','Carmenport',79),(80,'f','1979-02-02','Oletafort',80),(81,'f','1992-12-09','New Jo',81),(82,'f','1978-05-18','Champlinside',82),(83,'f','1983-12-17','Port Alexachester',83),(84,'f','1983-03-06','Westton',84),(85,'m','1970-11-09','Hoegerburgh',85),(86,'f','1976-02-29','Lake Ludwighaven',86),(87,'m','1981-03-27','Earlenemouth',87),(88,'f','2018-09-11','Nicoside',88),(89,'f','1997-04-23','Gavinmouth',89),(90,'f','1989-10-02','Deckowbury',90),(91,'f','2000-12-08','New Ethel',91),(92,'m','2019-07-20','Simonisside',92),(93,'m','1972-11-14','Arnoldoborough',93),(94,'f','1989-05-02','Gorczanystad',94),(95,'f','2003-05-03','Friesenbury',95),(96,'f','1992-12-18','Lake Rachellebury',96),(97,'f','1987-07-29','Lake Rainaport',97),(98,'m','1974-06-13','Handfort',98),(99,'f','2009-12-26','Michaelaville',99),(100,'m','2013-04-13','East Laron',100);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'Кто видит основную информацию моей страницы'),(2,'Кто видит фотографии на которых меня отметили'),(3,'Кто видис список моих сохраненных фотографий'),(4,'Кто видит список моих групп');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_privacy`
--

DROP TABLE IF EXISTS `user_privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_privacy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `section_id` int(10) unsigned NOT NULL,
  `privacy_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_privacy`
--

LOCK TABLES `user_privacy` WRITE;
/*!40000 ALTER TABLE `user_privacy` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_privacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(120) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Stefanie','Blanda','fgibson@example.org','800.822.8709x204','1975-06-01 05:55:14','1984-10-15 07:39:00'),(2,'Fleta','Moore','gleffler@example.org','1-659-876-3084','1977-03-09 22:06:18','2019-11-26 19:00:43'),(3,'Jules','McCullough','rzieme@example.net','1-888-667-4797','1983-07-24 18:02:30','1984-06-15 17:34:06'),(4,'Theresa','Nitzsche','catalina79@example.com','289.490.0223','1983-05-12 03:59:59','2019-09-11 05:06:06'),(5,'Jeromy','Fahey','johnson.tess@example.org','05735561925','1983-11-09 08:09:17','2016-07-24 11:48:27'),(6,'Abbey','Wilderman','gulgowski.assunta@example.com','(952)046-2575','1992-11-14 18:44:23','2010-01-04 08:27:42'),(7,'Leanne','D\'Amore','stephania.feil@example.net','+37(7)8517033196','1989-08-29 23:33:50','2018-02-26 05:51:36'),(8,'Colleen','Blick','general48@example.net','536.257.6862x83708','2007-11-12 21:55:41','2010-03-04 17:53:50'),(9,'Maiya','Tremblay','reed17@example.com','+93(7)5522862037','1981-03-19 23:07:17','2019-10-24 04:41:31'),(10,'Britney','Stoltenberg','gorczany.hilbert@example.com','960.273.6970','1983-08-26 14:31:15','1983-10-10 14:53:17'),(11,'Enoch','Witting','joan01@example.net','503.377.1017x3298','2000-12-16 21:21:11','2019-11-08 02:53:00'),(12,'Philip','Douglas','fadel.hassie@example.net','(957)026-1694x15493','1985-03-07 21:27:09','2019-11-26 19:00:43'),(13,'Ethel','Davis','troy49@example.net','000.438.9964','1993-01-21 05:23:22','2019-11-26 19:00:43'),(14,'Izaiah','Willms','kay14@example.com','424.061.6512x7097','1977-07-03 22:31:37','2019-11-26 19:00:43'),(15,'Nina','Lang','zulauf.georgette@example.net','586-680-1302','1970-08-04 03:42:17','2001-05-27 07:52:55'),(16,'Kyler','Thompson','torphy.ewald@example.org','1-116-177-1717x469','1981-05-22 00:29:34','1994-11-20 08:25:20'),(17,'Catalina','Kohler','bartell.jamil@example.net','1-174-274-1956x763','1987-08-04 22:32:37','2007-12-21 17:48:01'),(18,'Michaela','Harber','morissette.leonel@example.net','01172288287','1991-11-01 09:13:01','2019-11-26 19:00:43'),(19,'Kyler','Abshire','danny.leffler@example.net','(333)698-8180x56845','1989-04-03 04:52:27','2019-08-01 06:19:11'),(20,'Forest','Swaniawski','awolff@example.org','1-605-773-1356x282','1993-07-03 21:04:04','2019-11-26 19:00:43'),(21,'Arthur','Kohler','maiya.howell@example.org','434.503.5073x8638','1995-10-15 10:47:31','2019-11-26 19:00:43'),(22,'Nils','Schaden','israel.nienow@example.net','332-302-7623x25696','1982-11-13 08:01:50','2019-11-26 19:00:43'),(23,'Katelynn','Reichel','murazik.kevon@example.org','(704)266-5502x4468','1999-09-14 21:11:54','2010-07-30 16:02:54'),(24,'Mariana','Treutel','goyette.monroe@example.net','1-367-237-9825x9776','2007-12-17 03:02:49','2019-11-26 19:00:43'),(25,'Donato','Collier','gstanton@example.com','607.230.7124x0207','1972-05-12 09:08:13','2019-11-26 19:00:43'),(26,'Natasha','Schmitt','o\'kon.nora@example.com','984-454-2641','1981-03-11 15:03:45','2019-11-26 19:00:43'),(27,'Marilyne','Bogan','serdman@example.net','1-696-479-4127x547','1997-08-04 00:49:34','2012-02-28 17:43:36'),(28,'Elisabeth','Block','eugenia.weber@example.com','508.058.5444x0644','1996-03-18 13:05:28','2004-09-22 17:32:42'),(29,'Magali','Wilderman','russel.jett@example.net','(983)933-6052','1986-04-16 11:22:46','2019-11-26 19:00:43'),(30,'Terrell','Tillman','gregory71@example.com','244-444-0792x27288','1995-12-04 14:28:11','1998-07-18 19:16:26'),(31,'Johann','Auer','stephan.zulauf@example.org','(105)098-1490','1973-07-24 20:19:01','2019-11-26 19:00:43'),(32,'Kadin','Goldner','cassin.garfield@example.org','1-335-178-4587','1983-05-21 01:23:11','2019-11-26 19:00:43'),(33,'Vivianne','Kozey','ondricka.pascale@example.net','08244079333','1970-01-20 01:44:28','1971-05-10 16:41:21'),(34,'Jailyn','Ratke','mario.schowalter@example.org','(663)117-3587x752','1985-09-27 04:15:27','2019-11-26 19:00:43'),(35,'Doyle','Mraz','heller.karine@example.org','(454)301-4759','1987-09-06 22:18:05','2010-11-27 15:09:16'),(36,'Nathan','Zieme','ethelyn10@example.com','151-456-3394x3348','1977-11-20 21:11:25','1979-07-07 19:26:58'),(37,'Jaylan','Doyle','carson64@example.net','1-860-413-6479x25188','1980-03-31 07:38:15','1997-12-21 05:56:02'),(38,'Terence','Von','tremblay.leonard@example.org','1-038-718-2297x8017','1971-05-10 09:35:51','2019-11-26 19:00:43'),(39,'Daphnee','Volkman','jayme.effertz@example.com','1-302-115-2696','1972-06-17 02:07:11','2019-11-26 19:00:43'),(40,'Janiya','Carter','d\'amore.eduardo@example.org','710-917-2828x680','1985-01-14 07:38:41','2018-06-17 19:24:50'),(41,'Chauncey','DuBuque','cathryn78@example.org','893-268-0546','1983-06-22 05:05:41','2003-11-20 10:27:04'),(42,'Anika','O\'Kon','vwolf@example.com','(013)617-3936','1986-12-12 19:47:28','2019-11-26 19:00:43'),(43,'Laney','Gerlach','kassulke.hershel@example.net','(132)430-1077','1983-08-08 03:16:18','1992-02-14 12:20:02'),(44,'Wyatt','Cormier','kristian54@example.org','171-123-1760x44455','1972-05-23 09:51:55','2019-11-26 19:00:43'),(45,'Vita','Zieme','leffler.kody@example.org','634.687.2346x75130','1974-07-24 05:00:08','2019-11-26 19:00:43'),(46,'Janick','Hansen','devonte87@example.org','04274120837','1979-04-05 11:37:04','1989-05-30 02:35:30'),(47,'Gregory','Hayes','elian32@example.net','186-208-6201','1997-10-04 00:54:51','2001-04-10 20:42:35'),(48,'Ernest','Lemke','obauch@example.net','878.804.7896x8761','1989-02-19 19:39:35','2019-11-26 19:00:43'),(49,'Jadon','Murphy','beier.irma@example.org','03882077670','1974-08-09 23:48:54','2019-11-26 19:00:43'),(50,'Presley','Bosco','tleannon@example.net','(403)007-1056','1971-06-22 06:35:53','2019-11-26 19:00:43'),(51,'Theresia','Effertz','anderson.jasen@example.com','577.315.0199','1971-01-19 07:41:48','2019-11-26 19:00:43'),(52,'Crawford','Brown','ibogan@example.net','111-998-9297x37297','1987-05-27 15:54:11','2013-10-09 19:20:56'),(53,'Landen','Erdman','smurphy@example.net','1-081-043-2648x03349','1984-09-25 18:30:01','2013-09-06 23:28:21'),(54,'Kareem','Bartell','durgan.alene@example.com','(125)874-3915x966','1971-01-07 13:29:39','1998-10-13 07:10:44'),(55,'Rhett','Fay','audie36@example.org','606.566.3801','1986-02-05 02:53:10','2015-02-13 22:15:24'),(56,'Isaias','Farrell','glarson@example.com','+50(9)8381257721','1973-01-05 05:40:56','1999-05-14 00:43:50'),(57,'Thora','Mraz','lubowitz.zachary@example.net','04115014827','1977-05-12 15:25:56','2017-06-12 05:15:00'),(58,'Doug','Romaguera','jrowe@example.com','(599)112-2149','1997-07-15 14:01:47','2019-11-26 19:00:43'),(59,'Lea','Gerlach','csporer@example.com','1-826-828-3963x16641','1980-02-06 15:53:58','1981-02-10 04:14:55'),(60,'Clinton','Blick','yessenia.streich@example.net','561-350-8035','1997-01-19 03:45:33','2019-11-26 19:00:43'),(61,'Lauriane','Zieme','pthompson@example.net','(075)255-9776x15133','1998-07-22 02:31:12','2019-11-26 19:00:43'),(62,'Angelica','Leffler','rahul80@example.net','07109242411','1986-07-14 14:32:21','1989-01-05 16:09:06'),(63,'Myrtis','Mohr','carroll.mitchell@example.net','07858528947','1998-11-28 08:53:15','2019-11-26 19:00:43'),(64,'Roberta','Goodwin','albin37@example.net','737-672-0172x48639','1980-01-13 03:39:01','2019-11-26 19:00:43'),(65,'Eula','Rippin','alfreda.abbott@example.net','034-202-1260x488','1975-10-20 21:10:12','2005-06-22 18:00:27'),(66,'Julio','Turner','kristian28@example.com','577.462.0129x0271','1983-02-25 14:02:34','2019-11-26 19:00:43'),(67,'Patrick','Gottlieb','eblock@example.org','344-953-0724x7606','1990-10-09 11:27:54','2000-01-10 20:43:20'),(68,'Anthony','Jaskolski','therese90@example.net','819-630-0982x1746','1999-04-02 14:29:08','2013-12-23 05:52:00'),(69,'Alda','Murazik','tatyana.feest@example.com','+23(4)2181274645','1988-04-10 17:23:27','2011-06-08 07:36:49'),(70,'Hazle','Blanda','gaston62@example.net','+41(0)0504022023','1986-05-21 10:04:48','2010-04-06 09:58:01'),(71,'Aniyah','D\'Amore','kelton.pollich@example.org','+79(0)8233917925','2016-03-11 16:19:19','2018-01-30 07:40:39'),(72,'Myron','Bayer','arielle.bahringer@example.com','(879)792-0663','1980-05-28 01:10:55','2019-11-26 19:00:43'),(73,'Eldred','White','sienna84@example.net','(502)423-9300','1973-10-02 06:05:05','2019-11-26 19:00:43'),(74,'Filiberto','Haley','naomi.witting@example.net','06209969748','1995-04-24 06:42:20','1996-03-10 17:33:25'),(75,'Raina','Stokes','xcormier@example.net','(289)193-5529x0788','1983-09-09 08:05:49','2019-11-26 19:00:43'),(76,'Berniece','Emmerich','velma73@example.com','857.918.8122','1971-08-05 04:20:26','2010-09-20 04:12:52'),(77,'Isai','Satterfield','mara.champlin@example.org','(435)339-6520x693','1973-04-14 06:11:54','2019-11-26 19:00:43'),(78,'Alejandrin','Mann','kemmer.melany@example.com','(140)628-9727x731','1978-06-03 00:55:34','2019-11-26 19:00:43'),(79,'Nicholaus','Williamson','mlynch@example.org','1-361-525-0028x7418','1982-05-07 12:42:44','1982-05-21 06:40:38'),(80,'Cassandre','Bode','vivien.bashirian@example.net','704-918-2145','1987-07-23 04:06:43','1996-09-12 09:14:17'),(81,'Elvis','Gusikowski','bettye25@example.org','461-007-1815','1999-04-14 11:54:21','2016-08-26 19:22:03'),(82,'Gaylord','Kautzer','dlarson@example.org','513.630.5716x101','1996-08-26 03:35:10','2006-07-06 04:36:08'),(83,'Sedrick','Kris','dayton47@example.net','547.192.9488x531','2001-02-22 21:14:02','2019-11-26 19:00:43'),(84,'Danial','Crona','mlangworth@example.com','818-476-5659','1974-08-11 12:34:46','1986-07-30 04:21:50'),(85,'Lysanne','O\'Keefe','luigi.koch@example.com','+29(7)5994028437','2006-01-14 18:04:13','2019-11-26 19:00:43'),(86,'Jules','Carter','orn.doyle@example.net','166-448-4146x875','1982-12-27 13:06:51','2019-11-26 19:00:43'),(87,'Quentin','Weber','kamren.jacobi@example.net','(816)977-4406','1990-11-08 07:58:40','2019-11-26 19:00:43'),(88,'Rory','Stiedemann','walker.harvey@example.org','569.181.9461x5257','1971-08-28 20:59:20','2019-11-26 19:00:43'),(89,'Ivory','Hane','nicolas.retha@example.net','546.249.6208x20812','1984-06-16 14:07:05','2012-12-07 00:21:06'),(90,'Solon','Balistreri','camden.goyette@example.com','171-805-9877x464','2016-11-20 08:57:32','2018-01-07 09:17:52'),(91,'Kiarra','Sanford','jewel.howe@example.net','284.508.9661x2383','1973-10-28 11:03:33','2002-05-18 06:32:23'),(92,'Zoey','Heidenreich','obrakus@example.org','983.785.2040','1984-08-04 20:02:33','1992-05-25 21:46:42'),(93,'Braeden','Lindgren','qwolf@example.org','(160)880-8175','2008-06-07 03:42:12','2012-03-17 13:18:51'),(94,'Agustina','Hand','mcdermott.lavern@example.com','203-840-1697x21367','1985-10-21 11:08:17','2019-05-07 09:24:53'),(95,'Israel','Grady','johathan64@example.org','254.859.8621x1287','2007-11-16 06:23:06','2019-11-26 19:00:43'),(96,'Virginie','Keebler','neal96@example.org','1-502-177-4467','1987-07-08 08:48:00','2004-10-12 14:42:41'),(97,'Tad','Dooley','fbode@example.com','452-422-9483x0127','1982-03-13 09:00:42','2010-10-22 23:38:46'),(98,'Sunny','Schroeder','kennedy01@example.net','1-331-120-1819x432','1999-08-24 14:11:38','2019-11-26 19:00:43'),(99,'Austyn','Lind','rosenbaum.domenic@example.com','661.705.4598x60109','1989-06-29 08:09:30','1998-10-13 06:12:05'),(100,'Jamar','Kilback','mariano.bruen@example.org','688-871-9946','1986-08-03 07:50:14','2019-11-26 19:00:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-27 20:25:15
