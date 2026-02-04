-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: trendy_threads_bails
-- ------------------------------------------------------
-- Server version	8.4.6

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
-- Table structure for table `application_user`
--

DROP TABLE IF EXISTS `application_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_user` (
  `version` int NOT NULL,
  `id` bigint NOT NULL,
  `hashed_password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `profile_picture` mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_user`
--

LOCK TABLES `application_user` WRITE;
/*!40000 ALTER TABLE `application_user` DISABLE KEYS */;
INSERT INTO `application_user` VALUES (1,1,'$2a$10$xdbKoM48VySZqVSU/cSlVeJn0Z04XCZ7KZBjUBC00eKo5uLswyOpe','John Normal','user',''),(1,2,'$2a$10$jpLNVNeA7Ar/ZQ2DKbKCm.MuT2ESe.Qop96jipKMq7RaUgCoQedV.','Emma Executive','admin','');
/*!40000 ALTER TABLE `application_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bail`
--

DROP TABLE IF EXISTS `bail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bail` (
  `amount_of_items_at_purchase` int DEFAULT NULL,
  `bail_price` int DEFAULT NULL,
  `current_amount_of_items` int DEFAULT NULL,
  `date_of_purchase` date DEFAULT NULL,
  `version` int NOT NULL,
  `id` bigint NOT NULL,
  `bail_name` varchar(255) DEFAULT NULL,
  `recorded_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bail`
--

LOCK TABLES `bail` WRITE;
/*!40000 ALTER TABLE `bail` DISABLE KEYS */;
/*!40000 ALTER TABLE `bail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bail_grade`
--

DROP TABLE IF EXISTS `bail_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bail_grade` (
  `created_date` date DEFAULT NULL,
  `current_quantity` int DEFAULT NULL,
  `grade_number` int DEFAULT NULL,
  `initial_quantity` int DEFAULT NULL,
  `price_per_item` int DEFAULT NULL,
  `version` int NOT NULL,
  `bail_id` bigint DEFAULT NULL,
  `id` bigint NOT NULL,
  `recorded_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt4eiiynvrqhsbas8oofe6n3cf` (`bail_id`),
  CONSTRAINT `FKt4eiiynvrqhsbas8oofe6n3cf` FOREIGN KEY (`bail_id`) REFERENCES `bail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bail_grade`
--

LOCK TABLES `bail_grade` WRITE;
/*!40000 ALTER TABLE `bail_grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `bail_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idgenerator`
--

DROP TABLE IF EXISTS `idgenerator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idgenerator` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idgenerator`
--

LOCK TABLES `idgenerator` WRITE;
/*!40000 ALTER TABLE `idgenerator` DISABLE KEYS */;
INSERT INTO `idgenerator` VALUES (1000);
/*!40000 ALTER TABLE `idgenerator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `amoun_of_items` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `version` int NOT NULL,
  `id` bigint NOT NULL,
  `bail_name` varchar(255) DEFAULT NULL,
  `cashier` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updates`
--

DROP TABLE IF EXISTS `updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `updates` (
  `version` int NOT NULL,
  `id` bigint NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `recorded_by` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updates`
--

LOCK TABLES `updates` WRITE;
/*!40000 ALTER TABLE `updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `roles` enum('ADMIN','USER') DEFAULT NULL,
  KEY `FKq0h6vpf3crn504yyep1hdv0vc` (`user_id`),
  CONSTRAINT `FKq0h6vpf3crn504yyep1hdv0vc` FOREIGN KEY (`user_id`) REFERENCES `application_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'USER'),(2,'USER'),(2,'ADMIN');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-01  9:07:46
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: threads
-- ------------------------------------------------------
-- Server version	8.4.6

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','employee','customer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin','admin@example.com',NULL,'$2y$12$SwG8FHoDElD5YZSZiHX8Y.TkstDvXgpZYvMHfDNLVbTFbvUBchSYa',NULL,NULL,NULL,'admin','active',NULL,NULL,NULL),(2,'Employee','employee','employee@example.com',NULL,'$2y$12$5EdNR/LWTKuC09HL.rz4COa/RfDC4FJEsLed0dgkR43szOIQbKMhO',NULL,NULL,NULL,'employee','active',NULL,NULL,NULL),(3,'Customer','customer','customer@example.com',NULL,'$2y$12$McA/O9bMrsY2H4Gj6dg1ze..vGpKL3iH7sBeQids/xQgaxf69Ssqq',NULL,NULL,NULL,'customer','active',NULL,NULL,NULL),(4,'Anastasia Torp',NULL,'peter.hackett@example.com','2026-01-22 17:27:40','$2y$12$S9uWG.9blpcbz3E.z4L1A.C.U/2mNH2e0IS5XnK4vED6m8zieAgd.','https://via.placeholder.com/400x400.png/0099cc?text=hic','707-864-0211','7275 Jakubowski Ports Apt. 187\nHammesfort, GA 04285-1656','employee','active','7fDKYusbhS','2026-01-22 17:27:41','2026-01-22 17:27:41'),(5,'Dr. Daniela Labadie V',NULL,'dmorissette@example.com','2026-01-22 17:27:41','$2y$12$S9uWG.9blpcbz3E.z4L1A.C.U/2mNH2e0IS5XnK4vED6m8zieAgd.','https://via.placeholder.com/400x400.png/008844?text=quas','+1.936.556.5082','901 Yost Springs Apt. 316\nBergnaumfurt, CA 36613-2571','admin','active','aF3Bjv2aeo','2026-01-22 17:27:41','2026-01-22 17:27:41'),(6,'Calista Lowe',NULL,'colleen06@example.org','2026-01-22 17:27:41','$2y$12$S9uWG.9blpcbz3E.z4L1A.C.U/2mNH2e0IS5XnK4vED6m8zieAgd.','https://via.placeholder.com/400x400.png/00cccc?text=consectetur','1-986-396-5725','5558 Ewald Center\nLake Myronshire, SD 81368','customer','active','xt8U0FFqVJ','2026-01-22 17:27:42','2026-01-22 17:27:42'),(7,'Eliane Donnelly',NULL,'kcruickshank@example.net','2026-01-22 17:27:41','$2y$12$S9uWG.9blpcbz3E.z4L1A.C.U/2mNH2e0IS5XnK4vED6m8zieAgd.','https://via.placeholder.com/400x400.png/00ee77?text=molestias','+1-445-831-5270','207 Lynch Parkway Apt. 479\nLorenzamouth, NJ 93360-1651','employee','active','LqmN2gcOZN','2026-01-22 17:27:42','2026-01-22 17:27:42'),(8,'Elliott Huel',NULL,'blanca.yost@example.org','2026-01-22 17:27:41','$2y$12$S9uWG.9blpcbz3E.z4L1A.C.U/2mNH2e0IS5XnK4vED6m8zieAgd.','https://via.placeholder.com/400x400.png/000077?text=dolore','630-433-6683','32757 Marie Burgs Suite 517\nSimoneburgh, DE 48153','employee','active','eydmXbV70u','2026-01-22 17:27:43','2026-01-22 17:27:43');
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

-- Dump completed on 2026-02-01  9:07:47
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: tarama_farms
-- ------------------------------------------------------
-- Server version	8.4.6

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `cart_state` int NOT NULL COMMENT '0 - no items in cart\r\n1 - items in cart\r\n2 - items sold from cart',
  `cartDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `purchase_id` int DEFAULT NULL,
  `product_amount_added` int NOT NULL,
  `u_id` int NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_product_constraint` (`product_id`),
  KEY `cart_purchase_constraint` (`purchase_id`),
  KEY `cart_customer_constraint` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (2,1,1,'2023-07-05 10:09:26',NULL,20,31),(3,2,1,'2023-07-07 04:40:05',NULL,5,31);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` text NOT NULL,
  `product_amount` text NOT NULL,
  `product_category` text NOT NULL,
  `product_price` text NOT NULL,
  `product_image_location` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '../images/products/shoppin_cart%202.png',
  `product_image_alt` varchar(124) DEFAULT 'an image of your selected product',
  `product_description` text,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'JK Golf Shirts','200','Golf Shirts','15000','../images/products/jk golf shirt.jpeg',NULL,NULL),(2,'JK T-Shirts','190','T-Shirts','15000','../images/products/OIF.jfif',NULL,NULL),(3,'Puma Soccer Boots','20','Soccer Boots','65000','../images/products/download.jfif',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `purchase_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `cart_id` int NOT NULL,
  `product_id` int NOT NULL,
  `purchase_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `u_name` varchar(50) NOT NULL,
  `u_email` varchar(70) NOT NULL,
  `u_password` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '70352f41061eda4ff3c322094af068ba70c3b38b',
  `u_type` int NOT NULL COMMENT '1-admin, 2-tarama, 3-customer,',
  `u_img` varchar(70) NOT NULL DEFAULT 'user.svg',
  `u_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Eric Kabambe','ericzkabambe@gmail.com','70352f41061eda4ff3c322094af068ba70c3b38b',1,'photo_2021-03-18_16-01-12.jpg','2021-07-05 06:26:11'),(2,'employee name','employee@gmail.com','70352f41061eda4ff3c322094af068ba70c3b38b',2,'user.svg','2022-06-01 10:03:46'),(3,'admin','admin@admin.admin','70352f41061eda4ff3c322094af068ba70c3b38b',1,'user.svg','2022-06-01 10:30:59'),(4,'RR','rr@gmail.com','70352f41061eda4ff3c322094af068ba70c3b38b',3,'user.svg','2022-06-06 11:14:40'),(5,'John Whick','jw@gmail.com','70352f41061eda4ff3c322094af068ba70c3b38b',3,'user.svg','2022-06-06 18:35:49');
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

-- Dump completed on 2026-02-01  9:07:47
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: trendy_threads
-- ------------------------------------------------------
-- Server version	8.4.6

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
-- Table structure for table `about_content`
--

DROP TABLE IF EXISTS `about_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` text,
  `description` text NOT NULL,
  `video_url` varchar(500) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_content`
--

LOCK TABLES `about_content` WRITE;
/*!40000 ALTER TABLE `about_content` DISABLE KEYS */;
INSERT INTO `about_content` VALUES (1,'Who we are','We are here to sharpen your look and your day','Foundend in 2023 we are on our way to satisfying your fashion needs!!','','assets/img/about.jpg',1,'2025-11-27 21:07:52','2025-12-11 18:55:56'),(2,'Who we are','We are here to sharpen your look and your day','Foundend in 2023 we are on our way to satisfying your fashion needs!!','','assets/img/about.jpg',1,'2025-11-27 21:08:24','2025-12-11 18:55:56');
/*!40000 ALTER TABLE `about_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `about_features`
--

DROP TABLE IF EXISTS `about_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon_class` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sort_order` int DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_features`
--

LOCK TABLES `about_features` WRITE;
/*!40000 ALTER TABLE `about_features` DISABLE KEYS */;
INSERT INTO `about_features` VALUES (1,'bi bi-diagram-3','Ullamco laboris nisi ut aliquip consequat','Magni facilis facilis repellendus cum excepturi quaerat praesentium libre trade',1,1),(2,'bi bi-fullscreen-exit','Magnam soluta odio exercitationem reprehenderi','Quo totam dolorum at pariatur aut distinctio dolorum laudantium illo direna pasata redi',2,1),(4,'bi bi-shirt','Drip is Forever','Through understanding that most things are temporary, but drip is forever we try our best to keep you saucy',5,1);
/*!40000 ALTER TABLE `about_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `background_images`
--

DROP TABLE IF EXISTS `background_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `background_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `section_name` varchar(100) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `alt_text` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `section_name` (`section_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `background_images`
--

LOCK TABLES `background_images` WRITE;
/*!40000 ALTER TABLE `background_images` DISABLE KEYS */;
INSERT INTO `background_images` VALUES (1,'hero','assets/img/hero-bg.jpg','Hero Background',1,'2025-11-27 21:08:29'),(2,'stats','assets/img/stats-bg.jpg','Stats Background',1,'2025-11-27 21:08:29'),(3,'testimonials','assets/img/testimonials-bg.jpg','Testimonials Background',1,'2025-11-27 21:08:29');
/*!40000 ALTER TABLE `background_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bail_images`
--

DROP TABLE IF EXISTS `bail_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bail_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bail_id` int NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `bail_id` (`bail_id`),
  CONSTRAINT `bail_images_ibfk_1` FOREIGN KEY (`bail_id`) REFERENCES `bails` (`b_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bail_images`
--

LOCK TABLES `bail_images` WRITE;
/*!40000 ALTER TABLE `bail_images` DISABLE KEYS */;
INSERT INTO `bail_images` VALUES (1,8,'assets/img/bails/bail_8_1765933892_0.jpg',1,'2025-12-17 01:11:32'),(2,8,'assets/img/bails/bail_8_1765933892_1.jpg',0,'2025-12-17 01:11:32'),(3,8,'assets/img/bails/bail_8_1765933893_2.jpg',0,'2025-12-17 01:11:33'),(4,8,'assets/img/bails/bail_8_1765933893_3.jpg',0,'2025-12-17 01:11:33'),(5,9,'assets/img/bails/bail_9_1765938119_0.jpg',1,'2025-12-17 02:21:59'),(6,10,'assets/img/bails/bail_10_1765940073_0.jpg',1,'2025-12-17 02:54:33'),(7,10,'assets/img/bails/bail_10_1766933387_0.jpg',0,'2025-12-28 14:49:47'),(8,10,'assets/img/bails/bail_10_1766933387_1.png',0,'2025-12-28 14:49:47'),(9,10,'assets/img/bails/bail_10_1766933387_2.jpg',0,'2025-12-28 14:49:47');
/*!40000 ALTER TABLE `bail_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bails`
--

DROP TABLE IF EXISTS `bails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bails` (
  `b_id` int NOT NULL AUTO_INCREMENT,
  `b_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_items_count` int NOT NULL DEFAULT '1',
  `b_avg_price_per_item` decimal(10,2) NOT NULL,
  `b_total_value` decimal(12,2) GENERATED ALWAYS AS ((`b_items_count` * `b_avg_price_per_item`)) STORED,
  `b_purchase_date` date NOT NULL,
  `b_description` text COLLATE utf8mb4_unicode_ci,
  `b_status` enum('available','sold','discontinued') COLLATE utf8mb4_unicode_ci DEFAULT 'available',
  `b_stock_quantity` int DEFAULT '1',
  `b_created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `b_updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`b_id`),
  KEY `idx_status` (`b_status`),
  KEY `idx_purchase_date` (`b_purchase_date`),
  KEY `idx_name` (`b_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bails`
--

LOCK TABLES `bails` WRITE;
/*!40000 ALTER TABLE `bails` DISABLE KEYS */;
INSERT INTO `bails` (`b_id`, `b_name`, `b_items_count`, `b_avg_price_per_item`, `b_purchase_date`, `b_description`, `b_status`, `b_stock_quantity`, `b_created_date`, `b_updated_date`, `CREATED_AT`, `UPDATED_AT`) VALUES (1,'Summer Collection Bundle',50,25.99,'2025-11-01','Assorted summer dresses and tops','available',15,'2025-11-15 14:44:48','2025-11-15 14:44:48','2025-11-15 14:44:48','2025-11-15 14:44:48'),(3,'Denim Essentials',75,18.75,'2025-11-05','Various denim pants and jeans','available',20,'2025-11-15 14:44:48','2025-11-15 14:44:48','2025-11-15 14:44:48','2025-11-15 14:44:48'),(4,'Casual Wear Bundle',60,22.00,'2025-10-20','T-shirts and casual wear','available',23,'2025-11-15 14:44:48','2025-12-29 23:36:51','2025-11-15 14:44:48','2025-12-29 23:36:51'),(5,'Formal Wear Collection',25,65.00,'2025-09-30','Suits and formal attire','sold',0,'2025-11-15 14:44:48','2025-11-15 14:44:48','2025-11-15 14:44:48','2025-11-15 14:44:48'),(8,'socks',199,10000.00,'2025-11-24','','available',100,'2025-11-24 13:51:35','2025-12-17 00:42:21','2025-11-24 13:51:35','2025-12-17 00:42:21'),(9,'Checkered Shirts',200,25000.00,'2025-12-07','CHeckered shirts for adults top quality','available',198,'2025-12-17 02:21:59','2025-12-29 23:37:49','2025-12-17 02:21:59','2025-12-29 23:37:49'),(10,'eric',1,3000.00,'2025-12-17','','available',1,'2025-12-17 02:54:33','2025-12-17 02:54:33','2025-12-17 02:54:33','2025-12-17 02:54:33');
/*!40000 ALTER TABLE `bails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,5,3,5,'2025-12-17 00:00:47'),(2,5,4,5,'2025-12-17 00:12:29'),(6,45,9,1,'2025-12-29 23:38:04');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `logo_path` varchar(255) NOT NULL,
  `website_url` varchar(500) DEFAULT NULL,
  `sort_order` int DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_info`
--

DROP TABLE IF EXISTS `contact_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` enum('address','phone','email','map') NOT NULL,
  `label` varchar(100) NOT NULL,
  `value` text NOT NULL,
  `icon_class` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `sort_order` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_info`
--

LOCK TABLES `contact_info` WRITE;
/*!40000 ALTER TABLE `contact_info` DISABLE KEYS */;
INSERT INTO `contact_info` VALUES (1,'address','Address','Zaison Shopping Center, Lilongwe, Area 25','bi bi-geo-alt',1,1),(2,'phone','Call Us','+1 5589 55488 55','bi bi-telephone',1,2),(3,'email','Email Us','info@trendythreads.com','bi bi-envelope',1,3),(4,'map','Map','https://maps.google.com/maps?q=-13.8673703,33.7597532&t=&z=15&ie=UTF8&iwloc=&output=embed','',1,4);
/*!40000 ALTER TABLE `contact_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'USA',
  `c_joined_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `c_status` enum('active','inactive','suspended') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `c_notes` text COLLATE utf8mb4_unicode_ci,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `c_email` (`c_email`),
  KEY `idx_email` (`c_email`),
  KEY `idx_status` (`c_status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John Smith','john@example.com','555-0101','123 Main St','New York','NY','10001','USA','2025-11-15 14:44:34','active',NULL,'2025-11-15 14:44:34','2025-11-15 14:44:34'),(2,'Sarah Johnson','sarah@example.com','555-0102','456 Oak Ave','Los Angeles','CA','90001','USA','2025-11-15 14:44:34','active',NULL,'2025-11-15 14:44:34','2025-11-15 14:44:34'),(3,'Michael Brown','michael@example.com','555-0103','789 Pine Rd','Chicago','IL','60601','USA','2025-11-15 14:44:34','active',NULL,'2025-11-15 14:44:34','2025-11-15 14:44:34'),(4,'Emily Davis','emily@example.com','555-0104','321 Elm St','Houston','TX','77001','USA','2025-11-15 14:44:34','active',NULL,'2025-11-15 14:44:34','2025-11-15 14:44:34'),(5,'David Wilson','david@example.com','555-0105','654 Maple Dr','Phoenix','AZ','85001','USA','2025-11-15 14:44:34','inactive',NULL,'2025-11-15 14:44:34','2025-11-15 14:44:34');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hero_content`
--

DROP TABLE IF EXISTS `hero_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hero_content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` text,
  `cta_text` varchar(100) DEFAULT NULL,
  `cta_link` varchar(500) DEFAULT NULL,
  `background_image` varchar(255) DEFAULT NULL,
  `hero_image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero_content`
--

LOCK TABLES `hero_content` WRITE;
/*!40000 ALTER TABLE `hero_content` DISABLE KEYS */;
INSERT INTO `hero_content` VALUES (1,'Welcome to Trendy Threads','Where Fashion is all were about','Get Started','#about','assets/img/hero-bg.jpg','assets/uploads/hero_image.svg',1,'2025-11-27 21:08:54','2025-12-29 14:29:43');
/*!40000 ALTER TABLE `hero_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `n_id` int NOT NULL AUTO_INCREMENT,
  `n_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_related_entity` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `n_related_id` int DEFAULT NULL,
  `n_customer_id` int DEFAULT NULL,
  `n_is_read` tinyint(1) DEFAULT '0',
  `n_read_date` timestamp NULL DEFAULT NULL,
  `n_priority` enum('low','medium','high') COLLATE utf8mb4_unicode_ci DEFAULT 'medium',
  `n_created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`n_id`),
  KEY `idx_type` (`n_type`),
  KEY `idx_customer` (`n_customer_id`),
  KEY `idx_read` (`n_is_read`),
  KEY `idx_priority` (`n_priority`),
  KEY `idx_created_date` (`n_created_date`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`n_customer_id`) REFERENCES `customers` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'new_bail','New Bail Available','Summer Collection Bundle is now available for purchase!','bail',1,NULL,0,NULL,'high','2025-11-15 14:45:18','2025-11-15 14:45:18'),(2,'purchase_completed','Purchase Confirmed','Your order for Winter Jacket Pack has been completed.','purchase',1,1,0,NULL,'medium','2025-11-15 14:45:18','2025-11-15 14:45:18'),(3,'new_customer','Welcome!','Welcome to Trendy Threads, Sarah!','customer',2,2,0,NULL,'medium','2025-11-15 14:45:18','2025-11-15 14:45:18'),(4,'low_stock','Low Stock Alert','Summer Collection Bundle is running low on stock.','bail',1,NULL,0,NULL,'high','2025-11-15 14:45:18','2025-11-15 14:45:18'),(5,'purchase_pending','Payment Pending','Your order for Casual Wear Bundle is awaiting payment.','purchase',4,4,0,NULL,'medium','2025-11-15 14:45:18','2025-11-15 14:45:18'),(7,'bail_added','New Bail Added','A new bail \'eric\' has been added to inventory',NULL,10,NULL,0,NULL,'medium','2025-12-17 02:54:33','2025-12-17 02:54:33'),(8,'sale_completed','Sale Completed','Sale to Unknown Customer for \'Summer Collection Bundle\' - MWK 3,000.00',NULL,7,NULL,0,NULL,'medium','2025-12-17 03:17:07','2025-12-17 03:17:07'),(9,'sale_completed','Sale Completed','Sale to Unknown Customer for \'Summer Collection Bundle\' - MWK 25.99',NULL,8,NULL,0,NULL,'medium','2025-12-17 14:24:05','2025-12-17 14:24:05'),(10,'sale_completed','Sale Completed','Sale to Unknown Customer for \'socks\' - MWK 20,000.00',NULL,9,NULL,0,NULL,'medium','2025-12-17 14:34:56','2025-12-17 14:34:56'),(11,'sale_completed','Sale Completed','Sale to Unknown Customer for \'Checkered Shirts\' - MWK 50,000.00',NULL,10,NULL,0,NULL,'medium','2025-12-17 14:35:15','2025-12-17 14:35:15'),(12,'sale_completed','Sale Completed','Sale to Unknown Customer for \'Checkered Shirts\' - MWK 75,000.00',NULL,11,NULL,0,NULL,'medium','2025-12-17 19:24:31','2025-12-17 19:24:31'),(13,'user_registered','New User Registered','New user \'John Pagaja\' has registered',NULL,45,NULL,0,NULL,'medium','2025-12-28 13:52:20','2025-12-28 13:52:20'),(14,'user_registered','New User Registered','New user \'tt\' has registered',NULL,46,NULL,0,NULL,'medium','2025-12-28 13:54:28','2025-12-28 13:54:28'),(15,'user_registered','New User Registered','New user \'admin central\' has registered',NULL,47,NULL,0,NULL,'medium','2025-12-28 13:55:09','2025-12-28 13:55:09'),(16,'sale_completed','Sale Completed','Sale to Unknown Customer for \'Checkered Shirts\' - MWK 50,000.00',NULL,12,NULL,0,NULL,'medium','2025-12-28 20:54:51','2025-12-28 20:54:51'),(17,'image_uploaded','Hero Image Updated','The hero section image has been updated to: assets/uploads/hero_image.jpg',NULL,NULL,NULL,0,NULL,'medium','2025-12-29 14:08:25','2025-12-29 14:08:25'),(18,'image_uploaded','Hero Image Updated','The hero section image has been updated to: assets/uploads/hero_image.jpg',NULL,NULL,NULL,0,NULL,'medium','2025-12-29 14:14:13','2025-12-29 14:14:13'),(19,'image_uploaded','Hero Image Updated','The hero section image has been updated to: assets/uploads/hero_image.jpeg',NULL,NULL,NULL,0,NULL,'medium','2025-12-29 14:14:27','2025-12-29 14:14:27'),(20,'image_uploaded','Hero Image Updated','The hero section image has been updated to: assets/uploads/hero_image_1767017873.jpg',NULL,NULL,NULL,0,NULL,'medium','2025-12-29 14:17:53','2025-12-29 14:17:53'),(21,'image_uploaded','Hero Image Updated','The hero section image has been updated to: assets/uploads/hero_image.svg',NULL,NULL,NULL,0,NULL,'medium','2025-12-29 14:29:43','2025-12-29 14:29:43'),(22,'image_uploaded','Hero Image Updated','The hero section image has been updated to: assets/uploads/hero_image.svg',NULL,NULL,NULL,0,NULL,'medium','2025-12-29 14:30:17','2025-12-29 14:30:17');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,41,4,2,22.00),(2,41,9,1,25000.00),(3,42,4,2,22.00),(4,42,9,1,25000.00),(5,43,4,2,22.00),(6,43,9,1,25000.00),(7,44,4,2,22.00),(8,44,9,1,25000.00),(9,45,4,2,22.00),(10,45,9,1,25000.00),(11,46,9,1,25000.00);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `status` enum('pending','processing','shipped','delivered','cancelled') DEFAULT 'pending',
  `payment_status` enum('pending','paid','failed') DEFAULT 'pending',
  `payment_method` varchar(50) DEFAULT NULL,
  `shipping_address` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (21,1,15000.00,'delivered','pending','demo',NULL,'2025-12-16 22:00:00'),(22,1,25000.00,'delivered','pending','stripe',NULL,'2025-12-15 22:00:00'),(23,1,18000.00,'delivered','pending','paypal',NULL,'2025-12-14 22:00:00'),(24,1,32000.00,'delivered','pending','demo',NULL,'2025-12-13 22:00:00'),(25,1,12000.00,'delivered','pending','stripe',NULL,'2025-12-12 22:00:00'),(26,1,28000.00,'delivered','pending','demo',NULL,'2025-12-11 22:00:00'),(27,1,22000.00,'delivered','pending','paypal',NULL,'2025-12-10 22:00:00'),(28,1,45000.00,'delivered','pending','stripe',NULL,'2025-11-14 22:00:00'),(29,1,35000.00,'delivered','pending','demo',NULL,'2025-11-09 22:00:00'),(30,1,55000.00,'delivered','pending','paypal',NULL,'2025-10-19 22:00:00'),(31,1,40000.00,'delivered','pending','stripe',NULL,'2025-10-04 22:00:00'),(32,1,30000.00,'delivered','pending','demo',NULL,'2025-09-24 22:00:00'),(33,1,65000.00,'delivered','pending','stripe',NULL,'2025-08-14 22:00:00'),(34,1,50000.00,'delivered','pending','paypal',NULL,'2025-07-09 22:00:00'),(35,1,38000.00,'delivered','pending','demo',NULL,'2025-06-19 22:00:00'),(36,1,42000.00,'delivered','pending','stripe',NULL,'2025-05-14 22:00:00'),(37,1,33000.00,'delivered','pending','paypal',NULL,'2025-04-09 22:00:00'),(38,1,48000.00,'delivered','pending','demo',NULL,'2025-03-24 22:00:00'),(39,1,28000.00,'delivered','pending','stripe',NULL,'2025-02-14 22:00:00'),(40,1,35000.00,'delivered','pending','paypal',NULL,'2025-01-19 22:00:00'),(41,45,27047.52,'pending','pending','paychangu','John Pagaj\nPO box 183, Lilongwe\nBlantyre, Malawi, 201301','2025-12-29 23:21:49'),(42,45,27047.52,'pending','pending','paychangu','Eric Kabambe\npo box 1853, lilogwe\nblantyre, malawi, 201301','2025-12-29 23:25:48'),(43,45,27047.52,'pending','pending','paychangu','John Pagaj\npo box 1854, Lilongwe\nBlantyre, Malawi, 201301','2025-12-29 23:29:46'),(44,45,27047.52,'pending','pending','paychangu','John Pagaj\npo box 182, lilongwe\nblantyre, malawi, 201301','2025-12-29 23:36:17'),(45,45,27047.52,'pending','paid','demo','John Pagaj\npo box 182, lilongwe\nblantyre, malawi 201301','2025-12-29 23:36:50'),(46,45,27000.00,'pending','paid','demo','John Pagaj\ntest\nBlantyre, malawi 201301','2025-12-29 23:37:48');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_transactions`
--

DROP TABLE IF EXISTS `payment_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` enum('pending','completed','failed') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transaction_id` (`transaction_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `payment_transactions_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_transactions`
--

LOCK TABLES `payment_transactions` WRITE;
/*!40000 ALTER TABLE `payment_transactions` DISABLE KEYS */;
INSERT INTO `payment_transactions` VALUES (1,41,'TT_41_1767050510','paychangu',27047.52,'failed','2025-12-29 23:21:50','2025-12-29 23:21:52'),(2,42,'TT_42_1767050748','paychangu',27047.52,'failed','2025-12-29 23:25:48','2025-12-29 23:25:50'),(3,43,'TT_43_1767050987','paychangu',27047.52,'failed','2025-12-29 23:29:47','2025-12-29 23:29:49'),(4,44,'TT_44_1767051378','paychangu',27047.52,'failed','2025-12-29 23:36:18','2025-12-29 23:36:20');
/*!40000 ALTER TABLE `payment_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` text NOT NULL,
  `product_amount` text NOT NULL,
  `product_category` text NOT NULL,
  `product_price` text NOT NULL,
  `product_image_location` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '../images/products/shoppin_cart%202.png',
  `product_image_alt` varchar(124) DEFAULT 'an image of your selected product',
  `product_description` text,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'JK Golf Shirts','200','Golf Shirts','15000','../images/products/jk golf shirt.jpeg',NULL,NULL),(2,'JK T-Shirts','190','T-Shirts','15000','../images/products/OIF.jfif',NULL,NULL),(3,'Puma Soccer Boots','20','Soccer Boots','65000','../images/products/download.jfif',NULL,NULL),(4,'Trendy T-Shirt','29.99','Clothing','29.99','assets/img/products/tshirt1.jpg','Trendy T-Shirt','Comfortable cotton t-shirt with modern design'),(5,'Designer Jeans','89.99','Clothing','89.99','assets/img/products/jeans1.jpg','Designer Jeans','Premium denim jeans with perfect fit'),(6,'Summer Dress','59.99','Clothing','59.99','assets/img/products/dress1.jpg','Summer Dress','Elegant summer dress for all occasions'),(7,'Casual Sneakers','79.99','Footwear','79.99','assets/img/products/shoes1.jpg','Casual Sneakers','Comfortable sneakers for everyday wear'),(8,'Fashion Jacket','129.99','Clothing','129.99','assets/img/products/jacket1.jpg','Fashion Jacket','Stylish jacket for cool weather'),(9,'Accessories Set','49.99','Accessories','49.99','assets/img/products/accessories1.jpg','Accessories Set','Complete accessories set with bag and jewelry');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `p_customer_id` int DEFAULT NULL,
  `p_bail_id` int NOT NULL,
  `p_quantity` int NOT NULL DEFAULT '1',
  `p_unit_price` decimal(10,2) NOT NULL,
  `p_total_amount` decimal(12,2) GENERATED ALWAYS AS ((`p_quantity` * `p_unit_price`)) STORED,
  `p_purchase_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `p_status` enum('pending','completed','cancelled','refunded') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `p_payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cash',
  `p_notes` text COLLATE utf8mb4_unicode_ci,
  `CREATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_AT` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`p_id`),
  KEY `idx_customer` (`p_customer_id`),
  KEY `idx_bail` (`p_bail_id`),
  KEY `idx_status` (`p_status`),
  KEY `idx_purchase_date` (`p_purchase_date`),
  CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`p_customer_id`) REFERENCES `customers` (`c_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`p_bail_id`) REFERENCES `bails` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` (`p_id`, `p_customer_id`, `p_bail_id`, `p_quantity`, `p_unit_price`, `p_purchase_date`, `p_status`, `p_payment_method`, `p_notes`, `CREATED_AT`, `UPDATED_AT`) VALUES (1,1,1,2,25.99,'2025-11-15 14:45:02','completed','credit_card',NULL,'2025-11-15 14:45:02','2025-11-15 14:45:02'),(3,3,3,3,18.75,'2025-11-15 14:45:02','completed','debit_card',NULL,'2025-11-15 14:45:02','2025-11-15 14:45:02'),(4,4,4,1,22.00,'2025-11-15 14:45:02','pending','check',NULL,'2025-11-15 14:45:02','2025-11-15 14:45:02'),(5,5,1,1,25.99,'2025-11-15 14:45:02','cancelled','cash',NULL,'2025-11-15 14:45:02','2025-11-15 14:45:02'),(7,NULL,1,2,1500.00,'2025-12-16 22:00:00','completed','cash','Test sale','2025-12-17 03:17:07','2025-12-17 03:17:07'),(8,NULL,1,1,25.99,'2025-12-16 22:00:00','completed','cash','Debug test sale','2025-12-17 14:24:05','2025-12-17 14:24:05'),(9,NULL,8,2,10000.00,'2025-12-16 22:00:00','completed','cash','','2025-12-17 14:34:56','2025-12-17 14:34:56'),(10,NULL,9,2,25000.00,'2025-12-16 22:00:00','completed','cash','','2025-12-17 14:35:15','2025-12-17 14:35:15'),(11,NULL,9,3,25000.00,'2025-12-16 22:00:00','completed','cash','','2025-12-17 19:24:31','2025-12-17 19:24:31'),(12,NULL,9,2,25000.00,'2025-12-27 22:00:00','completed','credit','will pa o te 1st','2025-12-28 20:54:51','2025-12-28 20:54:51');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `icon_class` varchar(100) DEFAULT NULL,
  `icon_color` varchar(20) DEFAULT '#0dcaf0',
  `link_url` varchar(500) DEFAULT NULL,
  `sort_order` int DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Web Development','Professional website development with modern technologies','bi bi-code-slash','#0dcaf0',NULL,1,1,'2025-11-27 21:08:35','2025-11-27 21:08:35'),(2,'Digital Marketing','Comprehensive digital marketing solutions for your business','bi bi-megaphone','#fd7e14',NULL,2,1,'2025-11-27 21:08:35','2025-11-27 21:08:35'),(3,'E-commerce Solutions','Complete online store setup and management','bi bi-cart','#20c997',NULL,3,1,'2025-11-27 21:08:35','2025-11-27 21:08:35'),(4,'Mobile Apps','Native and cross-platform mobile application development','bi bi-phone','#df1529',NULL,4,1,'2025-11-27 21:08:35','2025-11-27 21:08:35');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `value` int NOT NULL,
  `icon_class` varchar(100) DEFAULT NULL,
  `sort_order` int DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
INSERT INTO `stats` VALUES (1,'Clients',232,NULL,1,1),(2,'Projects',521,NULL,2,1),(3,'Hours Of Support',1453,NULL,3,1),(4,'Workers',32,NULL,4,1);
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `u_name` varchar(50) NOT NULL,
  `u_email` varchar(70) NOT NULL,
  `u_phone` varchar(15) DEFAULT NULL,
  `u_password` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '70352f41061eda4ff3c322094af068ba70c3b38b',
  `u_type` int NOT NULL COMMENT '1-admin, 2-jk_productions, 3-customer, ',
  `u_img` varchar(70) NOT NULL DEFAULT 'user.svg',
  `u_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `u_address` text,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Kondwani Chimatiro','kho@gmail.com',NULL,'$2y$12$XddAsISjTSdQCjCimoHJfuuixhFn9riMIwcCtWIwXz9AdN3L9zPr6',1,'user.svg','2021-07-05 06:38:40',NULL),(2,'Susan Chinyama','susanchinyama@gmail.com',NULL,'70352f41061eda4ff3c322094af068ba70c3b38b',1,'user.svg','2021-07-05 06:38:35',NULL),(3,'Clifford Ghambi','cliffordghambi@gmail.com',NULL,'$2y$12$XwiJ1ls2eQpaUuDExbHQAuINxzWJKb2NmlPw3MZ61t7wRSyIeULX.',2,'photo_2021-03-11_16-32-22.jpg','2021-07-05 06:38:35',NULL),(4,'Tchilli Alindiamawo','Tchillialindiamawo@gmail.com',NULL,'70352f41061eda4ff3c322094af068ba70c3b38b',2,'photo_2021-03-18_16-01-12.jpg','2021-07-05 06:26:11',NULL),(5,'Eric Kabambe','erickabambe@gmail.com',NULL,'$2y$12$w3aNw5yeLkQ0BLFv7RcFEexXc2voArcXna4EPmStDWBZo.UEsy3V6',3,'photo_2021-03-18_16-01-12.jpg','2021-07-05 06:26:11',NULL),(6,'Jimmy Kazembe','jimmykazembe@gmail.com',NULL,'70352f41061eda4ff3c322094af068ba70c3b38b',3,'photo_2021-03-18_16-01-12.jpg','2021-07-05 06:26:11',NULL),(31,'John Kittle','jk@gmail.com',NULL,'70352f41061eda4ff3c322094af068ba70c3b38b',3,'user.svg','2022-06-01 10:03:46',NULL),(33,'rico','admin@admin.admin',NULL,'70352f41061eda4ff3c322094af068ba70c3b38b',2,'user.svg','2022-06-01 10:30:59',NULL),(34,'RR','rr@gmail.com',NULL,'70352f41061eda4ff3c322094af068ba70c3b38b',3,'user.svg','2022-06-06 11:14:40',NULL),(36,'Chadwick Boseman','bd@gmail.com',NULL,'70352f41061eda4ff3c322094af068ba70c3b38b',3,'user.svg','2022-06-06 18:35:48',NULL),(37,'Tough Bwana','zgr@gmail.com',NULL,'70352f41061eda4ff3c322094af068ba70c3b38b',3,'user.svg','2022-06-06 18:35:49',NULL),(45,'John Pagaj','jp@email.com','0997835428','$2y$12$XwiJ1ls2eQpaUuDExbHQAuINxzWJKb2NmlPw3MZ61t7wRSyIeULX.',3,'user.svg','2025-12-28 13:52:20','Soche East HOuse No. 27'),(46,'tt','tt@email.com','0997835428','$2y$12$XwiJ1ls2eQpaUuDExbHQAuINxzWJKb2NmlPw3MZ61t7wRSyIeULX.',3,'user.svg','2025-12-28 13:54:28','tt hood'),(47,'admin central','admin@admin.com','','$2y$12$XwiJ1ls2eQpaUuDExbHQAuINxzWJKb2NmlPw3MZ61t7wRSyIeULX.',1,'user.svg','2025-12-28 13:55:09','admin home is unkown');
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

-- Dump completed on 2026-02-01  9:07:50
