-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel_inventory_system
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `delivery_id` varchar(11) DEFAULT NULL,
  `delivery_code` varchar(45) DEFAULT NULL,
  `description` text,
  `date` date DEFAULT NULL,
  `is_delivered` tinyint(4) DEFAULT NULL,
  `is_organic` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (88,'MvJUVdmv2nMfowIn','D10001','D1001',NULL,'2021-02-28',0,1,'2021-02-25 03:08:17','2021-02-25 03:08:17','::1','::1','U10015','U10015');
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_items`
--

DROP TABLE IF EXISTS `delivery_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` varchar(11) DEFAULT NULL,
  `po_item_id` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_items`
--

LOCK TABLES `delivery_items` WRITE;
/*!40000 ALTER TABLE `delivery_items` DISABLE KEYS */;
INSERT INTO `delivery_items` VALUES (186,'D10001','POI10002');
/*!40000 ALTER TABLE `delivery_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_jo`
--

DROP TABLE IF EXISTS `delivery_jo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_jo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` varchar(11) DEFAULT NULL,
  `jo_id` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_jo`
--

LOCK TABLES `delivery_jo` WRITE;
/*!40000 ALTER TABLE `delivery_jo` DISABLE KEYS */;
INSERT INTO `delivery_jo` VALUES (92,'D10001','JO10001');
/*!40000 ALTER TABLE `delivery_jo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engr_task_personnels`
--

DROP TABLE IF EXISTS `engr_task_personnels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engr_task_personnels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `engr_task_id` varchar(11) DEFAULT NULL,
  `personnel_id` varchar(11) DEFAULT NULL,
  `engr_task_personnel_id` varchar(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engr_task_personnels`
--

LOCK TABLES `engr_task_personnels` WRITE;
/*!40000 ALTER TABLE `engr_task_personnels` DISABLE KEYS */;
/*!40000 ALTER TABLE `engr_task_personnels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engr_tasks`
--

DROP TABLE IF EXISTS `engr_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engr_tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `engr_task_id` varchar(11) DEFAULT NULL,
  `jo_no` varchar(45) DEFAULT NULL,
  `cat` varchar(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `requested_by` varchar(255) DEFAULT NULL,
  `unit` varchar(90) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `is_allday` tinyint(4) DEFAULT NULL,
  `date_from` timestamp NULL DEFAULT NULL,
  `date_to` timestamp NULL DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engr_tasks`
--

LOCK TABLES `engr_tasks` WRITE;
/*!40000 ALTER TABLE `engr_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `engr_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_batches`
--

DROP TABLE IF EXISTS `item_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_batches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `batch_id` varchar(11) DEFAULT NULL,
  `item_id` varchar(11) DEFAULT NULL,
  `product_code` varchar(90) DEFAULT NULL,
  `batch_code` varchar(45) DEFAULT NULL,
  `amount` decimal(13,3) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1206 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_batches`
--

LOCK TABLES `item_batches` WRITE;
/*!40000 ALTER TABLE `item_batches` DISABLE KEYS */;
INSERT INTO `item_batches` VALUES (1205,'B10001','I10002','P1002','B1001',500.000,'LITRE','2021-02-28','','2021-02-25 03:12:17','2021-02-25 03:12:17','::1','::1','U10015','U10015');
/*!40000 ALTER TABLE `item_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_categories`
--

DROP TABLE IF EXISTS `item_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `item_category_id` varchar(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_categories`
--

LOCK TABLES `item_categories` WRITE;
/*!40000 ALTER TABLE `item_categories` DISABLE KEYS */;
INSERT INTO `item_categories` VALUES (22,'hdJIAoKomsTJGI6j','IC10001','Finished Goods',NULL,'2021-02-25 02:54:40','2021-02-25 02:57:43','::1','::1','U10015','U10015'),(23,'NmTt2tfceKFhBqso','IC10002','Ingredients',NULL,'2021-02-25 02:54:46','2021-02-25 02:57:36','::1','::1','U10015','U10015');
/*!40000 ALTER TABLE `item_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_logs`
--

DROP TABLE IF EXISTS `item_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(11) DEFAULT NULL,
  `batch_id` varchar(11) DEFAULT NULL,
  `product_code` varchar(90) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `transaction_type` tinyint(4) DEFAULT NULL,
  `amount` decimal(13,3) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `balance_before_transaction` decimal(13,3) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `datetime` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3430 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_logs`
--

LOCK TABLES `item_logs` WRITE;
/*!40000 ALTER TABLE `item_logs` DISABLE KEYS */;
INSERT INTO `item_logs` VALUES (3428,'I10002','B10001','P1002','Coca Cola',1,500.000,'LITRE',1000.000,NULL,'2021-02-25 03:12:18','::1','U10015'),(3429,'I10001',NULL,'P1001','M&M',0,200.000,'PCS',1000.000,NULL,'2021-02-25 03:13:07','::1','U10015');
/*!40000 ALTER TABLE `item_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_pack_mats`
--

DROP TABLE IF EXISTS `item_pack_mats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_pack_mats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(11) DEFAULT NULL,
  `product_code` varchar(90) DEFAULT NULL,
  `item_pack_mat_id` varchar(11) DEFAULT NULL,
  `item_pack_mat_item_id` varchar(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `required_quantity` decimal(13,3) DEFAULT NULL,
  `unit_type_id` varchar(11) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=880 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_pack_mats`
--

LOCK TABLES `item_pack_mats` WRITE;
/*!40000 ALTER TABLE `item_pack_mats` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_pack_mats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_raw_mats`
--

DROP TABLE IF EXISTS `item_raw_mats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_raw_mats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(11) DEFAULT NULL,
  `product_code` varchar(90) DEFAULT NULL,
  `item_raw_mat_id` varchar(11) DEFAULT NULL,
  `item_raw_mat_item_id` varchar(45) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `required_quantity` decimal(13,3) DEFAULT NULL,
  `unit_type_id` varchar(11) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1137 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_raw_mats`
--

LOCK TABLES `item_raw_mats` WRITE;
/*!40000 ALTER TABLE `item_raw_mats` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_raw_mats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_types`
--

DROP TABLE IF EXISTS `item_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `item_type_id` varchar(11) DEFAULT NULL,
  `name` varchar(90) DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_types`
--

LOCK TABLES `item_types` WRITE;
/*!40000 ALTER TABLE `item_types` DISABLE KEYS */;
INSERT INTO `item_types` VALUES (12,'0hi16zuIsyNsLCfc','IT1001','Drinks',100,'2021-02-25 02:56:44','2021-02-25 02:57:00','::1','::1','U10015','U10015'),(13,'tC21KasJi9OCnE2P','IT1002','Snacks',100,'2021-02-25 02:57:07','2021-02-25 02:57:07','::1','::1','U10015','U10015');
/*!40000 ALTER TABLE `item_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `item_id` varchar(11) DEFAULT NULL,
  `item_category_id` varchar(11) DEFAULT NULL,
  `item_type_id` varchar(11) DEFAULT NULL,
  `unit_type_id` varchar(11) DEFAULT NULL,
  `supplier_id` varchar(11) DEFAULT NULL,
  `product_code` varchar(90) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `beginning_balance` decimal(13,3) DEFAULT NULL,
  `current_balance` decimal(13,3) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `batch_size` varchar(255) DEFAULT NULL,
  `price` decimal(13,4) DEFAULT NULL,
  `min_req_qty` decimal(13,3) DEFAULT NULL,
  `is_incoming` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=779 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (777,'QTjmZhDdP9FhDRVw','I10001','IC10001','IT1002','IU1001','S10001','P1001','M&M','Multi-colored button-shaped chocolates',1000.000,800.000,'PCS','10',NULL,100.000,0,'2021-02-25 03:00:47','::1','::1','2021-02-25 03:13:07','U10015','U10015'),(778,'Y7dWjP7LBf0oMTeQ','I10002','IC10001','IT1001','IU1003','S10002','P1002','Coca Cola',NULL,1000.000,1500.000,'LITRE','1.5',NULL,100.000,0,'2021-02-25 03:01:51','::1','::1','2021-02-25 03:12:18','U10015','U10015');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_orders`
--

DROP TABLE IF EXISTS `job_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `item_id` varchar(11) DEFAULT NULL,
  `jo_id` varchar(11) DEFAULT NULL,
  `jo_no` varchar(45) DEFAULT NULL,
  `po_item_id` varchar(11) DEFAULT NULL,
  `po_no` varchar(45) DEFAULT NULL,
  `po_id` varchar(11) DEFAULT NULL,
  `lot_no` varchar(45) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_product_code` varchar(45) DEFAULT NULL,
  `item_type_id` varchar(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `batch_size` varchar(255) DEFAULT NULL,
  `pack_size` varchar(255) DEFAULT NULL,
  `theo_yield` varchar(255) DEFAULT NULL,
  `amount` decimal(13,3) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `delivery_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_orders`
--

LOCK TABLES `job_orders` WRITE;
/*!40000 ALTER TABLE `job_orders` DISABLE KEYS */;
INSERT INTO `job_orders` VALUES (243,'I7naNQxGDNMAEkrB','I10001','JO10001','JO1001','POI10001','PO1001','PO10001','LOT1001','M&M','P1001','IT1002','2021-02-28','10','50 pcs per pack',NULL,100.000,'PCS',2,'2021-02-25 03:06:59','2021-02-25 03:08:17','::1','::1','U10015','U10015'),(244,'T7Rr9BsftRBX2UPn','I10001','JO10002','JO1002','POI10001','PO1001','PO10001','LOT1002','M&M','P1001','IT1002','2021-02-28','10','50 pcs per pack',NULL,100.000,'PCS',0,'2021-02-25 03:06:59','2021-02-25 03:07:37','::1','::1','U10015','U10015');
/*!40000 ALTER TABLE `job_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine_maintenance`
--

DROP TABLE IF EXISTS `machine_maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machine_maintenance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `machine_id` varchar(11) DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine_maintenance`
--

LOCK TABLES `machine_maintenance` WRITE;
/*!40000 ALTER TABLE `machine_maintenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `machine_maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machines`
--

DROP TABLE IF EXISTS `machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `machine_id` varchar(11) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machines`
--

LOCK TABLES `machines` WRITE;
/*!40000 ALTER TABLE `machines` DISABLE KEYS */;
/*!40000 ALTER TABLE `machines` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1);
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
  KEY `password_resets_email_index` (`email`(191))
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
-- Table structure for table `personnels`
--

DROP TABLE IF EXISTS `personnels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `personnel_id` varchar(11) DEFAULT NULL,
  `avatar_location` varchar(255) DEFAULT NULL,
  `firstname` varchar(90) DEFAULT NULL,
  `middlename` varchar(90) DEFAULT NULL,
  `lastname` varchar(90) DEFAULT NULL,
  `position` varchar(90) DEFAULT NULL,
  `contact_no` varchar(90) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnels`
--

LOCK TABLES `personnels` WRITE;
/*!40000 ALTER TABLE `personnels` DISABLE KEYS */;
/*!40000 ALTER TABLE `personnels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order_item_pack_mats`
--

DROP TABLE IF EXISTS `purchase_order_item_pack_mats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_order_item_pack_mats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `po_id` varchar(11) DEFAULT NULL,
  `po_no` varchar(45) DEFAULT NULL,
  `po_item_id` varchar(11) DEFAULT NULL,
  `item_pack_mat_id` varchar(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `required_quantity` decimal(13,3) DEFAULT NULL,
  `unit_type_id` varchar(11) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1021 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order_item_pack_mats`
--

LOCK TABLES `purchase_order_item_pack_mats` WRITE;
/*!40000 ALTER TABLE `purchase_order_item_pack_mats` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_order_item_pack_mats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order_item_raw_mats`
--

DROP TABLE IF EXISTS `purchase_order_item_raw_mats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_order_item_raw_mats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `po_id` varchar(11) DEFAULT NULL,
  `po_no` varchar(45) DEFAULT NULL,
  `po_item_id` varchar(11) DEFAULT NULL,
  `item_raw_mat_id` varchar(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `required_quantity` decimal(13,3) DEFAULT NULL,
  `unit_type_id` varchar(11) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order_item_raw_mats`
--

LOCK TABLES `purchase_order_item_raw_mats` WRITE;
/*!40000 ALTER TABLE `purchase_order_item_raw_mats` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_order_item_raw_mats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order_items`
--

DROP TABLE IF EXISTS `purchase_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `po_id` varchar(11) DEFAULT NULL,
  `po_no` varchar(45) DEFAULT NULL,
  `po_item_id` varchar(11) DEFAULT NULL,
  `item_id` varchar(11) DEFAULT NULL,
  `item_type_id` varchar(11) DEFAULT NULL,
  `item_type_percent` int(11) DEFAULT NULL,
  `unit_type_id` varchar(11) DEFAULT NULL,
  `amount` decimal(13,3) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `item_price` decimal(13,4) DEFAULT NULL,
  `line_price` decimal(13,4) DEFAULT NULL,
  `is_generated` tinyint(4) DEFAULT NULL,
  `delivery_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order_items`
--

LOCK TABLES `purchase_order_items` WRITE;
/*!40000 ALTER TABLE `purchase_order_items` DISABLE KEYS */;
INSERT INTO `purchase_order_items` VALUES (448,'FXv9JEoE6jYneoEl','PO10001','PO1001','POI10001','I10001','IT1002',100,'IU1001',100.000,'PCS',NULL,0.0000,1,0,'2021-02-25 03:03:07','2021-02-25 03:06:59','::1','::1','U10015','U10015'),(449,'eZ60Wt6GAxdHJNx8','PO10002','PO1002','POI10002','I10001','IT1002',100,'IU1001',200.000,'PCS',NULL,0.0000,0,4,'2021-02-25 03:04:11','2021-02-25 03:08:23','::1','::1','U10015','U10015'),(450,'PeC8P2GkJBxy6R0w','PO10002','PO1002','POI10003','I10002','IT1001',100,'IU1003',200.000,'LITRE',NULL,0.0000,0,0,'2021-02-25 03:04:11','2021-02-25 03:04:11','::1','::1','U10015','U10015');
/*!40000 ALTER TABLE `purchase_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_orders`
--

DROP TABLE IF EXISTS `purchase_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `po_id` varchar(11) DEFAULT NULL,
  `po_no` varchar(45) DEFAULT NULL,
  `date_required` date DEFAULT NULL,
  `bill_to_name` varchar(255) DEFAULT NULL,
  `bill_to_company` varchar(255) DEFAULT NULL,
  `bill_to_address` varchar(255) DEFAULT NULL,
  `ship_to_name` varchar(255) DEFAULT NULL,
  `ship_to_company` varchar(255) DEFAULT NULL,
  `ship_to_address` varchar(255) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `process_status` int(10) DEFAULT NULL,
  `freight_fee` decimal(13,4) DEFAULT NULL,
  `instructions` varchar(255) DEFAULT NULL,
  `vat` decimal(13,4) DEFAULT NULL,
  `subtotal_price` decimal(13,4) DEFAULT NULL,
  `total_price` decimal(13,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_orders`
--

LOCK TABLES `purchase_orders` WRITE;
/*!40000 ALTER TABLE `purchase_orders` DISABLE KEYS */;
INSERT INTO `purchase_orders` VALUES (136,'eIDs3m1ZRx3UkX6t','PO10001','PO1001','2021-02-25','John Doe','Google','Manila, Philippines','John Doe','Google','Manila, Philippines',1,3,NULL,NULL,12.0000,0.0000,0.0000,'2021-02-25 03:03:07','2021-02-25 03:07:47','::1','::1','U10015','U10015'),(137,'YdHQyko1IZ0daJKH','PO10002','PO1002','2021-02-25','Bill Adams','Amazon','Manila, Philippines','Bill Adams','Amazon','Manila, Philippines',1,1,NULL,NULL,12.0000,0.0000,0.0000,'2021-02-25 03:04:11','2021-02-25 03:04:11','::1','::1','U10015','U10015');
/*!40000 ALTER TABLE `purchase_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `su_menus`
--

DROP TABLE IF EXISTS `su_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `su_menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `menu_id` varchar(11) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `name` varchar(90) DEFAULT NULL,
  `route` varchar(90) DEFAULT NULL,
  `icon` varchar(90) DEFAULT NULL,
  `is_menu` tinyint(1) DEFAULT NULL,
  `is_dropdown` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(45) DEFAULT NULL,
  `user_updated` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `su_menus`
--

LOCK TABLES `su_menus` WRITE;
/*!40000 ALTER TABLE `su_menus` DISABLE KEYS */;
INSERT INTO `su_menus` VALUES (1,'5ccVLgL8LILsoOK8','M10001','U','Home','dashboard.home','fa-home',1,0,NULL,'2019-01-29 04:52:34',NULL,'127.0.0.1',NULL,'U10001'),(2,'t9igSzp4CU8p5iuM','M10002','SU','Users','dashboard.user.*','fa-user',1,1,NULL,'2020-06-25 13:01:06',NULL,'::1',NULL,'U10015'),(4,'JH3ifj2ZpAf5qvg4','M10003','U','Profile','dashboard.profile.*','fa-user',0,0,NULL,'2020-06-25 12:52:58',NULL,'::1',NULL,'U10015'),(5,'R6421JZryef7uJzB','M10004','SU','Menus','dashboard.menu.*','fa-bars',1,1,NULL,'2018-05-05 11:19:52',NULL,'127.0.0.1',NULL,'U10001'),(8,'oPqRYwfjUY4Ahqbf','M10005',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1,'2020-02-06 09:47:32','2021-01-25 11:56:44','::1','::1','U10001','U10015'),(9,'v161h69uwihhrQeN','M10006',NULL,'Item Categories','dashboard.item_category.*','fa-cart-arrow-down',1,1,'2020-02-09 10:30:36','2020-02-09 10:32:28','::1','::1','U10001','U10001'),(14,'vMQ7azG8fbT7jdTO','M10007',NULL,'Item Type','dashboard.item_type.*','fa-opencart',1,1,'2020-04-06 13:09:53','2020-04-06 13:10:26','::1','::1','U10001','U10001'),(15,'XlpxCTHNpRT9NiFc','M10008',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1,'2020-04-06 13:17:03','2020-05-06 01:02:56','::1','::1','U10001','U10001'),(16,'4cKEhpZsNnW3yap5','M10009',NULL,'JO','dashboard.job_order.*','fa-file-text',1,1,'2020-04-06 13:21:23','2020-06-12 02:57:16','::1','::1','U10001','U10002'),(19,'Sx42LHiZYngIt0ql','M10012',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1,'2020-04-13 13:13:47','2020-06-25 13:01:32','::1','::1','U10001','U10015'),(20,'NNfRlfMjXMmfAjpj','M10013',NULL,'Machines','dashboard.machine.*','fa-gears',1,1,'2020-04-13 14:05:11','2021-01-16 10:21:46','::1','::1','U10001','U10015'),(21,'oT41Ht4D9hfrdUHT','M10014',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1,'2020-04-14 16:30:15','2021-01-23 11:09:18','::1','::1','U10001','U10015'),(22,'PjJe7IgdaThUoGRu','M10015',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1,'2020-04-26 08:18:22','2020-05-11 12:58:43','::1','::1','U10001','U10001'),(23,'ohwEHrkmS3yR0rW7','M10016',NULL,'Suppliers','dashboard.supplier.*','fa-shopping-cart',1,1,'2020-05-20 12:36:35','2020-05-20 12:36:35','::1','::1','U10001','U10001'),(24,'ZGMZmPUQ3Ij2vrgG','M10017',NULL,'Task (Engineering)','dashboard.engr_task.*','fa-gears',1,1,'2020-06-25 12:50:42','2021-01-23 11:19:10','::1','::1','U10015','U10015');
/*!40000 ALTER TABLE `su_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `su_submenus`
--

DROP TABLE IF EXISTS `su_submenus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `su_submenus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `submenu_id` varchar(11) DEFAULT NULL,
  `menu_id` varchar(11) DEFAULT NULL,
  `is_nav` tinyint(1) DEFAULT NULL,
  `name` varchar(90) DEFAULT NULL,
  `nav_name` varchar(90) DEFAULT NULL,
  `route` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=879 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `su_submenus`
--

LOCK TABLES `su_submenus` WRITE;
/*!40000 ALTER TABLE `su_submenus` DISABLE KEYS */;
INSERT INTO `su_submenus` VALUES (28,'o2XcwsRhPupA2nna','SM10000151','M10004',1,'Menu Create','Add','dashboard.menu.create'),(29,'PkoKIx56aqSma6ZV','SM10000152','M10004',0,'Menu Store','','dashboard.menu.store'),(30,'mtDGeMsiLkQ7e6RU','SM10000153','M10004',1,'Menu List','Manage','dashboard.menu.index'),(31,'fiJlKwPFyxP44cs9','SM10000154','M10004',0,'Menu Edit',NULL,'dashboard.menu.edit'),(32,'yHKkzTKfJVoQUwvq','SM10000155','M10004',0,'Menu Update',NULL,'dashboard.menu.update'),(33,'uCbvCLbz3jDpCkjf','SM10000156','M10004',0,'Menu Delete',NULL,'dashboard.menu.destroy'),(70,'hLCMzW4KqyQq8iOy','SM10000251','M10006',1,'Item Category Create','Add','dashboard.item_category.create'),(71,'5JEbbjvPQNCqIiLp','SM10000252','M10006',0,'Item Category Store',NULL,'dashboard.item_category.store'),(72,'58JqYNiN2Gv6zmVp','SM10000253','M10006',1,'Item Category List','Manage','dashboard.item_category.index'),(73,'J0hnqZ0LYc93xkjl','SM10000254','M10006',0,'Item Category Edit',NULL,'dashboard.item_category.edit'),(74,'dd5ZtMav9Ie3slOr','SM10000255','M10006',0,'Item Category Update',NULL,'dashboard.item_category.update'),(75,'vUuNd0aVjJkhRRGO','SM10000256','M10006',0,'Item Category Delete',NULL,'dashboard.item_category.destroy'),(360,'YbHuAzULdHGai8JV','SM10000301','M10007',1,'Item Type Create','Add','dashboard.item_type.create'),(361,'GFZyGC2e5sqOX1y8','SM10000302','M10007',0,'Item Type Store',NULL,'dashboard.item_type.store'),(362,'sFHXuDjyBdB3JrH2','SM10000303','M10007',1,'Item Type List','Manage','dashboard.item_type.index'),(363,'83s6xJAbsgNdcf38','SM10000304','M10007',0,'Item Type Edit',NULL,'dashboard.item_type.edit'),(364,'vtHNlRjwsRBxSiMB','SM10000305','M10007',0,'Item Type Update',NULL,'dashboard.item_type.update'),(365,'2gjhbyYwADom4cPL','SM10000306','M10007',0,'Item Type Delete',NULL,'dashboard.item_type.destroy'),(477,'wTDl3qI4QjBQZZA2','SM10000351','M10008',1,'PO Create','Add','dashboard.purchase_order.create'),(478,'Sdkavw1zPi3d9ChU','SM10000352','M10008',0,'PO Store',NULL,'dashboard.purchase_order.store'),(479,'OlbQHSr6wToiOQeJ','SM10000353','M10008',1,'PO List','Manage','dashboard.purchase_order.index'),(480,'oThBo5uMfT3Hmtvu','SM10000354','M10008',0,'PO Edit',NULL,'dashboard.purchase_order.edit'),(481,'cI4oyAIhk0odWZpF','SM10000355','M10008',0,'PO Update',NULL,'dashboard.purchase_order.update'),(482,'xS84Q0eDEBtanfXO','SM10000356','M10008',0,'PO Delete',NULL,'dashboard.purchase_order.destroy'),(483,'UFnwW7qQAzTm6PYw','SM10000357','M10008',0,'PO Show',NULL,'dashboard.purchase_order.show'),(484,'ueo1PZ9MBfJxbZlS','SM10000358','M10008',0,'PO Print',NULL,'dashboard.purchase_order.print'),(485,'VFfrJQOWg93VRFh2','SM10000359','M10008',1,'PO Buffer','Buffers','dashboard.purchase_order.buffer'),(486,'pwV3HONXJse9OSmv','SM10000360','M10008',0,'PO Post to Process',NULL,'dashboard.purchase_order.to_process'),(487,'P8jQCuKlSUtzKJQj','SM10000361','M10008',0,'PO Post to Buffer',NULL,'dashboard.purchase_order.to_buffer'),(506,'lFp4SvJ0XWRGmN6Z','SM10000701','M10015',1,'Delivery Create','Add','dashboard.delivery.create'),(507,'b1jLrEiMtNvZMXhT','SM10000702','M10015',0,'Delivery Store',NULL,'dashboard.delivery.store'),(508,'OdPHBtbhimgabi2P','SM10000703','M10015',1,'Delivery List','Manage','dashboard.delivery.index'),(509,'a9YDYpKUm8Odwj3J','SM10000704','M10015',0,'Delivery Edit',NULL,'dashboard.delivery.edit'),(510,'eaio3iCJIRWWomf4','SM10000705','M10015',0,'Delivery Update',NULL,'dashboard.delivery.update'),(511,'PBfjvj7VFKnu2vff','SM10000706','M10015',0,'Delivery Delete',NULL,'dashboard.delivery.destroy'),(512,'4w3FIx8qJwyHudDs','SM10000707','M10015',0,'Delivery Details',NULL,'dashboard.delivery.show'),(513,'tCcdGmAnDwao0DOW','SM10000708','M10015',0,'Delivery Confirm Delivery',NULL,'dashboard.delivery.confirm_delivery'),(514,'HjOtORkwzhHPlK78','SM10000709','M10015',0,'Delivery Confirm Delivered Post',NULL,'dashboard.delivery.confirm_delivered_post'),(515,'m7iP9JU9HEc0GWKG','SM10000710','M10015',0,'Delivery Confirm Returned Post',NULL,'dashboard.delivery.confirm_returned_post'),(516,'pVFZAdMVtcjBp1pi','SM10000711','M10015',0,'Delivery Report Print',NULL,'dashboard.delivery.print'),(517,'Jf9DNxe6DKxZcNxd','SM10000751','M10016',1,'Supplier Create','New','dashboard.supplier.create'),(518,'WG6e4BWpi17avFcC','SM10000752','M10016',0,'Supplier Store',NULL,'dashboard.supplier.store'),(519,'XNwk1cHwZ26yGeKy','SM10000753','M10016',1,'Supplier List','Manage','dashboard.supplier.index'),(520,'MIneGLHwCFFwHwfv','SM10000754','M10016',0,'Supplier Edit',NULL,'dashboard.supplier.edit'),(521,'SvmeBnRCOs6b7Idf','SM10000755','M10016',0,'Supplier Update',NULL,'dashboard.supplier.update'),(522,'e1SjKsXdtmxFWT5Z','SM10000756','M10016',0,'Supplier Delete',NULL,'dashboard.supplier.destroy'),(567,'tOH3FFEVyDPpKUtB','SM10000401','M10009',1,'JO Create','Generate','dashboard.job_order.create'),(568,'HUetsyFkxZh79Act','SM10000402','M10009',0,'JO Show',NULL,'dashboard.job_order.show'),(569,'Jdoqm9GBVjQxq6VE','SM10000403','M10009',0,'JO Generate',NULL,'dashboard.job_order.generate'),(570,'ib6COZhHmtyMPthj','SM10000404','M10009',0,'JO Generate Fill',NULL,'dashboard.job_order.generate_fill'),(571,'7Lqon7L8P48cEPjG','SM10000405','M10009',0,'JO Generate Fill Post',NULL,'dashboard.job_order.generate_fill_post'),(572,'zyjpvNpEsDFH4YHy','SM10000406','M10009',0,'JO Print',NULL,'dashboard.job_order.print'),(573,'kEEGlT3bzqxzIdhX','SM10000407','M10009',1,'JO List','Manage','dashboard.job_order.index'),(574,'2keaKv1A8Ofbmu8l','SM10000408','M10009',0,'JO Confirm Ready for Delivery',NULL,'dashboard.job_order.confirm_rfd'),(594,'7ulUWdBJlwclX5rl','SM10000101','M10003',0,'Profile Show',NULL,'dashboard.profile.details'),(595,'LgoJRnJ8sYuHw9Gk','SM10000102','M10003',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(596,'qMsfjPQ8lXaJimhl','SM10000103','M10003',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(597,'PFbYrg1ml2MUoWph','SM10000104','M10003',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(598,'I0RbynPj6kSvGFXs','SM10000105','M10003',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(623,'0Sww82mS9rbIKnKJ','SM10000001','M10002',1,'User Create','Add','dashboard.user.create'),(624,'ec2LwwwgdJNqixI5','SM10000002','M10002',1,'User List','Manage','dashboard.user.index'),(625,'2LNerCtQWzl6xLQM','SM10000003','M10002',0,'User Store',NULL,'dashboard.user.store'),(626,'x2xWiwkQiiW8Fvhy','SM10000004','M10002',0,'User Show',NULL,'dashboard.user.show'),(627,'JdO29aCNXcNWsD6C','SM10000005','M10002',0,'User Edit',NULL,'dashboard.user.edit'),(628,'8pefVwE5rTUSxyf7','SM10000006','M10002',0,'User Update',NULL,'dashboard.user.update'),(629,'LgRwi1An3SABCmJv','SM10000007','M10002',0,'User Delete',NULL,'dashboard.user.destroy'),(630,'A4gJiyZ24QxnvAQK','SM10000008','M10002',0,'User Activate',NULL,'dashboard.user.activate'),(631,'pbFmCOYGtsfSngGH','SM10000009','M10002',0,'User Deactivate',NULL,'dashboard.user.deactivate'),(632,'KrjAeNCcUrtD8fgV','SM10000010','M10002',0,'User Logout',NULL,'dashboard.user.logout'),(633,'B4JNW1WAbZqE5mAb','SM10000011','M10002',0,'User Reset Password',NULL,'dashboard.user.reset_password'),(634,'MTnhL7k6TIWPAXmg','SM10000012','M10002',0,'User Reset Password Post',NULL,'dashboard.user.reset_password_post'),(635,'lq92JM3tbmn1Hfxz','SM10000013','M10002',0,'User View Avatar',NULL,'dashboard.user.view_avatar'),(636,'wSFUv0hTSLtoeKKI','SM10000551','M10012',1,'Personnel Create','Add','dashboard.personnel.create'),(637,'Eu0ZtPsy2uxJLBgz','SM10000552','M10012',0,'Personnel Store',NULL,'dashboard.personnel.store'),(638,'3pi562HpPyPPwABD','SM10000553','M10012',1,'Personnel List','Manage','dashboard.personnel.index'),(639,'uZ3dF8L584DllFci','SM10000554','M10012',0,'Personnel Edit',NULL,'dashboard.personnel.edit'),(640,'M4fMgmqaWaWjNUkR','SM10000555','M10012',0,'Personnel Update',NULL,'dashboard.personnel.update'),(641,'P3aoB1fZ8E6WB9Lu','SM10000556','M10012',0,'Personnel Delete',NULL,'dashboard.personnel.destroy'),(642,'NYnXhpGTVZvPDuJC','SM10000557','M10012',0,'Personnel View Avatar',NULL,'dashboard.personnel.view_avatar'),(803,'AHuPJEVFK7bpPzjW','SM10000601','M10013',1,'Machine Create','Add','dashboard.machine.create'),(804,'SiduPGDFrwJQWJ2B','SM10000602','M10013',0,'Machine Store',NULL,'dashboard.machine.store'),(805,'VNJGQx9FC9ThaukN','SM10000603','M10013',1,'Machine List','Manage','dashboard.machine.index'),(806,'4oovhqj1jBSfMs7J','SM10000604','M10013',0,'Machine Edit',NULL,'dashboard.machine.edit'),(807,'GFIIeqKeCTFiMPrR','SM10000605','M10013',0,'Machine Update',NULL,'dashboard.machine.update'),(808,'uwp5y5zUXpmgGAdR','SM10000606','M10013',0,'Machine Delete',NULL,'dashboard.machine.destroy'),(809,'kKUDvnKOodfrTynq','SM10000607','M10013',1,'Machine Maintenance Index','Maintenance','dashboard.machine.maintenance_index'),(810,'Oo9DdN8Wie1wy6AC','SM10000608','M10013',0,'Machine Maintenance Store',NULL,'dashboard.machine.maintenance_store'),(811,'KlEjbpGrbtiY2R6S','SM10000609','M10013',0,'Machine Maintenance Update',NULL,'dashboard.machine.maintenance_update'),(812,'exnTJLr7ZM3dJ0Az','SM10000610','M10013',0,'Machine Maintenance Delete',NULL,'dashboard.machine.maintenance_delete'),(813,'fOwA7LRHu7PUYCZ5','SM10000611','M10013',0,'Machine Update Status',NULL,'dashboard.machine.update_status'),(814,'k9FqHc0feCvnHLn6','SM10000612','M10013',1,'Machine Maintenance Calendar','Maintenance Calendar','dashboard.machine.maintenance_calendar'),(832,'BlfdLosgssu2kkZ9','SM10000651','M10014',1,'Task Create','New','dashboard.task.create'),(833,'I1NLzVQF1U5iCNv8','SM10000652','M10014',0,'Task Store',NULL,'dashboard.task.store'),(834,'O2MBcBQDvGx36zyo','SM10000653','M10014',1,'Task List','Manage','dashboard.task.index'),(835,'xOV2icTnPZj4A3TR','SM10000654','M10014',0,'Task Edit',NULL,'dashboard.task.edit'),(836,'Kikwn6sWyc77uwZJ','SM10000655','M10014',0,'Task Update',NULL,'dashboard.task.update'),(837,'bQsaUNjG4pCMgImz','SM10000656','M10014',0,'Task Delete',NULL,'dashboard.task.destroy'),(838,'PbQTm7vsVvtkl1qZ','SM10000658','M10014',0,'Task Update Finished',NULL,'dashboard.task.update_finished'),(839,'MJogEnXAGhItRzAV','SM10000659','M10014',0,'Task Rate Personnel',NULL,'dashboard.task.rate_personnel'),(840,'laez5WOcpqnO9n8Q','SM10000670','M10014',0,'Task Rate Personnel Post',NULL,'dashboard.task.rate_personnel_post'),(841,'FBJd2YwbiZwSogc4','SM10000671','M10014',1,'Task Calendar','Calendar','dashboard.task.calendar'),(842,'kkMJcTyLg3NKb1kQ','SM10000672','M10014',0,'Task Update Unfinished',NULL,'dashboard.task.update_unfinished'),(843,'SuZCW9fH6Im6kxlC','SM10000673','M10014',1,'Task Reports','Reports','dashboard.task.reports'),(844,'83I2P6LePM6zLquj','SM10000674','M10014',0,'Task Reports Output',NULL,'dashboard.task.reports_output'),(845,'HeCn2LZhd8Of9O7Q','SM10000801','M10017',1,'Task Engr Create Job Order','New Job Order','dashboard.engr_task.create_jo'),(846,'z2YRSJpa6GYLSzJ6','SM10000802','M10017',1,'Task Engr Create Dalily Activity','New Daily Activity','dashboard.engr_task.create_da'),(847,'CM9vVzwIMwQzgTU9','SM10000803','M10017',0,'Task Engr Store',NULL,'dashboard.engr_task.store'),(848,'21M81ZaqNhIRMzwf','SM10000804','M10017',1,'Task Engr List','Manage','dashboard.engr_task.index'),(849,'BKtQxrw7AEVUZuGT','SM10000805','M10017',0,'Task Engr Edit',NULL,'dashboard.engr_task.edit'),(850,'iGbRrPqOqxWWoboi','SM10000806','M10017',0,'Task Engr Update',NULL,'dashboard.engr_task.update'),(851,'10cnysRGKClf6qcv','SM10000807','M10017',0,'Task Engr Delete',NULL,'dashboard.engr_task.destroy'),(852,'H0ALpuo7VJuEpeyy','SM10000809','M10017',0,'Task Engr Update Finished',NULL,'dashboard.engr_task.update_finished'),(853,'aIOtaTScM337nU9e','SM10000810','M10017',0,'Task Engr Update Unfinished',NULL,'dashboard.engr_task.update_unfinished'),(854,'GM1i7T80gIjbsGNI','SM10000811','M10017',0,'Task Engr Rate Personnel',NULL,'dashboard.engr_task.rate_personnel'),(855,'8i34NDdt7s7FXUxK','SM10000812','M10017',0,'Task Engr Rate Personnel Post',NULL,'dashboard.engr_task.rate_personnel_post'),(856,'d63S8jWVEAx5TJTm','SM10000813','M10017',1,'Task Engr Calendar','Calendar','dashboard.engr_task.calendar'),(857,'koSgPuhOV8sT8v9v','SM10000201','M10005',1,'Item Create','Add','dashboard.item.create'),(858,'YArJfru8D2m6SPIm','SM10000202','M10005',0,'Item Store',NULL,'dashboard.item.store'),(859,'Q2HKaR2NrYbcfiaP','SM10000203','M10005',1,'Item List','Manage','dashboard.item.index'),(860,'RDAuSf07lO9sMzkM','SM10000204','M10005',0,'Item Edit',NULL,'dashboard.item.edit'),(861,'DP9yjo15KxCgm2S3','SM10000205','M10005',0,'Item Update',NULL,'dashboard.item.update'),(862,'vfWT8TXqEkJbc7nR','SM10000206','M10005',0,'Item Delete',NULL,'dashboard.item.destroy'),(863,'G8ohClFNnECvObaN','SM10000207','M10005',0,'Item Show',NULL,'dashboard.item.show'),(864,'o7Cb8Mn1CGTiFqFA','SM10000208','M10005',0,'Item Check - In',NULL,'dashboard.item.check_in'),(865,'BxpLsLaVUE80UiM4','SM10000209','M10005',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(866,'DVtuyMwfG8kCA0qm','SM10000210','M10005',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(867,'foI2QEj7T5flq884','SM10000211','M10005',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(868,'65u3lVM9q8LFasGz','SM10000212','M10005',1,'Item Logs','Logs','dashboard.item.logs'),(869,'NV6pC3pvihkqOSiQ','SM10000213','M10005',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(870,'Wc7IxFEXCU0QBr91','SM10000214','M10005',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(871,'5xU87NhDtwRN5WCr','SM10000215','M10005',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(872,'E8Iq8iSzv4SsNudu','SM10000216','M10005',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(873,'o3hXgyq0jPaHHVio','SM10000217','M10005',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(874,'sM8N0Ti04TMlL1VM','SM10000218','M10005',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(875,'79zZqxm7ZL021Lgt','SM10000219','M10005',1,'Item Reports Page','Reports','dashboard.item.reports'),(876,'a6TvRHtA3FLEoHJN','SM10000220','M10005',0,'Item Reports Output',NULL,'dashboard.item.reports_output'),(877,'eQNJKyIJx3yjD4Kq','SM10000221','M10005',0,'Item Batch Add Remarks',NULL,'dashboard.item.batch_add_remarks'),(878,'uh45ishAwr2TKZvT','SM10000222','M10005',0,'Item Logs Update Remarks',NULL,'dashboard.item.logs_update_remarks');
/*!40000 ALTER TABLE `su_submenus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `su_user_menus`
--

DROP TABLE IF EXISTS `su_user_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `su_user_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_menu_id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `name` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_menu` tinyint(1) DEFAULT NULL,
  `is_dropdown` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4905 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `su_user_menus`
--

LOCK TABLES `su_user_menus` WRITE;
/*!40000 ALTER TABLE `su_user_menus` DISABLE KEYS */;
INSERT INTO `su_user_menus` VALUES (3783,'U10004','M10001','UM10000477',NULL,'Home','dashboard.home','fa-home',1,0),(3784,'U10004','M10003','UM10000478',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(3785,'U10004','M10008','UM10000479',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(3786,'U10004','M10012','UM10000480',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(3787,'U10004','M10013','UM10000481',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(3788,'U10004','M10014','UM10000482',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(3789,'U10004','M10015','UM10000483',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(3801,'U10003','M10001','UM10000495',NULL,'Home','dashboard.home','fa-home',1,0),(3802,'U10003','M10003','UM10000496',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(3803,'U10003','M10005','UM10000497',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(3804,'U10003','M10008','UM10000498',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(3805,'U10003','M10012','UM10000499',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(3806,'U10003','M10014','UM10000500',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(3807,'U10003','M10015','UM10000501',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(3808,'U10003','M10016','UM10000502',NULL,'Suppliers','dashboard.supplier.*','fa-shopping-cart',1,1),(3809,'U10008','M10001','UM10000503',NULL,'Home','dashboard.home','fa-home',1,0),(3810,'U10008','M10003','UM10000504',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(3811,'U10008','M10005','UM10000505',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(3812,'U10008','M10012','UM10000506',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(3813,'U10008','M10013','UM10000507',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(3814,'U10008','M10014','UM10000508',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(3815,'U10008','M10015','UM10000509',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(3820,'U10005','M10001','UM10000514',NULL,'Home','dashboard.home','fa-home',1,0),(3821,'U10005','M10003','UM10000515',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(3822,'U10005','M10005','UM10000516',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(3823,'U10005','M10015','UM10000517',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(3824,'U10007','M10001','UM10000518',NULL,'Home','dashboard.home','fa-home',1,0),(3825,'U10007','M10003','UM10000519',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(3826,'U10007','M10005','UM10000520',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(3827,'U10007','M10015','UM10000521',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(3828,'U10006','M10001','UM10000522',NULL,'Home','dashboard.home','fa-home',1,0),(3829,'U10006','M10003','UM10000523',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(3830,'U10006','M10005','UM10000524',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(3831,'U10011','M10001','UM10000525',NULL,'Home','dashboard.home','fa-home',1,0),(3832,'U10011','M10003','UM10000526',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(3833,'U10011','M10005','UM10000527',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(3834,'U10011','M10008','UM10000528',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(3835,'U10011','M10014','UM10000529',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(3836,'U10011','M10015','UM10000530',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(3837,'U10010','M10001','UM10000531',NULL,'Home','dashboard.home','fa-home',1,0),(3838,'U10010','M10003','UM10000532',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(3839,'U10010','M10005','UM10000533',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(3840,'U10010','M10016','UM10000534',NULL,'Suppliers','dashboard.supplier.*','fa-shopping-cart',1,1),(3864,'U10013','M10001','UM10000551',NULL,'Home','dashboard.home','fa-home',1,0),(3865,'U10013','M10003','UM10000552',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(3866,'U10013','M10005','UM10000553',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(3867,'U10013','M10008','UM10000554',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(3868,'U10013','M10012','UM10000555',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(3869,'U10013','M10013','UM10000556',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(3870,'U10013','M10014','UM10000557',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(3871,'U10013','M10015','UM10000558',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(3877,'U10012','M10001','UM10000559',NULL,'Home','dashboard.home','fa-home',1,0),(3878,'U10012','M10003','UM10000560',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(3879,'U10012','M10012','UM10000561',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(3880,'U10012','M10013','UM10000562',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(3881,'U10012','M10014','UM10000563',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(3882,'U10014','M10001','UM10000564',NULL,'Home','dashboard.home','fa-home',1,0),(3883,'U10014','M10003','UM10000565',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(3884,'U10014','M10012','UM10000566',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(3885,'U10014','M10013','UM10000567',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(3886,'U10014','M10014','UM10000568',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4102,'U10016','M10001','UM10000623',NULL,'Home','dashboard.home','fa-home',1,0),(4103,'U10016','M10003','UM10000624',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4104,'U10016','M10005','UM10000625',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4105,'U10016','M10008','UM10000626',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(4106,'U10016','M10009','UM10000627',NULL,'JO','dashboard.job_order.*','fa-file-text',1,1),(4107,'U10016','M10012','UM10000628',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(4108,'U10016','M10013','UM10000629',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(4109,'U10016','M10014','UM10000630',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4110,'U10016','M10015','UM10000631',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(4111,'U10016','M10016','UM10000632',NULL,'Suppliers','dashboard.supplier.*','fa-shopping-cart',1,1),(4112,'U10016','M10017','UM10000633',NULL,'Task (Engineering)','dashboard.engr_task.*','fa-gears',1,1),(4194,'U10021','M10001','UM10000690',NULL,'Home','dashboard.home','fa-home',1,0),(4195,'U10021','M10003','UM10000691',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4196,'U10021','M10005','UM10000692',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4197,'U10021','M10016','UM10000693',NULL,'Suppliers','dashboard.supplier.*','fa-shopping-cart',1,1),(4198,'U10020','M10001','UM10000694',NULL,'Home','dashboard.home','fa-home',1,0),(4199,'U10020','M10003','UM10000695',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4200,'U10020','M10005','UM10000696',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4201,'U10020','M10008','UM10000697',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(4202,'U10020','M10009','UM10000698',NULL,'JO','dashboard.job_order.*','fa-file-text',1,1),(4203,'U10020','M10014','UM10000699',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4204,'U10020','M10015','UM10000700',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(4307,'U10026','M10003','UM10000761',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4308,'U10026','M10008','UM10000762',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(4309,'U10026','M10012','UM10000763',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(4310,'U10026','M10014','UM10000764',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4311,'U10026','M10015','UM10000765',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(4377,'U10029','M10001','UM10000815',NULL,'Home','dashboard.home','fa-home',1,0),(4378,'U10029','M10003','UM10000816',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4379,'U10029','M10005','UM10000817',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4380,'U10029','M10006','UM10000818',NULL,'Item Categories','dashboard.item_category.*','fa-cart-arrow-down',1,1),(4381,'U10029','M10012','UM10000819',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(4382,'U10029','M10013','UM10000820',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(4383,'U10029','M10017','UM10000821',NULL,'Task (Engineering)','dashboard.engr_task.*','fa-gears',1,1),(4384,'U10028','M10001','UM10000822',NULL,'Home','dashboard.home','fa-home',1,0),(4385,'U10028','M10003','UM10000823',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4386,'U10028','M10005','UM10000824',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4387,'U10028','M10006','UM10000825',NULL,'Item Categories','dashboard.item_category.*','fa-cart-arrow-down',1,1),(4388,'U10028','M10012','UM10000826',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(4389,'U10028','M10013','UM10000827',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(4390,'U10028','M10014','UM10000828',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4391,'U10028','M10017','UM10000829',NULL,'Task (Engineering)','dashboard.engr_task.*','fa-gears',1,1),(4392,'U10027','M10001','UM10000830',NULL,'Home','dashboard.home','fa-home',1,0),(4393,'U10027','M10003','UM10000831',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4394,'U10027','M10004','UM10000832',NULL,'Menus','dashboard.menu.*','fa-bars',1,1),(4395,'U10027','M10005','UM10000833',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4396,'U10027','M10006','UM10000834',NULL,'Item Categories','dashboard.item_category.*','fa-cart-arrow-down',1,1),(4397,'U10027','M10007','UM10000835',NULL,'Item Type','dashboard.item_type.*','fa-opencart',1,1),(4398,'U10027','M10012','UM10000836',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(4399,'U10027','M10013','UM10000837',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(4400,'U10027','M10014','UM10000838',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4401,'U10027','M10017','UM10000839',NULL,'Task (Engineering)','dashboard.engr_task.*','fa-gears',1,1),(4402,'U10024','M10001','UM10000840',NULL,'Home','dashboard.home','fa-home',1,0),(4403,'U10024','M10002','UM10000841',NULL,'Users','dashboard.user.*','fa-user',1,1),(4404,'U10024','M10003','UM10000842',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4405,'U10024','M10004','UM10000843',NULL,'Menus','dashboard.menu.*','fa-bars',1,1),(4406,'U10024','M10005','UM10000844',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4407,'U10024','M10006','UM10000845',NULL,'Item Categories','dashboard.item_category.*','fa-cart-arrow-down',1,1),(4408,'U10024','M10007','UM10000846',NULL,'Item Type','dashboard.item_type.*','fa-opencart',1,1),(4409,'U10024','M10008','UM10000847',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(4410,'U10024','M10009','UM10000848',NULL,'JO','dashboard.job_order.*','fa-file-text',1,1),(4411,'U10024','M10012','UM10000849',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(4412,'U10024','M10013','UM10000850',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(4413,'U10024','M10014','UM10000851',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4414,'U10024','M10015','UM10000852',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(4415,'U10024','M10016','UM10000853',NULL,'Suppliers','dashboard.supplier.*','fa-shopping-cart',1,1),(4416,'U10024','M10017','UM10000854',NULL,'Task (Engineering)','dashboard.engr_task.*','fa-gears',1,1),(4457,'U10002','M10001','UM10000895',NULL,'Home','dashboard.home','fa-home',1,0),(4458,'U10002','M10002','UM10000896',NULL,'Users','dashboard.user.*','fa-user',1,1),(4459,'U10002','M10003','UM10000897',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4460,'U10002','M10005','UM10000898',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4461,'U10002','M10006','UM10000899',NULL,'Item Categories','dashboard.item_category.*','fa-cart-arrow-down',1,1),(4462,'U10002','M10008','UM10000900',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(4463,'U10002','M10009','UM10000901',NULL,'JO','dashboard.job_order.*','fa-file-text',1,1),(4464,'U10002','M10012','UM10000902',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(4465,'U10002','M10013','UM10000903',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(4466,'U10002','M10014','UM10000904',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4467,'U10002','M10015','UM10000905',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(4468,'U10002','M10016','UM10000906',NULL,'Suppliers','dashboard.supplier.*','fa-shopping-cart',1,1),(4469,'U10002','M10017','UM10000907',NULL,'Task (Engineering)','dashboard.engr_task.*','fa-gears',1,1),(4541,'U10019','M10001','UM10000936',NULL,'Home','dashboard.home','fa-home',1,0),(4542,'U10019','M10002','UM10000937',NULL,'Users','dashboard.user.*','fa-user',1,1),(4543,'U10019','M10003','UM10000938',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4544,'U10019','M10005','UM10000939',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4545,'U10019','M10008','UM10000940',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(4546,'U10019','M10012','UM10000941',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(4547,'U10019','M10013','UM10000942',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(4548,'U10019','M10014','UM10000943',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4549,'U10019','M10015','UM10000944',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(4575,'U10017','M10001','UM10000963',NULL,'Home','dashboard.home','fa-home',1,0),(4576,'U10017','M10002','UM10000964',NULL,'Users','dashboard.user.*','fa-user',1,1),(4577,'U10017','M10003','UM10000965',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4578,'U10017','M10005','UM10000966',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4579,'U10017','M10006','UM10000967',NULL,'Item Categories','dashboard.item_category.*','fa-cart-arrow-down',1,1),(4580,'U10017','M10007','UM10000968',NULL,'Item Type','dashboard.item_type.*','fa-opencart',1,1),(4581,'U10017','M10008','UM10000969',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(4582,'U10017','M10009','UM10000970',NULL,'JO','dashboard.job_order.*','fa-file-text',1,1),(4583,'U10017','M10012','UM10000971',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(4584,'U10017','M10014','UM10000972',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4585,'U10017','M10015','UM10000973',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(4586,'U10017','M10016','UM10000974',NULL,'Suppliers','dashboard.supplier.*','fa-shopping-cart',1,1),(4593,'U10030','M10001','UM10000981',NULL,'Home','dashboard.home','fa-home',1,0),(4594,'U10030','M10005','UM10000982',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4607,'U10031','M10001','UM10000989',NULL,'Home','dashboard.home','fa-home',1,0),(4608,'U10031','M10003','UM10000990',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4609,'U10031','M10005','UM10000991',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4610,'U10031','M10008','UM10000992',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(4611,'U10031','M10014','UM10000993',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4612,'U10031','M10015','UM10000994',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(4613,'U10032','M10001','UM10000995',NULL,'Home','dashboard.home','fa-home',1,0),(4614,'U10032','M10003','UM10000996',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4615,'U10032','M10005','UM10000997',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4616,'U10032','M10013','UM10000998',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(4617,'U10032','M10014','UM10000999',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4618,'U10032','M10017','UM10001000',NULL,'Task (Engineering)','dashboard.engr_task.*','fa-gears',1,1),(4627,'U10025','M10001','UM10001001',NULL,'Home','dashboard.home','fa-home',1,0),(4628,'U10025','M10003','UM10001002',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4629,'U10025','M10005','UM10001003',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4630,'U10025','M10008','UM10001004',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(4631,'U10025','M10013','UM10001005',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(4632,'U10025','M10014','UM10001006',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4633,'U10025','M10015','UM10001007',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(4634,'U10025','M10017','UM10001008',NULL,'Task (Engineering)','dashboard.engr_task.*','fa-gears',1,1),(4651,'U10018','M10001','UM10001025',NULL,'Home','dashboard.home','fa-home',1,0),(4652,'U10018','M10003','UM10001026',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4653,'U10018','M10005','UM10001027',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4654,'U10018','M10008','UM10001028',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(4655,'U10018','M10009','UM10001029',NULL,'JO','dashboard.job_order.*','fa-file-text',1,1),(4656,'U10018','M10015','UM10001030',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(4657,'U10023','M10001','UM10001031',NULL,'Home','dashboard.home','fa-home',1,0),(4658,'U10023','M10003','UM10001032',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4659,'U10023','M10005','UM10001033',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4660,'U10023','M10008','UM10001034',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(4661,'U10022','M10001','UM10001035',NULL,'Home','dashboard.home','fa-home',1,0),(4662,'U10022','M10005','UM10001036',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4663,'U10022','M10008','UM10001037',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(4664,'U10022','M10012','UM10001038',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(4665,'U10022','M10014','UM10001039',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4666,'U10022','M10015','UM10001040',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(4891,'U10015','M10001','UM10001041',NULL,'Home','dashboard.home','fa-home',1,0),(4892,'U10015','M10002','UM10001042',NULL,'Users','dashboard.user.*','fa-user',1,1),(4893,'U10015','M10003','UM10001043',NULL,'Profile','dashboard.profile.*','fa-user',0,0),(4894,'U10015','M10004','UM10001044',NULL,'Menus','dashboard.menu.*','fa-bars',1,1),(4895,'U10015','M10005','UM10001045',NULL,'Items','dashboard.item.*','fa-shopping-cart',1,1),(4896,'U10015','M10006','UM10001046',NULL,'Item Categories','dashboard.item_category.*','fa-cart-arrow-down',1,1),(4897,'U10015','M10007','UM10001047',NULL,'Item Type','dashboard.item_type.*','fa-opencart',1,1),(4898,'U10015','M10008','UM10001048',NULL,'PO','dashboard.purchase_order.*','fa-file-text',1,1),(4899,'U10015','M10009','UM10001049',NULL,'JO','dashboard.job_order.*','fa-file-text',1,1),(4900,'U10015','M10012','UM10001050',NULL,'Personnels','dashboard.personnel.*','fa-users',1,1),(4901,'U10015','M10013','UM10001051',NULL,'Machines','dashboard.machine.*','fa-gears',1,1),(4902,'U10015','M10014','UM10001052',NULL,'Tasks','dashboard.task.*','fa-tasks',1,1),(4903,'U10015','M10015','UM10001053',NULL,'Deliveries','dashboard.delivery.*','fa-truck',1,1),(4904,'U10015','M10016','UM10001054',NULL,'Suppliers','dashboard.supplier.*','fa-shopping-cart',1,1);
/*!40000 ALTER TABLE `su_user_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `su_user_submenus`
--

DROP TABLE IF EXISTS `su_user_submenus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `su_user_submenus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submenu_id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_menu_id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_nav` tinyint(1) DEFAULT NULL,
  `name` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_name` varchar(90) DEFAULT NULL,
  `route` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17390 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `su_user_submenus`
--

LOCK TABLES `su_user_submenus` WRITE;
/*!40000 ALTER TABLE `su_user_submenus` DISABLE KEYS */;
INSERT INTO `su_user_submenus` VALUES (11335,'U10016','SM10000101','UM10000624',0,'Profile Show',NULL,'dashboard.profile.details'),(11336,'U10016','SM10000102','UM10000624',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(11337,'U10016','SM10000103','UM10000624',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(11338,'U10016','SM10000104','UM10000624',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(11339,'U10016','SM10000105','UM10000624',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(11340,'U10016','SM10000201','UM10000625',1,'Item Create','Add','dashboard.item.create'),(11341,'U10016','SM10000202','UM10000625',0,'Item Store',NULL,'dashboard.item.store'),(11342,'U10016','SM10000203','UM10000625',1,'Item List','Manage','dashboard.item.index'),(11343,'U10016','SM10000204','UM10000625',0,'Item Edit',NULL,'dashboard.item.edit'),(11344,'U10016','SM10000205','UM10000625',0,'Item Update',NULL,'dashboard.item.update'),(11345,'U10016','SM10000206','UM10000625',0,'Item Delete',NULL,'dashboard.item.destroy'),(11346,'U10016','SM10000207','UM10000625',0,'Item Show',NULL,'dashboard.item.show'),(11347,'U10016','SM10000208','UM10000625',0,'Item Check - In',NULL,'dashboard.item.check_in'),(11348,'U10016','SM10000209','UM10000625',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(11349,'U10016','SM10000210','UM10000625',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(11350,'U10016','SM10000211','UM10000625',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(11351,'U10016','SM10000212','UM10000625',1,'Item Logs','Logs','dashboard.item.logs'),(11352,'U10016','SM10000213','UM10000625',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(11353,'U10016','SM10000214','UM10000625',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(11354,'U10016','SM10000215','UM10000625',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(11355,'U10016','SM10000216','UM10000625',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(11356,'U10016','SM10000217','UM10000625',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(11357,'U10016','SM10000218','UM10000625',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(11358,'U10016','SM10000351','UM10000626',1,'PO Create','Add','dashboard.purchase_order.create'),(11359,'U10016','SM10000352','UM10000626',0,'PO Store',NULL,'dashboard.purchase_order.store'),(11360,'U10016','SM10000353','UM10000626',1,'PO List','Manage','dashboard.purchase_order.index'),(11361,'U10016','SM10000354','UM10000626',0,'PO Edit',NULL,'dashboard.purchase_order.edit'),(11362,'U10016','SM10000355','UM10000626',0,'PO Update',NULL,'dashboard.purchase_order.update'),(11363,'U10016','SM10000356','UM10000626',0,'PO Delete',NULL,'dashboard.purchase_order.destroy'),(11364,'U10016','SM10000357','UM10000626',0,'PO Show',NULL,'dashboard.purchase_order.show'),(11365,'U10016','SM10000358','UM10000626',0,'PO Print',NULL,'dashboard.purchase_order.print'),(11366,'U10016','SM10000359','UM10000626',1,'PO Buffer','Buffers','dashboard.purchase_order.buffer'),(11367,'U10016','SM10000360','UM10000626',0,'PO Post to Process',NULL,'dashboard.purchase_order.to_process'),(11368,'U10016','SM10000361','UM10000626',0,'PO Post to Buffer',NULL,'dashboard.purchase_order.to_buffer'),(11369,'U10016','SM10000401','UM10000627',1,'JO Create','Generate','dashboard.job_order.create'),(11370,'U10016','SM10000402','UM10000627',0,'JO Show',NULL,'dashboard.job_order.show'),(11371,'U10016','SM10000403','UM10000627',0,'JO Generate',NULL,'dashboard.job_order.generate'),(11372,'U10016','SM10000404','UM10000627',0,'JO Generate Fill',NULL,'dashboard.job_order.generate_fill'),(11373,'U10016','SM10000405','UM10000627',0,'JO Generate Fill Post',NULL,'dashboard.job_order.generate_fill_post'),(11374,'U10016','SM10000406','UM10000627',0,'JO Print',NULL,'dashboard.job_order.print'),(11375,'U10016','SM10000407','UM10000627',1,'JO List','Manage','dashboard.job_order.index'),(11376,'U10016','SM10000408','UM10000627',0,'JO Confirm Ready for Delivery',NULL,'dashboard.job_order.confirm_rfd'),(11377,'U10016','SM10000551','UM10000628',1,'Personnel Create','Add','dashboard.personnel.create'),(11378,'U10016','SM10000552','UM10000628',0,'Personnel Store',NULL,'dashboard.personnel.store'),(11379,'U10016','SM10000553','UM10000628',1,'Personnel List','Manage','dashboard.personnel.index'),(11380,'U10016','SM10000554','UM10000628',0,'Personnel Edit',NULL,'dashboard.personnel.edit'),(11381,'U10016','SM10000555','UM10000628',0,'Personnel Update',NULL,'dashboard.personnel.update'),(11382,'U10016','SM10000556','UM10000628',0,'Personnel Delete',NULL,'dashboard.personnel.destroy'),(11383,'U10016','SM10000557','UM10000628',0,'Personnel View Avatar',NULL,'dashboard.personnel.view_avatar'),(11384,'U10016','SM10000601','UM10000629',1,'Machine Create','Add','dashboard.machine.create'),(11385,'U10016','SM10000602','UM10000629',0,'Machine Store',NULL,'dashboard.machine.store'),(11386,'U10016','SM10000603','UM10000629',1,'Machine List','Manage','dashboard.machine.index'),(11387,'U10016','SM10000604','UM10000629',0,'Machine Edit',NULL,'dashboard.machine.edit'),(11388,'U10016','SM10000605','UM10000629',0,'Machine Update',NULL,'dashboard.machine.update'),(11389,'U10016','SM10000606','UM10000629',0,'Machine Delete',NULL,'dashboard.machine.destroy'),(11390,'U10016','SM10000651','UM10000630',1,'Task Create','New','dashboard.task.create'),(11391,'U10016','SM10000652','UM10000630',0,'Task Store',NULL,'dashboard.task.store'),(11392,'U10016','SM10000653','UM10000630',1,'Task List','Manage','dashboard.task.index'),(11393,'U10016','SM10000654','UM10000630',0,'Task Edit',NULL,'dashboard.task.edit'),(11394,'U10016','SM10000655','UM10000630',0,'Task Update',NULL,'dashboard.task.update'),(11395,'U10016','SM10000656','UM10000630',0,'Task Delete',NULL,'dashboard.task.destroy'),(11396,'U10016','SM10000657','UM10000630',1,'Task Scheduling','Scheduling','dashboard.task.scheduling'),(11397,'U10016','SM10000658','UM10000630',0,'Task Update Finished',NULL,'dashboard.task.update_finished'),(11398,'U10016','SM10000659','UM10000630',0,'Task Rate Personnel',NULL,'dashboard.task.rate_personnel'),(11399,'U10016','SM10000670','UM10000630',0,'Task Rate Personnel Post',NULL,'dashboard.task.rate_personnel_post'),(11400,'U10016','SM10000671','UM10000630',1,'Task Calendar','Calendar','dashboard.task.calendar'),(11401,'U10016','SM10000672','UM10000630',0,'Task Update Unfinished',NULL,'dashboard.task.update_unfinished'),(11402,'U10016','SM10000701','UM10000631',1,'Delivery Create','Add','dashboard.delivery.create'),(11403,'U10016','SM10000702','UM10000631',0,'Delivery Store',NULL,'dashboard.delivery.store'),(11404,'U10016','SM10000703','UM10000631',1,'Delivery List','Manage','dashboard.delivery.index'),(11405,'U10016','SM10000704','UM10000631',0,'Delivery Edit',NULL,'dashboard.delivery.edit'),(11406,'U10016','SM10000705','UM10000631',0,'Delivery Update',NULL,'dashboard.delivery.update'),(11407,'U10016','SM10000706','UM10000631',0,'Delivery Delete',NULL,'dashboard.delivery.destroy'),(11408,'U10016','SM10000707','UM10000631',0,'Delivery Details',NULL,'dashboard.delivery.show'),(11409,'U10016','SM10000708','UM10000631',0,'Delivery Confirm Delivery',NULL,'dashboard.delivery.confirm_delivery'),(11410,'U10016','SM10000709','UM10000631',0,'Delivery Confirm Delivered Post',NULL,'dashboard.delivery.confirm_delivered_post'),(11411,'U10016','SM10000710','UM10000631',0,'Delivery Confirm Returned Post',NULL,'dashboard.delivery.confirm_returned_post'),(11412,'U10016','SM10000711','UM10000631',0,'Delivery Report Print',NULL,'dashboard.delivery.print'),(11413,'U10016','SM10000751','UM10000632',1,'Supplier Create','New','dashboard.supplier.create'),(11414,'U10016','SM10000752','UM10000632',0,'Supplier Store',NULL,'dashboard.supplier.store'),(11415,'U10016','SM10000753','UM10000632',1,'Supplier List','Manage','dashboard.supplier.index'),(11416,'U10016','SM10000754','UM10000632',0,'Supplier Edit',NULL,'dashboard.supplier.edit'),(11417,'U10016','SM10000755','UM10000632',0,'Supplier Update',NULL,'dashboard.supplier.update'),(11418,'U10016','SM10000756','UM10000632',0,'Supplier Delete',NULL,'dashboard.supplier.destroy'),(11419,'U10016','SM10000801','UM10000633',1,'Task Engr Create Job Order','New Job Order','dashboard.engr_task.create_jo'),(11420,'U10016','SM10000802','UM10000633',1,'Task Engr Create Dalily Activity','New Daily Activity','dashboard.engr_task.create_da'),(11421,'U10016','SM10000803','UM10000633',0,'Task Engr Store',NULL,'dashboard.engr_task.store'),(11422,'U10016','SM10000804','UM10000633',1,'Task Engr List','Manage','dashboard.engr_task.index'),(11423,'U10016','SM10000805','UM10000633',0,'Task Engr Edit',NULL,'dashboard.engr_task.edit'),(11424,'U10016','SM10000806','UM10000633',0,'Task Engr Update',NULL,'dashboard.engr_task.update'),(11425,'U10016','SM10000807','UM10000633',0,'Task Engr Delete',NULL,'dashboard.engr_task.destroy'),(11426,'U10016','SM10000808','UM10000633',1,'Task Engr Scheduling','Scheduling','dashboard.engr_task.scheduling'),(11427,'U10016','SM10000809','UM10000633',0,'Task Engr Update Finished',NULL,'dashboard.engr_task.update_finished'),(11428,'U10016','SM10000810','UM10000633',0,'Task Engr Update Unfinished',NULL,'dashboard.engr_task.update_unfinished'),(11429,'U10016','SM10000811','UM10000633',0,'Task Engr Rate Personnel',NULL,'dashboard.engr_task.rate_personnel'),(11430,'U10016','SM10000812','UM10000633',0,'Task Engr Rate Personnel Post',NULL,'dashboard.engr_task.rate_personnel_post'),(11431,'U10016','SM10000813','UM10000633',1,'Task Engr Calendar','Calendar','dashboard.engr_task.calendar'),(12018,'U10021','SM10000101','UM10000691',0,'Profile Show',NULL,'dashboard.profile.details'),(12019,'U10021','SM10000102','UM10000691',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(12020,'U10021','SM10000103','UM10000691',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(12021,'U10021','SM10000104','UM10000691',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(12022,'U10021','SM10000105','UM10000691',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(12023,'U10021','SM10000203','UM10000692',1,'Item List','Manage','dashboard.item.index'),(12024,'U10021','SM10000207','UM10000692',0,'Item Show',NULL,'dashboard.item.show'),(12025,'U10021','SM10000751','UM10000693',1,'Supplier Create','New','dashboard.supplier.create'),(12026,'U10021','SM10000752','UM10000693',0,'Supplier Store',NULL,'dashboard.supplier.store'),(12027,'U10021','SM10000753','UM10000693',1,'Supplier List','Manage','dashboard.supplier.index'),(12028,'U10021','SM10000754','UM10000693',0,'Supplier Edit',NULL,'dashboard.supplier.edit'),(12029,'U10021','SM10000755','UM10000693',0,'Supplier Update',NULL,'dashboard.supplier.update'),(12030,'U10021','SM10000756','UM10000693',0,'Supplier Delete',NULL,'dashboard.supplier.destroy'),(12031,'U10020','SM10000101','UM10000695',0,'Profile Show',NULL,'dashboard.profile.details'),(12032,'U10020','SM10000102','UM10000695',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(12033,'U10020','SM10000103','UM10000695',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(12034,'U10020','SM10000104','UM10000695',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(12035,'U10020','SM10000105','UM10000695',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(12036,'U10020','SM10000201','UM10000696',1,'Item Create','Add','dashboard.item.create'),(12037,'U10020','SM10000202','UM10000696',0,'Item Store',NULL,'dashboard.item.store'),(12038,'U10020','SM10000203','UM10000696',1,'Item List','Manage','dashboard.item.index'),(12039,'U10020','SM10000204','UM10000696',0,'Item Edit',NULL,'dashboard.item.edit'),(12040,'U10020','SM10000205','UM10000696',0,'Item Update',NULL,'dashboard.item.update'),(12041,'U10020','SM10000206','UM10000696',0,'Item Delete',NULL,'dashboard.item.destroy'),(12042,'U10020','SM10000207','UM10000696',0,'Item Show',NULL,'dashboard.item.show'),(12043,'U10020','SM10000208','UM10000696',0,'Item Check - In',NULL,'dashboard.item.check_in'),(12044,'U10020','SM10000209','UM10000696',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(12045,'U10020','SM10000210','UM10000696',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(12046,'U10020','SM10000211','UM10000696',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(12047,'U10020','SM10000212','UM10000696',1,'Item Logs','Logs','dashboard.item.logs'),(12048,'U10020','SM10000213','UM10000696',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(12049,'U10020','SM10000214','UM10000696',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(12050,'U10020','SM10000215','UM10000696',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(12051,'U10020','SM10000216','UM10000696',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(12052,'U10020','SM10000217','UM10000696',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(12053,'U10020','SM10000218','UM10000696',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(12054,'U10020','SM10000351','UM10000697',1,'PO Create','Add','dashboard.purchase_order.create'),(12055,'U10020','SM10000352','UM10000697',0,'PO Store',NULL,'dashboard.purchase_order.store'),(12056,'U10020','SM10000353','UM10000697',1,'PO List','Manage','dashboard.purchase_order.index'),(12057,'U10020','SM10000354','UM10000697',0,'PO Edit',NULL,'dashboard.purchase_order.edit'),(12058,'U10020','SM10000355','UM10000697',0,'PO Update',NULL,'dashboard.purchase_order.update'),(12059,'U10020','SM10000356','UM10000697',0,'PO Delete',NULL,'dashboard.purchase_order.destroy'),(12060,'U10020','SM10000357','UM10000697',0,'PO Show',NULL,'dashboard.purchase_order.show'),(12061,'U10020','SM10000358','UM10000697',0,'PO Print',NULL,'dashboard.purchase_order.print'),(12062,'U10020','SM10000359','UM10000697',1,'PO Buffer','Buffers','dashboard.purchase_order.buffer'),(12063,'U10020','SM10000360','UM10000697',0,'PO Post to Process',NULL,'dashboard.purchase_order.to_process'),(12064,'U10020','SM10000361','UM10000697',0,'PO Post to Buffer',NULL,'dashboard.purchase_order.to_buffer'),(12065,'U10020','SM10000402','UM10000698',0,'JO Show',NULL,'dashboard.job_order.show'),(12066,'U10020','SM10000407','UM10000698',1,'JO List','Manage','dashboard.job_order.index'),(12067,'U10020','SM10000653','UM10000699',1,'Task List','Manage','dashboard.task.index'),(12068,'U10020','SM10000703','UM10000700',1,'Delivery List','Manage','dashboard.delivery.index'),(12069,'U10020','SM10000707','UM10000700',0,'Delivery Details',NULL,'dashboard.delivery.show'),(12796,'U10026','SM10000101','UM10000761',0,'Profile Show',NULL,'dashboard.profile.details'),(12797,'U10026','SM10000102','UM10000761',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(12798,'U10026','SM10000103','UM10000761',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(12799,'U10026','SM10000104','UM10000761',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(12800,'U10026','SM10000105','UM10000761',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(12801,'U10026','SM10000353','UM10000762',1,'PO List','Manage','dashboard.purchase_order.index'),(12802,'U10026','SM10000357','UM10000762',0,'PO Show',NULL,'dashboard.purchase_order.show'),(12803,'U10026','SM10000551','UM10000763',1,'Personnel Create','Add','dashboard.personnel.create'),(12804,'U10026','SM10000552','UM10000763',0,'Personnel Store',NULL,'dashboard.personnel.store'),(12805,'U10026','SM10000553','UM10000763',1,'Personnel List','Manage','dashboard.personnel.index'),(12806,'U10026','SM10000554','UM10000763',0,'Personnel Edit',NULL,'dashboard.personnel.edit'),(12807,'U10026','SM10000555','UM10000763',0,'Personnel Update',NULL,'dashboard.personnel.update'),(12808,'U10026','SM10000556','UM10000763',0,'Personnel Delete',NULL,'dashboard.personnel.destroy'),(12809,'U10026','SM10000557','UM10000763',0,'Personnel View Avatar',NULL,'dashboard.personnel.view_avatar'),(12810,'U10026','SM10000653','UM10000764',1,'Task List','Manage','dashboard.task.index'),(12811,'U10026','SM10000657','UM10000764',1,'Task Scheduling','Scheduling','dashboard.task.scheduling'),(12812,'U10026','SM10000658','UM10000764',0,'Task Update Finished',NULL,'dashboard.task.update_finished'),(12813,'U10026','SM10000659','UM10000764',0,'Task Rate Personnel',NULL,'dashboard.task.rate_personnel'),(12814,'U10026','SM10000670','UM10000764',0,'Task Rate Personnel Post',NULL,'dashboard.task.rate_personnel_post'),(12815,'U10026','SM10000671','UM10000764',1,'Task Calendar','Calendar','dashboard.task.calendar'),(12816,'U10026','SM10000672','UM10000764',0,'Task Update Unfinished',NULL,'dashboard.task.update_unfinished'),(12817,'U10026','SM10000703','UM10000765',1,'Delivery List','Manage','dashboard.delivery.index'),(13220,'U10029','SM10000101','UM10000816',0,'Profile Show',NULL,'dashboard.profile.details'),(13221,'U10029','SM10000102','UM10000816',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(13222,'U10029','SM10000103','UM10000816',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(13223,'U10029','SM10000104','UM10000816',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(13224,'U10029','SM10000105','UM10000816',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(13225,'U10029','SM10000201','UM10000817',1,'Item Create','Add','dashboard.item.create'),(13226,'U10029','SM10000202','UM10000817',0,'Item Store',NULL,'dashboard.item.store'),(13227,'U10029','SM10000203','UM10000817',1,'Item List','Manage','dashboard.item.index'),(13228,'U10029','SM10000204','UM10000817',0,'Item Edit',NULL,'dashboard.item.edit'),(13229,'U10029','SM10000205','UM10000817',0,'Item Update',NULL,'dashboard.item.update'),(13230,'U10029','SM10000206','UM10000817',0,'Item Delete',NULL,'dashboard.item.destroy'),(13231,'U10029','SM10000207','UM10000817',0,'Item Show',NULL,'dashboard.item.show'),(13232,'U10029','SM10000208','UM10000817',0,'Item Check - In',NULL,'dashboard.item.check_in'),(13233,'U10029','SM10000209','UM10000817',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(13234,'U10029','SM10000210','UM10000817',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(13235,'U10029','SM10000211','UM10000817',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(13236,'U10029','SM10000212','UM10000817',1,'Item Logs','Logs','dashboard.item.logs'),(13237,'U10029','SM10000213','UM10000817',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(13238,'U10029','SM10000214','UM10000817',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(13239,'U10029','SM10000215','UM10000817',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(13240,'U10029','SM10000216','UM10000817',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(13241,'U10029','SM10000217','UM10000817',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(13242,'U10029','SM10000218','UM10000817',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(13243,'U10029','SM10000251','UM10000818',1,'Item Category Create','Add','dashboard.item_category.create'),(13244,'U10029','SM10000252','UM10000818',0,'Item Category Store',NULL,'dashboard.item_category.store'),(13245,'U10029','SM10000253','UM10000818',1,'Item Category List','Manage','dashboard.item_category.index'),(13246,'U10029','SM10000254','UM10000818',0,'Item Category Edit',NULL,'dashboard.item_category.edit'),(13247,'U10029','SM10000255','UM10000818',0,'Item Category Update',NULL,'dashboard.item_category.update'),(13248,'U10029','SM10000256','UM10000818',0,'Item Category Delete',NULL,'dashboard.item_category.destroy'),(13249,'U10029','SM10000551','UM10000819',1,'Personnel Create','Add','dashboard.personnel.create'),(13250,'U10029','SM10000552','UM10000819',0,'Personnel Store',NULL,'dashboard.personnel.store'),(13251,'U10029','SM10000553','UM10000819',1,'Personnel List','Manage','dashboard.personnel.index'),(13252,'U10029','SM10000554','UM10000819',0,'Personnel Edit',NULL,'dashboard.personnel.edit'),(13253,'U10029','SM10000555','UM10000819',0,'Personnel Update',NULL,'dashboard.personnel.update'),(13254,'U10029','SM10000556','UM10000819',0,'Personnel Delete',NULL,'dashboard.personnel.destroy'),(13255,'U10029','SM10000557','UM10000819',0,'Personnel View Avatar',NULL,'dashboard.personnel.view_avatar'),(13256,'U10029','SM10000601','UM10000820',1,'Machine Create','Add','dashboard.machine.create'),(13257,'U10029','SM10000602','UM10000820',0,'Machine Store',NULL,'dashboard.machine.store'),(13258,'U10029','SM10000603','UM10000820',1,'Machine List','Manage','dashboard.machine.index'),(13259,'U10029','SM10000604','UM10000820',0,'Machine Edit',NULL,'dashboard.machine.edit'),(13260,'U10029','SM10000605','UM10000820',0,'Machine Update',NULL,'dashboard.machine.update'),(13261,'U10029','SM10000606','UM10000820',0,'Machine Delete',NULL,'dashboard.machine.destroy'),(13262,'U10029','SM10000801','UM10000821',1,'Task Engr Create Job Order','New Job Order','dashboard.engr_task.create_jo'),(13263,'U10029','SM10000802','UM10000821',1,'Task Engr Create Dalily Activity','New Daily Activity','dashboard.engr_task.create_da'),(13264,'U10029','SM10000803','UM10000821',0,'Task Engr Store',NULL,'dashboard.engr_task.store'),(13265,'U10029','SM10000804','UM10000821',1,'Task Engr List','Manage','dashboard.engr_task.index'),(13266,'U10029','SM10000805','UM10000821',0,'Task Engr Edit',NULL,'dashboard.engr_task.edit'),(13267,'U10029','SM10000806','UM10000821',0,'Task Engr Update',NULL,'dashboard.engr_task.update'),(13268,'U10029','SM10000807','UM10000821',0,'Task Engr Delete',NULL,'dashboard.engr_task.destroy'),(13269,'U10029','SM10000808','UM10000821',1,'Task Engr Scheduling','Scheduling','dashboard.engr_task.scheduling'),(13270,'U10029','SM10000813','UM10000821',1,'Task Engr Calendar','Calendar','dashboard.engr_task.calendar'),(13271,'U10028','SM10000101','UM10000823',0,'Profile Show',NULL,'dashboard.profile.details'),(13272,'U10028','SM10000102','UM10000823',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(13273,'U10028','SM10000103','UM10000823',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(13274,'U10028','SM10000104','UM10000823',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(13275,'U10028','SM10000105','UM10000823',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(13276,'U10028','SM10000201','UM10000824',1,'Item Create','Add','dashboard.item.create'),(13277,'U10028','SM10000202','UM10000824',0,'Item Store',NULL,'dashboard.item.store'),(13278,'U10028','SM10000203','UM10000824',1,'Item List','Manage','dashboard.item.index'),(13279,'U10028','SM10000204','UM10000824',0,'Item Edit',NULL,'dashboard.item.edit'),(13280,'U10028','SM10000205','UM10000824',0,'Item Update',NULL,'dashboard.item.update'),(13281,'U10028','SM10000206','UM10000824',0,'Item Delete',NULL,'dashboard.item.destroy'),(13282,'U10028','SM10000207','UM10000824',0,'Item Show',NULL,'dashboard.item.show'),(13283,'U10028','SM10000208','UM10000824',0,'Item Check - In',NULL,'dashboard.item.check_in'),(13284,'U10028','SM10000209','UM10000824',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(13285,'U10028','SM10000210','UM10000824',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(13286,'U10028','SM10000211','UM10000824',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(13287,'U10028','SM10000212','UM10000824',1,'Item Logs','Logs','dashboard.item.logs'),(13288,'U10028','SM10000213','UM10000824',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(13289,'U10028','SM10000214','UM10000824',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(13290,'U10028','SM10000215','UM10000824',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(13291,'U10028','SM10000216','UM10000824',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(13292,'U10028','SM10000217','UM10000824',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(13293,'U10028','SM10000218','UM10000824',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(13294,'U10028','SM10000251','UM10000825',1,'Item Category Create','Add','dashboard.item_category.create'),(13295,'U10028','SM10000252','UM10000825',0,'Item Category Store',NULL,'dashboard.item_category.store'),(13296,'U10028','SM10000253','UM10000825',1,'Item Category List','Manage','dashboard.item_category.index'),(13297,'U10028','SM10000254','UM10000825',0,'Item Category Edit',NULL,'dashboard.item_category.edit'),(13298,'U10028','SM10000255','UM10000825',0,'Item Category Update',NULL,'dashboard.item_category.update'),(13299,'U10028','SM10000256','UM10000825',0,'Item Category Delete',NULL,'dashboard.item_category.destroy'),(13300,'U10028','SM10000551','UM10000826',1,'Personnel Create','Add','dashboard.personnel.create'),(13301,'U10028','SM10000552','UM10000826',0,'Personnel Store',NULL,'dashboard.personnel.store'),(13302,'U10028','SM10000553','UM10000826',1,'Personnel List','Manage','dashboard.personnel.index'),(13303,'U10028','SM10000554','UM10000826',0,'Personnel Edit',NULL,'dashboard.personnel.edit'),(13304,'U10028','SM10000555','UM10000826',0,'Personnel Update',NULL,'dashboard.personnel.update'),(13305,'U10028','SM10000556','UM10000826',0,'Personnel Delete',NULL,'dashboard.personnel.destroy'),(13306,'U10028','SM10000557','UM10000826',0,'Personnel View Avatar',NULL,'dashboard.personnel.view_avatar'),(13307,'U10028','SM10000601','UM10000827',1,'Machine Create','Add','dashboard.machine.create'),(13308,'U10028','SM10000602','UM10000827',0,'Machine Store',NULL,'dashboard.machine.store'),(13309,'U10028','SM10000603','UM10000827',1,'Machine List','Manage','dashboard.machine.index'),(13310,'U10028','SM10000604','UM10000827',0,'Machine Edit',NULL,'dashboard.machine.edit'),(13311,'U10028','SM10000605','UM10000827',0,'Machine Update',NULL,'dashboard.machine.update'),(13312,'U10028','SM10000606','UM10000827',0,'Machine Delete',NULL,'dashboard.machine.destroy'),(13313,'U10028','SM10000651','UM10000828',1,'Task Create','New','dashboard.task.create'),(13314,'U10028','SM10000652','UM10000828',0,'Task Store',NULL,'dashboard.task.store'),(13315,'U10028','SM10000653','UM10000828',1,'Task List','Manage','dashboard.task.index'),(13316,'U10028','SM10000654','UM10000828',0,'Task Edit',NULL,'dashboard.task.edit'),(13317,'U10028','SM10000655','UM10000828',0,'Task Update',NULL,'dashboard.task.update'),(13318,'U10028','SM10000656','UM10000828',0,'Task Delete',NULL,'dashboard.task.destroy'),(13319,'U10028','SM10000657','UM10000828',1,'Task Scheduling','Scheduling','dashboard.task.scheduling'),(13320,'U10028','SM10000671','UM10000828',1,'Task Calendar','Calendar','dashboard.task.calendar'),(13321,'U10028','SM10000801','UM10000829',1,'Task Engr Create Job Order','New Job Order','dashboard.engr_task.create_jo'),(13322,'U10028','SM10000802','UM10000829',1,'Task Engr Create Dalily Activity','New Daily Activity','dashboard.engr_task.create_da'),(13323,'U10028','SM10000803','UM10000829',0,'Task Engr Store',NULL,'dashboard.engr_task.store'),(13324,'U10028','SM10000804','UM10000829',1,'Task Engr List','Manage','dashboard.engr_task.index'),(13325,'U10028','SM10000805','UM10000829',0,'Task Engr Edit',NULL,'dashboard.engr_task.edit'),(13326,'U10028','SM10000806','UM10000829',0,'Task Engr Update',NULL,'dashboard.engr_task.update'),(13327,'U10028','SM10000807','UM10000829',0,'Task Engr Delete',NULL,'dashboard.engr_task.destroy'),(13328,'U10028','SM10000808','UM10000829',1,'Task Engr Scheduling','Scheduling','dashboard.engr_task.scheduling'),(13329,'U10028','SM10000813','UM10000829',1,'Task Engr Calendar','Calendar','dashboard.engr_task.calendar'),(13330,'U10027','SM10000101','UM10000831',0,'Profile Show',NULL,'dashboard.profile.details'),(13331,'U10027','SM10000102','UM10000831',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(13332,'U10027','SM10000103','UM10000831',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(13333,'U10027','SM10000104','UM10000831',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(13334,'U10027','SM10000105','UM10000831',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(13335,'U10027','SM10000151','UM10000832',1,'Menu Create','Add','dashboard.menu.create'),(13336,'U10027','SM10000152','UM10000832',0,'Menu Store','','dashboard.menu.store'),(13337,'U10027','SM10000153','UM10000832',1,'Menu List','Manage','dashboard.menu.index'),(13338,'U10027','SM10000154','UM10000832',0,'Menu Edit',NULL,'dashboard.menu.edit'),(13339,'U10027','SM10000155','UM10000832',0,'Menu Update',NULL,'dashboard.menu.update'),(13340,'U10027','SM10000156','UM10000832',0,'Menu Delete',NULL,'dashboard.menu.destroy'),(13341,'U10027','SM10000201','UM10000833',1,'Item Create','Add','dashboard.item.create'),(13342,'U10027','SM10000202','UM10000833',0,'Item Store',NULL,'dashboard.item.store'),(13343,'U10027','SM10000203','UM10000833',1,'Item List','Manage','dashboard.item.index'),(13344,'U10027','SM10000204','UM10000833',0,'Item Edit',NULL,'dashboard.item.edit'),(13345,'U10027','SM10000205','UM10000833',0,'Item Update',NULL,'dashboard.item.update'),(13346,'U10027','SM10000206','UM10000833',0,'Item Delete',NULL,'dashboard.item.destroy'),(13347,'U10027','SM10000207','UM10000833',0,'Item Show',NULL,'dashboard.item.show'),(13348,'U10027','SM10000208','UM10000833',0,'Item Check - In',NULL,'dashboard.item.check_in'),(13349,'U10027','SM10000209','UM10000833',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(13350,'U10027','SM10000210','UM10000833',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(13351,'U10027','SM10000211','UM10000833',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(13352,'U10027','SM10000212','UM10000833',1,'Item Logs','Logs','dashboard.item.logs'),(13353,'U10027','SM10000213','UM10000833',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(13354,'U10027','SM10000214','UM10000833',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(13355,'U10027','SM10000215','UM10000833',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(13356,'U10027','SM10000216','UM10000833',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(13357,'U10027','SM10000217','UM10000833',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(13358,'U10027','SM10000218','UM10000833',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(13359,'U10027','SM10000251','UM10000834',1,'Item Category Create','Add','dashboard.item_category.create'),(13360,'U10027','SM10000252','UM10000834',0,'Item Category Store',NULL,'dashboard.item_category.store'),(13361,'U10027','SM10000253','UM10000834',1,'Item Category List','Manage','dashboard.item_category.index'),(13362,'U10027','SM10000254','UM10000834',0,'Item Category Edit',NULL,'dashboard.item_category.edit'),(13363,'U10027','SM10000255','UM10000834',0,'Item Category Update',NULL,'dashboard.item_category.update'),(13364,'U10027','SM10000256','UM10000834',0,'Item Category Delete',NULL,'dashboard.item_category.destroy'),(13365,'U10027','SM10000301','UM10000835',1,'Item Type Create','Add','dashboard.item_type.create'),(13366,'U10027','SM10000302','UM10000835',0,'Item Type Store',NULL,'dashboard.item_type.store'),(13367,'U10027','SM10000303','UM10000835',1,'Item Type List','Manage','dashboard.item_type.index'),(13368,'U10027','SM10000304','UM10000835',0,'Item Type Edit',NULL,'dashboard.item_type.edit'),(13369,'U10027','SM10000305','UM10000835',0,'Item Type Update',NULL,'dashboard.item_type.update'),(13370,'U10027','SM10000306','UM10000835',0,'Item Type Delete',NULL,'dashboard.item_type.destroy'),(13371,'U10027','SM10000551','UM10000836',1,'Personnel Create','Add','dashboard.personnel.create'),(13372,'U10027','SM10000552','UM10000836',0,'Personnel Store',NULL,'dashboard.personnel.store'),(13373,'U10027','SM10000553','UM10000836',1,'Personnel List','Manage','dashboard.personnel.index'),(13374,'U10027','SM10000554','UM10000836',0,'Personnel Edit',NULL,'dashboard.personnel.edit'),(13375,'U10027','SM10000555','UM10000836',0,'Personnel Update',NULL,'dashboard.personnel.update'),(13376,'U10027','SM10000556','UM10000836',0,'Personnel Delete',NULL,'dashboard.personnel.destroy'),(13377,'U10027','SM10000557','UM10000836',0,'Personnel View Avatar',NULL,'dashboard.personnel.view_avatar'),(13378,'U10027','SM10000601','UM10000837',1,'Machine Create','Add','dashboard.machine.create'),(13379,'U10027','SM10000602','UM10000837',0,'Machine Store',NULL,'dashboard.machine.store'),(13380,'U10027','SM10000603','UM10000837',1,'Machine List','Manage','dashboard.machine.index'),(13381,'U10027','SM10000604','UM10000837',0,'Machine Edit',NULL,'dashboard.machine.edit'),(13382,'U10027','SM10000605','UM10000837',0,'Machine Update',NULL,'dashboard.machine.update'),(13383,'U10027','SM10000606','UM10000837',0,'Machine Delete',NULL,'dashboard.machine.destroy'),(13384,'U10027','SM10000651','UM10000838',1,'Task Create','New','dashboard.task.create'),(13385,'U10027','SM10000652','UM10000838',0,'Task Store',NULL,'dashboard.task.store'),(13386,'U10027','SM10000653','UM10000838',1,'Task List','Manage','dashboard.task.index'),(13387,'U10027','SM10000654','UM10000838',0,'Task Edit',NULL,'dashboard.task.edit'),(13388,'U10027','SM10000655','UM10000838',0,'Task Update',NULL,'dashboard.task.update'),(13389,'U10027','SM10000656','UM10000838',0,'Task Delete',NULL,'dashboard.task.destroy'),(13390,'U10027','SM10000657','UM10000838',1,'Task Scheduling','Scheduling','dashboard.task.scheduling'),(13391,'U10027','SM10000658','UM10000838',0,'Task Update Finished',NULL,'dashboard.task.update_finished'),(13392,'U10027','SM10000659','UM10000838',0,'Task Rate Personnel',NULL,'dashboard.task.rate_personnel'),(13393,'U10027','SM10000670','UM10000838',0,'Task Rate Personnel Post',NULL,'dashboard.task.rate_personnel_post'),(13394,'U10027','SM10000671','UM10000838',1,'Task Calendar','Calendar','dashboard.task.calendar'),(13395,'U10027','SM10000672','UM10000838',0,'Task Update Unfinished',NULL,'dashboard.task.update_unfinished'),(13396,'U10027','SM10000801','UM10000839',1,'Task Engr Create Job Order','New Job Order','dashboard.engr_task.create_jo'),(13397,'U10027','SM10000802','UM10000839',1,'Task Engr Create Dalily Activity','New Daily Activity','dashboard.engr_task.create_da'),(13398,'U10027','SM10000803','UM10000839',0,'Task Engr Store',NULL,'dashboard.engr_task.store'),(13399,'U10027','SM10000804','UM10000839',1,'Task Engr List','Manage','dashboard.engr_task.index'),(13400,'U10027','SM10000805','UM10000839',0,'Task Engr Edit',NULL,'dashboard.engr_task.edit'),(13401,'U10027','SM10000806','UM10000839',0,'Task Engr Update',NULL,'dashboard.engr_task.update'),(13402,'U10027','SM10000807','UM10000839',0,'Task Engr Delete',NULL,'dashboard.engr_task.destroy'),(13403,'U10027','SM10000808','UM10000839',1,'Task Engr Scheduling','Scheduling','dashboard.engr_task.scheduling'),(13404,'U10027','SM10000809','UM10000839',0,'Task Engr Update Finished',NULL,'dashboard.engr_task.update_finished'),(13405,'U10027','SM10000810','UM10000839',0,'Task Engr Update Unfinished',NULL,'dashboard.engr_task.update_unfinished'),(13406,'U10027','SM10000811','UM10000839',0,'Task Engr Rate Personnel',NULL,'dashboard.engr_task.rate_personnel'),(13407,'U10027','SM10000812','UM10000839',0,'Task Engr Rate Personnel Post',NULL,'dashboard.engr_task.rate_personnel_post'),(13408,'U10027','SM10000813','UM10000839',1,'Task Engr Calendar','Calendar','dashboard.engr_task.calendar'),(13409,'U10024','SM10000001','UM10000841',1,'User Create','Add','dashboard.user.create'),(13410,'U10024','SM10000002','UM10000841',1,'User List','Manage','dashboard.user.index'),(13411,'U10024','SM10000003','UM10000841',0,'User Store',NULL,'dashboard.user.store'),(13412,'U10024','SM10000004','UM10000841',0,'User Show',NULL,'dashboard.user.show'),(13413,'U10024','SM10000005','UM10000841',0,'User Edit',NULL,'dashboard.user.edit'),(13414,'U10024','SM10000006','UM10000841',0,'User Update',NULL,'dashboard.user.update'),(13415,'U10024','SM10000008','UM10000841',0,'User Activate',NULL,'dashboard.user.activate'),(13416,'U10024','SM10000009','UM10000841',0,'User Deactivate',NULL,'dashboard.user.deactivate'),(13417,'U10024','SM10000010','UM10000841',0,'User Logout',NULL,'dashboard.user.logout'),(13418,'U10024','SM10000011','UM10000841',0,'User Reset Password',NULL,'dashboard.user.reset_password'),(13419,'U10024','SM10000012','UM10000841',0,'User Reset Password Post',NULL,'dashboard.user.reset_password_post'),(13420,'U10024','SM10000013','UM10000841',0,'User View Avatar',NULL,'dashboard.user.view_avatar'),(13421,'U10024','SM10000101','UM10000842',0,'Profile Show',NULL,'dashboard.profile.details'),(13422,'U10024','SM10000102','UM10000842',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(13423,'U10024','SM10000103','UM10000842',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(13424,'U10024','SM10000104','UM10000842',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(13425,'U10024','SM10000105','UM10000842',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(13426,'U10024','SM10000151','UM10000843',1,'Menu Create','Add','dashboard.menu.create'),(13427,'U10024','SM10000152','UM10000843',0,'Menu Store','','dashboard.menu.store'),(13428,'U10024','SM10000153','UM10000843',1,'Menu List','Manage','dashboard.menu.index'),(13429,'U10024','SM10000154','UM10000843',0,'Menu Edit',NULL,'dashboard.menu.edit'),(13430,'U10024','SM10000155','UM10000843',0,'Menu Update',NULL,'dashboard.menu.update'),(13431,'U10024','SM10000156','UM10000843',0,'Menu Delete',NULL,'dashboard.menu.destroy'),(13432,'U10024','SM10000201','UM10000844',1,'Item Create','Add','dashboard.item.create'),(13433,'U10024','SM10000202','UM10000844',0,'Item Store',NULL,'dashboard.item.store'),(13434,'U10024','SM10000203','UM10000844',1,'Item List','Manage','dashboard.item.index'),(13435,'U10024','SM10000204','UM10000844',0,'Item Edit',NULL,'dashboard.item.edit'),(13436,'U10024','SM10000205','UM10000844',0,'Item Update',NULL,'dashboard.item.update'),(13437,'U10024','SM10000206','UM10000844',0,'Item Delete',NULL,'dashboard.item.destroy'),(13438,'U10024','SM10000207','UM10000844',0,'Item Show',NULL,'dashboard.item.show'),(13439,'U10024','SM10000208','UM10000844',0,'Item Check - In',NULL,'dashboard.item.check_in'),(13440,'U10024','SM10000209','UM10000844',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(13441,'U10024','SM10000210','UM10000844',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(13442,'U10024','SM10000211','UM10000844',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(13443,'U10024','SM10000212','UM10000844',1,'Item Logs','Logs','dashboard.item.logs'),(13444,'U10024','SM10000213','UM10000844',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(13445,'U10024','SM10000214','UM10000844',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(13446,'U10024','SM10000215','UM10000844',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(13447,'U10024','SM10000216','UM10000844',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(13448,'U10024','SM10000217','UM10000844',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(13449,'U10024','SM10000218','UM10000844',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(13450,'U10024','SM10000251','UM10000845',1,'Item Category Create','Add','dashboard.item_category.create'),(13451,'U10024','SM10000252','UM10000845',0,'Item Category Store',NULL,'dashboard.item_category.store'),(13452,'U10024','SM10000253','UM10000845',1,'Item Category List','Manage','dashboard.item_category.index'),(13453,'U10024','SM10000254','UM10000845',0,'Item Category Edit',NULL,'dashboard.item_category.edit'),(13454,'U10024','SM10000255','UM10000845',0,'Item Category Update',NULL,'dashboard.item_category.update'),(13455,'U10024','SM10000256','UM10000845',0,'Item Category Delete',NULL,'dashboard.item_category.destroy'),(13456,'U10024','SM10000301','UM10000846',1,'Item Type Create','Add','dashboard.item_type.create'),(13457,'U10024','SM10000302','UM10000846',0,'Item Type Store',NULL,'dashboard.item_type.store'),(13458,'U10024','SM10000303','UM10000846',1,'Item Type List','Manage','dashboard.item_type.index'),(13459,'U10024','SM10000304','UM10000846',0,'Item Type Edit',NULL,'dashboard.item_type.edit'),(13460,'U10024','SM10000305','UM10000846',0,'Item Type Update',NULL,'dashboard.item_type.update'),(13461,'U10024','SM10000306','UM10000846',0,'Item Type Delete',NULL,'dashboard.item_type.destroy'),(13462,'U10024','SM10000351','UM10000847',1,'PO Create','Add','dashboard.purchase_order.create'),(13463,'U10024','SM10000352','UM10000847',0,'PO Store',NULL,'dashboard.purchase_order.store'),(13464,'U10024','SM10000353','UM10000847',1,'PO List','Manage','dashboard.purchase_order.index'),(13465,'U10024','SM10000354','UM10000847',0,'PO Edit',NULL,'dashboard.purchase_order.edit'),(13466,'U10024','SM10000355','UM10000847',0,'PO Update',NULL,'dashboard.purchase_order.update'),(13467,'U10024','SM10000356','UM10000847',0,'PO Delete',NULL,'dashboard.purchase_order.destroy'),(13468,'U10024','SM10000357','UM10000847',0,'PO Show',NULL,'dashboard.purchase_order.show'),(13469,'U10024','SM10000358','UM10000847',0,'PO Print',NULL,'dashboard.purchase_order.print'),(13470,'U10024','SM10000359','UM10000847',1,'PO Buffer','Buffers','dashboard.purchase_order.buffer'),(13471,'U10024','SM10000360','UM10000847',0,'PO Post to Process',NULL,'dashboard.purchase_order.to_process'),(13472,'U10024','SM10000361','UM10000847',0,'PO Post to Buffer',NULL,'dashboard.purchase_order.to_buffer'),(13473,'U10024','SM10000401','UM10000848',1,'JO Create','Generate','dashboard.job_order.create'),(13474,'U10024','SM10000402','UM10000848',0,'JO Show',NULL,'dashboard.job_order.show'),(13475,'U10024','SM10000403','UM10000848',0,'JO Generate',NULL,'dashboard.job_order.generate'),(13476,'U10024','SM10000404','UM10000848',0,'JO Generate Fill',NULL,'dashboard.job_order.generate_fill'),(13477,'U10024','SM10000405','UM10000848',0,'JO Generate Fill Post',NULL,'dashboard.job_order.generate_fill_post'),(13478,'U10024','SM10000406','UM10000848',0,'JO Print',NULL,'dashboard.job_order.print'),(13479,'U10024','SM10000407','UM10000848',1,'JO List','Manage','dashboard.job_order.index'),(13480,'U10024','SM10000408','UM10000848',0,'JO Confirm Ready for Delivery',NULL,'dashboard.job_order.confirm_rfd'),(13481,'U10024','SM10000551','UM10000849',1,'Personnel Create','Add','dashboard.personnel.create'),(13482,'U10024','SM10000552','UM10000849',0,'Personnel Store',NULL,'dashboard.personnel.store'),(13483,'U10024','SM10000553','UM10000849',1,'Personnel List','Manage','dashboard.personnel.index'),(13484,'U10024','SM10000554','UM10000849',0,'Personnel Edit',NULL,'dashboard.personnel.edit'),(13485,'U10024','SM10000555','UM10000849',0,'Personnel Update',NULL,'dashboard.personnel.update'),(13486,'U10024','SM10000556','UM10000849',0,'Personnel Delete',NULL,'dashboard.personnel.destroy'),(13487,'U10024','SM10000557','UM10000849',0,'Personnel View Avatar',NULL,'dashboard.personnel.view_avatar'),(13488,'U10024','SM10000601','UM10000850',1,'Machine Create','Add','dashboard.machine.create'),(13489,'U10024','SM10000602','UM10000850',0,'Machine Store',NULL,'dashboard.machine.store'),(13490,'U10024','SM10000603','UM10000850',1,'Machine List','Manage','dashboard.machine.index'),(13491,'U10024','SM10000604','UM10000850',0,'Machine Edit',NULL,'dashboard.machine.edit'),(13492,'U10024','SM10000605','UM10000850',0,'Machine Update',NULL,'dashboard.machine.update'),(13493,'U10024','SM10000606','UM10000850',0,'Machine Delete',NULL,'dashboard.machine.destroy'),(13494,'U10024','SM10000651','UM10000851',1,'Task Create','New','dashboard.task.create'),(13495,'U10024','SM10000652','UM10000851',0,'Task Store',NULL,'dashboard.task.store'),(13496,'U10024','SM10000653','UM10000851',1,'Task List','Manage','dashboard.task.index'),(13497,'U10024','SM10000654','UM10000851',0,'Task Edit',NULL,'dashboard.task.edit'),(13498,'U10024','SM10000655','UM10000851',0,'Task Update',NULL,'dashboard.task.update'),(13499,'U10024','SM10000656','UM10000851',0,'Task Delete',NULL,'dashboard.task.destroy'),(13500,'U10024','SM10000657','UM10000851',1,'Task Scheduling','Scheduling','dashboard.task.scheduling'),(13501,'U10024','SM10000658','UM10000851',0,'Task Update Finished',NULL,'dashboard.task.update_finished'),(13502,'U10024','SM10000659','UM10000851',0,'Task Rate Personnel',NULL,'dashboard.task.rate_personnel'),(13503,'U10024','SM10000670','UM10000851',0,'Task Rate Personnel Post',NULL,'dashboard.task.rate_personnel_post'),(13504,'U10024','SM10000671','UM10000851',1,'Task Calendar','Calendar','dashboard.task.calendar'),(13505,'U10024','SM10000672','UM10000851',0,'Task Update Unfinished',NULL,'dashboard.task.update_unfinished'),(13506,'U10024','SM10000701','UM10000852',1,'Delivery Create','Add','dashboard.delivery.create'),(13507,'U10024','SM10000702','UM10000852',0,'Delivery Store',NULL,'dashboard.delivery.store'),(13508,'U10024','SM10000703','UM10000852',1,'Delivery List','Manage','dashboard.delivery.index'),(13509,'U10024','SM10000704','UM10000852',0,'Delivery Edit',NULL,'dashboard.delivery.edit'),(13510,'U10024','SM10000705','UM10000852',0,'Delivery Update',NULL,'dashboard.delivery.update'),(13511,'U10024','SM10000706','UM10000852',0,'Delivery Delete',NULL,'dashboard.delivery.destroy'),(13512,'U10024','SM10000707','UM10000852',0,'Delivery Details',NULL,'dashboard.delivery.show'),(13513,'U10024','SM10000708','UM10000852',0,'Delivery Confirm Delivery',NULL,'dashboard.delivery.confirm_delivery'),(13514,'U10024','SM10000709','UM10000852',0,'Delivery Confirm Delivered Post',NULL,'dashboard.delivery.confirm_delivered_post'),(13515,'U10024','SM10000710','UM10000852',0,'Delivery Confirm Returned Post',NULL,'dashboard.delivery.confirm_returned_post'),(13516,'U10024','SM10000711','UM10000852',0,'Delivery Report Print',NULL,'dashboard.delivery.print'),(13517,'U10024','SM10000751','UM10000853',1,'Supplier Create','New','dashboard.supplier.create'),(13518,'U10024','SM10000752','UM10000853',0,'Supplier Store',NULL,'dashboard.supplier.store'),(13519,'U10024','SM10000753','UM10000853',1,'Supplier List','Manage','dashboard.supplier.index'),(13520,'U10024','SM10000754','UM10000853',0,'Supplier Edit',NULL,'dashboard.supplier.edit'),(13521,'U10024','SM10000755','UM10000853',0,'Supplier Update',NULL,'dashboard.supplier.update'),(13522,'U10024','SM10000756','UM10000853',0,'Supplier Delete',NULL,'dashboard.supplier.destroy'),(13523,'U10024','SM10000801','UM10000854',1,'Task Engr Create Job Order','New Job Order','dashboard.engr_task.create_jo'),(13524,'U10024','SM10000802','UM10000854',1,'Task Engr Create Dalily Activity','New Daily Activity','dashboard.engr_task.create_da'),(13525,'U10024','SM10000803','UM10000854',0,'Task Engr Store',NULL,'dashboard.engr_task.store'),(13526,'U10024','SM10000804','UM10000854',1,'Task Engr List','Manage','dashboard.engr_task.index'),(13527,'U10024','SM10000805','UM10000854',0,'Task Engr Edit',NULL,'dashboard.engr_task.edit'),(13528,'U10024','SM10000806','UM10000854',0,'Task Engr Update',NULL,'dashboard.engr_task.update'),(13529,'U10024','SM10000807','UM10000854',0,'Task Engr Delete',NULL,'dashboard.engr_task.destroy'),(13530,'U10024','SM10000808','UM10000854',1,'Task Engr Scheduling','Scheduling','dashboard.engr_task.scheduling'),(13531,'U10024','SM10000809','UM10000854',0,'Task Engr Update Finished',NULL,'dashboard.engr_task.update_finished'),(13532,'U10024','SM10000810','UM10000854',0,'Task Engr Update Unfinished',NULL,'dashboard.engr_task.update_unfinished'),(13533,'U10024','SM10000811','UM10000854',0,'Task Engr Rate Personnel',NULL,'dashboard.engr_task.rate_personnel'),(13534,'U10024','SM10000812','UM10000854',0,'Task Engr Rate Personnel Post',NULL,'dashboard.engr_task.rate_personnel_post'),(13535,'U10024','SM10000813','UM10000854',1,'Task Engr Calendar','Calendar','dashboard.engr_task.calendar'),(13868,'U10002','SM10000001','UM10000896',1,'User Create','Add','dashboard.user.create'),(13869,'U10002','SM10000002','UM10000896',1,'User List','Manage','dashboard.user.index'),(13870,'U10002','SM10000003','UM10000896',0,'User Store',NULL,'dashboard.user.store'),(13871,'U10002','SM10000004','UM10000896',0,'User Show',NULL,'dashboard.user.show'),(13872,'U10002','SM10000005','UM10000896',0,'User Edit',NULL,'dashboard.user.edit'),(13873,'U10002','SM10000006','UM10000896',0,'User Update',NULL,'dashboard.user.update'),(13874,'U10002','SM10000007','UM10000896',0,'User Delete',NULL,'dashboard.user.destroy'),(13875,'U10002','SM10000008','UM10000896',0,'User Activate',NULL,'dashboard.user.activate'),(13876,'U10002','SM10000009','UM10000896',0,'User Deactivate',NULL,'dashboard.user.deactivate'),(13877,'U10002','SM10000010','UM10000896',0,'User Logout',NULL,'dashboard.user.logout'),(13878,'U10002','SM10000011','UM10000896',0,'User Reset Password',NULL,'dashboard.user.reset_password'),(13879,'U10002','SM10000012','UM10000896',0,'User Reset Password Post',NULL,'dashboard.user.reset_password_post'),(13880,'U10002','SM10000013','UM10000896',0,'User View Avatar',NULL,'dashboard.user.view_avatar'),(13881,'U10002','SM10000101','UM10000897',0,'Profile Show',NULL,'dashboard.profile.details'),(13882,'U10002','SM10000102','UM10000897',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(13883,'U10002','SM10000103','UM10000897',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(13884,'U10002','SM10000104','UM10000897',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(13885,'U10002','SM10000105','UM10000897',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(13886,'U10002','SM10000201','UM10000898',1,'Item Create','Add','dashboard.item.create'),(13887,'U10002','SM10000202','UM10000898',0,'Item Store',NULL,'dashboard.item.store'),(13888,'U10002','SM10000203','UM10000898',1,'Item List','Manage','dashboard.item.index'),(13889,'U10002','SM10000204','UM10000898',0,'Item Edit',NULL,'dashboard.item.edit'),(13890,'U10002','SM10000205','UM10000898',0,'Item Update',NULL,'dashboard.item.update'),(13891,'U10002','SM10000206','UM10000898',0,'Item Delete',NULL,'dashboard.item.destroy'),(13892,'U10002','SM10000207','UM10000898',0,'Item Show',NULL,'dashboard.item.show'),(13893,'U10002','SM10000208','UM10000898',0,'Item Check - In',NULL,'dashboard.item.check_in'),(13894,'U10002','SM10000209','UM10000898',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(13895,'U10002','SM10000210','UM10000898',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(13896,'U10002','SM10000211','UM10000898',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(13897,'U10002','SM10000212','UM10000898',1,'Item Logs','Logs','dashboard.item.logs'),(13898,'U10002','SM10000213','UM10000898',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(13899,'U10002','SM10000214','UM10000898',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(13900,'U10002','SM10000215','UM10000898',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(13901,'U10002','SM10000216','UM10000898',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(13902,'U10002','SM10000217','UM10000898',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(13903,'U10002','SM10000218','UM10000898',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(13904,'U10002','SM10000251','UM10000899',1,'Item Category Create','Add','dashboard.item_category.create'),(13905,'U10002','SM10000252','UM10000899',0,'Item Category Store',NULL,'dashboard.item_category.store'),(13906,'U10002','SM10000253','UM10000899',1,'Item Category List','Manage','dashboard.item_category.index'),(13907,'U10002','SM10000254','UM10000899',0,'Item Category Edit',NULL,'dashboard.item_category.edit'),(13908,'U10002','SM10000255','UM10000899',0,'Item Category Update',NULL,'dashboard.item_category.update'),(13909,'U10002','SM10000256','UM10000899',0,'Item Category Delete',NULL,'dashboard.item_category.destroy'),(13910,'U10002','SM10000351','UM10000900',1,'PO Create','Add','dashboard.purchase_order.create'),(13911,'U10002','SM10000352','UM10000900',0,'PO Store',NULL,'dashboard.purchase_order.store'),(13912,'U10002','SM10000353','UM10000900',1,'PO List','Manage','dashboard.purchase_order.index'),(13913,'U10002','SM10000354','UM10000900',0,'PO Edit',NULL,'dashboard.purchase_order.edit'),(13914,'U10002','SM10000355','UM10000900',0,'PO Update',NULL,'dashboard.purchase_order.update'),(13915,'U10002','SM10000356','UM10000900',0,'PO Delete',NULL,'dashboard.purchase_order.destroy'),(13916,'U10002','SM10000357','UM10000900',0,'PO Show',NULL,'dashboard.purchase_order.show'),(13917,'U10002','SM10000358','UM10000900',0,'PO Print',NULL,'dashboard.purchase_order.print'),(13918,'U10002','SM10000359','UM10000900',1,'PO Buffer','Buffers','dashboard.purchase_order.buffer'),(13919,'U10002','SM10000360','UM10000900',0,'PO Post to Process',NULL,'dashboard.purchase_order.to_process'),(13920,'U10002','SM10000361','UM10000900',0,'PO Post to Buffer',NULL,'dashboard.purchase_order.to_buffer'),(13921,'U10002','SM10000401','UM10000901',1,'JO Create','Generate','dashboard.job_order.create'),(13922,'U10002','SM10000402','UM10000901',0,'JO Show',NULL,'dashboard.job_order.show'),(13923,'U10002','SM10000403','UM10000901',0,'JO Generate',NULL,'dashboard.job_order.generate'),(13924,'U10002','SM10000404','UM10000901',0,'JO Generate Fill',NULL,'dashboard.job_order.generate_fill'),(13925,'U10002','SM10000405','UM10000901',0,'JO Generate Fill Post',NULL,'dashboard.job_order.generate_fill_post'),(13926,'U10002','SM10000406','UM10000901',0,'JO Print',NULL,'dashboard.job_order.print'),(13927,'U10002','SM10000407','UM10000901',1,'JO List','Manage','dashboard.job_order.index'),(13928,'U10002','SM10000408','UM10000901',0,'JO Confirm Ready for Delivery',NULL,'dashboard.job_order.confirm_rfd'),(13929,'U10002','SM10000551','UM10000902',1,'Personnel Create','Add','dashboard.personnel.create'),(13930,'U10002','SM10000552','UM10000902',0,'Personnel Store',NULL,'dashboard.personnel.store'),(13931,'U10002','SM10000553','UM10000902',1,'Personnel List','Manage','dashboard.personnel.index'),(13932,'U10002','SM10000554','UM10000902',0,'Personnel Edit',NULL,'dashboard.personnel.edit'),(13933,'U10002','SM10000555','UM10000902',0,'Personnel Update',NULL,'dashboard.personnel.update'),(13934,'U10002','SM10000556','UM10000902',0,'Personnel Delete',NULL,'dashboard.personnel.destroy'),(13935,'U10002','SM10000557','UM10000902',0,'Personnel View Avatar',NULL,'dashboard.personnel.view_avatar'),(13936,'U10002','SM10000601','UM10000903',1,'Machine Create','Add','dashboard.machine.create'),(13937,'U10002','SM10000602','UM10000903',0,'Machine Store',NULL,'dashboard.machine.store'),(13938,'U10002','SM10000603','UM10000903',1,'Machine List','Manage','dashboard.machine.index'),(13939,'U10002','SM10000604','UM10000903',0,'Machine Edit',NULL,'dashboard.machine.edit'),(13940,'U10002','SM10000605','UM10000903',0,'Machine Update',NULL,'dashboard.machine.update'),(13941,'U10002','SM10000606','UM10000903',0,'Machine Delete',NULL,'dashboard.machine.destroy'),(13942,'U10002','SM10000651','UM10000904',1,'Task Create','New','dashboard.task.create'),(13943,'U10002','SM10000652','UM10000904',0,'Task Store',NULL,'dashboard.task.store'),(13944,'U10002','SM10000653','UM10000904',1,'Task List','Manage','dashboard.task.index'),(13945,'U10002','SM10000654','UM10000904',0,'Task Edit',NULL,'dashboard.task.edit'),(13946,'U10002','SM10000655','UM10000904',0,'Task Update',NULL,'dashboard.task.update'),(13947,'U10002','SM10000656','UM10000904',0,'Task Delete',NULL,'dashboard.task.destroy'),(13948,'U10002','SM10000657','UM10000904',1,'Task Scheduling','Scheduling','dashboard.task.scheduling'),(13949,'U10002','SM10000658','UM10000904',0,'Task Update Finished',NULL,'dashboard.task.update_finished'),(13950,'U10002','SM10000659','UM10000904',0,'Task Rate Personnel',NULL,'dashboard.task.rate_personnel'),(13951,'U10002','SM10000670','UM10000904',0,'Task Rate Personnel Post',NULL,'dashboard.task.rate_personnel_post'),(13952,'U10002','SM10000671','UM10000904',1,'Task Calendar','Calendar','dashboard.task.calendar'),(13953,'U10002','SM10000672','UM10000904',0,'Task Update Unfinished',NULL,'dashboard.task.update_unfinished'),(13954,'U10002','SM10000673','UM10000904',1,'Task Reports','Reports','dashboard.task.reports'),(13955,'U10002','SM10000674','UM10000904',0,'Task Reports Output',NULL,'dashboard.task.reports_output'),(13956,'U10002','SM10000701','UM10000905',1,'Delivery Create','Add','dashboard.delivery.create'),(13957,'U10002','SM10000702','UM10000905',0,'Delivery Store',NULL,'dashboard.delivery.store'),(13958,'U10002','SM10000703','UM10000905',1,'Delivery List','Manage','dashboard.delivery.index'),(13959,'U10002','SM10000704','UM10000905',0,'Delivery Edit',NULL,'dashboard.delivery.edit'),(13960,'U10002','SM10000705','UM10000905',0,'Delivery Update',NULL,'dashboard.delivery.update'),(13961,'U10002','SM10000706','UM10000905',0,'Delivery Delete',NULL,'dashboard.delivery.destroy'),(13962,'U10002','SM10000707','UM10000905',0,'Delivery Details',NULL,'dashboard.delivery.show'),(13963,'U10002','SM10000708','UM10000905',0,'Delivery Confirm Delivery',NULL,'dashboard.delivery.confirm_delivery'),(13964,'U10002','SM10000709','UM10000905',0,'Delivery Confirm Delivered Post',NULL,'dashboard.delivery.confirm_delivered_post'),(13965,'U10002','SM10000710','UM10000905',0,'Delivery Confirm Returned Post',NULL,'dashboard.delivery.confirm_returned_post'),(13966,'U10002','SM10000711','UM10000905',0,'Delivery Report Print',NULL,'dashboard.delivery.print'),(13967,'U10002','SM10000751','UM10000906',1,'Supplier Create','New','dashboard.supplier.create'),(13968,'U10002','SM10000752','UM10000906',0,'Supplier Store',NULL,'dashboard.supplier.store'),(13969,'U10002','SM10000753','UM10000906',1,'Supplier List','Manage','dashboard.supplier.index'),(13970,'U10002','SM10000754','UM10000906',0,'Supplier Edit',NULL,'dashboard.supplier.edit'),(13971,'U10002','SM10000755','UM10000906',0,'Supplier Update',NULL,'dashboard.supplier.update'),(13972,'U10002','SM10000756','UM10000906',0,'Supplier Delete',NULL,'dashboard.supplier.destroy'),(13973,'U10002','SM10000801','UM10000907',1,'Task Engr Create Job Order','New Job Order','dashboard.engr_task.create_jo'),(13974,'U10002','SM10000802','UM10000907',1,'Task Engr Create Dalily Activity','New Daily Activity','dashboard.engr_task.create_da'),(13975,'U10002','SM10000803','UM10000907',0,'Task Engr Store',NULL,'dashboard.engr_task.store'),(13976,'U10002','SM10000804','UM10000907',1,'Task Engr List','Manage','dashboard.engr_task.index'),(13977,'U10002','SM10000805','UM10000907',0,'Task Engr Edit',NULL,'dashboard.engr_task.edit'),(13978,'U10002','SM10000806','UM10000907',0,'Task Engr Update',NULL,'dashboard.engr_task.update'),(13979,'U10002','SM10000807','UM10000907',0,'Task Engr Delete',NULL,'dashboard.engr_task.destroy'),(13980,'U10002','SM10000808','UM10000907',1,'Task Engr Scheduling','Scheduling','dashboard.engr_task.scheduling'),(13981,'U10002','SM10000809','UM10000907',0,'Task Engr Update Finished',NULL,'dashboard.engr_task.update_finished'),(13982,'U10002','SM10000810','UM10000907',0,'Task Engr Update Unfinished',NULL,'dashboard.engr_task.update_unfinished'),(13983,'U10002','SM10000811','UM10000907',0,'Task Engr Rate Personnel',NULL,'dashboard.engr_task.rate_personnel'),(13984,'U10002','SM10000812','UM10000907',0,'Task Engr Rate Personnel Post',NULL,'dashboard.engr_task.rate_personnel_post'),(13985,'U10002','SM10000813','UM10000907',1,'Task Engr Calendar','Calendar','dashboard.engr_task.calendar'),(14462,'U10019','SM10000001','UM10000937',1,'User Create','Add','dashboard.user.create'),(14463,'U10019','SM10000002','UM10000937',1,'User List','Manage','dashboard.user.index'),(14464,'U10019','SM10000003','UM10000937',0,'User Store',NULL,'dashboard.user.store'),(14465,'U10019','SM10000004','UM10000937',0,'User Show',NULL,'dashboard.user.show'),(14466,'U10019','SM10000005','UM10000937',0,'User Edit',NULL,'dashboard.user.edit'),(14467,'U10019','SM10000006','UM10000937',0,'User Update',NULL,'dashboard.user.update'),(14468,'U10019','SM10000007','UM10000937',0,'User Delete',NULL,'dashboard.user.destroy'),(14469,'U10019','SM10000008','UM10000937',0,'User Activate',NULL,'dashboard.user.activate'),(14470,'U10019','SM10000009','UM10000937',0,'User Deactivate',NULL,'dashboard.user.deactivate'),(14471,'U10019','SM10000010','UM10000937',0,'User Logout',NULL,'dashboard.user.logout'),(14472,'U10019','SM10000011','UM10000937',0,'User Reset Password',NULL,'dashboard.user.reset_password'),(14473,'U10019','SM10000012','UM10000937',0,'User Reset Password Post',NULL,'dashboard.user.reset_password_post'),(14474,'U10019','SM10000013','UM10000937',0,'User View Avatar',NULL,'dashboard.user.view_avatar'),(14475,'U10019','SM10000101','UM10000938',0,'Profile Show',NULL,'dashboard.profile.details'),(14476,'U10019','SM10000102','UM10000938',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(14477,'U10019','SM10000103','UM10000938',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(14478,'U10019','SM10000104','UM10000938',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(14479,'U10019','SM10000105','UM10000938',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(14480,'U10019','SM10000201','UM10000939',1,'Item Create','Add','dashboard.item.create'),(14481,'U10019','SM10000202','UM10000939',0,'Item Store',NULL,'dashboard.item.store'),(14482,'U10019','SM10000203','UM10000939',1,'Item List','Manage','dashboard.item.index'),(14483,'U10019','SM10000204','UM10000939',0,'Item Edit',NULL,'dashboard.item.edit'),(14484,'U10019','SM10000205','UM10000939',0,'Item Update',NULL,'dashboard.item.update'),(14485,'U10019','SM10000206','UM10000939',0,'Item Delete',NULL,'dashboard.item.destroy'),(14486,'U10019','SM10000207','UM10000939',0,'Item Show',NULL,'dashboard.item.show'),(14487,'U10019','SM10000208','UM10000939',0,'Item Check - In',NULL,'dashboard.item.check_in'),(14488,'U10019','SM10000209','UM10000939',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(14489,'U10019','SM10000210','UM10000939',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(14490,'U10019','SM10000211','UM10000939',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(14491,'U10019','SM10000212','UM10000939',1,'Item Logs','Logs','dashboard.item.logs'),(14492,'U10019','SM10000213','UM10000939',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(14493,'U10019','SM10000214','UM10000939',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(14494,'U10019','SM10000215','UM10000939',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(14495,'U10019','SM10000216','UM10000939',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(14496,'U10019','SM10000217','UM10000939',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(14497,'U10019','SM10000218','UM10000939',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(14498,'U10019','SM10000353','UM10000940',1,'PO List','Manage','dashboard.purchase_order.index'),(14499,'U10019','SM10000357','UM10000940',0,'PO Show',NULL,'dashboard.purchase_order.show'),(14500,'U10019','SM10000358','UM10000940',0,'PO Print',NULL,'dashboard.purchase_order.print'),(14501,'U10019','SM10000551','UM10000941',1,'Personnel Create','Add','dashboard.personnel.create'),(14502,'U10019','SM10000552','UM10000941',0,'Personnel Store',NULL,'dashboard.personnel.store'),(14503,'U10019','SM10000553','UM10000941',1,'Personnel List','Manage','dashboard.personnel.index'),(14504,'U10019','SM10000554','UM10000941',0,'Personnel Edit',NULL,'dashboard.personnel.edit'),(14505,'U10019','SM10000555','UM10000941',0,'Personnel Update',NULL,'dashboard.personnel.update'),(14506,'U10019','SM10000556','UM10000941',0,'Personnel Delete',NULL,'dashboard.personnel.destroy'),(14507,'U10019','SM10000557','UM10000941',0,'Personnel View Avatar',NULL,'dashboard.personnel.view_avatar'),(14508,'U10019','SM10000601','UM10000942',1,'Machine Create','Add','dashboard.machine.create'),(14509,'U10019','SM10000602','UM10000942',0,'Machine Store',NULL,'dashboard.machine.store'),(14510,'U10019','SM10000603','UM10000942',1,'Machine List','Manage','dashboard.machine.index'),(14511,'U10019','SM10000604','UM10000942',0,'Machine Edit',NULL,'dashboard.machine.edit'),(14512,'U10019','SM10000605','UM10000942',0,'Machine Update',NULL,'dashboard.machine.update'),(14513,'U10019','SM10000606','UM10000942',0,'Machine Delete',NULL,'dashboard.machine.destroy'),(14514,'U10019','SM10000651','UM10000943',1,'Task Create','New','dashboard.task.create'),(14515,'U10019','SM10000652','UM10000943',0,'Task Store',NULL,'dashboard.task.store'),(14516,'U10019','SM10000653','UM10000943',1,'Task List','Manage','dashboard.task.index'),(14517,'U10019','SM10000654','UM10000943',0,'Task Edit',NULL,'dashboard.task.edit'),(14518,'U10019','SM10000655','UM10000943',0,'Task Update',NULL,'dashboard.task.update'),(14519,'U10019','SM10000656','UM10000943',0,'Task Delete',NULL,'dashboard.task.destroy'),(14520,'U10019','SM10000657','UM10000943',1,'Task Scheduling','Scheduling','dashboard.task.scheduling'),(14521,'U10019','SM10000658','UM10000943',0,'Task Update Finished',NULL,'dashboard.task.update_finished'),(14522,'U10019','SM10000659','UM10000943',0,'Task Rate Personnel',NULL,'dashboard.task.rate_personnel'),(14523,'U10019','SM10000670','UM10000943',0,'Task Rate Personnel Post',NULL,'dashboard.task.rate_personnel_post'),(14524,'U10019','SM10000671','UM10000943',1,'Task Calendar','Calendar','dashboard.task.calendar'),(14525,'U10019','SM10000672','UM10000943',0,'Task Update Unfinished',NULL,'dashboard.task.update_unfinished'),(14526,'U10019','SM10000673','UM10000943',1,'Task Reports','Reports','dashboard.task.reports'),(14527,'U10019','SM10000674','UM10000943',0,'Task Reports Output',NULL,'dashboard.task.reports_output'),(14528,'U10019','SM10000703','UM10000944',1,'Delivery List','Manage','dashboard.delivery.index'),(14693,'U10017','SM10000001','UM10000964',1,'User Create','Add','dashboard.user.create'),(14694,'U10017','SM10000002','UM10000964',1,'User List','Manage','dashboard.user.index'),(14695,'U10017','SM10000003','UM10000964',0,'User Store',NULL,'dashboard.user.store'),(14696,'U10017','SM10000004','UM10000964',0,'User Show',NULL,'dashboard.user.show'),(14697,'U10017','SM10000005','UM10000964',0,'User Edit',NULL,'dashboard.user.edit'),(14698,'U10017','SM10000006','UM10000964',0,'User Update',NULL,'dashboard.user.update'),(14699,'U10017','SM10000007','UM10000964',0,'User Delete',NULL,'dashboard.user.destroy'),(14700,'U10017','SM10000008','UM10000964',0,'User Activate',NULL,'dashboard.user.activate'),(14701,'U10017','SM10000009','UM10000964',0,'User Deactivate',NULL,'dashboard.user.deactivate'),(14702,'U10017','SM10000010','UM10000964',0,'User Logout',NULL,'dashboard.user.logout'),(14703,'U10017','SM10000011','UM10000964',0,'User Reset Password',NULL,'dashboard.user.reset_password'),(14704,'U10017','SM10000012','UM10000964',0,'User Reset Password Post',NULL,'dashboard.user.reset_password_post'),(14705,'U10017','SM10000013','UM10000964',0,'User View Avatar',NULL,'dashboard.user.view_avatar'),(14706,'U10017','SM10000101','UM10000965',0,'Profile Show',NULL,'dashboard.profile.details'),(14707,'U10017','SM10000102','UM10000965',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(14708,'U10017','SM10000103','UM10000965',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(14709,'U10017','SM10000104','UM10000965',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(14710,'U10017','SM10000105','UM10000965',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(14711,'U10017','SM10000201','UM10000966',1,'Item Create','Add','dashboard.item.create'),(14712,'U10017','SM10000202','UM10000966',0,'Item Store',NULL,'dashboard.item.store'),(14713,'U10017','SM10000203','UM10000966',1,'Item List','Manage','dashboard.item.index'),(14714,'U10017','SM10000204','UM10000966',0,'Item Edit',NULL,'dashboard.item.edit'),(14715,'U10017','SM10000205','UM10000966',0,'Item Update',NULL,'dashboard.item.update'),(14716,'U10017','SM10000206','UM10000966',0,'Item Delete',NULL,'dashboard.item.destroy'),(14717,'U10017','SM10000207','UM10000966',0,'Item Show',NULL,'dashboard.item.show'),(14718,'U10017','SM10000208','UM10000966',0,'Item Check - In',NULL,'dashboard.item.check_in'),(14719,'U10017','SM10000209','UM10000966',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(14720,'U10017','SM10000210','UM10000966',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(14721,'U10017','SM10000211','UM10000966',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(14722,'U10017','SM10000212','UM10000966',1,'Item Logs','Logs','dashboard.item.logs'),(14723,'U10017','SM10000213','UM10000966',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(14724,'U10017','SM10000214','UM10000966',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(14725,'U10017','SM10000215','UM10000966',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(14726,'U10017','SM10000216','UM10000966',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(14727,'U10017','SM10000217','UM10000966',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(14728,'U10017','SM10000218','UM10000966',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(14729,'U10017','SM10000251','UM10000967',1,'Item Category Create','Add','dashboard.item_category.create'),(14730,'U10017','SM10000252','UM10000967',0,'Item Category Store',NULL,'dashboard.item_category.store'),(14731,'U10017','SM10000253','UM10000967',1,'Item Category List','Manage','dashboard.item_category.index'),(14732,'U10017','SM10000254','UM10000967',0,'Item Category Edit',NULL,'dashboard.item_category.edit'),(14733,'U10017','SM10000255','UM10000967',0,'Item Category Update',NULL,'dashboard.item_category.update'),(14734,'U10017','SM10000301','UM10000968',1,'Item Type Create','Add','dashboard.item_type.create'),(14735,'U10017','SM10000302','UM10000968',0,'Item Type Store',NULL,'dashboard.item_type.store'),(14736,'U10017','SM10000303','UM10000968',1,'Item Type List','Manage','dashboard.item_type.index'),(14737,'U10017','SM10000304','UM10000968',0,'Item Type Edit',NULL,'dashboard.item_type.edit'),(14738,'U10017','SM10000305','UM10000968',0,'Item Type Update',NULL,'dashboard.item_type.update'),(14739,'U10017','SM10000351','UM10000969',1,'PO Create','Add','dashboard.purchase_order.create'),(14740,'U10017','SM10000352','UM10000969',0,'PO Store',NULL,'dashboard.purchase_order.store'),(14741,'U10017','SM10000353','UM10000969',1,'PO List','Manage','dashboard.purchase_order.index'),(14742,'U10017','SM10000354','UM10000969',0,'PO Edit',NULL,'dashboard.purchase_order.edit'),(14743,'U10017','SM10000355','UM10000969',0,'PO Update',NULL,'dashboard.purchase_order.update'),(14744,'U10017','SM10000356','UM10000969',0,'PO Delete',NULL,'dashboard.purchase_order.destroy'),(14745,'U10017','SM10000357','UM10000969',0,'PO Show',NULL,'dashboard.purchase_order.show'),(14746,'U10017','SM10000358','UM10000969',0,'PO Print',NULL,'dashboard.purchase_order.print'),(14747,'U10017','SM10000359','UM10000969',1,'PO Buffer','Buffers','dashboard.purchase_order.buffer'),(14748,'U10017','SM10000360','UM10000969',0,'PO Post to Process',NULL,'dashboard.purchase_order.to_process'),(14749,'U10017','SM10000361','UM10000969',0,'PO Post to Buffer',NULL,'dashboard.purchase_order.to_buffer'),(14750,'U10017','SM10000402','UM10000970',0,'JO Show',NULL,'dashboard.job_order.show'),(14751,'U10017','SM10000407','UM10000970',1,'JO List','Manage','dashboard.job_order.index'),(14752,'U10017','SM10000551','UM10000971',1,'Personnel Create','Add','dashboard.personnel.create'),(14753,'U10017','SM10000552','UM10000971',0,'Personnel Store',NULL,'dashboard.personnel.store'),(14754,'U10017','SM10000553','UM10000971',1,'Personnel List','Manage','dashboard.personnel.index'),(14755,'U10017','SM10000554','UM10000971',0,'Personnel Edit',NULL,'dashboard.personnel.edit'),(14756,'U10017','SM10000555','UM10000971',0,'Personnel Update',NULL,'dashboard.personnel.update'),(14757,'U10017','SM10000556','UM10000971',0,'Personnel Delete',NULL,'dashboard.personnel.destroy'),(14758,'U10017','SM10000557','UM10000971',0,'Personnel View Avatar',NULL,'dashboard.personnel.view_avatar'),(14759,'U10017','SM10000651','UM10000972',1,'Task Create','New','dashboard.task.create'),(14760,'U10017','SM10000652','UM10000972',0,'Task Store',NULL,'dashboard.task.store'),(14761,'U10017','SM10000653','UM10000972',1,'Task List','Manage','dashboard.task.index'),(14762,'U10017','SM10000654','UM10000972',0,'Task Edit',NULL,'dashboard.task.edit'),(14763,'U10017','SM10000655','UM10000972',0,'Task Update',NULL,'dashboard.task.update'),(14764,'U10017','SM10000656','UM10000972',0,'Task Delete',NULL,'dashboard.task.destroy'),(14765,'U10017','SM10000657','UM10000972',1,'Task Scheduling','Scheduling','dashboard.task.scheduling'),(14766,'U10017','SM10000658','UM10000972',0,'Task Update Finished',NULL,'dashboard.task.update_finished'),(14767,'U10017','SM10000659','UM10000972',0,'Task Rate Personnel',NULL,'dashboard.task.rate_personnel'),(14768,'U10017','SM10000670','UM10000972',0,'Task Rate Personnel Post',NULL,'dashboard.task.rate_personnel_post'),(14769,'U10017','SM10000671','UM10000972',1,'Task Calendar','Calendar','dashboard.task.calendar'),(14770,'U10017','SM10000672','UM10000972',0,'Task Update Unfinished',NULL,'dashboard.task.update_unfinished'),(14771,'U10017','SM10000701','UM10000973',1,'Delivery Create','Add','dashboard.delivery.create'),(14772,'U10017','SM10000702','UM10000973',0,'Delivery Store',NULL,'dashboard.delivery.store'),(14773,'U10017','SM10000703','UM10000973',1,'Delivery List','Manage','dashboard.delivery.index'),(14774,'U10017','SM10000704','UM10000973',0,'Delivery Edit',NULL,'dashboard.delivery.edit'),(14775,'U10017','SM10000705','UM10000973',0,'Delivery Update',NULL,'dashboard.delivery.update'),(14776,'U10017','SM10000706','UM10000973',0,'Delivery Delete',NULL,'dashboard.delivery.destroy'),(14777,'U10017','SM10000707','UM10000973',0,'Delivery Details',NULL,'dashboard.delivery.show'),(14778,'U10017','SM10000708','UM10000973',0,'Delivery Confirm Delivery',NULL,'dashboard.delivery.confirm_delivery'),(14779,'U10017','SM10000709','UM10000973',0,'Delivery Confirm Delivered Post',NULL,'dashboard.delivery.confirm_delivered_post'),(14780,'U10017','SM10000710','UM10000973',0,'Delivery Confirm Returned Post',NULL,'dashboard.delivery.confirm_returned_post'),(14781,'U10017','SM10000711','UM10000973',0,'Delivery Report Print',NULL,'dashboard.delivery.print'),(14782,'U10017','SM10000751','UM10000974',1,'Supplier Create','New','dashboard.supplier.create'),(14783,'U10017','SM10000752','UM10000974',0,'Supplier Store',NULL,'dashboard.supplier.store'),(14784,'U10017','SM10000753','UM10000974',1,'Supplier List','Manage','dashboard.supplier.index'),(14785,'U10017','SM10000754','UM10000974',0,'Supplier Edit',NULL,'dashboard.supplier.edit'),(14786,'U10017','SM10000755','UM10000974',0,'Supplier Update',NULL,'dashboard.supplier.update'),(14787,'U10017','SM10000756','UM10000974',0,'Supplier Delete',NULL,'dashboard.supplier.destroy'),(14822,'U10030','SM10000201','UM10000982',1,'Item Create','Add','dashboard.item.create'),(14823,'U10030','SM10000202','UM10000982',0,'Item Store',NULL,'dashboard.item.store'),(14824,'U10030','SM10000203','UM10000982',1,'Item List','Manage','dashboard.item.index'),(14825,'U10030','SM10000204','UM10000982',0,'Item Edit',NULL,'dashboard.item.edit'),(14826,'U10030','SM10000205','UM10000982',0,'Item Update',NULL,'dashboard.item.update'),(14827,'U10030','SM10000206','UM10000982',0,'Item Delete',NULL,'dashboard.item.destroy'),(14828,'U10030','SM10000207','UM10000982',0,'Item Show',NULL,'dashboard.item.show'),(14829,'U10030','SM10000208','UM10000982',0,'Item Check - In',NULL,'dashboard.item.check_in'),(14830,'U10030','SM10000209','UM10000982',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(14831,'U10030','SM10000210','UM10000982',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(14832,'U10030','SM10000211','UM10000982',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(14833,'U10030','SM10000212','UM10000982',1,'Item Logs','Logs','dashboard.item.logs'),(14834,'U10030','SM10000213','UM10000982',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(14835,'U10030','SM10000214','UM10000982',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(14886,'U10031','SM10000101','UM10000990',0,'Profile Show',NULL,'dashboard.profile.details'),(14887,'U10031','SM10000102','UM10000990',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(14888,'U10031','SM10000103','UM10000990',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(14889,'U10031','SM10000104','UM10000990',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(14890,'U10031','SM10000105','UM10000990',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(14891,'U10031','SM10000201','UM10000991',1,'Item Create','Add','dashboard.item.create'),(14892,'U10031','SM10000202','UM10000991',0,'Item Store',NULL,'dashboard.item.store'),(14893,'U10031','SM10000203','UM10000991',1,'Item List','Manage','dashboard.item.index'),(14894,'U10031','SM10000204','UM10000991',0,'Item Edit',NULL,'dashboard.item.edit'),(14895,'U10031','SM10000205','UM10000991',0,'Item Update',NULL,'dashboard.item.update'),(14896,'U10031','SM10000206','UM10000991',0,'Item Delete',NULL,'dashboard.item.destroy'),(14897,'U10031','SM10000207','UM10000991',0,'Item Show',NULL,'dashboard.item.show'),(14898,'U10031','SM10000208','UM10000991',0,'Item Check - In',NULL,'dashboard.item.check_in'),(14899,'U10031','SM10000209','UM10000991',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(14900,'U10031','SM10000210','UM10000991',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(14901,'U10031','SM10000211','UM10000991',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(14902,'U10031','SM10000212','UM10000991',1,'Item Logs','Logs','dashboard.item.logs'),(14903,'U10031','SM10000213','UM10000991',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(14904,'U10031','SM10000214','UM10000991',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(14905,'U10031','SM10000215','UM10000991',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(14906,'U10031','SM10000216','UM10000991',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(14907,'U10031','SM10000217','UM10000991',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(14908,'U10031','SM10000218','UM10000991',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(14909,'U10031','SM10000351','UM10000992',1,'PO Create','Add','dashboard.purchase_order.create'),(14910,'U10031','SM10000352','UM10000992',0,'PO Store',NULL,'dashboard.purchase_order.store'),(14911,'U10031','SM10000353','UM10000992',1,'PO List','Manage','dashboard.purchase_order.index'),(14912,'U10031','SM10000354','UM10000992',0,'PO Edit',NULL,'dashboard.purchase_order.edit'),(14913,'U10031','SM10000355','UM10000992',0,'PO Update',NULL,'dashboard.purchase_order.update'),(14914,'U10031','SM10000356','UM10000992',0,'PO Delete',NULL,'dashboard.purchase_order.destroy'),(14915,'U10031','SM10000357','UM10000992',0,'PO Show',NULL,'dashboard.purchase_order.show'),(14916,'U10031','SM10000358','UM10000992',0,'PO Print',NULL,'dashboard.purchase_order.print'),(14917,'U10031','SM10000359','UM10000992',1,'PO Buffer','Buffers','dashboard.purchase_order.buffer'),(14918,'U10031','SM10000360','UM10000992',0,'PO Post to Process',NULL,'dashboard.purchase_order.to_process'),(14919,'U10031','SM10000361','UM10000992',0,'PO Post to Buffer',NULL,'dashboard.purchase_order.to_buffer'),(14920,'U10031','SM10000671','UM10000993',1,'Task Calendar','Calendar','dashboard.task.calendar'),(14921,'U10031','SM10000701','UM10000994',1,'Delivery Create','Add','dashboard.delivery.create'),(14922,'U10031','SM10000702','UM10000994',0,'Delivery Store',NULL,'dashboard.delivery.store'),(14923,'U10031','SM10000703','UM10000994',1,'Delivery List','Manage','dashboard.delivery.index'),(14924,'U10031','SM10000704','UM10000994',0,'Delivery Edit',NULL,'dashboard.delivery.edit'),(14925,'U10031','SM10000705','UM10000994',0,'Delivery Update',NULL,'dashboard.delivery.update'),(14926,'U10031','SM10000706','UM10000994',0,'Delivery Delete',NULL,'dashboard.delivery.destroy'),(14927,'U10031','SM10000707','UM10000994',0,'Delivery Details',NULL,'dashboard.delivery.show'),(14928,'U10031','SM10000708','UM10000994',0,'Delivery Confirm Delivery',NULL,'dashboard.delivery.confirm_delivery'),(14929,'U10031','SM10000709','UM10000994',0,'Delivery Confirm Delivered Post',NULL,'dashboard.delivery.confirm_delivered_post'),(14930,'U10031','SM10000710','UM10000994',0,'Delivery Confirm Returned Post',NULL,'dashboard.delivery.confirm_returned_post'),(14931,'U10031','SM10000711','UM10000994',0,'Delivery Report Print',NULL,'dashboard.delivery.print'),(14932,'U10032','SM10000101','UM10000996',0,'Profile Show',NULL,'dashboard.profile.details'),(14933,'U10032','SM10000102','UM10000996',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(14934,'U10032','SM10000103','UM10000996',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(14935,'U10032','SM10000104','UM10000996',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(14936,'U10032','SM10000105','UM10000996',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(14937,'U10032','SM10000201','UM10000997',1,'Item Create','Add','dashboard.item.create'),(14938,'U10032','SM10000202','UM10000997',0,'Item Store',NULL,'dashboard.item.store'),(14939,'U10032','SM10000203','UM10000997',1,'Item List','Manage','dashboard.item.index'),(14940,'U10032','SM10000204','UM10000997',0,'Item Edit',NULL,'dashboard.item.edit'),(14941,'U10032','SM10000205','UM10000997',0,'Item Update',NULL,'dashboard.item.update'),(14942,'U10032','SM10000207','UM10000997',0,'Item Show',NULL,'dashboard.item.show'),(14943,'U10032','SM10000208','UM10000997',0,'Item Check - In',NULL,'dashboard.item.check_in'),(14944,'U10032','SM10000209','UM10000997',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(14945,'U10032','SM10000210','UM10000997',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(14946,'U10032','SM10000211','UM10000997',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(14947,'U10032','SM10000212','UM10000997',1,'Item Logs','Logs','dashboard.item.logs'),(14948,'U10032','SM10000213','UM10000997',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(14949,'U10032','SM10000214','UM10000997',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(14950,'U10032','SM10000215','UM10000997',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(14951,'U10032','SM10000216','UM10000997',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(14952,'U10032','SM10000217','UM10000997',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(14953,'U10032','SM10000218','UM10000997',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(14954,'U10032','SM10000602','UM10000998',0,'Machine Store',NULL,'dashboard.machine.store'),(14955,'U10032','SM10000603','UM10000998',1,'Machine List','Manage','dashboard.machine.index'),(14956,'U10032','SM10000671','UM10000999',1,'Task Calendar','Calendar','dashboard.task.calendar'),(14957,'U10032','SM10000813','UM10001000',1,'Task Engr Calendar','Calendar','dashboard.engr_task.calendar'),(14975,'U10025','SM10000101','UM10001002',0,'Profile Show',NULL,'dashboard.profile.details'),(14976,'U10025','SM10000102','UM10001002',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(14977,'U10025','SM10000103','UM10001002',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(14978,'U10025','SM10000104','UM10001002',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(14979,'U10025','SM10000105','UM10001002',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(14980,'U10025','SM10000202','UM10001003',0,'Item Store',NULL,'dashboard.item.store'),(14981,'U10025','SM10000203','UM10001003',1,'Item List','Manage','dashboard.item.index'),(14982,'U10025','SM10000207','UM10001003',0,'Item Show',NULL,'dashboard.item.show'),(14983,'U10025','SM10000212','UM10001003',1,'Item Logs','Logs','dashboard.item.logs'),(14984,'U10025','SM10000213','UM10001003',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(14985,'U10025','SM10000214','UM10001003',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(14986,'U10025','SM10000353','UM10001004',1,'PO List','Manage','dashboard.purchase_order.index'),(14987,'U10025','SM10000357','UM10001004',0,'PO Show',NULL,'dashboard.purchase_order.show'),(14988,'U10025','SM10000358','UM10001004',0,'PO Print',NULL,'dashboard.purchase_order.print'),(14989,'U10025','SM10000603','UM10001005',1,'Machine List','Manage','dashboard.machine.index'),(14990,'U10025','SM10000671','UM10001006',1,'Task Calendar','Calendar','dashboard.task.calendar'),(14991,'U10025','SM10000703','UM10001007',1,'Delivery List','Manage','dashboard.delivery.index'),(14992,'U10025','SM10000707','UM10001007',0,'Delivery Details',NULL,'dashboard.delivery.show'),(14993,'U10025','SM10000813','UM10001008',1,'Task Engr Calendar','Calendar','dashboard.engr_task.calendar'),(15106,'U10018','SM10000101','UM10001026',0,'Profile Show',NULL,'dashboard.profile.details'),(15107,'U10018','SM10000102','UM10001026',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(15108,'U10018','SM10000103','UM10001026',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(15109,'U10018','SM10000104','UM10001026',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(15110,'U10018','SM10000105','UM10001026',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(15111,'U10018','SM10000201','UM10001027',1,'Item Create','Add','dashboard.item.create'),(15112,'U10018','SM10000202','UM10001027',0,'Item Store',NULL,'dashboard.item.store'),(15113,'U10018','SM10000203','UM10001027',1,'Item List','Manage','dashboard.item.index'),(15114,'U10018','SM10000204','UM10001027',0,'Item Edit',NULL,'dashboard.item.edit'),(15115,'U10018','SM10000205','UM10001027',0,'Item Update',NULL,'dashboard.item.update'),(15116,'U10018','SM10000207','UM10001027',0,'Item Show',NULL,'dashboard.item.show'),(15117,'U10018','SM10000208','UM10001027',0,'Item Check - In',NULL,'dashboard.item.check_in'),(15118,'U10018','SM10000209','UM10001027',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(15119,'U10018','SM10000210','UM10001027',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(15120,'U10018','SM10000211','UM10001027',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(15121,'U10018','SM10000213','UM10001027',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(15122,'U10018','SM10000215','UM10001027',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(15123,'U10018','SM10000216','UM10001027',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(15124,'U10018','SM10000217','UM10001027',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(15125,'U10018','SM10000218','UM10001027',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(15126,'U10018','SM10000351','UM10001028',1,'PO Create','Add','dashboard.purchase_order.create'),(15127,'U10018','SM10000352','UM10001028',0,'PO Store',NULL,'dashboard.purchase_order.store'),(15128,'U10018','SM10000353','UM10001028',1,'PO List','Manage','dashboard.purchase_order.index'),(15129,'U10018','SM10000354','UM10001028',0,'PO Edit',NULL,'dashboard.purchase_order.edit'),(15130,'U10018','SM10000357','UM10001028',0,'PO Show',NULL,'dashboard.purchase_order.show'),(15131,'U10018','SM10000402','UM10001029',0,'JO Show',NULL,'dashboard.job_order.show'),(15132,'U10018','SM10000407','UM10001029',1,'JO List','Manage','dashboard.job_order.index'),(15133,'U10018','SM10000701','UM10001030',1,'Delivery Create','Add','dashboard.delivery.create'),(15134,'U10018','SM10000702','UM10001030',0,'Delivery Store',NULL,'dashboard.delivery.store'),(15135,'U10018','SM10000703','UM10001030',1,'Delivery List','Manage','dashboard.delivery.index'),(15136,'U10018','SM10000704','UM10001030',0,'Delivery Edit',NULL,'dashboard.delivery.edit'),(15137,'U10018','SM10000705','UM10001030',0,'Delivery Update',NULL,'dashboard.delivery.update'),(15138,'U10018','SM10000707','UM10001030',0,'Delivery Details',NULL,'dashboard.delivery.show'),(15139,'U10018','SM10000708','UM10001030',0,'Delivery Confirm Delivery',NULL,'dashboard.delivery.confirm_delivery'),(15140,'U10018','SM10000709','UM10001030',0,'Delivery Confirm Delivered Post',NULL,'dashboard.delivery.confirm_delivered_post'),(15141,'U10018','SM10000710','UM10001030',0,'Delivery Confirm Returned Post',NULL,'dashboard.delivery.confirm_returned_post'),(15142,'U10018','SM10000711','UM10001030',0,'Delivery Report Print',NULL,'dashboard.delivery.print'),(15143,'U10023','SM10000101','UM10001032',0,'Profile Show',NULL,'dashboard.profile.details'),(15144,'U10023','SM10000102','UM10001032',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(15145,'U10023','SM10000103','UM10001032',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(15146,'U10023','SM10000104','UM10001032',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(15147,'U10023','SM10000105','UM10001032',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(15148,'U10023','SM10000201','UM10001033',1,'Item Create','Add','dashboard.item.create'),(15149,'U10023','SM10000202','UM10001033',0,'Item Store',NULL,'dashboard.item.store'),(15150,'U10023','SM10000203','UM10001033',1,'Item List','Manage','dashboard.item.index'),(15151,'U10023','SM10000204','UM10001033',0,'Item Edit',NULL,'dashboard.item.edit'),(15152,'U10023','SM10000205','UM10001033',0,'Item Update',NULL,'dashboard.item.update'),(15153,'U10023','SM10000207','UM10001033',0,'Item Show',NULL,'dashboard.item.show'),(15154,'U10023','SM10000208','UM10001033',0,'Item Check - In',NULL,'dashboard.item.check_in'),(15155,'U10023','SM10000209','UM10001033',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(15156,'U10023','SM10000210','UM10001033',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(15157,'U10023','SM10000211','UM10001033',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(15158,'U10023','SM10000212','UM10001033',1,'Item Logs','Logs','dashboard.item.logs'),(15159,'U10023','SM10000213','UM10001033',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(15160,'U10023','SM10000214','UM10001033',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(15161,'U10023','SM10000215','UM10001033',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(15162,'U10023','SM10000216','UM10001033',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(15163,'U10023','SM10000217','UM10001033',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(15164,'U10023','SM10000218','UM10001033',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(15165,'U10023','SM10000351','UM10001034',1,'PO Create','Add','dashboard.purchase_order.create'),(15166,'U10023','SM10000352','UM10001034',0,'PO Store',NULL,'dashboard.purchase_order.store'),(15167,'U10023','SM10000353','UM10001034',1,'PO List','Manage','dashboard.purchase_order.index'),(15168,'U10023','SM10000354','UM10001034',0,'PO Edit',NULL,'dashboard.purchase_order.edit'),(15169,'U10023','SM10000357','UM10001034',0,'PO Show',NULL,'dashboard.purchase_order.show'),(15170,'U10022','SM10000201','UM10001036',1,'Item Create','Add','dashboard.item.create'),(15171,'U10022','SM10000202','UM10001036',0,'Item Store',NULL,'dashboard.item.store'),(15172,'U10022','SM10000203','UM10001036',1,'Item List','Manage','dashboard.item.index'),(15173,'U10022','SM10000204','UM10001036',0,'Item Edit',NULL,'dashboard.item.edit'),(15174,'U10022','SM10000205','UM10001036',0,'Item Update',NULL,'dashboard.item.update'),(15175,'U10022','SM10000207','UM10001036',0,'Item Show',NULL,'dashboard.item.show'),(15176,'U10022','SM10000208','UM10001036',0,'Item Check - In',NULL,'dashboard.item.check_in'),(15177,'U10022','SM10000209','UM10001036',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(15178,'U10022','SM10000210','UM10001036',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(15179,'U10022','SM10000211','UM10001036',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(15180,'U10022','SM10000212','UM10001036',1,'Item Logs','Logs','dashboard.item.logs'),(15181,'U10022','SM10000213','UM10001036',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(15182,'U10022','SM10000214','UM10001036',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(15183,'U10022','SM10000215','UM10001036',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(15184,'U10022','SM10000216','UM10001036',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(15185,'U10022','SM10000217','UM10001036',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(15186,'U10022','SM10000218','UM10001036',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(15187,'U10022','SM10000351','UM10001037',1,'PO Create','Add','dashboard.purchase_order.create'),(15188,'U10022','SM10000352','UM10001037',0,'PO Store',NULL,'dashboard.purchase_order.store'),(15189,'U10022','SM10000353','UM10001037',1,'PO List','Manage','dashboard.purchase_order.index'),(15190,'U10022','SM10000354','UM10001037',0,'PO Edit',NULL,'dashboard.purchase_order.edit'),(15191,'U10022','SM10000357','UM10001037',0,'PO Show',NULL,'dashboard.purchase_order.show'),(15192,'U10022','SM10000551','UM10001038',1,'Personnel Create','Add','dashboard.personnel.create'),(15193,'U10022','SM10000552','UM10001038',0,'Personnel Store',NULL,'dashboard.personnel.store'),(15194,'U10022','SM10000553','UM10001038',1,'Personnel List','Manage','dashboard.personnel.index'),(15195,'U10022','SM10000554','UM10001038',0,'Personnel Edit',NULL,'dashboard.personnel.edit'),(15196,'U10022','SM10000555','UM10001038',0,'Personnel Update',NULL,'dashboard.personnel.update'),(15197,'U10022','SM10000556','UM10001038',0,'Personnel Delete',NULL,'dashboard.personnel.destroy'),(15198,'U10022','SM10000557','UM10001038',0,'Personnel View Avatar',NULL,'dashboard.personnel.view_avatar'),(15199,'U10022','SM10000651','UM10001039',1,'Task Create','New','dashboard.task.create'),(15200,'U10022','SM10000652','UM10001039',0,'Task Store',NULL,'dashboard.task.store'),(15201,'U10022','SM10000653','UM10001039',1,'Task List','Manage','dashboard.task.index'),(15202,'U10022','SM10000654','UM10001039',0,'Task Edit',NULL,'dashboard.task.edit'),(15203,'U10022','SM10000655','UM10001039',0,'Task Update',NULL,'dashboard.task.update'),(15204,'U10022','SM10000656','UM10001039',0,'Task Delete',NULL,'dashboard.task.destroy'),(15205,'U10022','SM10000657','UM10001039',1,'Task Scheduling','Scheduling','dashboard.task.scheduling'),(15206,'U10022','SM10000658','UM10001039',0,'Task Update Finished',NULL,'dashboard.task.update_finished'),(15207,'U10022','SM10000659','UM10001039',0,'Task Rate Personnel',NULL,'dashboard.task.rate_personnel'),(15208,'U10022','SM10000670','UM10001039',0,'Task Rate Personnel Post',NULL,'dashboard.task.rate_personnel_post'),(15209,'U10022','SM10000671','UM10001039',1,'Task Calendar','Calendar','dashboard.task.calendar'),(15210,'U10022','SM10000672','UM10001039',0,'Task Update Unfinished',NULL,'dashboard.task.update_unfinished'),(15211,'U10022','SM10000701','UM10001040',1,'Delivery Create','Add','dashboard.delivery.create'),(15212,'U10022','SM10000702','UM10001040',0,'Delivery Store',NULL,'dashboard.delivery.store'),(15213,'U10022','SM10000703','UM10001040',1,'Delivery List','Manage','dashboard.delivery.index'),(15214,'U10022','SM10000704','UM10001040',0,'Delivery Edit',NULL,'dashboard.delivery.edit'),(15215,'U10022','SM10000705','UM10001040',0,'Delivery Update',NULL,'dashboard.delivery.update'),(15216,'U10022','SM10000706','UM10001040',0,'Delivery Delete',NULL,'dashboard.delivery.destroy'),(15217,'U10022','SM10000707','UM10001040',0,'Delivery Details',NULL,'dashboard.delivery.show'),(15218,'U10022','SM10000708','UM10001040',0,'Delivery Confirm Delivery',NULL,'dashboard.delivery.confirm_delivery'),(15219,'U10022','SM10000709','UM10001040',0,'Delivery Confirm Delivered Post',NULL,'dashboard.delivery.confirm_delivered_post'),(15220,'U10022','SM10000710','UM10001040',0,'Delivery Confirm Returned Post',NULL,'dashboard.delivery.confirm_returned_post'),(15221,'U10022','SM10000711','UM10001040',0,'Delivery Report Print',NULL,'dashboard.delivery.print'),(17264,'U10015','SM10000001','UM10001042',1,'User Create','Add','dashboard.user.create'),(17265,'U10015','SM10000002','UM10001042',1,'User List','Manage','dashboard.user.index'),(17266,'U10015','SM10000003','UM10001042',0,'User Store',NULL,'dashboard.user.store'),(17267,'U10015','SM10000004','UM10001042',0,'User Show',NULL,'dashboard.user.show'),(17268,'U10015','SM10000005','UM10001042',0,'User Edit',NULL,'dashboard.user.edit'),(17269,'U10015','SM10000006','UM10001042',0,'User Update',NULL,'dashboard.user.update'),(17270,'U10015','SM10000007','UM10001042',0,'User Delete',NULL,'dashboard.user.destroy'),(17271,'U10015','SM10000008','UM10001042',0,'User Activate',NULL,'dashboard.user.activate'),(17272,'U10015','SM10000009','UM10001042',0,'User Deactivate',NULL,'dashboard.user.deactivate'),(17273,'U10015','SM10000010','UM10001042',0,'User Logout',NULL,'dashboard.user.logout'),(17274,'U10015','SM10000011','UM10001042',0,'User Reset Password',NULL,'dashboard.user.reset_password'),(17275,'U10015','SM10000012','UM10001042',0,'User Reset Password Post',NULL,'dashboard.user.reset_password_post'),(17276,'U10015','SM10000013','UM10001042',0,'User View Avatar',NULL,'dashboard.user.view_avatar'),(17277,'U10015','SM10000101','UM10001043',0,'Profile Show',NULL,'dashboard.profile.details'),(17278,'U10015','SM10000102','UM10001043',0,'Profile Update Account Username',NULL,'dashboard.profile.update_account_username'),(17279,'U10015','SM10000103','UM10001043',0,'Profile Update Account Password',NULL,'dashboard.profile.update_account_password'),(17280,'U10015','SM10000104','UM10001043',0,'Profile Update Account Color',NULL,'dashboard.profile.update_account_color'),(17281,'U10015','SM10000105','UM10001043',0,'Profile View Avatar',NULL,'dashboard.profile.view_avatar'),(17282,'U10015','SM10000151','UM10001044',1,'Menu Create','Add','dashboard.menu.create'),(17283,'U10015','SM10000152','UM10001044',0,'Menu Store','','dashboard.menu.store'),(17284,'U10015','SM10000153','UM10001044',1,'Menu List','Manage','dashboard.menu.index'),(17285,'U10015','SM10000154','UM10001044',0,'Menu Edit',NULL,'dashboard.menu.edit'),(17286,'U10015','SM10000155','UM10001044',0,'Menu Update',NULL,'dashboard.menu.update'),(17287,'U10015','SM10000156','UM10001044',0,'Menu Delete',NULL,'dashboard.menu.destroy'),(17288,'U10015','SM10000201','UM10001045',1,'Item Create','Add','dashboard.item.create'),(17289,'U10015','SM10000202','UM10001045',0,'Item Store',NULL,'dashboard.item.store'),(17290,'U10015','SM10000203','UM10001045',1,'Item List','Manage','dashboard.item.index'),(17291,'U10015','SM10000204','UM10001045',0,'Item Edit',NULL,'dashboard.item.edit'),(17292,'U10015','SM10000205','UM10001045',0,'Item Update',NULL,'dashboard.item.update'),(17293,'U10015','SM10000206','UM10001045',0,'Item Delete',NULL,'dashboard.item.destroy'),(17294,'U10015','SM10000207','UM10001045',0,'Item Show',NULL,'dashboard.item.show'),(17295,'U10015','SM10000208','UM10001045',0,'Item Check - In',NULL,'dashboard.item.check_in'),(17296,'U10015','SM10000209','UM10001045',0,'Item Check - In Post',NULL,'dashboard.item.check_in_post'),(17297,'U10015','SM10000210','UM10001045',0,'Item Check - Out',NULL,'dashboard.item.check_out'),(17298,'U10015','SM10000211','UM10001045',0,'Item Check - Out Post',NULL,'dashboard.item.check_out_post'),(17299,'U10015','SM10000212','UM10001045',1,'Item Logs','Logs','dashboard.item.logs'),(17300,'U10015','SM10000213','UM10001045',0,'Item Batch by Item',NULL,'dashboard.item.fetch_batch_by_item'),(17301,'U10015','SM10000214','UM10001045',0,'Item Logs by Item',NULL,'dashboard.item.fetch_logs_by_item'),(17302,'U10015','SM10000215','UM10001045',0,'Item Check - In Existing Batch',NULL,'dashboard.item.check_in_existing_batch'),(17303,'U10015','SM10000216','UM10001045',0,'Item Check - In Existing Batch Post',NULL,'dashboard.item.check_in_existing_batch_post'),(17304,'U10015','SM10000217','UM10001045',0,'Item Check - Out By Batch',NULL,'dashboard.item.check_out_by_batch'),(17305,'U10015','SM10000218','UM10001045',0,'Item Check - Out By Batch Post',NULL,'dashboard.item.check_out_by_batch_post'),(17306,'U10015','SM10000219','UM10001045',1,'Item Reports Page','Reports','dashboard.item.reports'),(17307,'U10015','SM10000220','UM10001045',0,'Item Reports Output',NULL,'dashboard.item.reports_output'),(17308,'U10015','SM10000221','UM10001045',0,'Item Batch Add Remarks',NULL,'dashboard.item.batch_add_remarks'),(17309,'U10015','SM10000222','UM10001045',0,'Item Logs Update Remarks',NULL,'dashboard.item.logs_update_remarks'),(17310,'U10015','SM10000251','UM10001046',1,'Item Category Create','Add','dashboard.item_category.create'),(17311,'U10015','SM10000252','UM10001046',0,'Item Category Store',NULL,'dashboard.item_category.store'),(17312,'U10015','SM10000253','UM10001046',1,'Item Category List','Manage','dashboard.item_category.index'),(17313,'U10015','SM10000254','UM10001046',0,'Item Category Edit',NULL,'dashboard.item_category.edit'),(17314,'U10015','SM10000255','UM10001046',0,'Item Category Update',NULL,'dashboard.item_category.update'),(17315,'U10015','SM10000256','UM10001046',0,'Item Category Delete',NULL,'dashboard.item_category.destroy'),(17316,'U10015','SM10000301','UM10001047',1,'Item Type Create','Add','dashboard.item_type.create'),(17317,'U10015','SM10000302','UM10001047',0,'Item Type Store',NULL,'dashboard.item_type.store'),(17318,'U10015','SM10000303','UM10001047',1,'Item Type List','Manage','dashboard.item_type.index'),(17319,'U10015','SM10000304','UM10001047',0,'Item Type Edit',NULL,'dashboard.item_type.edit'),(17320,'U10015','SM10000305','UM10001047',0,'Item Type Update',NULL,'dashboard.item_type.update'),(17321,'U10015','SM10000306','UM10001047',0,'Item Type Delete',NULL,'dashboard.item_type.destroy'),(17322,'U10015','SM10000351','UM10001048',1,'PO Create','Add','dashboard.purchase_order.create'),(17323,'U10015','SM10000352','UM10001048',0,'PO Store',NULL,'dashboard.purchase_order.store'),(17324,'U10015','SM10000353','UM10001048',1,'PO List','Manage','dashboard.purchase_order.index'),(17325,'U10015','SM10000354','UM10001048',0,'PO Edit',NULL,'dashboard.purchase_order.edit'),(17326,'U10015','SM10000355','UM10001048',0,'PO Update',NULL,'dashboard.purchase_order.update'),(17327,'U10015','SM10000356','UM10001048',0,'PO Delete',NULL,'dashboard.purchase_order.destroy'),(17328,'U10015','SM10000357','UM10001048',0,'PO Show',NULL,'dashboard.purchase_order.show'),(17329,'U10015','SM10000358','UM10001048',0,'PO Print',NULL,'dashboard.purchase_order.print'),(17330,'U10015','SM10000359','UM10001048',1,'PO Buffer','Buffers','dashboard.purchase_order.buffer'),(17331,'U10015','SM10000360','UM10001048',0,'PO Post to Process',NULL,'dashboard.purchase_order.to_process'),(17332,'U10015','SM10000361','UM10001048',0,'PO Post to Buffer',NULL,'dashboard.purchase_order.to_buffer'),(17333,'U10015','SM10000401','UM10001049',1,'JO Create','Generate','dashboard.job_order.create'),(17334,'U10015','SM10000402','UM10001049',0,'JO Show',NULL,'dashboard.job_order.show'),(17335,'U10015','SM10000403','UM10001049',0,'JO Generate',NULL,'dashboard.job_order.generate'),(17336,'U10015','SM10000404','UM10001049',0,'JO Generate Fill',NULL,'dashboard.job_order.generate_fill'),(17337,'U10015','SM10000405','UM10001049',0,'JO Generate Fill Post',NULL,'dashboard.job_order.generate_fill_post'),(17338,'U10015','SM10000406','UM10001049',0,'JO Print',NULL,'dashboard.job_order.print'),(17339,'U10015','SM10000407','UM10001049',1,'JO List','Manage','dashboard.job_order.index'),(17340,'U10015','SM10000408','UM10001049',0,'JO Confirm Ready for Delivery',NULL,'dashboard.job_order.confirm_rfd'),(17341,'U10015','SM10000551','UM10001050',1,'Personnel Create','Add','dashboard.personnel.create'),(17342,'U10015','SM10000552','UM10001050',0,'Personnel Store',NULL,'dashboard.personnel.store'),(17343,'U10015','SM10000553','UM10001050',1,'Personnel List','Manage','dashboard.personnel.index'),(17344,'U10015','SM10000554','UM10001050',0,'Personnel Edit',NULL,'dashboard.personnel.edit'),(17345,'U10015','SM10000555','UM10001050',0,'Personnel Update',NULL,'dashboard.personnel.update'),(17346,'U10015','SM10000556','UM10001050',0,'Personnel Delete',NULL,'dashboard.personnel.destroy'),(17347,'U10015','SM10000557','UM10001050',0,'Personnel View Avatar',NULL,'dashboard.personnel.view_avatar'),(17348,'U10015','SM10000601','UM10001051',1,'Machine Create','Add','dashboard.machine.create'),(17349,'U10015','SM10000602','UM10001051',0,'Machine Store',NULL,'dashboard.machine.store'),(17350,'U10015','SM10000603','UM10001051',1,'Machine List','Manage','dashboard.machine.index'),(17351,'U10015','SM10000604','UM10001051',0,'Machine Edit',NULL,'dashboard.machine.edit'),(17352,'U10015','SM10000605','UM10001051',0,'Machine Update',NULL,'dashboard.machine.update'),(17353,'U10015','SM10000606','UM10001051',0,'Machine Delete',NULL,'dashboard.machine.destroy'),(17354,'U10015','SM10000607','UM10001051',1,'Machine Maintenance Index','Maintenance','dashboard.machine.maintenance_index'),(17355,'U10015','SM10000608','UM10001051',0,'Machine Maintenance Store',NULL,'dashboard.machine.maintenance_store'),(17356,'U10015','SM10000609','UM10001051',0,'Machine Maintenance Update',NULL,'dashboard.machine.maintenance_update'),(17357,'U10015','SM10000610','UM10001051',0,'Machine Maintenance Delete',NULL,'dashboard.machine.maintenance_delete'),(17358,'U10015','SM10000611','UM10001051',0,'Machine Update Status',NULL,'dashboard.machine.update_status'),(17359,'U10015','SM10000612','UM10001051',1,'Machine Maintenance Calendar','Maintenance Calendar','dashboard.machine.maintenance_calendar'),(17360,'U10015','SM10000651','UM10001052',1,'Task Create','New','dashboard.task.create'),(17361,'U10015','SM10000652','UM10001052',0,'Task Store',NULL,'dashboard.task.store'),(17362,'U10015','SM10000653','UM10001052',1,'Task List','Manage','dashboard.task.index'),(17363,'U10015','SM10000654','UM10001052',0,'Task Edit',NULL,'dashboard.task.edit'),(17364,'U10015','SM10000655','UM10001052',0,'Task Update',NULL,'dashboard.task.update'),(17365,'U10015','SM10000656','UM10001052',0,'Task Delete',NULL,'dashboard.task.destroy'),(17366,'U10015','SM10000658','UM10001052',0,'Task Update Finished',NULL,'dashboard.task.update_finished'),(17367,'U10015','SM10000659','UM10001052',0,'Task Rate Personnel',NULL,'dashboard.task.rate_personnel'),(17368,'U10015','SM10000670','UM10001052',0,'Task Rate Personnel Post',NULL,'dashboard.task.rate_personnel_post'),(17369,'U10015','SM10000671','UM10001052',1,'Task Calendar','Calendar','dashboard.task.calendar'),(17370,'U10015','SM10000672','UM10001052',0,'Task Update Unfinished',NULL,'dashboard.task.update_unfinished'),(17371,'U10015','SM10000673','UM10001052',1,'Task Reports','Reports','dashboard.task.reports'),(17372,'U10015','SM10000674','UM10001052',0,'Task Reports Output',NULL,'dashboard.task.reports_output'),(17373,'U10015','SM10000701','UM10001053',1,'Delivery Create','Add','dashboard.delivery.create'),(17374,'U10015','SM10000702','UM10001053',0,'Delivery Store',NULL,'dashboard.delivery.store'),(17375,'U10015','SM10000703','UM10001053',1,'Delivery List','Manage','dashboard.delivery.index'),(17376,'U10015','SM10000704','UM10001053',0,'Delivery Edit',NULL,'dashboard.delivery.edit'),(17377,'U10015','SM10000705','UM10001053',0,'Delivery Update',NULL,'dashboard.delivery.update'),(17378,'U10015','SM10000706','UM10001053',0,'Delivery Delete',NULL,'dashboard.delivery.destroy'),(17379,'U10015','SM10000707','UM10001053',0,'Delivery Details',NULL,'dashboard.delivery.show'),(17380,'U10015','SM10000708','UM10001053',0,'Delivery Confirm Delivery',NULL,'dashboard.delivery.confirm_delivery'),(17381,'U10015','SM10000709','UM10001053',0,'Delivery Confirm Delivered Post',NULL,'dashboard.delivery.confirm_delivered_post'),(17382,'U10015','SM10000710','UM10001053',0,'Delivery Confirm Returned Post',NULL,'dashboard.delivery.confirm_returned_post'),(17383,'U10015','SM10000711','UM10001053',0,'Delivery Report Print',NULL,'dashboard.delivery.print'),(17384,'U10015','SM10000751','UM10001054',1,'Supplier Create','New','dashboard.supplier.create'),(17385,'U10015','SM10000752','UM10001054',0,'Supplier Store',NULL,'dashboard.supplier.store'),(17386,'U10015','SM10000753','UM10001054',1,'Supplier List','Manage','dashboard.supplier.index'),(17387,'U10015','SM10000754','UM10001054',0,'Supplier Edit',NULL,'dashboard.supplier.edit'),(17388,'U10015','SM10000755','UM10001054',0,'Supplier Update',NULL,'dashboard.supplier.update'),(17389,'U10015','SM10000756','UM10001054',0,'Supplier Delete',NULL,'dashboard.supplier.destroy');
/*!40000 ALTER TABLE `su_user_submenus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `supplier_id` varchar(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_email` varchar(45) DEFAULT NULL,
  `contact_person` varchar(90) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (104,'0BBH2zerj0TLNOj1','S10001','Supplier 1',NULL,NULL,NULL,NULL,'2021-02-25 02:58:43','2021-02-25 02:58:43','::1','::1','U10015','U10015'),(105,'DqiA2ADays8Et3EX','S10002','Supplier 2',NULL,NULL,NULL,NULL,'2021-02-25 02:58:47','2021-02-25 02:58:47','::1','::1','U10015','U10015');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_personnels`
--

DROP TABLE IF EXISTS `task_personnels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_personnels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `task_id` varchar(11) DEFAULT NULL,
  `personnel_id` varchar(11) DEFAULT NULL,
  `task_personnel_id` varchar(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=666 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_personnels`
--

LOCK TABLES `task_personnels` WRITE;
/*!40000 ALTER TABLE `task_personnels` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_personnels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(45) DEFAULT NULL,
  `task_id` varchar(11) DEFAULT NULL,
  `item_id` varchar(11) DEFAULT NULL,
  `machine_id` varchar(11) DEFAULT NULL,
  `name` varchar(90) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_allday` tinyint(4) DEFAULT NULL,
  `date_from` timestamp NULL DEFAULT NULL,
  `date_to` timestamp NULL DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_type` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middlename` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_online` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '0',
  `color` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_created` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_updated` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_created` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_updated` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_time` timestamp NULL DEFAULT NULL,
  `last_login_machine` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (15,'psrkCNR7od9RRir6','U10015','USERS/admin-xe6YWXXG.jpg','admin@gmail.com','DWS','admin','$2y$10$jmJ5Df/3c5R/Vnd2T7p3seCp/z5qfue4Ih.8i6ikbLFtFTEHmuMtS','J4dMMqzHgAU3FyZGvxz6IIgkwVXQTKsoh3p9WRs26pa0k9s1RlMDBCMbFgda','ADMIN','X','ADMIN','WEB DEVELOPER',1,1,'sidebar-mini skin-green','2020-06-25 12:32:45','2021-02-25 03:24:34','::1','::1','U10002','U10015','2021-02-25 10:36:25','Bertram','::1');
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

-- Dump completed on 2021-02-25 18:50:00
