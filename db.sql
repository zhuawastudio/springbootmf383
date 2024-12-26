-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootmf383
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbootmf383`
--

/*!40000 DROP DATABASE IF EXISTS `springbootmf383`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootmf383` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootmf383`;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='在线提问';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2022-04-04 14:20:10',1,1,'提问1','回复1',1),(52,'2022-04-04 14:20:10',2,2,'提问2','回复2',2),(53,'2022-04-04 14:20:10',3,3,'提问3','回复3',3),(54,'2022-04-04 14:20:10',4,4,'提问4','回复4',4),(55,'2022-04-04 14:20:10',5,5,'提问5','回复5',5),(56,'2022-04-04 14:20:10',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussgongjiaoluxian`
--

DROP TABLE IF EXISTS `discussgongjiaoluxian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussgongjiaoluxian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='公交路线评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussgongjiaoluxian`
--

LOCK TABLES `discussgongjiaoluxian` WRITE;
/*!40000 ALTER TABLE `discussgongjiaoluxian` DISABLE KEYS */;
INSERT INTO `discussgongjiaoluxian` VALUES (81,'2022-04-04 14:20:10',1,1,'用户名1','评论内容1','回复内容1'),(82,'2022-04-04 14:20:10',2,2,'用户名2','评论内容2','回复内容2'),(83,'2022-04-04 14:20:10',3,3,'用户名3','评论内容3','回复内容3'),(84,'2022-04-04 14:20:10',4,4,'用户名4','评论内容4','回复内容4'),(85,'2022-04-04 14:20:10',5,5,'用户名5','评论内容5','回复内容5'),(86,'2022-04-04 14:20:10',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussgongjiaoluxian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusswangzhangonggao`
--

DROP TABLE IF EXISTS `discusswangzhangonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusswangzhangonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='网站公告评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusswangzhangonggao`
--

LOCK TABLES `discusswangzhangonggao` WRITE;
/*!40000 ALTER TABLE `discusswangzhangonggao` DISABLE KEYS */;
INSERT INTO `discusswangzhangonggao` VALUES (91,'2022-04-04 14:20:10',1,1,'用户名1','评论内容1','回复内容1'),(92,'2022-04-04 14:20:10',2,2,'用户名2','评论内容2','回复内容2'),(93,'2022-04-04 14:20:10',3,3,'用户名3','评论内容3','回复内容3'),(94,'2022-04-04 14:20:10',4,4,'用户名4','评论内容4','回复内容4'),(95,'2022-04-04 14:20:10',5,5,'用户名5','评论内容5','回复内容5'),(96,'2022-04-04 14:20:10',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusswangzhangonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongjiaoluxian`
--

DROP TABLE IF EXISTS `gongjiaoluxian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongjiaoluxian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `luxianbianhao` varchar(200) DEFAULT NULL COMMENT '路线编号',
  `luxianmingcheng` varchar(200) DEFAULT NULL COMMENT '路线名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `qidianzhanming` varchar(200) DEFAULT NULL COMMENT '起点站名',
  `tujingzhandian` longtext COMMENT '途径站点',
  `zhongdianzhanming` varchar(200) DEFAULT NULL COMMENT '终点站名',
  `luxianxiangqing` longtext COMMENT '路线详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `luxianbianhao` (`luxianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='公交路线';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongjiaoluxian`
--

LOCK TABLES `gongjiaoluxian` WRITE;
/*!40000 ALTER TABLE `gongjiaoluxian` DISABLE KEYS */;
INSERT INTO `gongjiaoluxian` VALUES (21,'2022-04-04 14:20:10','1111111111','路线名称1','upload/gongjiaoluxian_fengmian1.jpg',1,'起点站名1','途径站点1','终点站名1','路线详情1',1,1,'2022-04-04 22:20:10',1),(22,'2022-04-04 14:20:10','2222222222','路线名称2','upload/gongjiaoluxian_fengmian2.jpg',2,'起点站名2','途径站点2','终点站名2','路线详情2',2,2,'2022-04-04 22:20:10',2),(23,'2022-04-04 14:20:10','3333333333','路线名称3','upload/gongjiaoluxian_fengmian3.jpg',3,'起点站名3','途径站点3','终点站名3','路线详情3',3,3,'2022-04-04 22:20:10',3),(24,'2022-04-04 14:20:10','4444444444','路线名称4','upload/gongjiaoluxian_fengmian4.jpg',4,'起点站名4','途径站点4','终点站名4','路线详情4',4,4,'2022-04-04 22:20:10',4),(25,'2022-04-04 14:20:10','5555555555','路线名称5','upload/gongjiaoluxian_fengmian5.jpg',5,'起点站名5','途径站点5','终点站名5','路线详情5',5,5,'2022-04-04 22:20:10',5),(26,'2022-04-04 14:20:10','6666666666','路线名称6','upload/gongjiaoluxian_fengmian6.jpg',6,'起点站名6','途径站点6','终点站名6','路线详情6',6,6,'2022-04-04 22:20:10',6);
/*!40000 ALTER TABLE `gongjiaoluxian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` varchar(200) DEFAULT NULL COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` varchar(200) DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='留言建议';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (71,'2022-04-04 14:20:10',1,'用户名1','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(72,'2022-04-04 14:20:10',2,'用户名2','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(73,'2022-04-04 14:20:10',3,'用户名3','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(74,'2022-04-04 14:20:10',4,'用户名4','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(75,'2022-04-04 14:20:10',5,'用户名5','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(76,'2022-04-04 14:20:10',6,'用户名6','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-04 14:20:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wangzhangonggao`
--

DROP TABLE IF EXISTS `wangzhangonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wangzhangonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='网站公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wangzhangonggao`
--

LOCK TABLES `wangzhangonggao` WRITE;
/*!40000 ALTER TABLE `wangzhangonggao` DISABLE KEYS */;
INSERT INTO `wangzhangonggao` VALUES (31,'2022-04-04 14:20:10','标题1','简介1','2022-04-04','upload/wangzhangonggao_fengmian1.jpg','内容1',1,1,'2022-04-04 22:20:10',1),(32,'2022-04-04 14:20:10','标题2','简介2','2022-04-04','upload/wangzhangonggao_fengmian2.jpg','内容2',2,2,'2022-04-04 22:20:10',2),(33,'2022-04-04 14:20:10','标题3','简介3','2022-04-04','upload/wangzhangonggao_fengmian3.jpg','内容3',3,3,'2022-04-04 22:20:10',3),(34,'2022-04-04 14:20:10','标题4','简介4','2022-04-04','upload/wangzhangonggao_fengmian4.jpg','内容4',4,4,'2022-04-04 22:20:10',4),(35,'2022-04-04 14:20:10','标题5','简介5','2022-04-04','upload/wangzhangonggao_fengmian5.jpg','内容5',5,5,'2022-04-04 22:20:10',5),(36,'2022-04-04 14:20:10','标题6','简介6','2022-04-04','upload/wangzhangonggao_fengmian6.jpg','内容6',6,6,'2022-04-04 22:20:10',6);
/*!40000 ALTER TABLE `wangzhangonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-04-04 14:20:10','账号1','123456','姓名1',1,'男','13823888881','upload/yonghu_zhaopian1.jpg'),(12,'2022-04-04 14:20:10','账号2','123456','姓名2',2,'男','13823888882','upload/yonghu_zhaopian2.jpg'),(13,'2022-04-04 14:20:10','账号3','123456','姓名3',3,'男','13823888883','upload/yonghu_zhaopian3.jpg'),(14,'2022-04-04 14:20:10','账号4','123456','姓名4',4,'男','13823888884','upload/yonghu_zhaopian4.jpg'),(15,'2022-04-04 14:20:10','账号5','123456','姓名5',5,'男','13823888885','upload/yonghu_zhaopian5.jpg'),(16,'2022-04-04 14:20:10','账号6','123456','姓名6',6,'男','13823888886','upload/yonghu_zhaopian6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youqinglianjie`
--

DROP TABLE IF EXISTS `youqinglianjie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youqinglianjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lianjiemingcheng` varchar(200) DEFAULT NULL COMMENT '链接名称',
  `lianjie` varchar(200) DEFAULT NULL COMMENT '链接',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='友情链接';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youqinglianjie`
--

LOCK TABLES `youqinglianjie` WRITE;
/*!40000 ALTER TABLE `youqinglianjie` DISABLE KEYS */;
INSERT INTO `youqinglianjie` VALUES (41,'2022-04-04 14:20:10','链接名称1','链接1','upload/youqinglianjie_tupian1.jpg','2022-04-04 22:20:10',1),(42,'2022-04-04 14:20:10','链接名称2','链接2','upload/youqinglianjie_tupian2.jpg','2022-04-04 22:20:10',2),(43,'2022-04-04 14:20:10','链接名称3','链接3','upload/youqinglianjie_tupian3.jpg','2022-04-04 22:20:10',3),(44,'2022-04-04 14:20:10','链接名称4','链接4','upload/youqinglianjie_tupian4.jpg','2022-04-04 22:20:10',4),(45,'2022-04-04 14:20:10','链接名称5','链接5','upload/youqinglianjie_tupian5.jpg','2022-04-04 22:20:10',5),(46,'2022-04-04 14:20:10','链接名称6','链接6','upload/youqinglianjie_tupian6.jpg','2022-04-04 22:20:10',6);
/*!40000 ALTER TABLE `youqinglianjie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-04 22:23:55
