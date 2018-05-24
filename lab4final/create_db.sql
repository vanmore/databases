CREATE DATABASE  IF NOT EXISTS `1nf` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `1nf`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: 1nf
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `1nf_teams`
--

DROP TABLE IF EXISTS `1nf_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1nf_teams` (
  `Championship_year` int(11) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Team` varchar(50) NOT NULL,
  `Method_of_qualification` varchar(80) NOT NULL,
  `Date_of_qualification` date NOT NULL,
  `Finals_appearance` int(11) NOT NULL,
  `Consecutive_appearance` int(11) NOT NULL,
  `Consecutive_appearance_last` int(11) DEFAULT '0',
  `Previous_best_performance` varchar(50) DEFAULT NULL,
  `Previous_best_performance_year` int(11) DEFAULT NULL,
  `FIFA_Ranking` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1nf_teams`
--

LOCK TABLES `1nf_teams` WRITE;
/*!40000 ALTER TABLE `1nf_teams` DISABLE KEYS */;
INSERT INTO `1nf_teams` VALUES (2014,'Brazil','Brazil','Host','2007-10-30',20,20,NULL,'Winners',1958,11,1),(2014,'Brazil','Brazil','Host','2007-10-30',20,20,NULL,'Winners',1962,11,2),(2014,'Brazil','Brazil','Host','2007-10-30',20,20,NULL,'Winners',1970,11,3),(2014,'Brazil','Brazil','Host','2007-10-30',20,20,NULL,'Winners',1994,11,4),(2014,'Brazil','Brazil','Host','2007-10-30',20,20,NULL,'Winners',2002,11,5),(2014,'Germany','Germany','UEFA Group C Winners','2013-10-11',18,16,NULL,'Winners',1954,2,6),(2014,'Germany','Germany','UEFA Group C Winners','2013-10-11',18,16,NULL,'Winners',1974,2,7),(2014,'Germany','Germany','UEFA Group C Winners','2013-10-11',18,16,NULL,'Winners',1990,2,8),(2014,'Italy','Italy','UEFA Group B Winners','2013-09-10',18,14,NULL,'Winners',1934,9,9),(2014,'Italy','Italy','UEFA Group B Winners','2013-09-10',18,14,NULL,'Winners',1938,9,10),(2014,'Italy','Italy','UEFA Group B Winners','2013-09-10',18,14,NULL,'Winners',1982,9,11),(2014,'Italy','Italy','UEFA Group B Winners','2013-09-10',18,14,NULL,'Winners',2006,9,12),(2014,'Argentina','Argentina','CONMEBOL Round Robin Winners','2013-09-10',16,11,NULL,'Winners',1978,3,13),(2014,'Argentina','Argentina','CONMEBOL Round Robin Winners','2013-09-10',16,11,NULL,'Winners',1986,3,14),(2014,'Mexico','Mexico','CONCACAF v OFC play-off Winners','2013-11-20',15,6,NULL,'Quarter-finals',1970,24,15),(2014,'Mexico','Mexico','CONCACAF v OFC play-off Winners','2013-11-20',15,6,NULL,'Quarter-finals',1986,24,16),(2014,'Spain','Spain','UEFA Group I Winners','2013-10-15',14,10,NULL,'Winners',2010,1,17),(2014,'UK','England','UEFA Group H Winners','2013-10-15',14,5,NULL,'Winners',1966,10,18),(2014,'France','France','UEFA Play-off Winners','2013-11-19',14,5,NULL,'Winners',1998,21,19),(2014,'Belgium','Belgium','UEFA Group A Winners','2013-10-11',12,1,2002,'Fourth place',1986,5,20),(2014,'Uruguay','Uruguay','AFC v CONMEBOL play-off Winners','2013-11-20',12,2,NULL,'Winners',1930,6,21),(2014,'Uruguay','Uruguay','AFC v CONMEBOL play-off Winners','2013-11-20',12,2,NULL,'Winners',1950,6,22),(2014,'Switzerland','Switzerland','UEFA Group E Winners','2013-10-11',10,3,NULL,'Quarter-finals',1934,7,23),(2014,'Switzerland','Switzerland','UEFA Group E Winners','2013-10-11',10,3,NULL,'Quarter-finals',1938,7,24),(2014,'Switzerland','Switzerland','UEFA Group E Winners','2013-10-11',10,3,NULL,'Quarter-finals',1954,7,25),(2014,'Netherlands','Netherlands','UEFA Group D Winners','2013-09-10',10,3,NULL,'Runners-up',1974,8,26),(2014,'Netherlands','Netherlands','UEFA Group D Winners','2013-09-10',10,3,NULL,'Runners-up',1978,8,27),(2014,'Netherlands','Netherlands','UEFA Group D Winners','2013-09-10',10,3,NULL,'Runners-up',2010,8,28),(2014,'United States','United States','CONCACAF Fourth Round Winners','2013-09-10',10,7,NULL,'Third place',1930,13,29),(2014,'Russian Federation','Russia','UEFA Group F Winners','2013-10-15',10,1,2002,'Fourth place',1966,19,30),(2014,'Chile','Chile','CONMEBOL Round Robin Third Place','2013-10-15',9,2,NULL,'Third place',1962,12,31),(2014,'South Korea','South Korea','AFC Fourth Round Group A Runners-up','2013-06-18',9,8,NULL,'Fourth place',2002,56,32),(2014,'Cameroon','Cameroon','CAF Third Round Winners','2013-11-17',7,2,NULL,'Quarter-finals',1990,59,33),(2014,'Portugal','Portugal','UEFA Play-off Winners','2013-11-19',6,4,NULL,'Third place ',1966,14,34),(2014,'Colombia','Colombia','CONMEBOL Round Robin Runners-up','2013-10-11',5,1,1998,'Round of 16 ',1990,4,35),(2014,'Nigeria','Nigeria','CAF Third Round Winners','2013-11-16',5,2,NULL,'Round of 16 ',1994,33,36),(2014,'Nigeria','Nigeria','CAF Third Round Winners','2013-11-16',5,2,NULL,'Round of 16 ',1998,33,37),(2014,'Japan','Japan','AFC Fourth Round Group B Winners','2013-06-04',5,5,NULL,'Round of 16 ',2002,44,38),(2014,'Japan','Japan','AFC Fourth Round Group B Winners','2013-06-04',5,5,NULL,'Round of 16 ',2010,44,39),(2014,'Croatia','Croatia','UEFA Play-off Winners','2013-11-19',4,1,NULL,'Third place',1998,18,40),(2014,'Costa Rica','Costa Rica','CONCACAF Fourth Round Runners-up','2013-09-10',4,1,2006,'Round of 16 ',1990,31,41),(2014,'Algeria','Algeria','CAF Third Round Winners','2013-11-19',4,2,NULL,'Group stage',1982,32,42),(2014,'Algeria','Algeria','CAF Third Round Winners','2013-11-19',4,2,NULL,'Group stage',1986,32,43),(2014,'Algeria','Algeria','CAF Third Round Winners','2013-11-19',4,2,NULL,'Group stage',2010,32,44),(2014,'Iran','Iran','AFC Fourth Round Group A Winners','2013-06-18',4,1,2006,'Group stage',1978,49,45),(2014,'Iran','Iran','AFC Fourth Round Group A Winners','2013-06-18',4,1,2006,'Group stage',1998,49,46),(2014,'Iran','Iran','AFC Fourth Round Group A Winners','2013-06-18',4,1,2006,'Group stage',2006,49,47),(2014,'Australia','Australia','AFC Fourth Round Group B Runners-up','2013-06-18',4,3,NULL,'Round of 16 ',2006,57,48),(2014,'Greece','Greece','UEFA Play-off Winners','2013-11-19',3,2,NULL,'Group stage',1994,15,49),(2014,'Greece','Greece','UEFA Play-off Winners','2013-11-19',3,2,NULL,'Group stage',2010,15,50),(2014,'Ivory Coast','Ivory Coast','CAF Third Round Winners','2013-11-16',3,3,NULL,'Group stage',2006,17,51),(2014,'Ivory Coast','Ivory Coast','CAF Third Round Winners','2013-11-16',3,3,NULL,'Group stage',2010,17,52),(2014,'Ecuador','Ecuador','CONMEBOL Round Robin Fourth Place','2013-10-15',3,1,2006,'Round of 16 ',2006,22,53),(2014,'Ghana','Ghana','CAF Third Round Winners','2013-11-19',3,3,NULL,'Quarter-finals',2010,23,54),(2014,'Honduras','Honduras','CONCACAF Fourth Round Third Place','2013-10-15',3,2,NULL,'Group stage',1982,34,55),(2014,'Honduras','Honduras','CONCACAF Fourth Round Third Place','2013-10-15',3,2,NULL,'Group stage',2010,34,56),(2014,'Bosnia and Herzegovina','Bosnia and Herzegovina','UEFA Group G Winners','2013-10-15',1,1,NULL,NULL,NULL,16,57);
/*!40000 ALTER TABLE `1nf_teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-24 17:38:34
