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
  `Headline` varchar(200) DEFAULT NULL,
  `Author` varchar(100) DEFAULT NULL,
  `ISBN` varchar(45) NOT NULL,
  `CatalogNumber` varchar(45) DEFAULT NULL,
  `EditionNumber` int(20) DEFAULT NULL,
  `PrintDate` varchar(45) DEFAULT NULL,
  `Subject` varchar(45) DEFAULT NULL,
  `PurchaseDate` varchar(45) DEFAULT NULL,
  `NumberCopies` int(20) DEFAULT NULL,
  `WantedTag` enum('Wanted','Regular') DEFAULT NULL,
  `BorrowPeriod` varchar(45) DEFAULT NULL,
  `BorrowCounter` int(20) DEFAULT NULL,
  `BorrowDuration` int(20) DEFAULT NULL,
  `ReturnDelay` int(20) DEFAULT NULL,
  `Available` varchar(45) DEFAULT NULL,
  `NextReturnDate` varchar(45) DEFAULT NULL,
  `Description` varchar(300) DEFAULT NULL,
  `ShelfLocation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('Algebra','Anton','000100','0001',1,'12.03.86','Math','02.01.10',10,'Regular','14',2,24,0,'1','null','ma GTX','a-23'),('Algebra','Anton','000101','0001',1,'12.03.86','Math','02.01.10',10,'Regular','14',2,43,15,'1','11.03.2019','ma GTX','a-23'),('Algebra','Anton','000102','0001',1,'12.03.86','Math','02.01.10',10,'Regular','14',1,5,0,'1',NULL,'ma GTX','a-23'),('Algebra','Anton','000103','0001',1,'12.03.86','Math','02.01.10',10,'Regular','14',2,28,4,'1',NULL,'ma GTX','a-23'),('Algebra','Anton','000104','0001',1,'12.03.86','Math','02.01.10',10,'Regular','14',1,15,1,'1',NULL,'ma GTX','a-23'),('Algebra','Anton','000105','0001',1,'12.03.86','Math','02.01.10',10,'Regular','14',1,18,4,'0','07.03.2019','ma GTX','a-23'),('Algebra','Anton','000106','0001',1,'12.03.86','Math','02.01.10',10,'Regular','14',1,17,3,'1',NULL,'ma GTX','a-23'),('Algebra','Anton','000107','0001',1,'12.03.86','Math','02.01.10',10,'Regular','14',2,35,7,'1',NULL,'ma GTX','a-23'),('Algebra','Anton','000108','0001',1,'12.03.86','Math','02.01.10',10,'Regular','14',0,0,0,'1',NULL,'ma GTX','a-23'),('Algebra','Anton','000109','0001',1,'12.03.86','Math','02.01.10',10,'Regular','14',1,20,6,'1',NULL,'ma GTX','a-23'),('Algebra2','Dan','000200','0002',1,'12.03.86','Math','02.01.10',5,'Regular','14',1,20,6,'1',NULL,'ma GTX2','a-22'),('Algebra2','Dan','000201','0002',1,'12.03.86','Math','02.01.10',5,'Regular','14',2,30,2,'1',NULL,'ma GTX2','a-22'),('Algebra2','Dan','000202','0002',1,'12.03.86','Math','02.01.10',5,'Regular','14',0,0,0,'1',NULL,'ma GTX2','a-22'),('Algebra2','Dan','000203','0002',1,'12.03.86','Math','02.01.10',5,'Regular','14',1,13,0,'1',NULL,'ma GTX2','a-22'),('Algebra2','Dan','000204','0002',1,'12.03.86','Math','02.01.10',5,'Regular','14',1,15,1,'1',NULL,'ma GTX2','a-22'),('JavaSwing','Ron','003200','0032',1,'12.03.86','Java','02.01.10',3,'Wanted','3',2,6,0,'1',NULL,'cat','b-32'),('JavaSwing','Ron','003201','0032',1,'12.03.86','Java','02.01.10',3,'Wanted','3',1,2,0,'1',NULL,'cat','b-32'),('JavaSwing','Ron','003202','0032',1,'12.03.86','Java','02.01.10',3,'Wanted','3',2,12,6,'1',NULL,'cat','b-32'),('Discrete Math','Beni','003300','0033',1,'12.03.86','Math','02.01.10',4,'Wanted','3',1,5,2,'1',NULL,'car','f-35'),('Discrete Math','Beni','003301','0033',1,'12.03.86','Math','02.01.10',4,'Wanted','3',2,15,9,'1',NULL,'car','f-35'),('Discrete Math','Beni','003302','0033',1,'12.03.86','Math','02.01.10',4,'Wanted','3',1,30,27,'1',NULL,'car','f-35'),('Discrete Math','Beni','003303','0033',1,'12.03.86','Math','02.01.10',4,'Wanted','3',2,10,4,'1',NULL,'car','f-35'),('JavaFX','Chris','003400','0034',1,'12.03.86','Java','02.01.10',1,'Wanted','3',1,12,9,'1',NULL,'ctr','d-23');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_archive`
