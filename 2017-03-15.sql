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

insert  into `admins`(`id`,`email`,`password`,`active`) values (1,'admin@test.com','admin123',1),(2,'devang@test.com','devang123',1),(3,'riddhi@test.co.uk','riddhi',1);

/*Table structure for table `properties` */

DROP TABLE IF EXISTS `properties`;

CREATE TABLE `properties` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `door_number` varchar(200) default NULL,
  `society_name` varchar(200) default NULL,
  `street_address` varchar(200) default NULL,
  `postal_code` varchar(20) default NULL,
  `city` varchar(200) default NULL,
  `state` varchar(200) default NULL,
  `country` varchar(200) default NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `properties` */

insert  into `properties`(`id`,`door_number`,`society_name`,`street_address`,`postal_code`,`city`,`state`,`country`,`latitude`,`longitude`,`poster_path`,`contact_name`,`contact_number`,`rent`,`kind`,`no_of_bed_rooms`,`furniture`,`active`) values (1,'101',NULL,NULL,'380009',NULL,NULL,NULL,'23.0333','72.6181','','dummy name 1','9898123123',1900.00,'flat',2,'furnished',1),(2,'22 Shantikunj Society',NULL,NULL,'390013',NULL,NULL,NULL,'22.5635','72.9091',NULL,'Amar','9898123123',8000.00,'flat',3,'fully furnished',1),(3,'13B BhumiKurpa Society',NULL,NULL,'744302',NULL,NULL,NULL,'9.1833','92.7667','assets/uploads/sofitel-mumbai-bkc-luxury.jpg','Keval Patil','7878112233',15555.00,'flat',3,'fully furnished',1),(4,'1274 Swiss Villa','M','Chelsy','390013','Jaipur','Rajsthan','India','23.044851','72.562067','assets/uploads/house2 (1).jpg','Umesh','8899112274',25000.00,'house',6,'partially',1),(5,'Josheph K. Bunglow',NULL,NULL,'380001',NULL,NULL,NULL,'23.0256','72.5769','assets/uploads/house2 (1).jpg','Bhupendra','7788995566',4500.00,'house',2,'unfurnished',1),(6,'Mona Greens',NULL,NULL,'390003',NULL,NULL,NULL,'22.3311','73.1555','assets/uploads/C102-Outside-View-of-apartment.jpg','Tapan Patel','740852991',12000.00,'flat',2,'partially',1),(7,'2011 B Shivshakti Apartment',NULL,NULL,'380051',NULL,NULL,NULL,'22.9195','73.0538','assets/uploads/green-valley-heights-zirakpur-elevation.jpg','Gita Kanubhai Patel','7845691232',7400.00,'house',4,'unfurnished',1),(8,'Styan 12 Bung',NULL,NULL,'532122',NULL,NULL,NULL,'18.5519','83.6568','assets/uploads/2.jpg','Rameshbabu','7845784577',80000.00,'house',2,'partially',1),(9,'Ram nivas Brothers 2',NULL,NULL,'380019',NULL,NULL,NULL,'22.9764','72.836','assets/uploads/Shiv-Kuber-Heights-in-Vadodara-2-BHK-Flats-3-BHK-Duplex-Penthouse-Shops-Corporate-Offices.jpg','Mahesh Thakur','7778885554',10500.00,'house',6,'fully furnished',1),(10,'amarprapat villa',NULL,NULL,'380019',NULL,NULL,NULL,'22.9764','72.836','assets/uploads/Savvy_Swaraaj_Sports_Living_01.jpg','111','111',1500.00,'flat',111,'fully furnished',1),(11,'C 102',NULL,NULL,'532123',NULL,NULL,NULL,'18.4547','83.7375','assets/uploads/house2 (1).jpg','Tina','8888111122',5000.00,'house',4,'partially',1),(12,'2',NULL,NULL,'744302',NULL,NULL,NULL,'9.1833','92.7667','assets/uploads/g9_6-12-2016-184612.jpg','122','1231231231',1000.00,'house',2,'partially',1),(13,'1 Floor',NULL,NULL,'380005',NULL,NULL,NULL,'23.0833','72.6667','assets/uploads/ph_homes_offices.114936.1.jpg','Neel Patel','7898456544',14500.00,'flat',3,'fully furnished',1),(14,'abca',NULL,NULL,'380001',NULL,NULL,NULL,'23.0256','72.5769','assets/uploads/pic-4a.jpg','bhim','9922334455',8500.00,'house',3,'unfurnished',1),(15,'Fish House',NULL,NULL,'380013',NULL,NULL,NULL,'22.9764','72.836','assets/uploads/001_Fish-Wallpaper-HD.jpg','Rahul Shah','7418529652',9000.00,'house',3,'fully furnished',1),(16,'C 302','Sangath 2 Flat','Motera Cricket Stadium Road','380005','Ahmedabad','Gujarat','India','23.1036054','72.6024044','','Amar Patil','99999555555',6000.00,'flat',1,'fully furnished',1),(17,'Forturne Landmark Hotel','Nr Usmanpura Garden','Usmanpura','380013','Ahmedabad','Gujarat','India','23.047728','72.57046799999999','assets/uploads/colorful-easter-eggs-holiday-hd-wallpaper-1920x1200-10811.jpg','abcd','7878454511',4500.00,'house',3,'fully furnished',1),(18,'B 302 Second Floor','Shamruddhi Complex','Opp Panjab National Bank','380019','Ahmedabad','Gujarat','India','23.1091149','72.59108610000001','assets/uploads/313231e8deea4f891603a1d0608bd34e5247f9bdc7f0a06ab0b19f98cba28e46.jpg','Rakesh Raval','9865857412',8500.00,'flat',2,'unfurnished',1),(19,'Tiger House','Zoo Colony','Near Navarangpura Police Station','567890','Tokyo','Tokyo','Japan','35.7090259','139.7319925','assets/uploads/animals-wallpaper-hd-2.jpg','Hue Jackman','6789456123',16500.00,'flat',4,'fully furnished',1),(20,'25 Paris House','Shraddha Society','Nr Panchsil Hospital','440022','Haryana','Haryana','India','29.0587757','76.085601','assets/uploads/Eiffel-Tower-lanscape-Wallpaper-HD.jpg','Gita Biswas','7788994444',2000.00,'flat',1,'partially',1),(21,'aaaaaa','a','a','111111','a','a','a','48.3705449','10.89779','assets/uploads/P_20141214_115014.jpg','chirag','1122334455',9000.00,'house',5,'fully furnished',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
