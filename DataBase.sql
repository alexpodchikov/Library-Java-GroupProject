-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: obl
-- ------------------------------------------------------
-- Server version	5.7.24-log

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `AvailableCopy` tinyint(4) DEFAULT NULL,
  `NextReturnDate` varchar(45) DEFAULT NULL,
  `Description` varchar(45) NOT NULL,
  PRIMARY KEY (`Headline`,`Author`,`Subject`,`Description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('Discrete Math','Beni','12345','33',NULL,NULL,'Math',NULL,6,NULL,NULL,NULL,NULL,0,NULL,'car'),('JavaFX','Chris','2345','34',NULL,NULL,'Java',NULL,5,NULL,NULL,NULL,NULL,1,'20/20/20','ctr'),('JavaSwing','Ron','2345','32',NULL,NULL,'Java',NULL,NULL,NULL,NULL,NULL,NULL,1,'33/33/33','cat');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `StudentID` varchar(45) NOT NULL,
  `StudentName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `PhoneNumber` int(20) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `StatusMembership` enum('Locked','Frozen','Active','NotRegistered') DEFAULT NULL,
  `Operation` enum('ExtendBookRequest','ReturnBookRequest','LendingRequest') DEFAULT NULL,
  `Freeze` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `UserID` varchar(45) NOT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) NOT NULL,
  `AccountType` enum('Student','Librarian','LibraryManager') NOT NULL,
  `StatusMembership` enum('Locked','Frozen','Active','NotRegistered','Worker') DEFAULT NULL,
  `Freeze` tinyint(1) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('123','alex','321','LibraryManager','Active',0),('325','anton','123','Student','Active',0),('987','michael','456','Librarian','Active',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-11 17:30:15
