/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootr4n67
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootr4n67` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootr4n67`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1618354788410 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-14 06:54:43',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-14 06:54:43',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-14 06:54:43',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-14 06:54:43',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-14 06:54:43',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-14 06:54:43',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1618354788409,'2021-04-14 06:59:47',11,'浙江省台州市临海市大田街道大田路','1','13800138001','是');

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
) ENGINE=InnoDB AUTO_INCREMENT=1618354809406 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1618354809405,'2021-04-14 07:00:08','shangpinxinxi',11,42,'商品名称2','http://localhost:8080/springbootr4n67/upload/shangpinxinxi_tupian2.jpg',2,99.9,0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootr4n67/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootr4n67/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootr4n67/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `gonggaoxinxi` */

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `neirong` longtext COMMENT '内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggaoxinxi` */

insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`fengmian`,`shipin`,`neirong`,`fabushijian`) values (31,'2021-04-14 06:54:43','标题1','http://localhost:8080/springbootr4n67/upload/gonggaoxinxi_fengmian1.jpg','','内容1','2021-04-14 06:54:43');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`fengmian`,`shipin`,`neirong`,`fabushijian`) values (32,'2021-04-14 06:54:43','标题2','http://localhost:8080/springbootr4n67/upload/gonggaoxinxi_fengmian2.jpg','','内容2','2021-04-14 06:54:43');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`fengmian`,`shipin`,`neirong`,`fabushijian`) values (33,'2021-04-14 06:54:43','标题3','http://localhost:8080/springbootr4n67/upload/gonggaoxinxi_fengmian3.jpg','','内容3','2021-04-14 06:54:43');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`fengmian`,`shipin`,`neirong`,`fabushijian`) values (34,'2021-04-14 06:54:43','标题4','http://localhost:8080/springbootr4n67/upload/gonggaoxinxi_fengmian4.jpg','','内容4','2021-04-14 06:54:43');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`fengmian`,`shipin`,`neirong`,`fabushijian`) values (35,'2021-04-14 06:54:43','标题5','http://localhost:8080/springbootr4n67/upload/gonggaoxinxi_fengmian5.jpg','','内容5','2021-04-14 06:54:43');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`fengmian`,`shipin`,`neirong`,`fabushijian`) values (36,'2021-04-14 06:54:43','标题6','http://localhost:8080/springbootr4n67/upload/gonggaoxinxi_fengmian6.jpg','','内容6','2021-04-14 06:54:43');

/*Table structure for table `jiaolian` */

DROP TABLE IF EXISTS `jiaolian`;

CREATE TABLE `jiaolian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoliangonghao` varchar(200) NOT NULL COMMENT '教练工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaolianxingming` varchar(200) NOT NULL COMMENT '教练姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `gongzuojingyan` longtext COMMENT '工作经验',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoliangonghao` (`jiaoliangonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教练';

/*Data for the table `jiaolian` */

insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`touxiang`,`nianling`,`xingbie`,`shenfenzheng`,`lianxidianhua`,`gongzuojingyan`,`money`) values (21,'2021-04-14 06:54:43','教练1','123456','教练姓名1','http://localhost:8080/springbootr4n67/upload/jiaolian_touxiang1.jpg','年龄1','男','440300199101010001','13823888881','工作经验1',100);
insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`touxiang`,`nianling`,`xingbie`,`shenfenzheng`,`lianxidianhua`,`gongzuojingyan`,`money`) values (22,'2021-04-14 06:54:43','教练2','123456','教练姓名2','http://localhost:8080/springbootr4n67/upload/jiaolian_touxiang2.jpg','年龄2','男','440300199202020002','13823888882','工作经验2',100);
insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`touxiang`,`nianling`,`xingbie`,`shenfenzheng`,`lianxidianhua`,`gongzuojingyan`,`money`) values (23,'2021-04-14 06:54:43','教练3','123456','教练姓名3','http://localhost:8080/springbootr4n67/upload/jiaolian_touxiang3.jpg','年龄3','男','440300199303030003','13823888883','工作经验3',100);
insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`touxiang`,`nianling`,`xingbie`,`shenfenzheng`,`lianxidianhua`,`gongzuojingyan`,`money`) values (24,'2021-04-14 06:54:43','教练4','123456','教练姓名4','http://localhost:8080/springbootr4n67/upload/jiaolian_touxiang4.jpg','年龄4','男','440300199404040004','13823888884','工作经验4',100);
insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`touxiang`,`nianling`,`xingbie`,`shenfenzheng`,`lianxidianhua`,`gongzuojingyan`,`money`) values (25,'2021-04-14 06:54:43','教练5','123456','教练姓名5','http://localhost:8080/springbootr4n67/upload/jiaolian_touxiang5.jpg','年龄5','男','440300199505050005','13823888885','工作经验5',100);
insert  into `jiaolian`(`id`,`addtime`,`jiaoliangonghao`,`mima`,`jiaolianxingming`,`touxiang`,`nianling`,`xingbie`,`shenfenzheng`,`lianxidianhua`,`gongzuojingyan`,`money`) values (26,'2021-04-14 06:54:43','教练6','123456','教练姓名6','http://localhost:8080/springbootr4n67/upload/jiaolian_touxiang6.jpg','年龄6','男','440300199606060006','13823888886','工作经验6',100);

/*Table structure for table `kechenganpai` */

DROP TABLE IF EXISTS `kechenganpai`;

