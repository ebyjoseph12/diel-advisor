-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dietandnutrition
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `afterfood`
--

DROP TABLE IF EXISTS `afterfood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afterfood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aftermin` varchar(5) NOT NULL,
  `aftermax` varchar(5) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `afterfood`
--

LOCK TABLES `afterfood` WRITE;
/*!40000 ALTER TABLE `afterfood` DISABLE KEYS */;
INSERT INTO `afterfood` VALUES (1,'120','139','Normal'),(2,'140','199','Pre-Diabetes'),(3,'200','360','Diabetes');
/*!40000 ALTER TABLE `afterfood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add after food',7,'add_afterfood'),(26,'Can change after food',7,'change_afterfood'),(27,'Can delete after food',7,'delete_afterfood'),(28,'Can view after food',7,'view_afterfood'),(29,'Can add bmi',8,'add_bmi'),(30,'Can change bmi',8,'change_bmi'),(31,'Can delete bmi',8,'delete_bmi'),(32,'Can view bmi',8,'view_bmi'),(33,'Can add bp',9,'add_bp'),(34,'Can change bp',9,'change_bp'),(35,'Can delete bp',9,'delete_bp'),(36,'Can view bp',9,'view_bp'),(37,'Can add expert profile',10,'add_expertprofile'),(38,'Can change expert profile',10,'change_expertprofile'),(39,'Can delete expert profile',10,'delete_expertprofile'),(40,'Can view expert profile',10,'view_expertprofile'),(41,'Can add fasting sugar',11,'add_fastingsugar'),(42,'Can change fasting sugar',11,'change_fastingsugar'),(43,'Can delete fasting sugar',11,'delete_fastingsugar'),(44,'Can view fasting sugar',11,'view_fastingsugar'),(45,'Can add h b_female',12,'add_hb_female'),(46,'Can change h b_female',12,'change_hb_female'),(47,'Can delete h b_female',12,'delete_hb_female'),(48,'Can view h b_female',12,'view_hb_female'),(49,'Can add h b_male',13,'add_hb_male'),(50,'Can change h b_male',13,'change_hb_male'),(51,'Can delete h b_male',13,'delete_hb_male'),(52,'Can view h b_male',13,'view_hb_male'),(53,'Can add hdl',14,'add_hdl'),(54,'Can change hdl',14,'change_hdl'),(55,'Can delete hdl',14,'delete_hdl'),(56,'Can view hdl',14,'view_hdl'),(57,'Can add ldl',15,'add_ldl'),(58,'Can change ldl',15,'change_ldl'),(59,'Can delete ldl',15,'delete_ldl'),(60,'Can view ldl',15,'view_ldl'),(61,'Can add login',16,'add_login'),(62,'Can change login',16,'change_login'),(63,'Can delete login',16,'delete_login'),(64,'Can view login',16,'view_login'),(65,'Can add total cholestrol',17,'add_totalcholestrol'),(66,'Can change total cholestrol',17,'change_totalcholestrol'),(67,'Can delete total cholestrol',17,'delete_totalcholestrol'),(68,'Can view total cholestrol',17,'view_totalcholestrol'),(69,'Can add tryglycerides',18,'add_tryglycerides'),(70,'Can change tryglycerides',18,'change_tryglycerides'),(71,'Can delete tryglycerides',18,'delete_tryglycerides'),(72,'Can view tryglycerides',18,'view_tryglycerides'),(73,'Can add user advise',19,'add_useradvise'),(74,'Can change user advise',19,'change_useradvise'),(75,'Can delete user advise',19,'delete_useradvise'),(76,'Can view user advise',19,'view_useradvise'),(77,'Can add user profile',20,'add_userprofile'),(78,'Can change user profile',20,'change_userprofile'),(79,'Can delete user profile',20,'delete_userprofile'),(80,'Can view user profile',20,'view_userprofile'),(81,'Can add report',21,'add_report'),(82,'Can change report',21,'change_report'),(83,'Can delete report',21,'delete_report'),(84,'Can view report',21,'view_report');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloodpressure`
--

DROP TABLE IF EXISTS `bloodpressure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bloodpressure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agemin` int(11) NOT NULL,
  `agemax` int(11) NOT NULL,
  `lowmin` int(11) NOT NULL,
  `lowmax` int(11) NOT NULL,
  `normalmin` int(11) NOT NULL,
  `normalmax` int(11) NOT NULL,
  `highmin` int(11) NOT NULL,
  `highmax` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloodpressure`
--

LOCK TABLES `bloodpressure` WRITE;
/*!40000 ALTER TABLE `bloodpressure` DISABLE KEYS */;
INSERT INTO `bloodpressure` VALUES (1,0,1,50,75,60,90,75,100),(2,1,5,85,80,65,95,79,110),(3,6,13,60,90,70,105,80,115),(4,14,19,73,105,77,117,81,120),(5,20,24,75,108,79,120,83,132),(6,25,29,76,109,80,121,84,133),(7,30,34,77,110,81,122,85,134),(8,35,39,78,111,82,123,86,135),(9,40,44,79,112,83,125,87,137),(10,45,49,80,115,84,127,88,139),(11,50,54,81,116,85,129,89,142),(12,55,59,82,118,86,131,90,144),(13,60,64,83,121,87,134,91,147);
/*!40000 ALTER TABLE `bloodpressure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bmi`
--

DROP TABLE IF EXISTS `bmi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bmi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agemin` int(11) NOT NULL,
  `agemax` int(11) NOT NULL,
  `bmimin` int(11) NOT NULL,
  `bmimax` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bmi`
--

LOCK TABLES `bmi` WRITE;
/*!40000 ALTER TABLE `bmi` DISABLE KEYS */;
INSERT INTO `bmi` VALUES (1,19,24,19,24),(2,25,34,20,25),(3,35,44,21,26),(4,45,54,22,27),(5,55,64,23,28),(6,65,100,24,29);
/*!40000 ALTER TABLE `bmi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'mydiet','afterfood'),(8,'mydiet','bmi'),(9,'mydiet','bp'),(10,'mydiet','expertprofile'),(11,'mydiet','fastingsugar'),(12,'mydiet','hb_female'),(13,'mydiet','hb_male'),(14,'mydiet','hdl'),(15,'mydiet','ldl'),(16,'mydiet','login'),(21,'mydiet','report'),(17,'mydiet','totalcholestrol'),(18,'mydiet','tryglycerides'),(19,'mydiet','useradvise'),(20,'mydiet','userprofile'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-03-30 09:13:12.600708'),(2,'auth','0001_initial','2019-03-30 09:13:24.592308'),(3,'admin','0001_initial','2019-03-30 09:13:27.008321'),(4,'admin','0002_logentry_remove_auto_add','2019-03-30 09:13:27.061712'),(5,'admin','0003_logentry_add_action_flag_choices','2019-03-30 09:13:27.131963'),(6,'contenttypes','0002_remove_content_type_name','2019-03-30 09:13:28.777964'),(7,'auth','0002_alter_permission_name_max_length','2019-03-30 09:13:29.679687'),(8,'auth','0003_alter_user_email_max_length','2019-03-30 09:13:30.781449'),(9,'auth','0004_alter_user_username_opts','2019-03-30 09:13:30.831078'),(10,'auth','0005_alter_user_last_login_null','2019-03-30 09:13:31.792333'),(11,'auth','0006_require_contenttypes_0002','2019-03-30 09:13:31.829289'),(12,'auth','0007_alter_validators_add_error_messages','2019-03-30 09:13:31.889865'),(13,'auth','0008_alter_user_username_max_length','2019-03-30 09:13:32.763091'),(14,'auth','0009_alter_user_last_name_max_length','2019-03-30 09:13:34.181310'),(15,'mydiet','0001_initial','2019-03-30 09:13:41.050934'),(16,'mydiet','0002_auto_20190330_1441','2019-03-30 09:13:42.201944'),(17,'mydiet','0003_auto_20190330_1442','2019-03-30 09:13:43.546041'),(18,'sessions','0001_initial','2019-03-30 09:13:44.156697'),(19,'mydiet','0004_remove_useradvise_time','2019-03-30 10:36:09.746204'),(20,'mydiet','0005_auto_20190330_1622','2019-03-30 10:52:29.055190'),(21,'mydiet','0006_useradvise_time','2019-03-30 11:04:34.035667'),(22,'mydiet','0007_report','2019-03-30 14:43:30.262903'),(23,'mydiet','0008_auto_20190330_2032','2019-03-30 15:02:59.780093'),(24,'mydiet','0009_auto_20190330_2047','2019-03-30 15:17:16.152158'),(25,'mydiet','0010_auto_20190402_1300','2019-04-02 07:30:55.681798'),(26,'mydiet','0011_auto_20190408_2316','2019-04-08 17:46:40.766785');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ol0ruhxqjsr8g3bq4506b28p0koc03se','NDgwMmRhZWMxYjc4NjMzZmMwOGY4ODUzZDUxZTExMGRlNTNlMjY2ZDp7ImZpcnN0bmFtZSI6IlNydXRoaSIsImxhc3RuYW1lIjoiSmF5YWRlZXAiLCJlbWFpbCI6InNydXRoaS5qYXlhZGVlcDk4QGdtYWlsLmNvbSJ9','2019-04-22 20:27:58.032064'),('xv6rnd8o0c2lyu6wud8o9eqkgu7wcwqb','NTE4MGYzZWU5MzZiYjk4MmI5YTIzNDQ4NDA1YTA2ZDQ2NmE3MjFjNDp7ImVtYWlsIjoiYW5pbGFwcmFrYXNoNjVAZ21haWwuY29tIn0=','2019-04-14 06:50:55.126442');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expert_register`
--

DROP TABLE IF EXISTS `expert_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expert_register` (
  `emailid` varchar(50) NOT NULL,
  `dob` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `qualification` varchar(25) NOT NULL,
  `registerno` varchar(25) NOT NULL,
  `yearofreg` varchar(25) NOT NULL,
  `experience` varchar(25) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `profilepic` varchar(100) DEFAULT NULL,
  `languageknown` varchar(50) DEFAULT NULL,
  `profstatement` longtext,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expert_register`
--

LOCK TABLES `expert_register` WRITE;
/*!40000 ALTER TABLE `expert_register` DISABLE KEYS */;
INSERT INTO `expert_register` VALUES ('drjayasree@hotmail.com','11/05/1970','female','Anayara, Trivandrum','9030414005','dip in nutrition','IMHD9874B63','13/12/1997','22','Dr. Jayasree','NS','expert/Jayasree-N-S.jpg','English, Malayalam','pG in Clinical Nutrition & Dietetics from Dr MGR medical University. 18 years experience in varies Multispeciality Hospitals in India. & visited various Nutrition execelence Hospitals in Philipines. Set up dietary departments in 2 Hospitals in Kerala. Conducted various Diet exebitions. Publised articles in various Magazines. Broadcasted & telecasted health awareness programes in Malayalam Television & Radio. Presently working as Associate Consultant in KIMS Hospital Trivandrum'),('drtinynair@gmail.com','07/04/1969','male','Poojappura, Trivandrum','9026457890','phd nutrition','IMHD4165563','13/12/1990','35','Dr. Tiny','Nair','expert/Dr.-Tiny-Nair.jpg','English, Malayalam','Myself Dr. Tiny Nair PHD NUTRITIONIST in Trivandrum who has been working with the PRS Hospital since Jan 1990. I am specially interested in the areas of Diet Advising for patients who approaches me. Received awards and Gold Medal for best paper presentation on Diet Advisor.');
/*!40000 ALTER TABLE `expert_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fasting_sugar`
--

DROP TABLE IF EXISTS `fasting_sugar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fasting_sugar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fastingmin` varchar(5) NOT NULL,
  `fastingmax` varchar(5) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fasting_sugar`
--

LOCK TABLES `fasting_sugar` WRITE;
/*!40000 ALTER TABLE `fasting_sugar` DISABLE KEYS */;
INSERT INTO `fasting_sugar` VALUES (1,'80','99','Normal'),(2,'100','125','Pre-Diabetic'),(3,'126','200','Diabetic');
/*!40000 ALTER TABLE `fasting_sugar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hb_female`
--

DROP TABLE IF EXISTS `hb_female`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hb_female` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agemin` double NOT NULL,
  `agemax` double NOT NULL,
  `hbmin` double NOT NULL,
  `hbmax` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hb_female`
--

LOCK TABLES `hb_female` WRITE;
/*!40000 ALTER TABLE `hb_female` DISABLE KEYS */;
INSERT INTO `hb_female` VALUES (1,1,2,10.5,13.5),(2,2,6,11.5,13.5),(3,6,12,11.5,15.5),(4,12,18,12,16),(5,18,100,12.1,15.1);
/*!40000 ALTER TABLE `hb_female` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hb_male`
--

DROP TABLE IF EXISTS `hb_male`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hb_male` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agemin` double NOT NULL,
  `agemax` double NOT NULL,
  `hbmin` double NOT NULL,
  `hbmax` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hb_male`
--

LOCK TABLES `hb_male` WRITE;
/*!40000 ALTER TABLE `hb_male` DISABLE KEYS */;
INSERT INTO `hb_male` VALUES (1,1,2,10.5,13.5),(2,2,6,11.5,13.5),(3,6,12,11.5,15.5),(4,12,18,13,16),(5,18,100,13.6,17.7);
/*!40000 ALTER TABLE `hb_male` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hdl`
--

DROP TABLE IF EXISTS `hdl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hdl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `HDLmin` varchar(5) NOT NULL,
  `HDLmax` varchar(5) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hdl`
--

LOCK TABLES `hdl` WRITE;
/*!40000 ALTER TABLE `hdl` DISABLE KEYS */;
INSERT INTO `hdl` VALUES (1,'0','39','High risk for heart disease'),(2,'40','59','Good'),(3,'60','100','Preventive against heart disease');
/*!40000 ALTER TABLE `hdl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_profile`
--

DROP TABLE IF EXISTS `health_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailid` varchar(50) NOT NULL,
  `height` varchar(25) NOT NULL,
  `weight` varchar(25) NOT NULL,
  `hb` varchar(25) NOT NULL,
  `systolic` varchar(25) NOT NULL,
  `dystolic` varchar(25) NOT NULL,
  `fastingsugar` varchar(25) NOT NULL,
  `afterfood` varchar(25) NOT NULL,
  `hdl` varchar(25) NOT NULL,
  `ldl` varchar(25) NOT NULL,
  `tryglycerides` varchar(25) NOT NULL,
  `totalcholestrol` varchar(25) NOT NULL,
  `heartdisease` varchar(25) NOT NULL,
  `sedentaryperson` varchar(25) NOT NULL,
  `breakfast` varchar(15) NOT NULL,
  `lunch` varchar(10) NOT NULL,
  `snacks` varchar(10) NOT NULL,
  `dinner` varchar(10) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_profile`
--

LOCK TABLES `health_profile` WRITE;
/*!40000 ALTER TABLE `health_profile` DISABLE KEYS */;
INSERT INTO `health_profile` VALUES (14,'nikhilprakash95@gmail.com','176','75','13.5','120','75','85','125','48','110','100','142','No','No','veg','nonveg','veg','nonveg','2019-04-02','13:33:22.000000'),(15,'sruthi.jayadeep98@gmail.com','163','65','13','120','75','85','125','48','110','100','230','No','No','veg','nonveg','veg','nonveg','2019-04-09','01:56:47.000000');
/*!40000 ALTER TABLE `health_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldl`
--

DROP TABLE IF EXISTS `ldl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LDLmin` varchar(5) NOT NULL,
  `LDLmax` varchar(5) NOT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldl`
--

LOCK TABLES `ldl` WRITE;
/*!40000 ALTER TABLE `ldl` DISABLE KEYS */;
INSERT INTO `ldl` VALUES (1,'40','99','Ideal'),(2,'100','129','Near Ideal or above ideal'),(3,'130','159','Borderline High'),(4,'160','189','High'),(5,'190','200','Very High');
/*!40000 ALTER TABLE `ldl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` int(11) NOT NULL,
  `entry` varchar(6) NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('Dr. Jayasree','NS','drjayasree@hotmail.com','drjayasree',1,'Expert'),('Dr. Tiny','Nair','drtinynair@gmail.com','drtinynair',1,'Expert'),('Nikhil','Prakash','nikhilprakash95@gmail.com','nikhil',1,'User'),('Sruthi','Jayadeep','sruthi.jayadeep98@gmail.com','sruthijayadeep',1,'User');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_cholestrol`
--

DROP TABLE IF EXISTS `total_cholestrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `total_cholestrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `totalmin` varchar(5) NOT NULL,
  `totalmax` varchar(5) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_cholestrol`
--

LOCK TABLES `total_cholestrol` WRITE;
/*!40000 ALTER TABLE `total_cholestrol` DISABLE KEYS */;
INSERT INTO `total_cholestrol` VALUES (1,'40','99','Normal'),(2,'100','199','Ideal'),(3,'200','239','Borderline High'),(4,'240','349','High');
/*!40000 ALTER TABLE `total_cholestrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tryglycerides`
--

DROP TABLE IF EXISTS `tryglycerides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tryglycerides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trymin` varchar(5) NOT NULL,
  `trymax` varchar(5) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tryglycerides`
--

LOCK TABLES `tryglycerides` WRITE;
/*!40000 ALTER TABLE `tryglycerides` DISABLE KEYS */;
INSERT INTO `tryglycerides` VALUES (1,'40','99','Normal'),(2,'100','149','Ideal'),(3,'150','199','Borderline High'),(4,'200','499','High'),(5,'500','599','Very High');
/*!40000 ALTER TABLE `tryglycerides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_register`
--

DROP TABLE IF EXISTS `user_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_register` (
  `emailid` varchar(50) NOT NULL,
  `dob` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `qualification` varchar(25) NOT NULL,
  `profession` varchar(25) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `profilepic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_register`
--

LOCK TABLES `user_register` WRITE;
/*!40000 ALTER TABLE `user_register` DISABLE KEYS */;
INSERT INTO `user_register` VALUES ('nikhilprakash95@gmail.com','17/06/1995','male','Vazhuthacaud, Trivandrum','9947577142','Master\'s degree','student','Nikhil','Prakash','user/149185__pp.jpg'),('sruthi.jayadeep98@gmail.com','21/01/1998','female','Vazhuthacaud, Trivandrum','9026457890','Bachelor\'s degree','student','Sruthi','Jayadeep','user/sruthi.jpg');
/*!40000 ALTER TABLE `user_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_report`
--

DROP TABLE IF EXISTS `user_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailid` varchar(50) NOT NULL,
  `bmi` varchar(50) NOT NULL,
  `bp` varchar(50) NOT NULL,
  `hb` varchar(50) NOT NULL,
  `sugar` varchar(50) NOT NULL,
  `afterfood` varchar(50) NOT NULL,
  `hdl` varchar(50) NOT NULL,
  `ldl` varchar(50) NOT NULL,
  `tryglycerine` varchar(50) NOT NULL,
  `totcholestrol` varchar(50) NOT NULL,
  `sedentary` varchar(50) NOT NULL,
  `heart` varchar(50) NOT NULL,
  `breakfast` varchar(50) NOT NULL,
  `lunch` varchar(50) NOT NULL,
  `snacks` varchar(50) NOT NULL,
  `dinner` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_report`
--

LOCK TABLES `user_report` WRITE;
/*!40000 ALTER TABLE `user_report` DISABLE KEYS */;
INSERT INTO `user_report` VALUES (21,'nikhilprakash95@gmail.com','Normal','Normal - Low','Low','Normal','Normal','Good','Near Ideal or above ideal','Ideal','Ideal','Healthy, Regular Exercise','Healthy Person','Veg','Non-Veg','Veg','Non-Veg','2019-04-02','13:33:22',1),(22,'sruthi.jayadeep98@gmail.com','Normal','Normal - Low','Normal','Normal','Normal','Good','Near Ideal or above ideal','Ideal','Borderline High','Healthy, Regular Exercise','Healthy Person','Veg','Non-Veg','Veg','Non-Veg','2019-04-09','01:56:47',1);
/*!40000 ALTER TABLE `user_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-09  2:02:17
