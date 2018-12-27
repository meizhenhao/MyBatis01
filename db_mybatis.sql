/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.49-community : Database - db_mybatis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_mybatis` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_mybatis`;

/*Table structure for table `t_address` */

DROP TABLE IF EXISTS `t_address`;

CREATE TABLE `t_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sheng` varchar(20) DEFAULT NULL,
  `shi` varchar(20) DEFAULT NULL,
  `qu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_address` */

insert  into `t_address`(`id`,`sheng`,`shi`,`qu`) values (1,'江苏省','苏州市','姑苏区'),(2,'江苏省','南京市','鼓楼区');

/*Table structure for table `t_grade` */

DROP TABLE IF EXISTS `t_grade`;

CREATE TABLE `t_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gradeName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_grade` */

insert  into `t_grade`(`id`,`gradeName`) values (1,'大学一年级'),(2,'大学二年级');

/*Table structure for table `t_student` */

DROP TABLE IF EXISTS `t_student`;

CREATE TABLE `t_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `gradeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_student` (`gradeId`),
  KEY `FK_t_student2` (`addressId`),
  CONSTRAINT `FK_t_student2` FOREIGN KEY (`addressId`) REFERENCES `t_address` (`id`),
  CONSTRAINT `FK_t_student` FOREIGN KEY (`gradeId`) REFERENCES `t_grade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `t_student` */

insert  into `t_student`(`id`,`name`,`age`,`addressId`,`gradeId`) values (1,'张三',10,1,1),(2,'李四',11,2,2),(3,'王五',12,2,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