CREATE TABLE `kechenganpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '学员账号',
  `xueyuanxingming` varchar(200) DEFAULT NULL COMMENT '学员姓名',
  `jiaoliangonghao` varchar(200) NOT NULL COMMENT '教练工号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengming` varchar(200) NOT NULL COMMENT '课程名',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shangkeshijian` datetime NOT NULL COMMENT '上课时间',
  `shangkedidian` varchar(200) NOT NULL COMMENT '上课地点',
  `xiangqing` longtext COMMENT '详情',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='课程安排';

/*Data for the table `kechenganpai` */

insert  into `kechenganpai`(`id`,`addtime`,`xueyuanzhanghao`,`xueyuanxingming`,`jiaoliangonghao`,`jiaolianxingming`,`kechengbianhao`,`kechengming`,`fengmian`,`shangkeshijian`,`shangkedidian`,`xiangqing`,`userid`) values (51,'2021-04-14 06:54:43','学员1','学员姓名1','教练1','教练姓名1','课程编号1','课程名1','http://localhost:8080/springbootr4n67/upload/kechenganpai_fengmian1.jpg','2021-04-14 06:54:43','上课地点1','详情1',1);
insert  into `kechenganpai`(`id`,`addtime`,`xueyuanzhanghao`,`xueyuanxingming`,`jiaoliangonghao`,`jiaolianxingming`,`kechengbianhao`,`kechengming`,`fengmian`,`shangkeshijian`,`shangkedidian`,`xiangqing`,`userid`) values (52,'2021-04-14 06:54:43','学员1','学员姓名1','教练2','教练姓名2','课程编号2','课程名2','http://localhost:8080/springbootr4n67/upload/kechenganpai_fengmian2.jpg','2021-04-14 06:54:43','上课地点2','详情2',2);
insert  into `kechenganpai`(`id`,`addtime`,`xueyuanzhanghao`,`xueyuanxingming`,`jiaoliangonghao`,`jiaolianxingming`,`kechengbianhao`,`kechengming`,`fengmian`,`shangkeshijian`,`shangkedidian`,`xiangqing`,`userid`) values (53,'2021-04-14 06:54:43','学员2','学员姓名2','教练1','教练姓名1','课程编号3','课程名3','http://localhost:8080/springbootr4n67/upload/kechenganpai_fengmian3.jpg','2021-04-14 06:54:43','上课地点3','详情3',3);
insert  into `kechenganpai`(`id`,`addtime`,`xueyuanzhanghao`,`xueyuanxingming`,`jiaoliangonghao`,`jiaolianxingming`,`kechengbianhao`,`kechengming`,`fengmian`,`shangkeshijian`,`shangkedidian`,`xiangqing`,`userid`) values (54,'2021-04-14 06:54:43','学员2','学员姓名2','教练2','教练姓名2','课程编号4','课程名4','http://localhost:8080/springbootr4n67/upload/kechenganpai_fengmian4.jpg','2021-04-14 06:54:43','上课地点4','详情4',4);
insert  into `kechenganpai`(`id`,`addtime`,`xueyuanzhanghao`,`xueyuanxingming`,`jiaoliangonghao`,`jiaolianxingming`,`kechengbianhao`,`kechengming`,`fengmian`,`shangkeshijian`,`shangkedidian`,`xiangqing`,`userid`) values (55,'2021-04-14 06:54:43','学员账号5','学员姓名5','教练工号5','教练姓名5','课程编号5','课程名5','http://localhost:8080/springbootr4n67/upload/kechenganpai_fengmian5.jpg','2021-04-14 06:54:43','上课地点5','详情5',5);
insert  into `kechenganpai`(`id`,`addtime`,`xueyuanzhanghao`,`xueyuanxingming`,`jiaoliangonghao`,`jiaolianxingming`,`kechengbianhao`,`kechengming`,`fengmian`,`shangkeshijian`,`shangkedidian`,`xiangqing`,`userid`) values (56,'2021-04-14 06:54:43','学员账号6','学员姓名6','教练工号6','教练姓名6','课程编号6','课程名6','http://localhost:8080/springbootr4n67/upload/kechenganpai_fengmian6.jpg','2021-04-14 06:54:43','上课地点6','详情6',6);

/*Table structure for table `kechengqiandao` */

DROP TABLE IF EXISTS `kechengqiandao`;

CREATE TABLE `kechengqiandao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '学员账号',
  `xueyuanxingming` varchar(200) DEFAULT NULL COMMENT '学员姓名',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengming` varchar(200) DEFAULT NULL COMMENT '课程名',
  `shangkedidian` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiaoliangonghao` varchar(200) DEFAULT NULL COMMENT '教练工号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `qiandaozhuangtai` varchar(200) DEFAULT NULL COMMENT '签到状态',
  `beizhu` longtext COMMENT '备注',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618355068487 DEFAULT CHARSET=utf8 COMMENT='课程签到';

/*Data for the table `kechengqiandao` */

