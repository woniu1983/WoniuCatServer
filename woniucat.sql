﻿CREATE DATABASE  IF NOT EXISTS `woniucat` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `woniucat`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: woniucat
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `DepartmentId` int(9) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT 'other',
  `NamePinYin` varchar(400) DEFAULT NULL,
  `CreateTime` timestamp NULL DEFAULT NULL,
  `CompanyId` int(11) DEFAULT 0,
  `TreePath` varchar(255) DEFAULT NULL,
  `ParentDepId` int(9) DEFAULT 0,
  `DepLevel` int(9) DEFAULT 0,
  PRIMARY KEY (`DepartmentId`),
  KEY`departmentId_index` (`DepartmentId` ASC),
  KEY `company_index` (`CompanyId`),
  KEY `treePath_index` (`TreePath`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'企业直属','qiyezhishu','2019-10-16 00:00:00', 0, '/1', 0, 1);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain`
--

DROP TABLE IF EXISTS `domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain` (
  `DomId` int(11) NOT NULL AUTO_INCREMENT,
  `CreateTime` timestamp NULL DEFAULT NULL,
  `DomName` varchar(300) DEFAULT NULL,
  `DomAlias` varchar(300) DEFAULT NULL,
  `DomIp` varchar(30) DEFAULT NULL,
  `DomPort` varchar(30) DEFAULT NULL,
  `DomUserAccount` varchar(200) DEFAULT NULL,
  `DomUserPwd` varchar(200) DEFAULT NULL,
  `SynTime` varchar(30) DEFAULT NULL,
  `SynStatus` int(1) DEFAULT '1',
  `CompanyId` int(11) DEFAULT 0,
  PRIMARY KEY (`DomId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `UserId` int(9) NOT NULL AUTO_INCREMENT,
  `Account` varchar(200) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `PhoneNo` varchar(50) DEFAULT NULL,
  `UserMail` varchar(256) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `NamePinYin` varchar(400) DEFAULT NULL,
  `Nickname` varchar(100) DEFAULT NULL,
  `BirthDay` varchar(30) DEFAULT NULL,
  `Sex` varchar(20) DEFAULT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LastLoginTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LoginTimesNo` int(9) DEFAULT '0',
  `PinCode` varchar(10) DEFAULT NULL,
  `CardId` varchar(100) DEFAULT NULL,
  `DepartmentId` int(11) DEFAULT NULL,
  `CompanyId` int(11) DEFAULT 0,
  `DomainId` int(11) DEFAULT NULL,
  `Status` int(1) DEFAULT '0',
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `Account_UNIQUE` (`Account`),
  UNIQUE KEY `PinCode_UNIQUE` (`PinCode`),
  KEY `department_index` (`DepartmentCode`),
  KEY`member_index` (`UserId` ASC, `Code` ASC, `DepartmentCode` ASC, `Status` ASC),
  KEY `departmentId_index` (`DepartmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-27 12:49:04