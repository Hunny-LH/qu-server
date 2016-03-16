CREATE DATABASE  IF NOT EXISTS `duanqu_v2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `duanqu_v2`;
-- MySQL dump 10.13  Distrib 5.6.11, for Win32 (x86)
--
-- Host: localhost    Database: duanqu_v2
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `tab_active_content`
--

DROP TABLE IF EXISTS `tab_active_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_active_content` (
  `active_id` int(8) NOT NULL,
  `cid` int(8) DEFAULT NULL,
  `order_num` int(8) DEFAULT NULL,
  PRIMARY KEY (`active_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_active_content`
--

LOCK TABLES `tab_active_content` WRITE;
/*!40000 ALTER TABLE `tab_active_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_active_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_active_info`
--

DROP TABLE IF EXISTS `tab_active_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_active_info` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `active_title` varchar(64) DEFAULT NULL,
  `begin_time` mediumtext,
  `end_time` mediumtext,
  `create_time` mediumtext,
  `flag` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_active_info`
--

LOCK TABLES `tab_active_info` WRITE;
/*!40000 ALTER TABLE `tab_active_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_active_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_banner_info`
--

DROP TABLE IF EXISTS `tab_banner_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_banner_info` (
  `bid` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` varchar(64) DEFAULT NULL,
  `img_url` varchar(64) DEFAULT NULL,
  `create_time` mediumtext,
  `banner_type` tinyint(5) DEFAULT NULL,
  `is_show` tinyint(3) DEFAULT NULL,
  `comment` varchar(128) DEFAULT NULL,
  `inner_url` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_banner_info`
--

LOCK TABLES `tab_banner_info` WRITE;
/*!40000 ALTER TABLE `tab_banner_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_banner_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_content_comment`
--

DROP TABLE IF EXISTS `tab_content_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_content_comment` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) DEFAULT NULL,
  `cid` int(8) DEFAULT NULL,
  `comment_text` varchar(128) DEFAULT NULL,
  `reply_uid` int(8) DEFAULT NULL,
  `create_time` mediumtext,
  `comment_url` varchar(128) DEFAULT NULL,
  `prient_id` int(8) DEFAULT NULL,
  `root_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_content_comment`
--

LOCK TABLES `tab_content_comment` WRITE;
/*!40000 ALTER TABLE `tab_content_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_content_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_content_info`
--

DROP TABLE IF EXISTS `tab_content_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_content_info` (
  `cid` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `name` varchar(32) NOT NULL,
  `c_status` tinyint(3) DEFAULT NULL,
  `order_num` int(8) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `video_url_hd` varchar(128) DEFAULT NULL,
  `video_url` varchar(128) DEFAULT NULL,
  `play_time` bigint(8) DEFAULT NULL,
  `thumbnails_url` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `create_time` bigint(8) DEFAULT NULL,
  `upload_time` bigint(8) DEFAULT NULL,
  `comment_num` bigint(4) DEFAULT NULL,
  `like_num` bigint(4) DEFAULT NULL,
  `forward_num` bigint(4) DEFAULT NULL,
  `show_times` bigint(4) DEFAULT NULL,
  `longitude` decimal(15,2) DEFAULT NULL,
  `latitude` decimal(15,2) DEFAULT NULL,
  `location` varchar(128) DEFAULT NULL,
  `height` decimal(15,2) DEFAULT NULL,
  `width` decimal(15,2) DEFAULT NULL,
  `is_private` tinyint(3) DEFAULT NULL,
  `keys` varchar(48) DEFAULT NULL,
  `is_show` tinyint(3) DEFAULT NULL,
  `md5_string` varchar(48) DEFAULT NULL,
  `description_true` varchar(128) DEFAULT NULL,
  `fake_comment_num` bigint(4) DEFAULT NULL,
  `fake_like_num` bigint(4) DEFAULT NULL,
  `fake_forward_num` bigint(4) DEFAULT NULL,
  `fake_show_times` bigint(4) DEFAULT NULL,
  `top` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_content_info`
--

LOCK TABLES `tab_content_info` WRITE;
/*!40000 ALTER TABLE `tab_content_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_content_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_content_info_temp`
--

DROP TABLE IF EXISTS `tab_content_info_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_content_info_temp` (
  `cid` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `c_status` tinyint(3) DEFAULT NULL,
  `is_private` tinyint(3) DEFAULT NULL,
  `flag` tinyint(3) DEFAULT NULL,
  `upload_time` bigint(8) DEFAULT NULL,
  `serventhTime` int(8) DEFAULT '0',
  `create_time` bigint(8) DEFAULT NULL,
  `firstTime` mediumtext,
  `thirdTime` mediumtext,
  `name` varchar(32) NOT NULL,
  `order_num` int(8) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `video_url_hd` varchar(128) DEFAULT NULL,
  `video_url` varchar(128) DEFAULT NULL,
  `play_time` bigint(8) DEFAULT NULL,
  `thumbnails_url` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `comment_num` bigint(4) DEFAULT NULL,
  `like_num` bigint(4) DEFAULT NULL,
  `forward_num` bigint(4) DEFAULT NULL,
  `show_times` bigint(4) DEFAULT NULL,
  `longitude` decimal(15,2) DEFAULT NULL,
  `latitude` decimal(15,2) DEFAULT NULL,
  `location` varchar(128) DEFAULT NULL,
  `height` decimal(15,2) DEFAULT NULL,
  `width` decimal(15,2) DEFAULT NULL,
  `keys` varchar(48) DEFAULT NULL,
  `is_show` tinyint(3) DEFAULT NULL,
  `md5_string` varchar(48) DEFAULT NULL,
  `description_true` varchar(128) DEFAULT NULL,
  `fake_comment_num` bigint(4) DEFAULT NULL,
  `fake_like_num` bigint(4) DEFAULT NULL,
  `fake_forward_num` bigint(4) DEFAULT NULL,
  `fake_show_times` bigint(4) DEFAULT NULL,
  `top` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_content_info_temp`
--

LOCK TABLES `tab_content_info_temp` WRITE;
/*!40000 ALTER TABLE `tab_content_info_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_content_info_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_content_tag`
--

DROP TABLE IF EXISTS `tab_content_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_content_tag` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `tid` int(8) NOT NULL,
  `cid` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_content_tag`
--

LOCK TABLES `tab_content_tag` WRITE;
/*!40000 ALTER TABLE `tab_content_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_content_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_editor_contentrecommend`
--

DROP TABLE IF EXISTS `tab_editor_contentrecommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_editor_contentrecommend` (
  `cid` int(8) NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) DEFAULT NULL,
  `is_show` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `recommend` int(8) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_editor_contentrecommend`
--

LOCK TABLES `tab_editor_contentrecommend` WRITE;
/*!40000 ALTER TABLE `tab_editor_contentrecommend` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_editor_contentrecommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_editor_othertag`
--

DROP TABLE IF EXISTS `tab_editor_othertag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_editor_othertag` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `tag_type` tinyint(4) DEFAULT NULL,
  `tag_text` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_editor_othertag`
--

LOCK TABLES `tab_editor_othertag` WRITE;
/*!40000 ALTER TABLE `tab_editor_othertag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_editor_othertag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_editor_recommendtag`
--

DROP TABLE IF EXISTS `tab_editor_recommendtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_editor_recommendtag` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `tag_text` varchar(64) DEFAULT NULL,
  `tag_type` tinyint(3) DEFAULT NULL,
  `tag_image` varchar(64) DEFAULT NULL,
  `tag_image_more` varchar(64) DEFAULT NULL,
  `is_show` tinyint(2) DEFAULT NULL,
  `rder_num` int(8) DEFAULT NULL,
  `create_time` mediumtext,
  `width` decimal(15,2) DEFAULT NULL,
  `height` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_editor_recommendtag`
--

LOCK TABLES `tab_editor_recommendtag` WRITE;
/*!40000 ALTER TABLE `tab_editor_recommendtag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_editor_recommendtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_editor_talentlistdetail`
--

DROP TABLE IF EXISTS `tab_editor_talentlistdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_editor_talentlistdetail` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `info_id` int(8) NOT NULL,
  `create_time` mediumtext,
  `comment` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_editor_talentlistdetail`
--

LOCK TABLES `tab_editor_talentlistdetail` WRITE;
/*!40000 ALTER TABLE `tab_editor_talentlistdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_editor_talentlistdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_editor_talentlistinfo`
--

DROP TABLE IF EXISTS `tab_editor_talentlistinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_editor_talentlistinfo` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `img_url` varchar(64) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `create_time` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_editor_talentlistinfo`
--

LOCK TABLES `tab_editor_talentlistinfo` WRITE;
/*!40000 ALTER TABLE `tab_editor_talentlistinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_editor_talentlistinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_editor_userrecommend`
--

DROP TABLE IF EXISTS `tab_editor_userrecommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_editor_userrecommend` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `create_time` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_editor_userrecommend`
--

LOCK TABLES `tab_editor_userrecommend` WRITE;
/*!40000 ALTER TABLE `tab_editor_userrecommend` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_editor_userrecommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_log_invite`
--

DROP TABLE IF EXISTS `tab_log_invite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_log_invite` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `nick_name` varchar(64) DEFAULT NULL,
  `type` tinyint(5) DEFAULT NULL,
  `create_time` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_log_invite`
--

LOCK TABLES `tab_log_invite` WRITE;
/*!40000 ALTER TABLE `tab_log_invite` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_log_invite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_log_push`
--

DROP TABLE IF EXISTS `tab_log_push`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_log_push` (
  `uid` int(8) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `create_time` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_log_push`
--

LOCK TABLES `tab_log_push` WRITE;
/*!40000 ALTER TABLE `tab_log_push` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_log_push` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_log_sharecontent`
--

DROP TABLE IF EXISTS `tab_log_sharecontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_log_sharecontent` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `cid` int(8) NOT NULL,
  `flag` tinyint(2) NOT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `create_time` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_log_sharecontent`
--

LOCK TABLES `tab_log_sharecontent` WRITE;
/*!40000 ALTER TABLE `tab_log_sharecontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_log_sharecontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_log_showcontent`
--

DROP TABLE IF EXISTS `tab_log_showcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_log_showcontent` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `cid` int(8) NOT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `create_time` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_log_showcontent`
--

LOCK TABLES `tab_log_showcontent` WRITE;
/*!40000 ALTER TABLE `tab_log_showcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_log_showcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_message_push`
--

DROP TABLE IF EXISTS `tab_message_push`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_message_push` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL,
  `inner_param` varchar(128) DEFAULT NULL,
  `message_text` varchar(128) DEFAULT NULL,
  `is_show` tinyint(2) DEFAULT NULL,
  `create_time` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_message_push`
--

LOCK TABLES `tab_message_push` WRITE;
/*!40000 ALTER TABLE `tab_message_push` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_message_push` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_set_contentlist`
--

DROP TABLE IF EXISTS `tab_set_contentlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_set_contentlist` (
  `cid` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `order_num` int(8) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_set_contentlist`
--

LOCK TABLES `tab_set_contentlist` WRITE;
/*!40000 ALTER TABLE `tab_set_contentlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_set_contentlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_set_userlist`
--

DROP TABLE IF EXISTS `tab_set_userlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_set_userlist` (
  `uid` int(8) NOT NULL,
  `order_num` int(6) DEFAULT NULL,
  `create_time` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_set_userlist`
--

LOCK TABLES `tab_set_userlist` WRITE;
/*!40000 ALTER TABLE `tab_set_userlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_set_userlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_subject_content`
--

DROP TABLE IF EXISTS `tab_subject_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_subject_content` (
  `sid` int(8) NOT NULL AUTO_INCREMENT,
  `cid` int(8) NOT NULL,
  `order_num` int(8) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_subject_content`
--

LOCK TABLES `tab_subject_content` WRITE;
/*!40000 ALTER TABLE `tab_subject_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_subject_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_subject_info`
--

DROP TABLE IF EXISTS `tab_subject_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_subject_info` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `video_url` varchar(64) DEFAULT NULL,
  `thumbnails_url` varchar(64) DEFAULT NULL,
  `img_url` varchar(64) DEFAULT NULL,
  `explain_url` varchar(64) DEFAULT NULL,
  `inner_param` varchar(64) DEFAULT NULL,
  `description` varchar(64) DEFAULT NULL,
  `create_time` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_subject_info`
--

LOCK TABLES `tab_subject_info` WRITE;
/*!40000 ALTER TABLE `tab_subject_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_subject_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_sys_filterword`
--

DROP TABLE IF EXISTS `tab_sys_filterword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_sys_filterword` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `filter_text` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_sys_filterword`
--

LOCK TABLES `tab_sys_filterword` WRITE;
/*!40000 ALTER TABLE `tab_sys_filterword` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_sys_filterword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_sys_resource`
--

DROP TABLE IF EXISTS `tab_sys_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_sys_resource` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `description` varchar(64) DEFAULT NULL,
  `resource_url` varchar(64) DEFAULT NULL,
  `resource_icon_url` varchar(64) DEFAULT NULL,
  `resource_music_url` varchar(64) DEFAULT NULL,
  `size` int(8) DEFAULT NULL,
  `resource_md5` varchar(64) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `create_time` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_sys_resource`
--

LOCK TABLES `tab_sys_resource` WRITE;
/*!40000 ALTER TABLE `tab_sys_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_sys_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_tab_user_forwardcontent`
--

DROP TABLE IF EXISTS `tab_tab_user_forwardcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_tab_user_forwardcontent` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `cid` int(8) NOT NULL,
  `create_time` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_tab_user_forwardcontent`
--

LOCK TABLES `tab_tab_user_forwardcontent` WRITE;
/*!40000 ALTER TABLE `tab_tab_user_forwardcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_tab_user_forwardcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_tag_hot`
--

DROP TABLE IF EXISTS `tab_tag_hot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_tag_hot` (
  `tid` int(8) NOT NULL AUTO_INCREMENT,
  `tag_type` tinyint(4) DEFAULT NULL,
  `create_time` mediumtext,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_tag_hot`
--

LOCK TABLES `tab_tag_hot` WRITE;
/*!40000 ALTER TABLE `tab_tag_hot` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_tag_hot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_tag_info`
--

DROP TABLE IF EXISTS `tab_tag_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_tag_info` (
  `tid` int(8) NOT NULL AUTO_INCREMENT,
  `tagType` tinyint(4) DEFAULT NULL,
  `tag_text` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_tag_info`
--

LOCK TABLES `tab_tag_info` WRITE;
/*!40000 ALTER TABLE `tab_tag_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_tag_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_3thfriend`
--

DROP TABLE IF EXISTS `tab_user_3thfriend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_user_3thfriend` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `open_type` varchar(32) NOT NULL,
  `open_uid` varchar(32) NOT NULL,
  `open_nickname` varchar(32) DEFAULT NULL,
  `open_username` varchar(32) DEFAULT NULL,
  `matched_uid` varchar(32) DEFAULT NULL,
  `avatar_url` varchar(32) DEFAULT NULL,
  `is_matched` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_3thfriend`
--

LOCK TABLES `tab_user_3thfriend` WRITE;
/*!40000 ALTER TABLE `tab_user_3thfriend` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_user_3thfriend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_bind`
--

DROP TABLE IF EXISTS `tab_user_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_user_bind` (
  `uid` int(8) NOT NULL,
  `open_nickname` varchar(64) DEFAULT NULL,
  `open_type` tinyint(6) DEFAULT NULL,
  `open_uid` varchar(64) DEFAULT NULL,
  `access_token` varchar(64) DEFAULT NULL,
  `refresh_token` varchar(64) DEFAULT NULL,
  `expires_in` mediumtext,
  `create_time` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_bind`
--

LOCK TABLES `tab_user_bind` WRITE;
/*!40000 ALTER TABLE `tab_user_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_user_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_feedback`
--

DROP TABLE IF EXISTS `tab_user_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_user_feedback` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `feedback_text` varchar(128) DEFAULT NULL,
  `screenshot_url` varchar(128) DEFAULT NULL,
  `create_time` mediumtext,
  `is_check` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_feedback`
--

LOCK TABLES `tab_user_feedback` WRITE;
/*!40000 ALTER TABLE `tab_user_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_user_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_forwardcontent`
--

DROP TABLE IF EXISTS `tab_user_forwardcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_user_forwardcontent` (
  `uid` int(8) NOT NULL,
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `cid` int(8) NOT NULL,
  `create_time` bigint(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_forwardcontent`
--

LOCK TABLES `tab_user_forwardcontent` WRITE;
/*!40000 ALTER TABLE `tab_user_forwardcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_user_forwardcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_friend`
--

DROP TABLE IF EXISTS `tab_user_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_user_friend` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `fuid` int(8) NOT NULL,
  `create_time` mediumtext,
  `is_friend` tinyint(2) DEFAULT NULL,
  `is_true` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_friend`
--

LOCK TABLES `tab_user_friend` WRITE;
/*!40000 ALTER TABLE `tab_user_friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_user_friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_friendgroup`
--

DROP TABLE IF EXISTS `tab_user_friendgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_user_friendgroup` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `group_name` tinyint(3) DEFAULT NULL,
  `create_time` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_friendgroup`
--

LOCK TABLES `tab_user_friendgroup` WRITE;
/*!40000 ALTER TABLE `tab_user_friendgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_user_friendgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_grouprelation`
--

DROP TABLE IF EXISTS `tab_user_grouprelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_user_grouprelation` (
  `gid` int(8) NOT NULL AUTO_INCREMENT,
  `rel_id` int(8) NOT NULL,
  `fuid` int(8) DEFAULT NULL,
  `is_true` tinyint(3) DEFAULT NULL,
  `is_friend` tinyint(3) DEFAULT NULL,
  `add_time` mediumtext,
  `create_time` mediumtext,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_grouprelation`
--

LOCK TABLES `tab_user_grouprelation` WRITE;
/*!40000 ALTER TABLE `tab_user_grouprelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_user_grouprelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_info`
--

DROP TABLE IF EXISTS `tab_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_user_info` (
  `uid` int(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) DEFAULT NULL,
  `login_password` varchar(64) DEFAULT NULL,
  `nick_name` varchar(64) DEFAULT NULL,
  `mobile` varchar(64) DEFAULT NULL,
  `avatar_url` varchar(64) DEFAULT NULL,
  `create_time` mediumtext,
  `longitude` decimal(15,2) DEFAULT NULL,
  `atitude` decimal(15,2) DEFAULT NULL,
  `last_login_time` mediumtext,
  `signature` varchar(64) DEFAULT NULL,
  `background_url` varchar(64) DEFAULT NULL,
  `token` varchar(64) DEFAULT NULL,
  `role_id` tinyint(8) DEFAULT NULL,
  `device_token` varchar(64) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `is_talent` tinyint(2) DEFAULT NULL,
  `talent_desc` varchar(128) DEFAULT NULL,
  `video_url` varchar(64) DEFAULT NULL,
  `video_face_url` varchar(64) DEFAULT NULL,
  `fans_num` int(8) DEFAULT '0',
  `fake_fans_num` int(8) DEFAULT '0',
  `ban_endtime` int(8) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_info`
--

LOCK TABLES `tab_user_info` WRITE;
/*!40000 ALTER TABLE `tab_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_likecontent`
--

DROP TABLE IF EXISTS `tab_user_likecontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_user_likecontent` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `cid` int(8) NOT NULL,
  `create_time` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_likecontent`
--

LOCK TABLES `tab_user_likecontent` WRITE;
/*!40000 ALTER TABLE `tab_user_likecontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_user_likecontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_message`
--

DROP TABLE IF EXISTS `tab_user_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_user_message` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `rec_uid` int(8) NOT NULL,
  `message_text` varchar(128) DEFAULT NULL,
  `create_time` mediumtext,
  `is_delete` tinyint(2) DEFAULT NULL,
  `is_new` tinyint(2) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_message`
--

LOCK TABLES `tab_user_message` WRITE;
/*!40000 ALTER TABLE `tab_user_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_user_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_mobiles`
--

DROP TABLE IF EXISTS `tab_user_mobiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_user_mobiles` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `uid` int(8) NOT NULL,
  `mobile` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `matched_uid` varchar(32) DEFAULT NULL,
  `is_matched` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_mobiles`
--

LOCK TABLES `tab_user_mobiles` WRITE;
/*!40000 ALTER TABLE `tab_user_mobiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_user_mobiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_report`
--

DROP TABLE IF EXISTS `tab_user_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_user_report` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `cid` int(8) NOT NULL,
  `uid` int(8) NOT NULL,
  `create_time` mediumtext,
  `memo` varchar(128) DEFAULT NULL,
  `is_check` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_report`
--

LOCK TABLES `tab_user_report` WRITE;
/*!40000 ALTER TABLE `tab_user_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_user_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_user_token`
--

DROP TABLE IF EXISTS `tab_user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_user_token` (
  `uid` int(8) NOT NULL,
  `token` varchar(64) DEFAULT NULL,
  `expires_in` mediumtext,
  `create_time` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_user_token`
--

LOCK TABLES `tab_user_token` WRITE;
/*!40000 ALTER TABLE `tab_user_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testtable`
--

DROP TABLE IF EXISTS `testtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `score` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testtable`
--

LOCK TABLES `testtable` WRITE;
/*!40000 ALTER TABLE `testtable` DISABLE KEYS */;
/*!40000 ALTER TABLE `testtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testtable2`
--

DROP TABLE IF EXISTS `testtable2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testtable2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `score` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testtable2`
--

LOCK TABLES `testtable2` WRITE;
/*!40000 ALTER TABLE `testtable2` DISABLE KEYS */;
/*!40000 ALTER TABLE `testtable2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'duanqu_v2'
--

--
-- Dumping routines for database 'duanqu_v2'
--
/*!50003 DROP PROCEDURE IF EXISTS `Proc_hot_content` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_hot_content`()
BEGIN

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Proc_match_UserFriendData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Proc_match_UserFriendData`(IN p_exectype INT, IN p_functype INT, IN p_uid INT)
BEGIN
	DECLARE variable1 CHAR(10);   
	IF p_functype = 0 THEN   
		SET variable1 = 'birds';   
	ELSEIF p_functype = 1 THEN 
		SET variable1 = 'beasts';
	ELSE
		SET variable1 = 'beasts';
	end IF;  
update tab_user_3thfriend set is_matched=1 where uid=p_uid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-16 14:52:07
