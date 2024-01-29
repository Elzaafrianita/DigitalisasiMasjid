/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 5.1.36-community-log : Database - db-masjid
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db-masjid` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db-masjid`;

/*Table structure for table `tbl_agenda` */

DROP TABLE IF EXISTS `tbl_agenda`;

CREATE TABLE `tbl_agenda` (
  `id_agenda` char(10) NOT NULL,
  `nama_agenda` varchar(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  PRIMARY KEY (`id_agenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_agenda` */

insert  into `tbl_agenda`(`id_agenda`,`nama_agenda`,`tanggal`,`jam`) values 
('000','mesjid','2023-11-25','01:47:00'),
('666','ramadan','2023-11-01','16:53:00');

/*Table structure for table `tbl_kas_masjid` */

DROP TABLE IF EXISTS `tbl_kas_masjid`;

CREATE TABLE `tbl_kas_masjid` (
  `id_kas_masjid` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `kas_masuk` double DEFAULT NULL,
  `kas_keluar` double DEFAULT NULL,
  `jenis_kas` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_kas_masjid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_kas_masjid` */

/*Table structure for table `tbl_pengurus` */

DROP TABLE IF EXISTS `tbl_pengurus`;

CREATE TABLE `tbl_pengurus` (
  `id_pengurus` char(11) NOT NULL,
  `nama_pengurus` varchar(35) DEFAULT NULL,
  `jabatan` varchar(30) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_pengurus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tbl_pengurus` */

insert  into `tbl_pengurus`(`id_pengurus`,`nama_pengurus`,`jabatan`,`alamat`,`no_hp`) values 
('001','Musri Wandra','Ketua Yayasan','Jl Pasaman','082288169342'),
('002','zkai','sdf','lkjf','09');

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id_user` char(11) COLLATE utf8_spanish_ci NOT NULL,
  `nama_user` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id_user`,`nama_user`,`email`,`password`,`level`) values 
('001','wandra','wandra@gmail.com','$2y$10$iKBBKsnRxCnbJl11wI04su1TB7/Q5IzFuyFZpm23xYY8rtZcBQsta',1),
('002','randy','randy@gmail.com','$2y$10$sU5RL0EafZ4NYE1WngUG5uJLBdFqmRe1BqrKQXmJ76kb9UbhpN7iC',2),
('003','putra','putra@gmail.com','$2y$10$D/zHRLaTicAN1o./rq.xO.R0o2aNsctqVi62nMN7Q/d6Si58c4ova',1);

/*Table structure for table `tbl_users` */

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `user_name` char(20) NOT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_users` */

insert  into `tbl_users`(`user_name`,`user_password`) values 
('musriwandra','202cb962ac59075');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` char(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
