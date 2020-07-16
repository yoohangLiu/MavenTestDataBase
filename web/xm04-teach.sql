/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : xm04_teach

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2019-06-28 20:25:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creator` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('1', '王五', '2019-06-15 14:21:17', '12345', 'fvgfgvkh');
INSERT INTO `apply` VALUES ('2', 'ryw', '2019-06-15 14:38:58', '123123', 'sdkfmv');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title_id` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `add_name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', '三餐二楼的咖喱饭好吃', 'ryw', '2019-06-08 14:00:25');
INSERT INTO `comment` VALUES ('4', '3', '马原题库选择题', 'ryw', '2019-06-09 13:40:14');
INSERT INTO `comment` VALUES ('6', 'null', '1231232', 'ryw', '2019-06-11 18:59:24');
INSERT INTO `comment` VALUES ('7', 'null', '阿sdasdas', 'ryw', '2019-06-11 19:02:00');
INSERT INTO `comment` VALUES ('8', 'null', 'asdassd', 'ryw', '2019-06-11 19:06:25');
INSERT INTO `comment` VALUES ('9', 'null', 'sxsdd', 'ryw', '2019-06-11 19:07:52');
INSERT INTO `comment` VALUES ('10', '3', 'asdasadasdasdsadasdas', 'ryw', '2019-06-11 19:09:04');

-- ----------------------------
-- Table structure for course_file
-- ----------------------------
DROP TABLE IF EXISTS `course_file`;
CREATE TABLE `course_file` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `create_time` varchar(255) NOT NULL,
  `class_time` varchar(255) NOT NULL,
  `credit` int(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_file
-- ----------------------------
INSERT INTO `course_file` VALUES ('2', '张三', '大学语文', '2019-06-10 00:01:27', '1-17周周三3-4节', '3');
INSERT INTO `course_file` VALUES ('4', '辛辛', '研究与开发实践', '2019-06-10 00:03:39', '1-17周周二10-11节', '2');
INSERT INTO `course_file` VALUES ('5', '唐老师', '大学英语', '2019-06-10 08:37:35', '1-7周周三3-4节', '1');
INSERT INTO `course_file` VALUES ('6', '李老师', '大学语文', '2019-06-10 08:39:10', '1-17周周二10-11节', '3');

-- ----------------------------
-- Table structure for document_main
-- ----------------------------
DROP TABLE IF EXISTS `document_main`;
CREATE TABLE `document_main` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `main_code` char(2) DEFAULT '',
  `KIND` varchar(255) DEFAULT '',
  `fieldType_tag` tinyint(1) unsigned DEFAULT '0',
  `REASON` varchar(255) DEFAULT '',
  `VALUE` varchar(255) DEFAULT '',
  `VALUE1` varchar(255) DEFAULT '',
  `topic` varchar(255) DEFAULT '',
  `picture` varchar(255) DEFAULT '',
  `role` varchar(255) DEFAULT NULL,
  `object` mediumtext,
  `range` mediumtext,
  `reader` mediumtext,
  `reference` mediumtext,
  `comment` mediumtext,
  `attachment1` varchar(255) DEFAULT '',
  `attachment2` varchar(255) DEFAULT '',
  `standard` mediumtext,
  `attachment3` varchar(255) DEFAULT '',
  `attachment4` varchar(255) DEFAULT '',
  `mains` mediumtext,
  `attachment5` varchar(255) DEFAULT '',
  `attachment6` varchar(255) DEFAULT '',
  `relation` mediumtext,
  `attachment7` varchar(255) DEFAULT '',
  `attachment8` varchar(255) DEFAULT '',
  `function` mediumtext,
  `attachment9` varchar(255) DEFAULT '',
  `attachment10` varchar(255) DEFAULT '',
  `filesystem` mediumtext,
  `attachment11` varchar(255) DEFAULT '',
  `attachment12` varchar(255) DEFAULT '',
  `dbsystem` mediumtext,
  `attachment13` varchar(255) DEFAULT '',
  `attachment14` varchar(255) DEFAULT '',
  `remark` mediumtext,
  `lately_change_time` datetime DEFAULT '1800-01-01 00:00:00',
  `register_time` datetime DEFAULT '1800-01-01 00:00:00',
  `change_time` datetime DEFAULT '1800-01-01 00:00:00',
  `register` varchar(255) DEFAULT '',
  `changer` varchar(255) DEFAULT '',
  `change_amount` int(11) unsigned DEFAULT '0',
  `doc_id` varchar(255) DEFAULT '',
  `doc_ver` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of document_main
-- ----------------------------
INSERT INTO `document_main` VALUES ('1', '19', '模块', '1', 'user', '用户管理', 'user/用户管理', '', 'user.jpg', 'manager', null, null, null, null, null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('2', '19', '模块', '1', 'student', '学生信息', 'student/学生信息', '', 'user.jpg', 'manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('3', '19', '模块', '1', 'student1', '学生信息', 'student1/学生信息', '', 'user.jpg', 'stu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('4', '19', '模块', '1', 'student2', '学生信息', 'student2/学生信息', '', 'user.jpg', 'teach', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('5', '19', '模块', '1', 'group', '分组管理', 'group/分组管理', '', 'club.jpg', 'manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('6', '19', '模块', '1', 'group1', '分组管理', 'group1/分组管理', '', 'club.jpg', 'stu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('7', '19', '模块', '1', 'group', '分组管理', 'group/分组管理', '', 'club.jpg', 'teach', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('8', '30', '模块', '1', 'notice', '公告管理', 'notice/公告管理', '', 'teach.jpg', 'teach', null, null, null, null, null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('9', '30', '模块', '1', 'notice1', '公告管理', 'notice1/公告管理', '', 'teach.jpg', 'stu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('10', '30', '模块', '1', 'notice2', '公告管理', 'notice2/公告管理', '', 'teach.jpg', 'manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('11', '19', '模块', '1', 'weather', '天气管理', 'weather/天气管理', '', 'travel.jpg', 'teach', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('12', '19', '模块', '1', 'weather', '天气管理', 'weather/天气管理', '', 'travel.jpg', 'stu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('13', '30', '模块', '1', 'sign1', '考勤管理', 'sign1/考勤管理', '', 'sign.jpg', 'manager', null, null, null, null, null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('14', '19', '模块', '1', 'vote', '投票管理', 'vote/投票管理', '', 'vote.jpg', 'teach', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('15', '19', '模块', '1', 'vote', '投票管理', 'vote/投票管理', '', 'vote.jpg', 'stu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('16', '19', '模块', '1', 'vote', '投票管理', 'vote/投票管理', '', 'vote.jpg', 'manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('17', '19', '模块', '1', 'dtest', '考试管理', 'dtest/考试管理', '', 'test.jpg', 'manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('18', '19', '模块', '1', 'dteststu', '考试管理', 'dteststu/考试管理', '', 'test.jpg', 'stu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('19', '19', '模块', '1', 'dtest', '考试管理', 'dtest/考试管理', '', 'test.jpg', 'teach', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('20', '19', '模块', '1', 'dworkstu', '作业管理', 'dworkstu/作业管理', '', 'img1.jpg', 'stu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('21', '19', '模块', '1', 'dwork', '作业管理', 'dwork/作业管理', '', 'img1.jpg', 'manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('22', '19', '模块', '1', 'dwork', '作业管理', 'dwork/作业管理', '', 'img1.jpg', 'teach', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('23', '30', '模块', '1', 'forum', '论坛', 'forum/论坛', '', 'forum.jpg', 'teach', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('24', '30', '模块', '1', 'forum', '论坛', 'forum/论坛', '', 'forum.jpg', 'manager', null, null, null, null, null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '', '', null, '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('25', '30', '模块', '1', 'forum', '论坛', 'forum/论坛', '', 'forum.jpg', 'stu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('26', '19', '模块', '1', 'dfile', '文件管理', 'dfile/文件管理', '', '1.jpg', 'teach', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('27', '19', '模块', '1', 'dfilestu', '文件管理', 'dfilestu/文件管理', '', '1.jpg', 'stu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('28', '19', '模块', '1', 'dfile', '文件管理', 'dfile/文件管理', '', '1.jpg', 'manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('29', '19', '模块', '1', 'course', '课程管理', 'course/课程管理', '', 'course.jpg', 'manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('30', '19', '模块', '1', 'course1', '课程管理', 'course1/课程管理', '', 'course.jpg', 'stu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('31', '19', '模块', '1', 'course2', '课程管理', 'course2/课程管理', '', 'course.jpg', 'teach', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('32', '19', '模块', '1', 'weather', '天气管理', 'weather/天气管理', '', 'travel.jpg', 'manager', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('35', '30', '模块', '1', 'sign', '考勤管理', 'sign/考勤管理', '', 'sign.jpg', 'stu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');
INSERT INTO `document_main` VALUES ('36', '30', '模块', '1', 'sign1', '考勤管理', 'sign1/考勤管理', '', 'sign.jpg', 'teach', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '1800-01-01 00:00:00', '', '', '0', '', '');

-- ----------------------------
-- Table structure for group_file
-- ----------------------------
DROP TABLE IF EXISTS `group_file`;
CREATE TABLE `group_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_file
-- ----------------------------
INSERT INTO `group_file` VALUES ('3', '123123', '期末大作业展示', '张三 李四', '2', 'ryw', '2019-06-08 21:37:40');

-- ----------------------------
-- Table structure for mygroup_file
-- ----------------------------
DROP TABLE IF EXISTS `mygroup_file`;
CREATE TABLE `mygroup_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT '',
  `type` int(10) DEFAULT NULL,
  `limit_time` datetime DEFAULT NULL,
  `end_tag` int(10) DEFAULT '0',
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `executor` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_size` int(10) DEFAULT '0',
  `priority` int(10) DEFAULT NULL,
  `check_tag` int(10) DEFAULT '0',
  `checker` varchar(255) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `excel_tag` int(10) DEFAULT '0',
  `gar_tag` int(10) DEFAULT '0',
  `used_tag` int(10) DEFAULT '1',
  `creator` varchar(255) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mygroup_file
-- ----------------------------
INSERT INTO `mygroup_file` VALUES ('69', null, 'ryw', 'undefined', null, null, 'undefined', 'undefined', null, '2019-06-07 10:47:10', '0', null, null, '', 'stu', null, '0', null, '0', null, null, '0', '0', '1', '', null, null);
INSERT INTO `mygroup_file` VALUES ('70', null, '增删改查用到的jar.rar', 'undefined', null, null, 'undefined', 'undefined', null, '2019-06-07 10:47:59', '0', null, null, '', 'stu', null, '0', null, '0', null, null, '0', '0', '1', '', null, null);
INSERT INTO `mygroup_file` VALUES ('71', null, '新建文本文档.txt', 'undefined', null, null, 'undefined', 'undefined', null, '2019-06-07 14:32:51', '0', null, null, '', 'stu', null, '0', null, '0', null, null, '0', '0', '1', '', null, null);
INSERT INTO `mygroup_file` VALUES ('72', null, 'Koala.jpg', 'undefined', null, null, 'undefined', 'undefined', null, '2019-06-11 18:18:44', '0', null, null, '', 'stu', null, '0', null, '0', null, null, '0', '0', '1', '', null, null);

-- ----------------------------
-- Table structure for mygroup_test
-- ----------------------------
DROP TABLE IF EXISTS `mygroup_test`;
CREATE TABLE `mygroup_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT '',
  `type` int(10) DEFAULT NULL,
  `limit_time` datetime DEFAULT NULL,
  `end_tag` int(10) DEFAULT '0',
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `executor` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_size` int(10) DEFAULT '0',
  `priority` int(10) DEFAULT NULL,
  `check_tag` int(10) DEFAULT '0',
  `checker` varchar(255) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `excel_tag` int(10) DEFAULT '0',
  `gar_tag` int(10) DEFAULT '0',
  `used_tag` int(10) DEFAULT '1',
  `creator` varchar(255) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mygroup_test
-- ----------------------------
INSERT INTO `mygroup_test` VALUES ('74', null, '第一次语文考试', 'undefined', null, null, 'undefined', '一教A101', null, '2019-06-07 14:28:06', '0', null, null, '', '闭卷', null, '0', null, '0', null, null, '0', '0', '1', '', null, null);
INSERT INTO `mygroup_test` VALUES ('75', null, 'sdass', 'undefined', null, null, 'undefined', 'asd', null, '2019-06-10 13:07:46', '0', null, null, '', '开卷', null, '0', null, '0', null, null, '0', '0', '1', '', null, null);

