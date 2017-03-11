/*
SQLyog Community Edition- MySQL GUI v7.11 
MySQL - 5.0.67-community-nt : Database - rentalplus
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`rentalplus` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `rentalplus`;

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `admins` */

insert  into `admins`(`id`,`email`,`password`,`active`) values (1,'admin@test','admin123',1),(2,'devang@test','devang123',1),(3,'riddhi@test','riddhi',1);

/*Table structure for table `properties` */

DROP TABLE IF EXISTS `properties`;

CREATE TABLE `properties` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `door_number` varchar(200) default NULL,
  `street_address` varchar(200) default NULL,
  `post_code` varchar(20) default NULL,
  `latitude` varchar(20) default NULL,
  `longitude` varchar(20) default NULL,
  `poster_path` varchar(200) default NULL,
  `contact_name` varchar(50) default NULL,
  `contact_number` varchar(20) default NULL,
  `rent` double(9,2) default NULL,
  `kind` enum('house','flat') default NULL,
  `no_of_bed_rooms` int(11) default NULL,
  `furniture` enum('unfurnished','partially','furnished','fully furnished') default NULL,
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `properties` */

insert  into `properties`(`id`,`door_number`,`street_address`,`post_code`,`latitude`,`longitude`,`poster_path`,`contact_name`,`contact_number`,`rent`,`kind`,`no_of_bed_rooms`,`furniture`,`active`) values (1,'101','abc','380009',NULL,NULL,NULL,'dummy name 1','9898123123',1900.00,'flat',2,'furnished',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
