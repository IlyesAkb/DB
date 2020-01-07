-- MySQL dump 10.13  Distrib 8.0.18, for Linux (x86_64)
--
-- Host: localhost    Database: youtube
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
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `media_type_id` int(10) unsigned NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `media_user_id_fk` (`user_id`),
  KEY `media_media_type_id_fk` (`media_type_id`),
  KEY `media_id_idx` (`id`),
  KEY `media_file_name_idx` (`file_name`),
  CONSTRAINT `media_media_type_id_fk` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `media_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,1,'earum',69927,'1985-07-17 16:34:20','2019-12-26 22:19:24'),(2,2,1,'qui',48,'2009-01-27 19:30:20','1975-07-23 17:43:31'),(3,3,1,'minima',43992,'1999-01-18 16:39:18','2019-12-26 22:19:24'),(4,4,1,'nisi',463,'2012-06-30 15:44:39','2019-12-26 22:19:24'),(5,5,1,'placeat',897554500,'1984-04-06 02:22:59','2019-12-26 22:19:24'),(6,6,1,'quisquam',53507,'2009-09-30 05:48:29','2019-12-26 22:19:24'),(7,7,1,'architecto',142,'1976-10-03 22:19:57','2017-06-24 00:56:57'),(8,8,1,'qui',766258643,'2000-08-20 06:14:45','1986-11-23 12:53:08'),(9,9,1,'facere',602220142,'2000-10-04 08:26:04','2019-12-26 22:19:24'),(10,10,1,'ad',4,'1994-11-27 06:36:04','2019-12-26 22:19:24'),(11,11,1,'suscipit',5,'1995-10-12 04:52:17','2018-04-23 04:55:56'),(12,12,1,'non',530515,'2006-11-07 14:11:57','2019-12-26 22:19:24'),(13,13,1,'et',2,'1978-11-07 13:48:30','2017-08-18 17:08:35'),(14,14,1,'excepturi',457873662,'2002-05-12 07:01:49','2019-12-26 22:19:24'),(15,15,1,'quis',716,'1971-12-09 02:26:51','2019-12-26 22:19:24'),(16,16,1,'quam',1055,'2016-06-15 03:38:39','2019-12-26 22:19:24'),(17,17,1,'debitis',26377,'1985-04-27 09:57:20','2019-12-26 22:19:24'),(18,18,1,'qui',49786819,'2013-04-14 22:13:49','2019-12-26 22:19:24'),(19,19,1,'officiis',4414,'1992-07-22 17:27:15','2019-12-26 22:19:24'),(20,20,1,'ut',99096,'1999-12-10 06:04:30','1999-02-28 23:11:48'),(21,21,1,'sit',52389,'1978-07-28 20:27:05','2019-12-26 22:19:24'),(22,22,1,'ex',7694879,'1986-10-02 14:12:22','2009-12-09 19:21:17'),(23,23,1,'suscipit',6638,'2005-02-11 05:52:03','2019-12-26 22:19:24'),(24,24,1,'sunt',499229,'2010-06-26 05:27:39','1998-06-02 06:23:16'),(25,25,1,'sequi',525955630,'2017-03-11 13:02:42','2015-10-28 03:42:49'),(26,26,1,'a',61151,'2010-03-18 07:04:35','2019-12-26 22:19:24'),(27,27,1,'mollitia',1,'1978-07-25 10:47:50','2019-12-26 22:19:24'),(28,28,1,'quidem',1366641,'1997-02-14 10:24:06','2019-12-26 22:19:24'),(29,29,1,'est',0,'1973-02-14 06:48:56','2019-12-26 22:19:24'),(30,30,1,'voluptas',97029563,'2012-01-05 04:12:27','2019-12-26 22:19:24'),(31,31,1,'fugit',54,'1997-06-09 08:50:51','2019-12-26 22:19:24'),(32,32,1,'tempora',838369952,'2007-11-04 21:13:24','2019-12-26 22:19:24'),(33,33,1,'quasi',0,'1977-08-21 11:49:02','2005-05-22 15:31:50'),(34,34,1,'rerum',2,'1996-07-27 19:05:50','1989-09-24 08:03:49'),(35,35,1,'occaecati',0,'2011-12-30 07:59:55','2019-12-26 22:19:24'),(36,36,1,'enim',51290471,'2015-06-23 14:17:15','2018-05-23 07:11:52'),(37,37,1,'ut',7086013,'2018-08-16 15:03:07','2019-12-26 22:19:24'),(38,38,1,'voluptatem',82924,'2016-10-26 13:36:46','2019-12-26 22:19:24'),(39,39,1,'doloremque',63,'1972-11-20 08:03:24','2019-12-26 22:19:24'),(40,40,1,'rerum',24383859,'1974-07-10 12:57:03','2009-07-28 10:45:35'),(41,41,1,'illum',0,'2018-05-28 22:59:29','2019-12-26 22:19:24'),(42,42,1,'at',84,'1974-08-16 06:00:24','2016-06-23 05:54:06'),(43,43,1,'aut',21353571,'1982-03-05 06:20:11','2019-12-26 22:19:24'),(44,44,1,'in',361323862,'1984-05-02 01:48:04','2014-12-10 12:27:58'),(45,45,1,'totam',233949436,'1979-03-11 18:42:36','1976-09-30 23:20:01'),(46,46,1,'consequatur',330,'2004-01-31 15:48:49','2019-12-26 22:19:24'),(47,47,1,'molestiae',45537,'2018-01-15 07:40:00','2012-09-19 06:39:16'),(48,48,1,'aut',81,'1991-08-11 07:07:26','2019-12-26 22:19:24'),(49,49,1,'illo',838847975,'2006-09-13 13:26:39','2019-12-26 22:19:24'),(50,50,1,'tenetur',33,'2017-11-22 07:50:16','2019-12-26 22:19:24'),(51,51,2,'quia',45075215,'1975-01-22 14:59:42','2011-01-02 22:28:16'),(52,52,2,'aut',61907,'1989-05-08 13:56:19','2019-12-26 22:19:20'),(53,53,2,'dolores',17,'2013-04-04 17:06:46','2019-12-26 22:19:20'),(54,54,2,'alias',3030200,'1994-12-20 01:40:26','2019-12-26 22:19:20'),(55,55,2,'impedit',3,'2012-07-26 21:27:43','2007-08-17 10:36:50'),(56,56,2,'ut',0,'2008-11-07 09:55:54','2019-12-26 22:19:20'),(57,57,2,'neque',2044146,'2015-12-15 05:07:23','1976-06-10 09:19:46'),(58,58,2,'iusto',4,'2009-05-14 03:28:33','2019-12-26 22:19:20'),(59,59,2,'quibusdam',5550513,'1978-01-20 11:32:57','2019-12-26 22:19:20'),(60,60,2,'iusto',875145,'1976-07-12 08:39:35','2019-12-26 22:19:20'),(61,61,2,'suscipit',1439,'2002-01-20 07:19:12','2019-12-26 22:19:20'),(62,62,2,'nihil',8840,'2010-07-27 14:23:36','2019-12-26 22:19:20'),(63,63,2,'ab',83568,'2013-02-16 09:00:16','2019-12-26 22:19:20'),(64,64,2,'natus',646195,'1982-07-22 13:07:32','2012-06-08 09:40:22'),(65,65,2,'ut',1594,'1988-10-12 17:28:55','2019-12-26 22:19:20'),(66,66,2,'ea',8080523,'1993-09-23 11:34:29','2019-12-26 22:19:20'),(67,67,2,'architecto',50853906,'1988-07-09 03:05:29','2019-12-26 22:19:20'),(68,68,2,'id',198661,'1973-08-02 05:33:39','2019-12-26 22:19:20'),(69,69,2,'consequatur',634691,'1983-02-06 21:22:46','2019-12-26 22:19:20'),(70,70,2,'culpa',29313,'1976-09-27 04:29:09','2019-12-26 22:19:20'),(71,71,2,'laudantium',59926163,'1999-08-19 07:16:04','2019-12-26 22:19:20'),(72,72,2,'eius',227384433,'1987-08-06 00:40:52','2019-12-26 22:19:20'),(73,73,2,'voluptatibus',81566230,'1976-06-15 22:48:22','1976-01-02 15:27:22'),(74,74,2,'mollitia',197,'1993-08-12 23:44:08','2019-12-26 22:19:20'),(75,75,2,'sint',4043687,'1979-02-22 08:13:26','2019-12-26 22:19:20'),(76,76,2,'aperiam',425307,'1981-11-15 03:20:37','2019-12-26 22:19:20'),(77,77,2,'laboriosam',1781505,'1987-03-17 11:49:55','2019-12-26 22:19:20'),(78,78,2,'quod',3941,'2018-12-21 15:26:23','1971-01-21 18:10:32'),(79,79,2,'minima',821443,'1994-08-05 09:51:07','2019-12-26 22:19:20'),(80,80,2,'saepe',142,'1990-03-10 14:22:38','1993-05-30 07:22:26'),(81,81,2,'perspiciatis',7288280,'1996-07-25 11:34:30','2019-12-26 22:19:20'),(82,82,2,'minima',929,'2002-02-08 00:23:04','2019-12-26 22:19:20'),(83,83,2,'et',955,'1985-05-03 07:28:16','2019-12-26 22:19:20'),(84,84,2,'quae',0,'2006-11-16 23:17:08','2019-12-26 22:19:20'),(85,85,2,'alias',81,'1992-08-05 07:38:27','2007-06-11 22:37:14'),(86,86,2,'et',88155064,'1998-06-26 17:29:28','1973-01-22 11:48:21'),(87,87,2,'et',7491,'1981-06-17 09:30:10','2008-12-22 20:06:58'),(88,88,2,'fugit',51612,'2015-04-18 00:01:35','2000-01-24 02:28:18'),(89,89,2,'a',64050,'1995-11-14 14:29:41','2019-12-26 22:19:20'),(90,90,2,'commodi',26,'2005-11-19 18:35:50','2019-12-26 22:19:20'),(91,91,2,'qui',719148167,'1986-08-16 23:48:09','2019-12-26 22:19:20'),(92,92,2,'fugit',5323139,'2018-02-02 00:14:51','1995-12-25 20:57:38'),(93,93,2,'sed',414231,'1998-06-17 12:24:30','2019-12-26 22:19:20'),(94,94,2,'ut',0,'1984-11-05 22:47:36','2019-12-26 22:19:20'),(95,95,2,'et',2585736,'1985-12-15 03:22:18','2019-12-26 22:19:20'),(96,96,2,'voluptatem',2325,'2005-02-11 12:14:15','1976-02-21 14:03:18'),(97,97,2,'enim',640,'1976-07-19 08:02:17','2019-12-26 22:19:20'),(98,98,2,'velit',984150,'1991-11-23 06:38:08','2011-11-10 04:44:42'),(99,99,2,'dolores',5708904,'1982-07-01 10:29:02','2019-12-26 22:19:20'),(100,100,2,'incidunt',88466502,'1989-06-03 05:01:26','2013-04-11 05:35:25');
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
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'image'),(2,'video'),(3,'quasi');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `sex` char(1) NOT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) DEFAULT NULL,
  `image_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `profiles_id_idx` (`id`),
  KEY `profiles_user_id_idx` (`user_id`),
  KEY `profiles_image_id_idx` (`image_id`),
  CONSTRAINT `profiles_image_id_fk` FOREIGN KEY (`image_id`) REFERENCES `media` (`id`) ON DELETE SET NULL,
  CONSTRAINT `profiles_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,'f','1975-09-15','Gavinmouth',44),(2,2,'m','1985-07-15','Vaughnburgh',39),(3,3,'m','1990-02-16','New Tito',43),(4,4,'m','1987-11-19','East Delmermouth',34),(5,5,'m','1984-04-22','Daphneeport',1),(6,6,'m','1995-12-15','Herzogborough',48),(7,7,'m','2003-12-05','Lake Alford',13),(8,8,'f','2000-11-15','Furmantown',17),(9,9,'f','2004-01-11','East Berniece',37),(10,10,'f','2016-07-01','East Lavina',12),(11,11,'f','1976-11-13','North Vernerbury',29),(12,12,'f','1981-03-12','Kubside',19),(13,13,'m','2010-10-27','Andrewshire',33),(14,14,'f','1998-08-12','Citlalliside',40),(15,15,'f','2013-06-01','East Eino',42),(16,16,'f','1970-02-09','Antoinetteside',44),(17,17,'m','2014-10-20','Collinsview',1),(18,18,'m','1992-12-12','South Kathryne',18),(19,19,'f','2004-07-28','Tanyafort',7),(20,20,'f','1998-01-07','Nathanfort',37),(21,21,'m','2014-01-16','East Lizafort',37),(22,22,'f','1970-01-28','New Maudiebury',7),(23,23,'m','1973-10-06','Freedaland',11),(24,24,'f','1972-09-03','South Kristoffer',37),(25,25,'m','1974-11-29','Wolffurt',16),(26,26,'f','1971-11-08','Lake Adeliafurt',11),(27,27,'f','1984-08-25','Port Isabellechester',40),(28,28,'f','1989-04-17','North Jerry',36),(29,29,'m','2007-05-11','Wardtown',26),(30,30,'f','1998-01-11','Lake Brock',43),(31,31,'m','1987-10-12','Stephanborough',31),(32,32,'m','2007-11-25','Casandrabury',45),(33,33,'f','2008-09-29','Stephanview',9),(34,34,'m','2016-09-28','Ricehaven',12),(35,35,'f','2019-05-06','Port Pat',44),(36,36,'f','1983-12-10','Lake Ethaburgh',39),(37,37,'m','1970-05-29','New Augustahaven',2),(38,38,'m','1995-08-16','North Annamarie',10),(39,39,'m','2012-11-02','North Mortonland',7),(40,40,'m','2005-05-14','East Furman',30),(41,41,'f','1981-03-27','South Rosanna',19),(42,42,'m','1999-11-12','Sanfordchester',46),(43,43,'m','1977-10-02','Bahringerfort',15),(44,44,'f','2018-06-04','South Calista',36),(45,45,'f','1972-04-29','Ebertfurt',46),(46,46,'m','1976-07-18','Jastland',6),(47,47,'f','1993-12-03','Conroymouth',32),(48,48,'f','1977-06-29','Port Tressie',47),(49,49,'m','1990-04-03','Lake Danika',30),(50,50,'m','2018-07-24','Port Maximillia',21),(51,51,'m','2019-11-20','Imachester',8),(52,52,'f','1995-04-09','Hectorport',5),(53,53,'m','1980-02-24','West Craig',13),(54,54,'f','1989-04-16','Gradymouth',14),(55,55,'m','1991-02-11','South Willie',32),(56,56,'m','1978-08-03','Manteview',27),(57,57,'f','2001-04-10','Balistrerifort',30),(58,58,'m','1976-10-26','Port Lizzieshire',7),(59,59,'m','1978-04-20','Lake Metafurt',49),(60,60,'f','2011-03-13','West Jazminside',16),(61,61,'m','2009-07-12','Cruickshankmouth',30),(62,62,'m','1991-04-19','West Seamusland',3),(63,63,'f','2012-02-18','New Thurman',25),(64,64,'m','2018-09-07','South Melodymouth',26),(65,65,'m','1994-02-22','Dillanchester',28),(66,66,'m','2018-01-24','Reingerland',13),(67,67,'m','1975-06-27','South Lindsay',17),(68,68,'f','1990-01-22','Erichside',3),(69,69,'m','1983-10-10','Faheyville',1),(70,70,'m','1998-12-19','Franzview',31),(71,71,'m','2010-01-17','Emeraldport',29),(72,72,'m','1974-08-23','North Darion',35),(73,73,'m','2015-09-13','Shaynafurt',19),(74,74,'f','1985-04-07','Gulgowskimouth',35),(75,75,'m','2012-10-01','East Kaleport',45),(76,76,'m','1970-08-03','West Monty',44),(77,77,'f','2018-01-24','Terryfurt',2),(78,78,'m','2006-02-17','Port Delphaberg',48),(79,79,'m','2004-08-21','Keeblerside',36),(80,80,'f','2004-04-26','Giovannaport',11),(81,81,'f','1973-01-27','New Nasir',11),(82,82,'f','1989-01-24','Eldoraland',48),(83,83,'f','1983-10-31','South Mikayla',23),(84,84,'f','1984-12-06','Trompshire',13),(85,85,'m','1980-03-24','East Gwendolyn',9),(86,86,'m','2008-09-18','East Tremaine',15),(87,87,'f','2014-09-26','North Stoneside',13),(88,88,'m','2018-07-03','South Agustin',8),(89,89,'m','1993-07-28','Muellerhaven',43),(90,90,'m','1989-09-05','Marquardtfort',32),(91,91,'f','2008-01-18','North Nigelland',36),(92,92,'f','2007-03-13','East Rainaville',29),(93,93,'f','2013-09-26','Elroyside',18),(94,94,'f','1982-10-17','New Mariannebury',19),(95,95,'f','1996-05-16','Levifort',17),(96,96,'f','1980-05-07','Schulistchester',2),(97,97,'f','2013-07-19','Port Madonna',7),(98,98,'f','1995-05-29','South Jailyn',36),(99,99,'m','2008-05-20','Mozellemouth',25),(100,100,'f','1986-04-22','New Cruztown',47);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `subscriber_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `subscriptions_user_id_idx` (`user_id`),
  KEY `subscriptions_subscriber_id_idx` (`subscriber_id`),
  CONSTRAINT `subscriptions_subscriber_id_fk` FOREIGN KEY (`subscriber_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subscriptions_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,1,17),(2,2,63),(3,3,24),(4,4,94),(5,5,75),(6,6,95),(7,7,48),(8,8,68),(9,9,4),(10,10,55),(11,11,22),(12,12,63),(13,13,10),(14,14,91),(15,15,74),(16,16,3),(17,17,77),(18,18,100),(19,19,10),(20,20,45),(21,21,13),(22,22,41),(23,23,26),(24,24,44),(25,25,44),(26,26,100),(27,27,26),(28,28,40),(29,29,1),(30,30,62),(31,31,98),(32,32,63),(33,33,48),(34,34,12),(35,35,9),(36,36,71),(37,37,79),(38,38,92),(39,39,61),(40,40,90),(41,41,74),(42,42,3),(43,43,77),(44,44,40),(45,45,2),(46,46,78),(47,47,55),(48,48,74),(49,49,9),(50,50,47),(51,51,92),(52,52,47),(53,53,67),(54,54,28),(55,55,93),(56,56,40),(57,57,45),(58,58,35),(59,59,37),(60,60,14),(61,61,11),(62,62,29),(63,63,47),(64,64,75),(65,65,33),(66,66,10),(67,67,9),(68,68,85),(69,69,93),(70,70,50),(71,71,95),(72,72,70),(73,73,26),(74,74,31),(75,75,96),(76,76,86),(77,77,30),(78,78,74),(79,79,26),(80,80,22),(81,81,71),(82,82,14),(83,83,75),(84,84,43),(85,85,75),(86,86,63),(87,87,33),(88,88,86),(89,89,44),(90,90,91),(91,91,16),(92,92,82),(93,93,26),(94,94,5),(95,95,93),(96,96,38),(97,97,14),(98,98,94),(99,99,58),(100,100,76);
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
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
  `email` varchar(120) DEFAULT NULL,
  `phone` varchar(120) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `users_id_idx` (`id`),
  KEY `users_first_name_last_name_idx` (`first_name`,`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Patricia','Larson','amaya.mayer@example.com','(912)580-2026x229','2007-02-27 01:25:47','2001-02-06 17:30:07'),(2,'Nicolas','Connelly','walker.reese@example.net','(746)895-8333x30828','2018-04-24 14:41:39','1995-09-13 19:27:41'),(3,'Kristina','Donnelly','hayes.ewell@example.org','181-390-1178x2367','1973-07-29 23:32:32','2013-07-30 22:38:17'),(4,'Brandon','Bogisich','cmante@example.net','(450)437-5657','1995-08-17 15:11:55','1977-01-22 01:47:45'),(5,'Damon','Klocko','vivianne59@example.net','1-708-499-5676x721','2012-05-13 15:42:02','1970-10-25 08:55:31'),(6,'Caleigh','Batz','herzog.annetta@example.com','(476)991-1897x642','1978-02-07 04:27:19','1970-03-11 21:33:59'),(7,'Neoma','Anderson','otto.beier@example.org','04023991325','1990-02-20 17:23:15','2006-04-02 19:43:17'),(8,'Gunnar','Franecki','hmertz@example.net','1-961-215-1013x362','2012-12-16 09:29:29','2010-12-25 12:33:34'),(9,'Makenzie','Little','helmer15@example.com','1-492-515-0261','1996-03-04 04:55:11','2007-07-27 16:47:22'),(10,'Josie','Strosin','araceli.fahey@example.net','793.615.0528','1982-06-06 12:49:37','1982-04-16 09:02:11'),(11,'Jennie','Grimes','fausto57@example.net','414-662-2323x702','1977-02-07 02:13:01','1985-09-12 20:19:56'),(12,'Gwen','Hermann','davis.stanford@example.net','+20(5)3051126572','2014-01-19 02:54:07','1985-11-02 12:02:19'),(13,'Dudley','Halvorson','velva.gleichner@example.com','223.217.9028x371','1995-01-12 13:36:35','1986-06-20 00:25:44'),(14,'Hope','Kemmer','mcorwin@example.org','06186995444','2019-01-30 06:12:15','1984-07-22 08:51:52'),(15,'Maiya','Schmidt','hailee.robel@example.net','695-922-9258','2001-03-27 03:16:59','2007-11-06 21:56:54'),(16,'Vincenza','Bartoletti','lee85@example.com','471.822.9218x598','2018-09-28 19:44:56','2014-06-02 03:15:35'),(17,'Odessa','Leuschke','feeney.anna@example.net','868.401.4110','2018-05-07 15:17:22','2008-01-07 09:58:40'),(18,'Javon','Williamson','ntrantow@example.net','(313)286-1208','1997-01-14 03:54:05','2005-11-25 01:37:29'),(19,'Lorna','Torp','haley.cristopher@example.com','1-660-319-7439x28248','1974-01-15 14:59:42','1993-04-07 03:35:30'),(20,'Tomasa','Ullrich','ardella79@example.com','(917)820-5373x391','2007-06-01 08:28:17','1987-11-30 13:15:58'),(21,'Rita','O\'Reilly','zulauf.felipa@example.com','665.224.2119','2010-06-15 10:55:45','1988-02-05 18:20:21'),(22,'Eleazar','Rogahn','sedrick28@example.net','1-909-333-6870','2016-07-06 07:12:39','1982-05-10 16:39:50'),(23,'Reid','Glover','olin.walsh@example.org','(565)168-2087x61272','2002-07-06 23:40:33','2011-11-19 10:28:51'),(24,'Elwin','Anderson','rashad.ernser@example.net','808.174.5103','2001-12-18 11:11:52','2001-05-23 03:23:17'),(25,'Cecelia','Bruen','thiel.kallie@example.org','+61(2)5957610859','1997-08-03 17:45:48','1991-11-28 05:31:44'),(26,'Laurianne','Moore','weissnat.rosa@example.org','(336)742-0380x08308','1996-02-18 17:10:43','1978-03-26 10:59:12'),(27,'Adam','Parisian','angelo42@example.org','+00(6)6318889642','2007-12-03 23:05:31','1987-04-01 18:02:12'),(28,'Clinton','Steuber','annabelle.durgan@example.net','865-987-6378','1985-02-06 18:15:53','1990-10-10 09:43:09'),(29,'Osborne','Champlin','erich48@example.net','980-192-6014x673','1990-11-30 04:18:21','1971-12-17 02:05:36'),(30,'Loyal','Littel','dion00@example.net','+60(2)2571164656','1989-07-06 16:34:26','1977-03-06 22:35:25'),(31,'Sabina','Hickle','efrain.wisoky@example.net','718-996-4936x27213','2019-08-22 18:19:56','1977-02-17 06:53:23'),(32,'Brad','Hermiston','oquitzon@example.com','(595)705-6624x9333','2014-06-11 10:29:11','1992-07-07 04:56:49'),(33,'Rick','O\'Connell','mina89@example.org','230-470-9206x7674','2006-09-24 04:10:11','1985-06-24 15:11:11'),(34,'Dorothy','Towne','julianne.murphy@example.com','(566)666-0839','1978-11-21 00:09:30','1994-10-04 00:07:25'),(35,'Vena','Bergnaum','ngraham@example.net','00204155502','1976-11-02 08:27:04','2009-08-01 20:53:54'),(36,'Alda','Gutmann','erik.labadie@example.com','1-869-993-6180','2012-03-09 00:31:10','2018-01-11 12:28:29'),(37,'Sheridan','Cormier','mara.abshire@example.net','522.785.8739x2269','1996-12-02 21:12:20','1992-12-18 16:37:03'),(38,'Fernando','Swaniawski','dino49@example.net','1-810-793-5669x069','1986-01-03 11:48:17','1974-09-05 20:08:35'),(39,'Oswaldo','West','alessandro.bartell@example.org','(994)638-5526x2209','2001-07-30 13:16:29','2015-04-17 10:31:52'),(40,'Eudora','Bailey','strosin.isabelle@example.com','116-090-1440x449','1987-08-15 20:59:31','1998-10-17 06:32:53'),(41,'Noemie','Cremin','runolfsdottir.harry@example.org','737.151.6809x219','1976-01-28 09:04:36','1991-03-13 06:01:22'),(42,'Katherine','Paucek','langosh.maximillia@example.org','1-392-686-9176','1996-06-14 14:14:32','1970-09-11 00:15:30'),(43,'Finn','Witting','pziemann@example.com','(331)461-0129x821','2014-05-07 15:20:18','1970-08-27 07:13:56'),(44,'Lizzie','Fahey','cortez.stoltenberg@example.com','760-907-4616x5278','2002-09-11 19:33:04','1988-05-05 06:57:12'),(45,'Glen','Murazik','fkuhn@example.org','1-515-635-9132','2008-11-09 20:36:08','1990-09-08 13:38:47'),(46,'Libbie','Thompson','alfonzo71@example.org','(571)889-5605x44708','1970-11-15 13:01:21','1995-04-09 09:42:32'),(47,'Michelle','Harber','jdaniel@example.org','+14(8)2962180445','1975-10-23 16:59:50','1979-06-29 23:21:19'),(48,'Brionna','Hansen','hchamplin@example.com','1-838-935-5829x34016','1993-12-15 05:54:22','1988-10-20 14:02:16'),(49,'Henry','Raynor','erosenbaum@example.net','+91(3)0413837077','1975-10-12 16:03:58','1985-04-22 04:15:43'),(50,'Jose','Hermann','kailee.hills@example.net','+61(6)7795551884','1996-02-19 13:00:14','1976-03-25 23:18:10'),(51,'Liliana','Schroeder','jace.heathcote@example.org','606.113.7893x830','1993-04-20 11:19:18','2008-01-11 13:05:07'),(52,'Jocelyn','Yost','oluettgen@example.org','850-758-4666x3300','1984-09-12 01:25:22','2010-01-29 12:19:58'),(53,'Maud','Weissnat','yraynor@example.com','110-837-1277','1980-05-20 15:10:15','2013-03-29 06:35:36'),(54,'Hazel','Abbott','nettie.reinger@example.org','09279976799','1988-03-01 11:56:08','1992-11-30 14:30:42'),(55,'Leonel','Keeling','rahul56@example.net','056-782-8334','1978-03-13 06:28:45','2014-01-17 15:36:45'),(56,'Juana','Langworth','celia44@example.net','381.158.4563x53231','2005-07-11 15:50:57','2019-10-02 18:18:59'),(57,'Royce','Larson','aboyer@example.com','(911)926-2553x81396','2004-04-24 05:18:04','2011-02-20 10:42:04'),(58,'Francis','Turcotte','raphael.hills@example.org','105.469.9189x896','1971-12-30 21:05:40','1983-05-25 10:39:57'),(59,'Amaya','Crist','timmy.koss@example.org','+63(2)9433097775','1990-03-13 10:44:53','2016-09-29 08:33:14'),(60,'Alden','Kreiger','scarlett27@example.com','06164394284','1989-12-19 11:56:17','1999-07-28 16:22:42'),(61,'Modesto','Cremin','kertzmann.rosalind@example.org','679.670.3621x335','1977-08-12 17:23:27','1989-01-02 16:44:24'),(62,'Rodrick','Hansen','wyman.yasmine@example.com','534.850.1798x952','2008-03-14 03:48:57','2000-02-26 13:26:11'),(63,'Eulah','Howe','lpacocha@example.org','918-460-6672','2001-11-05 20:47:07','2014-04-03 09:29:42'),(64,'Murray','Kuhlman','owill@example.net','(922)688-7447x54685','1973-12-04 10:33:12','1984-06-30 05:51:29'),(65,'Bradford','Keebler','upaucek@example.net','(710)895-7476x31835','2015-11-27 06:59:27','1990-01-23 11:14:08'),(66,'Tyreek','Casper','reilly.jake@example.org','04755948699','2013-02-18 19:09:03','1999-03-28 02:27:31'),(67,'Martin','Grant','wilderman.kolby@example.org','1-132-931-4433x69938','1980-12-12 22:44:24','2019-03-19 09:08:46'),(68,'Alda','Durgan','adele.parker@example.org','284-987-8189x295','1970-09-24 10:18:13','2007-06-05 09:58:43'),(69,'Marguerite','Oberbrunner','tkilback@example.com','1-113-092-0183','1983-01-08 07:23:24','2017-04-30 17:54:14'),(70,'Darren','Price','korey.mueller@example.org','1-222-370-0550','2015-09-27 01:31:21','1991-05-13 14:21:10'),(71,'Trudie','Thompson','royce40@example.net','1-916-035-8220x20979','2002-05-08 17:20:01','1984-06-09 19:39:33'),(72,'Nayeli','Reichel','goldner.jaqueline@example.com','1-286-703-5220x2564','1972-07-18 08:21:03','2009-04-04 17:46:02'),(73,'Ottis','Hand','yrutherford@example.net','1-050-809-3591','1983-03-25 02:40:19','2016-05-19 17:48:42'),(74,'Precious','Torp','pfannerstill.aleen@example.com','07915258433','1971-02-13 12:43:53','1985-01-16 01:01:30'),(75,'Carolina','O\'Kon','sporer.julien@example.com','983-507-8487','2017-10-03 04:35:19','2014-12-30 08:29:44'),(76,'Neva','Stanton','cummings.raheem@example.net','(915)960-7769x088','1992-01-26 21:52:18','1998-12-06 06:27:47'),(77,'Gerson','Murazik','steuber.orpha@example.net','564-124-5292x2218','1973-03-21 14:58:41','1988-01-16 05:41:44'),(78,'Corene','Jacobi','bauch.julie@example.org','419.945.5282x83957','2013-01-07 20:03:58','2004-06-25 01:21:10'),(79,'Geraldine','Olson','dereck.reynolds@example.org','313-309-7546x067','1973-09-14 12:31:55','1974-03-26 22:52:00'),(80,'Diana','Schumm','eldridge.mcdermott@example.org','(970)111-3865','2010-10-12 06:46:07','1970-10-03 05:27:48'),(81,'Ila','Schneider','arlene69@example.org','793-659-0462','1998-02-06 01:37:17','1975-10-16 12:18:52'),(82,'Chet','Fay','seth98@example.net','473.020.7372','2005-11-12 09:54:19','1991-09-10 20:37:23'),(83,'Antonia','Mraz','vthiel@example.org','766-826-9697x28081','2010-11-19 00:36:24','1991-04-11 16:59:51'),(84,'Samir','O\'Connell','pberge@example.org','(162)757-2636x00172','1997-01-25 18:49:20','2004-02-29 08:35:43'),(85,'Krystal','Hermann','shields.ursula@example.net','1-085-741-7051','2016-07-28 05:13:56','2002-11-20 02:50:27'),(86,'Alysson','Brekke','gzemlak@example.org','330-773-7891','1985-08-07 13:45:45','1973-11-15 17:54:45'),(87,'Bernhard','Mertz','lazaro05@example.org','020-914-9107','2002-01-10 02:10:09','1987-11-01 05:10:14'),(88,'Kali','Gaylord','zspencer@example.net','(495)300-0660','1977-01-10 08:30:01','1991-09-09 00:36:26'),(89,'Tania','Effertz','jo\'kon@example.com','310.798.0183x86207','2013-07-02 19:48:55','1983-06-14 20:52:33'),(90,'Shawn','Schmeler','oo\'reilly@example.com','312.830.0284','2018-12-29 08:30:02','1970-03-20 23:07:41'),(91,'Evan','Leannon','anabel.pfannerstill@example.com','04836224921','1980-01-18 19:35:07','2017-04-01 03:08:17'),(92,'Lorena','Leannon','dewitt.daugherty@example.net','900.515.1222x9904','1971-04-22 05:10:16','1994-12-14 06:07:48'),(93,'Kobe','Osinski','sherwood.romaguera@example.net','400.502.1024x3692','1976-02-03 00:12:57','1994-09-29 00:13:41'),(94,'Quincy','Schroeder','brown.luella@example.org','+40(4)6180249457','2013-04-22 23:01:48','1972-02-03 00:21:51'),(95,'Jevon','Murray','german.rolfson@example.org','(675)667-8719x230','1980-10-28 04:50:06','1989-09-15 12:28:35'),(96,'Milo','Pagac','tobin31@example.net','03368994939','1996-01-17 09:53:46','1987-03-16 05:17:42'),(97,'Jacinto','Legros','lorenz.homenick@example.net','1-028-441-5782x6548','2009-01-22 21:29:23','1985-03-26 05:50:54'),(98,'Joy','Larson','earnest.hudson@example.com','449-211-7159','1984-11-16 13:15:08','2015-02-16 22:32:40'),(99,'Desmond','Bahringer','mcglynn.edward@example.com','+76(6)1450005159','1997-06-10 22:17:32','2006-10-09 23:45:05'),(100,'Anibal','Thiel','lelah89@example.org','149.631.7576','2004-02-06 07:18:35','2001-09-08 07:54:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_email_and_tel_on_insert` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
	IF (NEW.email IS NULL AND NEW.phone IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'email or phone is not exisits';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_email_and_tel_on_update` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
	IF (NEW.email IS NULL AND NEW.phone IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'email or phone is not exisits';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `users_videos`
--

DROP TABLE IF EXISTS `users_videos`;
/*!50001 DROP VIEW IF EXISTS `users_videos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `users_videos` AS SELECT 
 1 AS `user_id`,
 1 AS `user_name`,
 1 AS `video_id`,
 1 AS `video_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `video_comments`
--

DROP TABLE IF EXISTS `video_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `video_id` int(10) unsigned NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updadet_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `viedo_comments_video_id_idx` (`video_id`),
  KEY `video_comments_user_id_idx` (`user_id`),
  CONSTRAINT `video_comments_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `video_comments_video_id_fk` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_comments`
--

LOCK TABLES `video_comments` WRITE;
/*!40000 ALTER TABLE `video_comments` DISABLE KEYS */;
INSERT INTO `video_comments` VALUES (1,1,1,'Aut excepturi perferendis at qui iure eveniet impedit et. Provident sint aliquam est dolor in neque iste. Veniam maxime commodi qui exercitationem. Inventore corrupti saepe autem quis dolorem mollitia.','2007-11-20 04:40:36','1972-08-10 18:53:23'),(2,2,2,'Velit et dolor quo quia cupiditate. Enim natus quidem sapiente est non vel suscipit. Tempora reprehenderit totam in dolor. Assumenda optio consectetur alias esse dolor.','1991-07-10 16:21:30','2017-01-03 15:45:25'),(3,3,3,'Ut iste qui sed. Voluptatem perferendis sint dolor dicta eius. Rem aut possimus recusandae nulla.','2014-08-22 03:30:27','1982-01-13 01:03:06'),(4,4,4,'Ullam similique accusamus eum quod. Repellendus dolore voluptatum eos molestias autem harum voluptates. Nam eaque ipsum dolorum. Accusantium odio repudiandae quis est omnis et.','2014-11-03 09:46:56','1984-09-19 10:47:59'),(5,5,5,'Praesentium error modi molestias iste. Eius est ut id voluptate quia magni deleniti rerum. Explicabo culpa hic et omnis accusamus molestias. Incidunt ducimus rem dolor quod dolorem tempora tempora assumenda.','2016-02-21 06:38:29','2010-12-05 09:15:09'),(6,6,6,'Enim earum iste aut velit ab facilis. Rerum consequuntur voluptatem in excepturi tempora.','1996-06-07 21:49:52','1987-11-12 15:04:58'),(7,7,7,'Incidunt enim culpa quis voluptas qui. Natus explicabo expedita earum ut molestiae aliquid. Eos odio placeat quam numquam nostrum aut sint.','2015-02-19 22:28:09','2017-08-18 16:35:43'),(8,8,8,'Amet vitae illum minima illo quo et omnis. Totam debitis molestiae minima quos et. Voluptas sit omnis omnis omnis. Iure minima doloribus aspernatur dolor error.','2017-09-24 00:09:29','1987-11-19 20:04:52'),(9,9,9,'Veniam dolores earum illum. Inventore fugiat dolores ipsa expedita repellendus. Deserunt repudiandae qui saepe omnis. Iste velit et et dolores tempora.','2004-10-26 18:00:00','1978-11-05 02:58:53'),(10,10,10,'Et aliquid doloremque sunt voluptatem sit sed sapiente. Reprehenderit non omnis corrupti neque vel. Sint non et facere autem aliquam nulla. Aliquid esse sapiente laborum fuga. Velit delectus molestiae praesentium officia.','2012-11-14 16:46:50','2011-08-05 06:25:36'),(11,11,11,'Aperiam quae non recusandae quia et omnis. Ullam ex corporis sed cupiditate illo quas. Enim aut non commodi impedit. Deserunt et nostrum corporis cupiditate quos.','1978-09-05 14:52:50','2006-01-08 13:33:50'),(12,12,12,'Praesentium molestiae possimus sed dolor nihil quia. Voluptatem unde et tempora non sequi. Vitae ea doloremque ut ad. Et voluptates similique consequatur accusamus rerum cupiditate.','2005-10-14 18:27:31','2018-04-06 08:05:21'),(13,13,13,'Molestiae corrupti corporis nihil sunt vero dolorum. Consequatur itaque voluptas cumque. Sit excepturi dolor odit ut. Ut quas unde quia quo laboriosam harum recusandae maiores.','2011-07-11 07:49:06','1971-06-06 09:15:50'),(14,14,14,'Est autem ea est. Aut ad ea soluta iste unde. Animi inventore fugit distinctio et amet adipisci fugit eligendi. Cumque delectus quibusdam optio ut.','1989-12-30 19:18:37','2008-12-05 04:21:41'),(15,15,15,'Tempore eveniet dolore doloribus laudantium. Labore deserunt praesentium nihil aspernatur ea aliquid sed deleniti. Ad et quia nobis qui voluptatem nesciunt.','2009-05-18 09:39:51','2006-05-24 01:13:42'),(16,16,16,'Vel officiis dolores provident. Rem natus consequatur suscipit earum voluptatem saepe quis. Similique aut odio ad sunt dolores quo occaecati.','1993-11-21 12:06:53','2012-05-14 03:18:58'),(17,17,17,'Excepturi aut excepturi adipisci quidem illum rerum. Non iusto ratione tenetur. Voluptatem et sint qui molestiae est deserunt.','1982-09-10 13:38:26','1970-10-22 08:30:30'),(18,18,18,'Doloribus nesciunt at repudiandae sed animi voluptatum. Quo quam debitis voluptatum qui minima aspernatur sapiente. Autem in quidem sint possimus provident voluptatem. Omnis ut eos molestiae aut necessitatibus.','2005-11-28 11:07:37','2010-02-09 00:27:18'),(19,19,19,'Nemo quibusdam voluptatem ad nostrum sunt. Nihil assumenda cupiditate accusamus aut. Non blanditiis tenetur eius laborum reprehenderit earum libero quidem. Numquam rerum nulla eum sit.','2000-11-08 00:52:38','2001-08-02 22:04:08'),(20,20,20,'Harum ducimus itaque nihil necessitatibus reprehenderit eveniet doloremque. Inventore dolores velit voluptatibus nihil. Possimus molestias pariatur esse enim fugiat quia est. Aperiam enim cupiditate vero. Tempora harum illo animi rerum nihil eos.','2004-10-13 19:36:00','1984-09-05 10:43:10'),(21,21,21,'Dolorem id iste fugiat nisi assumenda id. Quas consequuntur sunt natus eius adipisci ad velit illo. Et qui accusamus occaecati nisi aut.','2007-10-08 16:50:28','1977-02-14 23:14:51'),(22,22,22,'Nulla qui quia quod beatae dolorum quia. Alias porro consequuntur porro dicta quod. Et hic fugit hic eum vitae. Assumenda aliquid doloribus labore et animi totam.','1986-10-24 20:51:21','1996-04-30 19:59:02'),(23,23,23,'Quia perspiciatis consectetur ipsam aperiam consequatur atque commodi. Impedit repellendus voluptas culpa officiis. Nostrum quaerat nihil sapiente in est sunt.','1971-07-11 07:00:27','2001-09-04 03:40:30'),(24,24,24,'Blanditiis dolor voluptate veritatis doloremque. Aperiam sed neque id occaecati. Adipisci voluptates nihil placeat nobis.','1973-03-30 20:14:20','1986-01-07 09:31:47'),(25,25,25,'Repudiandae ea sint voluptatibus iste corporis eius. Accusantium qui ut consequatur. Iusto doloremque excepturi voluptas amet necessitatibus sunt molestiae. Maiores sed autem odio totam aliquid. Sed non incidunt ea aut dolores quae sunt.','2014-06-15 19:33:05','2005-03-31 21:26:33'),(26,26,26,'Facere perferendis perspiciatis quis. Fugiat iure repudiandae exercitationem sunt quas et. Non maiores voluptas omnis impedit provident dicta cumque et. Consequatur est consequatur sed sunt laudantium illum est recusandae.','1973-11-21 04:06:23','1971-05-30 23:19:42'),(27,27,27,'Quis ut qui aut modi. Necessitatibus commodi harum aut tenetur iste voluptates sit. Sed voluptatem natus eius ullam. Est aut autem quia odit fuga non nam sunt.','1994-09-28 09:35:30','1987-05-22 22:33:49'),(28,28,28,'Et laborum ut tempora magni tenetur ipsam. Voluptas cumque porro explicabo at distinctio rerum. Exercitationem dignissimos optio qui iste. Eaque quae quia nam dolorem quis. Laboriosam esse ipsum in quam eum libero.','1994-09-17 21:03:04','1981-07-20 10:34:21'),(29,29,29,'Ut est saepe vitae esse autem. Sunt modi in consequatur iure sed. Modi quam deserunt omnis labore quis repudiandae. Corporis enim consequuntur iure distinctio necessitatibus sed autem.','2011-03-12 01:47:48','2010-11-24 14:27:59'),(30,30,30,'Et mollitia accusantium culpa minima. Reprehenderit quod nam dolores a non accusamus. Nihil sint et quidem minima rerum aut et consequatur.','1971-07-25 00:08:22','1982-03-29 05:56:47'),(31,31,31,'Eos quo voluptatem cumque dolorem provident architecto. Doloribus ipsum neque nisi qui. Quae maiores a nihil optio et fugit delectus.','1984-10-04 10:51:33','1987-01-08 11:53:48'),(32,32,32,'Perferendis temporibus quo non voluptatum deserunt sit dolor. Ut exercitationem sit molestiae dolor iste. Quo omnis quaerat quis doloremque ipsa mollitia. Neque consectetur perspiciatis ut nostrum dolor.','1977-07-12 03:55:27','1984-04-11 04:19:38'),(33,33,33,'Natus neque maxime sit et suscipit minus in maiores. Neque aut fugit quia voluptatibus et et. Ut nobis incidunt reiciendis sit rerum totam.','1971-02-06 01:36:21','2009-11-15 18:15:36'),(34,34,34,'Quidem voluptatem et assumenda eligendi. Expedita qui soluta natus voluptates repudiandae blanditiis. Veritatis maxime perferendis voluptas dolorem.','2008-08-11 07:18:26','1989-06-12 13:00:19'),(35,35,35,'Est voluptatem in commodi perferendis sunt. Inventore mollitia laborum qui eum aut voluptas ut. Id earum est maxime cupiditate asperiores. Doloremque autem quibusdam enim ut at.','2004-03-28 09:32:18','1976-01-09 07:48:20'),(36,36,36,'Voluptates harum molestiae vel qui aut. Ea enim sunt qui possimus doloremque. Dolor voluptas dolorem omnis hic labore adipisci. Fuga et quia eaque deleniti.','2010-07-25 14:01:11','1970-05-30 12:45:11'),(37,37,37,'Debitis sed voluptas ea reiciendis minus. Doloremque tenetur amet est placeat aut et id. Quibusdam sed sapiente sed ratione sed. Perspiciatis excepturi rerum ipsa possimus blanditiis consequuntur dignissimos maiores.','1990-09-29 06:23:43','1995-12-28 15:36:38'),(38,38,38,'Corrupti est nihil aut pariatur. Quia labore ipsum id fugiat. Ratione saepe veritatis maiores sequi.','1991-09-12 14:26:57','2019-06-15 08:36:14'),(39,39,39,'Deleniti ut ea numquam vero ea et. At aliquam eligendi sunt labore quo. Molestiae veritatis praesentium quo voluptates mollitia nihil odio voluptatibus.','1992-04-20 00:46:10','1977-04-28 00:12:24'),(40,40,40,'Ut iusto vitae adipisci ut ex veritatis. Praesentium est consequatur quis doloremque est nemo consequatur voluptates. Omnis rerum corrupti in ut odit. Quia iure distinctio laboriosam occaecati et.','2005-08-14 23:59:16','1977-08-04 07:31:06'),(41,41,41,'Harum in sed ullam architecto. Maiores rerum aperiam vitae voluptatem. Veniam cum dignissimos molestiae. Ipsum aut exercitationem praesentium asperiores perspiciatis.','1985-11-11 00:18:34','2016-04-09 22:56:12'),(42,42,42,'Porro aut accusamus doloribus neque veritatis similique. Ut dolor dolorem natus labore corporis molestiae autem. Nihil cum adipisci quia ut et accusantium debitis.','2000-08-03 22:45:45','1981-10-15 10:58:35'),(43,43,43,'Doloribus quis porro veritatis. Earum explicabo facilis nam qui sit sequi. Nihil vero cumque et quia earum debitis ducimus. Excepturi qui nobis veniam accusamus.','2011-07-18 12:58:52','2007-06-05 15:26:56'),(44,44,44,'Eaque iusto provident minus voluptatum animi vel quibusdam aliquam. Id dolorem sint provident ab. Est sapiente est quaerat laboriosam sunt. Vel rerum non et aut.','2016-05-21 03:07:01','1977-08-19 17:01:50'),(45,45,45,'Numquam quisquam eum et qui. Ex ipsam eveniet unde ab id adipisci eum. Vel est non distinctio voluptates dolor exercitationem molestiae.','2013-01-29 18:02:17','2019-04-04 15:13:35'),(46,46,46,'Odit officiis fuga rem. Consectetur nihil saepe odit animi et iste. Perspiciatis voluptas suscipit velit.','2007-07-09 11:48:02','1994-12-02 00:12:58'),(47,47,47,'Culpa quod non molestiae eum. Vel est debitis voluptas aperiam porro consequuntur. Ipsum quod rerum itaque ut qui.','1974-11-21 00:49:45','1994-10-21 16:42:45'),(48,48,48,'Numquam praesentium eos quia perspiciatis nulla doloremque explicabo consequatur. Rerum deserunt non voluptatem necessitatibus. Beatae molestiae totam aperiam omnis. Voluptas aspernatur facere accusamus modi officiis.','1977-02-21 17:28:59','2004-10-04 14:00:46'),(49,49,49,'Nihil ullam odio officia qui quis. Eum rerum assumenda blanditiis ea. Nostrum qui cum ducimus sint dicta provident beatae error.','1987-07-08 20:25:24','1984-07-20 20:13:56'),(50,50,1,'Molestias ipsum illo ut molestiae perspiciatis. Dolor vel aut fugiat in veniam. Et id sit repellat labore quo rem.','1985-05-28 09:56:08','1981-02-03 17:00:08'),(51,51,2,'Perspiciatis itaque id est sit ea eligendi. Quis delectus unde doloremque. Vero consequatur officiis reiciendis quasi a.','1987-12-18 04:07:51','2014-03-21 11:20:24'),(52,52,3,'Vel quaerat voluptas officiis magni sint tempora cumque. Repudiandae ut qui odio ab. Consequatur delectus voluptas omnis praesentium quia.','2004-11-06 08:15:50','1979-06-25 00:33:43'),(53,53,4,'Minima sapiente beatae possimus nemo pariatur ratione. Sed iste beatae est autem error. Aliquam quod repellendus quae explicabo. Nesciunt ab quisquam tempore quaerat minus.','1974-01-13 12:07:56','1975-06-27 05:57:36'),(54,54,5,'Magnam sint in in ut delectus rerum quia qui. Odio adipisci quis aut qui odio magni doloremque. Minima tempore itaque in tenetur dicta. Est iusto adipisci et et. Ipsum alias et consequatur eum veniam.','1982-07-07 03:33:37','2015-11-17 17:04:15'),(55,55,6,'Quaerat voluptates ad et est dolores. Numquam tempore non voluptatem voluptas. Vel commodi sequi quis sit.','1983-10-27 22:07:26','2006-03-10 10:05:25'),(56,56,7,'Eligendi non enim facilis ipsa aperiam laborum iusto totam. Error quisquam velit sint aliquid et aut. Illum quo et officia aut qui vel dolores. Qui quibusdam perferendis quis quisquam.','2014-07-28 16:28:03','2004-06-14 10:57:56'),(57,57,8,'Assumenda et voluptas maxime autem deleniti sequi. Dolore voluptatem quae omnis eum. Pariatur mollitia vitae aspernatur. Perferendis distinctio delectus eveniet dicta. Laborum veritatis atque tempora amet corporis explicabo nesciunt.','2015-12-07 03:33:59','1979-05-18 23:06:01'),(58,58,9,'Molestias in ea maxime ipsa quibusdam qui doloribus. Ad quibusdam adipisci fuga quo cumque. Quia hic et laudantium ut. Delectus quo et sunt eum ducimus possimus. Inventore omnis perferendis quasi et libero officiis aut.','2009-06-25 00:44:04','2005-09-16 00:27:21'),(59,59,10,'Assumenda expedita corrupti ut ipsum praesentium. Ullam illum facilis optio maxime. Saepe modi voluptatum doloribus placeat. Nemo consequatur nihil impedit neque voluptates.','1971-10-24 16:26:30','1974-06-02 14:26:40'),(60,60,11,'Qui optio ea rerum odit in. Consequuntur recusandae odio nisi qui qui recusandae inventore. Delectus perferendis voluptas debitis ut itaque temporibus. Nulla voluptas totam ex occaecati.','2016-04-21 17:31:50','1971-06-09 21:07:11'),(61,61,12,'Asperiores aspernatur dolores amet quas. Aut consequuntur eligendi itaque similique distinctio fugiat ut. Nobis provident aliquam consectetur eligendi eaque. Quasi temporibus facere omnis nobis.','1979-04-04 14:21:43','1994-11-22 08:43:32'),(62,62,13,'Eaque voluptatem temporibus non dolore ipsam et. Minima quis qui vel. Doloremque at tempora reprehenderit voluptatem sed. Voluptas provident eum voluptate.','1996-07-12 03:10:52','1986-11-05 16:17:46'),(63,63,14,'Dolor dolorem aut voluptatum inventore. Cumque nemo sint nostrum perspiciatis excepturi voluptatem. Vel officia recusandae sed qui voluptatem perferendis expedita sit.','1982-10-03 06:09:35','2001-05-01 14:07:39'),(64,64,15,'Et cumque eum doloremque qui aut praesentium. Ut sint nam cumque iusto animi ut. Labore ut maiores rem est sit est possimus. Consequatur exercitationem et dolor doloribus hic nostrum ut.','1997-06-28 11:28:19','2003-07-13 06:14:35'),(65,65,16,'Omnis magnam quae delectus distinctio. Nesciunt id omnis odit inventore. Modi nobis rerum fugit doloribus adipisci amet.','1996-03-11 05:56:55','1998-04-16 15:38:55'),(66,66,17,'Fugit fuga id ipsa et recusandae deleniti ut qui. Voluptatem ut expedita magni. Voluptas et distinctio ex consequatur.','2007-06-17 10:48:57','1983-07-28 05:23:38'),(67,67,18,'Et consequatur libero itaque iste earum et. Ut necessitatibus qui placeat repudiandae maxime. Nam expedita cum minus odio consequuntur.','1992-09-22 22:22:59','1986-01-07 18:23:00'),(68,68,19,'Fugiat earum in sit doloribus asperiores. Velit iure explicabo commodi laboriosam. Aut vel fugiat itaque aut quia est adipisci. Molestiae dolorum ipsam ut eaque quis rerum reprehenderit.','1990-12-05 08:33:23','2012-12-23 08:44:16'),(69,69,20,'Ut harum voluptatibus cumque enim quis officia. Et blanditiis itaque modi.','1980-11-29 11:54:59','2007-04-19 08:20:05'),(70,70,21,'Non nostrum sit voluptates. Impedit ducimus molestiae tenetur quia non ratione architecto illum. Velit voluptates qui voluptatem provident consequuntur. Quae et inventore illo voluptas quo aut.','1989-04-02 11:36:20','1994-09-07 14:26:26'),(71,71,22,'Aut rerum autem incidunt perspiciatis id. Modi mollitia quaerat omnis sint. Minima nihil quidem minus commodi sunt voluptates.','1994-10-20 11:41:33','1989-11-19 00:22:31'),(72,72,23,'Quia cupiditate sint sapiente libero illum tempora. Non ullam consequatur reiciendis quia. Corporis in quos aut sunt.','2001-12-09 08:47:33','1970-05-03 09:34:40'),(73,73,24,'Repudiandae aut rerum repellendus sint explicabo vel dignissimos. Occaecati veritatis ex autem aut molestiae. Consequatur quasi blanditiis animi accusamus vitae nostrum ut.','2019-06-17 22:15:02','2018-07-31 12:35:15'),(74,74,25,'Aut occaecati est nam odit quaerat et magni odio. Laboriosam alias tempore neque rerum laboriosam commodi consequatur id. Dicta sit aut odio voluptas impedit praesentium consectetur. Mollitia est et animi autem libero.','1981-11-05 10:41:23','2009-03-09 08:40:05'),(75,75,26,'Est saepe ab libero consequatur. Possimus dolorum esse ex sed dolores quibusdam. Esse perferendis aperiam veniam dignissimos fugit. Ut beatae inventore porro ad ducimus ipsa et rerum.','1991-10-12 09:44:43','1994-03-02 07:47:09'),(76,76,27,'Et voluptas et corporis distinctio. Et quis dolor aut itaque. Magnam voluptas animi ullam aut possimus nesciunt et.','2010-12-21 22:21:37','1984-01-17 18:45:06'),(77,77,28,'Repellat autem voluptas eum rem totam consequatur. Dignissimos et cum ipsam ut. Nemo sunt enim laudantium assumenda earum. Adipisci sed eos veritatis ut itaque occaecati nisi eius.','2015-10-20 07:45:35','1980-02-13 05:56:08'),(78,78,29,'Officia est ducimus molestias ipsa qui aut. Eveniet omnis fugiat culpa tenetur ullam dolorem. Dolorem fugiat aut consequatur ipsam et omnis.','2013-06-21 23:14:38','1994-09-21 06:10:57'),(79,79,30,'Exercitationem impedit perspiciatis nihil aliquam repudiandae minima. Libero consequuntur dolor in sapiente. Error dolor qui laudantium alias quibusdam. Quidem quidem et voluptates vitae. Qui non quasi voluptas magnam omnis nihil ut.','2016-04-24 05:02:58','2017-01-13 17:07:33'),(80,80,31,'Fugiat asperiores est esse labore. Neque officiis animi suscipit commodi. Enim nam corrupti est sed.','2004-11-08 04:02:29','1991-11-19 09:42:50'),(81,81,32,'Quaerat asperiores qui et laborum ducimus asperiores tenetur et. Voluptas quis ut ut cumque necessitatibus corporis quisquam. Dolor aut accusantium debitis nobis ea in consequatur ullam. Debitis consequatur necessitatibus unde deleniti consequatur fuga ut.','2016-07-17 07:02:41','1976-11-22 22:47:50'),(82,82,33,'Vel doloribus laborum tenetur molestias. Aut sed voluptatem eveniet optio maiores deserunt. Perspiciatis ratione ut et mollitia facilis consequatur non.','1970-07-07 16:15:26','1996-04-04 00:54:48'),(83,83,34,'Omnis eos sit illo. Perferendis rerum libero veritatis nemo quas harum. Non commodi aut aut sed. Voluptas non ut reiciendis aliquid.','1976-05-19 05:30:19','1986-05-28 14:49:09'),(84,84,35,'Illum excepturi sit numquam rem nulla neque laudantium. Fugiat minima consequatur consectetur ducimus. Corrupti eum omnis ut quis autem nihil.','1984-10-20 09:03:51','2005-07-05 04:55:13'),(85,85,36,'Voluptates sunt qui neque quas. Quam sunt blanditiis doloremque dolorem. Et est rerum totam.','1990-03-31 18:29:33','1975-05-04 02:30:46'),(86,86,37,'Quia atque explicabo distinctio temporibus a. Quia sed et corrupti beatae natus sit corrupti. Eligendi architecto beatae sit esse numquam vel dignissimos. Aut eligendi enim corporis distinctio temporibus voluptatem error reprehenderit.','2012-04-20 20:48:34','1986-12-29 18:07:37'),(87,87,38,'Mollitia ut vel magnam fugiat. Nemo quia sint totam provident voluptate. Voluptas est officiis ut tempore.','2014-02-10 00:38:21','2007-07-18 19:34:04'),(88,88,39,'Numquam minima debitis dolore nihil consequatur et deleniti. Perferendis id repellat perferendis et laborum adipisci in. Error consequatur ratione nemo. Dolores qui tempora sunt distinctio quo sapiente.','1993-05-27 16:17:01','2016-05-16 06:12:04'),(89,89,40,'Porro pariatur tempora doloremque aut et. Suscipit autem dolor quod enim modi. Itaque provident iusto eos excepturi quas possimus vel voluptatem.','2007-10-31 01:29:40','1992-11-18 05:58:14'),(90,90,41,'Ullam placeat quia sit hic qui qui. Ratione ut perspiciatis voluptas delectus voluptates ut vel. Officia sint ipsam et facilis architecto molestiae repellat alias.','1989-07-13 12:28:13','1988-03-29 16:46:32'),(91,91,42,'Magni ea ex enim asperiores ad dolor. Qui odit iste veritatis eum debitis modi sequi. A optio nemo aut inventore.','2001-12-24 13:02:30','2015-04-25 20:38:43'),(92,92,43,'Odit deserunt sed qui aspernatur dolor amet. Laboriosam enim repellendus provident molestiae nam quae. Esse quidem mollitia vitae nihil dignissimos eum. Ullam ipsum neque reiciendis.','2012-11-15 04:04:29','2013-01-06 19:21:16'),(93,93,44,'Hic possimus nemo eum. Quisquam illo dolore maxime. Exercitationem beatae et provident eaque maxime laboriosam nisi ea. Inventore vel nobis amet deserunt rerum voluptatibus repellendus.','2007-10-09 02:00:40','1991-07-23 14:26:56'),(94,94,45,'Nulla nesciunt et voluptates possimus at recusandae voluptatum. Optio numquam ipsam qui quibusdam delectus exercitationem. Sed veniam nulla architecto nostrum. Quidem est harum reiciendis dicta molestiae voluptas.','1975-03-31 11:49:50','2008-04-02 14:02:19'),(95,95,46,'Dolor hic quasi vel corrupti voluptatem cum. Eaque culpa dolores impedit. Facilis saepe officiis et sed quia eos nobis.','1976-06-28 04:44:56','1982-10-22 04:43:26'),(96,96,47,'Rem quae vel officia fugiat consectetur aut debitis. Vel est temporibus ad. Voluptate recusandae facilis et deserunt commodi consequatur. Temporibus omnis aperiam possimus quod quo.','2010-03-15 22:33:36','1971-05-25 21:55:35'),(97,97,48,'Maiores consequuntur placeat qui qui explicabo. Sit porro nisi explicabo et iusto. Quis eaque ad natus vero possimus doloremque.','1989-11-22 13:05:51','1987-06-21 00:16:14'),(98,98,49,'Reprehenderit eligendi illum excepturi rerum accusantium deserunt non ut. Sunt aliquam velit autem et laborum corrupti ut. Provident ratione facere repellat vel laboriosam. Voluptatibus maiores et natus rerum repudiandae pariatur vero.','1998-07-01 02:53:53','2004-04-06 02:08:13'),(99,99,1,'Dolor nobis at sequi et dolore. Quod quam illum architecto suscipit aut voluptatem. Labore itaque sint fugit molestiae rem.','2007-07-10 05:58:05','1987-08-28 17:06:01'),(100,100,2,'Aut et officia nam illo tempore saepe. Eaque sequi aut ut et voluptas dolores. Quia tempora recusandae aut. Aut officiis perspiciatis voluptas voluptatem voluptatum.','1983-01-31 20:14:53','2015-05-24 23:02:17');
/*!40000 ALTER TABLE `video_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `video_statistics`
--

DROP TABLE IF EXISTS `video_statistics`;
/*!50001 DROP VIEW IF EXISTS `video_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `video_statistics` AS SELECT 
 1 AS `video_id`,
 1 AS `video_name`,
 1 AS `views_count`,
 1 AS `ratings_count`,
 1 AS `comments_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `video_views`
--

DROP TABLE IF EXISTS `video_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `sessionID` varchar(255) NOT NULL,
  `video_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `video_views_user_id_fk` (`user_id`),
  KEY `video_views_id_idx` (`id`),
  KEY `video_views_video_id_idx` (`video_id`),
  CONSTRAINT `video_views_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `videos_views_video_id_fk` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_views`
--

LOCK TABLES `video_views` WRITE;
/*!40000 ALTER TABLE `video_views` DISABLE KEYS */;
INSERT INTO `video_views` VALUES (1,1,'at',1,'2013-02-17 19:38:20'),(2,2,'voluptas',2,'2019-03-27 02:55:54'),(3,3,'voluptates',3,'1990-01-09 03:26:34'),(4,4,'nihil',4,'1972-08-08 20:23:24'),(5,5,'doloribus',5,'2013-12-12 13:46:14'),(6,6,'molestiae',6,'2003-02-19 20:53:44'),(7,7,'numquam',7,'1985-02-18 04:38:13'),(8,8,'alias',8,'1982-04-29 12:53:26'),(9,9,'aut',9,'2011-10-24 08:48:52'),(10,10,'veniam',10,'1989-08-23 21:48:31'),(11,11,'ut',11,'1996-05-30 14:33:36'),(12,12,'deleniti',12,'2004-09-19 03:14:55'),(13,13,'dolor',13,'1973-02-08 02:41:27'),(14,14,'sunt',14,'1979-10-14 22:17:11'),(15,15,'ea',15,'1996-05-04 06:24:39'),(16,16,'et',16,'1994-01-30 16:18:27'),(17,17,'recusandae',17,'2002-06-12 07:08:33'),(18,18,'rerum',18,'1978-04-07 13:08:39'),(19,19,'et',19,'1973-03-21 04:16:53'),(20,20,'libero',20,'2014-10-23 22:02:41'),(21,21,'reprehenderit',21,'1989-06-16 16:39:38'),(22,22,'repellendus',22,'1970-02-15 17:13:43'),(23,23,'excepturi',23,'1998-01-26 11:19:36'),(24,24,'ut',24,'1983-11-06 05:44:15'),(25,25,'sed',25,'1994-12-08 09:27:55'),(26,26,'odit',26,'1983-08-14 05:16:52'),(27,27,'sint',27,'2012-10-28 19:06:38'),(28,28,'id',28,'1996-06-20 17:05:47'),(29,29,'est',29,'2019-07-08 05:51:21'),(30,30,'ad',30,'2003-12-01 07:00:24'),(31,31,'qui',31,'1991-09-01 09:48:03'),(32,32,'dolor',32,'2006-02-11 17:19:36'),(33,33,'et',33,'2002-03-29 18:01:47'),(34,34,'numquam',34,'2007-10-31 01:26:40'),(35,35,'repellendus',35,'2013-10-19 21:13:21'),(36,36,'ipsa',36,'1984-09-06 08:38:13'),(37,37,'eum',37,'2014-06-22 07:59:54'),(38,38,'est',38,'1984-07-01 13:10:36'),(39,39,'occaecati',39,'2014-02-02 12:41:21'),(40,40,'enim',40,'2010-01-25 10:11:19'),(41,41,'ipsa',41,'1998-12-10 19:18:58'),(42,42,'magni',42,'2001-01-28 06:17:05'),(43,43,'aliquam',43,'1974-02-04 23:12:31'),(44,44,'totam',44,'1999-03-01 11:02:06'),(45,45,'dicta',45,'1991-05-01 16:51:55'),(46,46,'qui',46,'2004-07-09 15:01:01'),(47,47,'at',47,'2017-10-04 20:35:54'),(48,48,'cumque',48,'1981-01-15 23:21:36'),(49,49,'est',49,'1992-04-19 22:18:39'),(50,50,'sunt',1,'2011-02-09 06:44:07'),(51,51,'facere',2,'1985-04-11 14:34:21'),(52,52,'dignissimos',3,'1970-10-28 04:17:58'),(53,53,'aliquid',4,'2012-06-19 23:19:23'),(54,54,'repellendus',5,'1983-06-09 05:21:29'),(55,55,'ut',6,'1983-11-12 14:52:08'),(56,56,'totam',7,'1984-09-09 04:57:07'),(57,57,'in',8,'2007-08-22 20:06:40'),(58,58,'sint',9,'2003-11-01 02:33:09'),(59,59,'enim',10,'1977-04-23 00:37:39'),(60,60,'animi',11,'1971-03-02 15:09:29'),(61,61,'excepturi',12,'2012-12-15 19:19:55'),(62,62,'debitis',13,'2014-10-27 16:40:36'),(63,63,'vero',14,'2002-08-04 14:25:17'),(64,64,'est',15,'1986-01-23 10:28:30'),(65,65,'vel',16,'1979-12-07 13:28:20'),(66,66,'et',17,'2003-09-26 18:15:25'),(67,67,'distinctio',18,'1981-11-19 10:52:43'),(68,68,'quia',19,'2001-10-07 03:13:32'),(69,69,'incidunt',20,'2010-12-28 12:46:09'),(70,70,'asperiores',21,'1970-05-18 17:04:10'),(71,71,'in',22,'2005-05-06 15:27:54'),(72,72,'sunt',23,'1989-11-29 11:53:02'),(73,73,'autem',24,'2014-03-08 03:02:52'),(74,74,'repellat',25,'1978-10-15 05:02:42'),(75,75,'odit',26,'2005-10-18 15:16:38'),(76,76,'architecto',27,'1970-02-27 09:31:21'),(77,77,'vel',28,'1988-12-23 11:13:30'),(78,78,'at',29,'1998-10-18 17:40:10'),(79,79,'quo',30,'1973-10-13 19:57:44'),(80,80,'facere',31,'1992-07-23 14:11:39'),(81,81,'qui',32,'2003-03-30 12:03:14'),(82,82,'saepe',33,'2015-06-15 06:13:18'),(83,83,'est',34,'1988-02-20 11:47:11'),(84,84,'ut',35,'1986-12-14 03:58:17'),(85,85,'assumenda',36,'2005-07-23 09:24:24'),(86,86,'harum',37,'1985-02-27 22:01:25'),(87,87,'non',38,'2016-11-28 17:12:15'),(88,88,'inventore',39,'1983-11-16 22:51:40'),(89,89,'ut',40,'1991-09-07 17:40:25'),(90,90,'doloremque',41,'2017-12-05 03:16:25'),(91,91,'itaque',42,'1970-10-15 14:15:25'),(92,92,'et',43,'2001-01-04 00:47:38'),(93,93,'error',44,'1992-08-18 07:26:38'),(94,94,'nam',45,'1990-12-10 05:32:28'),(95,95,'eius',46,'2013-03-30 03:53:40'),(96,96,'tempora',47,'1971-12-20 03:21:19'),(97,97,'eos',48,'1992-06-08 07:50:34'),(98,98,'explicabo',49,'1978-11-21 15:39:05'),(99,99,'quibusdam',1,'1982-12-23 22:26:37'),(100,100,'natus',2,'1981-11-16 17:30:09');
/*!40000 ALTER TABLE `video_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `category_id` int(10) unsigned NOT NULL,
  `preview_image_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `videos_preview_image_id_fk` (`preview_image_id`),
  KEY `videos_media_id_fk` (`media_id`),
  KEY `videos_category_id_fk` (`category_id`),
  KEY `videos_video_info_idx` (`id`,`media_id`,`name`,`category_id`,`preview_image_id`),
  CONSTRAINT `videos_category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `videos_categories` (`id`),
  CONSTRAINT `videos_media_id_fk` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `videos_preview_image_id_fk` FOREIGN KEY (`preview_image_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,95,'distinctio','Omnis doloremque mollitia nulla vel ipsam sequi. Temporibus magnam perferendis recusandae rerum quibusdam atque asperiores. Corrupti pariatur voluptatem nobis eum eaque qui.',10,45),(2,66,'voluptas','Aut rem aut tenetur et voluptate ut iure. Tenetur quia occaecati totam doloribus qui ducimus doloremque. Voluptatem saepe esse veritatis dolorum.',11,19),(3,62,'facere','Sed ut et vitae est sint. Velit qui et ad et corporis nulla nihil.',16,17),(4,63,'sed','Quaerat sequi sit voluptatem est aperiam aliquid. Perspiciatis quis facilis saepe aut voluptatem voluptatem aliquam. Facere dolorem consequatur suscipit sint sunt aperiam non. Quia sed rerum repudiandae in.',14,45),(5,90,'voluptatem','Ut placeat et eum quia optio rerum. In similique illum rem iusto sunt exercitationem sunt. Quo autem ducimus ea veniam et blanditiis iste.',8,42),(6,53,'nisi','Et dolorem beatae enim quo quia animi voluptatibus. Et ullam exercitationem in at. In id dicta voluptatum repellat. Ut cumque accusantium odio autem consequatur saepe.',4,34),(7,93,'doloremque','Ratione est omnis possimus laboriosam. Natus dolores asperiores rerum occaecati. Tempora officiis maxime molestiae nulla quia. Similique voluptatem sunt pariatur voluptatibus vel totam.',17,34),(8,82,'nihil','Fuga tempore odio voluptatem facilis provident adipisci. Consequatur et recusandae amet repellendus. Et voluptatem blanditiis cupiditate sequi id optio impedit voluptatem. Esse explicabo eos nemo eveniet harum.',9,13),(9,56,'officia','Officia et et similique. Quod sapiente quo velit a dolore provident. Ducimus harum vitae est quidem voluptatem aspernatur.',15,23),(10,75,'consectetur','Et accusantium veritatis quia facilis corrupti qui doloribus. Cumque cupiditate tenetur doloribus omnis. Illum error nam est repellendus blanditiis.',4,44),(11,83,'sint','Veritatis aut quae quo beatae. Rerum dolorum distinctio quisquam eligendi exercitationem quia modi. Dolor odio exercitationem suscipit quae cum blanditiis recusandae. Nobis non et ut sunt deserunt.',2,31),(12,57,'ut','Illum voluptatem incidunt praesentium et. Vitae molestiae consectetur natus dolorem blanditiis. Exercitationem consequatur non dolorum est pariatur voluptatum culpa.',12,31),(13,100,'voluptates','Commodi quia nemo libero iusto numquam eligendi. Illum quidem ex neque qui. Voluptas nulla ut deserunt voluptatem deserunt qui tenetur.',4,28),(14,96,'et','Aut amet consequatur aut voluptas alias et et sed. Sunt ipsum aut dolorem dolorem tenetur mollitia. Laboriosam aut laudantium praesentium vel non et.',20,10),(15,72,'dolorum','Eligendi expedita et omnis laudantium recusandae. Ut perferendis incidunt qui labore sapiente. Ea eveniet voluptatum eum soluta earum.',17,26),(16,84,'ratione','Eos vel expedita voluptatem dignissimos. Soluta vero praesentium optio. Placeat iusto non ratione sint nostrum voluptatem dolorum iure.',10,35),(17,51,'magnam','Aut nobis soluta omnis qui aliquam. Et error itaque sed tempore qui ducimus corporis. Ea dicta qui corrupti tempore nostrum quidem consequatur. Quasi optio velit rem.',5,25),(18,78,'minima','Harum nam corrupti excepturi sapiente facere consequatur. Numquam impedit deserunt est eum sed. Perspiciatis dolore dignissimos et itaque. Tenetur consequatur fugiat eum tempora occaecati.',18,9),(19,52,'aut','Explicabo repellendus ex sint qui. Fugiat neque modi et. Molestiae quae voluptatum sapiente iusto pariatur eius. Fugiat consequatur dolor excepturi distinctio fugiat reiciendis consequatur.',20,5),(20,65,'est','Quo et quia eligendi ut et ut distinctio. Et unde et molestias. Optio optio temporibus odit dolores.',1,9),(21,54,'sequi','Consequatur facilis rerum ut. Mollitia fuga inventore distinctio quae quod. Expedita dignissimos magni sit libero.',9,10),(22,86,'hic','Est distinctio nostrum ut est qui est. Consequatur eos velit atque rerum. Ratione praesentium quia iusto et et ut.',8,3),(23,60,'occaecati','Quibusdam dolore praesentium sunt minima et. Quia totam aliquam itaque a deserunt in qui.',18,23),(24,87,'ratione','Quisquam quis et similique velit quas impedit. Iusto necessitatibus unde autem distinctio ut. Culpa repellat odit qui sed eos nobis aut.',20,28),(25,79,'voluptates','Quia ea delectus beatae aut qui officia voluptatem. Perspiciatis numquam consequatur sit officiis mollitia molestias delectus aut. Suscipit consequatur et ut qui vero quam ex tenetur. Repellat eaque quibusdam natus quibusdam delectus.',19,43),(26,81,'eos','Facilis officiis iste fugit voluptates. Voluptatem et asperiores quae dolorem fuga. Consequatur enim possimus maiores necessitatibus magnam. Numquam et aperiam earum vitae sint quia.',14,39),(27,97,'dolorem','Doloribus dignissimos vero et non vel aut. Inventore officia magni corporis sit harum molestiae doloremque commodi. Eaque neque qui occaecati velit error modi a.',13,47),(28,85,'qui','Similique quas quos sapiente et autem ut. Ad eaque qui vitae in et earum. Error qui sapiente perspiciatis quibusdam officiis. Sint consequuntur cumque ducimus rem. Molestias deleniti dolor nobis sunt consequuntur accusamus.',17,1),(29,69,'molestiae','Labore reprehenderit corporis fugiat qui. Est maxime corrupti sint laboriosam officia. Officia consequuntur vero quidem rerum dolor optio. Incidunt sint provident necessitatibus unde nisi.',8,31),(30,98,'dignissimos','Eum ea autem dolorem qui perferendis. Molestiae sequi sunt vel nulla minus et. Nulla tempore ea beatae sint.',14,25),(31,80,'temporibus','Consequatur voluptatem animi adipisci et. Dolorum consectetur adipisci aut non veritatis impedit delectus eius. Quos architecto tenetur ab in.',18,42),(32,89,'eaque','Nihil dignissimos molestiae voluptatum eius nulla aut quod. In nam dolorem voluptate fuga commodi illum facere. Voluptatem commodi necessitatibus quia vel. Provident consequuntur nostrum magnam omnis odio.',14,49),(33,99,'quis','Occaecati sed ut sit asperiores veniam officiis. Praesentium fuga qui facere et non aliquam cum. Rerum dolores et sed quae dolore. Quia dolorem aut quae rerum.',17,17),(34,91,'corrupti','Ex non fugiat autem ipsam. Accusantium molestiae veniam debitis eius sit. Sint aspernatur excepturi dolorum blanditiis autem. Sed eligendi dignissimos vel sed.',9,39),(35,64,'possimus','Dolores architecto aut assumenda. Ipsam esse omnis quam corporis. Facilis in optio consequatur dolorum quos aperiam ipsa. Sed reprehenderit et natus aut quo ut quae at.',6,50),(36,77,'deleniti','Quam reiciendis repudiandae ut error itaque dignissimos ipsum possimus. Occaecati et adipisci est nostrum non culpa.',10,50),(37,70,'temporibus','Recusandae sunt voluptas voluptatem nemo aut mollitia. Porro reiciendis hic repudiandae fuga iusto. Beatae veniam est et quia.',8,29),(38,76,'iste','Doloremque ipsa tempora iusto cupiditate similique. Quis illo voluptas nostrum quos nemo et sed. Quod sint repellat consectetur est velit. Mollitia nobis iure assumenda.',7,5),(39,68,'vel','Est eveniet dolorum commodi cum aliquid dicta corporis. Vero aut et doloremque delectus id sed beatae. Voluptas amet voluptatem ex expedita. Sed inventore consequatur consequatur unde praesentium est.',14,28),(40,71,'recusandae','Doloremque et reprehenderit assumenda rerum quisquam temporibus recusandae. Perferendis omnis id doloribus quos molestias ab dolore. Magni non architecto itaque veritatis voluptatibus.',8,21),(41,67,'deleniti','Suscipit reprehenderit voluptatum incidunt recusandae perferendis quia. Qui eum eos tempora et. Debitis est fuga voluptatem et. Est corporis dolores officiis. Quia facilis repellendus dolore id aut nulla laborum beatae.',18,25),(42,73,'reprehenderit','Deserunt nihil sed laudantium et nam laborum. Suscipit est id mollitia perferendis. Harum quia culpa sunt illum.',13,1),(43,92,'sit','Consequatur ut non fuga minima praesentium rerum. Saepe eum quibusdam atque est. Architecto ut optio voluptas iste corporis fuga nobis voluptas. At in labore sint fugiat nesciunt quia tenetur debitis.',10,19),(44,55,'blanditiis','Maxime sunt dolore sit nihil in soluta. Consequuntur quia pariatur sed nihil fugit sapiente cupiditate nihil. Rerum et id tenetur quis.',9,14),(45,59,'provident','Possimus consequatur ut ipsam voluptatem. Magnam occaecati maiores animi repudiandae cupiditate. Fuga aut rerum quasi porro fugiat rerum facilis.',7,33),(46,74,'maxime','Harum et porro assumenda nemo. Perferendis fugiat est ut quis voluptatem recusandae natus corrupti. Voluptate eaque sed voluptatem.',17,9),(47,88,'soluta','Exercitationem qui sed ducimus minus temporibus corrupti dolorem. Sit corrupti impedit optio voluptatem. Magni animi eum enim et dolore amet itaque quia.',6,50),(48,94,'voluptatem','Nostrum dolorum atque ut totam cumque beatae consectetur. Ipsa porro voluptas ea commodi.',20,46),(49,61,'voluptatem','Ad molestias tempore est eius. Magnam omnis iure cupiditate unde sit quo consequuntur aspernatur. Praesentium laborum illum tempore placeat placeat aut.',16,33);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos_categories`
--

DROP TABLE IF EXISTS `videos_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos_categories`
--

LOCK TABLES `videos_categories` WRITE;
/*!40000 ALTER TABLE `videos_categories` DISABLE KEYS */;
INSERT INTO `videos_categories` VALUES (1,'dolorem'),(2,'ab'),(3,'molestiae'),(4,'natus'),(5,'ea'),(6,'quis'),(7,'recusandae'),(8,'soluta'),(9,'illum'),(10,'quaerat'),(11,'in'),(12,'illum'),(13,'necessitatibus'),(14,'inventore'),(15,'assumenda'),(16,'illo'),(17,'delectus'),(18,'sit'),(19,'enim'),(20,'sed');
/*!40000 ALTER TABLE `videos_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos_ratings`
--

DROP TABLE IF EXISTS `videos_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos_ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `video_id` int(10) unsigned NOT NULL,
  `rating_type` char(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `videos_ratings_user_id_fk` (`user_id`),
  KEY `videos_ratings_video_id` (`video_id`),
  KEY `videos_ratings_rating_type` (`rating_type`),
  CONSTRAINT `videos_ratings_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `videos_ratings_video_id_fk` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos_ratings`
--

LOCK TABLES `videos_ratings` WRITE;
/*!40000 ALTER TABLE `videos_ratings` DISABLE KEYS */;
INSERT INTO `videos_ratings` VALUES (1,1,1,'d','1983-10-24 15:53:07'),(2,2,2,'l','2002-02-02 04:04:40'),(3,3,3,'d','1994-08-15 12:54:08'),(4,4,4,'d','2008-05-27 08:14:12'),(5,5,5,'d','2005-12-05 13:55:57'),(6,6,6,'l','2018-09-19 03:31:04'),(7,7,7,'d','1986-02-17 23:14:24'),(8,8,8,'d','2002-05-13 09:03:51'),(9,9,9,'l','1988-04-07 20:43:12'),(10,10,10,'d','2009-05-17 08:36:23'),(11,11,11,'d','1972-08-23 08:17:13'),(12,12,12,'l','2008-01-20 09:36:46'),(13,13,13,'l','2007-02-05 05:56:41'),(14,14,14,'l','2007-11-02 10:19:59'),(15,15,15,'d','1979-09-19 09:15:47'),(16,16,16,'l','2001-06-22 05:35:00'),(17,17,17,'l','2019-04-11 11:25:39'),(18,18,18,'l','2015-01-19 14:34:40'),(19,19,19,'d','1993-07-23 05:53:17'),(20,20,20,'d','1986-09-28 01:30:22'),(21,21,21,'d','2015-04-20 23:05:05'),(22,22,22,'l','1973-03-27 15:56:19'),(23,23,23,'d','1996-06-18 20:33:00'),(24,24,24,'l','2000-02-12 22:04:05'),(25,25,25,'d','1978-10-09 01:52:41'),(26,26,26,'l','1987-01-22 18:55:22'),(27,27,27,'l','1985-08-09 08:14:31'),(28,28,28,'l','2007-05-04 04:06:43'),(29,29,29,'l','1982-05-23 17:05:27'),(30,30,30,'l','2019-05-13 17:36:26'),(31,31,31,'l','1996-03-25 03:29:06'),(32,32,32,'d','2016-05-13 03:23:18'),(33,33,33,'l','2001-07-15 02:31:26'),(34,34,34,'l','1994-05-22 21:22:39'),(35,35,35,'l','2003-09-14 19:57:25'),(36,36,36,'d','1977-11-20 13:09:01'),(37,37,37,'l','1972-09-30 07:49:32'),(38,38,38,'d','1989-01-16 10:36:16'),(39,39,39,'l','2012-11-05 20:52:10'),(40,40,40,'l','1982-09-05 18:03:57'),(41,41,41,'l','1993-03-19 07:35:28'),(42,42,42,'d','2010-03-18 16:10:52'),(43,43,43,'l','1985-01-14 16:49:54'),(44,44,44,'d','2012-10-26 00:59:42'),(45,45,45,'l','2013-12-15 12:40:51'),(46,46,46,'d','2015-05-20 04:22:13'),(47,47,47,'d','1974-08-30 22:15:07'),(48,48,48,'l','2013-01-25 00:04:00'),(49,49,49,'l','1997-03-04 22:17:54'),(50,50,1,'d','2001-11-14 11:40:04'),(51,51,2,'l','1982-01-01 18:26:50'),(52,52,3,'l','1989-02-01 16:21:36'),(53,53,4,'d','1976-06-15 07:02:52'),(54,54,5,'l','1982-07-03 03:05:20'),(55,55,6,'d','1979-10-28 04:02:38'),(56,56,7,'d','2008-07-16 11:35:48'),(57,57,8,'l','2011-12-30 20:55:13'),(58,58,9,'l','1991-07-13 07:53:56'),(59,59,10,'d','1996-02-09 13:40:02'),(60,60,11,'d','1999-06-28 07:07:54'),(61,61,12,'d','1991-06-13 19:52:58'),(62,62,13,'l','1972-11-23 11:30:42'),(63,63,14,'d','2006-11-06 21:57:35'),(64,64,15,'d','2015-09-26 18:38:53'),(65,65,16,'l','1978-07-01 13:15:38'),(66,66,17,'d','2007-04-30 17:12:47'),(67,67,18,'d','1985-03-14 03:17:35'),(68,68,19,'l','1981-02-27 07:30:53'),(69,69,20,'l','1983-08-12 01:44:36'),(70,70,21,'d','1988-02-11 18:20:58'),(71,71,22,'l','1985-08-17 05:17:32'),(72,72,23,'d','2013-06-22 18:13:32'),(73,73,24,'l','2000-11-28 09:57:54'),(74,74,25,'l','2000-04-28 23:06:36'),(75,75,26,'l','1984-05-10 22:12:41'),(76,76,27,'d','1971-03-26 06:57:02'),(77,77,28,'l','2013-05-16 00:21:22'),(78,78,29,'d','1993-12-01 19:40:55'),(79,79,30,'l','2014-10-01 23:51:29'),(80,80,31,'l','2002-04-15 15:58:59'),(81,81,32,'l','1989-10-23 04:03:53'),(82,82,33,'d','2002-06-06 19:42:42'),(83,83,34,'d','1981-01-11 15:24:13'),(84,84,35,'l','1974-09-21 12:44:38'),(85,85,36,'d','1981-05-19 23:57:48'),(86,86,37,'d','1992-06-15 15:06:32'),(87,87,38,'l','1980-06-01 04:37:05'),(88,88,39,'l','1986-10-23 00:39:46'),(89,89,40,'d','1990-03-29 14:10:57'),(90,90,41,'l','1971-06-07 12:16:40'),(91,91,42,'d','1979-06-08 06:39:42'),(92,92,43,'l','2003-01-16 03:03:41'),(93,93,44,'l','1973-07-18 13:54:49'),(94,94,45,'d','1992-09-29 19:48:30'),(95,95,46,'d','1977-11-23 08:00:08'),(96,96,47,'l','1974-05-10 15:45:34'),(97,97,48,'d','1974-12-21 02:36:07'),(98,98,49,'d','2000-08-04 22:41:56'),(99,99,1,'l','1994-08-10 03:03:18'),(100,100,2,'d','1970-10-21 14:11:27');
/*!40000 ALTER TABLE `videos_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `users_videos`
--

/*!50001 DROP VIEW IF EXISTS `users_videos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_videos` (`user_id`,`user_name`,`video_id`,`video_name`) AS select `u`.`id` AS `user_id`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `CONCAT(u.first_name, ' ', u.last_name)`,`v`.`id` AS `video_id`,`v`.`name` AS `video_name` from ((`users` `u` join `media` `m`) join `videos` `v`) where ((`u`.`id` = `m`.`user_id`) and (`v`.`media_id` = `m`.`id`)) order by `u`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `video_statistics`
--

/*!50001 DROP VIEW IF EXISTS `video_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `video_statistics` (`video_id`,`video_name`,`views_count`,`ratings_count`,`comments_count`) AS select `v`.`id` AS `id`,`v`.`name` AS `name`,count(distinct `vv`.`id`) AS `COUNT(DISTINCT vv.id)`,count(distinct `vr`.`id`) AS `COUNT(DISTINCT vr.id)`,count(distinct `vc`.`id`) AS `COUNT(DISTINCT vc.id)` from (((`videos` `v` left join `videos_ratings` `vr` on((`vr`.`video_id` = `v`.`id`))) left join `video_views` `vv` on((`vv`.`video_id` = `v`.`id`))) left join `video_comments` `vc` on((`vc`.`video_id` = `v`.`id`))) group by `v`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-07 12:44:51
