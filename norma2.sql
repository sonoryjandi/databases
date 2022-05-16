-- MySQL dump 10.13  Distrib 5.7.37, for Win64 (x86_64)
--
-- Host: localhost    Database: normalisation2
-- ------------------------------------------------------
-- Server version	5.7.37-log

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


DROP DATABASE normalisation2;
CREATE DATABASE normalisation2 default charset utf8;
USE normalisation2;


--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums` (
  `album_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `album_year` smallint(6) DEFAULT NULL,
  `group` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `genre` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Showbiz',1999,'1',3),(2,'Origin of Symmetry',2001,'1',3),(3,'Absolution',2003,'1',3),(4,'Nevermind',1999,'2',5),(5,'Master of Puppets',1988,'3',3),(6,'Gorillaz',2000,'4',3),(7,'OK Computer',2008,'5',3),(8,'The Dark Side of the Moon',1980,'6',3),(9,'Let It Be',1987,'7',3),(10,'Evanescence',1999,'8',4),(11,'Dark and Wild',2014,'9',1),(12,'No Easy',2018,'10',1),(13,'The Slim Shady LP',1995,'11',2),(14,'Ecliptica',1998,'12',4),(15,'Dark Passion Play',1998,'13',4),(16,'Bleach',1987,'2',5),(17,'In Utero',1990,'2',5),(18,'Death Magnetic',1984,'3',4),(19,'Kill em All',1981,'3',4),(20,'Plastic Beach',2003,'4',3),(21,'Demon Days',2007,'4',3),(22,'Kid A',2002,'5',3),(23,'The Bends',1987,'5',3),(24,'The Wall',1977,'6',3),(25,'Wish You Were Here',1967,'6',3),(26,'Yellow Submarine',1961,'7',3),(27,'Abbey Road',1967,'7',3),(28,'The Open Door',1996,'8',4),(29,'Evanescence',1997,'8',4),(30,'The Most Beautiful Moment In Life',2015,'9',1),(31,'Wings',2016,'9',1),(32,'Go live',2018,'10',1),(33,'I Am Who',2018,'10',1),(34,'Infinite',1995,'11',2),(35,'Revival',1997,'11',2),(36,'Silence',1996,'12',4),(37,'The Days of Grays',1998,'12',4),(38,'Once',2007,'13',4),(39,'Wishmaster',2001,'13',4);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `festivals`
--

DROP TABLE IF EXISTS `festivals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `festivals` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festivals`
--

LOCK TABLES `festivals` WRITE;
/*!40000 ALTER TABLE `festivals` DISABLE KEYS */;
INSERT INTO `festivals` VALUES (1,'Coachella'),(2,'Summerfest'),(3,'Sziget'),(4,'Donauinselfest'),(5,'Rock In Rio'),(6,'Mawazine'),(7,'Glastonbury'),(8,'Essense'),(9,'Tomorrowland'),(10,'Sunburn');
/*!40000 ALTER TABLE `festivals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `festivals_groups`
--

DROP TABLE IF EXISTS `festivals_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `festivals_groups` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `festivals_id` smallint(6) DEFAULT NULL,
  `groups_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_g_unique_key` (`festivals_id`,`groups_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festivals_groups`
--

LOCK TABLES `festivals_groups` WRITE;
/*!40000 ALTER TABLE `festivals_groups` DISABLE KEYS */;
INSERT INTO `festivals_groups` VALUES (1,1,1),(15,1,6),(7,2,3),(16,2,6),(19,3,8),(18,3,12),(20,3,13),(5,5,3),(2,7,1),(4,7,2),(8,7,4),(17,7,6),(14,7,9),(10,8,12),(12,8,13),(9,9,4),(3,10,1),(6,10,3);
/*!40000 ALTER TABLE `festivals_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `id_genre` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'k-pop'),(2,'rap'),(3,'rock'),(4,'metal'),(5,'grunge');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `group_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `activity` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Muse',1994,1),(2,'Nirvana',1987,0),(3,'Metallica',1981,1),(4,'Gorillaz',1998,1),(5,'Radiohead',1985,1),(6,'Pink Floyd',1965,0),(7,'The Beatles',1960,0),(8,'Evanescence',1995,0),(9,'BTS',2013,1),(10,'Stray Kids',2017,1),(11,'Eminem',1992,1),(12,'Sonata Arctica',1996,1),(13,'Nightwish',1996,0);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-16 16:04:10
