-- MariaDB dump 10.19  Distrib 10.8.3-MariaDB, for osx10.17 (arm64)
--
-- Host: localhost    Database: blogger
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blogger`
--

DROP TABLE IF EXISTS `blogger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogger` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `bio` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `age` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blogger_un` (`username`),
  UNIQUE KEY `blogger_email` (`email`),
  CONSTRAINT `blogger_ageCHECK` CHECK (`age` > 18 and `age` < 120)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogger`
--

LOCK TABLES `blogger` WRITE;
/*!40000 ALTER TABLE `blogger` DISABLE KEYS */;
INSERT INTO `blogger` VALUES
(21,'userone','first123','user one bio','Bob','2009-02-07','one@email.com',36),
(22,'usertwo','second123','user two bio','Bobb','2019-03-27','two@email.com',32),
(23,'userthree','third123','user three bio','Bobby','2022-12-02','three@email.com',19),
(24,'userfour','fourth123','user four bio','Bobby','2019-11-07','four@email.com',22),
(25,'userfive','fifth123','user five bio','BobbyLee','2021-09-03','five@email.com',26),
(26,'usersix','bad_password','user six bio','BobbyJo','2008-06-17','six@email.com',62),
(27,'userseven','seventh123','user seven bio','Bobbob','2019-10-06','seven@email.com',37),
(28,'usereight','eigth123','user eight bio','Bobba','2017-05-07','eight@email.com',73),
(29,'usernine','ninth123','user nine bio','Bobbo','2022-04-23','nine@email.com',36),
(30,'userten','bad_password','user ten bio','Bobbee','2020-12-17','ten@email.com',82);
/*!40000 ALTER TABLE `blogger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'blogger'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-12 17:15:28
