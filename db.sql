/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmagy64
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmagy64` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmagy64`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615723025331 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-14 19:45:16',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-14 19:45:16',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-14 19:45:16',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-14 19:45:16',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-14 19:45:16',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-14 19:45:16',6,'宇宙银河系月球1号','月某','13823888886','是'),(1615723025330,'2021-03-14 19:57:05',1615722878678,'创意金山文化产业园','小李','12333333333','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615722955885 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615723064698 DEFAULT CHARSET=utf8 COMMENT='客服售后';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (41,'2021-03-14 19:45:16',1,1,'提问1','回复1',0),(42,'2021-03-14 19:45:16',2,2,'提问2','回复2',2),(43,'2021-03-14 19:45:16',3,3,'提问3','回复3',3),(44,'2021-03-14 19:45:16',4,4,'提问4','回复4',4),(45,'2021-03-14 19:45:16',5,5,'提问5','回复5',5),(46,'2021-03-14 19:45:16',6,6,'提问6','回复6',6),(1615722806675,'2021-03-14 19:53:26',1,1,NULL,'在此可回复用户消息',NULL),(1615723064697,'2021-03-14 19:57:44',1615722878678,NULL,'订单后台处理，在此发送消息后台可查看并回复',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmagy64/upload/1615722783753.jpg'),(2,'picture2','http://localhost:8080/ssmagy64/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmagy64/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615722953120 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-03-14 19:45:16',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-14 19:45:16',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-14 19:45:16',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-14 19:45:16',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-14 19:45:16',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-14 19:45:16',6,6,'用户名6','评论内容6','回复内容6'),(1615722953119,'2021-03-14 19:55:52',1615722728568,1615722878678,'001','在此评论，点击数较多的商品在推荐商品处会优先','');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='购物资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-03-14 19:45:16','XXXX','可自行编辑','http://localhost:8080/ssmagy64/upload/1615722751109.jpg','<p>编辑器可传图文，新增操作类似<img src=\"http://localhost:8080/ssmagy64/upload/1615722772801.jpg\"></p>'),(92,'2021-03-14 19:45:16','标题2','简介2','http://localhost:8080/ssmagy64/upload/news_picture2.jpg','内容2'),(93,'2021-03-14 19:45:16','标题3','简介3','http://localhost:8080/ssmagy64/upload/news_picture3.jpg','内容3'),(94,'2021-03-14 19:45:16','标题4','简介4','http://localhost:8080/ssmagy64/upload/news_picture4.jpg','内容4'),(95,'2021-03-14 19:45:16','标题5','简介5','http://localhost:8080/ssmagy64/upload/news_picture5.jpg','内容5'),(96,'2021-03-14 19:45:16','标题6','简介6','http://localhost:8080/ssmagy64/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615723031664 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1615723031663,'2021-03-14 19:57:11','202131419571531267049','shangpinxinxi',1615722878678,1615722728568,'XXX手机','http://localhost:8080/ssmagy64/upload/1615722711956.jpg',1,2999,2999,2999,2999,1,'已支付','创意金山文化产业园');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615722685586 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`fenlei`) values (21,'2021-03-14 19:45:16','衣服'),(1615722673480,'2021-03-14 19:51:12','鞋子'),(1615722681163,'2021-03-14 19:51:20','牛奶'),(1615722685585,'2021-03-14 19:51:25','手机');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615722728569 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinleixing`,`shangpintupian`,`shangpinjieshao`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (31,'2021-03-14 19:45:16','商品名称1','商品类型1','http://localhost:8080/ssmagy64/upload/shangpinxinxi_shangpintupian1.jpg','商品介绍1',3,1,'2021-03-14 19:46:31',2,99.9),(32,'2021-03-14 19:45:16','商品名称2','商品类型2','http://localhost:8080/ssmagy64/upload/shangpinxinxi_shangpintupian2.jpg','商品介绍2',2,2,'2021-03-14 19:48:53',3,99.9),(33,'2021-03-14 19:45:16','商品名称3','商品类型3','http://localhost:8080/ssmagy64/upload/shangpinxinxi_shangpintupian3.jpg','商品介绍3',3,3,'2021-03-14 19:49:53',7,99.9),(34,'2021-03-14 19:45:16','商品名称4','商品类型4','http://localhost:8080/ssmagy64/upload/shangpinxinxi_shangpintupian4.jpg','商品介绍4',4,4,'2021-03-14 19:49:19',6,99.9),(35,'2021-03-14 19:45:16','商品名称5','商品类型5','http://localhost:8080/ssmagy64/upload/shangpinxinxi_shangpintupian5.jpg','商品介绍5',5,5,'2021-03-14 19:45:16',5,99.9),(36,'2021-03-14 19:45:16','商品名称6','商品类型6','http://localhost:8080/ssmagy64/upload/shangpinxinxi_shangpintupian6.jpg','商品介绍6',6,6,'2021-03-14 19:47:04',7,99.9),(1615722728568,'2021-03-14 19:52:07','XXX手机','手机','http://localhost:8080/ssmagy64/upload/1615722711956.jpg','自行编辑',1,0,'2021-03-14 19:56:40',6,2999);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615722922884 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615722922883,'2021-03-14 19:55:22',1615722878678,1615722728568,'shangpinxinxi','XXX手机','http://localhost:8080/ssmagy64/upload/1615722711956.jpg');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','ls5i53uwz5cytcv9rxvemq5qd3l34l2n','2021-03-14 19:46:28','2021-03-14 20:46:29'),(2,1,'abo','users','管理员','704m47fu1hp0shecseqweq1p5qryv0zh','2021-03-14 19:50:41','2021-03-14 20:50:41'),(3,1615722878678,'001','yonghu','用户','10v44mvcqjp0662cb8k9hz02u0c4sq4m','2021-03-14 19:54:48','2021-03-14 20:54:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-14 19:45:16');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghu` varchar(200) NOT NULL COMMENT '用户',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615722878679 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghu`,`xingbie`,`nianling`,`shouji`,`youxiang`,`zhaopian`,`money`) values (11,'2021-03-14 19:45:16','用户1','123456','用户1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssmagy64/upload/yonghu_zhaopian1.jpg',100),(12,'2021-03-14 19:45:16','用户2','123456','用户2','女',22,'13823888882','773890002@qq.com','http://localhost:8080/ssmagy64/upload/yonghu_zhaopian2.jpg',100),(13,'2021-03-14 19:45:16','用户3','123456','用户3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssmagy64/upload/yonghu_zhaopian3.jpg',100),(14,'2021-03-14 19:45:16','用户4','123456','用户4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssmagy64/upload/yonghu_zhaopian4.jpg',100),(15,'2021-03-14 19:45:16','用户5','123456','用户5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssmagy64/upload/yonghu_zhaopian5.jpg',100),(16,'2021-03-14 19:45:16','用户6','123456','用户6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssmagy64/upload/yonghu_zhaopian6.jpg',100),(1615722878678,'2021-03-14 19:54:38','001','001','小李','女',23,'13555555555','123@qq.com','http://localhost:8080/ssmagy64/upload/1615722903154.jpg',2001);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
