/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.36 : Database - zx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zx` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `MobName` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT '联系人显示的名字',
  `UserName` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT '联系人的名字',
  `nickname` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT '联系人的昵称',
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '联系人的电话',
  `register` tinyint(4) NOT NULL COMMENT '是1否0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`MobName`,`UserName`,`nickname`,`phone`,`register`) values (1,'小三','张三','三哥','13123232323',1),(2,'四弟','李四','阿肆','15356739929',1),(3,'五天','王五','小五','15555555555',1),(4,'玉圆环','杨玉洁','小玉','13145357896',1),(5,'余力','于大力','大力','15467889192',0),(6,'和虎','陈虎','阿虎','15545656655',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
