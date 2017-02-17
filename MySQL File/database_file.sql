CREATE DATABASE  IF NOT EXISTS `the_asset_consultancy` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `the_asset_consultancy`;
-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: the_asset_consultancy
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.04.1

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
-- Table structure for table `AssetData`
--

DROP TABLE IF EXISTS `AssetData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetData` (
  `id` int(11) DEFAULT NULL,
  `startPrice` varchar(15) DEFAULT NULL,
  `startYear` varchar(15) DEFAULT NULL,
  `FinalPrice` varchar(15) DEFAULT NULL,
  `finalYear` varchar(15) DEFAULT NULL,
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetData`
--

LOCK TABLES `AssetData` WRITE;
/*!40000 ALTER TABLE `AssetData` DISABLE KEYS */;
INSERT INTO `AssetData` VALUES (18,'39179','1980','681597','2016',1);
/*!40000 ALTER TABLE `AssetData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetInfo`
--

DROP TABLE IF EXISTS `AssetInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetInfo` (
  `id` int(11) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Area` varchar(45) DEFAULT NULL,
  `Zip` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetInfo`
--

LOCK TABLES `AssetInfo` WRITE;
/*!40000 ALTER TABLE `AssetInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetRecords`
--

DROP TABLE IF EXISTS `AssetRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetRecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Assetid` int(11) DEFAULT NULL,
  `Year` varchar(45) DEFAULT NULL,
  `Price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetRecords`
--

LOCK TABLES `AssetRecords` WRITE;
/*!40000 ALTER TABLE `AssetRecords` DISABLE KEYS */;
INSERT INTO `AssetRecords` VALUES (1,10,'1990','100000'),(2,10,'2015','2500000'),(3,17,'1999','1500'),(4,17,'2016','200000'),(5,10,'1993','1200000'),(6,10,'1997','1500000'),(7,10,'2005','2000000'),(8,17,'1990','230000'),(9,17,'1995','240000'),(10,17,'1996','300000'),(11,17,'2000','500000'),(12,17,'2001','450000'),(13,15,'1980','3917991'),(14,15,'1982','6168233'),(15,15,'1984','8388607'),(16,15,'1986','3611792'),(17,15,'1988','5674037'),(18,15,'1990','4604353'),(19,15,'1992','5759893'),(20,15,'1994','3107964'),(21,15,'1996','3966124'),(22,15,'1998','3362072'),(23,15,'2000','3859369'),(24,15,'2002','4565832'),(25,15,'2004','4685042'),(26,15,'2006','6482643'),(27,15,'2008','8388607'),(28,15,'2010','7396626'),(29,15,'2012','230125'),(30,15,'2014','7665181'),(31,15,'2016','6815978'),(44,18,'1980','39179'),(45,18,'1982','61682'),(46,18,'1984','80000'),(47,18,'1986','361179'),(48,18,'1988','5674037'),(49,18,'1990','4604353'),(50,18,'1992','5759893'),(51,18,'1994','3107964'),(52,18,'1996','3966124'),(53,18,'1998','3362072'),(54,18,'2000','3859369'),(55,18,'2002','4565832'),(56,18,'2004','4685042'),(57,18,'2006','6482643'),(58,18,'2008','8388607'),(59,18,'2010','7396626'),(60,18,'2012','230125'),(61,18,'2014','7665181'),(62,18,'2016','681597');
/*!40000 ALTER TABLE `AssetRecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetRecords_2`
--

DROP TABLE IF EXISTS `AssetRecords_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetRecords_2` (
  `id` mediumint(9) DEFAULT NULL,
  `Assetid` mediumint(9) DEFAULT NULL,
  `Year` mediumint(9) DEFAULT NULL,
  `Price` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetRecords_2`
--

LOCK TABLES `AssetRecords_2` WRITE;
/*!40000 ALTER TABLE `AssetRecords_2` DISABLE KEYS */;
INSERT INTO `AssetRecords_2` VALUES (1,10,1998,3573529),(2,10,1986,3685941),(3,10,2013,1202094),(4,10,1999,3800774),(5,10,2010,4110898),(6,10,1981,4179406),(7,10,2013,1604638),(8,10,1992,606674),(9,10,1994,3728392),(10,10,1993,4182527),(11,10,1983,4229964),(12,10,1982,4049101),(13,10,1989,2114774),(14,10,1982,2550073),(15,10,1982,1895437),(16,10,1992,1586502),(17,10,2005,259234),(18,10,1994,1482989),(19,10,2000,1908418),(20,10,1992,2436153),(21,10,2016,4757349),(22,10,2007,2083510),(23,10,1983,2448539),(24,10,1994,1303015),(25,10,2000,2898001),(26,10,1987,1964070),(27,10,2005,99162),(28,10,2006,3421566),(29,10,1995,4596730),(30,10,2011,3509305),(31,10,2003,1354159),(32,10,1991,354500),(33,10,1997,3481768),(34,10,1990,453727),(35,10,1983,1294003),(36,10,2009,1947413),(37,10,1993,366882),(38,10,2009,4427275),(39,10,2001,3212423),(40,10,1990,3750953),(41,10,2008,2657744),(42,10,1997,3683436),(43,10,1997,2467226),(44,10,2014,4715267),(45,10,1993,3534043),(46,10,1998,2616160),(47,10,2010,3932721),(48,10,2004,3085743),(49,10,2004,3355959),(50,10,1988,3987067),(51,10,1983,4151579),(52,10,2014,2780612),(53,10,1996,1305831),(54,10,2008,302588),(55,10,2011,2275177),(56,10,1995,2762584),(57,10,1988,1729188),(58,10,2014,3918734),(59,10,1984,4345629),(60,10,1990,3467963),(61,10,1990,3943763),(62,10,2013,3797891),(63,10,2000,502133),(64,10,1999,2054667),(65,10,1994,1326411),(66,10,2009,1412287),(67,10,2008,2286919),(68,10,2015,896068),(69,10,1992,3390770),(70,10,2010,366606),(71,10,2011,1685819),(72,10,2000,4552667),(73,10,2001,4200505),(74,10,1983,3026131),(75,10,1995,2447405),(76,10,1995,4610652),(77,10,1990,3320275),(78,10,2016,2671973),(79,10,1985,1971477),(80,10,2006,1036040),(81,10,2013,3116657),(82,10,2001,4078187),(83,10,1997,4898184),(84,10,1991,994642),(85,10,1992,133444),(86,10,1997,1627053),(87,10,2006,1740743),(88,10,1982,4056899),(89,10,2015,1478240),(90,10,1992,1476709),(91,10,2012,2239672),(92,10,2009,4385741),(93,10,2006,337498),(94,10,2013,2805968),(95,10,1985,1128849),(96,10,1994,2600296),(97,10,1996,3741271),(98,10,2015,1384265),(99,10,2009,539197),(100,10,1980,2432245);
/*!40000 ALTER TABLE `AssetRecords_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetRecords_3`
--

DROP TABLE IF EXISTS `AssetRecords_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetRecords_3` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `Assetid` text,
  `Price` mediumint(9) DEFAULT NULL,
  `Year` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetRecords_3`
--

LOCK TABLES `AssetRecords_3` WRITE;
/*!40000 ALTER TABLE `AssetRecords_3` DISABLE KEYS */;
INSERT INTO `AssetRecords_3` VALUES (1,'18',39179,1980),(2,'18',61682,1982),(3,'18',80000,1984),(4,'18',361179,1986),(5,'18',5674037,1988),(6,'18',4604353,1990),(7,'18',5759893,1992),(8,'18',3107964,1994),(9,'18',3966124,1996),(10,'18',3362072,1998),(11,'18',3859369,2000),(12,'18',4565832,2002),(13,'18',4685042,2004),(14,'18',6482643,2006),(15,'18',8388607,2008),(16,'18',7396626,2010),(17,'18',230125,2012),(18,'18',7665181,2014),(19,'18',681597,2016);
/*!40000 ALTER TABLE `AssetRecords_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Filter_criteria`
--

DROP TABLE IF EXISTS `Filter_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Filter_criteria` (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT,
  `zip` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `bhk` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Filter_criteria`
--

LOCK TABLES `Filter_criteria` WRITE;
/*!40000 ALTER TABLE `Filter_criteria` DISABLE KEYS */;
INSERT INTO `Filter_criteria` VALUES (1,'380020','Kadipani','Row Houses ','2');
/*!40000 ALTER TABLE `Filter_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_detail`
--

DROP TABLE IF EXISTS `agent_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_detail` (
  `a_id` int(4) NOT NULL AUTO_INCREMENT,
  `u_id` int(4) NOT NULL,
  `a_fname` varchar(50) DEFAULT NULL,
  `a_lname` varchar(50) DEFAULT NULL,
  `a_email` varchar(50) DEFAULT NULL,
  `a_state` varchar(45) DEFAULT NULL,
  `a_city` varchar(20) DEFAULT NULL,
  `a_area` varchar(45) DEFAULT NULL,
  `a_status` varchar(45) DEFAULT NULL,
  `a_no` varchar(20) DEFAULT NULL,
  `a_address1` varchar(50) DEFAULT NULL,
  `a_address2` varchar(45) DEFAULT NULL,
  `a_rating` int(4) DEFAULT NULL,
  `a_companyname` varchar(45) DEFAULT NULL,
  `a_description` longtext,
  `a_img` varchar(45) DEFAULT NULL,
  `a_workx` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `fk_agent_detail_1_idx` (`u_id`),
  CONSTRAINT `fk_agent_detail_1` FOREIGN KEY (`u_id`) REFERENCES `login` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_detail`
--

LOCK TABLES `agent_detail` WRITE;
/*!40000 ALTER TABLE `agent_detail` DISABLE KEYS */;
INSERT INTO `agent_detail` VALUES (11,27,'Janki','Kansara','janki@gmail.com','Gujarat','Ahmedabad','Satellite','Accepted','9737011633','12, Subhash Complex','Jodhpur Crossroad',NULL,'Icreate Real Estate','My life long career in the Dallas Commercial Real Estate Industry began in 1979.  I have remained in this business ever since helping real estate investors, landlords and tenants with their commercial real estate transactions. \r\n','profile8.jpg','13'),(13,36,'Ajay ','Patel','klkl@gmail.com','Gujarat','Ahmedabad','Satellite','Accepted','9737011633','12, Subhash Complex','Jodhpur Crossroad',5,'Icreate Real Estate','My life long career in the Dallas Commercial Real Estate Industry began in 1979.  I have remained in this business ever since helping real estate investors, landlords and tenants with their commercial real estate transactions. \n\nDuring my extensive career, I have represented landlords for over 43 high-rise, mid-rise and garden office buildings located in the Dallas/Ft. Worth area totaling over 8.5 million square feet of space.  The scope of services included the creation and implementation of marketing programs, the preparation of marketing and leasing budgets, consideration of property enhancements, direct selling to prospective tenants and cooperating brokers, building and vacant space presentations, sophisticated financial analyses of proposal terms and drafting detailed lease proposals. I also lead the negotiation of the financial lease terms, the negotiation of the lease agreement and developed relationships with the current tenants, prospects, brokers, landlords, architects and attorneys.','profile7.jpg','2'),(15,40,'Ramanuj','Arman','arman@gmail.com','Gujarat','Ahmedabad','Satellite','Accepted','9737011633','12, Subhash Complex','Jodhpur Crossroad',7,'Icreate Real Estate','My life long career in the Dallas Commercial Real Estate Industry began in 1979.  I have remained in this business ever since helping real estate investors, landlords and tenants with their commercial real estate transactions. \n\nDuring my extensive career, I have represented landlords for over 43 high-rise, mid-rise and garden office buildings located in the Dallas/Ft. Worth area totaling over 8.5 million square feet of space.  The scope of services included the creation and implementation of marketing programs, the preparation of marketing and leasing budgets, consideration of property enhancements, direct selling to prospective tenants and cooperating brokers, building and vacant space presentations, sophisticated financial analyses of proposal terms and drafting detailed lease proposals. I also lead the negotiation of the financial lease terms, the negotiation of the lease agreement and developed relationships with the current tenants, prospects, brokers, landlords, architects and attorneys.','profile7.jpg','3'),(16,42,'Ram ','Kumar','ram@gmail.com','Gujarat','Surat','Dumas','Accepted','9737011633','12, Subhash Complex','Jodhpur Crossroad',5,'Icreate Real Estate','My life long career in the Dallas Commercial Real Estate Industry began in 1979.  I have remained in this business ever since helping real estate investors, landlords and tenants with their commercial real estate transactions. \n\nDuring my extensive career, I have represented landlords for over 43 high-rise, mid-rise and garden office buildings located in the Dallas/Ft. Worth area totaling over 8.5 million square feet of space.  The scope of services included the creation and implementation of marketing programs, the preparation of marketing and leasing budgets, consideration of property enhancements, direct selling to prospective tenants and cooperating brokers, building and vacant space presentations, sophisticated financial analyses of proposal terms and drafting detailed lease proposals. I also lead the negotiation of the financial lease terms, the negotiation of the lease agreement and developed relationships with the current tenants, prospects, brokers, landlords, architects and attorneys.','profile7.jpg','4'),(20,47,'Sharan','Raghu','sr@gmail.com','Gujarat','Surat','Dumas','Accepted','98989898','B/11, Titanium Comlplex,','Near AG School',8,'Icreate Real Estate','My life long career in the Dallas Commercial Real Estate Industry began in 1979.  I have remained in this business ever since helping real estate investors, landlords and tenants with their commercial real estate transactions. \n\nDuring my extensive career, I have represented landlords for over 43 high-rise, mid-rise and garden office buildings located in the Dallas/Ft. Worth area totaling over 8.5 million square feet of space.  The scope of services included the creation and implementation of marketing programs, the preparation of marketing and leasing budgets, consideration of property enhancements, direct selling to prospective tenants and cooperating brokers, building and vacant space presentations, sophisticated financial analyses of proposal terms and drafting detailed lease proposals. I also lead the negotiation of the financial lease terms, the negotiation of the lease agreement and developed relationships with the current tenants, prospects, brokers, landlords, architects and attorneys.','profile7.jpg','12'),(21,48,'Komal','Patel','komal@gmail.com','Rajasthan','Jaipur','Chandpole Bazar','Accepted','9737011633','B/11, Titanium Comlplex,','Near AG School',2,'ScupltSoft','My life long career in the Dallas Commercial Real Estate Industry began in 1979.  I have remained in this business ever since helping real estate investors, landlords and tenants with their commercial real estate transactions. \n\nDuring my extensive career, I have represented landlords for over 43 high-rise, mid-rise and garden office buildings located in the Dallas/Ft. Worth area totaling over 8.5 million square feet of space.  The scope of services included the creation and implementation of marketing programs, the preparation of marketing and leasing budgets, consideration of property enhancements, direct selling to prospective tenants and cooperating brokers, building and vacant space presentations, sophisticated financial analyses of proposal terms and drafting detailed lease proposals. I also lead the negotiation of the financial lease terms, the negotiation of the lease agreement and developed relationships with the current tenants, prospects, brokers, landlords, architects and attorneys.','qn4.jpg','6'),(24,53,'Adit ','Desai','ady005@gmail.com','Uttarpradesh','Kanpur','Bhorpur','Accepted','9737011633','B/11, Titanium Comlplex,','Near AG School',6,'ScupltSoft','My life long career in the Dallas Commercial Real Estate Industry began in 1979.  I have remained in this business ever since helping real estate investors, landlords and tenants with their commercial real estate transactions. \n\nDuring my extensive career, I have represented landlords for over 43 high-rise, mid-rise and garden office buildings located in the Dallas/Ft. Worth area totaling over 8.5 million square feet of space.  The scope of services included the creation and implementation of marketing programs, the preparation of marketing and leasing budgets, consideration of property enhancements, direct selling to prospective tenants and cooperating brokers, building and vacant space presentations, sophisticated financial analyses of proposal terms and drafting detailed lease proposals. I also lead the negotiation of the financial lease terms, the negotiation of the lease agreement and developed relationships with the current tenants, prospects, brokers, landlords, architects and attorneys.','profile7.jpg','5'),(25,54,'Bansari','Shah','bansari@gmail.com','Gujarat','Ahmedabad','Satellite','Accepted','9737011633','B/11, Titanium Comlplex,','Near AG School',8,'ScupltSoft','My life long career in the Dallas Commercial Real Estate Industry began in 1979.  I have remained in this business ever since helping real estate investors, landlords and tenants with their commercial real estate transactions. \n\nDuring my extensive career, I have represented landlords for over 43 high-rise, mid-rise and garden office buildings located in the Dallas/Ft. Worth area totaling over 8.5 million square feet of space.  The scope of services included the creation and implementation of marketing programs, the preparation of marketing and leasing budgets, consideration of property enhancements, direct selling to prospective tenants and cooperating brokers, building and vacant space presentations, sophisticated financial analyses of proposal terms and drafting detailed lease proposals. I also lead the negotiation of the financial lease terms, the negotiation of the lease agreement and developed relationships with the current tenants, prospects, brokers, landlords, architects and attorneys.','qn1.jpg','7'),(26,55,'Jatri ','Dave','jatri@gmail.com','Madhyapradesh','Indore','Indore Rambagh','Accepted','9191919191','B/11, Titanium Comlplex,','Near AG School',9,'ScupltSoft','My life long career in the Dallas Commercial Real Estate Industry began in 1979.  I have remained in this business ever since helping real estate investors, landlords and tenants with their commercial real estate transactions. \n\nDuring my extensive career, I have represented landlords for over 43 high-rise, mid-rise and garden office buildings located in the Dallas/Ft. Worth area totaling over 8.5 million square feet of space.  The scope of services included the creation and implementation of marketing programs, the preparation of marketing and leasing budgets, consideration of property enhancements, direct selling to prospective tenants and cooperating brokers, building and vacant space presentations, sophisticated financial analyses of proposal terms and drafting detailed lease proposals. I also lead the negotiation of the financial lease terms, the negotiation of the lease agreement and developed relationships with the current tenants, prospects, brokers, landlords, architects and attorneys.','img_6143.jpg','11'),(28,59,'Ramesh','Acharya','ramesh@gmail.com','Gujarat','Ahmedabad','Satellite','Accepted','9854351743','A-1, Neelkanth Houses,','Vijay char rasta road',0,'Icreate Real Estate','My life long career in the Dallas Commercial Real Estate Industry began in 1979.  I have remained in this business ever since helping real estate investors, landlords and tenants with their commercial real estate transactions. \n\nDuring my extensive career, I have represented landlords for over 43 high-rise, mid-rise and garden office buildings located in the Dallas/Ft. Worth area totaling over 8.5 million square feet of space.  The scope of services included the creation and implementation of marketing programs, the preparation of marketing and leasing budgets, consideration of property enhancements, direct selling to prospective tenants and cooperating brokers, building and vacant space presentations, sophisticated financial analyses of proposal terms and drafting detailed lease proposals. I also lead the negotiation of the financial lease terms, the negotiation of the lease agreement and developed relationships with the current tenants, prospects, brokers, landlords, architects and attorneys.','profile7.jpg','5');
/*!40000 ALTER TABLE `agent_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_feedback`
--

DROP TABLE IF EXISTS `agent_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_feedback` (
  `af_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`af_id`),
  KEY `fk_agent_feedback_1_idx` (`a_id`),
  KEY `fk_agent_feedback_2_idx` (`u_id`),
  CONSTRAINT `fk_agent_feedback_1` FOREIGN KEY (`a_id`) REFERENCES `agent_detail` (`a_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_agent_feedback_2` FOREIGN KEY (`u_id`) REFERENCES `login` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_feedback`
--

LOCK TABLES `agent_feedback` WRITE;
/*!40000 ALTER TABLE `agent_feedback` DISABLE KEYS */;
INSERT INTO `agent_feedback` VALUES (1,11,36,'Very impressive agent.','2016-04-25 12:20:05'),(2,11,40,'Nice agent.','2016-04-25 12:22:53'),(3,11,42,'She is a very genuine agent.','2016-05-23 01:31:55');
/*!40000 ALTER TABLE `agent_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area_master`
--

DROP TABLE IF EXISTS `area_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_master` (
  `area_id` int(11) NOT NULL,
  `area_name` varchar(45) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `zip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`area_id`),
  KEY `fk_area_master_2_idx` (`city_id`),
  CONSTRAINT `fk_area_master_2` FOREIGN KEY (`city_id`) REFERENCES `city_master` (`city_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_master`
--

LOCK TABLES `area_master` WRITE;
/*!40000 ALTER TABLE `area_master` DISABLE KEYS */;
INSERT INTO `area_master` VALUES (1,'Ambawadi',1,'380010'),(2,'Maninagar',1,'380011'),(3,'Satellite',1,'380012'),(4,'Bopal',1,'380013'),(5,'Hajira',2,'380014'),(6,'Dumas',2,'380015'),(7,'Madhi',2,'380016'),(8,'Bardoli',2,'380017'),(9,'Chandod',3,'380018'),(10,'Alkapuri',3,'380019'),(11,'Kadipani',3,'380020'),(12,'Kareli',3,'380021'),(13,'Balol',4,'380022'),(14,'Bechraji',4,'380023'),(15,'Chhtral',4,'380024'),(16,'Malad',5,'380025'),(17,'Borivali',5,'380026'),(18,'Andheri',5,'380027'),(19,'Daadar',5,'380028'),(20,'Goregaon',5,'380029'),(21,'Bhiwapur',6,'380030'),(22,'Ajni',6,'380031'),(23,'Kalmeshwar',6,'380032'),(24,'Karodi',6,'380033'),(25,'Baramati',7,'380034'),(26,'Dehu Road',7,'380035'),(27,'Dhamni',7,'380036'),(28,'Ganeshkhind',7,'380037'),(29,'Chawand',8,'380038'),(30,'Delwara',8,'380039'),(31,'Charbhuja',8,'380040'),(32,'Ghasa',8,'380041'),(33,'Amer',9,'380042'),(34,'Chandpole Bazar',9,'380043'),(35,'Bairath',9,'380044'),(36,'Janta Bazar',9,'380045'),(37,'Beawar',10,'380046'),(38,'Adarsh Nagar',10,'380047'),(39,'Fatehgarh',10,'380048'),(40,'Bijainagar',10,'380049'),(41,'Diatra',11,'380050'),(42,'Himatsar',11,'380051'),(43,'Jamsar',11,'380052'),(44,'Nokha',11,'380053'),(45,'Bhopal Sonagiri',12,'380054'),(46,'Bhopal South T T',12,'380055'),(47,'Nazirabad',12,'380056'),(48,'Bhopal Old Sectt',12,'380057'),(49,'Indore Sadar Bazar',13,'380058'),(50,'Indore Topkhana',13,'380059'),(51,'Indore Rambagh',13,'380060'),(52,'Kasturba Nagar',13,'380061'),(53,'Baledi',14,'380062'),(54,'Jharda',14,'380063'),(55,'Tajpur',14,'380064'),(56,'Mahidpur',14,'380065'),(57,'Fatehabad',15,'380066'),(58,'Fatehpur Sikri',15,'380067'),(59,'Chhipitola',15,'380068'),(60,'Johri Bazar',15,'380069'),(61,'Akbarpur',16,'380070'),(62,'Bhorpur',16,'380071'),(63,'Hamirpur Road',16,'380072'),(64,'Jawahar Nagar',16,'380073'),(65,'Alambagh',17,'380074'),(66,'Dilkusha',17,'380075'),(67,'Ghazipur',17,'380076'),(68,'Haidergarh',17,'380077'),(69,'Avadi',18,'380078'),(70,'Jawahar Nagar',18,'380079'),(71,'Annanagar',18,'380080'),(72,'Jaffarkhanpet',18,'380081'),(73,'Jallipatti',19,'380082'),(74,'Irugur',19,'380083'),(75,'Odayakulam',19,'380084'),(76,'Mettupalayam',19,'380085'),(77,'Colachal',20,'380086'),(78,'Idaivchivalai',20,'380087'),(79,'Kappiyara',20,'380088'),(80,'Kizhkullam',20,'380089'),(81,'Dhurwa',21,'380090'),(82,'Gobindpur',21,'380091'),(83,'Hatia',21,'380092'),(84,'Mesra',21,'380093'),(85,'Bano',22,'380094'),(86,'Jaridih Bazar',22,'380095'),(87,'Tisri',22,'380096'),(88,'Kasmar',22,'380097'),(89,'Bhikhiwind',23,'380098'),(90,'Dhotian',23,'380099'),(91,'Kang',23,'380100'),(92,'Golden Temple Amritsar',23,'380101'),(93,'Ghanaur',24,'380102'),(94,'Manakpur',24,'380103'),(95,'Hamayunpur',24,'380104'),(96,'Rajpura',24,'380105'),(97,'Chibroo',25,'380106'),(98,'Kalsi Gate',25,'380107'),(99,'Mahebawalla',25,'380108'),(100,'Sahaspur',25,'380109'),(101,'Daulaghat',26,'380110'),(102,'Dwarahat',26,'380111'),(103,'Kausani',26,'380112'),(104,'Pilkholi',26,'380113'),(105,'Gadarpur',27,'380114'),(106,'Jeolikot',27,'380115'),(107,'Mukteswaram',27,'380116'),(108,'Sittarganj',27,'380117'),(109,'Basantpur',28,'380118'),(110,'Dhami',28,'380119'),(111,'Mashobra',28,'380120'),(112,'Shilaroo',28,'380121'),(113,'Bijhari',29,'380122'),(114,'Kangoo',29,'380123'),(115,'Kakkar',29,'380124'),(116,'Masroor',29,'380125'),(117,'Calangute',30,'380126'),(118,'Anjuna',30,'380127'),(119,'Siolim',30,'380128'),(120,'Santacruz Central',30,'380129'),(121,'Hut Bay',31,'380130'),(122,'Havelock',31,'380131'),(123,'Oralkatcha',31,'380132'),(124,'Nancowrie',31,'380133'),(125,'Moti Daman',32,'380134'),(126,'Daman',32,'380135'),(127,'Diu',32,'380136'),(128,'Naranpura',1,'380137'),(129,'Banaswadi',33,'380138'),(130,'Bettahalsur',33,'380139'),(131,'Chikkmuduvadi',33,'380140'),(132,'Devanahalli',33,'380141'),(133,'Connaught Place',34,'380142'),(134,'Parliament House',34,'380143'),(135,'Chankyapuri',34,'380144'),(136,'Ashoka Hotel',34,'380145'),(137,'Daulatabad',35,'380146'),(138,'Manesar',35,'380147'),(139,'Sohna',35,'380148'),(140,'Badshahpur',35,'380149'),(141,'Dadupur',36,'380150'),(142,'Jatwar',36,'380151'),(143,'Jagadhri',36,'380152'),(144,'Shahzadpur',36,'380153'),(145,'Dewanji Bazar',37,'380154'),(146,'Jalalpur',37,'380155'),(147,'Anilgarh',37,'380156'),(148,'Narsingpur',37,'380157'),(149,'Guwahati',38,'380158'),(150,'Maharipara',38,'380159'),(151,'Kalag',38,'380160'),(152,'Dharapur',38,'380161'),(153,'Jamia Masjid',39,'380162'),(154,'Nehru Park',39,'380163'),(155,'Rambagh',39,'380164'),(156,'Lal Chowk',39,'380165'),(157,'Bhudhanoor',40,'380166'),(158,'Cheppaud',40,'380167'),(159,'Chingoli',40,'380168'),(160,'Kannanakuzhi',40,'380169'),(161,'Bishnupur',42,'380170'),(162,'Laitumkhrah',42,'380171'),(163,'Shella',42,'380172'),(164,'Sumer',42,'380173'),(165,'Birema',41,'380174'),(166,'Viswama',41,'380175'),(167,'Tseminyu',41,'380176'),(168,'Birema',41,'380177');
/*!40000 ALTER TABLE `area_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_msg`
--

DROP TABLE IF EXISTS `chat_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_msg` (
  `cmid` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `msg` longtext,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cmid`),
  KEY `fk_chat_msg_1_idx` (`g_id`),
  KEY `fk_chat_msg_2_idx` (`u_id`),
  CONSTRAINT `fk_chat_msg_1` FOREIGN KEY (`g_id`) REFERENCES `group_detail` (`g_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_chat_msg_2` FOREIGN KEY (`u_id`) REFERENCES `login` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_msg`
--

LOCK TABLES `chat_msg` WRITE;
/*!40000 ALTER TABLE `chat_msg` DISABLE KEYS */;
INSERT INTO `chat_msg` VALUES (1,33,47,'hi\r\n','2016-04-25 10:59:24'),(2,33,27,'hey sharan','2016-04-25 12:47:37'),(3,33,47,'Hello janki','2016-04-25 12:47:48'),(4,31,27,'hello everyone','2016-05-20 10:14:56');
/*!40000 ALTER TABLE `chat_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_master`
--

DROP TABLE IF EXISTS `city_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_master` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(45) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `s_id_idx` (`s_id`),
  CONSTRAINT `s_id` FOREIGN KEY (`s_id`) REFERENCES `state_master` (`s_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_master`
--

LOCK TABLES `city_master` WRITE;
/*!40000 ALTER TABLE `city_master` DISABLE KEYS */;
INSERT INTO `city_master` VALUES (1,'Ahmedabad',1),(2,'Surat',1),(3,'Vadodara',1),(4,'Mehsana',1),(5,'Mumbai',2),(6,'Nagpur',2),(7,'Pune',2),(8,'Udaipur',3),(9,'Jaipur',3),(10,'Ajmer',3),(11,'Bikaner',3),(12,'Bhopal',4),(13,'Indore',4),(14,'Ujjain',4),(15,'Agra',5),(16,'Kanpur',5),(17,'Lucknow',5),(18,'Chennai',6),(19,'Coimbatore',6),(20,'Kanyakumari',6),(21,'Ranchi',7),(22,'Bokaro',7),(23,'Amritsar',8),(24,'Patiala',8),(25,'Dehrandun',9),(26,'Almora',9),(27,'Nainital',9),(28,'Shimla',10),(29,'Hamirpur',10),(30,'Panji',11),(31,'Rangat',12),(32,'Daman',13),(33,'Bengaluru',14),(34,'New Delhi',15),(35,'Gurgaon',16),(36,'Ambala',16),(37,'Chacher',17),(38,'Kamrup',17),(39,'Srinagar',18),(40,'Alappuzha',19),(41,'Kohima',20),(42,'Shilong',21),(43,'Patna',22),(44,'Raipur',23),(45,'Hyderabad',24),(46,'Itanagar',25),(47,'Aizwal',26),(48,'Imphal',27),(49,'Bhubaneswar',28),(50,'Gangtok',29),(51,'Chandigarh',30),(52,'Agartala',31),(53,'Kavaratti',32),(54,'Kolkatta',33),(55,'Durgapur',33);
/*!40000 ALTER TABLE `city_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_detail`
--

DROP TABLE IF EXISTS `customer_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_detail` (
  `c_id` int(4) NOT NULL AUTO_INCREMENT,
  `u_id` int(4) NOT NULL,
  `c_fname` varchar(50) DEFAULT NULL,
  `c_lname` varchar(50) DEFAULT NULL,
  `c_num` varchar(20) DEFAULT NULL,
  `c_email` varchar(50) DEFAULT NULL,
  `c_city` varchar(20) DEFAULT NULL,
  `c_state` varchar(45) DEFAULT NULL,
  `c_area` varchar(45) DEFAULT NULL,
  `c_img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `fk_customer_detail_1_idx` (`u_id`),
  CONSTRAINT `fk_customer_detail_1` FOREIGN KEY (`u_id`) REFERENCES `login` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_detail`
--

LOCK TABLES `customer_detail` WRITE;
/*!40000 ALTER TABLE `customer_detail` DISABLE KEYS */;
INSERT INTO `customer_detail` VALUES (1,41,'Rushin','Naik','9899898989','naikrushin@gmail.com','Ambala','Haryana','Jatwar',NULL),(2,49,'Palak','Shah','0909090909','ps@gmail.com','Ahmedabad','Gujarat','Satellite','screenshot from 2016-04-20 18:29:28.png'),(3,50,'Jenny','Pujara','78789998888',NULL,'Ahmedabad','Gujarat','Satellite',NULL),(4,57,'Adit','Desai','9898989898',NULL,'Surat','Gujarat','Dumas',NULL);
/*!40000 ALTER TABLE `customer_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gmember_detail`
--

DROP TABLE IF EXISTS `gmember_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gmember_detail` (
  `gmid` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  PRIMARY KEY (`gmid`),
  KEY `fk_gmember_detail_1_idx` (`g_id`),
  KEY `fk_gmember_detail_2_idx` (`u_id`),
  CONSTRAINT `fk_gmember_detail_1` FOREIGN KEY (`g_id`) REFERENCES `group_detail` (`g_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_gmember_detail_2` FOREIGN KEY (`u_id`) REFERENCES `login` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gmember_detail`
--

LOCK TABLES `gmember_detail` WRITE;
/*!40000 ALTER TABLE `gmember_detail` DISABLE KEYS */;
INSERT INTO `gmember_detail` VALUES (131,29,54),(132,29,27),(133,30,50),(134,30,54),(135,31,27),(136,31,54),(137,32,54),(138,32,54),(139,32,27),(140,33,36),(141,33,49),(142,33,27),(143,34,36),(144,34,27),(145,33,47),(146,33,36),(148,33,36),(149,33,36),(150,33,36),(151,31,48),(152,34,36),(153,34,36),(154,32,53),(155,35,42),(156,35,47);
/*!40000 ALTER TABLE `gmember_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_detail`
--

DROP TABLE IF EXISTS `group_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_detail` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_name` varchar(45) DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `u_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`g_id`),
  KEY `fk_group_detail_1_idx` (`u_id`),
  CONSTRAINT `fk_group_detail_1` FOREIGN KEY (`u_id`) REFERENCES `login` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_detail`
--

LOCK TABLES `group_detail` WRITE;
/*!40000 ALTER TABLE `group_detail` DISABLE KEYS */;
INSERT INTO `group_detail` VALUES (29,'g1',27,'janki'),(30,'bansari',54,'bansari'),(31,'bansari2',54,'bansari'),(32,'abc',27,'janki'),(33,'Group 10',27,'janki16'),(34,'Group 11',27,'janki16'),(35,'New group',47,'sr');
/*!40000 ALTER TABLE `group_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `u_id` int(4) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `u_role` varchar(20) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (27,'janki16','admin','agent'),(32,'janki1','admin','agent'),(33,'janki2','admin','agent'),(35,'agent1','admin','agent'),(36,'agent2','admin','agent'),(37,'agent3','admin','agent'),(40,'Malik','admin','agent'),(41,'rushin174','admin','customer'),(42,'agent2','admin','agent'),(43,'agent5','admin','agent'),(44,'agent7','admin','agent'),(45,'agent47','admin','agent'),(47,'sr','admin','agent'),(48,'kp','admin2','agent'),(49,'ps','admin','customer'),(50,'Jen12','password','customer'),(51,'adit','password','agent'),(52,'adit2','password','agent'),(53,'adit4','password','agent'),(54,'bansari','password','agent'),(55,'jatri','password','agent'),(56,'admin','admin','admin'),(57,'Adit005','customer','customer'),(59,'Ramesh','agent','agent');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prop_detail`
--

DROP TABLE IF EXISTS `prop_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prop_detail` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(4) NOT NULL,
  `p_name` varchar(45) DEFAULT NULL,
  `p_price` int(11) DEFAULT NULL,
  `p_description` varchar(255) DEFAULT NULL,
  `p_add1` varchar(45) DEFAULT NULL,
  `p_add2` varchar(45) DEFAULT NULL,
  `p_state` varchar(45) DEFAULT NULL,
  `p_city` varchar(45) DEFAULT NULL,
  `p_area` varchar(45) DEFAULT NULL,
  `p_gmap` varchar(45) DEFAULT NULL,
  `p_bhk` varchar(45) DEFAULT NULL,
  `p_age` int(11) DEFAULT NULL,
  `p_zipcode` varchar(45) DEFAULT NULL,
  `p_type` varchar(45) DEFAULT NULL,
  `p_status` varchar(45) DEFAULT NULL,
  `p_img1` varchar(45) DEFAULT NULL,
  `p_floor` int(11) DEFAULT NULL,
  `p_img2` varchar(45) DEFAULT NULL,
  `p_img3` varchar(45) DEFAULT NULL,
  `p_img4` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `fk_prop_detail_1_idx` (`u_id`),
  CONSTRAINT `fk_prop_detail_1` FOREIGN KEY (`u_id`) REFERENCES `login` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prop_detail`
--

LOCK TABLES `prop_detail` WRITE;
/*!40000 ALTER TABLE `prop_detail` DISABLE KEYS */;
INSERT INTO `prop_detail` VALUES (10,47,'Sukamal Estate',1200000,'m','Opp to devashish school','SG highway','Punjab','Patiala','Hamayunpur',NULL,'2',10,NULL,'Apartments',NULL,'property2.jpg',1500,'property3.jpg','property4.jpg','property1.jpg'),(11,47,'Akshardham County',1200000,'','WS road','Ahram Area','Punjab','Patiala','Hamayunpur',NULL,'2',8,NULL,'Apartments',NULL,'property_2.jpeg',1200,'property_3.jpeg','property_1.jpg','property_1.jpg'),(12,47,'Sukamal Bunglows',120000,'','Opp. Devashish School','Premchandnagar Road','Maharashtra','Mumbai','Borivali',NULL,'1',7,NULL,'Apartments',NULL,'property7.jpeg',2300,'property_3.jpeg','property_1.jpg','property_3.jpeg'),(15,55,'Surel Apartments',2300000,'','Sg highway','Anandnagar Area','Maharashtra','Nagpur','Kalmeshwar',NULL,'3',2,NULL,'Apartments',NULL,'property_2.jpeg',1300,'property_1.jpg','property_1.jpg','property_3.jpeg'),(17,36,'Suhavan Apartments',2300000,'','Sg highway','Anandnagar Area','Gujarat','Vadodara','Kadipani',NULL,'2',2,NULL,'Row Houses',NULL,'property_2.jpeg',1300,'property_1.jpg','property_1.jpg','property_3.jpeg'),(18,49,'Yogeshwar Bunglows',2000000,'','Opp to devashish school','SG highway','Gujarat','Vadodara','Kadipani',NULL,'2',2,NULL,'Row Houses ',NULL,'property_2.jpeg',2000,'property_3.jpeg','property_2.jpeg','property_1.jpeg');
/*!40000 ALTER TABLE `prop_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prop_feedback`
--

DROP TABLE IF EXISTS `prop_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prop_feedback` (
  `pf_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`pf_id`),
  KEY `fk_prop_feedback_1_idx` (`p_id`),
  KEY `fk_prop_feedback_2_idx` (`u_id`),
  CONSTRAINT `fk_prop_feedback_1` FOREIGN KEY (`p_id`) REFERENCES `prop_detail` (`p_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_prop_feedback_2` FOREIGN KEY (`u_id`) REFERENCES `login` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prop_feedback`
--

LOCK TABLES `prop_feedback` WRITE;
/*!40000 ALTER TABLE `prop_feedback` DISABLE KEYS */;
INSERT INTO `prop_feedback` VALUES (1,10,47,'Good Property.',NULL),(2,10,43,'Nice locatoin.',NULL),(3,10,44,'Very costly area.',NULL),(4,11,47,'This is a nice place.','2016-04-25 11:48:07'),(5,11,47,'This is a nice place.','2016-04-25 11:49:53');
/*!40000 ALTER TABLE `prop_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_master`
--

DROP TABLE IF EXISTS `state_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state_master` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_master`
--

LOCK TABLES `state_master` WRITE;
/*!40000 ALTER TABLE `state_master` DISABLE KEYS */;
INSERT INTO `state_master` VALUES (1,'Gujarat'),(2,'Maharashtra'),(3,'Rajasthan'),(4,'Madhyapradesh'),(5,'Uttarpradesh'),(6,'Tamilnadu'),(7,'Jharkhand'),(8,'Punjab'),(9,'Uttaranchal'),(10,'Himachal Pradesh'),(11,'Goa'),(12,'Andaman Nicobar'),(13,'Diu Daman'),(14,'Karnataka'),(15,'Delhi'),(16,'Haryana'),(17,'Assam'),(18,'Jammu Kashmir'),(19,'Kerala'),(20,'Nagaland'),(21,'Meghalaya'),(22,'Bihar'),(23,'Chhatisgarh'),(24,'Andhrapradesh'),(25,'Arunachal Pradesh'),(26,'Mizorm'),(27,'Manipur'),(28,'Orissa'),(29,'Sikkim'),(30,'Chandigarh'),(31,'Tripura'),(32,'Lakshadweep'),(33,'West Bengal'),(34,NULL),(35,NULL),(36,NULL),(37,NULL);
/*!40000 ALTER TABLE `state_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zip_master`
--

DROP TABLE IF EXISTS `zip_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip_master` (
  `zip_id` int(11) NOT NULL AUTO_INCREMENT,
  `zip_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`zip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zip_master`
--

LOCK TABLES `zip_master` WRITE;
/*!40000 ALTER TABLE `zip_master` DISABLE KEYS */;
INSERT INTO `zip_master` VALUES (1,'380015'),(2,'380007'),(3,'380009');
/*!40000 ALTER TABLE `zip_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-23  2:01:34
