CREATE DATABASE  IF NOT EXISTS `go_knows` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `go_knows`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: go_knows
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `clec_credentials`
--

DROP TABLE IF EXISTS `clec_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clec_credentials` (
  `CLECID` int NOT NULL,
  `UserName` varchar(150) DEFAULT NULL,
  `TokenPassword` varchar(150) DEFAULT NULL,
  `PIN` varchar(150) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `author` varchar(150) DEFAULT NULL,
  `active` tinyint DEFAULT '1',
  `account_type` varchar(100) DEFAULT NULL,
  `ecs_store_name` varchar(100) DEFAULT NULL,
  `ecs_terminal_id` varchar(100) DEFAULT NULL,
  `typeId` int DEFAULT NULL,
  `packageId` int DEFAULT NULL,
  PRIMARY KEY (`CLECID`),
  UNIQUE KEY `CLECID` (`CLECID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clec_credentials`
--

LOCK TABLES `clec_credentials` WRITE;
/*!40000 ALTER TABLE `clec_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `clec_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lifeline_agreement`
--

DROP TABLE IF EXISTS `lifeline_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifeline_agreement` (
  `id_agreement` int NOT NULL AUTO_INCREMENT,
  `initials1` varchar(45) DEFAULT NULL,
  `initials2` varchar(45) DEFAULT NULL,
  `initials3` varchar(45) DEFAULT NULL,
  `initials4` varchar(45) DEFAULT NULL,
  `initials5` varchar(45) DEFAULT NULL,
  `initials6` varchar(45) DEFAULT NULL,
  `initials7` varchar(45) DEFAULT NULL,
  `initials8` varchar(45) DEFAULT NULL,
  `initials9` varchar(45) DEFAULT NULL,
  `initials10` varchar(45) DEFAULT NULL,
  `initials11` varchar(45) DEFAULT NULL,
  `id_record` int DEFAULT NULL,
  PRIMARY KEY (`id_agreement`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifeline_agreement`
--

LOCK TABLES `lifeline_agreement` WRITE;
/*!40000 ALTER TABLE `lifeline_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `lifeline_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lifeline_agrements_items`
--

DROP TABLE IF EXISTS `lifeline_agrements_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifeline_agrements_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inputname` varchar(45) COLLATE utf8mb3_bin DEFAULT NULL,
  `description` text COLLATE utf8mb3_bin,
  `active` tinyint DEFAULT '1',
  `states` varchar(45) COLLATE utf8mb3_bin DEFAULT 'all',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifeline_agrements_items`
--

LOCK TABLES `lifeline_agrements_items` WRITE;
/*!40000 ALTER TABLE `lifeline_agrements_items` DISABLE KEYS */;
INSERT INTO `lifeline_agrements_items` VALUES (1,'initials_1','I (or my dependent or other person in my household) currently get benefits from the government program(s) listed on this form or my annual household income is 135% or less than the Federal Poverty Guidelines (the amount listed in the Federal Poverty Guidelines table on this&nbsp;form).',1,'all'),(2,'initials_2','I agree that if I move I will give my service provider my new address within 30&nbsp;days.',1,'all'),(3,'initials_3','I understand that I have to tell my service provider within 30 days if I do not qualify for Lifeline anymore, including:<br> 1.) I, or the person in my household that qualifies, do not qualify through a government program or income anymore.<br> 2.) Either I or someone in my household gets more than one Lifeline benefit (including more than one Lifeline broadband internet service, more than one Lifeline telephone service, or both Lifeline telephone and Lifeline broadband internet&nbsp;services).',1,'all'),(4,'initials_4','I know that my household can only get one Lifeline benefit and, to the best of my knowledge, my household is not getting more than one Lifeline&nbsp;benefit.',1,'all'),(5,'initials_5','I agree that all of the information I provide on this form may be collected, used, shared, and retained for the purposes of applying for and/or receiving the Lifeline Program benefit. I understand that if this information is not provided to the Lifeline Program Administrator, I will not be able to get Lifeline benefits. If the laws of my state or Tribal government require it, I agree that the state or Tribal government may share information about my benefits for a qualifying program with the Lifeline Program Administrator. The information shared by the state or Tribal government will be used only to help find out if I can get a Lifeline Program&nbsp;benefit.',1,'all'),(6,'initials_6','All the answers and agreements that I provided on this form are true and correct to the best of my&nbsp;knowledge.',1,'all'),(7,'initials_7','I know that willingly giving false or fraudulent information to get Lifeline Program benefits is punishable by law and can result in fines, jail time, de-enrollment, or being barred from the&nbsp;program.',1,'all'),(8,'initials_8','My service provider may have to check whether I still qualify at any time. If I need to recertify (renew) my Lifeline benefit, I understand that I have to respond by the deadline or I will be removed from the Lifeline Program and my Lifeline benefit will&nbsp;stop.',1,'all'),(9,'initials_9','The certification below applies to all consumers and is required to process your application. I was truthful about whether or not I am a resident of Tribal lands, as defined in section 2 of this&nbsp;form',1,'all');
/*!40000 ALTER TABLE `lifeline_agrements_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lifeline_apis_log`
--

DROP TABLE IF EXISTS `lifeline_apis_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifeline_apis_log` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_records` varchar(45) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `request` text,
  `response` text,
  `operation_name` varchar(150) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifeline_apis_log`
--

LOCK TABLES `lifeline_apis_log` WRITE;
/*!40000 ALTER TABLE `lifeline_apis_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `lifeline_apis_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lifeline_documents`
--

DROP TABLE IF EXISTS `lifeline_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifeline_documents` (
  `id_lifeline_doc` int NOT NULL AUTO_INCREMENT,
  `id_record` int DEFAULT NULL,
  `filename` varchar(150) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `to_unavo` int DEFAULT '0',
  `type_doc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_lifeline_doc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifeline_documents`
--

LOCK TABLES `lifeline_documents` WRITE;
/*!40000 ALTER TABLE `lifeline_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `lifeline_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lifeline_nocoverage`
--

DROP TABLE IF EXISTS `lifeline_nocoverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifeline_nocoverage` (
  `id_nocoverage` int NOT NULL AUTO_INCREMENT,
  `zipcode` varchar(45) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `source` varchar(45) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_nocoverage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifeline_nocoverage`
--

LOCK TABLES `lifeline_nocoverage` WRITE;
/*!40000 ALTER TABLE `lifeline_nocoverage` DISABLE KEYS */;
/*!40000 ALTER TABLE `lifeline_nocoverage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lifeline_programs`
--

DROP TABLE IF EXISTS `lifeline_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifeline_programs` (
  `id_program` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `active` tinyint DEFAULT '1',
  PRIMARY KEY (`id_program`),
  UNIQUE KEY `id_program_UNIQUE` (`id_program`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifeline_programs`
--

LOCK TABLES `lifeline_programs` WRITE;
/*!40000 ALTER TABLE `lifeline_programs` DISABLE KEYS */;
INSERT INTO `lifeline_programs` VALUES (100001,'Supplemental Nutrition Assistance Program (Food Stamps or SNAP)',1),(100004,'Medicaid',1),(100002,'Household Income',1),(100006,'Supplemental Security Income (SSI)',1),(100000,'Federal Public Housing Assistance (Section 8)',1),(100014,'Veteran&#39;s Pension or Survivors Benefit Programs',1),(100011,'Bureau of Indian Affairs General Assistance',1),(100008,'Tribally-Administered Temporary Assistance for Needy Families (TTANF)',1),(100010,'Food Distribution Program on Indian Reservations (FDPIR)',1),(100009,'Head Start (if income eligibility criteria are met)',1);
/*!40000 ALTER TABLE `lifeline_programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lifeline_records`
--

DROP TABLE IF EXISTS `lifeline_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifeline_records` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(50) NOT NULL DEFAULT '0',
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `second_name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address1` varchar(150) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `program_before` varchar(45) DEFAULT NULL,
  `program_benefit` varchar(100) DEFAULT NULL,
  `active` tinyint DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `dob` varchar(50) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `fcc_agreement` varchar(20) DEFAULT 'No',
  `transferconsent` varchar(20) DEFAULT 'No',
  `signature_file_name` varchar(150) DEFAULT NULL,
  `order_status` varchar(150) DEFAULT 'Pending',
  `ssn` varchar(100) DEFAULT NULL,
  `agree_terms` char(50) DEFAULT NULL,
  `agree_sms` char(50) DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_id` varchar(45) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `acp_status` varchar(250) DEFAULT NULL,
  `shockwave_id` varchar(75) DEFAULT NULL,
  `surgepays_id` varchar(75) DEFAULT NULL,
  `tookstaff` varchar(75) DEFAULT NULL,
  `agree_emails` char(50) DEFAULT NULL,
  `pay_message` varchar(500) DEFAULT NULL,
  `pay_authcode` varchar(75) DEFAULT NULL,
  `pay_transid` varchar(75) DEFAULT NULL,
  `pay_accountnumber` varchar(75) DEFAULT NULL,
  `pay_accounttype` varchar(75) DEFAULT NULL,
  `pay_transmessage` varchar(500) DEFAULT NULL,
  `payment_method` varchar(75) DEFAULT NULL,
  `skuPlan` varchar(45) DEFAULT NULL,
  `all_info` varchar(45) DEFAULT NULL,
  `utm_source` varchar(150) DEFAULT NULL,
  `utm_medium` varchar(150) DEFAULT NULL,
  `utm_campaign` varchar(200) DEFAULT NULL,
  `utm_content` varchar(150) DEFAULT NULL,
  `utm_adgroup` varchar(200) DEFAULT NULL,
  `match_type` varchar(200) DEFAULT NULL,
  `gclid` varchar(250) DEFAULT NULL,
  `fbclid` varchar(250) DEFAULT NULL,
  `tracking_number` varchar(100) DEFAULT NULL,
  `status_text` varchar(300) DEFAULT NULL,
  `merchant_phone` varchar(15) DEFAULT NULL,
  `origin` varchar(50) DEFAULT NULL,
  `order_step` varchar(100) DEFAULT NULL,
  `middle_initial` varchar(3) DEFAULT NULL,
  `suffix` varchar(10) DEFAULT NULL,
  `email_confirm` varchar(150) DEFAULT NULL,
  `second_phone_number` varchar(150) DEFAULT NULL,
  `tribal` varchar(45) DEFAULT NULL,
  `tribal_id` varchar(150) DEFAULT NULL,
  `is_child_dependent` varchar(45) DEFAULT NULL,
  `bqp_firstname` varchar(150) DEFAULT NULL,
  `bqp_lastname` varchar(150) DEFAULT NULL,
  `bqp_middlename` varchar(150) DEFAULT NULL,
  `bqp_suffix` varchar(150) DEFAULT NULL,
  `bqp_dob` varchar(150) DEFAULT NULL,
  `bqp_ssn` varchar(150) DEFAULT NULL,
  `bqp_tribal_id` varchar(150) DEFAULT NULL,
  `type_identification` varchar(150) DEFAULT NULL,
  `nverification_number` varchar(300) DEFAULT NULL,
  `military_id_file` varchar(300) DEFAULT NULL,
  `passport_file` varchar(300) DEFAULT NULL,
  `other_id` varchar(300) DEFAULT NULL,
  `referrer_order_id` varchar(100) DEFAULT NULL,
  `organization` varchar(300) DEFAULT NULL,
  `referralStatus` varchar(100) DEFAULT NULL,
  `ACPStatus` varchar(100) DEFAULT NULL,
  `URL` varchar(300) DEFAULT NULL,
  `agree_pii` char(10) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `storename` varchar(300) DEFAULT NULL,
  `signature_text` varchar(300) DEFAULT NULL,
  `fieldagent` int DEFAULT NULL,
  `shipping_address1` varchar(300) DEFAULT NULL,
  `shipping_address2` varchar(300) DEFAULT NULL,
  `shipping_city` varchar(150) DEFAULT NULL,
  `shipping_state` varchar(150) DEFAULT NULL,
  `shipping_zipcode` varchar(100) DEFAULT NULL,
  `household_check` char(50) DEFAULT NULL,
  `household_people` char(50) DEFAULT NULL,
  `household_amount` char(50) DEFAULT NULL,
  `current_benefits` varchar(5) DEFAULT NULL,
  `phone_type` varchar(50) DEFAULT NULL,
  `anotheradult` varchar(5) DEFAULT NULL,
  `anotheradultdiscount` varchar(5) DEFAULT NULL,
  `anotheradultshareincome` varchar(5) DEFAULT NULL,
  `signingPowerAttorney` varchar(5) DEFAULT NULL,
  `medicalSubscriberId` varchar(45) DEFAULT NULL,
  `billing_address1` varchar(300) DEFAULT NULL,
  `billing_address2` varchar(300) DEFAULT NULL,
  `billing_city` varchar(150) DEFAULT NULL,
  `billing_state` varchar(150) DEFAULT NULL,
  `billing_zipcode` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifeline_records`
--

LOCK TABLES `lifeline_records` WRITE;
/*!40000 ALTER TABLE `lifeline_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `lifeline_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-21 13:50:39
