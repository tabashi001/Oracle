-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: oracle_db
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `countrs`
--

DROP TABLE IF EXISTS `countrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countrs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countrs`
--

LOCK TABLES `countrs` WRITE;
/*!40000 ALTER TABLE `countrs` DISABLE KEYS */;
INSERT INTO `countrs` VALUES (1,'Afghanistan','2018-04-06 11:02:49','2018-04-06 11:02:49'),(2,'Albania','2018-04-06 11:02:49','2018-04-06 11:02:49'),(3,'Algeria','2018-04-06 11:02:49','2018-04-06 11:02:49'),(4,'American Samoa','2018-04-06 11:02:49','2018-04-06 11:02:49'),(5,'Andorra','2018-04-06 11:02:49','2018-04-06 11:02:49'),(6,'Angola','2018-04-06 11:02:49','2018-04-06 11:02:49'),(7,'Anguilla','2018-04-06 11:02:49','2018-04-06 11:02:49'),(8,'Antarctica','2018-04-06 11:02:49','2018-04-06 11:02:49'),(9,'Antigua And Barbuda','2018-04-06 11:02:49','2018-04-06 11:02:49'),(10,'Argentina','2018-04-06 11:02:49','2018-04-06 11:02:49'),(11,'Armenia','2018-04-06 11:02:49','2018-04-06 11:02:49'),(12,'Aruba','2018-04-06 11:02:49','2018-04-06 11:02:49'),(13,'Australia','2018-04-06 11:02:49','2018-04-06 11:02:49'),(14,'Austria','2018-04-06 11:02:50','2018-04-06 11:02:50'),(15,'Azerbaijan','2018-04-06 11:02:50','2018-04-06 11:02:50'),(16,'Bahamas The','2018-04-06 11:02:50','2018-04-06 11:02:50'),(17,'Bahrain','2018-04-06 11:02:50','2018-04-06 11:02:50'),(18,'Bangladesh','2018-04-06 11:02:50','2018-04-06 11:02:50'),(19,'Barbados','2018-04-06 11:02:50','2018-04-06 11:02:50'),(20,'Belarus','2018-04-06 11:02:50','2018-04-06 11:02:50'),(21,'Belgium','2018-04-06 11:02:50','2018-04-06 11:02:50'),(22,'Belize','2018-04-06 11:02:50','2018-04-06 11:02:50'),(23,'Benin','2018-04-06 11:02:50','2018-04-06 11:02:50'),(24,'Bermuda','2018-04-06 11:02:50','2018-04-06 11:02:50'),(25,'Bhutan','2018-04-06 11:02:50','2018-04-06 11:02:50'),(26,'Bolivia','2018-04-06 11:02:50','2018-04-06 11:02:50'),(27,'Bosnia and Herzegovina','2018-04-06 11:02:50','2018-04-06 11:02:50'),(28,'Botswana','2018-04-06 11:02:50','2018-04-06 11:02:50'),(29,'Bouvet Island','2018-04-06 11:02:50','2018-04-06 11:02:50'),(30,'Brazil','2018-04-06 11:02:50','2018-04-06 11:02:50'),(31,'British Indian Ocean Territory','2018-04-06 11:02:50','2018-04-06 11:02:50'),(32,'Brunei','2018-04-06 11:02:51','2018-04-06 11:02:51'),(33,'Bulgaria','2018-04-06 11:02:51','2018-04-06 11:02:51'),(34,'Burkina Faso','2018-04-06 11:02:51','2018-04-06 11:02:51'),(35,'Burundi','2018-04-06 11:02:51','2018-04-06 11:02:51'),(36,'Cambodia','2018-04-06 11:02:51','2018-04-06 11:02:51'),(37,'Cameroon','2018-04-06 11:02:51','2018-04-06 11:02:51'),(38,'Canada','2018-04-06 11:02:51','2018-04-06 11:02:51'),(39,'Cape Verde','2018-04-06 11:02:51','2018-04-06 11:02:51'),(40,'Cayman Islands','2018-04-06 11:02:51','2018-04-06 11:02:51'),(41,'Central African Republic','2018-04-06 11:02:51','2018-04-06 11:02:51'),(42,'Chad','2018-04-06 11:02:51','2018-04-06 11:02:51'),(43,'Chile','2018-04-06 11:02:51','2018-04-06 11:02:51'),(44,'China','2018-04-06 11:02:51','2018-04-06 11:02:51'),(45,'Christmas Island','2018-04-06 11:02:51','2018-04-06 11:02:51'),(46,'Cocos (Keeling) Islands','2018-04-06 11:02:51','2018-04-06 11:02:51'),(47,'Colombia','2018-04-06 11:02:51','2018-04-06 11:02:51'),(48,'Comoros','2018-04-06 11:02:51','2018-04-06 11:02:51'),(49,'Congo','2018-04-06 11:02:51','2018-04-06 11:02:51'),(50,'Congo The Democratic Republic Of The','2018-04-06 11:02:51','2018-04-06 11:02:51'),(51,'Cook Islands','2018-04-06 11:02:51','2018-04-06 11:02:51'),(52,'Costa Rica','2018-04-06 11:02:52','2018-04-06 11:02:52'),(53,'Cote D\'\'Ivoire (Ivory Coast)','2018-04-06 11:02:52','2018-04-06 11:02:52'),(54,'Croatia (Hrvatska)','2018-04-06 11:02:52','2018-04-06 11:02:52'),(55,'Cuba','2018-04-06 11:02:52','2018-04-06 11:02:52'),(56,'Cyprus','2018-04-06 11:02:52','2018-04-06 11:02:52'),(57,'Czech Republic','2018-04-06 11:02:52','2018-04-06 11:02:52'),(58,'Denmark','2018-04-06 11:02:52','2018-04-06 11:02:52'),(59,'Djibouti','2018-04-06 11:02:52','2018-04-06 11:02:52'),(60,'Dominica','2018-04-06 11:02:52','2018-04-06 11:02:52'),(61,'Dominican Republic','2018-04-06 11:02:52','2018-04-06 11:02:52'),(62,'East Timor','2018-04-06 11:02:52','2018-04-06 11:02:52'),(63,'Ecuador','2018-04-06 11:02:52','2018-04-06 11:02:52'),(64,'Egypt','2018-04-06 11:02:52','2018-04-06 11:02:52'),(65,'El Salvador','2018-04-06 11:02:52','2018-04-06 11:02:52'),(66,'Equatorial Guinea','2018-04-06 11:02:52','2018-04-06 11:02:52'),(67,'Eritrea','2018-04-06 11:02:52','2018-04-06 11:02:52'),(68,'Estonia','2018-04-06 11:02:52','2018-04-06 11:02:52'),(69,'Ethiopia','2018-04-06 11:02:52','2018-04-06 11:02:52'),(70,'External Territories of Australia','2018-04-06 11:02:53','2018-04-06 11:02:53'),(71,'Falkland Islands','2018-04-06 11:02:53','2018-04-06 11:02:53'),(72,'Faroe Islands','2018-04-06 11:02:53','2018-04-06 11:02:53'),(73,'Fiji Islands','2018-04-06 11:02:53','2018-04-06 11:02:53'),(74,'Finland','2018-04-06 11:02:53','2018-04-06 11:02:53'),(75,'France','2018-04-06 11:02:53','2018-04-06 11:02:53'),(76,'French Guiana','2018-04-06 11:02:53','2018-04-06 11:02:53'),(77,'French Polynesia','2018-04-06 11:02:53','2018-04-06 11:02:53'),(78,'French Southern Territories','2018-04-06 11:02:53','2018-04-06 11:02:53'),(79,'Gabon','2018-04-06 11:02:53','2018-04-06 11:02:53'),(80,'Gambia The','2018-04-06 11:02:53','2018-04-06 11:02:53'),(81,'Georgia','2018-04-06 11:02:53','2018-04-06 11:02:53'),(82,'Germany','2018-04-06 11:02:53','2018-04-06 11:02:53'),(83,'Ghana','2018-04-06 11:02:53','2018-04-06 11:02:53'),(84,'Gibraltar','2018-04-06 11:02:53','2018-04-06 11:02:53'),(85,'Greece','2018-04-06 11:02:53','2018-04-06 11:02:53'),(86,'Greenland','2018-04-06 11:02:53','2018-04-06 11:02:53'),(87,'Grenada','2018-04-06 11:02:54','2018-04-06 11:02:54'),(88,'Guadeloupe','2018-04-06 11:02:54','2018-04-06 11:02:54'),(89,'Guam','2018-04-06 11:02:54','2018-04-06 11:02:54'),(90,'Guatemala','2018-04-06 11:02:54','2018-04-06 11:02:54'),(91,'Guernsey and Alderney','2018-04-06 11:02:54','2018-04-06 11:02:54'),(92,'Guinea','2018-04-06 11:02:54','2018-04-06 11:02:54'),(93,'Guinea-Bissau','2018-04-06 11:02:54','2018-04-06 11:02:54'),(94,'Guyana','2018-04-06 11:02:54','2018-04-06 11:02:54'),(95,'Haiti','2018-04-06 11:02:54','2018-04-06 11:02:54'),(96,'Heard and McDonald Islands','2018-04-06 11:02:54','2018-04-06 11:02:54'),(97,'Honduras','2018-04-06 11:02:54','2018-04-06 11:02:54'),(98,'Hong Kong S.A.R.','2018-04-06 11:02:54','2018-04-06 11:02:54'),(99,'Hungary','2018-04-06 11:02:54','2018-04-06 11:02:54'),(100,'Iceland','2018-04-06 11:02:54','2018-04-06 11:02:54'),(101,'India','2018-04-06 11:02:54','2018-04-06 11:02:54'),(102,'Indonesia','2018-04-06 11:02:55','2018-04-06 11:02:55'),(103,'Iran','2018-04-06 11:02:55','2018-04-06 11:02:55'),(104,'Iraq','2018-04-06 11:02:55','2018-04-06 11:02:55'),(105,'Ireland','2018-04-06 11:02:55','2018-04-06 11:02:55'),(106,'Israel','2018-04-06 11:02:55','2018-04-06 11:02:55'),(107,'Italy','2018-04-06 11:02:55','2018-04-06 11:02:55'),(108,'Jamaica','2018-04-06 11:02:55','2018-04-06 11:02:55'),(109,'Japan','2018-04-06 11:02:55','2018-04-06 11:02:55'),(110,'Jersey','2018-04-06 11:02:55','2018-04-06 11:02:55'),(111,'Jordan','2018-04-06 11:02:55','2018-04-06 11:02:55'),(112,'Kazakhstan','2018-04-06 11:02:55','2018-04-06 11:02:55'),(113,'Kenya','2018-04-06 11:02:55','2018-04-06 11:02:55'),(114,'Kiribati','2018-04-06 11:02:55','2018-04-06 11:02:55'),(115,'Korea North','2018-04-06 11:02:55','2018-04-06 11:02:55'),(116,'Korea South','2018-04-06 11:02:55','2018-04-06 11:02:55'),(117,'Kuwait','2018-04-06 11:02:55','2018-04-06 11:02:55'),(118,'Kyrgyzstan','2018-04-06 11:02:56','2018-04-06 11:02:56'),(119,'Laos','2018-04-06 11:02:56','2018-04-06 11:02:56'),(120,'Latvia','2018-04-06 11:02:56','2018-04-06 11:02:56'),(121,'Lebanon','2018-04-06 11:02:56','2018-04-06 11:02:56'),(122,'Lesotho','2018-04-06 11:02:56','2018-04-06 11:02:56'),(123,'Liberia','2018-04-06 11:02:56','2018-04-06 11:02:56'),(124,'Libya','2018-04-06 11:02:56','2018-04-06 11:02:56'),(125,'Liechtenstein','2018-04-06 11:02:56','2018-04-06 11:02:56'),(126,'Lithuania','2018-04-06 11:02:56','2018-04-06 11:02:56'),(127,'Luxembourg','2018-04-06 11:02:56','2018-04-06 11:02:56'),(128,'Macau S.A.R.','2018-04-06 11:02:56','2018-04-06 11:02:56'),(129,'Macedonia','2018-04-06 11:02:56','2018-04-06 11:02:56'),(130,'Madagascar','2018-04-06 11:02:56','2018-04-06 11:02:56'),(131,'Malawi','2018-04-06 11:02:56','2018-04-06 11:02:56'),(132,'Malaysia','2018-04-06 11:02:56','2018-04-06 11:02:56'),(133,'Maldives','2018-04-06 11:02:56','2018-04-06 11:02:56'),(134,'Mali','2018-04-06 11:02:56','2018-04-06 11:02:56'),(135,'Malta','2018-04-06 11:02:56','2018-04-06 11:02:56'),(136,'Man (Isle of)','2018-04-06 11:02:57','2018-04-06 11:02:57'),(137,'Marshall Islands','2018-04-06 11:02:57','2018-04-06 11:02:57'),(138,'Martinique','2018-04-06 11:02:57','2018-04-06 11:02:57'),(139,'Mauritania','2018-04-06 11:02:57','2018-04-06 11:02:57'),(140,'Mauritius','2018-04-06 11:02:57','2018-04-06 11:02:57'),(141,'Mayotte','2018-04-06 11:02:57','2018-04-06 11:02:57'),(142,'Mexico','2018-04-06 11:02:57','2018-04-06 11:02:57'),(143,'Micronesia','2018-04-06 11:02:57','2018-04-06 11:02:57'),(144,'Moldova','2018-04-06 11:02:57','2018-04-06 11:02:57'),(145,'Monaco','2018-04-06 11:02:57','2018-04-06 11:02:57'),(146,'Mongolia','2018-04-06 11:02:57','2018-04-06 11:02:57'),(147,'Montserrat','2018-04-06 11:02:57','2018-04-06 11:02:57'),(148,'Morocco','2018-04-06 11:02:57','2018-04-06 11:02:57'),(149,'Mozambique','2018-04-06 11:02:57','2018-04-06 11:02:57'),(150,'Myanmar','2018-04-06 11:02:57','2018-04-06 11:02:57'),(151,'Namibia','2018-04-06 11:02:57','2018-04-06 11:02:57'),(152,'Nauru','2018-04-06 11:02:57','2018-04-06 11:02:57'),(153,'Nepal','2018-04-06 11:02:58','2018-04-06 11:02:58'),(154,'Netherlands Antilles','2018-04-06 11:02:58','2018-04-06 11:02:58'),(155,'Netherlands The','2018-04-06 11:02:58','2018-04-06 11:02:58'),(156,'New Caledonia','2018-04-06 11:02:58','2018-04-06 11:02:58'),(157,'New Zealand','2018-04-06 11:02:58','2018-04-06 11:02:58'),(158,'Nicaragua','2018-04-06 11:02:58','2018-04-06 11:02:58'),(159,'Niger','2018-04-06 11:02:58','2018-04-06 11:02:58'),(160,'Nigeria','2018-04-06 11:02:58','2018-04-06 11:02:58'),(161,'Niue','2018-04-06 11:02:58','2018-04-06 11:02:58'),(162,'Norfolk Island','2018-04-06 11:02:58','2018-04-06 11:02:58'),(163,'Northern Mariana Islands','2018-04-06 11:02:58','2018-04-06 11:02:58'),(164,'Norway','2018-04-06 11:02:58','2018-04-06 11:02:58'),(165,'Oman','2018-04-06 11:02:58','2018-04-06 11:02:58'),(166,'Pakistan','2018-04-06 11:02:58','2018-04-06 11:02:58'),(167,'Palau','2018-04-06 11:02:58','2018-04-06 11:02:58'),(168,'Palestinian Territory Occupied','2018-04-06 11:02:58','2018-04-06 11:02:58'),(169,'Panama','2018-04-06 11:02:58','2018-04-06 11:02:58'),(170,'Papua new Guinea','2018-04-06 11:02:58','2018-04-06 11:02:58'),(171,'Paraguay','2018-04-06 11:02:58','2018-04-06 11:02:58'),(172,'Peru','2018-04-06 11:02:58','2018-04-06 11:02:58'),(173,'Philippines','2018-04-06 11:02:59','2018-04-06 11:02:59'),(174,'Pitcairn Island','2018-04-06 11:02:59','2018-04-06 11:02:59'),(175,'Poland','2018-04-06 11:02:59','2018-04-06 11:02:59'),(176,'Portugal','2018-04-06 11:02:59','2018-04-06 11:02:59'),(177,'Puerto Rico','2018-04-06 11:02:59','2018-04-06 11:02:59'),(178,'Qatar','2018-04-06 11:02:59','2018-04-06 11:02:59'),(179,'Reunion','2018-04-06 11:02:59','2018-04-06 11:02:59'),(180,'Romania','2018-04-06 11:02:59','2018-04-06 11:02:59'),(181,'Russia','2018-04-06 11:02:59','2018-04-06 11:02:59'),(182,'Rwanda','2018-04-06 11:02:59','2018-04-06 11:02:59'),(183,'Saint Helena','2018-04-06 11:02:59','2018-04-06 11:02:59'),(184,'Saint Kitts And Nevis','2018-04-06 11:02:59','2018-04-06 11:02:59'),(185,'Saint Lucia','2018-04-06 11:02:59','2018-04-06 11:02:59'),(186,'Saint Pierre and Miquelon','2018-04-06 11:02:59','2018-04-06 11:02:59'),(187,'Saint Vincent And The Grenadines','2018-04-06 11:02:59','2018-04-06 11:02:59'),(188,'Samoa','2018-04-06 11:02:59','2018-04-06 11:02:59'),(189,'San Marino','2018-04-06 11:03:00','2018-04-06 11:03:00'),(190,'Sao Tome and Principe','2018-04-06 11:03:00','2018-04-06 11:03:00'),(191,'Saudi Arabia','2018-04-06 11:03:00','2018-04-06 11:03:00'),(192,'Senegal','2018-04-06 11:03:00','2018-04-06 11:03:00'),(193,'Serbia','2018-04-06 11:03:00','2018-04-06 11:03:00'),(194,'Seychelles','2018-04-06 11:03:00','2018-04-06 11:03:00'),(195,'Sierra Leone','2018-04-06 11:03:00','2018-04-06 11:03:00'),(196,'Singapore','2018-04-06 11:03:00','2018-04-06 11:03:00'),(197,'Slovakia','2018-04-06 11:03:00','2018-04-06 11:03:00'),(198,'Slovenia','2018-04-06 11:03:00','2018-04-06 11:03:00'),(199,'Smaller Territories of the UK','2018-04-06 11:03:00','2018-04-06 11:03:00'),(200,'Solomon Islands','2018-04-06 11:03:00','2018-04-06 11:03:00'),(201,'Somalia','2018-04-06 11:03:00','2018-04-06 11:03:00'),(202,'South Africa','2018-04-06 11:03:00','2018-04-06 11:03:00'),(203,'South Georgia','2018-04-06 11:03:00','2018-04-06 11:03:00'),(204,'South Sudan','2018-04-06 11:03:00','2018-04-06 11:03:00'),(205,'Spain','2018-04-06 11:03:00','2018-04-06 11:03:00'),(206,'Sri Lanka','2018-04-06 11:03:01','2018-04-06 11:03:01'),(207,'Sudan','2018-04-06 11:03:01','2018-04-06 11:03:01'),(208,'Suriname','2018-04-06 11:03:01','2018-04-06 11:03:01'),(209,'Svalbard And Jan Mayen Islands','2018-04-06 11:03:01','2018-04-06 11:03:01'),(210,'Swaziland','2018-04-06 11:03:01','2018-04-06 11:03:01'),(211,'Sweden','2018-04-06 11:03:01','2018-04-06 11:03:01'),(212,'Switzerland','2018-04-06 11:03:01','2018-04-06 11:03:01'),(213,'Syria','2018-04-06 11:03:01','2018-04-06 11:03:01'),(214,'Taiwan','2018-04-06 11:03:01','2018-04-06 11:03:01'),(215,'Tajikistan','2018-04-06 11:03:01','2018-04-06 11:03:01'),(216,'Tanzania','2018-04-06 11:03:01','2018-04-06 11:03:01'),(217,'Thailand','2018-04-06 11:03:01','2018-04-06 11:03:01'),(218,'Togo','2018-04-06 11:03:01','2018-04-06 11:03:01'),(219,'Tokelau','2018-04-06 11:03:01','2018-04-06 11:03:01'),(220,'Tonga','2018-04-06 11:03:01','2018-04-06 11:03:01'),(221,'Trinidad And Tobago','2018-04-06 11:03:01','2018-04-06 11:03:01'),(222,'Tunisia','2018-04-06 11:03:01','2018-04-06 11:03:01'),(223,'Turkey','2018-04-06 11:03:01','2018-04-06 11:03:01'),(224,'Turkmenistan','2018-04-06 11:03:02','2018-04-06 11:03:02'),(225,'Turks And Caicos Islands','2018-04-06 11:03:02','2018-04-06 11:03:02'),(226,'Tuvalu','2018-04-06 11:03:02','2018-04-06 11:03:02'),(227,'Uganda','2018-04-06 11:03:02','2018-04-06 11:03:02'),(228,'Ukraine','2018-04-06 11:03:02','2018-04-06 11:03:02'),(229,'United Arab Emirates','2018-04-06 11:03:02','2018-04-06 11:03:02'),(230,'United Kingdom','2018-04-06 11:03:02','2018-04-06 11:03:02'),(231,'United States','2018-04-06 11:03:02','2018-04-06 11:03:02'),(232,'United States Minor Outlying Islands','2018-04-06 11:03:02','2018-04-06 11:03:02'),(233,'Uruguay','2018-04-06 11:03:02','2018-04-06 11:03:02'),(234,'Uzbekistan','2018-04-06 11:03:02','2018-04-06 11:03:02'),(235,'Vanuatu','2018-04-06 11:03:02','2018-04-06 11:03:02'),(236,'Vatican City State (Holy See)','2018-04-06 11:03:02','2018-04-06 11:03:02'),(237,'Venezuela','2018-04-06 11:03:02','2018-04-06 11:03:02'),(238,'Vietnam','2018-04-06 11:03:02','2018-04-06 11:03:02'),(239,'Virgin Islands (British)','2018-04-06 11:03:02','2018-04-06 11:03:02'),(240,'Virgin Islands (US)','2018-04-06 11:03:02','2018-04-06 11:03:02'),(241,'Wallis And Futuna Islands','2018-04-06 11:03:02','2018-04-06 11:03:02'),(242,'Western Sahara','2018-04-06 11:03:03','2018-04-06 11:03:03'),(243,'Yemen','2018-04-06 11:03:03','2018-04-06 11:03:03'),(244,'Yugoslavia','2018-04-06 11:03:03','2018-04-06 11:03:03'),(245,'Zambia','2018-04-06 11:03:03','2018-04-06 11:03:03'),(246,'Zimbabwe','2018-04-06 11:03:03','2018-04-06 11:03:03'),(1001,'AF','2018-04-06 11:08:53','2018-04-06 11:08:53'),(1002,'AL','2018-04-06 11:08:53','2018-04-06 11:08:53'),(1003,'DZ','2018-04-06 11:08:53','2018-04-06 11:08:53'),(1004,'AS','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1005,'AD','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1006,'AO','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1007,'AI','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1008,'AQ','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1009,'AG','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1010,'AR','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1011,'AM','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1012,'AW','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1013,'AU','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1014,'AT','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1015,'AZ','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1016,'BH','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1017,'BD','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1018,'BB','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1019,'BY','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1020,'BE','2018-04-06 11:08:54','2018-04-06 11:08:54'),(1021,'BZ','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1022,'BJ','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1023,'BM','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1024,'BT','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1025,'BO','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1026,'BA','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1027,'BW','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1028,'BV','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1029,'BR','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1030,'IO','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1031,'VG','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1032,'BN','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1033,'BG','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1034,'BF','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1035,'MM','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1036,'BI','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1037,'KH','2018-04-06 11:08:55','2018-04-06 11:08:55'),(1038,'CM','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1039,'CA','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1040,'CV','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1041,'KY','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1042,'CF','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1043,'TD','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1044,'CL','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1045,'CN','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1046,'CX','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1047,'CC','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1048,'CO','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1049,'KM','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1050,'CD','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1051,'CG','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1052,'CK','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1053,'CR','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1054,'CI','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1055,'HR','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1056,'CU','2018-04-06 11:08:56','2018-04-06 11:08:56'),(1057,'CY','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1058,'CZ','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1059,'DK','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1060,'DJ','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1061,'DM','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1062,'DO','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1063,'TL','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1064,'EC','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1065,'EG','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1066,'SV','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1067,'GQ','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1068,'ER','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1069,'EE','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1070,'ET','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1072,'FK','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1073,'FO','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1074,'FJ','2018-04-06 11:08:57','2018-04-06 11:08:57'),(1075,'FI','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1076,'FR','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1077,'GF','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1078,'PF','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1079,'TF','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1080,'GA','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1081,'GE','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1082,'DE','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1083,'GH','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1084,'GI','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1085,'GR','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1086,'GL','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1087,'GD','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1088,'GP','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1089,'GU','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1090,'GT','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1091,'GN','2018-04-06 11:08:58','2018-04-06 11:08:58'),(1092,'GW','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1093,'GY','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1094,'HT','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1095,'HM','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1096,'VA','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1097,'HN','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1098,'HK','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1099,'HU','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1100,'IS','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1101,'IN','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1102,'ID','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1103,'IR','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1104,'IQ','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1105,'IE','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1106,'IL','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1107,'IT','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1108,'JM','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1109,'JP','2018-04-06 11:08:59','2018-04-06 11:08:59'),(1110,'JO','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1111,'KZ','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1112,'KE','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1113,'KI','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1114,'KP','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1115,'KR','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1116,'KW','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1117,'KG','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1118,'LA','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1119,'LV','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1120,'LB','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1121,'LS','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1122,'LR','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1123,'LY','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1124,'LI','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1125,'LT','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1126,'LU','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1127,'MO','2018-04-06 11:09:00','2018-04-06 11:09:00'),(1128,'MK','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1129,'MG','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1130,'MW','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1131,'MY','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1132,'MV','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1133,'ML','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1134,'MT','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1135,'MH','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1136,'MQ','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1137,'MR','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1138,'MU','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1139,'YT','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1140,'MX','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1141,'FM','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1142,'MD','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1143,'MC','2018-04-06 11:09:01','2018-04-06 11:09:01'),(1144,'MN','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1145,'MS','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1146,'MA','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1147,'MZ','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1148,'NA','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1149,'NR','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1150,'NP','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1151,'AN','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1152,'NL','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1153,'NC','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1154,'NZ','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1155,'NI','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1156,'NE','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1157,'NG','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1158,'NU','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1159,'NF','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1160,'MP','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1161,'NO','2018-04-06 11:09:02','2018-04-06 11:09:02'),(1162,'OM','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1163,'PK','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1164,'PW','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1165,'PS','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1166,'PA','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1167,'PG','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1168,'PY','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1169,'PE','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1170,'PH','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1171,'PN','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1172,'PL','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1173,'PT','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1174,'PR','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1175,'QA','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1176,'RO','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1177,'RU','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1178,'RW','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1179,'RE','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1180,'SH','2018-04-06 11:09:03','2018-04-06 11:09:03'),(1181,'KN','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1182,'LC','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1183,'PM','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1184,'VC','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1185,'WS','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1186,'SM','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1187,'SA','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1188,'SN','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1189,'SC','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1190,'SL','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1191,'SG','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1192,'SK','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1193,'SI','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1194,'SB','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1195,'SO','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1196,'ZA','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1197,'GS','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1198,'ES','2018-04-06 11:09:04','2018-04-06 11:09:04'),(1199,'LK','2018-04-06 11:09:05','2018-04-06 11:09:05'),(1200,'SD','2018-04-06 11:09:05','2018-04-06 11:09:05'),(1201,'SR','2018-04-06 11:09:05','2018-04-06 11:09:05'),(1202,'SJ','2018-04-06 11:09:05','2018-04-06 11:09:05'),(1203,'SZ','2018-04-06 11:09:05','2018-04-06 11:09:05'),(1204,'SE','2018-04-06 11:09:05','2018-04-06 11:09:05'),(1205,'CH','2018-04-06 11:09:05','2018-04-06 11:09:05'),(1206,'SY','2018-04-06 11:09:05','2018-04-06 11:09:05'),(1207,'ST','2018-04-06 11:09:05','2018-04-06 11:09:05'),(1208,'TW','2018-04-06 11:09:05','2018-04-06 11:09:05'),(1209,'TJ','2018-04-06 11:09:05','2018-04-06 11:09:05'),(1210,'TZ','2018-04-06 11:09:05','2018-04-06 11:09:05'),(1211,'TH','2018-04-06 11:09:05','2018-04-06 11:09:05'),(1212,'BS','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1213,'GM','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1214,'TG','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1215,'TK','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1216,'TO','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1217,'TT','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1218,'TN','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1219,'TR','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1220,'TM','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1221,'TC','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1222,'TV','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1223,'UG','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1224,'UA','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1225,'AE','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1226,'GB','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1227,'UM','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1228,'US','2018-04-06 11:09:06','2018-04-06 11:09:06'),(1229,'UY','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1230,'UZ','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1231,'VU','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1232,'VE','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1233,'VN','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1234,'VI','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1235,'WF','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1236,'EH','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1237,'YE','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1238,'CS','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1239,'ZM','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1240,'ZW','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1241,'AX','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1242,'RS','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1243,'ME','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1244,'JE','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1245,'GG','2018-04-06 11:09:07','2018-04-06 11:09:07'),(1246,'IM','2018-04-06 11:09:08','2018-04-06 11:09:08');
/*!40000 ALTER TABLE `countrs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-11 13:29:03