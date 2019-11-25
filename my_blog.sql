/*
 Navicat Premium Data Transfer

 Source Server         : MySQL10
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : my_blog

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 25/11/2019 18:27:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL,
  `publish_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL,
  `comment_num` int(11) NULL DEFAULT 0,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 'Python爬虫实战：京东拍拍验机（帮你买到成色完美的二手iPhone）', '\r\n												网站介绍&使用痛点  如图1所示，京东拍拍二手于近期上线了一个新平台：拍拍验机，顾客可以通过手机京东客户端，在拍拍验机上挑选购买心仪的二手电子产品（目前均为固定品牌的手机，如二手小米8、二手iPhone\r\n												7 Plus）。   在首页，我们可以对手机进行 ... ', '2018-05-19 00:00:00', '2019-08-30 00:00:00', 'Python', 10, 3);
INSERT INTO `article` VALUES (2, 'fasddfas', '<p>欢迎使用</p><p><br></p>', '2018-11-21 13:52:29', '1970-01-01 00:00:00', 'Coding', 0, 2);
INSERT INTO `article` VALUES (3, 'fasddfas', '<p>欢迎使用</p><p><br></p>', '2019-11-21 13:53:40', '2019-11-21 14:42:02', 'Coding', 0, 2);
INSERT INTO `article` VALUES (4, '如何变牛逼', '<h3>1、首先要学习javaEE开发</h3><div><h2>2、其次要做个人博客</h2></div><h2>3、如果能吹逼就更好了<span style=\"font-weight: bold;\"><strong></strong></span></h2><blockquote><h2><span style=\"font-weight: bold;\"><strong></strong><strong><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[鑸斿睆]\" data-w-e=\"1\"></strong><strong></strong><strong></strong></span></h2></blockquote><p><strong></strong><br></p><p><br></p><p><br></p>', '2019-11-21 14:35:08', '2019-11-21 14:42:06', 'Coding', 0, 2);
INSERT INTO `article` VALUES (5, 'fsdf', '<p>欢迎使用</p><p><img src=\"/images/head.png\" style=\"max-width:100%;\"></p>', '2019-11-21 14:54:34', '2019-11-21 14:55:13', 'Coding', 0, 2);
INSERT INTO `article` VALUES (6, 'afdsaf', '<p>欢迎使用</p><p><br></p><pre><code>gasdgsdfvfsadgsadgsadgsdafas</code></pre><p><br></p>', '2019-11-21 14:56:39', '2019-11-21 14:57:00', 'c++', 0, 1);
INSERT INTO `article` VALUES (7, 'gasdf', '<p>欢迎使用</p><pre><code>fasd fgasdf ggsd gas</code></pre><p><br></p>', '2019-11-21 14:58:38', '2019-11-21 14:58:38', 'Coding', 0, 2);
INSERT INTO `article` VALUES (8, 'liuyishou', '<p>欢迎使用</p><p>gasdgsaffdg</p><blockquote><p>gasdfas</p><p>gads</p><p>g</p><p>gasdg<br></p></blockquote><p>wangEditor</p><p>fds</p><p>fasdf</p><p>gfds<br></p>', '2019-11-21 21:35:17', '2019-11-21 21:35:17', 'Coding', 0, 2);
INSERT INTO `article` VALUES (9, '测试子分类当前日期是否正确', '<h4>you are my champion!!!<br></h4>', '2019-11-22 11:27:59', '2019-11-22 11:27:59', 'Coding', 0, 2);
INSERT INTO `article` VALUES (10, '测试添加分类模块', '<p>欢迎使用</p><p><br></p>', '2019-11-25 11:03:02', '2019-11-25 11:03:02', 'Test', 0, 4);
INSERT INTO `article` VALUES (11, '测试', '<p>欢迎使用</p><p><br></p>', '2019-11-25 11:22:33', '2019-11-25 11:22:33', 'Test1', 0, 5);
INSERT INTO `article` VALUES (12, '测试1', '<p>欢迎使用</p><p><br></p>', '2019-11-25 11:24:41', '2019-11-25 11:24:41', 'Test2', 0, 6);
INSERT INTO `article` VALUES (13, '测试3', '<p>欢迎使用</p><p><br></p>', '2019-11-25 11:45:06', '2019-11-25 11:45:06', 'Test2', 0, 6);
INSERT INTO `article` VALUES (14, '测试4', '<p>欢迎使用</p><p><br></p>', '2019-11-25 11:46:07', '2019-11-25 11:46:07', 'Test3', 0, 12);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'C++', 2);
INSERT INTO `category` VALUES (2, 'Coding', 4);
INSERT INTO `category` VALUES (3, 'Python', 1);
INSERT INTO `category` VALUES (4, 'Test', 1);
INSERT INTO `category` VALUES (5, 'Test1', 1);
INSERT INTO `category` VALUES (6, 'Test2', 2);
INSERT INTO `category` VALUES (12, 'Test3', 1);

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `id` int(11) NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NULL DEFAULT NULL,
  `queue_id` int(11) NULL DEFAULT 0,
  `aid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES (1, 'nihao', NULL, NULL, NULL, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