-- ----------------------------
-- Table structure for mygroup_work
-- ----------------------------
DROP TABLE IF EXISTS `mygroup_work`;
CREATE TABLE `mygroup_work` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT '',
  `type` int(10) DEFAULT NULL,
  `limit_time` datetime DEFAULT NULL,
  `end_tag` int(10) DEFAULT '0',
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `executor` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_size` int(10) DEFAULT '0',
  `priority` int(10) DEFAULT NULL,
  `check_tag` int(10) DEFAULT '0',
  `checker` varchar(255) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `excel_tag` int(10) DEFAULT '0',
  `gar_tag` int(10) DEFAULT '0',
  `used_tag` int(10) DEFAULT '1',
  `creator` varchar(255) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mygroup_work
-- ----------------------------
INSERT INTO `mygroup_work` VALUES ('1', null, '新建文本文档.txt', 'undefined', null, null, 'undefined', '3', null, '2019-06-10 13:11:42', '0', null, null, '', 'stu', null, '0', null, '0', null, null, '0', '0', '1', '', null, null);
INSERT INTO `mygroup_work` VALUES ('3', null, 'file_export_20190601205224.xls', 'undefined', null, null, 'undefined', '5', null, '2019-06-11 16:43:33', '0', null, null, '', 'ryw', null, '0', null, '0', null, null, '0', '0', '1', '', null, null);
INSERT INTO `mygroup_work` VALUES ('4', null, 'file_export_20190601205224.xls', 'undefined', null, null, 'undefined', '5', null, '2019-06-11 16:47:33', '0', null, null, '', 'ryw', null, '0', null, '0', null, null, '0', '0', '1', '', null, null);
INSERT INTO `mygroup_work` VALUES ('5', null, 'Koala.jpg', 'undefined', null, null, 'undefined', '1', null, '2019-06-11 17:05:14', '0', null, null, '', '吴五', null, '0', null, '0', null, null, '0', '0', '1', '', null, null);
INSERT INTO `mygroup_work` VALUES ('6', null, 'Hydrangeas.jpg', 'undefined', null, null, 'undefined', ' ', null, '2019-06-27 17:37:23', '0', null, null, '', '吴五', null, '0', null, '0', null, null, '0', '0', '1', '', null, null);
INSERT INTO `mygroup_work` VALUES ('7', null, 'Hydrangeas.jpg', 'undefined', null, null, 'undefined', ' ', null, '2019-06-27 20:03:17', '0', null, null, '', 'ryw', null, '0', null, '0', null, null, '0', '0', '1', '', null, null);

-- ----------------------------
-- Table structure for notice_file
-- ----------------------------
DROP TABLE IF EXISTS `notice_file`;
CREATE TABLE `notice_file` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `class_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice_file
-- ----------------------------
INSERT INTO `notice_file` VALUES ('5', 'test2', '毛概考试', '毛概背完了吗?', '2019-06-09 11:28:26', '201701');
INSERT INTO `notice_file` VALUES ('7', 'ryw', '端午放假1', '端午放假时间有待通知', '2019-06-08 11:30:49', '201701');
INSERT INTO `notice_file` VALUES ('8', 'test1', '期末考试', '期末考试要来了~', '2019-06-09 11:31:13', '201702');
INSERT INTO `notice_file` VALUES ('9', 'zhangsan', 'zxccxCC  ', '考试快快快快', '2019-06-28 17:59:46', '201703');

-- ----------------------------
-- Table structure for problem
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES ('1', '川大食堂', 'ryw', '推荐食堂的好吃的', '2019-06-07 00:07:03', '求助帖');
INSERT INTO `problem` VALUES ('3', '要考试了!!!', 'ryw', '推荐复习方法', '2019-06-08 00:24:23', '交流帖');
INSERT INTO `problem` VALUES ('4', 'adva cc ', 'ryw', 'zxcxc', '2019-06-09 22:50:47', '分享帖');

