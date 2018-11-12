/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.35 : Database - dbdemo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbdemo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dbdemo`;

/*Table structure for table `tb_department` */

DROP TABLE IF EXISTS `tb_department`;

CREATE TABLE `tb_department` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Name` longtext,
  `Level` longtext,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_department` */

/*Table structure for table `tb_log` */

DROP TABLE IF EXISTS `tb_log`;

CREATE TABLE `tb_log` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LogNo` longtext,
  `LogContext` longtext,
  `LogLevel` int(11) NOT NULL,
  `ActionUser` longtext,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_log` */

/*Table structure for table `tb_menu` */

DROP TABLE IF EXISTS `tb_menu`;

CREATE TABLE `tb_menu` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Name` longtext,
  `LinkUrl` longtext,
  `ImageUrl` longtext,
  `ParentID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `Menu_ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Menu_ID` (`Menu_ID`),
  CONSTRAINT `Menu_Nodes` FOREIGN KEY (`Menu_ID`) REFERENCES `tb_menu` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_menu` */

/*Table structure for table `tb_menupermission` */

DROP TABLE IF EXISTS `tb_menupermission`;

CREATE TABLE `tb_menupermission` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PermissionID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MenuID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `MenuID` (`MenuID`),
  KEY `PermissionID` (`PermissionID`),
  CONSTRAINT `MenuPermission_Menu` FOREIGN KEY (`MenuID`) REFERENCES `tb_menu` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `MenuPermission_SECURITY_Permission` FOREIGN KEY (`PermissionID`) REFERENCES `tb_permission` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_menupermission` */

/*Table structure for table `tb_notification` */

DROP TABLE IF EXISTS `tb_notification`;

CREATE TABLE `tb_notification` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NotificationNo` longtext,
  `Message` longtext,
  `ActionUser` longtext,
  `Type` int(11) NOT NULL,
  `ExpireTime` datetime NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_notification` */

insert  into `tb_notification`(`ID`,`NotificationNo`,`Message`,`ActionUser`,`Type`,`ExpireTime`,`IsDeleted`,`Remark`,`CreateTime`,`UpdateTime`) values ('0de22ba7-76d8-415e-bfdf-55244767ee84','N-001','System test notification.','Admin',1,'2021-08-02 13:02:53',0,'','2018-11-06 13:02:53','2018-11-06 13:02:53'),('15c4b5a1-187f-41a8-aa9a-4883a162dec6','N-008','System test notification.','Admin',1,'2021-08-02 13:02:53',0,'','2018-11-06 13:02:53','2018-11-06 13:02:53'),('240e1c50-6500-493e-8cea-fb2b55357677','N-007','System test notification.','Admin',1,'2021-08-02 13:02:53',0,'','2018-11-06 13:02:53','2018-11-06 13:02:53'),('4d2ed46a-2697-42b6-a169-82d4bb3a1df4','N-003','System test notification.','Admin',1,'2021-08-02 13:02:53',0,'','2018-11-06 13:02:53','2018-11-06 13:02:53'),('5d83e4a6-83fe-49e9-899c-6f4a96b1cc4d','N-006','System test notification.','Admin',1,'2021-08-02 13:02:53',0,'','2018-11-06 13:02:53','2018-11-06 13:02:53'),('897f6b7d-c58f-4504-a853-3ff134d19c89','N-002','System test notification.','Admin',1,'2021-08-02 13:02:53',0,'','2018-11-06 13:02:53','2018-11-06 13:02:53'),('9a747294-ad11-4513-bc6d-443e9dfa6728','N-000','System test notification.','Admin',1,'2021-08-02 13:02:53',0,'','2018-11-06 13:02:53','2018-11-06 13:02:53'),('ac612fa7-68ec-43f2-b011-6b926ac71ab3','N-009','System test notification.','Admin',1,'2021-08-02 13:02:53',0,'','2018-11-06 13:02:53','2018-11-06 13:02:53'),('bd3c8873-62c2-41af-a995-a54ac8ad1040','N-005','System test notification.','Admin',1,'2021-08-02 13:02:53',0,'','2018-11-06 13:02:53','2018-11-06 13:02:53'),('bf35600c-45f2-4089-a82a-c369dd6f8c1f','N-004','System test notification.','Admin',1,'2021-08-02 13:02:53',0,'','2018-11-06 13:02:53','2018-11-06 13:02:53');

/*Table structure for table `tb_permission` */

DROP TABLE IF EXISTS `tb_permission`;

CREATE TABLE `tb_permission` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Name` longtext,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `PermissionGroup_ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Role_ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `User_ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PermissionGroup_ID` (`PermissionGroup_ID`),
  KEY `Role_ID` (`Role_ID`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `PermissionGroup_SECURITY_Permissions` FOREIGN KEY (`PermissionGroup_ID`) REFERENCES `tb_permissiongroup` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Role_SECURITY_Permissions` FOREIGN KEY (`Role_ID`) REFERENCES `tb_role` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `User_SECURITY_Permissions` FOREIGN KEY (`User_ID`) REFERENCES `tb_user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_permission` */

