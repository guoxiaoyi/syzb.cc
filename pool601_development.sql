-- MySQL dump 10.13  Distrib 8.0.19, for osx10.15 (x86_64)
--
-- Host: localhost    Database: pool601_development
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `customize_order` int DEFAULT NULL,
  `categoryable_id` int DEFAULT NULL,
  `categoryable_type` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hotspot` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_activities_on_categoryable_type_and_categoryable_id` (`categoryable_type`,`categoryable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_records`
--

DROP TABLE IF EXISTS `activity_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `activity_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `activity_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_records`
--

LOCK TABLES `activity_records` WRITE;
/*!40000 ALTER TABLE `activity_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `categoryable_id` int DEFAULT NULL,
  `categoryable_type` varchar(255) DEFAULT NULL,
  `detail` text,
  `online` tinyint(1) DEFAULT '1',
  `customeize_order` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `stock` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_books_on_categoryable_type_and_categoryable_id` (`categoryable_type`,`categoryable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donates`
--

DROP TABLE IF EXISTS `donates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `donates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text,
  `user_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `categoryable_id` int DEFAULT NULL,
  `categoryable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_donates_on_categoryable_type_and_categoryable_id` (`categoryable_type`,`categoryable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donates`
--

LOCK TABLES `donates` WRITE;
/*!40000 ALTER TABLE `donates` DISABLE KEYS */;
/*!40000 ALTER TABLE `donates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_categories`
--

DROP TABLE IF EXISTS `item_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `item_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `cite_key` varchar(255) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_categories`
--

LOCK TABLES `item_categories` WRITE;
/*!40000 ALTER TABLE `item_categories` DISABLE KEYS */;
INSERT INTO `item_categories` VALUES (1,'图书','book',0,1,'2020-05-20 00:23:16','2020-05-20 00:23:16'),(2,'商品','product',0,1,'2020-05-20 00:23:16','2020-05-20 00:23:16'),(3,'活动','activity',0,1,'2020-05-20 00:23:16','2020-05-20 00:23:16');
/*!40000 ALTER TABLE `item_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kindeditor_assets`
--

DROP TABLE IF EXISTS `kindeditor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `kindeditor_assets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asset` varchar(255) DEFAULT NULL,
  `file_size` int DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `owner_type` varchar(255) DEFAULT NULL,
  `asset_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kindeditor_assets`
--

LOCK TABLES `kindeditor_assets` WRITE;
/*!40000 ALTER TABLE `kindeditor_assets` DISABLE KEYS */;
INSERT INTO `kindeditor_assets` VALUES (1,'75e8fd5e90b6.jpg',77310,'image/jpeg',0,'','image','2020-05-20 15:36:27','2020-05-20 15:36:27'),(2,'71a7f47c95a5.mp3',1351917,'audio/mpeg',0,'','media','2020-05-20 16:09:06','2020-05-20 16:09:06');
/*!40000 ALTER TABLE `kindeditor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `managers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password_digest` varchar(100) DEFAULT NULL,
  `supper` tinyint(1) DEFAULT '0',
  `disabled` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (1,'天津分会','admin@admin.com','$2a$12$99MaqPOi7Oq0cSOZZE1HcOlfQ6pn.Ro6gTQ0ofOPki0KwE5K5obei',1,1,'2020-05-20 00:23:16','2020-05-20 00:23:16');
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodes`
--

DROP TABLE IF EXISTS `nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `nodes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodes`
--

LOCK TABLES `nodes` WRITE;
/*!40000 ALTER TABLE `nodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `recommendation` tinyint(1) DEFAULT '0',
  `is_over` tinyint(1) DEFAULT '0',
  `user_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `pick_up_at` datetime DEFAULT NULL,
  `pick_up_token` varchar(255) DEFAULT NULL,
  `pick_up_ed` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `categoryable_id` int DEFAULT NULL,
  `categoryable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_orders_on_categoryable_type_and_categoryable_id` (`categoryable_type`,`categoryable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position` int DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `imageable_id` int DEFAULT NULL,
  `imageable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pictures_on_imageable_type_and_imageable_id` (`imageable_type`,`imageable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `points_records`
--

DROP TABLE IF EXISTS `points_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `points_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `points` decimal(10,2) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_points_records_on_title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `points_records`
--

LOCK TABLES `points_records` WRITE;
/*!40000 ALTER TABLE `points_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `points_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `categoryable_id` int DEFAULT NULL,
  `categoryable_type` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `detail` text,
  `online` tinyint(1) DEFAULT '1',
  `customize_order` int DEFAULT NULL,
  `recommendation` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `stock` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_products_on_categoryable_type_and_categoryable_id` (`categoryable_type`,`categoryable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_authentication_devise_roles`
--

DROP TABLE IF EXISTS `refinery_authentication_devise_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `refinery_authentication_devise_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_authentication_devise_roles`
--

LOCK TABLES `refinery_authentication_devise_roles` WRITE;
/*!40000 ALTER TABLE `refinery_authentication_devise_roles` DISABLE KEYS */;
INSERT INTO `refinery_authentication_devise_roles` VALUES (1,'Refinery'),(2,'Superuser');
/*!40000 ALTER TABLE `refinery_authentication_devise_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_authentication_devise_roles_users`
--

DROP TABLE IF EXISTS `refinery_authentication_devise_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `refinery_authentication_devise_roles_users` (
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  KEY `refinery_roles_users_role_id_user_id` (`role_id`,`user_id`),
  KEY `refinery_roles_users_user_id_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_authentication_devise_roles_users`
--

LOCK TABLES `refinery_authentication_devise_roles_users` WRITE;
/*!40000 ALTER TABLE `refinery_authentication_devise_roles_users` DISABLE KEYS */;
INSERT INTO `refinery_authentication_devise_roles_users` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `refinery_authentication_devise_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_authentication_devise_user_plugins`
--

DROP TABLE IF EXISTS `refinery_authentication_devise_user_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `refinery_authentication_devise_user_plugins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `refinery_user_plugins_user_id_name` (`user_id`,`name`),
  KEY `index_refinery_authentication_devise_user_plugins_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_authentication_devise_user_plugins`
--

LOCK TABLES `refinery_authentication_devise_user_plugins` WRITE;
/*!40000 ALTER TABLE `refinery_authentication_devise_user_plugins` DISABLE KEYS */;
INSERT INTO `refinery_authentication_devise_user_plugins` VALUES (1,1,'refinery_authentication_devise',1),(2,1,'refinery_pages',2),(3,1,'refinery_files',3),(4,1,'refinery_images',4);
/*!40000 ALTER TABLE `refinery_authentication_devise_user_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_authentication_devise_users`
--

DROP TABLE IF EXISTS `refinery_authentication_devise_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `refinery_authentication_devise_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `encrypted_password` varchar(255) NOT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `sign_in_count` int DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_authentication_devise_users_on_id` (`id`),
  KEY `index_refinery_authentication_devise_users_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_authentication_devise_users`
--

LOCK TABLES `refinery_authentication_devise_users` WRITE;
/*!40000 ALTER TABLE `refinery_authentication_devise_users` DISABLE KEYS */;
INSERT INTO `refinery_authentication_devise_users` VALUES (1,'admin@admin.com','admin@admin.com','$2a$10$ANC3fFfIWa1mNNl1khsGAevD91BQSASAnhNnjsklikGwPseAiIPUq','2020-05-16 08:02:54','2020-05-16 08:02:54','::1','::1',1,NULL,NULL,NULL,'2020-05-16 08:02:54','2020-05-16 08:02:54','admin-admin-com',NULL);
/*!40000 ALTER TABLE `refinery_authentication_devise_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_image_translations`
--

DROP TABLE IF EXISTS `refinery_image_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `refinery_image_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refinery_image_id` int NOT NULL,
  `locale` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_alt` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_image_translations_on_refinery_image_id` (`refinery_image_id`),
  KEY `index_refinery_image_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_image_translations`
--

LOCK TABLES `refinery_image_translations` WRITE;
/*!40000 ALTER TABLE `refinery_image_translations` DISABLE KEYS */;
INSERT INTO `refinery_image_translations` VALUES (1,1,'en','2020-05-16 08:03:45','2020-05-16 08:03:45','a','123');
/*!40000 ALTER TABLE `refinery_image_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_images`
--

DROP TABLE IF EXISTS `refinery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `refinery_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `image_width` int DEFAULT NULL,
  `image_height` int DEFAULT NULL,
  `image_uid` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `image_alt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_images`
--

LOCK TABLES `refinery_images` WRITE;
/*!40000 ALTER TABLE `refinery_images` DISABLE KEYS */;
INSERT INTO `refinery_images` VALUES (1,NULL,'156da78b-188c-43bc-9c66-6357a94e9d21.gif',539839,300,300,'2020/05/16/88zgm69ufq_156da78b_188c_43bc_9c66_6357a94e9d21.gif','2020-05-16 08:03:45','2020-05-16 08:03:45',NULL,NULL);
/*!40000 ALTER TABLE `refinery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_part_translations`
--

DROP TABLE IF EXISTS `refinery_page_part_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_part_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refinery_page_part_id` int NOT NULL,
  `locale` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `body` text,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_part_translations_on_refinery_page_part_id` (`refinery_page_part_id`),
  KEY `index_refinery_page_part_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_part_translations`
--

LOCK TABLES `refinery_page_part_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_part_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_part_translations` VALUES (1,1,'en','2020-05-16 07:57:42','2020-05-16 07:57:42','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>'),(2,2,'en','2020-05-16 07:57:42','2020-05-16 07:57:42','<p>This is another block of content over here.</p>'),(3,3,'en','2020-05-16 07:57:42','2020-05-16 07:57:42','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\"/\">Return to the home page</a></p>'),(4,4,'en','2020-05-16 07:57:42','2020-05-16 07:57:42','<p>This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.\n\nInteger interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>'),(5,5,'en','2020-05-16 07:57:42','2020-05-16 07:57:42','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>');
/*!40000 ALTER TABLE `refinery_page_part_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_parts`
--

DROP TABLE IF EXISTS `refinery_page_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_parts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `body` text,
  `position` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_parts_on_id` (`id`),
  KEY `index_refinery_page_parts_on_refinery_page_id` (`refinery_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_parts`
--

LOCK TABLES `refinery_page_parts` WRITE;
/*!40000 ALTER TABLE `refinery_page_parts` DISABLE KEYS */;
INSERT INTO `refinery_page_parts` VALUES (1,1,'body',NULL,0,'2020-05-16 07:57:42','2020-05-16 07:57:42','Body'),(2,1,'side_body',NULL,1,'2020-05-16 07:57:42','2020-05-16 07:57:42','Side Body'),(3,2,'body',NULL,0,'2020-05-16 07:57:42','2020-05-16 07:57:42','Body'),(4,3,'body',NULL,0,'2020-05-16 07:57:42','2020-05-16 07:57:42','Body'),(5,3,'side_body',NULL,1,'2020-05-16 07:57:42','2020-05-16 07:57:42','Side Body');
/*!40000 ALTER TABLE `refinery_page_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_translations`
--

DROP TABLE IF EXISTS `refinery_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int NOT NULL,
  `locale` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `custom_slug` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_translations_on_refinery_page_id` (`refinery_page_id`),
  KEY `index_refinery_page_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_translations`
--

LOCK TABLES `refinery_page_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_translations` VALUES (1,1,'en','2020-05-16 07:57:42','2020-05-16 07:57:42','Home',NULL,NULL,'home'),(2,2,'en','2020-05-16 07:57:42','2020-05-16 07:57:42','Page not found',NULL,NULL,'page-not-found'),(3,3,'en','2020-05-16 07:57:42','2020-05-16 07:57:42','About',NULL,NULL,'about');
/*!40000 ALTER TABLE `refinery_page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_pages`
--

DROP TABLE IF EXISTS `refinery_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `refinery_pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `custom_slug` varchar(255) DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) DEFAULT NULL,
  `menu_match` varchar(255) DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int DEFAULT NULL,
  `rgt` int DEFAULT NULL,
  `depth` int DEFAULT NULL,
  `view_template` varchar(255) DEFAULT NULL,
  `layout_template` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_pages_on_depth` (`depth`),
  KEY `index_refinery_pages_on_id` (`id`),
  KEY `index_refinery_pages_on_lft` (`lft`),
  KEY `index_refinery_pages_on_parent_id` (`parent_id`),
  KEY `index_refinery_pages_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_pages`
--

LOCK TABLES `refinery_pages` WRITE;
/*!40000 ALTER TABLE `refinery_pages` DISABLE KEYS */;
INSERT INTO `refinery_pages` VALUES (1,NULL,NULL,NULL,NULL,1,'/','^/$',0,0,0,1,4,0,NULL,NULL,'2020-05-16 07:57:42','2020-05-16 07:57:43'),(2,1,NULL,NULL,NULL,0,NULL,'^/404$',0,0,0,2,3,1,NULL,NULL,'2020-05-16 07:57:42','2020-05-16 07:57:42'),(3,NULL,NULL,NULL,NULL,1,NULL,NULL,1,0,0,5,6,0,NULL,NULL,'2020-05-16 07:57:42','2020-05-16 07:57:42');
/*!40000 ALTER TABLE `refinery_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_resource_translations`
--

DROP TABLE IF EXISTS `refinery_resource_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `refinery_resource_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refinery_resource_id` int NOT NULL,
  `locale` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `resource_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_resource_translations_on_refinery_resource_id` (`refinery_resource_id`),
  KEY `index_refinery_resource_translations_on_locale` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_resource_translations`
--

LOCK TABLES `refinery_resource_translations` WRITE;
/*!40000 ALTER TABLE `refinery_resource_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_resource_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_resources`
--

DROP TABLE IF EXISTS `refinery_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `refinery_resources` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int DEFAULT NULL,
  `file_uid` varchar(255) DEFAULT NULL,
  `file_ext` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_resources`
--

LOCK TABLES `refinery_resources` WRITE;
/*!40000 ALTER TABLE `refinery_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `replies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_replies_on_topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(191) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140403030818'),('20150420081831'),('20150420081832'),('20150420081833'),('20150420081835'),('20150420081836'),('20150429083605'),('20150429083606'),('20150505084835'),('20170501091456'),('20200130040016'),('20200203151028'),('20200205150838'),('20200205151109'),('20200205180352'),('20200206020514'),('20200209151532'),('20200217161739'),('20200217161920'),('20200220145052'),('20200220145144'),('20200220145437'),('20200222185259'),('20200223054247'),('20200301123336'),('20200302151725'),('20200407191535'),('20200413080752'),('20200413080808'),('20200428024335'),('20200516075729'),('20200516075730'),('20200516075733'),('20200516075734'),('20200516075735'),('20200516075736'),('20200516075737'),('20200516075738'),('20200516075739'),('20200516075740'),('20200516075741'),('20200516075742'),('20200516075743'),('20200516075744'),('20200516075745'),('20200516075746'),('20200516075747');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_meta`
--

DROP TABLE IF EXISTS `seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `seo_meta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int DEFAULT NULL,
  `seo_meta_type` varchar(255) DEFAULT NULL,
  `browser_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `id_type_index_on_seo_meta` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_meta`
--

LOCK TABLES `seo_meta` WRITE;
/*!40000 ALTER TABLE `seo_meta` DISABLE KEYS */;
INSERT INTO `seo_meta` VALUES (1,1,'Refinery::Page::Translation',NULL,NULL,'2020-05-16 07:57:42','2020-05-16 07:57:42'),(2,2,'Refinery::Page::Translation',NULL,NULL,'2020-05-16 07:57:42','2020-05-16 07:57:42'),(3,3,'Refinery::Page::Translation',NULL,NULL,'2020-05-16 07:57:42','2020-05-16 07:57:42');
/*!40000 ALTER TABLE `seo_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `node_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_topics_on_node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `parent_phone` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT '0.00',
  `levels` varchar(255) DEFAULT 'tourist',
  `expired_at` date DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_phone` (`phone`),
  KEY `index_users_on_name` (`name`),
  KEY `index_users_on_openid` (`openid`),
  KEY `index_users_on_manager_id` (`manager_id`),
  KEY `index_users_on_province` (`province`),
  KEY `index_users_on_parent_phone` (`parent_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vips`
--

DROP TABLE IF EXISTS `vips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `vips` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `levels` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_vips_on_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vips`
--

LOCK TABLES `vips` WRITE;
/*!40000 ALTER TABLE `vips` DISABLE KEYS */;
/*!40000 ALTER TABLE `vips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wizcms_article_article_categories`
--

DROP TABLE IF EXISTS `wizcms_article_article_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `wizcms_article_article_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `custom_order` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `brief` varchar(200) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `cite_key` varchar(50) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wizcms_article_article_categories`
--

LOCK TABLES `wizcms_article_article_categories` WRITE;
/*!40000 ALTER TABLE `wizcms_article_article_categories` DISABLE KEYS */;
INSERT INTO `wizcms_article_article_categories` VALUES (2,'原创作品',NULL,0,NULL,NULL,NULL,NULL,'2020-05-20 00:59:30','2020-05-20 01:05:02'),(5,'精华文章 ',NULL,2,NULL,NULL,'news',NULL,'2020-05-20 01:06:39','2020-05-20 17:43:35'),(6,'美国大学',NULL,5,NULL,NULL,NULL,NULL,'2020-05-20 01:06:59','2020-05-20 01:06:59'),(7,'美高&国际学校',NULL,5,NULL,NULL,NULL,NULL,'2020-05-20 01:07:23','2020-05-20 01:08:15'),(8,'教育&养育',NULL,5,NULL,NULL,NULL,NULL,'2020-05-20 01:07:53','2020-05-20 01:08:05'),(9,'出版书籍',NULL,2,NULL,NULL,'book',NULL,'2020-05-20 01:35:21','2020-05-20 15:10:52'),(10,'视频音频',NULL,2,NULL,NULL,'video',NULL,'2020-05-20 01:37:47','2020-05-20 16:14:16');
/*!40000 ALTER TABLE `wizcms_article_article_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wizcms_article_articles`
--

DROP TABLE IF EXISTS `wizcms_article_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `wizcms_article_articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `brief` varchar(200) DEFAULT NULL,
  `content` text,
  `article_category_id` int DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `customeize_order` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `cite_key` varchar(50) DEFAULT NULL,
  `copy_from` varchar(150) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `hotspot` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wizcms_article_articles`
--

LOCK TABLES `wizcms_article_articles` WRITE;
/*!40000 ALTER TABLE `wizcms_article_articles` DISABLE KEYS */;
INSERT INTO `wizcms_article_articles` VALUES (1,'我在美国当老师','',1,'还原最真实的美国中学教育','<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span>更多的中国家庭今天考虑把孩子送到美国读中学，因此对美国中学一级中国小留学生在海外求学都需要有更深入的了解。林老师深悉中国文化，又在美国教育第一线工作多年，他积累的经验很好地填补了国内这方面的信息空缺。如果你想了解美国中学教育，这本书应该是最好的选择之一。</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span><span style=\"color:#0000CD;\">—— 俞敏洪，新东方创始人</span></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span>在美国的华人虽然很多，但敢于并能够进入美国私立中学教书的华人却并不多，能在美国私立寄宿中学协会的全国大会上演讲的更是凤毛麟角。林老师在书中描绘了美国私立中学的全景，深刻而且真实。这本书不仅让生活在美国的华人能够进一步了解美国教育，更能给中国的家庭带来惊喜。</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span><span style=\"color:#0000FF;\">—— 蔡美儿，耶鲁大学法学院教授，《虎妈战歌》作者</span></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span>这本书既有学术性，适合于中国的教育者阅读，又具有很高的实用性，非常适合想了解美国中学的中国家庭。最难的的是这本书的客观性，呈现了最真实的美国精英式教育，既讲述了美国教育的优点，又展现了它的不足，是一本珍贵的集理论和实际操作于一体的指南。</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span><span style=\"color:#0000FF;\">—— 王本中，曾任北京师范大学实验中学校长，中国教育学会高中教育专业委员会理事长</span></span> \r\n</p>',9,'mmhMcbJqS6ixVxHk0HMYJg.jpg',NULL,'2020-05-20 14:58:52','2020-05-20 15:14:42','mybook',NULL,NULL,1),(2,'优秀的绵羊','',0,'还原最真实的美国大学教育','<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<img src=\"http://localhost:8080/uploads/image/202005/75e8fd5e90b6.jpg\" alt=\"\" width=\"350\" height=\"467\" title=\"\" align=\"left\" />\r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	作者是威廉·德雷谢维奇，在<span style=\"color:#0000FF;\">耶鲁大学</span>担任过10年英文教授，在<span style=\"color:#0000FF;\">哥伦比亚大学</span>担任过5年研究生导师，该书是林老师译作。\r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span>该书几乎颠覆了整个美国中上层阶级的价值观。</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span><span style=\"color:#0000FF;\">——《纽约时报》</span></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span></span><span></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span>他在书中提出的很多建议无疑值得今天的家长深思!想想看，花费成千上万美元给孩子请SAT辅导老师真的很值吗?”</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span><span style=\"color:#0000FF;\">——《华尔街日报》</span></span> \r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span>作为中国读者，如果你不怎么了解美国教育，读完这本书可能会惊异于中美大学的巨大差异;如果你已经有所了解美国教育，读完可能会惊异于中美大学有巨大的相似性。</span> \r\n</p>\r\n<p style=\"font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<span><span style=\"color:#0000FF;\">——《南方周末》</span></span> \r\n</p>',9,NULL,NULL,'2020-05-20 15:00:03','2020-05-20 15:36:40','',NULL,NULL,0),(3,'美国寄宿高中如何管理学生的','',0,'','<iframe src=\"http://open.iqiyi.com/developer/player_js/coopPlayerIndex.html?vid=35f21a92d023dadc76a64f39a8152bab&tvId=16254309800&accessToken=2.f22860a2479ad60d8da7697274de9346&appKey=3955c3425820435e86d0f4cdfe56f5e7&appId=1368&height=100%&width=100%\" frameborder=\"0\" width=\"100%\" height=\"500\">\r\n</iframe>',10,'WqXbt98fSb2IqO9JXIS2kw.jpg',NULL,'2020-05-20 16:09:50','2020-05-20 17:18:15','',NULL,NULL,0),(4,' 竞争美国名校，这一项能力贯穿小、初、高','',0,'就读美国本科名校，竞争激烈乃人之常情，但是美本录取评审过程招生官带有浓厚主观色彩, 另家长们难免产生了诸多的疑惑。','<span style=\"color:#666666;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">就读美国本科名校，竞争激烈乃人之常情，但是美本录取评审过程招生官带有浓厚主观色彩, 另家长们难免产生了诸多的疑惑。</span>',6,NULL,NULL,'2020-05-20 17:44:16','2020-05-20 17:45:14','',NULL,NULL,0),(5,'国际学校: 一流校舍、二流师资、三流管理','',0,'有教育同行在饭桌上吐槽，现在国际学校办学往往是“一流校舍、二流师资、三流管理” --高层不稳定，中层乱提拔。也有家长反馈自己孩子的学校在入学之后才发现原来是“一流校舍、二流管理、三流师资”。','',7,NULL,NULL,'2020-05-20 17:44:53','2020-05-20 17:44:53','',NULL,NULL,0),(6,'中奖5亿美金，你将如何处理? |海外求学必须具备这一项能力','',0,'我的一位前耶鲁大学招生官朋友在面试申请者的时候，非常喜欢问这样一个问题','<span style=\"color:#666666;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">我的一位前耶鲁大学招生官朋友在面试申请者的时候，非常喜欢问这样一个问题</span>',8,NULL,NULL,'2020-05-20 17:45:40','2020-05-20 17:45:40','',NULL,NULL,0),(7,'美国寄宿高中如何管理学生的','123',1,'<%= @article.previous%><%= @article.previous%>','&lt;%= @article.previous%&gt;&lt;%= @article.previous%&gt;&lt;%= @article.previous%&gt;&lt;%= @article.previous%&gt;',8,'156da78b-188c-43bc-9c66-6357a94e9d21.gif',123,'2020-05-20 23:40:44','2020-05-20 23:41:43','',NULL,'2020-03-04 00:00:00',1);
/*!40000 ALTER TABLE `wizcms_article_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wizcms_article_pages`
--

DROP TABLE IF EXISTS `wizcms_article_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `wizcms_article_pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `published` tinyint(1) DEFAULT NULL,
  `cite_key` varchar(50) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `brief` varchar(200) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wizcms_article_pages`
--

LOCK TABLES `wizcms_article_pages` WRITE;
/*!40000 ALTER TABLE `wizcms_article_pages` DISABLE KEYS */;
INSERT INTO `wizcms_article_pages` VALUES (1,'选择比努力更重要','<strong><span style=\"color:#CC0000;\"><span style=\"font-family:微软雅黑;\"> \r\n<div id=\"w_common_text-1571726850866\" class=\"reset_style\" style=\"padding:0px;margin:0px auto;font-size:14px;color:#595959;font-family:&quot;background-color:#FFFFFF;\">\r\n	<div style=\"padding:0px;margin:0px;\">\r\n		<p>\r\n			<span><span style=\"font-family:微软雅黑;\">家长都不希望自己孩子的教育走了弯路，但弯路是人的必经之路，人生就是从不断的犯错中得到教训而成长。即使如此，不是所有弯路都是有意义的，都是可以弥补的。伴随着孩子的长大，试错成本陡然上涨。“选择比努力更重要” 是真言，而“选择比努力更困难”是现实。每一个追求国际教育的家庭都会经历一次漫长的学习和成长之路，而这条路充满了大大小小的选择题。<br />\r\n<br />\r\n隔行如隔山：有时候是因为家长不了解教育，错过了孩子最佳的规划和准备时间，家长只能自我安慰老大的失误，老二的收获。有时候是因为信息泛滥或匮乏，加剧了家长的焦虑，导致跟风乱报班，花了天价的钱, 却耽误了珍贵的时间。这些就是没有意义的弯路。</span></span> \r\n		</p>\r\n		<p>\r\n			<br />\r\n<span><span style=\"font-family:微软雅黑;\">高效人群，追求分工精细。医疗有家庭医生，法律有家庭律师，投资有家族基金，唯独教育，只能依靠家长自己掌握方向。“林老师频道”把难题化繁为简，避免无意义风险，作为中立独特的声音，为您解答在其他地方回答不了的问题。</span></span> \r\n		</p>\r\n	</div>\r\n</div>\r\n<div id=\"w_grid-1571726941001\" class=\"w_grid-001\" style=\"padding:0px;margin:30px auto 0px;color:#595959;font-family:&quot;font-size:14px;background-color:#FFFFFF;\">\r\n	<div class=\"w_grid \" style=\"padding:0px;margin:0px;\">\r\n		<div class=\"e_box e_box-000 p_gridbox\" style=\"padding:0px;margin:0px;\">\r\n			<div id=\"content_box-1571726941001-0\" class=\"e_box e_box-000 d_gridCell_0 p_gridCell\" style=\"padding:0px;margin:0.6rem 0px;\">\r\n				<div id=\"w_common_text-1571726916595\" class=\"reset_style\" style=\"padding:0px;margin:0px auto;\">\r\n					<div style=\"padding:0px;margin:0px;\">\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n</span></span></strong>',0,'select','','',NULL,'2020-05-20 23:55:38','2020-05-20 23:56:31'),(2,'联系我们','<span style=\"font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">请填写您的基本信息我们将在2-3天之内与您取得联系！或者您可以直接添加“林老师频道”微信，平台助手会与您取得联系！</span>',0,'contact','','',NULL,'2020-05-20 23:58:41','2020-05-20 23:58:41'),(3,'家长&同行评语','<p>\r\n	林老师把我们遇到的问题层层分解，让繁杂的思绪有了主线。若不是中美精英行业的大拿绝不会有这种化繁为简，抽丝剥茧的规划能力，确认让人叹为观止。林老师要求写一下问题背景和孩子的特点，根据家庭的实际情况给出最适合最中肯的建议，恰切而合理的方案让人听了非常受用，总有自己怎么没有想到和林老师相见恨晚的感觉。 <span style=\"color:#0066cc;\">栾家长，3岁，哈尔滨</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	我的孩子跟随林老师学习了三年多，作为孩子的家长，我发自内心地想和大家分享一下我对林老师的了解和看法。我诚恳地希望更多的孩子在林老师的启发和帮助下取得长足的进步。在我的认知中，林老师是一位教育专家，一位心理引路人，一位现代人才的雕琢导师，这丝毫没有夸张。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	林老师对东西方的文化差异和教育理念研究得非常透彻。林老师让人最佩服的一点是在深入了解孩子后进行个性化雕琢，他没有让每一个孩子都去迎合父母心中想象的高度，而是帮助每一个孩子寻找到最有效利用他自身潜力的路径，充分攀越他所能达到的最高高度。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	林老师不是为了孩子的升学配合家长帮孩子编织一个完美的故事，而是依据孩子的特点、潜质并结合西方教育的价值观用孩子的足迹去书写仅属于他的独一无二的人生。别人投入的是精力，林老师投入的是心力。别人是用一项很强的专业技能不停地标准化复制，林老师则是把每一个学生都看成艺术品的胚子去用心雕琢，让孩子做自己，努力使他自身的价值最大化。 <span style=\"color:#0066cc;\">Bob爸爸，在读美高</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	咨询的是北京的国际化学校的择校问题。林老师作为业内专家，对各校非常了解，针对我们的个性化问题给出了明确的判断和建议。同时提出了让我们耳目一新的新思路！大力推荐！\r\n</p>\r\n<p>\r\n	<span style=\"color:#0066cc;\">N头雾水，8年级，北京</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	认识林老师是在四年前微信公众号蓝橡树组织的一次活动。自此开始关注林老师的公众号，并拜读了林老师翻译的《优秀的绵羊》，开始读Kindle 的电子书，读完后又买了纸制书以收藏和再次精读。林老师的每一篇公众号上发布的文章，基本上我都会读两遍以上，他也提供了很多实践中可供参考和操作的可行性方案。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	面对市面上不计其数、形形色色、鱼龙混杂、多以赚取费用为目的各类留学中介，难觅可提供教育咨询和规划的专业靠谱从业人员。虽然只是读林老师的文章，未见其人，但长期关注他的文章，还是能从字里行间感受到他的认真和专业。事实证明我的选择是明智的。不论询前询中了解咨询内容还是询后期待咨询反馈，我都以认真二字评价林老师。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	八十分钟的咨询是百分百的物有所值。首先林老师对我们关心的国际课程A-level 和IBDP有了更详尽的解答和分析，令我们对下一步规划课程和选择学校有了进一步明确的方向。同时林老师对中西方教育的各自优劣也一言明之。其次，对于我们的学校选择，从家庭孩子学校等多方面多角度的提出建设性意见和实用性建议。最后对我最难以把握的国际学校教学质量考察方面给予了非常专业的指导意见。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	特别需要再次提出并表示感谢的是，咨询完的第二天林老师专门还提供了一些可供参考和选择的学校联系方式 ，以及孩子从公立学校转换国际课程所需相关准备的资源推荐。对于身处四线小城，资源信息有限的我们不可不谓意外的惊喜。 <span style=\"color:#0066cc;\">徐妈，9年级，四川</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	林老师是行业先进，熟悉美国院校和本土国际课程学校。对如何选择国际教育项目有读到的见解和专业解读。获益匪浅，是名副其实的行家，大力推荐！ <span style=\"color:#0066CC;\">李锰，国际学校老师</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	老师非常专业，给了我们好多非常有效的建议和分析。现在孩子还小，未来还有很多问题向林老师请教。虽然只有短短的一小时，但收获还是很多的。再次感谢！ <span style=\"color:#0066cc;\">Torres，5岁，北京</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	从林老师那里得到的重要收获以及总体服务评价：林老师非常专业，对留学动向有很深刻的了解。他高瞻远瞩，经验丰富，对于择校、申请时间点、国内外的对比等等，他都能给出很恰当的指导以及非常具有可操作性的建议。对于追求国际化教育的孩子家长，林老师一定会让你大受启发。林老师提供的是超值的服务，我们获益匪浅。 <span style=\"color:#0066cc;\">钱家长，7年级 (准美高)，上海</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	回到家中翻开林老师的赠书，才发现林老师的内页竟亲笔写下了一句对我的祝福语，感动万分。从林老师的言语中能真切的感受到他对教育事业的执着和情怀。与林老师的约谈直接且高效，非常有针对性的解答了我的困惑。谈话虽一个小时，收获的却是对今后发展规划进一步明确和细化。林老师给予自己丰富的中美教育实践经验，给了我很多实际且中肯的建议，更是坚定了我的信念和方向。 <span style=\"color:#0066cc;\">佳嘉，国际学校老师</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	参加过在线由林老师作为主讲嘉宾的国际教育讲座，很有收获。为孩子就读国际学校还是公立小学纠结了很久，请教了数不清的专家老师和朋友，但临到决策仍然茫然，因为确实各有利弊。林老师一段话终结了我的纠结：究竟希望培养孩子什么样的特质，希望他成为什么样的人?人的一生是终生学习的过程。感谢林老师点拨！ <span style=\"color:#0066cc;\">Nancy, 幼升小，上海</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	最大的收获是在众多的声音中，找到了方向，明确了申请美高的程序、准备的重点，以及可以借助的力量。林老师不仅是专业的，更是与父母一样，站在孩子的角度为孩子更长远的未来负责的，这是非常难能可贵的。很幸运能有机会参加这样的讲座，并由此打开了眼界，不再盲从。 <span style=\"color:#0066cc;\">于家长，6年级，北京</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	林老师，上周五交流后收获很大。我的孩子四年级，处在计划从公立学校转国际的过程中。网络与身边朋友，有关于各种教育理念的碰撞及各类学校的资讯，菁芜杂陈。经过林老师梳理，对国际名校的招生标准及背后的社会文化成因有更深入的了解，对在北京各类国际学校的理念、教学方法、成绩也获得业内人的洞见，更对我们自己的需求和努力方向有更清晰的思考。感谢!简而言之，原来犹豫，现在不犹豫了。 <span style=\"color:#0066cc;\">张家长，4年级，北京</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	林老师：您好!周四与您的沟通与交流，让我受益匪浅，收获良多。简单总结一下，大致归纳以下几点：一是融合性。您自己小留学生和美高教师的经历及积累的经验让您对中美在文化、思维、想法上的不同非常了解，能一针见血地找到问题的所在，避免家长和学生走弯路。二是实用性。您指点的很多方法具有很强的指导性和操作性，特别是对于未来升学所要关注的重点和要点，对孩子如何规划四年的高中学习很有帮助。三是亲和力。与您交流，我可以畅所欲言地表达自己的疑问和观点，您娓娓道来的授道与解惑让人如沐春风，沟通的畅通无阻让咨询能达到最好的效果。再一次对您为我和我的孩子付出的精力和心血表示感谢！ <span style=\"color:#0066cc;\">Tom妈妈，9年级，上海</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	林老师在国际教育和课程设计方面有丰富的经验。林老师给予我的意见和建议很有针对性，非常感谢！ <span style=\"color:#0066cc;\">艾玛，国际学校老师</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	昨晚与您的沟通和交流，让我受益匪浅，满满的干货和实操经验，不得不佩服。您自己小留学生和美高教师的经历和积累的经验让您对中美在文化、思想、想法上的不同都非常的了解，您的思路清晰，实用性很强避免家长和学生少走弯路。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	本人自认为比较了解美国文化，一直从事对外工作，但是在和学校打交道方面很被动。孩子今年去了美国寄宿高中,和室友产生了一些矛盾, 孩子和室友协调无果, 家长在这边也使不上力,干着急。而您自己的小留学和美高老师的经历特别能理解孩子处境,非常准确地把握到了孩子的痛点，给到我们特别实用的指导性意见，消除了我们家长的困惑，让我们学会了与孩子如何沟通理解孩子。非常感谢您给我做的指导，就如同黑夜里点亮了一盏明灯照亮了前方的道路。 <span style=\"color:#0066cc;\">Jenny妈妈，在读美高</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	现在是个分工越来越精细化的社会，找专业的人做专业的事将会是一种趋势，在留学教育领域，林老师就是专家。短短一个小时的接触，我们感受到的是坦诚、热情、专业，在小孩将来的学习生活中，我们会一直关注林老师的教育资讯，也希望林老师的教育专长能够帮助到更多家有儿女的中国家庭。 <span style=\"color:#0066cc;\">陈家长，幼儿园大班，嘉兴</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	如果说前两次的咨询更多地是战术层面的指导，那么第三次无疑是上升到了战略层面。帮助我在孩子的教育中，以更高的高度和更宽广的视野，提前规划和操作。我内心不禁感慨，这样的咨询老师实在是太实诚了!真正是将解惑与授道完美结合，不但专业素养过硬，更难得的是能与父母一起并肩作战帮助孩子成长。就连女儿私下也开玩笑说“妈妈我们真是太幸运了，就像总是有个“军师”为我们指点迷津！ <span style=\"color:#0066cc;\">暖妈，7年级，湖州</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<p>\r\n	非常感谢林老师愿意近距离服务到迷茫的家长。我关注了几个专注于留学策划机构的公众号，有次读到林老师的文章，提到小留学生对中国文化的传承，很欣赏他看问题的角度。在预约的同时，我kindle买了林老师的书，拜读了一下，对林老师有了更深的认识。他是一个有“教育情怀”的人。虽然简单的四个字，却是我个人对教育工作者最高的评价。教育之于教育情怀的人就是用生命影响生命，是冰冷的分数和应试考试的世界里人性的关怀和温度，是对成长中的生命最好的守护。而这是目前中国教育最稀缺的。\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	老公和我一起听了林老师的分析，决定要5年级这一年让儿子做好语言的准备，六年级开始申请去国际学校或者走读或者寄宿。而女儿继续在公立学校读书，然后6年级转入国际学校。我们家庭处于费用和汉字学习的考虑比较希望孩子们在公立学校读完小学。林老师后来给我做了咨询总结，提醒我们关注孩子们的情绪需要。不论孩子在学校里的表现如何，尤其出现负面情绪的时候，父母需要先与孩子有很好的连接。这对我们是很好的提醒。真希望更多的家庭能从林老师受益。\r\n</p>\r\n<p>\r\n	<span style=\"color:#0066cc;\">Johnny &amp; Sophie 爸爸妈妈，4年级&amp;1年级，北京(非京籍)</span>\r\n</p>\r\n<div>\r\n	&nbsp;\r\n</div>',0,'commit','','',NULL,'2020-05-21 01:26:59','2020-05-21 01:26:59');
/*!40000 ALTER TABLE `wizcms_article_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wizcms_link_categories`
--

DROP TABLE IF EXISTS `wizcms_link_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `wizcms_link_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `custom_order` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `brief` varchar(200) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `cite_key` varchar(50) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wizcms_link_categories`
--

LOCK TABLES `wizcms_link_categories` WRITE;
/*!40000 ALTER TABLE `wizcms_link_categories` DISABLE KEYS */;
INSERT INTO `wizcms_link_categories` VALUES (1,'活动',NULL,0,NULL,NULL,'course',1,'2020-05-20 00:23:16','2020-05-20 00:23:16');
/*!40000 ALTER TABLE `wizcms_link_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wizcms_link_links`
--

DROP TABLE IF EXISTS `wizcms_link_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `wizcms_link_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `cite_key` varchar(50) DEFAULT NULL,
  `custom_order` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wizcms_link_links`
--

LOCK TABLES `wizcms_link_links` WRITE;
/*!40000 ALTER TABLE `wizcms_link_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wizcms_link_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-21  3:29:19
