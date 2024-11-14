/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gerencaiwu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gerencaiwu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gerencaiwu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-12 09:14:59'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-12 09:14:59'),(3,'shouzhi_yesno_types','收支',1,'支出',NULL,'2021-05-12 09:14:59'),(4,'shouzhi_yesno_types','收支',2,'收入',NULL,'2021-05-12 09:14:59'),(5,'shouzhi_leixing_types','收支类型名称',1,'奖学金',NULL,'2021-05-12 09:14:59'),(6,'shouzhi_leixing_types','收支类型名称',2,'兼职收入',NULL,'2021-05-12 09:14:59'),(7,'shouzhi_leixing_types','收支类型名称',3,'勤工俭学收入',NULL,'2021-05-12 09:14:59'),(8,'shouzhi_leixing_types','收支类型名称',4,'学校补助收入',NULL,'2021-05-12 09:14:59'),(9,'shouzhi_leixing_types','收支类型名称',5,'学费支出',NULL,'2021-05-12 09:14:59'),(10,'shouzhi_leixing_types','收支类型名称',6,'水费支出',NULL,'2021-05-12 09:14:59'),(11,'shouzhi_leixing_types','收支类型名称',7,'饭费支出',NULL,'2021-05-12 09:14:59'),(12,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-05-12 09:14:59'),(13,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-05-12 09:14:59'),(14,'gonggao_types','公告类型名称',3,'公告类型3',NULL,'2021-05-12 09:50:04');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`gonggao_photo`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',1,'http://localhost:8080/gerencaiwu/file/download?fileName=1620783657598.jpg','2021-05-12 09:41:03','公告1的详情\r\n','2021-05-12 09:41:03'),(4,'公告2',1,'http://localhost:8080/gerencaiwu/file/download?fileName=1620784137808.jpg','2021-05-12 09:49:01','公告2的详情\r\n','2021-05-12 09:49:01');

/*Table structure for table `huandaizhushou` */

DROP TABLE IF EXISTS `huandaizhushou`;

CREATE TABLE `huandaizhushou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `huandaizhushou_name` varchar(200) DEFAULT NULL COMMENT '名目 Search111 ',
  `huandaizhushou_time` timestamp NULL DEFAULT NULL COMMENT '开始还贷时间',
  `huandaizhushou_number` int(11) DEFAULT NULL COMMENT '几个月',
  `huandaizhushou_new_money` decimal(10,2) DEFAULT NULL COMMENT '每月金额',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `huandaizhushou_content` text COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='还贷助手';

/*Data for the table `huandaizhushou` */

insert  into `huandaizhushou`(`id`,`xuesheng_id`,`huandaizhushou_name`,`huandaizhushou_time`,`huandaizhushou_number`,`huandaizhushou_new_money`,`insert_time`,`huandaizhushou_content`,`create_time`) values (1,1,'2020年张1的助学贷款','2021-05-07 00:00:00',12,'300.00','2021-05-12 09:41:44','无\r\n','2021-05-12 09:41:44'),(2,2,'2021年助学贷款','2021-05-10 00:00:00',24,'200.00','2021-05-12 09:49:30','无\r\n','2021-05-12 09:49:30');

/*Table structure for table `shouzhi` */

DROP TABLE IF EXISTS `shouzhi`;

CREATE TABLE `shouzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `shouzhi_name` varchar(200) DEFAULT NULL COMMENT '收支名称  Search111 ',
  `shouzhi_yesno_types` int(11) DEFAULT NULL COMMENT '收支  Search111 ',
  `shouzhi_leixing_types` int(11) DEFAULT NULL COMMENT '收支类型  Search111 ',
  `shouzhi_new_money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `shouzhi_content` text COMMENT '收支详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='收支';

/*Data for the table `shouzhi` */

insert  into `shouzhi`(`id`,`xuesheng_id`,`shouzhi_name`,`shouzhi_yesno_types`,`shouzhi_leixing_types`,`shouzhi_new_money`,`shouzhi_content`,`create_time`) values (1,1,'奖金收入',2,1,'300.00','奖金收入1\r\n','2021-05-12 09:40:30'),(2,2,'兼职收入700元',2,2,'700.00','3月18日兼职一天  收入700元\r\n','2021-05-12 09:48:36'),(3,1,'兼职收入',2,2,'150.00','2021年3月29日的兼职收入150元\r\n','2021-05-12 09:55:09'),(4,1,'饭费支出1',1,7,'200.00','饭费支出1的详情\r\n','2021-05-12 10:06:29');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','qxil1x9mefd1in6c3zxcrn9tfpi89vxw','2021-05-12 09:34:04','2021-05-12 10:59:54'),(2,1,'a1','xuesheng','学生','44h2kmdr0uha3sndwq1w2n7569eon8nl','2021-05-12 09:50:14','2021-05-12 11:05:54');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`username`,`password`,`xuesheng_name`,`xuesheng_phone`,`xuesheng_id_number`,`xuesheng_photo`,`sex_types`,`new_money`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/gerencaiwu/file/download?fileName=1620783532370.jpg',1,'250.00','2021-05-12 09:38:57'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/gerencaiwu/file/download?fileName=1620783566516.jpg',1,'701.00','2021-05-12 09:39:36'),(3,'a3','123456','张2','17703786903','410224199610232003','http://localhost:8080/gerencaiwu/file/download?fileName=1620783985549.jpg',1,'0.00','2021-05-12 09:46:30'),(4,'a4','123456','张4','17703786904','410224199610232004','http://localhost:8080/gerencaiwu/file/download?fileName=1620784048941.jpg',2,'0.00','2021-05-12 09:47:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