-- ----------------------------
-- Table structure for public_log
-- ----------------------------
DROP TABLE IF EXISTS `public_log`;
CREATE TABLE `public_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `colTime` datetime DEFAULT NULL,
  `colType` int(10) DEFAULT NULL,
  `colContent` varchar(255) DEFAULT NULL,
  `colOperation` varchar(255) DEFAULT NULL,
  `colUserId` varchar(255) DEFAULT NULL,
  `colModule` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of public_log
-- ----------------------------
INSERT INTO `public_log` VALUES ('1', '2017-05-11 14:34:27', '0', '用户 张三 于 2017-05-11 14:34:27 添加了 [project][todo] 记录', '添加记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('2', '2017-05-11 14:48:57', '0', '用户 张三 于 2017-05-11 14:48:56 添加了 [project][todo] 记录', '添加记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('3', '2017-05-11 14:52:07', '0', '用户 张三 于 2017-05-11 14:52:06 添加了 [project][todo] 记录', '添加记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('4', '2017-05-11 14:52:17', '0', '用户 张三 于 2017-05-11 14:52:17 删除了 [project][todo] 记录', '删除记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('5', '2019-04-27 10:52:45', '0', '用户 张三 于 2019-04-27 10:52:45 修改了 [project][todo] 记录', '修改记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('6', '2019-04-27 17:24:32', '0', '用户 张三 于 2019-04-27 17:24:32 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('7', '2019-04-27 17:25:11', '0', '用户 张三 于 2019-04-27 17:25:11 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('8', '2019-04-27 17:26:35', '0', '用户 张三 于 2019-04-27 17:26:35 添加了 [project][todo] 记录', '添加记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('9', '2019-04-27 17:35:50', '0', '用户 张三 于 2019-04-27 17:35:50 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('10', '2019-04-27 17:36:49', '0', '用户 张三 于 2019-04-27 17:36:49 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('11', '2019-04-27 18:11:57', '0', '用户 张三 于 2019-04-27 18:11:57 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('12', '2019-04-27 18:12:25', '0', '用户 张三 于 2019-04-27 18:12:25 添加了 [project][todo] 记录', '添加记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('13', '2019-04-27 18:22:01', '0', '用户 张三 于 2019-04-27 18:22:01 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('14', '2019-04-27 18:23:56', '0', '用户 张三 于 2019-04-27 18:23:56 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('15', '2019-04-27 18:29:54', '0', '用户 张三 于 2019-04-27 18:29:54 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('16', '2019-04-27 18:49:08', '0', '用户 张三 于 2019-04-27 18:49:08 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('17', '2019-04-27 18:58:59', '0', '用户 张三 于 2019-04-27 18:58:59 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('18', '2019-04-27 18:59:23', '0', '用户 张三 于 2019-04-27 18:59:23 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('19', '2019-04-27 19:01:57', '0', '用户 张三 于 2019-04-27 19:01:57 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('20', '2019-04-27 21:02:44', '0', '用户 张三 于 2019-04-27 21:02:44 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('21', '2019-04-27 22:07:37', '0', '用户 张三 于 2019-04-27 22:07:37 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('22', '2019-04-27 22:08:37', '0', '用户 张三 于 2019-04-27 22:08:37 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('23', '2019-04-27 22:11:38', '0', '用户 张三 于 2019-04-27 22:11:38 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('24', '2019-04-27 22:11:38', '0', '用户 张三 于 2019-04-27 22:11:38 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('25', '2019-04-27 22:38:26', '0', '用户 张三 于 2019-04-27 22:38:26 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('26', '2019-04-27 22:38:46', '0', '用户 张三 于 2019-04-27 22:38:46 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('27', '2019-04-27 22:48:22', '0', '用户 张三 于 2019-04-27 22:48:22 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('28', '2019-04-27 22:53:19', '0', '用户 张三 于 2019-04-27 22:53:19 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('29', '2019-04-27 23:02:41', '0', '用户 张三 于 2019-04-27 23:02:41 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('30', '2019-04-27 23:47:53', '0', '用户 张三 于 2019-04-27 23:47:53 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('31', '2019-04-27 23:49:11', '0', '用户 张三 于 2019-04-27 23:49:11 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('32', '2019-04-28 00:01:06', '0', '用户 张三 于 2019-04-28 00:01:06 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('33', '2019-04-28 00:02:17', '0', '用户 张三 于 2019-04-28 00:02:17 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('34', '2019-04-28 00:05:18', '0', '用户 张三 于 2019-04-28 00:05:18 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('35', '2019-04-28 00:15:50', '0', '用户 张三 于 2019-04-28 00:15:50 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('36', '2019-04-28 00:30:17', '0', '用户 张三 于 2019-04-28 00:30:17 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('37', '2019-04-28 00:31:22', '0', '用户 张三 于 2019-04-28 00:31:22 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('38', '2019-04-28 00:31:44', '0', '用户 张三 于 2019-04-28 00:31:44 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('39', '2019-04-28 00:34:27', '0', '用户 张三 于 2019-04-28 00:34:27 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('40', '2019-04-28 00:41:05', '0', '用户 张三 于 2019-04-28 00:41:05 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('41', '2019-04-28 00:51:48', '0', '用户 张三 于 2019-04-28 00:51:48 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('42', '2019-04-28 01:04:55', '0', '用户 张三 于 2019-04-28 01:04:55 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('43', '2019-04-28 01:05:21', '0', '用户 张三 于 2019-04-28 01:05:20 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('44', '2019-04-28 10:34:03', '0', '用户 张三 于 2019-04-28 10:34:03 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('45', '2019-04-28 10:34:23', '0', '用户 张三 于 2019-04-28 10:34:23 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('46', '2019-04-28 10:34:53', '0', '用户 张三 于 2019-04-28 10:34:53 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('47', '2019-04-28 10:35:12', '0', '用户 张三 于 2019-04-28 10:35:12 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('48', '2019-04-28 10:36:15', '0', '用户 张三 于 2019-04-28 10:36:15 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('49', '2019-04-28 10:36:43', '0', '用户 张三 于 2019-04-28 10:36:43 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('50', '2019-04-28 10:47:09', '0', '用户 张三 于 2019-04-28 10:47:09 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('51', '2019-04-28 10:47:58', '0', '用户 张三 于 2019-04-28 10:47:58 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('52', '2019-04-28 10:52:45', '0', '用户 张三 于 2019-04-28 10:52:45 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('53', '2019-04-28 10:56:51', '0', '用户 张三 于 2019-04-28 10:56:51 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('54', '2019-04-28 10:58:37', '0', '用户 张三 于 2019-04-28 10:58:37 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('55', '2019-04-28 10:59:48', '0', '用户 张三 于 2019-04-28 10:59:48 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('56', '2019-04-28 11:01:37', '0', '用户 张三 于 2019-04-28 11:01:37 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('57', '2019-04-28 11:43:05', '0', '用户 张三 于 2019-04-28 11:43:05 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('58', '2019-04-28 11:44:54', '0', '用户 张三 于 2019-04-28 11:44:54 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('59', '2019-04-28 11:52:51', '0', '用户 张三 于 2019-04-28 11:52:51 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('60', '2019-04-28 11:55:42', '0', '用户 张三 于 2019-04-28 11:55:42 添加了 [project][todo] 记录', '添加记录', 'zhangsan', 'project');
INSERT INTO `public_log` VALUES ('61', '2019-04-28 13:02:26', '0', '用户 张三 于 2019-04-28 13:02:26 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('62', '2019-04-28 16:47:58', '0', '用户 张三 于 2019-04-28 16:47:58 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('63', '2019-04-28 16:48:13', '0', '用户 张三 于 2019-04-28 16:48:13 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('64', '2019-04-29 15:59:32', '0', '用户 张三 于 2019-04-29 15:59:32 添加了 [student][file] 记录', '添加记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('65', '2019-04-29 17:50:09', '0', '用户 张三 于 2019-04-29 17:50:09 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('66', '2019-04-29 17:50:25', '0', '用户 张三 于 2019-04-29 17:50:25 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('67', '2019-04-29 18:04:43', '0', '用户 张三 于 2019-04-29 18:04:43 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('68', '2019-04-29 18:06:36', '0', '用户 张三 于 2019-04-29 18:06:36 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('69', '2019-04-29 18:07:00', '0', '用户 张三 于 2019-04-29 18:07:00 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('70', '2019-04-29 18:14:28', '0', '用户 张三 于 2019-04-29 18:14:28 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('71', '2019-04-29 18:17:01', '0', '用户 张三 于 2019-04-29 18:17:01 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('72', '2019-04-29 18:17:24', '0', '用户 张三 于 2019-04-29 18:17:24 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('73', '2019-04-29 18:17:51', '0', '用户 张三 于 2019-04-29 18:17:51 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('74', '2019-04-29 18:23:08', '0', '用户 张三 于 2019-04-29 18:23:08 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('75', '2019-04-29 18:25:22', '0', '用户 张三 于 2019-04-29 18:25:22 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('76', '2019-04-29 18:26:44', '0', '用户 张三 于 2019-04-29 18:26:44 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('77', '2019-04-29 18:28:53', '0', '用户 张三 于 2019-04-29 18:28:53 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('78', '2019-04-29 19:25:53', '0', '用户 张三 于 2019-04-29 19:25:53 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('79', '2019-04-29 19:26:25', '0', '用户 张三 于 2019-04-29 19:26:25 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('80', '2019-04-29 19:43:17', '0', '用户 张三 于 2019-04-29 19:43:17 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('81', '2019-04-29 19:46:33', '0', '用户 张三 于 2019-04-29 19:46:33 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('82', '2019-04-29 20:01:02', '0', '用户 张三 于 2019-04-29 20:01:02 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('83', '2019-04-29 20:08:09', '0', '用户 张三 于 2019-04-29 20:08:09 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('84', '2019-04-29 20:22:01', '0', '用户 张三 于 2019-04-29 20:22:01 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('85', '2019-04-29 20:23:50', '0', '用户 张三 于 2019-04-29 20:23:50 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('86', '2019-04-29 20:24:06', '0', '用户 张三 于 2019-04-29 20:24:06 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('87', '2019-04-29 20:28:20', '0', '用户 张三 于 2019-04-29 20:28:20 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('88', '2019-04-29 20:29:57', '0', '用户 张三 于 2019-04-29 20:29:57 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('89', '2019-04-29 20:30:15', '0', '用户 张三 于 2019-04-29 20:30:15 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('90', '2019-04-29 20:32:20', '0', '用户 张三 于 2019-04-29 20:32:20 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('91', '2019-04-29 20:32:24', '0', '用户 张三 于 2019-04-29 20:32:24 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('92', '2019-04-29 20:32:27', '0', '用户 张三 于 2019-04-29 20:32:27 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('93', '2019-04-29 20:32:41', '0', '用户 张三 于 2019-04-29 20:32:41 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('94', '2019-04-29 20:33:45', '0', '用户 张三 于 2019-04-29 20:33:45 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('95', '2019-04-29 20:34:59', '0', '用户 张三 于 2019-04-29 20:34:59 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('96', '2019-04-29 20:35:12', '0', '用户 张三 于 2019-04-29 20:35:12 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('97', '2019-04-29 20:41:54', '0', '用户 张三 于 2019-04-29 20:41:54 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('98', '2019-04-29 20:47:50', '0', '用户 张三 于 2019-04-29 20:47:50 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('99', '2019-04-29 20:52:55', '0', '用户 张三 于 2019-04-29 20:52:55 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('100', '2019-04-29 20:53:13', '0', '用户 张三 于 2019-04-29 20:53:13 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('101', '2019-04-29 20:58:37', '0', '用户 张三 于 2019-04-29 20:58:37 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('102', '2019-04-29 22:07:27', '0', '用户 张三 于 2019-04-29 22:07:27 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('103', '2019-04-29 22:13:37', '0', '用户 张三 于 2019-04-29 22:13:37 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('104', '2019-04-29 22:13:57', '0', '用户 张三 于 2019-04-29 22:13:57 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('105', '2019-04-29 22:16:50', '0', '用户 张三 于 2019-04-29 22:16:50 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('106', '2019-04-29 22:38:35', '0', '用户 张三 于 2019-04-29 22:38:35 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('107', '2019-04-29 22:38:54', '0', '用户 张三 于 2019-04-29 22:38:54 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('108', '2019-04-29 22:39:13', '0', '用户 张三 于 2019-04-29 22:39:13 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('109', '2019-04-29 22:39:50', '0', '用户 张三 于 2019-04-29 22:39:50 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('110', '2019-04-29 22:40:11', '0', '用户 张三 于 2019-04-29 22:40:11 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('111', '2019-04-29 22:40:41', '0', '用户 张三 于 2019-04-29 22:40:41 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('112', '2019-04-29 23:25:03', '0', '用户 张三 于 2019-04-29 23:25:03 添加了 [student][file] 记录', '添加记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('113', '2019-04-29 23:25:25', '0', '用户 张三 于 2019-04-29 23:25:25 修改了 [student][file] 记录', '修改记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('114', '2019-04-29 23:44:01', '0', '用户 张三 于 2019-04-29 23:44:01 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('115', '2019-04-29 23:44:11', '0', '用户 张三 于 2019-04-29 23:44:11 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('116', '2019-04-29 23:44:22', '0', '用户 张三 于 2019-04-29 23:44:22 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('117', '2019-04-29 23:51:12', '0', '用户 张三 于 2019-04-29 23:51:12 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('118', '2019-04-29 23:51:21', '0', '用户 张三 于 2019-04-29 23:51:21 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('119', '2019-04-29 23:51:31', '0', '用户 张三 于 2019-04-29 23:51:31 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('120', '2019-04-30 10:31:32', '0', '用户 张三 于 2019-04-30 10:31:32 添加了 [mygroup][work] 记录', '添加记录', 'zhangsan', 'mygroup');
INSERT INTO `public_log` VALUES ('121', '2019-04-30 10:31:42', '0', '用户 张三 于 2019-04-30 10:31:42 删除了 [mygroup][work] 记录', '删除记录', 'zhangsan', 'mygroup');
INSERT INTO `public_log` VALUES ('122', '2019-04-30 10:31:57', '0', '用户 张三 于 2019-04-30 10:31:57 修改了 [mygroup][work] 记录', '修改记录', 'zhangsan', 'mygroup');
INSERT INTO `public_log` VALUES ('123', '2019-04-30 10:41:28', '0', '用户 张三 于 2019-04-30 10:41:28 添加了 [student][file] 记录', '添加记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('124', '2019-04-30 14:10:56', '0', '用户 张三 于 2019-04-30 14:10:56 添加了 [course][file] 记录', '添加记录', 'zhangsan', 'course');
INSERT INTO `public_log` VALUES ('125', '2019-04-30 14:11:05', '0', '用户 张三 于 2019-04-30 14:11:05 删除了 [course][file] 记录', '删除记录', 'zhangsan', 'course');
INSERT INTO `public_log` VALUES ('126', '2019-04-30 14:11:20', '0', '用户 张三 于 2019-04-30 14:11:20 修改了 [course][file] 记录', '修改记录', 'zhangsan', 'course');
INSERT INTO `public_log` VALUES ('127', '2019-04-30 15:04:35', '0', '用户 张三 于 2019-04-30 15:04:35 添加了 [mygroup][work] 记录', '添加记录', 'zhangsan', 'mygroup');
INSERT INTO `public_log` VALUES ('128', '2019-04-30 15:05:04', '0', '用户 张三 于 2019-04-30 15:05:04 修改了 [mygroup][work] 记录', '修改记录', 'zhangsan', 'mygroup');
INSERT INTO `public_log` VALUES ('129', '2019-04-30 15:05:49', '0', '用户 张三 于 2019-04-30 15:05:49 添加了 [mygroup][work] 记录', '添加记录', 'zhangsan', 'mygroup');
INSERT INTO `public_log` VALUES ('130', '2019-04-30 15:14:34', '0', '用户 张三 于 2019-04-30 15:14:34 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('131', '2019-04-30 15:14:41', '0', '用户 张三 于 2019-04-30 15:14:41 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('132', '2019-04-30 15:14:59', '0', '用户 张三 于 2019-04-30 15:14:59 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('133', '2019-04-30 15:20:33', '0', '用户 张三 于 2019-04-30 15:20:33 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('134', '2019-04-30 15:23:17', '0', '用户 张三 于 2019-04-30 15:23:17 添加了 [student][file] 记录', '添加记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('135', '2019-04-30 15:23:25', '0', '用户 张三 于 2019-04-30 15:23:25 删除了 [student][file] 记录', '删除记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('136', '2019-04-30 15:25:09', '0', '用户 张三 于 2019-04-30 15:25:09 修改了 [student][file] 记录', '修改记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('137', '2019-04-30 17:24:56', '0', '用户 张三 于 2019-04-30 17:24:56 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('138', '2019-04-30 17:25:04', '0', '用户 张三 于 2019-04-30 17:25:04 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('139', '2019-04-30 17:25:27', '0', '用户 张三 于 2019-04-30 17:25:27 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('140', '2019-04-30 18:45:23', '0', '用户 张三 于 2019-04-30 18:45:23 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('141', '2019-04-30 18:45:29', '0', '用户 张三 于 2019-04-30 18:45:29 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('142', '2019-04-30 18:45:42', '0', '用户 张三 于 2019-04-30 18:45:42 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('143', '2019-04-30 18:54:12', '0', '用户 张三 于 2019-04-30 18:54:11 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('144', '2019-04-30 18:54:20', '0', '用户 张三 于 2019-04-30 18:54:20 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('145', '2019-04-30 18:54:46', '0', '用户 张三 于 2019-04-30 18:54:46 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('146', '2019-04-30 18:57:46', '0', '用户 张三 于 2019-04-30 18:57:46 添加了 [student][file] 记录', '添加记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('147', '2019-04-30 18:57:55', '0', '用户 张三 于 2019-04-30 18:57:55 删除了 [student][file] 记录', '删除记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('148', '2019-04-30 19:06:03', '0', '用户 张三 于 2019-04-30 19:06:03 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('149', '2019-04-30 19:06:09', '0', '用户 张三 于 2019-04-30 19:06:09 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('150', '2019-04-30 19:06:17', '0', '用户 张三 于 2019-04-30 19:06:17 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('151', '2019-04-30 19:08:26', '0', '用户 张三 于 2019-04-30 19:08:26 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('152', '2019-04-30 19:08:31', '0', '用户 张三 于 2019-04-30 19:08:31 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('153', '2019-04-30 19:08:38', '0', '用户 张三 于 2019-04-30 19:08:38 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('154', '2019-04-30 19:10:12', '0', '用户 张三 于 2019-04-30 19:10:12 添加了 [student][file] 记录', '添加记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('155', '2019-04-30 19:10:17', '0', '用户 张三 于 2019-04-30 19:10:17 删除了 [student][file] 记录', '删除记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('156', '2019-04-30 19:10:26', '0', '用户 张三 于 2019-04-30 19:10:26 修改了 [student][file] 记录', '修改记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('157', '2019-04-30 19:20:10', '0', '用户 张三 于 2019-04-30 19:20:10 添加了 [group][file] 记录', '添加记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('158', '2019-04-30 19:20:23', '0', '用户 张三 于 2019-04-30 19:20:23 删除了 [group][file] 记录', '删除记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('159', '2019-04-30 19:20:33', '0', '用户 张三 于 2019-04-30 19:20:33 修改了 [group][file] 记录', '修改记录', 'zhangsan', 'group');
INSERT INTO `public_log` VALUES ('160', '2019-04-30 19:22:24', '0', '用户 张三 于 2019-04-30 19:22:24 添加了 [student][file] 记录', '添加记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('161', '2019-04-30 19:22:29', '0', '用户 张三 于 2019-04-30 19:22:29 删除了 [student][file] 记录', '删除记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('162', '2019-04-30 19:22:38', '0', '用户 张三 于 2019-04-30 19:22:38 修改了 [student][file] 记录', '修改记录', 'zhangsan', 'student');
INSERT INTO `public_log` VALUES ('163', '2019-04-30 19:24:23', '0', '用户 张三 于 2019-04-30 19:24:23 添加了 [mygroup][work] 记录', '添加记录', 'zhangsan', 'mygroup');
INSERT INTO `public_log` VALUES ('164', '2019-04-30 19:24:36', '0', '用户 张三 于 2019-04-30 19:24:36 删除了 [mygroup][work] 记录', '删除记录', 'zhangsan', 'mygroup');
INSERT INTO `public_log` VALUES ('165', '2019-04-30 19:24:49', '0', '用户 张三 于 2019-04-30 19:24:49 修改了 [mygroup][work] 记录', '修改记录', 'zhangsan', 'mygroup');
INSERT INTO `public_log` VALUES ('166', '2019-04-30 19:25:59', '0', '用户 张三 于 2019-04-30 19:25:59 添加了 [course][file] 记录', '添加记录', 'zhangsan', 'course');
INSERT INTO `public_log` VALUES ('167', '2019-04-30 19:26:07', '0', '用户 张三 于 2019-04-30 19:26:07 删除了 [course][file] 记录', '删除记录', 'zhangsan', 'course');
INSERT INTO `public_log` VALUES ('168', '2019-04-30 19:26:15', '0', '用户 张三 于 2019-04-30 19:26:15 修改了 [course][file] 记录', '修改记录', 'zhangsan', 'course');
INSERT INTO `public_log` VALUES ('169', '2019-05-15 19:36:40', '0', '用户 ryw 于 2019-05-15 19:36:40 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('170', '2019-05-15 19:53:24', '0', '用户 ryw 于 2019-05-15 19:53:24 删除了 [group][file] 记录', '删除记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('171', '2019-05-15 19:53:33', '0', '用户 ryw 于 2019-05-15 19:53:33 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('172', '2019-05-15 19:54:52', '0', '用户 ryw 于 2019-05-15 19:54:52 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('173', '2019-05-15 19:55:09', '0', '用户 ryw 于 2019-05-15 19:55:09 修改了 [group][file] 记录', '修改记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('174', '2019-05-15 20:25:06', '0', '鐢ㄦ埛 ryw 浜� 2019-05-15 20:25:06 娣诲姞浜� [course][file] 璁板綍', '娣诲姞璁板綍', 'ryw', 'course');
INSERT INTO `public_log` VALUES ('175', '2019-05-15 20:31:19', '0', '用户 ryw 于 2019-05-15 20:31:19 添加了 [mygroup][work] 记录', '添加记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('176', '2019-05-25 23:29:41', '0', '用户 ryw 于 2019-05-25 23:29:41 添加了 [course][file] 记录', '添加记录', 'ryw', 'course');
INSERT INTO `public_log` VALUES ('177', '2019-05-26 16:38:55', '0', '用户 ryw 于 2019-05-26 16:38:55 添加了 [student][file] 记录', '添加记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('178', '2019-05-26 17:42:30', '0', '用户 ryw 于 2019-05-26 17:42:30 添加了 [student][file] 记录', '添加记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('179', '2019-05-26 17:45:46', '0', '用户 ryw 于 2019-05-26 17:45:46 修改了 [student][file] 记录', '修改记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('180', '2019-05-26 17:53:44', '0', '用户 ryw 于 2019-05-26 17:53:44 修改了 [student][file] 记录', '修改记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('181', '2019-05-26 18:15:06', '0', '用户 ryw 于 2019-05-26 18:15:06 添加了 [student1][file] 记录', '添加记录', 'ryw', 'student1');
INSERT INTO `public_log` VALUES ('182', '2019-05-26 18:17:38', '0', '用户 ryw 于 2019-05-26 18:17:37 删除了 [student1][file] 记录', '删除记录', 'ryw', 'student1');
INSERT INTO `public_log` VALUES ('183', '2019-05-26 18:30:34', '0', '用户 ryw 于 2019-05-26 18:30:34 修改了 [student1][file] 记录', '修改记录', 'ryw', 'student1');
INSERT INTO `public_log` VALUES ('184', '2019-05-28 23:11:36', '0', '用户 ryw 于 2019-05-28 23:11:36 添加了 [student][file] 记录', '添加记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('185', '2019-05-28 23:11:49', '0', '用户 ryw 于 2019-05-28 23:11:49 删除了 [student][file] 记录', '删除记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('186', '2019-05-28 23:28:24', '0', '用户 ryw 于 2019-05-28 23:28:24 添加了 [student][file] 记录', '添加记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('187', '2019-05-28 23:33:24', '0', '用户 ryw 于 2019-05-28 23:33:24 添加了 [student][file] 记录', '添加记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('188', '2019-05-28 23:37:16', '0', '用户 ryw 于 2019-05-28 23:37:16 添加了 [student][file] 记录', '添加记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('189', '2019-05-28 23:41:13', '0', '用户 ryw 于 2019-05-28 23:41:13 修改了 [student][file] 记录', '修改记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('190', '2019-05-28 23:42:59', '0', '用户 ryw 于 2019-05-28 23:42:59 修改了 [student][file] 记录', '修改记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('191', '2019-05-28 23:43:16', '0', '用户 ryw 于 2019-05-28 23:43:16 修改了 [student][file] 记录', '修改记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('192', '2019-05-28 23:43:35', '0', '用户 ryw 于 2019-05-28 23:43:35 添加了 [student][file] 记录', '添加记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('193', '2019-05-28 23:51:14', '0', '用户 ryw 于 2019-05-28 23:51:14 修改了 [student][file] 记录', '修改记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('194', '2019-05-28 23:51:22', '0', '用户 ryw 于 2019-05-28 23:51:22 删除了 [student][file] 记录', '删除记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('195', '2019-05-28 23:51:26', '0', '用户 ryw 于 2019-05-28 23:51:26 删除了 [student][file] 记录', '删除记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('196', '2019-05-28 23:53:02', '0', '用户 ryw 于 2019-05-28 23:53:02 修改了 [student][file] 记录', '修改记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('197', '2019-05-29 16:42:48', '0', '用户 ryw 于 2019-05-29 16:42:48 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('198', '2019-05-29 16:44:48', '0', '用户 ryw 于 2019-05-29 16:44:48 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('199', '2019-05-29 16:45:28', '0', '用户 ryw 于 2019-05-29 16:45:28 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('200', '2019-05-29 17:06:57', '0', '用户 ryw 于 2019-05-29 17:06:57 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('201', '2019-05-29 17:07:26', '0', '用户 ryw 于 2019-05-29 17:07:25 添加了 [student][file] 记录', '添加记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('202', '2019-05-29 17:07:32', '0', '用户 ryw 于 2019-05-29 17:07:32 删除了 [student][file] 记录', '删除记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('203', '2019-05-29 17:07:45', '0', '用户 ryw 于 2019-05-29 17:07:45 添加了 [mygroup][work] 记录', '添加记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('204', '2019-05-29 17:07:56', '0', '用户 ryw 于 2019-05-29 17:07:56 删除了 [mygroup][work] 记录', '删除记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('205', '2019-05-29 17:08:16', '0', '用户 ryw 于 2019-05-29 17:08:16 添加了 [course][file] 记录', '添加记录', 'ryw', 'course');
INSERT INTO `public_log` VALUES ('206', '2019-05-29 17:08:34', '0', '用户 ryw 于 2019-05-29 17:08:34 添加了 [mygroup][work] 记录', '添加记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('207', '2019-05-29 17:11:26', '0', '用户 ryw 于 2019-05-29 17:11:26 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('208', '2019-05-29 17:13:20', '0', '用户 ryw 于 2019-05-29 17:13:20 添加了 [mygroup][work] 记录', '添加记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('209', '2019-05-29 17:13:24', '0', '用户 ryw 于 2019-05-29 17:13:24 删除了 [mygroup][work] 记录', '删除记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('210', '2019-05-29 17:13:27', '0', '用户 ryw 于 2019-05-29 17:13:27 删除了 [mygroup][work] 记录', '删除记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('211', '2019-05-29 19:02:09', '0', '用户 ryw 于 2019-05-29 19:02:09 添加了 [mygroup][work] 记录', '添加记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('212', '2019-05-29 19:30:41', '0', '用户 ryw 于 2019-05-29 19:30:41 删除了 [mygroup][work] 记录', '删除记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('213', '2019-05-29 19:31:00', '0', '用户 ryw 于 2019-05-29 19:31:00 修改了 [mygroup][work] 记录', '修改记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('214', '2019-05-29 19:33:21', '0', '用户 ryw 于 2019-05-29 19:33:21 添加了 [mygroup][work] 记录', '添加记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('215', '2019-05-29 19:34:08', '0', '用户 ryw 于 2019-05-29 19:34:08 添加了 [mygroup][work] 记录', '添加记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('216', '2019-05-29 21:29:39', '0', '用户 ryw 于 2019-05-29 21:29:39 删除了 [course][file] 记录', '删除记录', 'ryw', 'course');
INSERT INTO `public_log` VALUES ('217', '2019-05-29 21:29:59', '0', '用户 ryw 于 2019-05-29 21:29:59 删除了 [mygroup][work] 记录', '删除记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('218', '2019-05-29 21:30:02', '0', '用户 ryw 于 2019-05-29 21:30:02 删除了 [mygroup][work] 记录', '删除记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('219', '2019-05-29 21:30:06', '0', '用户 ryw 于 2019-05-29 21:30:06 添加了 [mygroup][work] 记录', '添加记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('220', '2019-05-29 21:30:15', '0', '用户 ryw 于 2019-05-29 21:30:15 删除了 [mygroup][work] 记录', '删除记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('221', '2019-05-29 21:30:36', '0', '用户 ryw 于 2019-05-29 21:30:36 添加了 [student][file] 记录', '添加记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('222', '2019-05-29 21:30:41', '0', '用户 ryw 于 2019-05-29 21:30:41 删除了 [student][file] 记录', '删除记录', 'ryw', 'student');
INSERT INTO `public_log` VALUES ('223', '2019-05-29 21:31:01', '0', '用户 ryw 于 2019-05-29 21:31:01 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('224', '2019-05-29 21:35:18', '0', '用户 ryw 于 2019-05-29 21:35:18 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('225', '2019-05-29 21:36:00', '0', '用户 ryw 于 2019-05-29 21:36:00 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('226', '2019-05-29 21:36:34', '0', '用户 ryw 于 2019-05-29 21:36:34 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('227', '2019-05-29 21:37:38', '0', '用户 ryw 于 2019-05-29 21:37:38 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('228', '2019-05-29 21:40:15', '0', '用户 ryw 于 2019-05-29 21:40:15 添加了 [course][file] 记录', '添加记录', 'ryw', 'course');
INSERT INTO `public_log` VALUES ('229', '2019-05-29 21:40:21', '0', '用户 ryw 于 2019-05-29 21:40:21 删除了 [course][file] 记录', '删除记录', 'ryw', 'course');
INSERT INTO `public_log` VALUES ('230', '2019-05-30 23:18:16', '0', '用户 ryw 于 2019-05-30 23:18:16 修改了 [group][file] 记录', '修改记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('231', '2019-05-30 23:19:33', '0', '用户 ryw 于 2019-05-30 23:19:33 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('232', '2019-05-31 00:02:51', '0', '用户 ryw 于 2019-05-31 00:02:51 修改了 [group][file] 记录', '修改记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('233', '2019-05-31 00:06:25', '0', '用户 ryw 于 2019-05-31 00:06:25 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('234', '2019-05-31 00:08:31', '0', '用户 ryw 于 2019-05-31 00:08:31 添加了 [course][file] 记录', '添加记录', 'ryw', 'course');
INSERT INTO `public_log` VALUES ('235', '2019-05-31 00:09:14', '0', '用户 ryw 于 2019-05-31 00:09:13 删除了 [course][file] 记录', '删除记录', 'ryw', 'course');
INSERT INTO `public_log` VALUES ('236', '2019-05-31 00:10:12', '0', '用户 ryw 于 2019-05-31 00:10:12 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('237', '2019-05-31 00:12:06', '0', '用户 ryw 于 2019-05-31 00:12:06 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('238', '2019-05-31 00:14:55', '0', '用户 ryw 于 2019-05-31 00:14:55 修改了 [group][file] 记录', '修改记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('239', '2019-05-31 00:31:51', '0', '用户 ryw 于 2019-05-31 00:31:51 修改了 [group][file] 记录', '修改记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('240', '2019-05-31 00:32:59', '0', '用户 ryw 于 2019-05-31 00:32:59 修改了 [group][file] 记录', '修改记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('241', '2019-05-31 00:41:29', '0', '用户 ryw 于 2019-05-31 00:41:29 修改了 [group][file] 记录', '修改记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('242', '2019-05-31 00:41:48', '0', '用户 ryw 于 2019-05-31 00:41:48 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('243', '2019-05-31 00:42:06', '0', '用户 ryw 于 2019-05-31 00:42:06 删除了 [group][file] 记录', '删除记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('244', '2019-05-31 01:04:21', '0', '用户 ryw 于 2019-05-31 01:04:21 添加了 [group][file] 记录', '添加记录', 'ryw', 'group');
INSERT INTO `public_log` VALUES ('245', '2019-05-31 19:59:16', '0', '用户 ryw 于 2019-05-31 19:59:16 添加了 [mygroup][work] 记录', '添加记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('246', '2019-05-31 19:59:39', '0', '用户 ryw 于 2019-05-31 19:59:39 删除了 [mygroup][work] 记录', '删除记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('247', '2019-05-31 19:59:46', '0', '用户 ryw 于 2019-05-31 19:59:46 删除了 [mygroup][work] 记录', '删除记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('248', '2019-05-31 19:59:52', '0', '用户 ryw 于 2019-05-31 19:59:52 删除了 [mygroup][work] 记录', '删除记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('249', '2019-05-31 20:00:19', '0', '用户 ryw 于 2019-05-31 20:00:19 添加了 [mygroup][work] 记录', '添加记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('250', '2019-05-31 20:00:44', '0', '用户 ryw 于 2019-05-31 20:00:44 删除了 [mygroup][work] 记录', '删除记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('251', '2019-05-31 23:33:40', '0', '用户 ryw 于 2019-05-31 23:33:40 删除了 [mygroup][work] 记录', '删除记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('252', '2019-05-31 23:34:29', '0', '用户 ryw 于 2019-05-31 23:34:29 添加了 [mygroup][work] 记录', '添加记录', 'ryw', 'mygroup');
INSERT INTO `public_log` VALUES ('253', '2019-06-01 00:18:41', '0', '用户 ryw 于 2019-06-01 00:18:41 添加了 [course][file] 记录', '添加记录', 'ryw', 'course');
INSERT INTO `public_log` VALUES ('254', '2019-06-01 21:14:47', '0', '用户 ryw 于 2019-06-01 21:14:47 删除了 [course][file] 记录', '删除记录', 'ryw', 'course');
INSERT INTO `public_log` VALUES ('255', '2019-06-01 21:14:51', '0', '用户 ryw 于 2019-06-01 21:14:51 删除了 [course][file] 记录', '删除记录', 'ryw', 'course');
INSERT INTO `public_log` VALUES ('256', '2019-06-01 21:15:04', '0', '用户 ryw 于 2019-06-01 21:15:04 删除了 [course][file] 记录', '删除记录', 'ryw', 'course');

-- ----------------------------
-- Table structure for sign_data
-- ----------------------------
DROP TABLE IF EXISTS `sign_data`;
CREATE TABLE `sign_data` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `sign_time` varchar(255) NOT NULL,
  `sign_ip` varchar(255) NOT NULL,
  `lesson_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sign_data
