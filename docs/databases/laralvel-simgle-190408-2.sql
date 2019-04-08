-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: laravel-single
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Index','fa-bar-chart','/',NULL,NULL,NULL),(2,0,2,'Admin','fa-tasks','',NULL,NULL,NULL),(3,2,3,'Users','fa-users','auth/users',NULL,NULL,NULL),(4,2,4,'Roles','fa-user','auth/roles',NULL,NULL,NULL),(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL),(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL,NULL),(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL,NULL),(8,0,0,'Product','fa-adn',NULL,'*','2019-04-08 04:00:09','2019-04-08 04:00:09'),(9,8,0,'Uoms','fa-bars','product/uom','*','2019-04-08 04:00:45','2019-04-08 04:00:45'),(10,8,0,'Categories','fa-bars','product/category','*','2019-04-08 04:01:16','2019-04-08 04:01:16'),(11,8,0,'Stocks','fa-bars','product/stock','*','2019-04-08 04:01:30','2019-04-08 04:01:30'),(12,8,0,'Prices','fa-bars','product/price','*','2019-04-08 04:01:40','2019-04-08 04:01:40');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin/auth/login','GET','127.0.0.1','[]','2019-04-08 03:59:32','2019-04-08 03:59:32'),(2,1,'admin','GET','127.0.0.1','[]','2019-04-08 03:59:32','2019-04-08 03:59:32'),(3,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 03:59:33','2019-04-08 03:59:33'),(4,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-04-08 03:59:45','2019-04-08 03:59:45'),(5,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-adn\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\"}','2019-04-08 04:00:01','2019-04-08 04:00:01'),(6,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-04-08 04:00:01','2019-04-08 04:00:01'),(7,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Product\",\"icon\":\"fa-adn\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\"}','2019-04-08 04:00:09','2019-04-08 04:00:09'),(8,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-04-08 04:00:09','2019-04-08 04:00:09'),(9,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:00:13','2019-04-08 04:00:13'),(10,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:00:13','2019-04-08 04:00:13'),(11,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-04-08 04:00:17','2019-04-08 04:00:17'),(12,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Uoms\",\"icon\":\"fa-bars\",\"uri\":\"product\\/uom\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\"}','2019-04-08 04:00:45','2019-04-08 04:00:45'),(13,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-04-08 04:00:46','2019-04-08 04:00:46'),(14,1,'admin/auth/menu/9/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-04-08 04:00:51','2019-04-08 04:00:51'),(15,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:00:53','2019-04-08 04:00:53'),(16,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:00:54','2019-04-08 04:00:54'),(17,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:00:57','2019-04-08 04:00:57'),(18,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-04-08 04:01:05','2019-04-08 04:01:05'),(19,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Categories\",\"icon\":\"fa-bars\",\"uri\":\"product\\/category\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\"}','2019-04-08 04:01:16','2019-04-08 04:01:16'),(20,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-04-08 04:01:16','2019-04-08 04:01:16'),(21,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Stocks\",\"icon\":\"fa-bars\",\"uri\":\"product\\/stock\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\"}','2019-04-08 04:01:30','2019-04-08 04:01:30'),(22,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-04-08 04:01:30','2019-04-08 04:01:30'),(23,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Prices\",\"icon\":\"fa-bars\",\"uri\":\"product\\/price\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\"}','2019-04-08 04:01:40','2019-04-08 04:01:40'),(24,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-04-08 04:01:41','2019-04-08 04:01:41'),(25,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:01:43','2019-04-08 04:01:43'),(26,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:01:43','2019-04-08 04:01:43'),(27,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:01:45','2019-04-08 04:01:45'),(28,1,'admin/product/uom/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-04-08 04:01:46','2019-04-08 04:01:46'),(29,1,'admin/product/uom','POST','127.0.0.1','{\"store_id\":\"1030\",\"name\":\"\\u514b\",\"need_to_weigh\":\"on\",\"memo\":\"\\u963f\\u65af\\u8482\\u82ac\",\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/product\\/uom\"}','2019-04-08 04:01:54','2019-04-08 04:01:54'),(30,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:01:54','2019-04-08 04:01:54'),(31,1,'admin/product/uom/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-04-08 04:01:56','2019-04-08 04:01:56'),(32,1,'admin/product/uom','POST','127.0.0.1','{\"store_id\":\"1030\",\"name\":\"\\u4ef6\",\"need_to_weigh\":\"on\",\"memo\":\"asdfasd\",\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/product\\/uom\"}','2019-04-08 04:02:02','2019-04-08 04:02:02'),(33,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:02:03','2019-04-08 04:02:03'),(34,1,'admin/auth/store','POST','127.0.0.1','{\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\",\"store_id\":\"1029\"}','2019-04-08 04:02:05','2019-04-08 04:02:05'),(35,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:02:06','2019-04-08 04:02:06'),(36,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:02:06','2019-04-08 04:02:06'),(37,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-04-08 04:02:09','2019-04-08 04:02:09'),(38,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:02:11','2019-04-08 04:02:11'),(39,1,'admin/product/uom/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-04-08 04:02:13','2019-04-08 04:02:13'),(40,1,'admin/product/uom','POST','127.0.0.1','{\"store_id\":\"1029\",\"name\":\"\\u514b\",\"need_to_weigh\":\"off\",\"memo\":\"qwerwe\",\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/product\\/uom\"}','2019-04-08 04:02:23','2019-04-08 04:02:23'),(41,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:02:24','2019-04-08 04:02:24'),(42,1,'admin/product/uom/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-04-08 04:02:26','2019-04-08 04:02:26'),(43,1,'admin/product/uom','POST','127.0.0.1','{\"store_id\":\"1029\",\"name\":\"\\u514b\",\"need_to_weigh\":\"off\",\"memo\":\"qwer\",\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/product\\/uom\"}','2019-04-08 04:02:31','2019-04-08 04:02:31'),(44,1,'admin/product/uom/create','GET','127.0.0.1','[]','2019-04-08 04:02:31','2019-04-08 04:02:31'),(45,1,'admin/product/uom','POST','127.0.0.1','{\"store_id\":\"1029\",\"name\":\"\\u4e2a\",\"need_to_weigh\":\"off\",\"memo\":\"qwer\",\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\"}','2019-04-08 04:02:42','2019-04-08 04:02:42'),(46,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:02:42','2019-04-08 04:02:42'),(47,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:05:25','2019-04-08 04:05:25'),(48,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:05:26','2019-04-08 04:05:26'),(49,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:05:28','2019-04-08 04:05:28'),(50,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:05:48','2019-04-08 04:05:48'),(51,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:05:49','2019-04-08 04:05:49'),(52,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:05:50','2019-04-08 04:05:50'),(53,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:06:07','2019-04-08 04:06:07'),(54,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:06:07','2019-04-08 04:06:07'),(55,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:06:10','2019-04-08 04:06:10'),(56,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:06:47','2019-04-08 04:06:47'),(57,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:06:48','2019-04-08 04:06:48'),(58,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:06:49','2019-04-08 04:06:49'),(59,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:07:20','2019-04-08 04:07:20'),(60,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:07:20','2019-04-08 04:07:20'),(61,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:07:21','2019-04-08 04:07:21'),(62,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:09:12','2019-04-08 04:09:12'),(63,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:09:13','2019-04-08 04:09:13'),(64,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:09:14','2019-04-08 04:09:14'),(65,1,'admin/auth/store','POST','127.0.0.1','{\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\",\"store_id\":\"1030\"}','2019-04-08 04:09:18','2019-04-08 04:09:18'),(66,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:09:18','2019-04-08 04:09:18'),(67,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:09:19','2019-04-08 04:09:19'),(68,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:09:20','2019-04-08 04:09:20'),(69,1,'admin/product/uom','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-04-08 04:09:23','2019-04-08 04:09:23'),(70,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:09:40','2019-04-08 04:09:40'),(71,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:09:41','2019-04-08 04:09:41'),(72,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:09:42','2019-04-08 04:09:42'),(73,1,'admin/auth/store','POST','127.0.0.1','{\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\",\"store_id\":\"1029\"}','2019-04-08 04:09:44','2019-04-08 04:09:44'),(74,1,'admin/product/uom','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-04-08 04:09:46','2019-04-08 04:09:46'),(75,1,'admin/auth/store','POST','127.0.0.1','{\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\",\"store_id\":\"1030\"}','2019-04-08 04:09:49','2019-04-08 04:09:49'),(76,1,'admin/product/uom','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-04-08 04:09:49','2019-04-08 04:09:49'),(77,1,'admin/product/uom','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-04-08 04:10:18','2019-04-08 04:10:18'),(78,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:10:58','2019-04-08 04:10:58'),(79,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:10:58','2019-04-08 04:10:58'),(80,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:11:00','2019-04-08 04:11:00'),(81,1,'admin/auth/store','POST','127.0.0.1','{\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\",\"store_id\":\"1029\"}','2019-04-08 04:11:02','2019-04-08 04:11:02'),(82,1,'admin/auth/store','POST','127.0.0.1','{\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\",\"store_id\":\"1031\"}','2019-04-08 04:11:06','2019-04-08 04:11:06'),(83,1,'admin/auth/store','POST','127.0.0.1','{\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\",\"store_id\":\"1029\"}','2019-04-08 04:11:12','2019-04-08 04:11:12'),(84,1,'admin','GET','127.0.0.1','[]','2019-04-08 04:11:27','2019-04-08 04:11:27'),(85,1,'admin/dashboard','GET','127.0.0.1','[]','2019-04-08 04:11:28','2019-04-08 04:11:28'),(86,1,'admin/product/uom','GET','127.0.0.1','[]','2019-04-08 04:11:29','2019-04-08 04:11:29'),(87,1,'admin/product/uom','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-04-08 04:11:31','2019-04-08 04:11:31'),(88,1,'admin/auth/store','POST','127.0.0.1','{\"_token\":\"eMBgl58g5WGek9g5XKZlvRcOogDIvR0i9VhHT8Fg\",\"store_id\":\"1030\"}','2019-04-08 04:11:34','2019-04-08 04:11:34'),(89,1,'admin/product/uom','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-04-08 04:11:36','2019-04-08 04:11:36');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL),(1,8,NULL,NULL),(1,9,NULL,NULL),(1,10,NULL,NULL),(1,11,NULL,NULL),(1,12,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2019-04-08 03:39:05','2019-04-08 03:39:05');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$LW1cV69QLr6ToYvz0sf63.oS3G6/Ovm3MkPV/eSTV/mmzt9L3RCx.','Administrator',NULL,NULL,'2019-04-08 03:39:05','2019-04-08 03:39:05');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL COMMENT '所属门店id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `parent_gid` int(11) NOT NULL COMMENT '上级id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_store_id_name_unique` (`store_id`,`name`),
  KEY `category_store_id_index` (`store_id`),
  KEY `category_parent_gid_index` (`parent_gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_04_173148_create_admin_tables',1),(4,'2019_04_08_025241_create_table_stock',1),(5,'2019_04_08_031139_create_table_price',1),(6,'2019_04_08_032638_create_table_uom',1),(7,'2019_04_08_032715_create_table_category',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `store_id` int(11) NOT NULL COMMENT '所属门店id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品销售名称',
  `store_stock_id` int(11) NOT NULL COMMENT '所属库存商品id',
  `uom_id` int(11) NOT NULL COMMENT '销售单位id',
  `price` int(11) NOT NULL COMMENT '现价/售价',
  `price_client` int(11) NOT NULL COMMENT '销售单位id',
  `status` tinyint(4) NOT NULL COMMENT '商品库存状态: 0下架, 1上架',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `price_store_id_index` (`store_id`),
  KEY `price_store_stock_id_index` (`store_stock_id`),
  KEY `price_uom_id_index` (`uom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `store_id` int(11) NOT NULL COMMENT '所属门店id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品库存名称',
  `memory_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '助记码',
  `uom_id` int(11) NOT NULL COMMENT '库存单位id',
  `inv_real` int(11) NOT NULL COMMENT '实际库存/库存数量',
  `category_id` int(11) NOT NULL COMMENT '商品类别id',
  `status` tinyint(4) NOT NULL COMMENT '商品库存状态: 0下架, 1上架',
  `price_stock` int(11) NOT NULL COMMENT '库存单价/库存成本',
  `third_party_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品编码/第三方编码',
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_store_id_index` (`store_id`),
  KEY `stock_uom_id_index` (`uom_id`),
  KEY `stock_category_id_index` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom`
--

DROP TABLE IF EXISTS `uom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `store_id` int(11) NOT NULL COMMENT '所属门店id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `need_to_weigh` tinyint(4) NOT NULL COMMENT '是否称重: 0否, 1是',
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uom_store_id_name_unique` (`store_id`,`name`),
  KEY `uom_store_id_index` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom`
--

LOCK TABLES `uom` WRITE;
/*!40000 ALTER TABLE `uom` DISABLE KEYS */;
INSERT INTO `uom` VALUES (1,1030,'克',1,'阿斯蒂芬','2019-04-08 04:01:54','2019-04-08 04:01:54'),(2,1030,'件',1,'asdfasd','2019-04-08 04:02:02','2019-04-08 04:02:02'),(3,1029,'克',0,'qwerwe','2019-04-08 04:02:24','2019-04-08 04:02:24'),(5,1029,'个',0,'qwer','2019-04-08 04:02:42','2019-04-08 04:02:42');
/*!40000 ALTER TABLE `uom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-08 20:12:07
