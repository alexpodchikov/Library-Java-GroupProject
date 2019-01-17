-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: obl
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `book` (
  `Headline` varchar(45) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `ISBN` varchar(45) DEFAULT NULL,
  `CatalogNumber` varchar(45) DEFAULT NULL,
  `EditionNumber` int(20) DEFAULT NULL,
  `PrintDate` varchar(45) DEFAULT NULL,
  `Subject` varchar(45) NOT NULL,
  `PurchaseDate` varchar(45) DEFAULT NULL,
  `NumberCopies` int(20) DEFAULT NULL,
  `WantedTag` tinyint(4) DEFAULT NULL,
  `BorrowPeriod` int(10) DEFAULT NULL,
  `BorrowCounter` int(20) DEFAULT NULL,
  `BorrowDuration` int(20) DEFAULT NULL,
  `AvailableCopy` bit(1) DEFAULT NULL,
  `NextReturnDate` varchar(45) DEFAULT NULL,
  `Description` varchar(45) NOT NULL,
  `ShelfLocation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Headline`,`Author`,`Subject`,`Description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('Discrete Math','Beni','12345','33',NULL,NULL,'Math',NULL,6,NULL,NULL,NULL,NULL,_binary '\0','20/20/20','car','f-35'),('JavaFX','Chris','2345','34',NULL,NULL,'Java',NULL,5,NULL,NULL,NULL,NULL,_binary '','20/20/20','ctr','d-23'),('JavaSwing','Ron','2345','32',NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,_binary '','33/33/33','cat','b-32');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-17  9:52:12
