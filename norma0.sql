-- MySQL dump 10.13  Distrib 5.7.37, for Win64 (x86_64)
--
-- Host: localhost    Database: music_library
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

DROP DATABASE music_library;
CREATE DATABASE music_library default charset utf8;
USE music_library;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artists` (
  `name` varchar(68) DEFAULT NULL,
  `year` date DEFAULT NULL,
  `genres` varchar(68) DEFAULT NULL,
  `album` varchar(100) DEFAULT NULL,
  `activity` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES ('Muse','1994-01-01','rock','Showbiz, Origin of Symmetry, Absolution',1),('Nirvana','1987-01-01','grunge','Nevermind, Bleach, In Utero',0),('Metallica','1981-01-01','metal','Master of Puppets, Death Magnetic, Kill em All',1),('Gorillaz','1998-01-01','rock','Gorillaz, Plastic Beach, Demon Days',1),('Radiohead','1985-01-01','rock','OK Computer, Kid A, The Bends',1),('Pink Floyd','1965-01-01','rock','The Dark Side of the Moon, The Wall, Wish You Were Here',0),('The Beatles','1960-01-01','rock','Let It Be, Yellow Submarine, Abbey Road',0),('Evanescence','1995-01-01','metal','Fallen, The Open Door, Evanescence',0),('BTS','2013-06-13','k-pop','Dark and Wild, The Most Beautiful Moment In Life, Wings',1),('Stray Kids','2017-06-13','k-pop','No Easy, Go live, I Am Who',1),('Eminem','1992-01-01','rap','The Slim Shady LP, Infinite, Revival',1),('Sonata Arctica','1996-01-01','metal','Ecliptica, Silence, The Days of Grays',1),('Nightwish','1996-01-01','metal','Dark Passion Play, Once, Wishmaster',0);
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

-- Dump completed on 2022-04-28 15:26:13
