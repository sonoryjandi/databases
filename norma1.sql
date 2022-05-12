-- MySQL dump 10.13  Distrib 5.7.37, for Win64 (x86_64)
--
-- Host: localhost    Database: normalisation1
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


DROP DATABASE normalisation1;
CREATE DATABASE normalisation1 default charset utf8;
USE normalisation1;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artists` (
  `name` varchar(68) NOT NULL,
  `year` date DEFAULT NULL,
  `genres` varchar(68) DEFAULT NULL,
  `album` varchar(100) DEFAULT NULL,
  `activity` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_year` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES ('Muse','1994-01-01','rock','Showbiz',1,1,1999),('Muse','1994-01-01','rock','Origin of Symmetry',1,2,2001),('Muse','1994-01-01','rock','Absolution',1,3,2003),('Nirvana','1987-01-01','grunge','Nevermind',0,4,1999),('Metallica','1981-01-01','metal','Master of Puppets',1,7,1988),('Gorillaz','1998-01-01','rock','Gorillaz',1,8,2000),('Radiohead','1985-01-01','rock','OK Computer',1,9,2008),('Pink Floyd','1965-01-01','rock','The Dark Side of the Moon',0,10,1980),('The Beatles','1960-01-01','rock','Let It Be',0,11,1987),('Evanescence','1995-01-01','metal','Fallen',0,12,1999),('BTS','2013-06-13','k-pop','Dark and Wild',1,13,2014),('Stray Kids','2017-06-13','k-pop','No Easy',1,14,2018),('Eminem','1992-01-01','rap','The Slim Shady LP',1,15,1995),('Sonata Arctica','1996-01-01','metal','Ecliptica',1,16,1998),('Nightwish','1996-01-01','metal','Dark Passion Play',0,17,1998),('Nirvana','1987-01-01','grunge','Bleach',0,18,1987),('Nirvana','1987-01-01','grunge','In Utero',0,19,1990),('Metallica','1981-01-01','metal','Death Magnetic',1,20,1984),('Metallica','1981-01-01','metal','Kill em All',1,21,1981),('Gorillaz','1998-01-01','rock','Plastic Beach',1,22,2003),('Gorillaz','1998-01-01','rock','Demon Days',1,23,2007),('Radiohead','1985-01-01','rock','Kid A',1,24,2002),('Radiohead','1985-01-01','rock','The Bends',1,25,1987),('Pink Floyd','1965-01-01','rock','The Wall',0,26,1977),('Pink Floyd','1965-01-01','rock','Wish You Were Here',0,27,1967),('The Beatles','1960-01-01','rock','Yellow Submarine',0,28,1961),('The Beatles','1960-01-01','rock','Abbey Road',0,29,1967),('Evanescence','1995-01-01','metal','The Open Door',0,30,1996),('Evanescence','1995-01-01','metal','Evanescence',0,31,1997),('BTS','2013-06-13','k-pop','The Most Beautiful Moment In Life',1,32,2015),('BTS','2013-06-13','k-pop','Wings',1,33,2016),('Stray Kids','2017-06-13','k-pop','Go live',1,34,2018),('Stray Kids','2017-06-13','k-pop','I Am Who',1,35,2018),('Eminem','1992-01-01','rap','Infinite',1,36,1995),('Eminem','1992-01-01','rap','Revival',1,37,1997),('Sonata Arctica','1996-01-01','metal','Silence',1,38,1996),('Sonata Arctica','1996-01-01','metal','The Days of Grays',1,39,1998),('Nightwish','1996-01-01','metal','Once',0,40,2007),('Nightwish','1996-01-01','metal','Wishmaster',0,41,2001);
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-28 18:38:43