-- ----------------------------
INSERT INTO `sign_data` VALUES ('15', 'test2', '2019-06-06 12:43:10', '192.168.128.134', '研究与开发实践');
INSERT INTO `sign_data` VALUES ('16', 'test3', '2019-06-06 18:25:03', '192.168.128.134', '研究与开发实践');
INSERT INTO `sign_data` VALUES ('18', 'ww', '2019-06-06 20:21:21', '192.168.128.134', '大学语文');
INSERT INTO `sign_data` VALUES ('19', 'ryw', '2019-06-10 09:22:33', '192.168.128.134', '大学英语');
INSERT INTO `sign_data` VALUES ('25', 'ww', '2019-06-28 17:43:53', '192.168.110.128', '大学英语');

-- ----------------------------
-- Table structure for student_file
-- ----------------------------
DROP TABLE IF EXISTS `student_file`;
CREATE TABLE `student_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `limit_time` datetime DEFAULT NULL,
  `end_tag` int(10) DEFAULT '0',
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `executor` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_size` int(10) DEFAULT '0',
  `priority` varchar(255) DEFAULT NULL,
  `check_tag` int(10) DEFAULT '0',
  `checker` varchar(255) DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `excel_tag` int(10) DEFAULT '0',
  `gar_tag` int(10) DEFAULT '0',
  `used_tag` int(10) DEFAULT '1',
  `creator` varchar(255) DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  `class_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_file
-- ----------------------------
INSERT INTO `student_file` VALUES ('1', null, 'ryw', 'admin', '2017141461340', '17396226085', 'ryw', '1443724959@qq.com', '博士研究生', '2019-05-30 16:15:00', '0', null, null, '', 'manager', null, '0', '山东', '0', null, null, '0', '0', '1', '', null, null, '201701');
INSERT INTO `student_file` VALUES ('49', null, 'rtw1', '123', '1111111111111', '11111111111', '任益苇', '1443724959@qq.com', '本科', '2019-06-06 18:14:56', '0', null, null, '', 'stu', null, '0', '山东', '0', null, null, '0', '0', '1', '', null, null, '201702');
INSERT INTO `student_file` VALUES ('50', null, 'zhangsan', '123', '2017141411111', '23123213122', '张三', '123456789@qq.com', '本科', '2019-06-15 18:27:20', '0', null, null, '', 'teach', null, '0', '山西', '0', null, null, '0', '0', '1', '', null, null, '201703');
INSERT INTO `student_file` VALUES ('51', null, 'ww', '123', '2017141412123', '23123213123', '吴五', '23123123@qq.com', '硕士研究生', '2019-06-15 18:27:48', '0', null, null, '', 'stu', null, '0', '北京', '0', null, null, '0', '0', '1', '', null, null, '201701');
INSERT INTO `student_file` VALUES ('52', null, 'wls', '123', null, null, '王老师', '', null, '2019-06-28 20:24:02', '0', null, null, '', 'teach', null, '0', null, '0', null, null, '0', '0', '1', '', null, null, null);

-- ----------------------------
-- Table structure for vote
-- ----------------------------
DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `vote_name` varchar(255) DEFAULT NULL,
  `add_user_name` varchar(255) DEFAULT NULL,
  `vote_title` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `number1` int(30) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `number2` int(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote
-- ----------------------------
INSERT INTO `vote` VALUES ('1', '关于考试', 'ylx', '考试是在周二进行还是周三进行？', '周二', '5', '周三', '5', '2019-06-03 09:03:47', '已截止');
INSERT INTO `vote` VALUES ('2', '你吃了吗', '张三', '你吃了吗', '吃了', '3', '没吃', '5', '2019-06-03 10:28:14', '进行中');
INSERT INTO `vote` VALUES ('3', '关于考试', '匡梅', 'java考试', '复习完了', '52', '没复习完', '81', '2019-06-03 11:39:28', '进行中');

-- ----------------------------
-- Table structure for vote_log
-- ----------------------------
DROP TABLE IF EXISTS `vote_log`;
CREATE TABLE `vote_log` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `vote_id` int(30) DEFAULT NULL,
  `user_id` int(30) DEFAULT NULL,
  `optionc` varchar(255) DEFAULT NULL,
  `vote_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_log
