-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: chart
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

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
-- Table structure for table `data_negara`
--

DROP TABLE IF EXISTS `data_negara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_negara` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(50) DEFAULT NULL,
  `total_cases` int(11) DEFAULT NULL,
  `total_deaths` int(11) DEFAULT NULL,
  `total_recovered` int(11) DEFAULT NULL,
  `active_cases` int(11) DEFAULT NULL,
  `total_tests` int(11) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_negara`
--

LOCK TABLES `data_negara` WRITE;
/*!40000 ALTER TABLE `data_negara` DISABLE KEYS */;
INSERT INTO `data_negara` VALUES (1,'India',44986461,531832,44446514,8115,929430169,1406631776),(2,'Japan',33803572,74694,NULL,NULL,100414883,125584838),(3,'S. Korea',31548083,34687,31198069,315327,15804065,51329899),(4,'Turkey',17232066,102174,NULL,NULL,162743369,85561976),(5,'Vietnam',11602738,43203,10635065,924470,85826548,98953541),(6,'Taiwan',10239998,19005,10220993,0,30742304,23888595),(7,'Iran',7611224,146236,7364870,100118,56596583,86022837),(8,'Indonesia',6802090,161674,6625209,15207,114158919,279134505),(9,'Malaysia',5088009,37046,5029873,21090,68352292,33181072),(10,'Israel',4824551,12509,4798473,13569,41373364,9326000);
/*!40000 ALTER TABLE `data_negara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'chart'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28 15:39:48