insert  into `kechengqiandao`(`id`,`addtime`,`xueyuanzhanghao`,`xueyuanxingming`,`kechengbianhao`,`kechengming`,`shangkedidian`,`fengmian`,`jiaoliangonghao`,`jiaolianxingming`,`qiandaozhuangtai`,`beizhu`,`longitude`,`latitude`,`fulladdress`) values (61,'2021-04-14 06:54:43','学员账号1','学员姓名1','课程编号1','课程名1','上课地点1','http://localhost:8080/springbootr4n67/upload/kechengqiandao_fengmian1.jpg','教练工号1','教练姓名1','正常','备注1',1,1,'宇宙银河系地球1号');
insert  into `kechengqiandao`(`id`,`addtime`,`xueyuanzhanghao`,`xueyuanxingming`,`kechengbianhao`,`kechengming`,`shangkedidian`,`fengmian`,`jiaoliangonghao`,`jiaolianxingming`,`qiandaozhuangtai`,`beizhu`,`longitude`,`latitude`,`fulladdress`) values (62,'2021-04-14 06:54:43','学员账号2','学员姓名2','课程编号2','课程名2','上课地点2','http://localhost:8080/springbootr4n67/upload/kechengqiandao_fengmian2.jpg','教练工号2','教练姓名2','正常','备注2',2,2,'宇宙银河系地球2号');
insert  into `kechengqiandao`(`id`,`addtime`,`xueyuanzhanghao`,`xueyuanxingming`,`kechengbianhao`,`kechengming`,`shangkedidian`,`fengmian`,`jiaoliangonghao`,`jiaolianxingming`,`qiandaozhuangtai`,`beizhu`,`longitude`,`latitude`,`fulladdress`) values (63,'2021-04-14 06:54:43','学员账号3','学员姓名3','课程编号3','课程名3','上课地点3','http://localhost:8080/springbootr4n67/upload/kechengqiandao_fengmian3.jpg','教练工号3','教练姓名3','正常','备注3',3,3,'宇宙银河系地球3号');
insert  into `kechengqiandao`(`id`,`addtime`,`xueyuanzhanghao`,`xueyuanxingming`,`kechengbianhao`,`kechengming`,`shangkedidian`,`fengmian`,`jiaoliangonghao`,`jiaolianxingming`,`qiandaozhuangtai`,`beizhu`,`longitude`,`latitude`,`fulladdress`) values (64,'2021-04-14 06:54:43','学员账号4','学员姓名4','课程编号4','课程名4','上课地点4','http://localhost:8080/springbootr4n67/upload/kechengqiandao_fengmian4.jpg','教练工号4','教练姓名4','正常','备注4',4,4,'宇宙银河系地球4号');
insert  into `kechengqiandao`(`id`,`addtime`,`xueyuanzhanghao`,`xueyuanxingming`,`kechengbianhao`,`kechengming`,`shangkedidian`,`fengmian`,`jiaoliangonghao`,`jiaolianxingming`,`qiandaozhuangtai`,`beizhu`,`longitude`,`latitude`,`fulladdress`) values (65,'2021-04-14 06:54:43','学员账号5','学员姓名5','课程编号5','课程名5','上课地点5','http://localhost:8080/springbootr4n67/upload/kechengqiandao_fengmian5.jpg','教练工号5','教练姓名5','正常','备注5',5,5,'宇宙银河系地球5号');
insert  into `kechengqiandao`(`id`,`addtime`,`xueyuanzhanghao`,`xueyuanxingming`,`kechengbianhao`,`kechengming`,`shangkedidian`,`fengmian`,`jiaoliangonghao`,`jiaolianxingming`,`qiandaozhuangtai`,`beizhu`,`longitude`,`latitude`,`fulladdress`) values (66,'2021-04-14 06:54:43','学员账号6','学员姓名6','课程编号6','课程名6','上课地点6','http://localhost:8080/springbootr4n67/upload/kechengqiandao_fengmian6.jpg','教练工号6','教练姓名6','正常','备注6',6,6,'宇宙银河系地球6号');
insert  into `kechengqiandao`(`id`,`addtime`,`xueyuanzhanghao`,`xueyuanxingming`,`kechengbianhao`,`kechengming`,`shangkedidian`,`fengmian`,`jiaoliangonghao`,`jiaolianxingming`,`qiandaozhuangtai`,`beizhu`,`longitude`,`latitude`,`fulladdress`) values (1618355068486,'2021-04-14 07:04:27','学员1','学员姓名1','课程编号1','课程名1','上课地点1',NULL,'教练1','教练姓名1','正常',NULL,116.5,39.9163,'北京市朝阳区八里庄街道八里庄东里八里庄东里社区');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) NOT NULL COMMENT '课程编号',
  `kechengming` varchar(200) NOT NULL COMMENT '课程名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengming`) values (81,'2021-04-14 06:54:43','课程编号1','课程名1');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengming`) values (82,'2021-04-14 06:54:43','课程编号2','课程名2');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengming`) values (83,'2021-04-14 06:54:43','课程编号3','课程名3');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengming`) values (84,'2021-04-14 06:54:43','课程编号4','课程名4');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengming`) values (85,'2021-04-14 06:54:43','课程编号5','课程名5');