-- ----------------------------
INSERT INTO `vote_log` VALUES ('9', '2', '45', '2', '2019-06-03 11:16:59');
INSERT INTO `vote_log` VALUES ('10', '1', '45', '2', '2019-06-03 11:17:10');
INSERT INTO `vote_log` VALUES ('12', '3', '45', '1', '2019-06-03 11:42:09');
INSERT INTO `vote_log` VALUES ('13', '2', '39', '2', '2019-06-03 11:46:38');
INSERT INTO `vote_log` VALUES ('14', '3', '39', '1', '2019-06-03 11:46:40');
INSERT INTO `vote_log` VALUES ('15', '4', '39', '2', '2019-06-03 11:47:55');
INSERT INTO `vote_log` VALUES ('16', '3', '47', '2', '2019-06-03 13:58:21');
INSERT INTO `vote_log` VALUES ('17', '2', '47', '2', '2019-06-06 18:57:15');
INSERT INTO `vote_log` VALUES ('18', '2', '47', '2', '2019-06-06 18:57:17');

-- ----------------------------
-- Table structure for weather
-- ----------------------------
DROP TABLE IF EXISTS `weather`;
CREATE TABLE `weather` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `fengxiang` varchar(255) DEFAULT NULL,
  `fengli` varchar(255) DEFAULT NULL,
  `high` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `low` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=448 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weather