/*Table structure for table `tb_permissiongroup` */

DROP TABLE IF EXISTS `tb_permissiongroup`;

CREATE TABLE `tb_permissiongroup` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Name` longtext,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `Role_ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `User_ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Role_ID` (`Role_ID`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `Role_SECURITY_PermissionGroups` FOREIGN KEY (`Role_ID`) REFERENCES `tb_role` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `User_SECURITY_PermissionGroups` FOREIGN KEY (`User_ID`) REFERENCES `tb_user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_permissiongroup` */

/*Table structure for table `tb_permissiongrouppermission` */

DROP TABLE IF EXISTS `tb_permissiongrouppermission`;

CREATE TABLE `tb_permissiongrouppermission` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PermissionID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PermissionGroupID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PermissionID` (`PermissionID`),
  KEY `PermissionGroupID` (`PermissionGroupID`),
  CONSTRAINT `PermissionGroupPermission_SECURITY_Permission` FOREIGN KEY (`PermissionID`) REFERENCES `tb_permission` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `PermissionGroupPermission_SECURITY_PermissionGroup` FOREIGN KEY (`PermissionGroupID`) REFERENCES `tb_permissiongroup` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_permissiongrouppermission` */

/*Table structure for table `tb_quicknavigation` */

DROP TABLE IF EXISTS `tb_quicknavigation`;

CREATE TABLE `tb_quicknavigation` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Href` longtext,
  `BackgroudColor` longtext,
  `Icon` longtext,
  `Text` longtext,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_quicknavigation` */

insert  into `tb_quicknavigation`(`ID`,`Href`,`BackgroudColor`,`Icon`,`Text`,`IsDeleted`,`Remark`,`CreateTime`,`UpdateTime`) values ('2ce64a8c-95e4-40e2-903f-579b73efe1f9','../../System/DBBackUp','pink-background','icon-magic','数据备份',0,NULL,'2018-11-06 13:02:53',NULL),('5f3bfeec-8aed-4982-92bb-955715546d3f','../../User/Summary','fb-background','icon-refresh','用户概览',0,NULL,'2018-11-06 13:02:51',NULL),('786291a5-6d84-4df6-bd28-32af85d2907f','../../User/Create','grass-green-background','icon-comments','新建用户',0,NULL,'2018-11-06 13:02:53',NULL),('98a076e5-ad23-44da-8ea0-5204178f5692','../../System/LogClear','sea-blue-background','icon-refresh','清理日志',0,NULL,'2018-11-06 13:02:53',NULL),('a827c5d0-9642-4f27-bc52-8c84020e4ed5','../../System/DBRestore','pink-background','icon-eye-open','数据恢复',0,NULL,'2018-11-06 13:02:53',NULL),('d54b3aed-0140-42b3-ac4e-9cfd3cf767e5','../../System/LogSummary','sea-blue-background','icon-inbox','日志概览',0,NULL,'2018-11-06 13:02:53',NULL);

/*Table structure for table `tb_role` */

DROP TABLE IF EXISTS `tb_role`;

CREATE TABLE `tb_role` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Name` longtext,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `User_ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `User_SECURITY_Roles` FOREIGN KEY (`User_ID`) REFERENCES `tb_user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_role` */

/*Table structure for table `tb_rolepermissiongroup` */

DROP TABLE IF EXISTS `tb_rolepermissiongroup`;

CREATE TABLE `tb_rolepermissiongroup` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `RoleID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PermissionGroupID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PermissionGroupID` (`PermissionGroupID`),
  KEY `RoleID` (`RoleID`),
  CONSTRAINT `RolePermissionGroup_SECURITY_PermissionGroup` FOREIGN KEY (`PermissionGroupID`) REFERENCES `tb_permissiongroup` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `RolePermissionGroup_SECURITY_Role` FOREIGN KEY (`RoleID`) REFERENCES `tb_role` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_rolepermissiongroup` */

/*Table structure for table `tb_sessionpool` */

DROP TABLE IF EXISTS `tb_sessionpool`;

CREATE TABLE `tb_sessionpool` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UserID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UserName` longtext,
  `IsOnline` tinyint(1) NOT NULL,
  `SignInTime` datetime DEFAULT NULL,
  `SignOutTime` datetime DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_sessionpool` */

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Email` longtext,
  `Gender` tinyint(1) DEFAULT NULL,
  `PhoneNum` longtext,
  `Level` int(11) NOT NULL,
  `Password` longtext,
  `Name` longtext,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

/*Table structure for table `tb_userlevel` */

DROP TABLE IF EXISTS `tb_userlevel`;

CREATE TABLE `tb_userlevel` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LevelCode` int(11) NOT NULL,
  `DisplayName` longtext,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_userlevel` */

/*Table structure for table `tb_userrole` */

DROP TABLE IF EXISTS `tb_userrole`;

CREATE TABLE `tb_userrole` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `RoleID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UserID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `UserRole_SECURITY_Role` FOREIGN KEY (`RoleID`) REFERENCES `tb_role` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `UserRole_SECURITY_User` FOREIGN KEY (`UserID`) REFERENCES `tb_user` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_userrole` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
