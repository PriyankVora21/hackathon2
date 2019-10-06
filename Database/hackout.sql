/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.0.27-community-nt : Database - hackout
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hackout` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hackout`;

/*Table structure for table `book_details` */

DROP TABLE IF EXISTS `book_details`;

CREATE TABLE `book_details` (
  `id` int(11) NOT NULL,
  `Author` varchar(255) default NULL,
  `Publication` varchar(255) default NULL,
  `ISBN` varchar(255) default NULL,
  `Stream` varchar(255) default NULL,
  `Title` varchar(255) default NULL,
  `Edition` varchar(255) default NULL,
  `price` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book_details` */

insert  into `book_details`(`id`,`Author`,`Publication`,`ISBN`,`Stream`,`Title`,`Edition`,`price`) values (1,'RAJIV CHOPRA','S CHAND','9385676342','ENGINEERING','DBMS','5TH',400),(3,'R.S.KURMI','S CHAND','8121906288','ENGINEERING','MECHANICAL ENGINEERING','5TH',250),(4,'KD TRIPATHI','JAYPEE','97853552704996','MEDICAL','MEDICAL PHARMACOLOGY','8TH',800),(5,'V.K.Mehta','S Chand','8121920973','ENGINEERING','Objective Electrical Technology','7',300),(6,'B.S.Grewal','Khanna Publishers','9788193328491','ENGINEERING','Higher Engineering Mathematics','4',500),(7,'Surbhi Mitra','Arihant','9350944308','ENGINEERING','Handbook of CS & IT','6',100),(8,'V.Ramaraman','PHI Learning','9387472299','ENGINEERING','Introduction to Information Technology','3',200),(9,'Herbert Schildt','McGraw Hill','9789387432291','ENGINEERING','JAVA-The complete reference','10',400),(10,'V suprabha devi','Jaypee Brothers medical publishers','9789352701155','MEDICAL','Human Embryology','11',400),(11,'Pushpalatha K','Jaypee Brothers medical publishers','9389034973','MEDICAL','Human Histology','9',415),(12,'U.Satyanarayana','Elsevier India','8131248852','MEDICAL','Biochemistry','5',950),(13,'K.Sembulingam','Jaypee Brothers medical publishers','9352706927','MEDICAL','Essentials of Medical Physiology','8',999),(14,'Apurba Sankar Sastry','Jaypee Brothers medical publishers','9789352704798','MEDICAL','Medical Microbiology','2',500),(15,'V.V.Pillay','Educa Books','8181915062','MEDICAL','Forensic Medicin and Toxicology','19',850),(16,'Reema Thareja','Oxford','0198099304','ENGINEERING','Data Structure using C','2',300),(17,'aa','f','1234','ENGINEERING','abc','5',222);

/*Table structure for table `user_details` */

DROP TABLE IF EXISTS `user_details`;

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(255) default NULL,
  `Lastname` varchar(255) default NULL,
  `Username` varchar(255) default NULL,
  `Password` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `phone` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_details` */

insert  into `user_details`(`id`,`Firstname`,`Lastname`,`Username`,`Password`,`email`,`phone`) values (1,'Rajan','Ladani','Rajan21','1','pvpvp21@gmail.com',9924128606),(2,'Priyank','Vora','Priyank21','1','pvpvp21@gmail.com',7622047557),(3,'1','1','1','1','1@gmail.com',1),(4,'Kavil','Parikh','kavil','kavil123','kavil@gmail.com',9898780779);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