insert  into `kechengxinxi`(`id`,`addtime`,`kechengbianhao`,`kechengming`) values (86,'2021-04-14 06:54:43','课程编号6','课程名6');

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
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1618354797464 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1618354797463,'2021-04-14 06:59:57','20214146595425409510','shangpinxinxi',11,43,'商品名称3','http://localhost:8080/springbootr4n67/upload/shangpinxinxi_tupian3.jpg',1,99.9,99.9,99.9,99.9,1,'已支付','浙江省台州市临海市大田街道大田路','13800138001','1');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinID` varchar(200) DEFAULT NULL COMMENT '商品ID',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinxiangqing` varchar(200) DEFAULT NULL COMMENT '商品详情',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinID` (`shangpinID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinID`,`shangpinmingcheng`,`leixing`,`tupian`,`shangpinxiangqing`,`price`) values (41,'2021-04-14 06:54:43','商品ID1','商品名称1','装备','http://localhost:8080/springbootr4n67/upload/shangpinxinxi_tupian1.jpg','商品详情1',99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinID`,`shangpinmingcheng`,`leixing`,`tupian`,`shangpinxiangqing`,`price`) values (42,'2021-04-14 06:54:43','商品ID2','商品名称2','装备','http://localhost:8080/springbootr4n67/upload/shangpinxinxi_tupian2.jpg','商品详情2',99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinID`,`shangpinmingcheng`,`leixing`,`tupian`,`shangpinxiangqing`,`price`) values (43,'2021-04-14 06:54:43','商品ID3','商品名称3','装备','http://localhost:8080/springbootr4n67/upload/shangpinxinxi_tupian3.jpg','商品详情3',99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinID`,`shangpinmingcheng`,`leixing`,`tupian`,`shangpinxiangqing`,`price`) values (44,'2021-04-14 06:54:43','商品ID4','商品名称4','装备','http://localhost:8080/springbootr4n67/upload/shangpinxinxi_tupian4.jpg','商品详情4',99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinID`,`shangpinmingcheng`,`leixing`,`tupian`,`shangpinxiangqing`,`price`) values (45,'2021-04-14 06:54:43','商品ID5','商品名称5','装备','http://localhost:8080/springbootr4n67/upload/shangpinxinxi_tupian5.jpg','商品详情5',99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinID`,`shangpinmingcheng`,`leixing`,`tupian`,`shangpinxiangqing`,`price`) values (46,'2021-04-14 06:54:43','商品ID6','商品名称6','装备','http://localhost:8080/springbootr4n67/upload/shangpinxinxi_tupian6.jpg','商品详情6',99.9);

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','plw0a4reogcg1b17lxgaopjmb5a4zakb','2021-04-14 06:55:42','2021-04-14 08:00:17');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'学员1','xueyuan','学员','f4wjnvwetpv5kroxaczubaw7vx94zuhx','2021-04-14 06:59:09','2021-04-14 07:59:09');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,21,'教练1','jiaolian','教练','dtrlx1uog5e45ytup415dee5lnbg33h4','2021-04-14 07:02:49','2021-04-14 08:02:50');

/*Table structure for table `tongjizhongxin` */

DROP TABLE IF EXISTS `tongjizhongxin`;

CREATE TABLE `tongjizhongxin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjileixing` varchar(200) DEFAULT NULL COMMENT '统计类型',
  `tongjishuliang` int(11) DEFAULT NULL COMMENT '统计数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='统计中心';

/*Data for the table `tongjizhongxin` */

