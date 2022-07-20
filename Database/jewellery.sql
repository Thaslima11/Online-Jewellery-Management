/*
SQLyog Community v8.4 RC2
MySQL - 5.0.15-nt : Database - jewellery
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jewellery` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jewellery`;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customer_name` varchar(50) default NULL,
  `password` varchar(40) default NULL,
  `address` varchar(100) default NULL,
  `phone` varchar(20) default NULL,
  `email` varchar(50) default NULL,
  `creation_date` date default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`customer_name`,`password`,`address`,`phone`,`email`,`creation_date`) values ('ram','ram123','12, nesamani st, T nagar chennai','9899343433','mani@gamil.com','2011-01-06');

/*Table structure for table `orderby_cash` */

DROP TABLE IF EXISTS `orderby_cash`;

CREATE TABLE `orderby_cash` (
  `order_id` int(4) NOT NULL auto_increment,
  `customer_name` varchar(40) default NULL,
  `item_name` varchar(100) default NULL,
  `item_model` varchar(100) default NULL,
  `price` int(7) default NULL,
  `status` varchar(40) default NULL,
  `creation_date` date default NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orderby_cash` */

insert  into `orderby_cash`(`order_id`,`customer_name`,`item_name`,`item_model`,`price`,`status`,`creation_date`) values (1,'ram','studs','party_wear_studs',12000,'waiting','2011-01-06');

/*Table structure for table `orderby_credit` */

DROP TABLE IF EXISTS `orderby_credit`;

CREATE TABLE `orderby_credit` (
  `order_id` int(4) unsigned NOT NULL auto_increment,
  `customer_name` varchar(40) default NULL,
  `item_name` varchar(100) default NULL,
  `item_model` varchar(100) default NULL,
  `price` int(7) default NULL,
  `credit_card` decimal(20,0) default NULL,
  `bank` varchar(20) default NULL,
  `status` varchar(40) default NULL,
  `creation_date` date default NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orderby_credit` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_name` varchar(40) default NULL,
  `password` varchar(40) default NULL,
  `role` varchar(35) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user_name`,`password`,`role`) values ('ram','ram123','customer'),('admin','admin','manager');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
