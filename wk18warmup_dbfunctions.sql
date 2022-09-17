-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: db_functions
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.9-MariaDB

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
-- Table structure for table `dealership`
--

DROP TABLE IF EXISTS `dealership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealership` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `date_established` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealership`
--

LOCK TABLES `dealership` WRITE;
/*!40000 ALTER TABLE `dealership` DISABLE KEYS */;
INSERT INTO `dealership` VALUES (1,'dealership_one','calgary','2010-04-20'),(2,'dealership_two','red deer','2020-01-12'),(3,'dealership_three','edmonton','2000-06-10');
/*!40000 ALTER TABLE `dealership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `for_sale_cars`
--

DROP TABLE IF EXISTS `for_sale_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `for_sale_cars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dealership_id` int(10) unsigned DEFAULT NULL,
  `make` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `model` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `year` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `for_sale_cars_FK` (`dealership_id`),
  CONSTRAINT `for_sale_cars_FK` FOREIGN KEY (`dealership_id`) REFERENCES `dealership` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `for_sale_cars`
--

LOCK TABLES `for_sale_cars` WRITE;
/*!40000 ALTER TABLE `for_sale_cars` DISABLE KEYS */;
INSERT INTO `for_sale_cars` VALUES (1,1,'ford','bronco','2022-01-01'),(2,2,'ram','1500','2021-02-01'),(3,3,'ford','mustang','2020-01-01'),(4,3,'ford','focus','2019-01-01'),(5,2,'dodge','challenger','2018-01-01'),(6,1,'toyota','corolla','2017-01-01'),(7,1,'toyota','prius','2016-01-01'),(8,2,'subaru','wrx','2015-01-01'),(9,2,'subaru','brz','2023-01-01'),(10,3,'dodge','viper','2008-01-01');
/*!40000 ALTER TABLE `for_sale_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_functions'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-17 14:07:28
