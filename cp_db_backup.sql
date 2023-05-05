-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: cloudportaldb
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `SPRING_SESSION`
--

DROP TABLE IF EXISTS `SPRING_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SPRING_SESSION` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint NOT NULL,
  `LAST_ACCESS_TIME` bigint NOT NULL,
  `MAX_INACTIVE_INTERVAL` int NOT NULL,
  `EXPIRY_TIME` bigint NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPRING_SESSION`
--

LOCK TABLES `SPRING_SESSION` WRITE;
/*!40000 ALTER TABLE `SPRING_SESSION` DISABLE KEYS */;
INSERT INTO `SPRING_SESSION` VALUES ('ec977615-eeaf-424e-8651-6972d665656e','5941bf8d-b86f-48c9-81c4-c4e9a60ac047',1681161996805,1681162058759,1800,1681163858759,'admin');
/*!40000 ALTER TABLE `SPRING_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SPRING_SESSION_ATTRIBUTES`
--

DROP TABLE IF EXISTS `SPRING_SESSION_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SPRING_SESSION_ATTRIBUTES` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `SPRING_SESSION` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPRING_SESSION_ATTRIBUTES`
--

LOCK TABLES `SPRING_SESSION_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `SPRING_SESSION_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `SPRING_SESSION_ATTRIBUTES` VALUES ('ec977615-eeaf-424e-8651-6972d665656e','loginType',_binary '¨\Ì\0t\0ISV'),('ec977615-eeaf-424e-8651-6972d665656e','SPRING_SECURITY_CONTEXT',_binary '¨\Ì\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0:\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0:\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^\˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0:\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_ADMINsq\0~\0t\01-1-1-1xq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0:\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\0\n172.18.0.1ppsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0:\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0\nsr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0:\0\0xpw\0\0\0q\0~\0q\0~\0xpt\0admin'),('ec977615-eeaf-424e-8651-6972d665656e','userId',_binary '¨\Ì\0t\0admin');
/*!40000 ALTER TABLE `SPRING_SESSION_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_CONTACT`
--

DROP TABLE IF EXISTS `T_CONTACT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_CONTACT` (
  `CONTId` int NOT NULL AUTO_INCREMENT,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(50) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `CONTName` varchar(255) DEFAULT NULL,
  `EmailId` varchar(100) NOT NULL,
  `CONTNumber` varchar(100) DEFAULT NULL,
  `PasswordChangedOn` datetime DEFAULT NULL,
  `IsCustomerAdmin` bit(1) NOT NULL DEFAULT b'0',
  `IsEnabled` bit(1) NOT NULL DEFAULT b'1',
  `ContPassword` varchar(255) DEFAULT NULL,
  `ContOrgnization` varchar(255) DEFAULT NULL,
  `IsUserRegistered` bit(1) DEFAULT NULL,
  `CreateDateTime` datetime DEFAULT NULL,
  `RefId1` varchar(100) DEFAULT NULL,
  `RefId2` varchar(100) DEFAULT NULL,
  `GlobalId` varchar(50) NOT NULL,
  `LogCount` int NOT NULL DEFAULT '0',
  `IsLocked` bit(1) NOT NULL DEFAULT b'0',
  `LastLogin` datetime NOT NULL,
  `CSTMRId` int DEFAULT NULL,
  `TimeZone` varchar(50) NOT NULL DEFAULT 'UTC',
  PRIMARY KEY (`CONTId`),
  UNIQUE KEY `uk_t_contact_globalid` (`GlobalId`),
  UNIQUE KEY `uk_t_contact_emailid` (`EmailId`),
  KEY `idx_t_contact_cstmrid` (`CSTMRId`),
  KEY `idx_t_contact_contnumber` (`CONTNumber`),
  CONSTRAINT `fk_t_contact_cstmrid` FOREIGN KEY (`CSTMRId`) REFERENCES `T_CSTMR` (`CSTMRId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_CONTACT`
--

LOCK TABLES `T_CONTACT` WRITE;
/*!40000 ALTER TABLE `T_CONTACT` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_CONTACT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_CSTMR`
--

DROP TABLE IF EXISTS `T_CSTMR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_CSTMR` (
  `CSTMRId` int NOT NULL AUTO_INCREMENT,
  `CSTMRCRMId` varchar(255) DEFAULT NULL,
  `CSTMRName` varchar(255) NOT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(50) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `Descr` varchar(510) DEFAULT NULL,
  `IsEnabled` bit(1) NOT NULL DEFAULT b'1',
  `RefId` varchar(255) DEFAULT NULL,
  `GlobalId` varchar(50) NOT NULL,
  `ExternalId` varchar(255) DEFAULT NULL,
  `TimeZone` varchar(50) NOT NULL DEFAULT 'UTC',
  PRIMARY KEY (`CSTMRId`),
  UNIQUE KEY `uk_t_cstmr_globalid` (`GlobalId`),
  KEY `idx_t_cstmr_cstmrid` (`CSTMRId`),
  KEY `idx_t_cstmr_cstmrname` (`CSTMRName`),
  KEY `idx_t_cstmr_createdate` (`CreateDate`),
  KEY `idx_t_cstmr_refid` (`RefId`),
  KEY `idx_t_cstmr_cstmrcrmid` (`CSTMRCRMId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_CSTMR`
--

LOCK TABLES `T_CSTMR` WRITE;
/*!40000 ALTER TABLE `T_CSTMR` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_CSTMR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_CSTMR_PERMISSION`
--

DROP TABLE IF EXISTS `T_CSTMR_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_CSTMR_PERMISSION` (
  `PERMISSIONId` int NOT NULL AUTO_INCREMENT,
  `CSTMRId` int NOT NULL,
  `MaxNumOfLicensedUsersPerSeat` int DEFAULT '-1',
  `CurrentNumOfLicensedUsers` int DEFAULT '-1',
  `WaitingPeriodOfMachine` int DEFAULT '-1',
  `MaxNumOfMachinesPerLicensedUser` int DEFAULT '-1',
  `IsOnlineLoginEnabledPerLicensedUser` bit(1) DEFAULT b'0',
  `IsDetachablePerLicensedUser` bit(1) DEFAULT b'0',
  `IsConcurrencyDetachablePerLicensedUser` bit(1) DEFAULT b'0',
  PRIMARY KEY (`PERMISSIONId`),
  KEY `idx_t_cstmr_permission_cstmrid` (`CSTMRId`),
  CONSTRAINT `fk_t_cstmr_permission_cstmrid` FOREIGN KEY (`CSTMRId`) REFERENCES `T_CSTMR` (`CSTMRId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_CSTMR_PERMISSION`
--

LOCK TABLES `T_CSTMR_PERMISSION` WRITE;
/*!40000 ALTER TABLE `T_CSTMR_PERMISSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_CSTMR_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_LICENSED_USER`
--

DROP TABLE IF EXISTS `T_LICENSED_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_LICENSED_USER` (
  `LicensedUserId` int NOT NULL AUTO_INCREMENT,
  `GlobalId` varchar(50) NOT NULL,
  `LicensedUserName` varchar(255) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `PhoneNumber` varchar(100) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `ModifiedBy` varchar(50) DEFAULT NULL,
  `CreateDate` datetime NOT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `RefId1` varchar(255) DEFAULT NULL,
  `CSTMRId` int NOT NULL,
  `IdentityCode` varchar(255) NOT NULL,
  `Description` varchar(300) DEFAULT NULL,
  `IsEnabled` bit(1) NOT NULL,
  `LogCount` int NOT NULL DEFAULT '0',
  `UserPassword` varchar(255) DEFAULT NULL,
  `PasswordChangedOn` datetime DEFAULT NULL,
  `IsLocked` bit(1) NOT NULL DEFAULT b'0',
  `sendNotification` bit(1) NOT NULL DEFAULT b'0',
  `TimeZone` varchar(50) NOT NULL DEFAULT 'UTC',
  PRIMARY KEY (`LicensedUserId`),
  UNIQUE KEY `uk_t_licensed_user_golbalid` (`GlobalId`),
  UNIQUE KEY `uk_t_licensed_user_liccenseusername` (`LicensedUserName`),
  KEY `idx_t_licensed_user_createdate` (`CreateDate`),
  KEY `idx_t_licensed_user_description` (`Description`),
  KEY `idx_t_licensed_user_emailid` (`EmailId`),
  KEY `idx_t_licensed_user_identitycode` (`IdentityCode`),
  KEY `idx_t_licensed_user_phonenumber` (`PhoneNumber`),
  KEY `idx_t_licensed_user_refid1` (`RefId1`),
  KEY `idx_t_licensed_user_cstmrid` (`CSTMRId`),
  CONSTRAINT `fk_t_licensed_user_cstmrid` FOREIGN KEY (`CSTMRId`) REFERENCES `T_CSTMR` (`CSTMRId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_LICENSED_USER`
--

LOCK TABLES `T_LICENSED_USER` WRITE;
/*!40000 ALTER TABLE `T_LICENSED_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_LICENSED_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_MACHINE_WAITING_LIST`
--

DROP TABLE IF EXISTS `T_MACHINE_WAITING_LIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_MACHINE_WAITING_LIST` (
  `MWLId` int NOT NULL AUTO_INCREMENT,
  `CSTMRId` int NOT NULL,
  `IdentityCode` varchar(255) NOT NULL,
  `MachineFingerprint` text NOT NULL,
  `CreateDate` datetime NOT NULL,
  `ExpirationDate` datetime NOT NULL,
  PRIMARY KEY (`MWLId`),
  KEY `idx_t_machine_wait_list_mwlid` (`MWLId`),
  KEY `idx_t_machine_wait_list_cstmrid` (`CSTMRId`),
  CONSTRAINT `fk_t_machine_wait_list_cstmrid` FOREIGN KEY (`CSTMRId`) REFERENCES `T_CSTMR` (`CSTMRId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_MACHINE_WAITING_LIST`
--

LOCK TABLES `T_MACHINE_WAITING_LIST` WRITE;
/*!40000 ALTER TABLE `T_MACHINE_WAITING_LIST` DISABLE KEYS */;
/*!40000 ALTER TABLE `T_MACHINE_WAITING_LIST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PERMISSION`
--

DROP TABLE IF EXISTS `T_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_PERMISSION` (
  `PermissionId` int NOT NULL AUTO_INCREMENT,
  `ResourceName` varchar(255) NOT NULL,
  `Permission` varchar(50) NOT NULL,
  PRIMARY KEY (`PermissionId`),
  UNIQUE KEY `uk_t_permission_permissionid` (`PermissionId`),
  UNIQUE KEY `uk_t_permission_resourcename_permission` (`ResourceName`,`Permission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PERMISSION`
--

LOCK TABLES `T_PERMISSION` WRITE;
/*!40000 ALTER TABLE `T_PERMISSION` DISABLE KEYS */;
INSERT INTO `T_PERMISSION` VALUES (3,'root/DWM','V'),(1,'root/EM','VE'),(2,'root/RAM','V');
/*!40000 ALTER TABLE `T_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_PROPERTIES`
--

DROP TABLE IF EXISTS `T_PROPERTIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_PROPERTIES` (
  `PropertyId` int NOT NULL AUTO_INCREMENT,
  `PropertyName` varchar(100) NOT NULL,
  `PropertyType` varchar(50) NOT NULL,
  `PropertyValue` longtext,
  `RegEx` varchar(500) DEFAULT NULL,
  `PropertyKey` varchar(100) NOT NULL,
  `Description` varchar(300) DEFAULT NULL,
  `IsVisible` tinyint(1) NOT NULL DEFAULT '1',
  `CreatedBy` varchar(50) NOT NULL DEFAULT 'admin',
  `CreateDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(50) NOT NULL DEFAULT 'admin',
  `ModifiedDate` datetime DEFAULT NULL,
  `GlobalId` varchar(50) NOT NULL,
  `IsReadOnly` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`PropertyId`),
  UNIQUE KEY `uk_t_properties_propertyid` (`PropertyId`),
  UNIQUE KEY `uk_t_properties_propertykey` (`PropertyKey`),
  UNIQUE KEY `uk_t_properties_globalid` (`GlobalId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_PROPERTIES`
--

LOCK TABLES `T_PROPERTIES` WRITE;
/*!40000 ALTER TABLE `T_PROPERTIES` DISABLE KEYS */;
INSERT INTO `T_PROPERTIES` VALUES (1,'SMTP Host','2','c-dfz3hl3','','mailsenderhost','',1,'admin','2023-04-10 13:02:48','admin',NULL,'391fa839-df25-458d-b1ae-8ff78008d10c',_binary '\0'),(2,'SMTP Port','0','25','','smtpport','',1,'admin','2023-04-10 13:02:48','admin',NULL,'a7119932-b25e-41ec-a80e-8bf4b04e661e',_binary '\0'),(3,'User Name','2','','','mailusername','',1,'admin','2023-04-10 13:02:48','admin',NULL,'fb8443cd-b164-4fb9-b195-a4303c34e0ea',_binary '\0'),(4,'User Password','2','','','mailpassword','',1,'admin','2023-04-10 13:02:48','admin',NULL,'500794f3-47ac-48c6-9d85-4f489be6b24b',_binary '\0'),(5,'Sender E-mail','2','sender@vendor.com','','mailfrom','',1,'admin','2023-04-10 13:02:48','admin',NULL,'f3bd05ef-a460-454a-865d-ab2dc34a0674',_binary '\0'),(6,'Start TLS','5','false','','starttls','',1,'admin','2023-04-10 13:02:48','admin',NULL,'d09c395f-dbdd-42a1-9263-7f410d2c8f88',_binary '\0'),(7,'Sender Name','2','Vendor Sender Name','','senderName','',1,'admin','2023-04-10 13:02:48','admin',NULL,'2030238e-2677-4863-86cb-6fa14521e9e2',_binary '\0'),(8,'SMTP auth','5','false','','smtpauth','',1,'admin','2023-04-10 13:02:48','admin',NULL,'11d9f964-d1a9-420a-935a-62d1910bdec9',_binary '\0'),(9,'Enable Socksproxy','5','false','','socksProxyEnable','',1,'admin','2023-04-10 13:02:48','admin',NULL,'c0039cd1-31f0-4937-bb2d-1755f7fecb67',_binary '\0'),(10,'Socksproxy Host','2','','','socksProxyHost','',1,'admin','2023-04-10 13:02:48','admin',NULL,'c3d9b613-895f-44c4-af54-56620097ee65',_binary '\0'),(11,'Socksproxy Port','2','','','socksProxyPort','',1,'admin','2023-04-10 13:02:48','admin',NULL,'a3b7bf6c-8081-4d65-af52-fbf21332fe5a',_binary '\0'),(12,'E-mail Master Footer','2','','','EmailMasterFooter','',1,'admin','2023-04-10 13:02:48','admin',NULL,'8b710034-e4f9-4031-a38b-268879f8d83a',_binary '\0'),(13,'Max Num Of Licensed Users Per Seat','0','-1','','maxNumOfLicensedUsersPerSeat','',1,'admin','2023-04-10 13:02:48','admin',NULL,'4268e0bb-a1f2-4915-b664-34ccf6471bc3',_binary '\0'),(14,'Waiting Period Of Auto-Registered Machine','0','7','','waitingPeriodOfAutoRegisteredMachine','',1,'admin','2023-04-10 13:02:48','admin',NULL,'823043c2-cd25-44ac-9f19-a25be797aa9b',_binary '\0'),(15,'Max Num Of Auto-Registered Machines','0','5','','maxNumOfAutoRegisteredMachines','',1,'admin','2023-04-10 13:02:48','admin',NULL,'03377116-db4c-4d5d-b595-2c5eb86d9b83',_binary '\0'),(16,'Identity Expire Date','2','2500-12-31','','identityExpireDate','',1,'admin','2023-04-10 13:02:48','admin',NULL,'8ba94731-8172-47c8-a6ec-348613203e06',_binary '\0'),(17,'Identity Remote Login','5','true','','identityRemoteLogin','',1,'admin','2023-04-10 13:02:48','admin',NULL,'a1722e13-60b7-4ae5-a861-0e6e075503c8',_binary '\0'),(18,'Identity Remote Detach','5','true','','identityRemoteDetach','',1,'admin','2023-04-10 13:02:48','admin',NULL,'a32e5143-3457-4777-91a2-ddb8268ee140',_binary '\0'),(19,'Identity Concurrency Detach','5','true','','identityConcurrencyDetach','',1,'admin','2023-04-10 13:02:48','admin',NULL,'339a2eb5-ea31-4632-a596-78e4f5355211',_binary '\0'),(20,'Cloud LMS Public Address','2','c-dfz3hl3','','cloudLMSPublicAddress','',1,'admin','2023-04-10 13:02:48','admin',NULL,'d0b583a5-f53c-42e9-baca-4777197d580d',_binary '\0'),(21,'Cloud Portal Public Address','2','http://c-dfz3hl3','','cloudPortalPublicAddress','',1,'admin','2023-04-10 13:02:48','admin',NULL,'edba9a22-bfe0-4f6c-b1d2-ec1e744cafd9',_binary '\0');
/*!40000 ALTER TABLE `T_PROPERTIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ROLES`
--

DROP TABLE IF EXISTS `T_ROLES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_ROLES` (
  `RoleId` int NOT NULL,
  `GlobalId` varchar(50) NOT NULL,
  `RoleName` varchar(50) NOT NULL,
  `Descr` varchar(255) DEFAULT NULL,
  `IsEnabled` bit(1) NOT NULL DEFAULT b'1',
  `SystemRole` bit(1) NOT NULL DEFAULT b'0',
  `CreatedBy` varchar(50) NOT NULL DEFAULT 'admin',
  `CreateDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(50) NOT NULL DEFAULT 'admin',
  `ModifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`RoleId`),
  UNIQUE KEY `uk_t_roles_globalid` (`GlobalId`),
  UNIQUE KEY `uk_t_roles_rolename` (`RoleName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_ROLES`
--

LOCK TABLES `T_ROLES` WRITE;
/*!40000 ALTER TABLE `T_ROLES` DISABLE KEYS */;
INSERT INTO `T_ROLES` VALUES (1,'4da1a199-3fb0-00fe-f134-ce6650d47d99','EMSAdmin','Admin Role',_binary '',_binary '','admin',NULL,'admin',NULL),(2,'eea39b81-920c-2547-cd8d-331f0305e737','Distributor','Distributor Role',_binary '',_binary '','admin',NULL,'admin',NULL),(3,'6b600ab1-5350-0074-e9cd-967df3bbc402','EndUser','End User Role',_binary '',_binary '','admin',NULL,'admin',NULL);
/*!40000 ALTER TABLE `T_ROLES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_ROLE_PERMISSIONS_REF`
--

DROP TABLE IF EXISTS `T_ROLE_PERMISSIONS_REF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_ROLE_PERMISSIONS_REF` (
  `PermissionId` int NOT NULL,
  `RoleId` int NOT NULL,
  PRIMARY KEY (`PermissionId`,`RoleId`),
  KEY `idx_t_role_permission_ref_permissionid` (`PermissionId`),
  KEY `idx_t_role_permission_ref_roleid` (`RoleId`),
  CONSTRAINT `fk_t_role_permission_ref_permissionid` FOREIGN KEY (`PermissionId`) REFERENCES `T_PERMISSION` (`PermissionId`),
  CONSTRAINT `fk_t_role_permission_ref_roleid` FOREIGN KEY (`RoleId`) REFERENCES `T_ROLES` (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_ROLE_PERMISSIONS_REF`
--

LOCK TABLES `T_ROLE_PERMISSIONS_REF` WRITE;
/*!40000 ALTER TABLE `T_ROLE_PERMISSIONS_REF` DISABLE KEYS */;
INSERT INTO `T_ROLE_PERMISSIONS_REF` VALUES (1,1),(2,2),(3,2);
/*!40000 ALTER TABLE `T_ROLE_PERMISSIONS_REF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_USER`
--

DROP TABLE IF EXISTS `T_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_USER` (
  `UserId` int NOT NULL AUTO_INCREMENT,
  `LoginId` varchar(100) DEFAULT NULL,
  `GlobalId` varchar(50) NOT NULL,
  `ExpiresOn` datetime DEFAULT NULL,
  `IsEnabled` bit(1) NOT NULL DEFAULT b'1',
  `EmailId` varchar(100) NOT NULL,
  `UserPassword` varchar(255) DEFAULT NULL,
  `RefId1` varchar(100) DEFAULT NULL,
  `RefId2` varchar(100) DEFAULT NULL,
  `LogCount` int NOT NULL DEFAULT '0',
  `IsLocked` bit(1) NOT NULL DEFAULT b'0',
  `LastLogin` datetime DEFAULT NULL,
  `IsTechnical` bit(1) NOT NULL DEFAULT b'0',
  `IsConfigurator` bit(1) NOT NULL DEFAULT b'0',
  `UserName` varchar(100) DEFAULT NULL,
  `ExternalId` varchar(60) DEFAULT NULL,
  `CreatedBy` varchar(50) NOT NULL DEFAULT 'admin',
  `CreateDate` datetime DEFAULT NULL,
  `ModifiedBy` varchar(50) NOT NULL DEFAULT 'admin',
  `ModifiedDate` datetime DEFAULT NULL,
  `PasswordChangedOn` datetime DEFAULT NULL,
  `LocaleId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `uk_t_user_globalid` (`GlobalId`),
  UNIQUE KEY `uk_t_user_userid` (`UserId`),
  KEY `idx_t_user_emailid` (`EmailId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_USER`
--

LOCK TABLES `T_USER` WRITE;
/*!40000 ALTER TABLE `T_USER` DISABLE KEYS */;
INSERT INTO `T_USER` VALUES (1,'admin','1-1-1-1','2099-01-01 00:00:00',_binary '','admin@admin.com','6e291ce287173e39d0fc99d838f814dbb0608a405bc8ad7f1f1fb80b22bf0865',NULL,NULL,0,_binary '\0','2023-04-10 21:26:37',_binary '\0',_binary '\0','admin',NULL,'admin',NULL,'admin','2023-04-10 21:26:37',NULL,NULL);
/*!40000 ALTER TABLE `T_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T_USER_ROLES_REF`
--

DROP TABLE IF EXISTS `T_USER_ROLES_REF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T_USER_ROLES_REF` (
  `UserId` int NOT NULL,
  `RoleId` int NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `idx_t_user_roles_ref_roleid` (`RoleId`),
  CONSTRAINT `fk_t_user_roles_ref_roleid` FOREIGN KEY (`RoleId`) REFERENCES `T_ROLES` (`RoleId`),
  CONSTRAINT `fk_t_user_roles_ref_userid` FOREIGN KEY (`UserId`) REFERENCES `T_USER` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T_USER_ROLES_REF`
--

LOCK TABLES `T_USER_ROLES_REF` WRITE;
/*!40000 ALTER TABLE `T_USER_ROLES_REF` DISABLE KEYS */;
INSERT INTO `T_USER_ROLES_REF` VALUES (1,1);
/*!40000 ALTER TABLE `T_USER_ROLES_REF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_flyway_history`
--

DROP TABLE IF EXISTS `t_flyway_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_flyway_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `t_flyway_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_flyway_history`
--

LOCK TABLES `t_flyway_history` WRITE;
/*!40000 ALTER TABLE `t_flyway_history` DISABLE KEYS */;
INSERT INTO `t_flyway_history` VALUES (1,'1.0.0.0','cloudportaldbstructure','SQL','V1.0.0.0__cloudportaldbstructure.sql',-2142733645,'root','2023-04-10 13:02:48',540,1),(2,'1.0.0.1','cloudportaldbdata','SQL','V1.0.0.1__cloudportaldbdata.sql',-1279929999,'root','2023-04-10 13:02:48',10,1),(3,'1.0.0.2','cloudportaldbsession','SQL','V1.0.0.2__cloudportaldbsession.sql',691380062,'root','2023-04-10 13:02:48',120,1),(4,'1.0.0.3','cloudportaldbappproperties','SQL','V1.0.0.3__cloudportaldbappproperties.sql',-1332731934,'root','2023-04-10 13:02:48',5,1);
/*!40000 ALTER TABLE `t_flyway_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-10 21:28:24
