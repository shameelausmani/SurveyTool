-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: surveytool
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `all_responses`
--

DROP TABLE IF EXISTS `all_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_responses` (
  `response_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `user_answer` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_responses`
--

LOCK TABLES `all_responses` WRITE;
/*!40000 ALTER TABLE `all_responses` DISABLE KEYS */;
INSERT INTO `all_responses` VALUES (3,17,'No'),(3,18,'Very  knowledgeable '),(3,19,'Usually'),(3,20,'Definitely No'),(3,22,'Usually'),(4,17,'Sometime'),(4,19,'Never'),(4,20,'Not sure'),(5,12,'Once in a week'),(5,13,'Disagree'),(5,14,'Very likely'),(5,15,'Disagree'),(5,16,'Yes'),(6,17,'No'),(6,18,'Very  knowledgeable '),(6,19,'Usually'),(6,20,'I should think'),(6,22,'Not sure'),(7,17,'Yes'),(7,18,'Very  knowledgeable '),(7,20,'Not sure'),(7,22,'Always'),(8,12,'Rarely'),(8,13,'Strongly Agree'),(8,14,'Very likely'),(8,15,'Disagree'),(8,16,'Not sure'),(10,12,'Once in a week'),(10,13,'Disagree'),(10,14,'Very likely'),(10,15,'Disagree'),(10,16,'Yes'),(11,8,'Satisfied'),(11,9,'Agree'),(11,11,'Yes,definitely'),(13,8,'Less'),(14,8,'Less'),(14,9,'Avarage'),(14,10,'Average'),(14,11,'Yes,definitely'),(14,21,'I am enthusiastic about it.'),(14,23,'florida'),(15,12,'Once in a week'),(15,13,'Disagree'),(15,14,'unlikely'),(15,15,'Agree'),(15,16,'May be');
/*!40000 ALTER TABLE `all_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'student'),(2,'customer'),(3,'patient'),(4,'admin');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response`
--

DROP TABLE IF EXISTS `response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response` (
  `RESPONSE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RESPONSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response`
--

LOCK TABLES `response` WRITE;
/*!40000 ALTER TABLE `response` DISABLE KEYS */;
INSERT INTO `response` VALUES (1,'sharma@gmail.com','2016-06-23',2),(2,'sharma@gmail.com','2016-06-24',2),(3,'u@gmail.com','2016-07-05',3),(4,'u@gmail.com','2016-07-05',3),(5,'sharma@gmail.com','2016-07-05',2),(6,'ku@gmail.com','2016-07-07',3),(7,'ku@gmail.com','2016-07-07',3),(8,'sharma@gmail.com','2016-07-08',2),(9,'sharma@gmail.com','2016-07-11',2),(10,'sharma@gmail.com','2016-07-11',2),(11,'su@gmail.com','2016-07-11',1),(12,'sharma@gmail.com','2016-07-12',2),(13,'su@gmail.com','2016-07-18',1),(14,'su@gmail.com','2016-07-18',1),(15,'sharma@gmail.com','2016-07-18',2),(16,'sharma@gmail.com','2016-07-26',2);
/*!40000 ALTER TABLE `response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_questions`
--

DROP TABLE IF EXISTS `survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_questions` (
  `QUESTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `QUESTIONS` varchar(500) DEFAULT NULL,
  `Solution1` varchar(500) DEFAULT NULL,
  `Solution2` varchar(500) DEFAULT NULL,
  `Solution3` varchar(500) DEFAULT NULL,
  `Solution4` varchar(500) DEFAULT NULL,
  `actual_answer` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`QUESTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_questions`
--

LOCK TABLES `survey_questions` WRITE;
/*!40000 ALTER TABLE `survey_questions` DISABLE KEYS */;
INSERT INTO `survey_questions` VALUES (8,1,'Is your library is fullfiling all the requirements necessary for your course work?','Satisfied','Average','Medium','Less','Satisfied'),(9,1,'Is your college emphasis on developing academic,scholarly and intellectual qualities?','Agree','Strongly Agree','Disagree','Avarage','Strongly Agree'),(10,1,'Is there good opportunity regarding part time job in your University?','Agree','Strongly Agree','Disagree','Average','Agree'),(11,1,'If you have to start once again your education would you prefer to go to same University back again?','Yes,definitely','Probably,Yes','Probably,No','No,definitely','Yes,Definitely'),(12,2,'How often people visit a shooping mall?','Once in a week','Once in a month','Rarely','Never','Once in a week'),(13,2,'A mall is a place with lots of options and choices for all age group people?','Disagree','Strongly Agree','Agree','Strongly disagree','Strongly Agree'),(14,2,'Overall how likely are you to return to this mall again?','Very likely','Not sure','Somewhat likely','unlikely','Very likely'),(15,2,'Mall is a  place offering high standards of customer service and facilities','Disagree','Strongly agree','Agree','Strongly disagree','Agree'),(16,2,'Is shopping malls are always located in good area?','Yes','No','Not sure','May be','Yes'),(17,3,'Are you satisfied with the facilities given by the hospital?','Sometime','No','Not sure','Yes','Yes'),(18,3,'How knowledgeable is the staff at this hopital?','Extremely  knowledgeable ','Very  knowledgeable ','Moderate  knowledgeable ','Not All','Very  knowledgeable '),(19,3,'During this hospital stay, how often did doctors and staff treat you with courtesy and respect?','Never','Usually','Always','Sometime','Always'),(20,3,'Would you like to Recommend this hospital to your friend and family?','Definitely Yes','Definitely No','Not sure','I should think','Definitely Yes'),(21,1,'How much do you like your college?','I am enthusiastic about it.','I like it.','I am more or less neutral about it','I don\'t like it.','I am enthusiastic about it.'),(22,3,'Do they give to your family complete information about your diagnosis and treatment plan?','Always','Usually','Sometime','Not sure','Always');
/*!40000 ALTER TABLE `survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `EMAIL_ID` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(50) DEFAULT NULL,
  `DATEOFBIRTH` datetime DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Administrator','Adminstrator','admin@gmail.com','admin','1234567890','1979-06-21 11:12:13',4),('k','u','ku@gmail.com','123','3214567890','1990-01-09 00:00:00',3),('pooja','singh','pooja@gmail.com','12345','12234545','1990-01-08 00:00:00',2),('ps','ps','ps@gmil.com','12345','2444556','1990-01-09 00:00:00',1),('shameela','usmani','shameelausmani@gmail.com','231st','3213550566','1990-08-10 00:00:00',1),('mukta','sharma','sharma@gmail.com','123456','1234556','1990-01-09 00:00:00',2),('divya','singh','singh@gmail.com','12345678','234556677','1990-01-11 00:00:00',1),('s','u','su@gmail.com','12345','3214560899','1989-01-08 00:00:00',1),('s','u','u@gmail.com','123','2345678901','1990-01-08 00:00:00',3);
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

-- Dump completed on 2016-07-27  1:01:50
