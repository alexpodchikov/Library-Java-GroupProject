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

--
-- Table structure for table `borrowed_book_history`
--

DROP TABLE IF EXISTS `borrowed_book_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `borrowed_book_history` (
  `isbn` varchar(45) NOT NULL,
  `studentID` varchar(45) NOT NULL,
  `borrowDate` varchar(45) DEFAULT NULL,
  `returnDate` varchar(45) DEFAULT NULL,
  `returnStatus` varchar(45) DEFAULT NULL,
  `borrowerStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`isbn`,`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowed_book_history`
--

LOCK TABLES `borrowed_book_history` WRITE;
/*!40000 ALTER TABLE `borrowed_book_history` DISABLE KEYS */;
INSERT INTO `borrowed_book_history` VALUES ('456','325','19/01/19','23/01/19','ok','ok');
/*!40000 ALTER TABLE `borrowed_book_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowedbook`
--

DROP TABLE IF EXISTS `borrowedbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `borrowedbook` (
  `bookID` varchar(45) NOT NULL,
  `userID` varchar(45) NOT NULL,
  `borrowDate` varchar(45) DEFAULT NULL,
  `returnDate` varchar(45) DEFAULT NULL,
  `borrowStatus` enum('ok','late') DEFAULT NULL,
  `prolongationRequest` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`bookID`,`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowedbook`
--

LOCK TABLES `borrowedbook` WRITE;
/*!40000 ALTER TABLE `borrowedbook` DISABLE KEYS */;
INSERT INTO `borrowedbook` VALUES ('33','325','1/1/19','10/01/2019','ok',1);
/*!40000 ALTER TABLE `borrowedbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `StudentID` varchar(45) NOT NULL,
  `StudentName` varchar(45) NOT NULL,
  `StudentPassword` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `StatusMembership` enum('Locked','Frozen','Active','NotRegistered') DEFAULT NULL,
  `Operation` enum('ExtendBookRequest','ReturnBookRequest','LendingRequest') DEFAULT NULL,
  `Freeze` bit(1) DEFAULT NULL,
  `StudentSubscriberNumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`StudentID`,`StudentName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('325','Anton','123','0544445551','Anton@gmail.com','Active','ExtendBookRequest',_binary '\0','325');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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

-- Dump completed on 2019-01-21 17:14:21