-- ----------------------------
INSERT INTO `weather` VALUES ('1', '北京', '101010100', '南风', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('2', '朝阳', '101010300', '南风', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('3', '顺义', '101010400', '西南风', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('4', '怀柔', '101010500', '南风', '<![CDATA[<3级]]>', '高温 31℃', '雷阵雨', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('5', '通州', '101010600', '南风', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('6', '昌平', '101010700', '南风', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('7', '延庆', '101010800', '西风', '<![CDATA[<3级]]>', '高温 30℃', '雷阵雨', '低温 15℃', '2日星期天');
INSERT INTO `weather` VALUES ('8', '丰台', '101010900', '北风', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('9', '石景山', '101011000', '南风', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('10', '大兴', '101011100', '南风', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('11', '房山', '101011200', '南风', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('12', '密云', '101011300', '南风', '<![CDATA[<3级]]>', '高温 31℃', '雷阵雨', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('13', '门头沟', '101011400', '南风', '<![CDATA[<3级]]>', '高温 31℃', '雷阵雨', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('14', '平谷', '101011500', '东南风', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('22', '海淀', '101010200', '南风', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('23', '天津', '101030100', '西南风', '<![CDATA[3-4级]]>', '高温 34℃', '阴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('24', '宝坻', '101030300', '西南风', '<![CDATA[<3级]]>', '高温 33℃', '阴', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('25', '东丽', '101030400', '西南风', '<![CDATA[3-4级]]>', '高温 34℃', '阴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('26', '西青', '101030500', '西南风', '<![CDATA[3-4级]]>', '高温 34℃', '阴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('27', '北辰', '101030600', '西南风', '<![CDATA[3-4级]]>', '高温 33℃', '阴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('28', '蓟县', '101031400', '南风', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('29', '汉沽', '101030800', '西南风', '<![CDATA[3-4级]]>', '高温 34℃', '阴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('30', '静海', '101030900', '西南风', '<![CDATA[3-4级]]>', '高温 34℃', '阴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('31', '津南', '101031000', '西南风', '<![CDATA[3-4级]]>', '高温 34℃', '阴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('32', '塘沽', '101031100', '东南风', '<![CDATA[3-4级]]>', '高温 31℃', '阴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('33', '大港', '101031200', '西南风', '<![CDATA[3-4级]]>', '高温 34℃', '阴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('34', '武清', '101030200', '西南风', '<![CDATA[<3级]]>', '高温 33℃', '阴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('35', '宁河', '101030700', '南风', '<![CDATA[3-4级]]>', '高温 30℃', '阴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('36', '上海', '101020100', '东南风', '<![CDATA[<3级]]>', '高温 26℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('37', '宝山', '101020300', '东风', '<![CDATA[3-4级]]>', '高温 26℃', '多云', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('38', '嘉定', '101020500', '东南风', '<![CDATA[3-4级]]>', '高温 26℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('39', '南汇', '101020600', '东风', '<![CDATA[3-4级]]>', '高温 26℃', '多云', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('40', '浦东', '101021300', '东南风', '<![CDATA[<3级]]>', '高温 26℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('41', '青浦', '101020800', '东南风', '<![CDATA[<3级]]>', '高温 26℃', '多云', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('42', '松江', '101020900', '东南风', '<![CDATA[<3级]]>', '高温 26℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('43', '奉贤', '101021000', '东南风', '<![CDATA[<3级]]>', '高温 26℃', '多云', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('44', '崇明', '101021100', '东南风', '<![CDATA[3-4级]]>', '高温 26℃', '多云', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('45', '徐家汇', '101021200', '东南风', '<![CDATA[<3级]]>', '高温 26℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('46', '闵行', '101020200', '东南风', '<![CDATA[<3级]]>', '高温 26℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('47', '金山', '101020700', '东南风', '<![CDATA[<3级]]>', '高温 26℃', '多云', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('48', '石家庄', '101090101', '西北风', '<![CDATA[3-4级]]>', '高温 36℃', '晴', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('49', '张家口', '101090301', '西北风', '<![CDATA[3-4级]]>', '高温 29℃', '多云', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('50', '承德', '101090402', '西南风', '<![CDATA[3-4级]]>', '高温 31℃', '多云', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('51', '唐山', '101090501', '南风', '<![CDATA[3-4级]]>', '高温 32℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('52', '秦皇岛', '101091101', '南风', '<![CDATA[5-6级]]>', '高温 26℃', '多云', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('53', '沧州', '101090701', '西南风', '<![CDATA[3-4级]]>', '高温 36℃', '多云', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('54', '衡水', '101090801', '西南风', '<![CDATA[3-4级]]>', '高温 37℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('55', '邢台', '101090901', '南风', '<![CDATA[3-4级]]>', '高温 37℃', '晴', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('56', '邯郸', '101091001', '南风', '<![CDATA[3-4级]]>', '高温 37℃', '多云', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('57', '保定', '101090201', '南风', '<![CDATA[<3级]]>', '高温 34℃', '晴', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('58', '廊坊', '101090601', '东北风', '<![CDATA[<3级]]>', '高温 34℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('59', '郑州', '101180101', '西南风', '<![CDATA[4-5级]]>', '高温 39℃', '多云', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('60', '新乡', '101180301', '西南风', '<![CDATA[4-5级]]>', '高温 38℃', '多云', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('61', '许昌', '101180401', '西南风', '<![CDATA[3-4级]]>', '高温 37℃', '多云', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('62', '平顶山', '101180501', '西南风', '<![CDATA[3-4级]]>', '高温 38℃', '晴', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('63', '信阳', '101180601', '西南风', '<![CDATA[3-4级]]>', '高温 33℃', '晴', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('64', '南阳', '101180701', '西南风', '<![CDATA[3-4级]]>', '高温 36℃', '多云', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('65', '开封', '101180801', '西南风', '<![CDATA[4-5级]]>', '高温 38℃', '多云', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('66', '洛阳', '101180901', '西南风', '<![CDATA[3-4级]]>', '高温 38℃', '多云', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('67', '商丘', '101181001', '南风', '<![CDATA[4-5级]]>', '高温 35℃', '多云', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('68', '焦作', '101181101', '西南风', '<![CDATA[3-4级]]>', '高温 39℃', '晴', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('70', '鹤壁', '101181201', '西南风', '<![CDATA[5-6级]]>', '高温 37℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('71', '濮阳', '101181301', '西南风', '<![CDATA[5-6级]]>', '高温 37℃', '晴', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('72', '周口', '101181401', '南风', '<![CDATA[3-4级]]>', '高温 37℃', '多云', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('73', '漯河', '101181501', '西南风', '<![CDATA[4-5级]]>', '高温 37℃', '晴', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('74', '驻马店', '101181601', '西南风', '<![CDATA[3-4级]]>', '高温 36℃', '多云', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('75', '三门峡', '101181701', '西风', '<![CDATA[<3级]]>', '高温 35℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('76', '济源', '101181801', '西南风', '<![CDATA[<3级]]>', '高温 39℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('77', '安阳', '101180201', '南风', '<![CDATA[4-5级]]>', '高温 38℃', '多云', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('78', '合肥', '101220101', '东南风', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('79', '芜湖', '101220301', '东南风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('80', '淮南', '101220401', '南风', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('81', '马鞍山', '101220501', '东南风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('82', '安庆', '101220601', '西南风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('83', '宿州', '101220701', '南风', '<![CDATA[<3级]]>', '高温 34℃', '晴', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('84', '阜阳', '101220801', '南风', '<![CDATA[<3级]]>', '高温 34℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('85', '亳州', '101220901', '南风', '<![CDATA[3-4级]]>', '高温 35℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('86', '黄山', '101221001', '西北风', '<![CDATA[<3级]]>', '高温 28℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('87', '滁州', '101221101', '东南风', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('88', '淮北', '101221201', '南风', '<![CDATA[3-4级]]>', '高温 34℃', '晴', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('89', '铜陵', '101221301', '东南风', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('90', '宣城', '101221401', '东南风', '<![CDATA[<3级]]>', '高温 29℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('91', '六安', '101221501', '东南风', '<![CDATA[<3级]]>', '高温 32℃', '多云', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('92', '巢湖', '101221601', '东风', '<![CDATA[小于3级]]>', '高温 13℃', '小雨', '低温 9℃', '3日星期一');
INSERT INTO `weather` VALUES ('93', '池州', '101221701', '南风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('94', '蚌埠', '101220201', '南风', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('95', '杭州', '101210101', '东风', '<![CDATA[<3级]]>', '高温 28℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('96', '舟山', '101211101', '东风', '<![CDATA[<3级]]>', '高温 24℃', '多云', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('97', '湖州', '101210201', '东南风', '<![CDATA[3-4级]]>', '高温 27℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('98', '嘉兴', '101210301', '东南风', '<![CDATA[3-4级]]>', '高温 27℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('99', '金华', '101210901', '无持续风向', '<![CDATA[<3级]]>', '高温 27℃', '多云', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('100', '绍兴', '101210501', '东风', '<![CDATA[<3级]]>', '高温 27℃', '阴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('101', '台州', '101210601', '无持续风向', '<![CDATA[<3级]]>', '高温 22℃', '小雨', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('102', '温州', '101210701', '无持续风向', '<![CDATA[<3级]]>', '高温 23℃', '小雨', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('103', '丽水', '101210801', '无持续风向', '<![CDATA[<3级]]>', '高温 25℃', '小雨', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('104', '衢州', '101211001', '无持续风向', '<![CDATA[<3级]]>', '高温 27℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('105', '宁波', '101210401', '东南风', '<![CDATA[<3级]]>', '高温 25℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('106', '重庆', '101040100', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('107', '合川', '101040300', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '晴', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('108', '南川', '101040400', '无持续风向', '<![CDATA[<3级]]>', '高温 29℃', '晴', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('109', '江津', '101040500', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('110', '万盛', '101040600', '无持续风向', '<![CDATA[微风级]]>', '高温 25℃', '阵雨', '低温 19℃', '19日星期一');
INSERT INTO `weather` VALUES ('111', '渝北', '101040700', '无持续风向', '<![CDATA[<3级]]>', '高温 29℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('112', '北碚', '101040800', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('113', '巴南', '101040900', '无持续风向', '<![CDATA[<3级]]>', '高温 29℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('114', '长寿', '101041000', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('115', '黔江', '101041100', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('118', '涪陵', '101041400', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('119', '开县', '101041500', '无持续风向', '<![CDATA[微风级]]>', '高温 29℃', '阴', '低温 23℃', '19日星期一');
INSERT INTO `weather` VALUES ('120', '城口', '101041600', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 15℃', '2日星期天');
INSERT INTO `weather` VALUES ('121', '云阳', '101041700', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('122', '巫溪', '101041800', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('123', '奉节', '101041900', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('124', '巫山', '101042000', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('125', '潼南', '101042100', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('126', '垫江', '101042200', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('127', '梁平', '101042300', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('128', '忠县', '101042400', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('129', '石柱', '101042500', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '多云', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('130', '大足', '101042600', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('131', '荣昌', '101042700', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('132', '铜梁', '101042800', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('133', '璧山', '101042900', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('134', '丰都', '101043000', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('135', '武隆', '101043100', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('136', '彭水', '101043200', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('137', '綦江', '101043300', '无持续风向', '<![CDATA[<3级]]>', '高温 28℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('138', '酉阳', '101043400', '无持续风向', '<![CDATA[<3级]]>', '高温 28℃', '多云', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('139', '秀山', '101043600', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('141', '永川', '101040200', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('142', '福州', '101230101', '东风', '<![CDATA[<3级]]>', '高温 26℃', '中雨', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('143', '泉州', '101230501', '西南风', '<![CDATA[<3级]]>', '高温 29℃', '大雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('144', '漳州', '101230601', '西北风', '<![CDATA[<3级]]>', '高温 30℃', '大雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('145', '龙岩', '101230701', '西南风', '<![CDATA[<3级]]>', '高温 27℃', '大雨', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('146', '晋江', '101230509', '西南风', '<![CDATA[3-4级]]>', '高温 29℃', '大雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('147', '南平', '101230901', '西北风', '<![CDATA[<3级]]>', '高温 25℃', '大雨', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('148', '厦门', '101230201', '西风', '<![CDATA[3-4级]]>', '高温 29℃', '中雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('149', '宁德', '101230301', '东北风', '<![CDATA[<3级]]>', '高温 24℃', '中雨', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('150', '莆田', '101230401', '南风', '<![CDATA[<3级]]>', '高温 26℃', '暴雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('151', '三明', '101230801', '西风', '<![CDATA[<3级]]>', '高温 27℃', '大雨', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('152', '兰州', '101160101', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '晴', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('153', '平凉', '101160301', '东南风', '<![CDATA[<3级]]>', '高温 29℃', '晴', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('154', '庆阳', '101160401', '西北风', '<![CDATA[3-4级]]>', '高温 30℃', '晴', '低温 12℃', '2日星期天');
INSERT INTO `weather` VALUES ('155', '武威', '101160501', '西北风', '<![CDATA[3-4级]]>', '高温 29℃', '晴', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('156', '金昌', '101160601', '西北风', '<![CDATA[4-5级]]>', '高温 30℃', '晴', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('157', '嘉峪关', '101161401', '西风', '<![CDATA[4-5级]]>', '高温 28℃', '多云', '低温 15℃', '2日星期天');
INSERT INTO `weather` VALUES ('158', '酒泉', '101160801', '西风', '<![CDATA[3-4级]]>', '高温 28℃', '多云', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('159', '天水', '101160901', '东风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('160', '武都', '101161001', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('161', '临夏', '101161101', '无持续风向', '<![CDATA[<3级]]>', '高温 27℃', '晴', '低温 9℃', '2日星期天');
INSERT INTO `weather` VALUES ('162', '合作', '101161201', '无持续风向', '<![CDATA[<3级]]>', '高温 18℃', '晴', '低温 1℃', '2日星期天');
INSERT INTO `weather` VALUES ('163', '白银', '101161301', '无持续风向', '<![CDATA[<3级]]>', '高温 26℃', '多云', '低温 10℃', '2日星期天');
INSERT INTO `weather` VALUES ('164', '定西', '101160201', '无持续风向', '<![CDATA[<3级]]>', '高温 25℃', '晴', '低温 9℃', '2日星期天');
INSERT INTO `weather` VALUES ('165', '张掖', '101160701', '西北风', '<![CDATA[4-5级]]>', '高温 31℃', '晴', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('166', '广州', '101280101', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '中到大雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('167', '惠州', '101280301', '无持续风向', '<![CDATA[<3级]]>', '高温 29℃', '大到暴雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('168', '梅州', '101280401', '无持续风向', '<![CDATA[<3级]]>', '高温 29℃', '中雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('169', '汕头', '101280501', '西南风', '<![CDATA[<3级]]>', '高温 31℃', '雷阵雨', '低温 26℃', '2日星期天');
INSERT INTO `weather` VALUES ('170', '深圳', '101280601', '无持续风向', '<![CDATA[<3级]]>', '高温 29℃', '中雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('171', '珠海', '101280701', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '大雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('172', '佛山', '101280800', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '大雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('173', '肇庆', '101280901', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '中雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('174', '湛江', '101281001', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '大雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('175', '江门', '101281101', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '中雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('176', '河源', '101281201', '无持续风向', '<![CDATA[<3级]]>', '高温 29℃', '中雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('177', '清远', '101281301', '无持续风向', '<![CDATA[<3级]]>', '高温 29℃', '中雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('178', '云浮', '101281401', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '大雨', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('179', '潮州', '101281501', '无持续风向', '<![CDATA[<3级]]>', '高温 29℃', '中雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('180', '东莞', '101281601', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '大雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('181', '中山', '101281701', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '中雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('182', '阳江', '101281801', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '暴雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('183', '揭阳', '101281901', '无持续风向', '<![CDATA[<3级]]>', '高温 29℃', '中雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('184', '茂名', '101282001', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '大雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('185', '汕尾', '101282101', '西南风', '<![CDATA[3-4级]]>', '高温 29℃', '阵雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('186', '韶关', '101280201', '无持续风向', '<![CDATA[<3级]]>', '高温 29℃', '中雨', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('187', '南宁', '101300101', '东北风', '<![CDATA[<3级]]>', '高温 27℃', '多云', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('188', '柳州', '101300301', '北风', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('189', '来宾', '101300401', '北风', '<![CDATA[<3级]]>', '高温 29℃', '多云', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('190', '桂林', '101300501', '南风', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('191', '梧州', '101300601', '东风', '<![CDATA[<3级]]>', '高温 29℃', '阵雨', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('192', '防城港', '101301401', '东北风', '<![CDATA[<3级]]>', '高温 28℃', '阵雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('193', '贵港', '101300801', '西风', '<![CDATA[<3级]]>', '高温 28℃', '多云', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('194', '玉林', '101300901', '东南风', '<![CDATA[<3级]]>', '高温 27℃', '中雨', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('195', '百色', '101301001', '北风', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('196', '钦州', '101301101', '北风', '<![CDATA[<3级]]>', '高温 28℃', '阵雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('197', '河池', '101301201', '东北风', '<![CDATA[<3级]]>', '高温 32℃', '多云', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('198', '北海', '101301301', '南风', '<![CDATA[<3级]]>', '高温 27℃', '大雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('199', '崇左', '101300201', '东南风', '<![CDATA[<3级]]>', '高温 30℃', '阵雨', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('200', '贺州', '101300701', '南风', '<![CDATA[<3级]]>', '高温 26℃', '阵雨', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('201', '贵阳', '101260101', '北风', '<![CDATA[<3级]]>', '高温 26℃', '晴', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('202', '安顺', '101260301', '东风', '<![CDATA[<3级]]>', '高温 25℃', '多云', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('203', '都匀', '101260401', '无持续风向', '<![CDATA[<3级]]>', '高温 28℃', '晴', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('205', '铜仁', '101260601', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('206', '毕节', '101260701', '无持续风向', '<![CDATA[<3级]]>', '高温 25℃', '多云', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('208', '遵义', '101260201', '西北风', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('209', '凯里', '101260501', '北风', '<![CDATA[<3级]]>', '高温 29℃', '多云', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('210', '昆明', '101290101', '无持续风向', '<![CDATA[<3级]]>', '高温 25℃', '多云', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('211', '红河', '101290301', '无持续风向', '<![CDATA[<3级]]>', '高温 26℃', '中雨', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('212', '文山', '101290601', '无持续风向', '<![CDATA[<3级]]>', '高温 24℃', '阵雨', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('213', '玉溪', '101290701', '无持续风向', '<![CDATA[<3级]]>', '高温 23℃', '阵雨', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('214', '楚雄', '101290801', '无持续风向', '<![CDATA[<3级]]>', '高温 23℃', '阵雨', '低温 15℃', '2日星期天');
INSERT INTO `weather` VALUES ('215', '普洱', '101290901', '无持续风向', '<![CDATA[<3级]]>', '高温 27℃', '中雨', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('216', '昭通', '101291001', '无持续风向', '<![CDATA[<3级]]>', '高温 26℃', '多云', '低温 12℃', '2日星期天');
INSERT INTO `weather` VALUES ('217', '临沧', '101291101', '无持续风向', '<![CDATA[<3级]]>', '高温 25℃', '阵雨', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('218', '怒江', '101291201', '无持续风向', '<![CDATA[<3级]]>', '高温 29℃', '阵雨', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('219', '香格里拉', '101291301', '无持续风向', '<![CDATA[<3级]]>', '高温 16℃', '阴', '低温 2℃', '2日星期天');
INSERT INTO `weather` VALUES ('220', '丽江', '101291401', '无持续风向', '<![CDATA[<3级]]>', '高温 21℃', '阵雨', '低温 11℃', '2日星期天');
INSERT INTO `weather` VALUES ('221', '德宏', '101291501', '无持续风向', '<![CDATA[<3级]]>', '高温 27℃', '阵雨', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('222', '景洪', '101291601', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '中雨', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('223', '大理', '101290201', '无持续风向', '<![CDATA[<3级]]>', '高温 23℃', '阵雨', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('224', '曲靖', '101290401', '无持续风向', '<![CDATA[<3级]]>', '高温 23℃', '多云', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('225', '保山', '101290501', '无持续风向', '<![CDATA[<3级]]>', '高温 25℃', '阵雨', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('226', '呼和浩特', '101080101', '北风', '<![CDATA[3-4级]]>', '高温 27℃', '晴', '低温 10℃', '2日星期天');
INSERT INTO `weather` VALUES ('227', '乌海', '101080301', '西北风', '<![CDATA[3-4级]]>', '高温 31℃', '晴', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('228', '集宁', '101080401', '西北风', '<![CDATA[4-5级]]>', '高温 25℃', '晴', '低温 8℃', '2日星期天');
INSERT INTO `weather` VALUES ('229', '通辽', '101080501', '西南风', '<![CDATA[3-4级]]>', '高温 29℃', '雷阵雨', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('231', '鄂尔多斯', '101080701', '西北风', '<![CDATA[3-4级]]>', '高温 27℃', '晴', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('232', '临河', '101080801', '西北风', '<![CDATA[3-4级]]>', '高温 28℃', '晴', '低温 12℃', '2日星期天');
INSERT INTO `weather` VALUES ('233', '锡林浩特', '101080901', '西北风', '<![CDATA[4-5级]]>', '高温 23℃', '小雨', '低温 8℃', '2日星期天');
INSERT INTO `weather` VALUES ('235', '乌兰浩特', '101081101', '东风', '<![CDATA[3-4级]]>', '高温 25℃', '阵雨', '低温 12℃', '2日星期天');
INSERT INTO `weather` VALUES ('236', '包头', '101080201', '北风', '<![CDATA[3-4级]]>', '高温 30℃', '晴', '低温 11℃', '2日星期天');
INSERT INTO `weather` VALUES ('237', '赤峰', '101080601', '西南风', '<![CDATA[3-4级]]>', '高温 27℃', '雷阵雨', '低温 12℃', '2日星期天');
INSERT INTO `weather` VALUES ('238', '南昌', '101240101', '西南风', '<![CDATA[<3级]]>', '高温 29℃', '多云', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('239', '上饶', '101240301', '西风', '<![CDATA[<3级]]>', '高温 27℃', '阴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('240', '抚州', '101240401', '南风', '<![CDATA[<3级]]>', '高温 28℃', '多云', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('241', '宜春', '101240501', '西风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('242', '鹰潭', '101241101', '西南风', '<![CDATA[<3级]]>', '高温 29℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('243', '赣州', '101240701', '东北风', '<![CDATA[<3级]]>', '高温 27℃', '雷阵雨', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('244', '景德镇', '101240801', '西南风', '<![CDATA[<3级]]>', '高温 29℃', '阵雨', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('245', '萍乡', '101240901', '南风', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('246', '新余', '101241001', '东南风', '<![CDATA[<3级]]>', '高温 28℃', '多云', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('247', '九江', '101240201', '北风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('248', '吉安', '101240601', '南风', '<![CDATA[<3级]]>', '高温 28℃', '多云', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('249', '武汉', '101200101', '南风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('250', '黄冈', '101200501', '南风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('251', '荆州', '101200801', '南风', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('252', '宜昌', '101200901', '南风', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('253', '恩施', '101201001', '西南风', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('254', '十堰', '101201101', '西风', '<![CDATA[<3级]]>', '高温 36℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('255', '神农架', '101201201', '东北风', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 15℃', '2日星期天');
INSERT INTO `weather` VALUES ('256', '随州', '101201301', '南风', '<![CDATA[3-4级]]>', '高温 32℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('257', '荆门', '101201401', '南风', '<![CDATA[3-4级]]>', '高温 32℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('258', '天门', '101201501', '南风', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('259', '仙桃', '101201601', '南风', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('260', '潜江', '101201701', '南风', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('262', '鄂州', '101200301', '南风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('263', '孝感', '101200401', '南风', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('264', '黄石', '101200601', '东南风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('265', '咸宁', '101200701', '南风', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('266', '成都', '101270101', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 19℃', '9日星期天');
INSERT INTO `weather` VALUES ('267', '自贡', '101270301', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('268', '绵阳', '101270401', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('269', '南充', '101270501', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('270', '达州', '101270601', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('271', '遂宁', '101270701', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('272', '广安', '101270801', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('273', '巴中', '101270901', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('274', '泸州', '101271001', '无持续风向', '<![CDATA[<3级]]>', '高温 34℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('275', '宜宾', '101271101', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('276', '内江', '101271201', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('277', '资阳', '101271301', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('278', '乐山', '101271401', '无持续风向', '<![CDATA[<3级]]>', '高温 34℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('279', '眉山', '101271501', '无持续风向', '<![CDATA[<3级]]>', '高温 34℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('280', '凉山', '101271601', '无持续风向', '<![CDATA[<3级]]>', '高温 28℃', '晴', '低温 15℃', '2日星期天');
INSERT INTO `weather` VALUES ('281', '雅安', '101271701', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('282', '甘孜', '101271801', '无持续风向', '<![CDATA[<3级]]>', '高温 18℃', '晴', '低温 3℃', '2日星期天');
INSERT INTO `weather` VALUES ('283', '阿坝', '101271901', '无持续风向', '<![CDATA[<3级]]>', '高温 19℃', '晴', '低温 2℃', '2日星期天');
INSERT INTO `weather` VALUES ('284', '德阳', '101272001', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('285', '广元', '101272101', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('286', '攀枝花', '101270201', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '晴', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('287', '银川', '101170101', '西北风', '<![CDATA[3-4级]]>', '高温 31℃', '晴', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('288', '中卫', '101170501', '西北风', '<![CDATA[3-4级]]>', '高温 31℃', '晴', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('289', '固原', '101170401', '西北风', '<![CDATA[3-4级]]>', '高温 24℃', '晴', '低温 12℃', '2日星期天');
INSERT INTO `weather` VALUES ('290', '石嘴山', '101170201', '西北风', '<![CDATA[3-4级]]>', '高温 31℃', '晴', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('291', '吴忠', '101170301', '西北风', '<![CDATA[3-4级]]>', '高温 32℃', '晴', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('292', '西宁', '101150101', '无持续风向', '<![CDATA[<3级]]>', '高温 24℃', '多云', '低温 6℃', '2日星期天');
INSERT INTO `weather` VALUES ('293', '黄南', '101150301', '西北风', '<![CDATA[<3级]]>', '高温 20℃', '小雨', '低温 5℃', '2日星期天');
INSERT INTO `weather` VALUES ('294', '海北', '101150801', '西风', '<![CDATA[<3级]]>', '高温 15℃', '小雨', '低温 2℃', '2日星期天');
INSERT INTO `weather` VALUES ('295', '果洛', '101150501', '西北风', '<![CDATA[<3级]]>', '高温 8℃', '多云', '低温 -4℃', '2日星期天');
INSERT INTO `weather` VALUES ('296', '玉树', '101150601', '西北风', '<![CDATA[<3级]]>', '高温 17℃', '多云', '低温 0℃', '2日星期天');
INSERT INTO `weather` VALUES ('297', '海西', '101150701', '西风', '<![CDATA[3-4级]]>', '高温 17℃', '小雨', '低温 5℃', '2日星期天');
INSERT INTO `weather` VALUES ('298', '海东', '101150201', '西北风', '<![CDATA[<3级]]>', '高温 23℃', '阴', '低温 7℃', '2日星期天');
INSERT INTO `weather` VALUES ('299', '海南', '101150401', '西北风', '<![CDATA[<3级]]>', '高温 18℃', '多云', '低温 5℃', '2日星期天');
INSERT INTO `weather` VALUES ('300', '济南', '101120101', '南风', '<![CDATA[4-5级]]>', '高温 36℃', '多云', '低温 28℃', '2日星期天');
INSERT INTO `weather` VALUES ('301', '潍坊', '101120601', '南风', '<![CDATA[4-5级]]>', '高温 35℃', '多云', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('302', '临沂', '101120901', '南风', '<![CDATA[3-4级]]>', '高温 34℃', '多云', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('303', '菏泽', '101121001', '南风', '<![CDATA[3-4级]]>', '高温 36℃', '晴', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('304', '滨州', '101121101', '西南风', '<![CDATA[4-5级]]>', '高温 36℃', '多云', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('305', '东营', '101121201', '南风', '<![CDATA[4-5级]]>', '高温 37℃', '多云', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('306', '威海', '101121301', '南风', '<![CDATA[5-6级]]>', '高温 29℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('307', '枣庄', '101121401', '南风', '<![CDATA[3-4级]]>', '高温 35℃', '多云', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('308', '日照', '101121501', '南风', '<![CDATA[4-5级]]>', '高温 29℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('309', '莱芜', '101121601', '南风', '<![CDATA[4-5级]]>', '高温 35℃', '多云', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('310', '聊城', '101121701', '南风', '<![CDATA[3-4级]]>', '高温 36℃', '多云', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('311', '青岛', '101120201', '南风', '<![CDATA[4-5级]]>', '高温 25℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('312', '淄博', '101120301', '南风', '<![CDATA[4-5级]]>', '高温 36℃', '多云', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('313', '德州', '101120401', '南风', '<![CDATA[4-5级]]>', '高温 36℃', '晴', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('314', '烟台', '101120501', '南风', '<![CDATA[4-5级]]>', '高温 30℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('315', '济宁', '101120701', '南风', '<![CDATA[3-4级]]>', '高温 36℃', '多云', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('316', '泰安', '101120801', '南风', '<![CDATA[3-4级]]>', '高温 34℃', '多云', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('317', '西安', '101110101', '西南风', '<![CDATA[3-4级]]>', '高温 37℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('318', '延安', '101110300', '西北风', '<![CDATA[4-5级]]>', '高温 31℃', '晴', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('319', '榆林', '101110401', '西北风', '<![CDATA[5-6级]]>', '高温 31℃', '晴', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('320', '铜川', '101111001', '西北风', '<![CDATA[3-4级]]>', '高温 31℃', '晴', '低温 15℃', '2日星期天');
INSERT INTO `weather` VALUES ('321', '商洛', '101110601', '西风', '<![CDATA[3-4级]]>', '高温 33℃', '晴', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('322', '安康', '101110701', '西风', '<![CDATA[<3级]]>', '高温 35℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('323', '汉中', '101110801', '西北风', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('324', '宝鸡', '101110901', '东风', '<![CDATA[<3级]]>', '高温 34℃', '晴', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('325', '咸阳', '101110200', '西南风', '<![CDATA[3-4级]]>', '高温 35℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('326', '渭南', '101110501', '西风', '<![CDATA[3-4级]]>', '高温 35℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('327', '太原', '101100101', '西北风', '<![CDATA[3-4级]]>', '高温 35℃', '晴', '低温 12℃', '2日星期天');
INSERT INTO `weather` VALUES ('328', '临汾', '101100701', '西北风', '<![CDATA[3-4级]]>', '高温 36℃', '多云', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('329', '运城', '101100801', '西北风', '<![CDATA[3-4级]]>', '高温 37℃', '多云', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('330', '朔州', '101100901', '西北风', '<![CDATA[3-4级]]>', '高温 29℃', '多云', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('331', '忻州', '101101001', '西北风', '<![CDATA[4-5级]]>', '高温 31℃', '多云', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('332', '长治', '101100501', '西北风', '<![CDATA[5-6级]]>', '高温 31℃', '多云', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('333', '大同', '101100201', '西北风', '<![CDATA[3-4级]]>', '高温 29℃', '多云', '低温 8℃', '2日星期天');
INSERT INTO `weather` VALUES ('334', '阳泉', '101100301', '西北风', '<![CDATA[3-4级]]>', '高温 34℃', '多云', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('335', '晋中', '101100401', '西北风', '<![CDATA[<3级]]>', '高温 33℃', '多云', '低温 12℃', '2日星期天');
INSERT INTO `weather` VALUES ('336', '晋城', '101100601', '西南风', '<![CDATA[3-4级]]>', '高温 34℃', '多云', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('337', '吕梁', '101101100', '西北风', '<![CDATA[3-4级]]>', '高温 32℃', '多云', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('338', '乌鲁木齐', '101130101', '西北风', '<![CDATA[3-4级]]>', '高温 26℃', '小雨', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('339', '石河子', '101130301', '西风', '<![CDATA[3-4级]]>', '高温 31℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('340', '昌吉', '101130401', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('341', '吐鲁番', '101130501', '西北风', '<![CDATA[<3级]]>', '高温 39℃', '晴', '低温 27℃', '2日星期天');
INSERT INTO `weather` VALUES ('342', '库尔勒', '101130601', '无持续风向', '<![CDATA[3-4级]]>', '高温 34℃', '多云', '低温 26℃', '2日星期天');
INSERT INTO `weather` VALUES ('343', '阿拉尔', '101130701', '东北风', '<![CDATA[3-4级]]>', '高温 35℃', '晴', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('344', '阿克苏', '101130801', '无持续风向', '<![CDATA[<3级]]>', '高温 34℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('345', '喀什', '101130901', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('346', '伊宁', '101131001', '西风', '<![CDATA[4-5级]]>', '高温 23℃', '中雨', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('347', '塔城', '101131101', '西风', '<![CDATA[4-5级]]>', '高温 28℃', '小雨', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('348', '哈密', '101131201', '东北风', '<![CDATA[4-5级]]>', '高温 34℃', '晴', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('349', '和田', '101131301', '无持续风向', '<![CDATA[<3级]]>', '高温 35℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('350', '阿勒泰', '101131401', '无持续风向', '<![CDATA[<3级]]>', '高温 27℃', '多云', '低温 12℃', '2日星期天');
INSERT INTO `weather` VALUES ('351', '阿图什', '101131501', '西北风', '<![CDATA[3-4级]]>', '高温 33℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('352', '博乐', '101131601', '西北风', '<![CDATA[3-4级]]>', '高温 30℃', '多云', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('353', '克拉玛依', '101130201', '西北风', '<![CDATA[4-5级]]>', '高温 32℃', '多云', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('354', '拉萨', '101140101', '无持续风向', '<![CDATA[<3级]]>', '高温 21℃', '阵雨', '低温 8℃', '2日星期天');
INSERT INTO `weather` VALUES ('355', '山南', '101140301', '无持续风向', '<![CDATA[<3级]]>', '高温 23℃', '阵雨', '低温 5℃', '2日星期天');
INSERT INTO `weather` VALUES ('356', '阿里', '101140701', '无持续风向', '<![CDATA[<3级]]>', '高温 15℃', '多云', '低温 1℃', '2日星期天');
INSERT INTO `weather` VALUES ('357', '昌都', '101140501', '无持续风向', '<![CDATA[<3级]]>', '高温 22℃', '晴', '低温 4℃', '2日星期天');
INSERT INTO `weather` VALUES ('358', '那曲', '101140601', '无持续风向', '<![CDATA[<3级]]>', '高温 13℃', '阴', '低温 -1℃', '2日星期天');
INSERT INTO `weather` VALUES ('359', '日喀则', '101140201', '无持续风向', '<![CDATA[<3级]]>', '高温 21℃', '小雨', '低温 5℃', '2日星期天');
INSERT INTO `weather` VALUES ('360', '林芝', '101140401', '无持续风向', '<![CDATA[<3级]]>', '高温 24℃', '晴', '低温 7℃', '2日星期天');
INSERT INTO `weather` VALUES ('362', '高雄', '101340201', '西风', '<![CDATA[<3级]]>', '高温 29℃', '小雨', '低温 26℃', '2日星期天');
INSERT INTO `weather` VALUES ('363', '台中', '101340401', '西南风', '<![CDATA[3-4级]]>', '高温 27℃', '小雨', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('364', '海口', '101310101', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '雷阵雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('365', '三亚', '101310201', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 27℃', '2日星期天');
INSERT INTO `weather` VALUES ('366', '东方', '101310202', '无持续风向', '<![CDATA[<3级]]>', '高温 31℃', '雷阵雨', '低温 26℃', '2日星期天');
INSERT INTO `weather` VALUES ('367', '临高', '101310203', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('368', '澄迈', '101310204', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '雷阵雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('369', '儋州', '101310205', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('370', '昌江', '101310206', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('371', '白沙', '101310207', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('372', '琼中', '101310208', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('373', '定安', '101310209', '无持续风向', '<![CDATA[<3级]]>', '高温 34℃', '雷阵雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('374', '屯昌', '101310210', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '雷阵雨', '低温 24℃', '2日星期天');
INSERT INTO `weather` VALUES ('375', '琼海', '101310211', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '雷阵雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('376', '文昌', '101310212', '无持续风向', '<![CDATA[<3级]]>', '高温 33℃', '雷阵雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('377', '保亭', '101310214', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('378', '万宁', '101310215', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '中雨', '低温 26℃', '2日星期天');
INSERT INTO `weather` VALUES ('379', '陵水', '101310216', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 26℃', '2日星期天');
INSERT INTO `weather` VALUES ('380', '西沙', '101310217', '西南风', '<![CDATA[4-5级]]>', '高温 32℃', '多云', '低温 29℃', '19日星期一');
INSERT INTO `weather` VALUES ('381', '南沙岛', '101310220', '西南风', '<![CDATA[4-5级]]>', '高温 32℃', '多云', '低温 28℃', '19日星期一');
INSERT INTO `weather` VALUES ('382', '乐东', '101310221', '无持续风向', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 25℃', '2日星期天');
INSERT INTO `weather` VALUES ('383', '五指山', '101310222', '无持续风向', '<![CDATA[<3级]]>', '高温 30℃', '雷阵雨', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('385', '长沙', '101250101', '南风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('386', '株洲', '101250301', '南风', '<![CDATA[<3级]]>', '高温 32℃', '多云', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('387', '衡阳', '101250401', '南风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('388', '郴州', '101250501', '北风', '<![CDATA[<3级]]>', '高温 27℃', '小雨', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('389', '常德', '101250601', '南风', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('390', '益阳', '101250700', '南风', '<![CDATA[<3级]]>', '高温 31℃', '多云', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('391', '娄底', '101250801', '南风', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('392', '邵阳', '101250901', '北风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('393', '岳阳', '101251001', '南风', '<![CDATA[<3级]]>', '高温 29℃', '晴', '低温 23℃', '2日星期天');
INSERT INTO `weather` VALUES ('394', '张家界', '101251101', '南风', '<![CDATA[<3级]]>', '高温 35℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('395', '怀化', '101251201', '东北风', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('397', '永州', '101251401', '北风', '<![CDATA[<3级]]>', '高温 30℃', '多云', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('398', '吉首', '101251501', '东北风', '<![CDATA[<3级]]>', '高温 32℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('399', '湘潭', '101250201', '南风', '<![CDATA[<3级]]>', '高温 32℃', '晴', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('400', '南京', '101190101', '东南风', '<![CDATA[<3级]]>', '高温 30℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('401', '镇江', '101190301', '东南风', '<![CDATA[<3级]]>', '高温 30℃', '晴', '低温 21℃', '2日星期天');
INSERT INTO `weather` VALUES ('402', '苏州', '101190401', '东南风', '<![CDATA[<3级]]>', '高温 28℃', '多云', '低温 20℃', '2日星期天');
INSERT INTO `weather` VALUES ('403', '南通', '101190501', '东南风', '<![CDATA[<3级]]>', '高温 28℃', '多云', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('404', '扬州', '101190601', '东南风', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('405', '宿迁', '101191301', '东南风', '<![CDATA[3-4级]]>', '高温 32℃', '晴', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('406', '徐州', '101190801', '南风', '<![CDATA[<3级]]>', '高温 35℃', '晴', '低温 22℃', '2日星期天');
INSERT INTO `weather` VALUES ('407', '淮安', '101190901', '南风', '<![CDATA[<3级]]>', '高温 31℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('408', '连云港', '101191001', '东南风', '<![CDATA[<3级]]>', '高温 33℃', '晴', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('409', '常州', '101191101', '南风', '<![CDATA[3-4级]]>', '高温 28℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('410', '泰州', '101191201', '东南风', '<![CDATA[<3级]]>', '高温 29℃', '晴', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('411', '无锡', '101190201', '南风', '<![CDATA[<3级]]>', '高温 28℃', '晴', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('412', '盐城', '101190701', '东南风', '<![CDATA[<3级]]>', '高温 28℃', '晴', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('413', '哈尔滨', '101050101', '西南风', '<![CDATA[4-5级]]>', '高温 24℃', '多云', '低温 10℃', '2日星期天');
INSERT INTO `weather` VALUES ('414', '牡丹江', '101050301', '西南风', '<![CDATA[3-4级]]>', '高温 28℃', '晴', '低温 12℃', '2日星期天');
INSERT INTO `weather` VALUES ('415', '佳木斯', '101050401', '东风', '<![CDATA[3-4级]]>', '高温 21℃', '阵雨', '低温 11℃', '2日星期天');
INSERT INTO `weather` VALUES ('416', '绥化', '101050501', '西北风', '<![CDATA[<3级]]>', '高温 22℃', '多云', '低温 10℃', '2日星期天');
INSERT INTO `weather` VALUES ('417', '黑河', '101050601', '南风', '<![CDATA[<3级]]>', '高温 21℃', '多云', '低温 8℃', '2日星期天');
INSERT INTO `weather` VALUES ('418', '双鸭山', '101051301', '西南风', '<![CDATA[<3级]]>', '高温 22℃', '小雨', '低温 10℃', '2日星期天');
INSERT INTO `weather` VALUES ('419', '伊春', '101050801', '西北风', '<![CDATA[<3级]]>', '高温 20℃', '小雨', '低温 6℃', '2日星期天');
INSERT INTO `weather` VALUES ('420', '大庆', '101050901', '西北风', '<![CDATA[<3级]]>', '高温 24℃', '多云', '低温 11℃', '2日星期天');
INSERT INTO `weather` VALUES ('421', '七台河', '101051002', '西风', '<![CDATA[<3级]]>', '高温 24℃', '阵雨', '低温 11℃', '2日星期天');
INSERT INTO `weather` VALUES ('422', '鸡西', '101051101', '东风', '<![CDATA[3-4级]]>', '高温 26℃', '阵雨', '低温 11℃', '2日星期天');
INSERT INTO `weather` VALUES ('423', '鹤岗', '101051201', '北风', '<![CDATA[<3级]]>', '高温 17℃', '阵雨', '低温 7℃', '2日星期天');
INSERT INTO `weather` VALUES ('424', '齐齐哈尔', '101050201', '西南风', '<![CDATA[<3级]]>', '高温 22℃', '多云', '低温 11℃', '2日星期天');
INSERT INTO `weather` VALUES ('425', '大兴安岭', '101050701', '西南风', '<![CDATA[<3级]]>', '高温 23℃', '多云', '低温 5℃', '2日星期天');
INSERT INTO `weather` VALUES ('426', '长春', '101060101', '西南风', '<![CDATA[4-5级]]>', '高温 27℃', '雷阵雨', '低温 15℃', '2日星期天');
INSERT INTO `weather` VALUES ('427', '延吉', '101060301', '东风', '<![CDATA[<3级]]>', '高温 28℃', '多云', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('428', '四平', '101060401', '西南风', '<![CDATA[<3级]]>', '高温 28℃', '小雨', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('429', '白山', '101060901', '西北风', '<![CDATA[3-4级]]>', '高温 24℃', '小雨', '低温 11℃', '2日星期天');
INSERT INTO `weather` VALUES ('430', '白城', '101060601', '西南风', '<![CDATA[<3级]]>', '高温 24℃', '晴', '低温 13℃', '2日星期天');
INSERT INTO `weather` VALUES ('431', '辽源', '101060701', '西南风', '<![CDATA[4-5级]]>', '高温 27℃', '阵雨', '低温 15℃', '2日星期天');
INSERT INTO `weather` VALUES ('432', '松原', '101060801', '西风', '<![CDATA[<3级]]>', '高温 24℃', '晴', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('433', '吉林', '101060201', '西南风', '<![CDATA[4-5级]]>', '高温 26℃', '小雨', '低温 15℃', '2日星期天');
INSERT INTO `weather` VALUES ('434', '通化', '101060501', '西南风', '<![CDATA[<3级]]>', '高温 24℃', '小雨', '低温 14℃', '2日星期天');
INSERT INTO `weather` VALUES ('435', '沈阳', '101070101', '南风', '<![CDATA[4-5级]]>', '高温 27℃', '雷阵雨', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('436', '鞍山', '101070301', '南风', '<![CDATA[4-5级]]>', '高温 29℃', '多云', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('437', '抚顺', '101070401', '西南风', '<![CDATA[4-5级]]>', '高温 27℃', '多云', '低温 15℃', '2日星期天');
INSERT INTO `weather` VALUES ('438', '本溪', '101070501', '南风', '<![CDATA[4-5级]]>', '高温 26℃', '雷阵雨', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('439', '丹东', '101070601', '南风', '<![CDATA[3-4级]]>', '高温 21℃', '多云', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('440', '葫芦岛', '101071401', '南风', '<![CDATA[4-5级]]>', '高温 23℃', '多云', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('441', '营口', '101070801', '南风', '<![CDATA[5-6级]]>', '高温 26℃', '多云', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('442', '阜新', '101070901', '西南风', '<![CDATA[4-5级]]>', '高温 27℃', '多云', '低温 15℃', '2日星期天');
INSERT INTO `weather` VALUES ('443', '辽阳', '101071001', '西南风', '<![CDATA[4-5级]]>', '高温 28℃', '多云', '低温 16℃', '2日星期天');
INSERT INTO `weather` VALUES ('444', '铁岭', '101071101', '西南风', '<![CDATA[4-5级]]>', '高温 26℃', '雷阵雨', '低温 17℃', '2日星期天');
INSERT INTO `weather` VALUES ('445', '朝阳', '101071201', '南风', '<![CDATA[<3级]]>', '高温 32℃', '雷阵雨', '低温 19℃', '2日星期天');
INSERT INTO `weather` VALUES ('446', '盘锦', '101071301', '西南风', '<![CDATA[4-5级]]>', '高温 27℃', '多云', '低温 18℃', '2日星期天');
INSERT INTO `weather` VALUES ('447', '大连', '101070201', '南风', '<![CDATA[5-6级]]>', '高温 26℃', '多云', '低温 18℃', '2日星期天');
