/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.6.12-log : Database - leave_management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`leave_management` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `leave_management`;

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `complaint` varchar(500) DEFAULT NULL,
  `reply` varchar(500) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`complaint_id`,`staff_id`,`date`,`complaint`,`reply`,`status`) values (1,13,'2020-12-02','NO LEAVE','dvdsvds','replied'),(2,13,'2022-01-14','nice','dvdsv','replied'),(3,13,'2021-04-12','break','vxzva','replied'),(4,13,'2022-04-06','beautiful',NULL,'pending');

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `coursename` varchar(50) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `course` */

insert  into `course`(`course_id`,`coursename`,`duration`) values (1,'Bsc.Computer Science',6),(2,'BCAa',6);

/*Table structure for table `leave_req` */

DROP TABLE IF EXISTS `leave_req`;

CREATE TABLE `leave_req` (
  `leave_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `no_of_days` varchar(20) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`leave_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `leave_req` */

insert  into `leave_req`(`leave_request_id`,`staff_id`,`date_from`,`date_to`,`no_of_days`,`reason`,`status`) values (1,10,'2022-01-01','2022-02-02','30','sick','reject'),(2,10,'2022-02-02','2022-02-14','12','travelling','reject'),(3,11,'2022-02-05','2022-02-08','2','sick','accepted'),(4,11,'2022-03-20','2022-03-25','5','personal','accepted');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`login_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_ID`,`username`,`password`,`type`) values (1,'admin','admin','admin'),(2,'hhgfh','663585255','teacher'),(3,'hhgfh','663585255','teacher'),(4,'nn@gmail.com','972314689','teacher'),(5,'shdjg@gmail.com','972314689','teacher'),(6,'nn@gmail.com','972314689','teacher'),(7,'shdjg@gmail.com','972314689','teacher'),(8,'shdjg@gmail.com','972314689','teacher'),(9,'shdjg@gmail.com','972314689','teacher'),(10,'dd@gmail.com','987654321','teacher'),(11,'shdjg@gmail.com','972314689','teacher');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(50) DEFAULT NULL,
  `experience` varchar(11) DEFAULT NULL,
  `staff_photo` varchar(500) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `mail_id` varchar(50) DEFAULT NULL,
  `phone_number` bigint(20) DEFAULT NULL,
  `house_name` varchar(50) DEFAULT NULL,
  `house_number` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `staff` */

insert  into `staff`(`staff_id`,`staff_name`,`experience`,`staff_photo`,`age`,`gender`,`mail_id`,`phone_number`,`house_name`,`house_number`,`city`,`district`,`pincode`,`state`,`login_id`) values (13,'Nadha','7','/static/staff_image/20220209-155925.jpg',39,'Female','dd@gmail.com',987654321,'2',2,'thalassery','Kozhikkode',670692,'kerala',10),(14,'pranoy','2 year','/static/staff_image/20220212-170838.jpg',61,'Male','shdjg@gmail.com',972314689,'wwe',0,'ertertertete','Kozhikkode',5555,'kerala',11);

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) DEFAULT NULL,
  `subject_name` varchar(50) DEFAULT NULL,
  `subcode` varchar(20) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `subject` */

insert  into `subject`(`subject_id`,`course_name`,`subject_name`,`subcode`,`semester`) values (1,'1','nata','GBSCMAT01','1'),(2,'1','Statistics','GBSTA01','1'),(5,'1','Computer Fundamentals & HTML','GBSCCS102','1'),(6,'2','Computer Fundamentals & HTML','GBSCCS102','1'),(7,'2','Discrete Mathematics','GBCAMAT01','1'),(8,'2','Common English','GENG1A01T','1');

/*Table structure for table `subject_staff_allocation` */

DROP TABLE IF EXISTS `subject_staff_allocation`;

CREATE TABLE `subject_staff_allocation` (
  `satff_subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`satff_subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subject_staff_allocation` */

/*Table structure for table `time_table` */

DROP TABLE IF EXISTS `time_table`;

CREATE TABLE `time_table` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(50) DEFAULT NULL,
  `hour` int(11) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `time_table` */

insert  into `time_table`(`tid`,`day`,`hour`,`course`,`semester`,`subject`) values (1,'monday',1,'1',1,'1'),(2,'monday',2,'1',1,'2'),(3,'monday',3,'1',1,'3'),(4,'monday',4,'1',1,'4'),(5,'monday',5,'1',1,'5'),(6,'tuesday',1,'1',1,'2'),(7,'tuesday',2,'1',1,'3'),(8,'tuesday',3,'1',1,'4'),(9,'tuesday',4,'1',1,'5'),(10,'tuesday',5,'1',1,'1'),(28,'friday',3,'2',1,'7');

/*Table structure for table `timetable_change` */

DROP TABLE IF EXISTS `timetable_change`;

CREATE TABLE `timetable_change` (
  `timetable_change_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`timetable_change_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `timetable_change` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
