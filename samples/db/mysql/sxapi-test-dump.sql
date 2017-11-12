-- MySQL dump 10.16  Distrib 10.1.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: sx_api_test
-- ------------------------------------------------------
-- Server version	10.1.22-MariaDB-1~jessie

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
-- Current Database: `sx_api_test`
--

/*!40000 DROP DATABASE IF EXISTS `sx_api_test`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sx_api_test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sx_api_test`;

--
-- Table structure for table `actualite`
--


DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `id_sess` varchar(255) NOT NULL DEFAULT '',
  `user_sess` varchar(64) NOT NULL DEFAULT 'ERROR_USER',
  `date_sess` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datefin_sess` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `secure_sess` varchar(16) DEFAULT NULL,
  `OS_sess` varchar(32) DEFAULT NULL,
  `browser_sess` varchar(32) DEFAULT NULL,
  `ip_sess` varchar(16) DEFAULT NULL,
  `host_sess` varchar(64) DEFAULT NULL,
  `channel_sess` varchar(32) DEFAULT NULL,
  `backup_sess` mediumtext,
  PRIMARY KEY (`id_sess`),
  KEY `OS_sess` (`OS_sess`),
  KEY `browser_sess` (`browser_sess`),
  KEY `secure_sess` (`secure_sess`),
  KEY `user_sess` (`user_sess`),
  KEY `channel_sess` (`channel_sess`),
  KEY `host_sess` (`host_sess`),
  KEY `ip_sess` (`ip_sess`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