--

DROP TABLE IF EXISTS `books_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `books_archive` (
  `Headline` varchar(45) DEFAULT NULL,
  `Author` varchar(45) DEFAULT NULL,
  `ISBN` varchar(45) NOT NULL,
  `CatalogNumber` varchar(45) DEFAULT NULL,
  `EditionNumber` varchar(45) DEFAULT NULL,
  `PrintDate` varchar(45) DEFAULT NULL,
  `Subject` varchar(45) DEFAULT NULL,
  `PurchaseDate` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `ArchiveDate` varchar(45) DEFAULT NULL,
  `WorkerID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_archive`
--

LOCK TABLES `books_archive` WRITE;
/*!40000 ALTER TABLE `books_archive` DISABLE KEYS */;
INSERT INTO `books_archive` VALUES ('Algebra','Anton','0001','01',NULL,NULL,'Math',NULL,'ma GTX','28.01.19','987'),('Algebra','Anton','0002','01',NULL,NULL,'Math',NULL,'car','28.01.19','987'),('test','t','0009','09',NULL,NULL,'test',NULL,'test','01.02.2019','123'),('as ','s','001',NULL,NULL,NULL,NULL,NULL,NULL,'28.01.19','987'),('test','t','0010','09',NULL,NULL,'test',NULL,'test','01.02.2019','123'),('test','t','0011','09',NULL,NULL,'test',NULL,'test','01.02.2019','123'),('fas','f','002',NULL,NULL,NULL,NULL,NULL,NULL,'28.01.19','987'),('gras','g','003',NULL,NULL,NULL,NULL,NULL,NULL,'28.01.19','987'),('Discrete Math','Beni','12346','33',NULL,NULL,'Math',NULL,'car','28.01.19','123'),('Discrete Math','Beni','12347','33',NULL,NULL,'Math',NULL,'car','31.01.2019','123'),('JavaFX','Chris','2344',NULL,NULL,NULL,NULL,NULL,NULL,'28.01.19','987'),('JavaSwing','Ron','2347','32',NULL,NULL,'Java',NULL,'cat','01.02.2019','123'),('HarryPotter','JK','8885','45',NULL,NULL,'Fiction',NULL,'magic','28.01.19','123'),('HarryPotter','JK','8886','45',NULL,NULL,'Fiction',NULL,'magic','28.01.19','123'),('HarryPotter','JK','8887','45',NULL,NULL,'Fiction',NULL,'magic','28.01.19','123'),('HarryPotter','JK','8888','45',NULL,NULL,'Fiction',NULL,'magic','28.01.19','123'),('HarryPotter','JK','8889','45',NULL,NULL,'Fiction',NULL,'magic','28.01.19','123');
/*!40000 ALTER TABLE `books_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowed_book_history`
--

DROP TABLE IF EXISTS `borrowed_book_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `borrowed_book_history` (
  `ISBN` varchar(45) NOT NULL,
  `borrowerID` varchar(45) DEFAULT NULL,
  `borrowDate` varchar(45) NOT NULL,
  `borrowTime` time NOT NULL,
  `returnDate` varchar(45) DEFAULT NULL,
  `borrowStatus` enum('ok','late') DEFAULT 'ok',
  PRIMARY KEY (`ISBN`,`borrowTime`,`borrowDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowed_book_history`
--

LOCK TABLES `borrowed_book_history` WRITE;
/*!40000 ALTER TABLE `borrowed_book_history` DISABLE KEYS */;
INSERT INTO `borrowed_book_history` VALUES ('000100','222','22.02.2019','00:56:44',NULL,'ok'),('000100','555','01.01.2019','18:51:42','11.01.2019','ok'),('000100','555','14.01.2019','22:23:40','28.01.2019','ok'),('000101','555','20.02.2019','00:00:00',NULL,'ok'),('000101','325','01.12.2018','20:59:39','21.12.2018','late'),('000101','888','02.11.2018','21:12:04','25.11.2018','late'),('000102','222','30.12.2018','02:35:52','4.01.2019','ok'),('000102','325','14.02.2019','12:01:01',NULL,'ok'),('000103','555','01.01.2019','02:03:05','18.01.2019','late'),('000103','222','01.12.2018','02:11:07','10.12.2018','ok'),('000104','325','01.11.2018','00:00:00','15.11.2018','late'),('000105','111','01.01.2019','00:00:00','18.01.2019','late'),('000105','888','10.01.2019','11:11:12','21.02.2019','ok'),('000105','555','21.02.2019','11:45:07',NULL,'ok'),('000106','222','02.01.2019','21:14:25','18.01.2019','late'),('000107','222','01.10.2018','21:16:24','20.10.2018','late'),('000107','888','01.01.2019','22:28:52','15.01.2019','late'),('000109','222','05.01.2019','22:30:21','25.01.2019','late'),('000200','231','21.01.2019','00:00:00','30.01.2019','late'),('000200','111','05.02.2019','09:20:12','25.02.2019','ok'),('000201','325','01.01.2019','00:00:00','16.01.2019','late'),('000201','111','01.12.2018','00:00:00','15.12.2018','ok'),('000203','555','05.11.2018','00:56:44','18.11.2018','ok'),('000204','333','11.11.2018','22:09:17','16.11.2018','ok'),('003200','555','24.02.2019','08:11:11',NULL,'ok'),('003200','111','01.01.2019','22:20:46','03.01.2019','ok'),('003200','222','01.07.2018','22:43:21','03.07.2018','ok'),('003201','888','03.01.2019','11:11:11','06.01.2019','ok'),('003202','325','12.12.2018','11:11:12','19.12.2018','late'),('003202','111','20.12.2018','12:00:00','27.12.2018','late'),('003300','555','24.02.2019','09:11:12',NULL,'late'),('003300','888','07.07.2018','12:01:01','13.07.2018','late'),('003301','325','01.05.2018','08:00:00','13.05.2018','late'),('003301','555','01.01.2019','08:11:11','04.01.2019','ok'),('003302','222','01.01.2018','22:08:08','31.01.2018','late'),('003303','325','12.12.2018','08:07:00','19.12.2018','late'),('003303','555','01.01.2019','12:01:05','04.01.2019','ok'),('003400','444','23.02.2019','10:10:10',NULL,'ok'),('003400','222','01.01.2019','22:09:54','13.01.2019','late');
/*!40000 ALTER TABLE `borrowed_book_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowedbook`
--

DROP TABLE IF EXISTS `borrowedbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `borrowedbook` (
  `ISBN` varchar(45) NOT NULL,
  `borrowerID` varchar(45) DEFAULT NULL,
  `borrowDate` varchar(45) DEFAULT NULL,
  `returnDate` varchar(45) DEFAULT NULL,
  `borrowStatus` enum('ok','late') DEFAULT 'ok',
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowedbook`
--

LOCK TABLES `borrowedbook` WRITE;
/*!40000 ALTER TABLE `borrowedbook` DISABLE KEYS */;
INSERT INTO `borrowedbook` VALUES ('000100','222','22.02.2019','08.02.2019','ok'),('000101','555','20.02.2019','11.03.2019','ok'),('000102','325','14.02.2019','28.02.2019','ok'),('000105','555','21.02.2019','07.03.2019','ok'),('000200','111','25.02.2019','29.02.2019','ok'),('003200','555','24.02.2019','27.02.2019','ok'),('003300','555','24.02.2019','27.02.2019','ok'),('003400','444','23.02.2019','26.02.2019','ok');
/*!40000 ALTER TABLE `borrowedbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manualprolongation`
--

DROP TABLE IF EXISTS `manualprolongation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manualprolongation` (
  `librarianID` varchar(45) NOT NULL,
  `ISBN` varchar(45) NOT NULL,
  `librarianName` varchar(45) DEFAULT NULL,
  `prolongationDate` varchar(45) NOT NULL,
  PRIMARY KEY (`prolongationDate`,`ISBN`,`librarianID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manualprolongation`
--

LOCK TABLES `manualprolongation` WRITE;
/*!40000 ALTER TABLE `manualprolongation` DISABLE KEYS */;
INSERT INTO `manualprolongation` VALUES ('123','12345','Alex','01.01.2019'),('123','2345','Alex','01.01.2019'),('123','12345','Alex','15.01.2019');
/*!40000 ALTER TABLE `manualprolongation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problematicsubscriber`
--

DROP TABLE IF EXISTS `problematicsubscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `problematicsubscriber` (
  `SubscribersID` varchar(45) NOT NULL,
  `SubscribersName` varchar(45) DEFAULT NULL,
  `SubscriberStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SubscribersID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problematicsubscriber`
--

LOCK TABLES `problematicsubscriber` WRITE;
/*!40000 ALTER TABLE `problematicsubscriber` DISABLE KEYS */;
INSERT INTO `problematicsubscriber` VALUES ('111','Harel','Frozen'),('325','Anton','Frozen'),('888','Ben','Frozen'),('9999','Kaka','Locked');
/*!40000 ALTER TABLE `problematicsubscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prolongationrequest`
--

DROP TABLE IF EXISTS `prolongationrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `prolongationrequest` (
  `SubscriberID` varchar(45) NOT NULL,
  `ProlongationDate` varchar(45) NOT NULL,
  `ISBN` varchar(45) NOT NULL,
  `RequestConfirmation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SubscriberID`,`ProlongationDate`,`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prolongationrequest`
--

LOCK TABLES `prolongationrequest` WRITE;
/*!40000 ALTER TABLE `prolongationrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `prolongationrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `StudentSubscriberNumber` varchar(45) NOT NULL,
  `StudentID` varchar(45) NOT NULL,
  `StudentName` varchar(45) DEFAULT NULL,
  `StudentPassword` varchar(45) NOT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `StatusMembership` enum('Locked','Frozen','Active','NotRegistered') DEFAULT NULL,
  `Operation` enum('ExtendBookRequest','ReturnBookRequest','LendingRequest') DEFAULT NULL,
  `FreezeCounter` int(11) DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE KEY `StudentSubscriberNumber_UNIQUE` (`StudentSubscriberNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('2','111','Harel','222','054666666','Harel@gmail.com','Frozen',NULL,1),('4','222','Chris','222','0547878787','Chris@gmail.com','Active',NULL,2),('1','325','Anton','123','0544445556','Anton@gmail.com','Active','ExtendBookRequest',0),('5','333','Gal','111','0501234567','Gal@gmail.com','Active',NULL,2),('6','444','Tal','111','0528888888','Tal@hotmail.com','Active',NULL,1),('7','555','Gil','111','0502323888','Gil@wallamail.com','Active',NULL,1),('8','888','Ben','111','0504696055','Ben@gmail.com','Frozen',NULL,3),('3','9999','Kim','111','0501111111',NULL,'Locked',NULL,2);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriber_status_history`
--

DROP TABLE IF EXISTS `subscriber_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subscriber_status_history` (
  `subscribeID` varchar(45) NOT NULL,
  `subscriberStatus` varchar(45) DEFAULT NULL,
  `beginningDate` varchar(45) NOT NULL,
  `endDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`subscribeID`,`beginningDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriber_status_history`
--

LOCK TABLES `subscriber_status_history` WRITE;
/*!40000 ALTER TABLE `subscriber_status_history` DISABLE KEYS */;
INSERT INTO `subscriber_status_history` VALUES ('111','Active','10.10.2018','24.12.2018'),('111','Frozen','15.01.2019','18.01.2019'),('111','Active','18.01.2019','21.02.2019'),('111','Frozen','21.02.2019',NULL),('111','Frozen','24.12.2018','27.12.2018'),('111','Active','27.12.2018','15.01.2019'),('222','Frozen','04.01.2018','31.01.2018'),('222','Frozen','04.01.2019','15.01.2019'),('222','Active','10.10.2017','01.01.2018'),('222','Frozen','15.01.2019','25.01.2019'),('222','Active','31.01.2018','04.01.2019'),('325','Frozen','15.12.2018','21.12.2018'),('325','Active','21.12.2018',NULL),('333','Active','10.10.2018',NULL),('444','Active','10.10.2018',NULL),('555','Active','10.10.2018','15.01.2019'),('555','Frozen','15.01.2019','25.01.2019'),('555','Active','25.01.2019',NULL),('888','Frozen','10.02.2019',NULL),('9999','Locked','15.02.2019',NULL);
/*!40000 ALTER TABLE `subscriber_status_history` ENABLE KEYS */;
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
  `Password` varbinary(45) NOT NULL,
  `AccountType` enum('Student','Librarian','LibraryManager') NOT NULL,
  `StatusMembership` enum('Active','Frozen','Locked') DEFAULT NULL,
  `FreezeCounter` int(20) DEFAULT '0',
  `isConnected` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('111','Harel',_binary '222','Student','Frozen',1,'0'),('123','Alex',_binary '321','LibraryManager','Active',0,'0'),('222','Chris',_binary '222','Student','Active',1,'0'),('325','Anton',_binary '123','Student','Frozen',3,'0'),('333','Gal',_binary '111','Student','Active',2,'1'),('444','Tal',_binary '111','Student','Active',1,'0'),('555','Gil',_binary '111','Student','Active',1,'0'),('888','Ben',_binary 'GTA','Student','Frozen',3,'0'),('987','Michael',_binary '456','Librarian','Active',0,'0'),('9999','Kim',_binary '111','Student','Locked',2,'0');
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

-- Dump completed on 2019-02-25 21:31:49