insert  into `tongjizhongxin`(`id`,`addtime`,`tongjileixing`,`tongjishuliang`) values (71,'2021-04-14 06:54:43','商品统计',1);
insert  into `tongjizhongxin`(`id`,`addtime`,`tongjileixing`,`tongjishuliang`) values (72,'2021-04-14 06:54:43','用户统计',2);
insert  into `tongjizhongxin`(`id`,`addtime`,`tongjileixing`,`tongjishuliang`) values (73,'2021-04-14 06:54:43','用户统计',3);
insert  into `tongjizhongxin`(`id`,`addtime`,`tongjileixing`,`tongjishuliang`) values (74,'2021-04-14 06:54:43','用户统计',4);
insert  into `tongjizhongxin`(`id`,`addtime`,`tongjileixing`,`tongjishuliang`) values (75,'2021-04-14 06:54:43','用户统计',5);
insert  into `tongjizhongxin`(`id`,`addtime`,`tongjileixing`,`tongjishuliang`) values (76,'2021-04-14 06:54:43','用户统计',6);

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-14 06:54:43');

/*Table structure for table `xueyuan` */

DROP TABLE IF EXISTS `xueyuan`;

CREATE TABLE `xueyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuanzhanghao` varchar(200) NOT NULL COMMENT '学员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueyuanxingming` varchar(200) DEFAULT NULL COMMENT '学员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `chushengnianyue` date DEFAULT NULL COMMENT '出生年月',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueyuanzhanghao` (`xueyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学员';

/*Data for the table `xueyuan` */

insert  into `xueyuan`(`id`,`addtime`,`xueyuanzhanghao`,`mima`,`xueyuanxingming`,`xingbie`,`shoujihao`,`chushengnianyue`,`touxiang`,`jiatingzhuzhi`,`money`) values (11,'2021-04-14 06:54:43','学员1','123456','学员姓名1','男','13823888881','2021-04-14','http://localhost:8080/springbootr4n67/upload/xueyuan_touxiang1.jpg','家庭住址1',0.1);
insert  into `xueyuan`(`id`,`addtime`,`xueyuanzhanghao`,`mima`,`xueyuanxingming`,`xingbie`,`shoujihao`,`chushengnianyue`,`touxiang`,`jiatingzhuzhi`,`money`) values (12,'2021-04-14 06:54:43','学员2','123456','学员姓名2','男','13823888882','2021-04-14','http://localhost:8080/springbootr4n67/upload/xueyuan_touxiang2.jpg','家庭住址2',100);
insert  into `xueyuan`(`id`,`addtime`,`xueyuanzhanghao`,`mima`,`xueyuanxingming`,`xingbie`,`shoujihao`,`chushengnianyue`,`touxiang`,`jiatingzhuzhi`,`money`) values (13,'2021-04-14 06:54:43','学员3','123456','学员姓名3','男','13823888883','2021-04-14','http://localhost:8080/springbootr4n67/upload/xueyuan_touxiang3.jpg','家庭住址3',100);
insert  into `xueyuan`(`id`,`addtime`,`xueyuanzhanghao`,`mima`,`xueyuanxingming`,`xingbie`,`shoujihao`,`chushengnianyue`,`touxiang`,`jiatingzhuzhi`,`money`) values (14,'2021-04-14 06:54:43','学员4','123456','学员姓名4','男','13823888884','2021-04-14','http://localhost:8080/springbootr4n67/upload/xueyuan_touxiang4.jpg','家庭住址4',100);
insert  into `xueyuan`(`id`,`addtime`,`xueyuanzhanghao`,`mima`,`xueyuanxingming`,`xingbie`,`shoujihao`,`chushengnianyue`,`touxiang`,`jiatingzhuzhi`,`money`) values (15,'2021-04-14 06:54:43','学员5','123456','学员姓名5','男','13823888885','2021-04-14','http://localhost:8080/springbootr4n67/upload/xueyuan_touxiang5.jpg','家庭住址5',100);
insert  into `xueyuan`(`id`,`addtime`,`xueyuanzhanghao`,`mima`,`xueyuanxingming`,`xingbie`,`shoujihao`,`chushengnianyue`,`touxiang`,`jiatingzhuzhi`,`money`) values (16,'2021-04-14 06:54:43','学员6','123456','学员姓名6','男','13823888886','2021-04-14','http://localhost:8080/springbootr4n67/upload/xueyuan_touxiang6.jpg','家庭住址6',100);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
