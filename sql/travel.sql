/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : travel

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 05/09/2026 22:43:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add user info', 7, 'add_userinfo');
INSERT INTO `auth_permission` VALUES (26, 'Can change user info', 7, 'change_userinfo');
INSERT INTO `auth_permission` VALUES (27, 'Can delete user info', 7, 'delete_userinfo');
INSERT INTO `auth_permission` VALUES (28, 'Can view user info', 7, 'view_userinfo');
INSERT INTO `auth_permission` VALUES (29, 'Can add user info', 8, 'add_userinfo');
INSERT INTO `auth_permission` VALUES (30, 'Can change user info', 8, 'change_userinfo');
INSERT INTO `auth_permission` VALUES (31, 'Can delete user info', 8, 'delete_userinfo');
INSERT INTO `auth_permission` VALUES (32, 'Can view user info', 8, 'view_userinfo');
INSERT INTO `auth_permission` VALUES (33, 'Can add travel info', 8, 'add_travelinfo');
INSERT INTO `auth_permission` VALUES (34, 'Can change travel info', 8, 'change_travelinfo');
INSERT INTO `auth_permission` VALUES (35, 'Can delete travel info', 8, 'delete_travelinfo');
INSERT INTO `auth_permission` VALUES (36, 'Can view travel info', 8, 'view_travelinfo');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (8, 'home', 'travelinfo');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'user', 'userinfo');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2026-08-30 14:24:37.991124');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2026-08-30 14:24:40.462326');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2026-08-30 14:24:40.994774');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2026-08-30 14:24:41.033008');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2026-08-30 14:24:41.075970');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2026-08-30 14:24:41.366457');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2026-08-30 14:24:41.534206');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2026-08-30 14:24:41.673048');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2026-08-30 14:24:41.702231');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2026-08-30 14:24:41.934185');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2026-08-30 14:24:41.962012');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2026-08-30 14:24:41.986971');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2026-08-30 14:24:42.181896');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2026-08-30 14:24:42.392573');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2026-08-30 14:24:42.471920');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2026-08-30 14:24:42.519698');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2026-08-30 14:24:42.708615');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2026-08-30 14:24:42.946086');
INSERT INTO `django_migrations` VALUES (19, 'user', '0001_initial', '2026-08-30 14:24:43.055679');
INSERT INTO `django_migrations` VALUES (20, 'user', '0002_alter_userinfo_options_alter_userinfo_created_at', '2026-08-30 14:31:18.059669');
INSERT INTO `django_migrations` VALUES (22, 'user', '0003_alter_userinfo_created_at', '2026-08-30 15:20:43.259747');
INSERT INTO `django_migrations` VALUES (23, 'home', '0001_initial', '2026-08-30 15:33:06.072990');
INSERT INTO `django_migrations` VALUES (24, 'home', '0002_rename_userinfo_travelinfo', '2026-08-30 15:33:06.239479');
INSERT INTO `django_migrations` VALUES (25, 'user', '0004_alter_userinfo_created_at', '2026-08-30 15:33:06.268955');
INSERT INTO `django_migrations` VALUES (26, 'user', '0005_alter_userinfo_created_at', '2026-08-30 15:33:06.297138');
INSERT INTO `django_migrations` VALUES (27, 'user', '0006_alter_userinfo_created_at', '2026-08-30 15:33:06.325555');
INSERT INTO `django_migrations` VALUES (28, 'user', '0007_alter_userinfo_created_at', '2026-08-30 15:33:06.352983');
INSERT INTO `django_migrations` VALUES (29, 'user', '0008_alter_userinfo_created_at', '2026-08-30 15:35:49.479952');
INSERT INTO `django_migrations` VALUES (30, 'user', '0009_alter_userinfo_created_at', '2026-08-30 15:37:27.378826');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('lijmjrd2al8o2jii93a0968v7hxlenc0', 'eyJ1aWQiOjEsInVuYW1lIjoiYWRtaW4iLCJhdmF0YXIiOiIifQ:1x2rZo:20RJiFBiX1_saCYNiITw22OgFZUgBFVT0PHtGnlJbgE', '2026-09-19 14:41:04.657202');

-- ----------------------------
-- Table structure for home_travelinfo
-- ----------------------------
DROP TABLE IF EXISTS `home_travelinfo`;
CREATE TABLE `home_travelinfo`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `unique_id` bigint NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `review_count` int NULL DEFAULT NULL,
  `rating` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_ad` tinyint(1) NULL DEFAULT NULL,
  `is_recommended` tinyint(1) NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `distance_from_center` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `detail_link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `market_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `discount_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `discount_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `actual_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price_type_description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_free` tinyint(1) NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `latitude` double NULL DEFAULT NULL,
  `popularity_score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 451 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_travelinfo
-- ----------------------------
INSERT INTO `home_travelinfo` VALUES (1, 31677717, '环球影城度假区及周边', '北京环球度假区', 76162, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo5i12000tmq88tf6400.jpg', '距市中心24.1km', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/beijing1/2045497.html?poiType=3&scene=online', '418', '13', '已减', '333.0', '2', '门票', 0, 39.858481, 116.687749, '10', '北京');
INSERT INTO `home_travelinfo` VALUES (2, 136653497, '燕莎/朝阳公园商业区', '泡泡玛特城市乐园', 2797, '4.5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo6u12000sb9z66eB636.jpg', '距市中心7.5km', '夜游观景, 主题乐园&游乐场', 'https://you.ctrip.com/sight/beijing1/136653497.html?poiType=66&scene=online', '0', '0', '已减', '98.0', '2', '门票', 0, 39.947985, 116.485985, '8.1', '北京');
INSERT INTO `home_travelinfo` VALUES (3, 75595, '天安门/王府井地区', '故宫博物院', 199754, '4.9', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/010671200087d4o7zEA88.jpg', '距市中心1.7km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/229.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.924091, 116.403414, '10', '北京');
INSERT INTO `home_travelinfo` VALUES (4, 76613, '后海/南锣鼓巷地区', '恭王府', 36839, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103o12000jtaf06u56A4.jpg', '距市中心4.1km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/5174.html?poiType=3&scene=online', '40', '0', '已减', '40.0', '2', '门票', 0, 39.943478, 116.392652, '8.6', '北京');
INSERT INTO `home_travelinfo` VALUES (5, 75599, '前门/天坛公园/崇文门', '天坛公园', 23362, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/10040h0000008s9n50143.jpg', '距市中心2.5km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/233.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.888243, 116.417246, '8.4', '北京');
INSERT INTO `home_travelinfo` VALUES (6, 75596, '八达岭长城/野生动物园地区', '八达岭长城', 61856, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/100c0u000000jjsf87E14.jpg', '距市中心60.2km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/230.html?poiType=3&scene=online', '40', '0', '已减', '40.0', '2', '门票', 0, 40.362639, 116.024067, '10', '北京');
INSERT INTO `home_travelinfo` VALUES (7, 87207, '天安门/王府井地区', '中国国家博物馆', 13412, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102y12000hxkc5n61AF4.jpg', '距市中心529m', '遛娃宝藏地, 博物馆&展馆', 'https://you.ctrip.com/sight/beijing1/62722.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.91176, 116.407762, '9.5', '北京');
INSERT INTO `home_travelinfo` VALUES (8, 75597, '中关村/五道口', '颐和园', 50901, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104912000t3618b892C1.jpg', '距市中心15.4km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/231.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 40.004567, 116.280593, '8.4', '北京');
INSERT INTO `home_travelinfo` VALUES (9, 75609, '慕田峪长城/响水湖长城地区', '慕田峪长城', 35049, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo0m12000bjgo0zjBC35.jpg', '距市中心60.2km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/243.html?poiType=3&scene=online', '45', '0', '已减', '45.0', '2', '门票', 0, 40.437515, 116.571778, '8.3', '北京');
INSERT INTO `home_travelinfo` VALUES (10, 153110245, '八达岭长城/野生动物园地区', '北京登览长城', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103k12000t369fqr6384.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=153110245', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 40.362639, 116.024067, '8.1', '北京');
INSERT INTO `home_travelinfo` VALUES (11, 100947, '后海/南锣鼓巷地区', '什刹海风景区', 3051, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100f12000t36p58c584D.jpg', '距市中心4.5km', '赏花胜地, 自然山水', 'https://you.ctrip.com/sight/beijing1/140172.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.947925, 116.39473, '8', '北京');
INSERT INTO `home_travelinfo` VALUES (12, 90782, '燕莎/朝阳公园商业区', '朝阳公园', 1161, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106y12000f9tvgxz47CF.jpg', '距市中心7.8km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/107621.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.950067, 116.489127, '8', '北京');
INSERT INTO `home_travelinfo` VALUES (13, 75594, '天安门/王府井地区', '天安门广场', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102712000lgqy8jz98E0.jpg', '距市中心824m', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/228.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.909652, 116.404177, '0', '北京');
INSERT INTO `home_travelinfo` VALUES (14, 76599, '三里屯/工体/东直门地区', '雍和宫', 4111, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0101u12000t32wmta67B6.jpg', '距市中心4.9km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/5153.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.953378, 116.423709, '7.8', '北京');
INSERT INTO `home_travelinfo` VALUES (15, 10559348, '大兴北京新机场地区', '北京野生动物园', 33555, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103j120009e4o06sCD60.png', '距市中心45.7km', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/beijing1/107469.html?poiType=3&scene=online', '150', '0', '已减', '145.0', '2', '门票', 0, 39.502562, 116.341067, '7.8', '北京');
INSERT INTO `home_travelinfo` VALUES (16, 76625, '中关村/五道口', '圆明园', 27771, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/010131200046ybzogE113.jpg', '距市中心14.4km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/5208.html?poiType=3&scene=online', '10', '暂无', '暂无', '免费', '3', '门市价', 0, 40.012509, 116.310059, '7.5', '北京');
INSERT INTO `home_travelinfo` VALUES (17, 76620, '前门/天坛公园/崇文门', '国家自然博物馆', 2107, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0105g12000hyj7qtd201A.jpg', '距市中心2.4km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/5181.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.889525, 116.406116, '7.4', '北京');
INSERT INTO `home_travelinfo` VALUES (18, 76612, '西直门/北京展览馆地区', '北京动物园', 10690, '4.5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102e12000jo9eeaa1097.jpg', '距市中心7.3km', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/beijing1/5173.html?poiType=3&scene=online', '15', '暂无', '暂无', '免费', '3', '门市价', 0, 39.947735, 116.343376, '7.3', '北京');
INSERT INTO `home_travelinfo` VALUES (19, 76610, '天安门/王府井地区', '景山公园', 5338, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/10091f000001gsmf0CEC2.jpg', '距市中心2.6km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/5170.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.93227, 116.402818, '7.3', '北京');
INSERT INTO `home_travelinfo` VALUES (20, 86171, '欢乐谷游乐区', '北京欢乐谷', 19075, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo5v12000rhit34qF892.jpg', '距市中心8.5km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/57491.html?poiType=66&scene=online', '0', '0', '已减', '199.0', '2', '门票', 0, 39.873863, 116.501358, '7.2', '北京');
INSERT INTO `home_travelinfo` VALUES (21, 151074796, '暂无', '北京citywalk', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100312000jue4bgi3764.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=151074796', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 39.910534, 116.41378, '7.2', '北京');
INSERT INTO `home_travelinfo` VALUES (22, 149296594, '鸟巢/奥体中心地区', '北京赏银杏', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104m12000f9tnqbyA447.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=149296594', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 40.025231, 116.3968, '7.1', '北京');
INSERT INTO `home_travelinfo` VALUES (23, 90785, '鸟巢/奥体中心地区', '中国科学技术馆', 6562, '4.5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104612000t36jf6f99EA.jpg', '距市中心11.3km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/107625.html?poiType=3&scene=online', '30', '暂无', '暂无', '免费', '3', '门市价', 0, 40.012384, 116.40504, '7.1', '北京');
INSERT INTO `home_travelinfo` VALUES (24, 90794, '前门/天坛公园/崇文门', '前门大街', 1738, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0101t120007xzhog38999.jpg', '距市中心1.2km', '赏花胜地, 城市漫步', 'https://you.ctrip.com/sight/beijing1/107634.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.901276, 116.406003, '7.1', '北京');
INSERT INTO `home_travelinfo` VALUES (25, 149543824, '后海/南锣鼓巷地区', '北京参观四合院', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106a12000gdxwablB74F.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=149543824', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.943381, 116.392599, '7.1', '北京');
INSERT INTO `home_travelinfo` VALUES (26, 75600, '昌平城区/十三陵度假区', '明十三陵', 6716, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106d12000imdov3p607F.jpg', '距市中心44.0km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/234.html?poiType=3&scene=online', '30', '0', '已减', '30.0', '2', '门票', 0, 40.28496, 116.247071, '7.1', '北京');
INSERT INTO `home_travelinfo` VALUES (27, 10559691, '鸟巢/奥体中心地区', '奥林匹克公园', 1727, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106v12000ms5fxmk3815.jpg', '距市中心11.9km', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/beijing1/140224.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 40.01706, 116.399559, '7', '北京');
INSERT INTO `home_travelinfo` VALUES (28, 13378901, '古北水镇/司马台长城', '古北水镇', 15398, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104r120008wxqnbrC251.jpg', '距市中心>100km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/1411592.html?poiType=3&scene=online', '140', '6', '已减', '114.0', '2', '门票', 0, 40.659823, 117.284044, '6.9', '北京');
INSERT INTO `home_travelinfo` VALUES (29, 10559019, '鸟巢/奥体中心地区', '鸟巢(国家体育场)', 4972, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100312000jfpfitdF480.jpg', '距市中心10.0km', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/beijing1/52626.html?poiType=66&scene=online', '100', '暂无', '暂无', '免费', '3', '门市价', 0, 39.999924, 116.402152, '6.8', '北京');
INSERT INTO `home_travelinfo` VALUES (30, 87208, '华熙Live五棵松/首钢园', '中国人民革命军事博物馆', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/01A16120008qjuvbw7239.jpg', '距市中心7.2km', '博物馆&展馆', 'https://you.ctrip.com/sight/beijing1/62723.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.914976, 116.330207, '0', '北京');
INSERT INTO `home_travelinfo` VALUES (31, 75598, '天安门/王府井地区', '北海公园', 5202, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100j12000j0xxuim3205.jpg', '距市中心3.1km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/232.html?poiType=3&scene=online', '10', '暂无', '暂无', '免费', '3', '门市价', 0, 39.934571, 116.395154, '6.8', '北京');
INSERT INTO `home_travelinfo` VALUES (32, 87891, '后海/南锣鼓巷地区', '南锣鼓巷', 4266, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0105u12000krkf6rb1AE2.jpg', '距市中心3.7km', '赏花胜地, 城市漫步', 'https://you.ctrip.com/sight/beijing1/64955.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.943562, 116.408878, '6.8', '北京');
INSERT INTO `home_travelinfo` VALUES (33, 84619, '西直门/北京展览馆地区', '北京海洋馆', 6999, '4.4', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106o12000t38a6fb9AF3.jpg', '距市中心7.2km', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/beijing1/52674.html?poiType=3&scene=online', '175', '0', '已减', '175.0', '2', '门票', 0, 39.950152, 116.347541, '6.7', '北京');
INSERT INTO `home_travelinfo` VALUES (34, 145753475, '中关村/五道口', '北京游船观光', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo3s12000pji2ijtE963.png', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=145753475', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 40.008817, 116.280234, '6.7', '北京');
INSERT INTO `home_travelinfo` VALUES (35, 148849016, '天安门/王府井地区', '北京赏红叶', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/100m1f000001gzlv32A13.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=148849016', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 39.924, 116.4034, '6.7', '北京');
INSERT INTO `home_travelinfo` VALUES (36, 75604, '永定门/南站/大红门/南苑地区', '北京大观园', 3929, '4.5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100i12000t38p0ap4BAE.jpg', '距市中心5.7km', '赏花胜地, 园林花园', 'https://you.ctrip.com/sight/beijing1/238.html?poiType=3&scene=online', '40', '0', '已减', '40.0', '2', '门票', 0, 39.87721, 116.362735, '6.6', '北京');
INSERT INTO `home_travelinfo` VALUES (37, 100974, '三里屯/工体/东直门地区', '三里屯', 758, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/10060d0000006xb5nABBF.jpg', '距市中心5.1km', '赏花胜地, 城市漫步', 'https://you.ctrip.com/sight/beijing1/140217.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.940602, 116.458347, '6.6', '北京');
INSERT INTO `home_travelinfo` VALUES (38, 134063452, '慕田峪长城/响水湖长城地区', '慕田峪长城索道滑道', 1219, '4.5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102m12000m568ydh8DA2.jpg', '距市中心60.2km', '缆车索道', 'https://you.ctrip.com/sight/beijing1/134063452.html?poiType=66&scene=online', '200', '0', '已减', '140.0', '2', '门票', 0, 40.437613, 116.570348, '6.6', '北京');
INSERT INTO `home_travelinfo` VALUES (39, 148488528, '上地产业园/西三旗', '北京汉服体验', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104712000rdrozmnB8A2.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=148488528', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 40.073432, 116.256801, '6.6', '北京');
INSERT INTO `home_travelinfo` VALUES (40, 76670, '香山/八大处风景区', '八大处公园', 10928, '4.9', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/100b1f000001gsltw7A06.jpg', '距市中心20.1km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/5305.html?poiType=3&scene=online', '10', '0', '已减', '10.0', '2', '门票', 0, 39.9689, 116.190721, '6.5', '北京');
INSERT INTO `home_travelinfo` VALUES (41, 148928496, '国贸CBD/朝阳大悦城', '北京赏桃花', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103912000fjt7o7m135B.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=148928496', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 39.922294, 116.5085, '6.5', '北京');
INSERT INTO `home_travelinfo` VALUES (42, 10524169, '天安门/王府井地区', '王府井', 2019, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102w12000rqsl8jvF29B.jpg', '距市中心1.2km', '城市漫步, 夜游观景', 'https://you.ctrip.com/sight/beijing1/54198.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.921112, 116.417578, '6.5', '北京');
INSERT INTO `home_travelinfo` VALUES (43, 87211, '西单/金融街地区', '中国地质博物馆', 6193, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104212000h91p88774CE.jpg', '距市中心3.6km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/62726.html?poiType=3&scene=online', '15', '0', '已减', '15.0', '2', '门票', 0, 39.929491, 116.379189, '6.4', '北京');
INSERT INTO `home_travelinfo` VALUES (44, 84621, '西直门/北京展览馆地区', '北京天文馆', 1622, '4.5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106312000liv7t7j9533.jpg', '距市中心7.1km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/52676.html?poiType=3&scene=online', '10', '0', '已减', '10.0', '2', '门票', 0, 39.943013, 116.343321, '6.4', '北京');
INSERT INTO `home_travelinfo` VALUES (45, 10559020, '鸟巢/奥体中心地区', '水立方(国家游泳中心)', 2739, '4.2', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104112000h4g9jgrE77C.jpg', '距市中心10.0km', '地标观景, 夜游观景', 'https://you.ctrip.com/sight/beijing1/52627.html?poiType=3&scene=online', '48', '0', '已减', '48.0', '2', '门票', 0, 39.999151, 116.396578, '6.4', '北京');
INSERT INTO `home_travelinfo` VALUES (46, 156435126, '望京/酒仙桥/798地区', '北京 · 开心麻花大型宫廷舞台剧《甄嬛传》沉浸版', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106p12000tb7j5a328D6.jpg', '距市中心12.0km', '话剧/音乐剧', 'https://you.ctrip.com/sight/beijing1/156435126.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.996221, 116.499373, '6.4', '北京');
INSERT INTO `home_travelinfo` VALUES (47, 76681, '昌平城区/十三陵度假区', '居庸关长城', 4110, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/100u12000000rv3gbAFE2.jpg', '距市中心51.6km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/5316.html?poiType=3&scene=online', '40', '0', '已减', '40.0', '2', '门票', 0, 40.296759, 116.079068, '6.4', '北京');
INSERT INTO `home_travelinfo` VALUES (48, 10524170, '前门/天坛公园/崇文门', '大栅栏', 1134, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100j12000rbfn9i74D58.jpg', '距市中心1.7km', '城市漫步, 夜游观景', 'https://you.ctrip.com/sight/beijing1/54196.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.901535, 116.397634, '6.3', '北京');
INSERT INTO `home_travelinfo` VALUES (49, 75608, '龙庆峡/永宁古城地区', '龙庆峡', 4166, '4.5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100212000t3jqwdaFFF9.jpg', '距市中心79.8km', '赏花胜地, 自然山水', 'https://you.ctrip.com/sight/beijing1/242.html?poiType=3&scene=online', '40', '暂无', '暂无', '免费', '3', '门市价', 0, 40.557687, 116.009457, '6.3', '北京');
INSERT INTO `home_travelinfo` VALUES (50, 10559038, '天安门/王府井地区', '国家大剧院', 2648, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo6a12000rph2ji3827E.jpg', '距市中心1.5km', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/beijing1/54179.html?poiType=66&scene=online', '40', '0', '已减', '36.0', '2', '门票', 0, 39.911208, 116.396206, '6.3', '北京');
INSERT INTO `home_travelinfo` VALUES (51, 76603, '西单/金融街地区', '首都博物馆', 1240, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/100m1f000001gzoylC02F.jpg', '距市中心5.6km', '博物馆&展馆, 夜游观景', 'https://you.ctrip.com/sight/beijing1/5159.html?poiType=3&scene=online', '0', '0', '已减', '128.0', '2', '门票', 0, 39.912093, 116.348673, '6.3', '北京');
INSERT INTO `home_travelinfo` VALUES (52, 76641, '总部基地/丰台体育中心/南宫地区', '世界公园', 5903, '4.3', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo1f12000oyn4vcg4808.jpg', '距市中心14.6km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/5265.html?poiType=66&scene=online', '88', '暂无', '暂无', '免费', '3', '门市价', 0, 39.816786, 116.294299, '6.3', '北京');
INSERT INTO `home_travelinfo` VALUES (53, 84616, '天安门/王府井地区', '天安门城楼', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/100e0g0000008nx060B52.jpg', '距市中心977m', '历史建筑, 夜游观景', 'https://you.ctrip.com/sight/beijing1/52666.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.915087, 116.403946, '0', '北京');
INSERT INTO `home_travelinfo` VALUES (54, 148652764, '八达岭长城/野生动物园地区', '八达岭北线缆车', 100, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100912000f4qkuj4B5CE.jpg', '距市中心60.8km', '暂无', 'https://you.ctrip.com/sight/beijing1/148652764.html?poiType=3&scene=online', '140', '0', '已减', '140.0', '2', '门票', 0, 40.36687, 116.019595, '6.2', '北京');
INSERT INTO `home_travelinfo` VALUES (55, 145115543, '天安门/王府井地区', '天安门广场-国旗', 55, '4.9', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0105v12000n1z1i1g6915.jpg', '距市中心887m', '暂无', 'https://you.ctrip.com/sight/beijing1/145115543.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.913324, 116.404013, '6.2', '北京');
INSERT INTO `home_travelinfo` VALUES (56, 150131958, '暂无', '北京赏海棠花', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0107212000jnlhwn34948.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=150131958', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 39.910534, 116.41378, '6.2', '北京');
INSERT INTO `home_travelinfo` VALUES (57, 90977, '总部基地/丰台体育中心/南宫地区', '北京汽车博物馆', 6353, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104h12000i0bpg1196D7.jpg', '距市中心12.3km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/107839.html?poiType=3&scene=online', '30', '0', '已减', '30.0', '2', '门票', 0, 39.83502, 116.308141, '6.2', '北京');
INSERT INTO `home_travelinfo` VALUES (58, 150059734, '天安门/王府井地区', '北京逛胡同', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/01069120008340n7nE587.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=150059734', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.910534, 116.41378, '6.2', '北京');
INSERT INTO `home_travelinfo` VALUES (59, 155112985, '鸟巢/奥体中心地区', '北京 · Jason Derulo THE LAST DANCE China Tour 巡回演唱会-北京站', 1, '5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0101812000t89zuafC1FB.jpg', '距市中心12.8km', '演唱会', 'https://you.ctrip.com/sight/beijing1/155112985.html?poiType=66&scene=online', '399', '0', '已减', '399.0', '2', '门票', 0, 40.02307, 116.383852, '6.1', '北京');
INSERT INTO `home_travelinfo` VALUES (60, 156431831, '国贸CBD/朝阳大悦城', '《风中写生》泰康保险集团三十周年艺术展', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106g12000t9d40f8C83B.jpg', '距市中心5.2km', '展览', 'https://you.ctrip.com/sight/beijing1/156431831.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.916448, 116.474909, '6.1', '北京');
INSERT INTO `home_travelinfo` VALUES (61, 76604, '门头沟/潭柘寺/妙峰山风景区', '潭柘寺', 3185, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0105312000h155dj32725.jpg', '距市中心32.1km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/5161.html?poiType=3&scene=online', '50', '0', '已减', '50.0', '2', '门票', 0, 39.911133, 116.037591, '6.1', '北京');
INSERT INTO `home_travelinfo` VALUES (62, 76608, '后海/南锣鼓巷地区', '钟鼓楼', 761, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106b120008c2kehh4A33.jpg', '距市中心4.4km', '历史建筑, 博物馆&展馆', 'https://you.ctrip.com/sight/beijing1/5168.html?poiType=3&scene=online', '10', '0', '已减', '10.0', '2', '门票', 0, 39.948807, 116.402238, '6.1', '北京');
INSERT INTO `home_travelinfo` VALUES (63, 75601, '香山/八大处风景区', '香山公园', 6609, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0105t12000jiij2nlA992.jpg', '距市中心21.0km', '赏花胜地, 园林花园', 'https://you.ctrip.com/sight/beijing1/235.html?poiType=3&scene=online', '10', '暂无', '暂无', '免费', '3', '门市价', 0, 39.99621, 116.195182, '6', '北京');
INSERT INTO `home_travelinfo` VALUES (64, 148928490, '天安门/王府井地区', '北京赏梨花', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0101412000fjtenwyDB87.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=148928490', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 39.924091, 116.403414, '6', '北京');
INSERT INTO `home_travelinfo` VALUES (65, 10530007, '北京西站/丽泽商务区', '牛街', 349, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100h12000nggg2jw73B0.jpg', '距市中心4.3km', '赏花胜地, 城市漫步', 'https://you.ctrip.com/sight/beijing1/108396.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.891464, 116.370011, '6', '北京');
INSERT INTO `home_travelinfo` VALUES (66, 87218, '天安门/王府井地区', '中国美术馆', 673, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103012000866a6b75181.jpg', '距市中心2.3km', '博物馆&展馆, 夜游观景', 'https://you.ctrip.com/sight/beijing1/62735.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.931566, 116.415354, '6', '北京');
INSERT INTO `home_travelinfo` VALUES (67, 87948, '华熙Live五棵松/首钢园', '中央广播电视塔', 2358, '4.5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/100k0s000000i226y88DD.jpg', '距市中心8.7km', '地标观景, 夜游观景', 'https://you.ctrip.com/sight/beijing1/65081.html?poiType=3&scene=online', '90', '0', '已减', '79.0', '2', '门票', 0, 39.924902, 116.313471, '6', '北京');
INSERT INTO `home_travelinfo` VALUES (68, 10758243, '鼓楼西大街/南山滑雪场', '南山滑雪场', 2555, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104d12000h4byc28A06D.jpg', '距市中心61.3km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/18606.html?poiType=66&scene=online', '260', '暂无', '暂无', '免费', '3', '门市价', 0, 40.337877, 116.868942, '6', '北京');
INSERT INTO `home_travelinfo` VALUES (69, 148485472, '天安门/王府井地区', '北京赏牡丹花', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102k12000bbdtidoDEB9.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=148485472', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 39.932136, 116.4029, '6', '北京');
INSERT INTO `home_travelinfo` VALUES (70, 148487239, '门头沟/潭柘寺/妙峰山风景区', '北京赏杏花', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103f12000eqwx120141C.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=148487239', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 39.959169, 115.720747, '6', '北京');
INSERT INTO `home_travelinfo` VALUES (71, 88194, '天安门/王府井地区', '人民大会堂', 660, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/100a0b0000005da7l39EB.jpg', '距市中心1.2km', '地标观景, 夜游观景', 'https://you.ctrip.com/sight/beijing1/66130.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.911394, 116.400238, '6', '北京');
INSERT INTO `home_travelinfo` VALUES (72, 153145799, '天安门/王府井地区', '北京探秘皇家古迹', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/100v13000000vbns4B0F4.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=153145799', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.924091, 116.403414, '5.9', '北京');
INSERT INTO `home_travelinfo` VALUES (73, 76631, '国展中心地区', '地坛公园', 1256, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/100v1f000001h1dneB6E1.jpg', '距市中心5.6km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/5215.html?poiType=3&scene=online', '2', '暂无', '暂无', '免费', '3', '门市价', 0, 39.960198, 116.421189, '5.9', '北京');
INSERT INTO `home_travelinfo` VALUES (74, 10521079, '天安门/王府井地区', '故宫珍宝馆', 674, '4.9', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/100p0b0000005z2jz3994.jpg', '距市中心1.9km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/145148.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.926697, 116.406775, '5.9', '北京');
INSERT INTO `home_travelinfo` VALUES (75, 84789, '天安门/王府井地区', '毛主席纪念堂', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0105u12000lxiktrbB9AF.jpg', '距市中心827m', '博物馆&展馆', 'https://you.ctrip.com/sight/beijing1/54291.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.908868, 116.404325, '0', '北京');
INSERT INTO `home_travelinfo` VALUES (76, 87890, '望京/酒仙桥/798地区', '798艺术区', 1431, '4.5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102d12000t383zc284D6.jpg', '距市中心11.7km', '夜游观景', 'https://you.ctrip.com/sight/beijing1/64948.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.991171, 116.501502, '5.9', '北京');
INSERT INTO `home_travelinfo` VALUES (77, 131897139, '环球影城度假区及周边', '未来水世界', 108, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0101k120009novg9tCD3E.jpg', '距市中心24.3km', '亲水乐园, 水上乐园&水世界', 'https://you.ctrip.com/sight/beijing1/131897139.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.864098, 116.692089, '5.8', '北京');
INSERT INTO `home_travelinfo` VALUES (78, 10558681, '古北水镇/司马台长城', '司马台长城', 1519, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1A091900000167iop5E10.jpg', '距市中心>100km', '历史建筑, 夜游观景', 'https://you.ctrip.com/sight/beijing1/10404.html?poiType=3&scene=online', '40', '0', '已减', '40.0', '2', '门票', 0, 40.663935, 117.297324, '5.8', '北京');
INSERT INTO `home_travelinfo` VALUES (79, 76633, '永定门/南站/大红门/南苑地区', '陶然亭公园', 1295, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/10041c000001dpkc1217A.jpg', '距市中心4.0km', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/beijing1/5228.html?poiType=3&scene=online', '2', '0', '已减', '2.0', '2', '门票', 0, 39.88066, 116.388442, '5.8', '北京');
INSERT INTO `home_travelinfo` VALUES (80, 156459437, '环球影城度假区及周边', '北京 · 刘忻 & 遗忘俱乐部 2026《所到之处》巡回演唱会', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100o12000tkz1jp18861.png', '距市中心19.8km', 'livehouse', 'https://you.ctrip.com/sight/beijing1/156459437.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.837, 116.624644, '5.8', '北京');
INSERT INTO `home_travelinfo` VALUES (81, 18648567, '前门/天坛公园/崇文门', '广德楼德云社相声大会', 306, '4.3', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100k12000f6t6rg4D358.jpg', '距市中心1.4km', '暂无', 'https://you.ctrip.com/sight/beijing1/1684582.html?poiType=66&scene=online', '120', '暂无', '暂无', '免费', '3', '门市价', 0, 39.902186, 116.401354, '5.8', '北京');
INSERT INTO `home_travelinfo` VALUES (82, 155112451, '西单/金融街地区', '北京 · 斯拉法的下雪秀-Slava\'s Snow Show', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102c12000ss7lpe47271.png', '距市中心5.3km', '话剧/音乐剧', 'https://you.ctrip.com/sight/beijing1/155112451.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.915045, 116.352164, '5.8', '北京');
INSERT INTO `home_travelinfo` VALUES (83, 76632, '香山/八大处风景区', '国家植物园(原北京植物园)', 1354, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106y1200089a107c7A0F.jpg', '距市中心20.2km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/5217.html?poiType=3&scene=online', '10', '0', '已减', '5.0', '2', '门票', 0, 40.009399, 116.215026, '5.7', '北京');
INSERT INTO `home_travelinfo` VALUES (84, 76609, '后海/南锣鼓巷地区', '鼓楼', 582, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100a12000m5pvyrvC2DE.jpg', '距市中心4.2km', '历史建筑, 博物馆&展馆', 'https://you.ctrip.com/sight/beijing1/5169.html?poiType=3&scene=online', '20', '0', '已减', '20.0', '2', '门票', 0, 39.947128, 116.402299, '5.7', '北京');
INSERT INTO `home_travelinfo` VALUES (85, 152938579, '国贸CBD/朝阳大悦城', '北京 · 开心麻花西部沉浸式互动喜剧《婚礼大镖客》', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103r12000nmbvr49C1FB.png', '距市中心5.7km', '暂无', 'https://you.ctrip.com/sight/beijing1/152938579.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.918377, 116.479763, '5.7', '北京');
INSERT INTO `home_travelinfo` VALUES (86, 149687998, '暂无', '德云社(前门三庆园店)', 87, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo1j12000sg8vgzfFA99.jpg', '距市中心1.3km', '夜游观景', 'https://you.ctrip.com/sight/beijing1/149687998.html?poiType=66&scene=online', '0', '0', '已减', '150.0', '2', '门票', 0, 39.902209, 116.40319, '5.7', '北京');
INSERT INTO `home_travelinfo` VALUES (87, 150023013, '门头沟/潭柘寺/妙峰山风景区', '北京赏玉兰花', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106j12000j0lm4aiB200.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=150023013', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 40.058631, 116.113289, '5.7', '北京');
INSERT INTO `home_travelinfo` VALUES (88, 90975, '八达岭长城/野生动物园地区', '八达岭野生动物世界', 6295, '4.1', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100a12000lt7muah81F2.jpg', '距市中心60.6km', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/beijing1/107837.html?poiType=3&scene=online', '90', '3', '已减', '82.0', '2', '门票', 0, 40.356227, 116.004519, '5.7', '北京');
INSERT INTO `home_travelinfo` VALUES (89, 156462081, '华熙Live五棵松/首钢园', '北京 · 李宇春2026《皇后与梦想》演唱会', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100x12000soekmhd22C9.jpg', '距市中心10.8km', '演唱会', 'https://you.ctrip.com/sight/beijing1/156462081.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.914646, 116.287081, '5.6', '北京');
INSERT INTO `home_travelinfo` VALUES (90, 88036, '前门/天坛公园/崇文门', '老舍茶馆', 1217, '4.4', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo0112000g97ympdDD45.jpg', '距市中心1.3km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/65352.html?poiType=66&scene=online', '100', '0', '已减', '100.0', '2', '门票', 0, 39.906052, 116.399659, '5.7', '北京');
INSERT INTO `home_travelinfo` VALUES (91, 154002486, '望京/酒仙桥/798地区', '《遇见吴哥窟》柬埔寨国家博物馆吴哥文明文物特展', 1, '5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102q12000r8fegbq4B7F.png', '距市中心11.5km', '展览', 'https://you.ctrip.com/sight/beijing1/154002486.html?poiType=66&scene=online', '0', '0', '已减', '67.0', '2', '门票', 0, 39.989759, 116.500884, '5.7', '北京');
INSERT INTO `home_travelinfo` VALUES (92, 154050817, '前门/天坛公园/崇文门', '北京 · 老舍经典话剧《茶馆》', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103112000rhsw9lyF452.jpg', '距市中心1.3km', '话剧/音乐剧', 'https://you.ctrip.com/sight/beijing1/154050817.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.906059, 116.399655, '5.7', '北京');
INSERT INTO `home_travelinfo` VALUES (93, 141044791, '华熙Live五棵松/首钢园', '北京五棵松 MELAND CLUB', 75, '4.4', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo0q12000c9lv51l091E.jpg', '距市中心11.2km', '儿童乐园, 主题乐园&游乐场', 'https://you.ctrip.com/sight/beijing1/141044791.html?poiType=66&scene=online', '0', '0', '已减', '428.0', '2', '门票', 0, 39.918295, 116.283096, '5.6', '北京');
INSERT INTO `home_travelinfo` VALUES (94, 76605, '雁栖湖/红螺寺地区', '红螺寺', 3441, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106g12000af747ml4C15.jpg', '距市中心56.4km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/5162.html?poiType=3&scene=online', '54', '0', '已减', '54.0', '2', '门票', 0, 40.389483, 116.631287, '5.6', '北京');
INSERT INTO `home_travelinfo` VALUES (95, 155112408, '前门/天坛公园/崇文门', '北京 · 俄罗斯芭蕾国家剧院——俄罗斯芭蕾舞剧《天鹅湖》《 胡桃夹子》2026中国巡演', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103g12000ss7lptfAF26.png', '距市中心2.5km', '暂无', 'https://you.ctrip.com/sight/beijing1/155112408.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.889537, 116.402683, '5.6', '北京');
INSERT INTO `home_travelinfo` VALUES (96, 148914455, '天安门/王府井地区', '北京京剧表演', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo5s12000pji42vc557F.png', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=148914455', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.91122, 116.396258, '5.6', '北京');
INSERT INTO `home_travelinfo` VALUES (97, 15151613, '三里屯/工体/东直门地区', '孔庙和国子监博物馆', 873, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104c12000iixi6ehB8B8.jpg', '距市中心4.7km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/1485193.html?poiType=3&scene=online', '30', '暂无', '暂无', '免费', '3', '门市价', 0, 39.95288, 116.420267, '5.6', '北京');
INSERT INTO `home_travelinfo` VALUES (98, 156475586, '环球影城度假区及周边', '北京 · 张月 2026《月章》生日见面会', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100k12000tl35jtg9F3A.png', '距市中心19.8km', 'livehouse', 'https://you.ctrip.com/sight/beijing1/156475586.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.837, 116.624644, '5.8', '北京');
INSERT INTO `home_travelinfo` VALUES (99, 153267120, '三里屯/工体/东直门地区', '北京传统曲艺', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo4512000pji2uau5E7C.png', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=153267120', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 39.937, 116.459701, '5.6', '北京');
INSERT INTO `home_travelinfo` VALUES (100, 75602, '总部基地/丰台体育中心/南宫地区', '卢沟桥', 560, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100212000mti8gfv41E6.jpg', '距市中心17.0km', '地标观景, 夜游观景', 'https://you.ctrip.com/sight/beijing1/236.html?poiType=3&scene=online', '20', '0', '已减', '20.0', '2', '门票', 0, 39.856093, 116.227102, '5.6', '北京');
INSERT INTO `home_travelinfo` VALUES (101, 56381203, '国贸CBD/朝阳大悦城', '北京曲水兰亭水疗', 288, '4.5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/100u1f000001gq8af6E55.jpg', '距市中心8.4km', 'SPA/按摩, 夜游观景', 'https://you.ctrip.com/sight/beijing1/5015398.html?poiType=66&scene=online', '0', '0', '已减', '1208.0', '2', '门票', 0, 39.911218, 116.51187, '5.6', '北京');
INSERT INTO `home_travelinfo` VALUES (102, 87193, '黄花城水长城地区', '黄花城水长城', 4895, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100l12000t3mnazm06B1.jpg', '距市中心57.3km', '清凉漂流, 遛娃宝藏地', 'https://you.ctrip.com/sight/beijing1/62704.html?poiType=3&scene=online', '60', '0', '已减', '58.0', '2', '门票', 0, 40.419151, 116.307302, '5.5', '北京');
INSERT INTO `home_travelinfo` VALUES (103, 156361189, '鸟巢/奥体中心地区', '北京 · 汪苏泷2026《明日世界》世界巡回演唱会', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103i12000d4w7am292F3.jpg', '距市中心9.9km', '演唱会', 'https://you.ctrip.com/sight/beijing1/156361189.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.999521, 116.402381, '5.4', '北京');
INSERT INTO `home_travelinfo` VALUES (104, 13822452, '前门/天坛公园/崇文门', '北京古代建筑博物馆', 224, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102212000ilhl4ajC498.jpg', '距市中心3.2km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/1475967.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.884015, 116.398614, '5.5', '北京');
INSERT INTO `home_travelinfo` VALUES (105, 87129, '后海/南锣鼓巷地区', '北京宋庆龄故居', 1394, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0105j12000j2ke2jw448E.jpg', '距市中心5.0km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/62618.html?poiType=3&scene=online', '20', '0', '已减', '20.0', '2', '门票', 0, 39.951729, 116.389526, '5.5', '北京');
INSERT INTO `home_travelinfo` VALUES (106, 90984, '华熙Live五棵松/首钢园', '太平洋海底世界', 2594, '4.2', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0105612000aufbjs64C20.jpg', '距市中心8.8km', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/beijing1/107846.html?poiType=3&scene=online', '150', '0', '已减', '90.0', '2', '门票', 0, 39.925171, 116.31274, '5.4', '北京');
INSERT INTO `home_travelinfo` VALUES (107, 88200, '首都机场/新国展地区', '中国电影博物馆', 237, '4.4', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104012000iuh9eaaDA33.jpg', '距市中心14.1km', '博物馆&展馆, 夜游观景', 'https://you.ctrip.com/sight/beijing1/66163.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 40.002728, 116.526973, '5.5', '北京');
INSERT INTO `home_travelinfo` VALUES (108, 90851, '香山/八大处风景区', '北京西山国家森林公园', 1596, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo1512000j1x34bwCA96.jpg', '距市中心19.9km', '赏花胜地, 登高爬山', 'https://you.ctrip.com/sight/beijing1/107700.html?poiType=3&scene=online', '10', '0', '已减', '10.0', '2', '门票', 0, 39.981135, 116.199586, '5.4', '北京');
INSERT INTO `home_travelinfo` VALUES (109, 23124876, '上地产业园/西三旗', '陆地游轮西山温泉', 1998, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo0v12000szdqay2EC52.jpg', '距市中心22.6km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/1752651.html?poiType=66&scene=online', '499', '0', '已减', '299.0', '2', '门票', 0, 40.073172, 116.256196, '5.4', '北京');
INSERT INTO `home_travelinfo` VALUES (110, 10758256, '昌平城区/十三陵度假区', '北京军都山滑雪场', 1501, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo5f12000q6uekxnAEDA.jpg', '距市中心37.9km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/19951.html?poiType=66&scene=online', '160', '暂无', '暂无', '免费', '3', '门市价', 0, 40.245312, 116.337849, '5.4', '北京');
INSERT INTO `home_travelinfo` VALUES (111, 153260156, '三里屯/工体/东直门地区', '北京 · 三里屯脱口秀｜周一至周日｜综艺卡司｜吐槽爆笑大会｜开心互动｜【大笑喜剧】即兴之夜精品秀＞', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103l12000p92ar71EA67.jpg', '距市中心5.0km', '暂无', 'https://you.ctrip.com/sight/beijing1/153260156.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.941673, 116.456006, '5.4', '北京');
INSERT INTO `home_travelinfo` VALUES (112, 100544, '总部基地/丰台体育中心/南宫地区', '北京欢乐水魔方', 2069, '4.3', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo0o12000cjcnbn64E42.jpg', '距市中心13.7km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/139663.html?poiType=66&scene=online', '230', '0', '已减', '129.0', '2', '门票', 0, 39.890163, 116.255328, '5.4', '北京');
INSERT INTO `home_travelinfo` VALUES (113, 156443556, '西直门/北京展览馆地区', '北京 · 于祥宇脱口秀专场《最小单位的于祥宇》', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0105p12000tbzq9sv289E.jpg', '距市中心6.8km', '暂无', 'https://you.ctrip.com/sight/beijing1/156443556.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.947251, 116.350752, '5.4', '北京');
INSERT INTO `home_travelinfo` VALUES (114, 149608535, '中关村/五道口', '北京赏蜡梅', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0101r12000gweth1l3E78.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=149608535', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 40.004869, 116.278749, '5.4', '北京');
INSERT INTO `home_travelinfo` VALUES (115, 98275098, '八达岭长城/野生动物园地区', '八达岭索道', 27, '4.4', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102n120008bwdj412481.jpg', '距市中心60.8km', '暂无', 'https://you.ctrip.com/sight/beijing1/98275098.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 40.367476, 116.022156, '5.4', '北京');
INSERT INTO `home_travelinfo` VALUES (116, 142206313, '鸟巢/奥体中心地区', '中国考古博物馆', 41, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106012000iese9g4A91B.jpg', '距市中心10.6km', '博物馆&展馆', 'https://you.ctrip.com/sight/beijing1/142206313.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 40.005392, 116.405433, '5.4', '北京');
INSERT INTO `home_travelinfo` VALUES (117, 148523123, '鸟巢/奥体中心地区', '【北京】《唐宫夜宴》XR大空间沉浸展', 11, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103812000ewokh4bC46D.jpg', '距市中心9.9km', '展览', 'https://you.ctrip.com/sight/beijing1/148523123.html?poiType=66&scene=online', '169', '0', '已减', '169.0', '2', '门票', 0, 39.999352, 116.403049, '5.3', '北京');
INSERT INTO `home_travelinfo` VALUES (118, 156437657, '鸟巢/奥体中心地区', '北京 · 赵雷2026《没有信号》北京鸟巢演唱会', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102b12000d4w8viz2A98.jpg', '距市中心9.9km', '演唱会', 'https://you.ctrip.com/sight/beijing1/156437657.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.99945, 116.402387, '5.3', '北京');
INSERT INTO `home_travelinfo` VALUES (119, 145405642, '八达岭长城/野生动物园地区', '八达岭长城-好汉坡', 56, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1mh0m12000r88b38e28DB.jpg', '距市中心60.6km', '暂无', 'https://you.ctrip.com/sight/beijing1/145405642.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 40.367994, 116.027498, '5.3', '北京');
INSERT INTO `home_travelinfo` VALUES (120, 76600, '三里屯/工体/东直门地区', '国子监', 851, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103e12000ffi2ets5D86.jpg', '距市中心4.7km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/beijing1/5154.html?poiType=3&scene=online', '30', '暂无', '暂无', '免费', '3', '门市价', 0, 39.95288, 116.420267, '5.3', '北京');
INSERT INTO `home_travelinfo` VALUES (121, 76671, '华熙Live五棵松/首钢园', '北京石景山游乐园', 1613, '4.2', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/010691200082jyml7E51E.jpg', '距市中心17.0km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/5306.html?poiType=66&scene=online', '10', '暂无', '暂无', '免费', '3', '门市价', 0, 39.917691, 116.215275, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (122, 156444084, '鸟巢/奥体中心地区', '北京 · 2026大张伟“大好时光-我们伟大的人生”演唱会北京站', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103m12000tc75gda6AF1.jpg', '距市中心10.3km', '演唱会', 'https://you.ctrip.com/sight/beijing1/156444084.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 40.002566, 116.396647, '0', '北京');
INSERT INTO `home_travelinfo` VALUES (123, 84758, '华熙Live五棵松/首钢园', '玉渊潭公园', 1731, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100j12000j2k2wkz30C3.jpg', '距市中心7.6km', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/beijing1/54223.html?poiType=3&scene=online', '2', '暂无', '暂无', '免费', '3', '门市价', 0, 39.922422, 116.326469, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (124, 143709445, '鸟巢/奥体中心地区', '中国工艺美术馆', 45, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100412000f7g6gwjB707.jpg', '距市中心11.1km', '博物馆&展馆, 美术馆&艺术馆', 'https://you.ctrip.com/sight/beijing1/143709445.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 40.010099, 116.403899, '5.3', '北京');
INSERT INTO `home_travelinfo` VALUES (125, 99184, '昌平城区/十三陵度假区', '定陵', 1156, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0101x12000mc5kce374E0.jpg', '距市中心46.1km', '赏花胜地', 'https://you.ctrip.com/sight/beijing1/137984.html?poiType=3&scene=online', '60', '0', '已减', '60.0', '2', '门票', 0, 40.300487, 116.232376, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (126, 90850, '喇叭沟原始森林公园地区', '北京喇叭沟原始森林公园', 2976, '4.5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102312000mbg2fjvA56B.jpg', '距市中心>100km', '赏花胜地, 登高爬山', 'https://you.ctrip.com/sight/beijing1/107699.html?poiType=3&scene=online', '40', '0', '已减', '40.0', '2', '门票', 0, 40.9628, 116.480714, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (127, 76635, '天安门/王府井地区', '中山公园', 916, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0105212000rbwgflbF0C7.jpg', '距市中心1.3km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/5234.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.917025, 116.400765, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (128, 150012509, '暂无', '北京赏迎春花', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104h12000iv22hu13AF3.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=150012509', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 39.910534, 116.41378, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (129, 18129260, '华熙Live五棵松/首钢园', '华熙Live·五棵松', 259, '4.7', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104212000atxyl1g85B0.jpg', '距市中心10.9km', '夜游观景', 'https://you.ctrip.com/sight/beijing1/1508735.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.916758, 116.285912, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (130, 156466970, '环球影城度假区及周边', '北京 · 橙风岛X奥莉兔音乐节', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104f12000tiu8qk499F6.png', '距市中心17.0km', '音乐节', 'https://you.ctrip.com/sight/beijing1/156466970.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.861431, 116.602392, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (131, 148849025, '前门/天坛公园/崇文门', '北京相声表演', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo5l12000pk0v6pp9E67.png', '中国', '暂无', 'https://you.ctrip.com/sight/beijing1/0.html?poiId=148849025', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 39.906, 116.3996, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (132, 68928794, '中关村/五道口', '清华大学艺术博物馆', 121, '4.4', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102r12000id507iy8DEF.jpg', '距市中心12.5km', '博物馆&展馆, 美术馆&艺术馆', 'https://you.ctrip.com/sight/beijing1/5596412.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 40.00764, 116.342213, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (133, 156427915, '华熙Live五棵松/首钢园', '北京 · 张新成「新程 New Journey」巡回演唱会-北京站', 4, '5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0103n12000t8pbyzpF493.jpg', '距市中心10.8km', '演唱会', 'https://you.ctrip.com/sight/beijing1/156427915.html?poiType=66&scene=online', '380', '暂无', '暂无', '免费', '3', '门市价', 0, 39.917645, 116.287186, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (134, 145781280, '欢乐谷游乐区', '北京玛雅海滩水公园', 273, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo2o12000dyfci142DBB.jpg', '距市中心8.8km', '水上乐园&水世界, 夜游观景', 'https://you.ctrip.com/sight/beijing1/145781280.html?poiType=3&scene=online', '299', '0', '已减', '160.0', '2', '门票', 0, 39.873117, 116.504913, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (135, 145446176, '望京/酒仙桥/798地区', 'BIGBANG10 THE EXHIBITION: A TO Z十周年回顾大展北京站', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0105912000s68q3gt8A58.png', '距市中心11.7km', '展览', 'https://you.ctrip.com/sight/beijing1/145446176.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.990445, 116.503059, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (136, 90795, '永定门/南站/大红门/南苑地区', '世界花卉大观园', 3112, '4.5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/35061900000179dro4645.jpg', '距市中心9.0km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/107635.html?poiType=3&scene=online', '80', '0', '已减', '45.0', '2', '门票', 0, 39.84089, 116.360001, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (137, 156624155, '三里屯/工体/东直门地区', '北京 · 毛不易2026《只在今夜》演唱会', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104n12000d4uvjqr6974.jpg', '距市中心4.5km', '演唱会', 'https://you.ctrip.com/sight/beijing1/156624155.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.937323, 116.453542, '5.5', '北京');
INSERT INTO `home_travelinfo` VALUES (138, 144888064, '华熙Live五棵松/首钢园', '首钢一高炉·SoReal科幻乐园', 67, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0105r12000ddcjlyoA881.jpg', '距市中心21.4km', '夜游观景, 主题乐园&游乐场', 'https://you.ctrip.com/sight/beijing1/144888064.html?poiType=3&scene=online', '0', '4', '已减', '95.0', '2', '门票', 0, 39.926679, 116.164008, '4.9', '北京');
INSERT INTO `home_travelinfo` VALUES (139, 156467856, '西直门/北京展览馆地区', '北京 · 徐浩伦和谭湘文、小帕等领衔《脱口秀和Ta的朋友们3》全国巡演｜笑果出品@北京', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102i12000tj106d3EBD1.jpg', '距市中心6.8km', '暂无', 'https://you.ctrip.com/sight/beijing1/156467856.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.947251, 116.350752, '5.1', '北京');
INSERT INTO `home_travelinfo` VALUES (140, 156437205, '三里屯/工体/东直门地区', '北京 · 沉浸式亲子互动儿童剧《白雪公主》', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0105712000tanyh1h6805.png', '距市中心4.2km', '暂无', 'https://you.ctrip.com/sight/beijing1/156437205.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.94771, 116.419161, '5.1', '北京');
INSERT INTO `home_travelinfo` VALUES (141, 76652, '鸟巢/奥体中心地区', '中华民族博物院', 1648, '4.4', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0104c12000h0mfrtqD411.jpg', '距市中心8.9km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/5284.html?poiType=3&scene=online', '60', '0', '已减', '45.0', '2', '门票', 0, 39.989167, 116.397784, '5.1', '北京');
INSERT INTO `home_travelinfo` VALUES (142, 155042364, '三里屯/工体/东直门地区', '北京 · 国内首档机关mapping融合式惊悚喜剧《诡笑楼》', 6, '5', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0107312000sgyvrxq8C31.jpg', '距市中心4.9km', '暂无', 'https://you.ctrip.com/sight/beijing1/155042364.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.940163, 116.456084, '5.2', '北京');
INSERT INTO `home_travelinfo` VALUES (143, 96240547, '国贸CBD/朝阳大悦城', '水裹·汤泉生活', 153, '4.6', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0101r12000cokiuwg29B5.jpg', '距市中心8.6km', '洗浴泡汤', 'https://you.ctrip.com/sight/beijing1/5711687.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.911878, 116.514569, '5.1', '北京');
INSERT INTO `home_travelinfo` VALUES (144, 153507428, '西直门/北京展览馆地区', '北京 · 乌兰图雅《花开四季～心路歌者》音乐演唱会专场', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102m12000cf2pt8q3A2C.png', '距市中心6.8km', '演唱会', 'https://you.ctrip.com/sight/beijing1/153507428.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.947251, 116.350752, '5.1', '北京');
INSERT INTO `home_travelinfo` VALUES (145, 156405495, '鸟巢/奥体中心地区', '北京 · 周深2026「深深的」巡回演唱会 北京站', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0100i12000tnl14467DD0.jpg', '距市中心10.0km', '演唱会', 'https://you.ctrip.com/sight/beijing1/156405495.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.999924, 116.402152, '5.3', '北京');
INSERT INTO `home_travelinfo` VALUES (146, 88572, '三里屯/工体/东直门地区', '富国海底世界', 3163, '4.1', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/100s060000001xv786A85.jpg', '距市中心4.3km', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/beijing1/67588.html?poiType=3&scene=online', '130', '暂无', '暂无', '免费', '3', '门市价', 0, 39.934256, 116.453462, '5.1', '北京');
INSERT INTO `home_travelinfo` VALUES (147, 10521084, '天安门/王府井地区', '长安街', 406, '4.8', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0102112000n5hl5088529.jpg', '距市中心452m', '赏花胜地, 城市漫步', 'https://you.ctrip.com/sight/beijing1/145153.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 39.914246, 116.415894, '5.1', '北京');
INSERT INTO `home_travelinfo` VALUES (148, 10548443, '鸟巢/奥体中心地区', '水立方嬉水乐园', 2893, '4.4', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1A0m170000012w5f4ADE0.jpg', '距市中心10.0km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/beijing1/142572.html?poiType=66&scene=online', '290', '0', '已减', '229.0', '2', '门票', 0, 39.999333, 116.396851, '5.1', '北京');
INSERT INTO `home_travelinfo` VALUES (149, 10759235, '前门/天坛公园/崇文门', '北京刘老根大舞台', 337, '4.4', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/1lo6z12000r8jgfs66897.jpg', '距市中心1.3km', '夜游观景', 'https://you.ctrip.com/sight/beijing1/143318.html?poiType=3&scene=online', '580', '0', '已减', '580.0', '2', '门票', 0, 39.900057, 116.40696, '5.1', '北京');
INSERT INTO `home_travelinfo` VALUES (150, 153435362, '天安门/王府井地区', '北京 · 趣听喜剧x王府井喜悦｜爆笑脱口秀｜全国知名大咖演员', 0, '0', 0, 0, '北京', 'https://dimg04.c-ctrip.com/images/0106812000q0028ld65B0.png', '距市中心686m', '暂无', 'https://you.ctrip.com/sight/beijing1/153435362.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 39.916118, 116.41713, '5.1', '北京');
INSERT INTO `home_travelinfo` VALUES (151, 13412802, '迪士尼度假区', '上海迪士尼度假区', 312956, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo2412000tlpj25e83C4.jpg', '距市中心20.4km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/1412255.html?poiType=3&scene=online', '475', '0', '已减', '389.0', '2', '门票', 0, 31.146785, 121.667662, '10', '上海');
INSERT INTO `home_travelinfo` VALUES (152, 80261, '新国际博览中心/世博园', '上海科技馆', 40812, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0103b12000lkrnxjv140B.jpg', '距市中心6.6km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/18308.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.224356, 121.547823, '6.8', '上海');
INSERT INTO `home_travelinfo` VALUES (153, 76144, '人民广场地区', '上海博物馆', 10055, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102312000hyfn8793D36.jpg', '距市中心296m', '博物馆&展馆, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/3733.html?poiType=3&scene=online', '0', '0', '已减', '135.0', '2', '门票', 0, 31.23419, 121.482126, '7.5', '上海');
INSERT INTO `home_travelinfo` VALUES (154, 80473, '陆家嘴', '上海海洋水族馆', 50550, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo0d12000n68aloo0CBF.jpg', '距市中心2.9km', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/shanghai2/18722.html?poiType=3&scene=online', '160', '3', '已减', '117.0', '2', '门票', 0, 31.246392, 121.508574, '7.7', '上海');
INSERT INTO `home_travelinfo` VALUES (155, 140068129, '新国际博览中心/世博园', '上海千古情', 4623, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo5k12000t2puwg5DEBA.jpg', '距市中心5.0km', '夜游观景, 主题乐园&游乐场', 'https://you.ctrip.com/sight/shanghai2/140068129.html?poiType=3&scene=online', '318', '0', '已减', '139.0', '2', '门票', 0, 31.192248, 121.490642, '7.6', '上海');
INSERT INTO `home_travelinfo` VALUES (156, 75611, '外滩核心区', '外滩', 157085, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102p1200082jbvtcD451.jpg', '距市中心1.8km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/736.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.23855, 121.499319, '10', '上海');
INSERT INTO `home_travelinfo` VALUES (157, 75627, '陆家嘴', '东方明珠', 178662, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo7412000isn0jrbD500.jpg', '距市中心2.7km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/762.html?poiType=3&scene=online', '199', '0', '已减', '199.0', '2', '门票', 0, 31.245414, 121.506379, '8.5', '上海');
INSERT INTO `home_travelinfo` VALUES (158, 75615, '豫园地区', '豫园', 55214, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0103v12000f9ug057967E.jpg', '距市中心1.8km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/740.html?poiType=3&scene=online', '30', '0', '已减', '30.0', '2', '门票', 0, 31.232745, 121.498966, '8.2', '上海');
INSERT INTO `home_travelinfo` VALUES (159, 52075446, '滴水湖临港地区', '上海海昌海洋公园', 57161, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo3m12000t1tcy2pDACB.jpg', '距市中心54.2km', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/shanghai2/4651499.html?poiType=3&scene=online', '299', '0', '已减', '149.0', '2', '门票', 0, 30.91932, 121.912107, '8.1', '上海');
INSERT INTO `home_travelinfo` VALUES (160, 149628236, '乐高乐园度假区', '上海乐高乐园®度假区', 3097, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo1r12000m95gfxk01B6.png', '距市中心52.4km', '夜游观景, 主题乐园&游乐场', 'https://you.ctrip.com/sight/shanghai2/149628236.html?poiType=66&scene=online', '0', '5', '已减', '226.0', '2', '门票', 0, 30.891382, 121.10526, '8.1', '上海');
INSERT INTO `home_travelinfo` VALUES (161, 75624, '南汇/野生动物园', '上海野生动物园', 127292, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo0l12000tlozfzu3FF2.png', '距市中心30.6km', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/shanghai2/758.html?poiType=3&scene=online', '160', '0', '已减', '69.0', '2', '门票', 0, 31.061207, 121.727964, '8', '上海');
INSERT INTO `home_travelinfo` VALUES (162, 24302219, '陆家嘴', '陆家嘴', 3894, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100f1d000001enrubAD5E.jpg', '距市中心2.8km', '赏花胜地, 城市漫步', 'https://you.ctrip.com/sight/shanghai2/1815444.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.24278, 121.509072, '8', '上海');
INSERT INTO `home_travelinfo` VALUES (163, 28408248, '迪士尼度假区', '迪士尼小镇', 26095, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100v0z000000nmk4q9783.jpg', '距市中心20.5km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/1936675.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.14634, 121.667653, '7.9', '上海');
INSERT INTO `home_travelinfo` VALUES (164, 24591219, '陆家嘴', '上海中心大厦', 11837, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo1612000sqncoep0B1B.jpg', '距市中心3.0km', '地标观景, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/1827363.html?poiType=3&scene=online', '180', '6', '已减', '174.0', '2', '门票', 0, 31.239212, 121.511937, '7.6', '上海');
INSERT INTO `home_travelinfo` VALUES (165, 152948358, '人民广场地区', '上海展馆深度游览', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0103i120008bq7eap6FEA.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/shanghai2/0.html?poiId=152948358', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.234189, 121.482126, '7.6', '上海');
INSERT INTO `home_travelinfo` VALUES (166, 69572753, '滴水湖临港地区', '上海天文馆', 9157, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/01069120009ze52fdA92D.jpg', '距市中心55.8km', '夜游观景', 'https://you.ctrip.com/sight/shanghai2/69572753.html?poiType=3&scene=online', '30', '暂无', '暂无', '免费', '3', '门市价', 0, 30.919028, 121.933171, '7.5', '上海');
INSERT INTO `home_travelinfo` VALUES (167, 98472, '外滩核心区', '黄浦江游览(十六铺码头)', 16058, '4.4', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0EQ2o12000f27q5n8AB20.jpg', '距市中心2.2km', '夜游观景, 乘船游览', 'https://you.ctrip.com/sight/shanghai2/137059.html?poiType=3&scene=online', '120', '0', '已减', '108.0', '2', '门票', 0, 31.234907, 121.503078, '7.5', '上海');
INSERT INTO `home_travelinfo` VALUES (168, 10524093, '豫园地区', '城隍庙旅游区', 10093, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100l1f000001gqi1p4B80.jpg', '距市中心1.9km', '赏花胜地, 城市漫步', 'https://you.ctrip.com/sight/shanghai2/5691.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.231471, 121.499034, '7.4', '上海');
INSERT INTO `home_travelinfo` VALUES (169, 81728, '虹桥地区', '上海动物园', 26431, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo6712000ri986dn55BB.jpg', '距市中心11.3km', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/shanghai2/25506.html?poiType=3&scene=online', '40', '0', '已减', '40.0', '2', '门票', 0, 31.199023, 121.369284, '7.4', '上海');
INSERT INTO `home_travelinfo` VALUES (170, 76790, '静安寺/南京西路', '上海自然博物馆', 10608, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104012000erfslc677F3.jpg', '距市中心1.2km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/5646.html?poiType=3&scene=online', '30', '暂无', '暂无', '免费', '3', '门市价', 0, 31.241162, 121.469147, '7.4', '上海');
INSERT INTO `home_travelinfo` VALUES (171, 80719, '新国际博览中心/世博园', '磁浮列车', 8897, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100310000000oub48165C.jpg', '距市中心8.6km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/20786.html?poiType=66&scene=online', '50', '0', '已减', '50.0', '2', '门票', 0, 31.208449, 121.564146, '7.3', '上海');
INSERT INTO `home_travelinfo` VALUES (172, 24301253, '暂无', '黄浦江', 3207, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100d1c000001d59od1BE9.jpg', '距市中心2.4km', '自然山水, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/1815443.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.24791, 121.501173, '7.2', '上海');
INSERT INTO `home_travelinfo` VALUES (173, 30745956, '陆家嘴', '上海之巅观光厅', 14737, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo4t12000c9r2belE445.jpg', '距市中心3.1km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/2005734.html?poiType=3&scene=online', '180', '6', '已减', '174.0', '2', '门票', 0, 31.239205, 121.512342, '7.2', '上海');
INSERT INTO `home_travelinfo` VALUES (174, 10524119, '人民广场地区', '南京路步行街', 44308, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100h12000t36b6i67E3C.jpg', '距市中心840m', '赏花胜地, 城市漫步', 'https://you.ctrip.com/sight/shanghai2/3739.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.241924, 121.486099, '7.2', '上海');
INSERT INTO `home_travelinfo` VALUES (175, 79170, '青浦朱家角/东方绿舟', '朱家角古镇景区', 4372, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102n12000j11dauo6575.jpg', '距市中心42.3km', '赏花胜地, 古镇古村', 'https://you.ctrip.com/sight/shanghai2/14903.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.120177, 121.057041, '7.1', '上海');
INSERT INTO `home_travelinfo` VALUES (176, 140950753, '滴水湖临港地区', '交通银行耀雪冰雪世界', 6729, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo0b12000ey2b4ze19E1.jpg', '距市中心53.8km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/140950753.html?poiType=66&scene=online', '240', '0', '已减', '230.0', '2', '门票', 0, 30.925281, 121.912595, '7', '上海');
INSERT INTO `home_travelinfo` VALUES (177, 148886229, '新国际博览中心/世博园', '上海温室花园', 2594, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo2k12000ffjn0dl2A5A.jpg', '距市中心5.8km', '赏花胜地, 园林花园', 'https://you.ctrip.com/sight/shanghai2/148886229.html?poiType=3&scene=online', '98', '0', '已减', '68.0', '2', '门票', 0, 31.184196, 121.481344, '7', '上海');
INSERT INTO `home_travelinfo` VALUES (178, 10559194, '佘山/松江大学城', '上海欢乐谷', 30330, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo2912000tgdvmtgA2FD.jpg', '距市中心28.8km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/65957.html?poiType=66&scene=online', '199', '5', '已减', '175.0', '2', '门票', 0, 31.101493, 121.221418, '6.9', '上海');
INSERT INTO `home_travelinfo` VALUES (179, 150005760, '暂无', 'TASTE OF CHINA 中国味 沉浸式餐厅', 616, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo2e12000qgdu20b7BC1.jpg', '距市中心1.3km', '夜游观景', 'https://you.ctrip.com/sight/shanghai2/150005760.html?poiType=3&scene=online', '788', '0', '已减', '678.0', '2', '门票', 0, 31.241001, 121.492514, '7', '上海');
INSERT INTO `home_travelinfo` VALUES (180, 124908212, '陆家嘴', '浦东美术馆', 2937, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo3f12000sop2kla46D0.jpg', '距市中心2.3km', '博物馆&展馆, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/124908212.html?poiType=66&scene=online', '0', '0', '已减', '80.0', '2', '门票', 0, 31.243762, 121.50292, '6.9', '上海');
INSERT INTO `home_travelinfo` VALUES (181, 151074788, '人民广场地区', '上海citywalk', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0101712000juezsps3F03.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/shanghai2/0.html?poiId=151074788', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 31.236351, 121.48024, '6.8', '上海');
INSERT INTO `home_travelinfo` VALUES (182, 10559490, '淮海路/新天地地区', '武康路', 816, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0101712000hk8rkej6180.jpg', '距市中心3.8km', '赏花胜地, 城市漫步', 'https://you.ctrip.com/sight/shanghai2/132538.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.217481, 121.447559, '6.8', '上海');
INSERT INTO `home_travelinfo` VALUES (183, 10534110, '佘山/松江大学城', '广富林文化遗址', 7660, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100m0t000000ixyunF58C.jpg', '距市中心32.4km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/shanghai2/111500.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.067938, 121.202071, '6.7', '上海');
INSERT INTO `home_travelinfo` VALUES (184, 131917111, '新国际博览中心/世博园', '世博文化公园', 330, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104012000t38bykxB456.jpg', '距市中心5.6km', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/5719807.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.185968, 121.483089, '6.7', '上海');
INSERT INTO `home_travelinfo` VALUES (185, 130847455, '新国际博览中心/世博园', '上海博物馆(东馆)', 342, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100o12000iktxih9B837.jpg', '距市中心6.3km', '博物馆&展馆, 美术馆&艺术馆', 'https://you.ctrip.com/sight/shanghai2/5717748.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.226244, 121.545263, '6.7', '上海');
INSERT INTO `home_travelinfo` VALUES (186, 24313002, '陆家嘴', '金茂大厦88层观光厅', 4049, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo4612000cr7czoa045A.jpg', '距市中心3.0km', '地标观景, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/1816019.html?poiType=3&scene=online', '120', '0', '已减', '83.0', '2', '门票', 0, 31.240326, 121.511615, '6.6', '上海');
INSERT INTO `home_travelinfo` VALUES (187, 80258, '陆家嘴', '外滩观光隧道', 4127, '4', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100y12000jwhjmklD2D1.jpg', '距市中心2.4km', '夜游观景', 'https://you.ctrip.com/sight/shanghai2/18300.html?poiType=3&scene=online', '50', '0', '已减', '50.0', '2', '门票', 0, 31.244014, 121.503879, '6.6', '上海');
INSERT INTO `home_travelinfo` VALUES (188, 76783, '交大/闵行经济开发区', '上海影视乐园', 10208, '4.3', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo0412000e144hcpE5B0.jpg', '距市中心28.9km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/5622.html?poiType=3&scene=online', '60', '0', '已减', '40.0', '2', '门票', 0, 31.016575, 121.318364, '6.5', '上海');
INSERT INTO `home_travelinfo` VALUES (189, 150008546, '人民广场地区', '上海赏郁金香', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0101712000irywajv85E6.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/shanghai2/0.html?poiId=150008546', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 31.236351, 121.48024, '6.5', '上海');
INSERT INTO `home_travelinfo` VALUES (190, 91002, '人民广场地区', '人民广场', 10482, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100h1f000001gruggD1C5.jpg', '距市中心212m', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/107864.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.234736, 121.481492, '6.5', '上海');
INSERT INTO `home_travelinfo` VALUES (191, 143174242, '淮海路/新天地地区', 'INS LAND新乐园', 393, '4.4', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo0n12000jj31ja042A7.jpg', '距市中心1.4km', '城市漫步, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/143174242.html?poiType=66&scene=online', '168', '0', '已减', '168.0', '2', '门票', 0, 31.223867, 121.4768, '6.5', '上海');
INSERT INTO `home_travelinfo` VALUES (192, 80267, '人民广场地区', '上海杜莎夫人蜡像馆', 16144, '4.5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo4r12000t4ub70wF348.jpg', '距市中心457m', '博物馆&展馆, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/18316.html?poiType=66&scene=online', '210', '0', '已减', '159.0', '2', '门票', 0, 31.240463, 121.47988, '6.4', '上海');
INSERT INTO `home_travelinfo` VALUES (193, 148852246, '外滩核心区', '上海游船观光', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0101512000f6cn3ceD44E.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/shanghai2/0.html?poiId=148852246', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.243444, 121.497224, '6.4', '上海');
INSERT INTO `home_travelinfo` VALUES (194, 142248121, '人民广场地区', '上海 · 环境式驻演音乐剧《阿波罗尼亚》', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0105r12000g55j09tFB3E.png', '距市中心568m', '话剧/音乐剧', 'https://you.ctrip.com/sight/shanghai2/142248121.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.23977, 121.484619, '6.4', '上海');
INSERT INTO `home_travelinfo` VALUES (195, 31677117, '陆家嘴', '黄浦江游览（东方明珠码头）', 843, '4.3', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo1t12000mca43kdBDA7.jpg', '距市中心2.5km', '夜游观景, 乘船游览', 'https://you.ctrip.com/sight/shanghai2/2044897.html?poiType=66&scene=online', '160', '0', '已减', '95.0', '2', '门票', 0, 31.246281, 121.503539, '6.3', '上海');
INSERT INTO `home_travelinfo` VALUES (196, 78448, '淮海路/新天地地区', '复兴公园', 572, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0101b12000nu495po212D.jpg', '距市中心1.6km', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/11176.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.222944, 121.475676, '6.3', '上海');
INSERT INTO `home_travelinfo` VALUES (197, 10524092, '淮海路/新天地地区', '新天地', 2358, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102b12000ikrtzlmD5F8.jpg', '距市中心878m', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/shanghai2/18739.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.228445, 121.480625, '6.2', '上海');
INSERT INTO `home_travelinfo` VALUES (198, 91770, '嘉定新城', '上海汽车博物馆', 6525, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100h0q000000gcq3r672F.jpg', '距市中心29.3km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/110254.html?poiType=3&scene=online', '60', '0', '已减', '55.0', '2', '门票', 0, 31.284654, 121.176829, '6.2', '上海');
INSERT INTO `home_travelinfo` VALUES (199, 143237506, '人民广场地区', '上海 · 阿波罗尼亚前传：环境式驻演音乐剧《桑塔露琪亚》', 1, '4', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104z12000cpbqgml73F0.png', '距市中心335m', '话剧/音乐剧', 'https://you.ctrip.com/sight/shanghai2/143237506.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.234047, 121.478012, '6.2', '上海');
INSERT INTO `home_travelinfo` VALUES (200, 10524091, '打浦桥地区', '田子坊', 3689, '4.5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100e1f000001gt1ey32DA.jpg', '距市中心2.5km', '历史建筑, 城市漫步', 'https://you.ctrip.com/sight/shanghai2/64755.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.214302, 121.475094, '6.1', '上海');
INSERT INTO `home_travelinfo` VALUES (201, 149996798, '北外滩地区', 'The Stage 白玉兰观景台', 428, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo0e12000jmrfrd28150.jpg', '距市中心3.1km', '夜游观景', 'https://you.ctrip.com/sight/shanghai2/149996798.html?poiType=66&scene=online', '230', '0', '已减', '119.0', '2', '门票', 0, 31.254679, 121.504402, '6.1', '上海');
INSERT INTO `home_travelinfo` VALUES (202, 22879410, '上海火车站地区', '上海四行仓库抗战纪念馆', 420, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100e12000m82vq1t77CB.jpg', '距市中心1.1km', '历史建筑, 博物馆&展馆', 'https://you.ctrip.com/sight/shanghai2/1726870.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.246241, 121.477447, '6.1', '上海');
INSERT INTO `home_travelinfo` VALUES (203, 80268, '新国际博览中心/世博园', '中华艺术宫', 1333, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1001080000003c2jz5227.jpg', '距市中心5.5km', '博物馆&展馆, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/18317.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.190005, 121.501315, '6.1', '上海');
INSERT INTO `home_travelinfo` VALUES (204, 153453545, '人民广场地区', '上海 · 沉浸式悬念剧场《9号秘事》', 1, '5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0106j12000q9aizfsB0EC.jpg', '距市中心209m', '话剧/音乐剧', 'https://you.ctrip.com/sight/shanghai2/153453545.html?poiType=66&scene=online', '0', '0', '已减', '239.0', '2', '门票', 0, 31.235344, 121.478399, '6.1', '上海');
INSERT INTO `home_travelinfo` VALUES (205, 10758168, '外滩核心区', '浦江游览', 1531, '4.5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104f12000lymyy1t7FDF.jpg', '距市中心1.8km', '夜游观景, 乘船游览', 'https://you.ctrip.com/sight/shanghai2/11160.html?poiType=66&scene=online', '120', '0', '已减', '108.0', '2', '门票', 0, 31.238673, 121.499417, '6', '上海');
INSERT INTO `home_travelinfo` VALUES (206, 156571608, '暂无', 'RED LAND 2026', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0103t12000tli7l3i9AC8.png', '距市中心10.5km', '展览', 'https://you.ctrip.com/sight/shanghai2/156571608.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.292789, 121.568766, '6.2', '上海');
INSERT INTO `home_travelinfo` VALUES (207, 143192731, '迪士尼度假区', '疯狂动物城', 126, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo6312000dmg35udA7C8.png', '距市中心20.0km', '夜游观景, 主题乐园&游乐场', 'https://you.ctrip.com/sight/shanghai2/143192731.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.152566, 121.665835, '6', '上海');
INSERT INTO `home_travelinfo` VALUES (208, 75618, '静安寺/南京西路', '静安寺', 1595, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102a12000lwst9pi6068.jpg', '距市中心2.8km', '历史建筑, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/744.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.22985, 121.451754, '6', '上海');
INSERT INTO `home_travelinfo` VALUES (209, 155110181, '四川北路商业区', '上海 · Charlie Puth: Whatever\'s Clever! World Tour 上海站', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100p12000tlmds9wB8F9.jpg', '距市中心4.6km', '演唱会', 'https://you.ctrip.com/sight/shanghai2/155110181.html?poiType=66&scene=online', '480', '0', '已减', '480.0', '2', '门票', 0, 31.276959, 121.48728, '6', '上海');
INSERT INTO `home_travelinfo` VALUES (210, 18054301, '陆家嘴', '都市观光巴士', 1944, '4.3', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo5612000fmjjzz932B4.jpg', '距市中心2.8km', '巴士观光', 'https://you.ctrip.com/sight/shanghai2/1488031.html?poiType=66&scene=online', '60', '0', '已减', '57.0', '2', '门票', 0, 31.244773, 121.507435, '5.9', '上海');
INSERT INTO `home_travelinfo` VALUES (211, 149543803, '新国际博览中心/世博园', '上海旗袍体验', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0101812000ge4giqk1DB3.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/shanghai2/0.html?poiId=149543803', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.1929, 121.491182, '5.9', '上海');
INSERT INTO `home_travelinfo` VALUES (212, 10559177, '滴水湖临港地区', '滴水湖', 805, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100q1f000001grk405E17.jpg', '距市中心57.9km', '赏花胜地, 自然山水', 'https://you.ctrip.com/sight/shanghai2/64745.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 30.903569, 121.947301, '5.9', '上海');
INSERT INTO `home_travelinfo` VALUES (213, 90595, '滴水湖临港地区', '中国航海博物馆', 6330, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0103x12000iivrxrz54EF.jpg', '距市中心56.4km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/107382.html?poiType=3&scene=online', '30', '0', '已减', '27.0', '2', '门票', 0, 30.902522, 121.926133, '5.8', '上海');
INSERT INTO `home_travelinfo` VALUES (214, 155102331, '徐家汇地区', '上海玩偶艺术双年展WonderDolls2026', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104u12000spv96qw02CF.png', '距市中心6.7km', '展览', 'https://you.ctrip.com/sight/shanghai2/155102331.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.180519, 121.453796, '5.8', '上海');
INSERT INTO `home_travelinfo` VALUES (215, 10758356, '大宁国际商业区', '上海马戏城', 1656, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104d120009yqfloqC381.jpg', '距市中心5.7km', '地标观景', 'https://you.ctrip.com/sight/shanghai2/49031.html?poiType=3&scene=online', '380', '0', '已减', '361.0', '2', '门票', 0, 31.28415, 121.457515, '5.8', '上海');
INSERT INTO `home_travelinfo` VALUES (216, 152948386, '四川北路商业区', '上海本帮菜品鉴与烹饪', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo1412000o7htczs8144.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/shanghai2/0.html?poiId=152948386', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.284127, 121.494274, '5.8', '上海');
INSERT INTO `home_travelinfo` VALUES (217, 136463991, '陆家嘴', '漾·SPACE汤泉生活', 472, '4.4', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0103s12000f6ujx9i27AC.jpg', '距市中心4.3km', '洗浴泡汤', 'https://you.ctrip.com/sight/shanghai2/136463991.html?poiType=66&scene=online', '399', '0', '已减', '299.0', '2', '门票', 0, 31.223158, 121.522903, '5.8', '上海');
INSERT INTO `home_travelinfo` VALUES (218, 156400584, '前滩', '上海 · 童漠男脱口秀专场《寻找王医生·北下关特别版》丨笑果出品@上海', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0101612000t3frcet4F5E.jpg', '距市中心8.9km', '暂无', 'https://you.ctrip.com/sight/shanghai2/156400584.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.156571, 121.49152, '5.8', '上海');
INSERT INTO `home_travelinfo` VALUES (219, 156474084, '徐家汇地区', '2026NBA上海篮球盛典', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100812000tl9rte103C9.jpg', '距市中心6.4km', '赛事', 'https://you.ctrip.com/sight/shanghai2/156474084.html?poiType=66&scene=online', '0', '0', '已减', '200.0', '2', '门票', 0, 31.187901, 121.44466, '6', '上海');
INSERT INTO `home_travelinfo` VALUES (220, 148930981, '虹桥地区', '曲水兰亭(上海虹桥店)', 110, '4.5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0101h12000pcnvfp05CC6.jpg', '距市中心9.6km', '夜游观景, 洗浴泡汤', 'https://you.ctrip.com/sight/shanghai2/148930981.html?poiType=66&scene=online', '1538.9', '0', '已减', '1538.0', '2', '门票', 0, 31.195854, 121.390444, '5.8', '上海');
INSERT INTO `home_travelinfo` VALUES (221, 75621, '淮海路/新天地地区', '中国共产党第一次全国代表大会会址', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo0b12000bcucrzv7221.jpg', '距市中心1.2km', '历史建筑, 博物馆&展馆', 'https://you.ctrip.com/sight/shanghai2/750.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.226053, 121.481828, '0', '上海');
INSERT INTO `home_travelinfo` VALUES (222, 90596, '佘山/松江大学城', '上海辰山植物园', 6016, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0105f12000h4uay60360C.jpg', '距市中心32.6km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/107383.html?poiType=3&scene=online', '60', '0', '已减', '60.0', '2', '门票', 0, 31.082127, 121.188969, '5.7', '上海');
INSERT INTO `home_travelinfo` VALUES (223, 101858, '佘山/松江大学城', '上海玛雅海滩水公园', 15375, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo3g12000tmopzcn2C4F.jpg', '距市中心29.2km', '水上乐园&水世界, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/141307.html?poiType=66&scene=online', '249', '0', '已减', '129.0', '2', '门票', 0, 31.101182, 121.217086, '5.7', '上海');
INSERT INTO `home_travelinfo` VALUES (224, 156357585, '徐家汇地区', '《史前星球：恐龙篇》沉浸式巨幕体验展', 6, '3.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0103x12000sxdynkcF0B0.jpg', '距市中心7.0km', '展览', 'https://you.ctrip.com/sight/shanghai2/156357585.html?poiType=66&scene=online', '138', '0', '已减', '133.0', '2', '门票', 0, 31.173783, 121.470319, '5.7', '上海');
INSERT INTO `home_travelinfo` VALUES (225, 69138739, '陆家嘴', '上海环球金融中心观光厅', 145, '4.3', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102p120008tw852q2C90.jpg', '距市中心3.2km', '地标观景, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/69138739.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.240165, 121.514083, '5.7', '上海');
INSERT INTO `home_travelinfo` VALUES (226, 156373085, '陆家嘴', '上海 · 斯拉法的下雪秀-Slava\'s Snow Show', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104712000t20dvdm372D.jpg', '距市中心4.2km', '话剧/音乐剧', 'https://you.ctrip.com/sight/shanghai2/156373085.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.250141, 121.520794, '5.7', '上海');
INSERT INTO `home_travelinfo` VALUES (227, 154011407, '人民广场地区', '《世界树之巅》美洲古代文明大展', 73, '4.5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0103v12000sez9fxb58D3.jpg', '距市中心296m', '展览, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/154011407.html?poiType=66&scene=online', '0', '0', '已减', '135.0', '2', '门票', 0, 31.23419, 121.482126, '5.6', '上海');
INSERT INTO `home_travelinfo` VALUES (228, 61115410, '外滩核心区', '黄浦江游览(金陵东路码头)', 598, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102s12000f6q7xqzE259.jpg', '距市中心1.9km', '夜游观景, 乘船游览', 'https://you.ctrip.com/sight/shanghai2/5252407.html?poiType=66&scene=online', '100', '0', '已减', '88.0', '2', '门票', 0, 31.238017, 121.499784, '5.7', '上海');
INSERT INTO `home_travelinfo` VALUES (229, 149998065, '人民广场地区', '上海赏樱花', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104812000ilofjy6E36E.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/shanghai2/0.html?poiId=149998065', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 31.236351, 121.48024, '5.6', '上海');
INSERT INTO `home_travelinfo` VALUES (230, 153975015, '四川北路商业区', '上海 · 「71特别秀」沪语/普通话脱口秀•SpicyComedy', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0101g12000qybc1ouEADB.png', '距市中心2.4km', '暂无', 'https://you.ctrip.com/sight/shanghai2/153975015.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.25555, 121.490706, '5.6', '上海');
INSERT INTO `home_travelinfo` VALUES (231, 10520131, '淮海路/新天地地区', '安福路', 172, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1A091800000159evl2D51.jpg', '距市中心3.6km', '赏花胜地, 城市漫步', 'https://you.ctrip.com/sight/shanghai2/144200.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.219818, 121.447792, '5.6', '上海');
INSERT INTO `home_travelinfo` VALUES (232, 80556, '陆家嘴', '上海大自然野生昆虫馆（东方明珠•爬宠昆虫探索中心）', 3882, '4.4', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo5n12000of7q40nDC14.jpg', '距市中心2.7km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/19664.html?poiType=3&scene=online', '0', '0', '已减', '68.0', '2', '门票', 0, 31.2455, 121.50627, '5.6', '上海');
INSERT INTO `home_travelinfo` VALUES (233, 10523819, '淮海路/新天地地区', '思南公馆', 624, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0101012000pk93rty74A6.jpg', '距市中心1.8km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/shanghai2/147878.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.220574, 121.475467, '5.6', '上海');
INSERT INTO `home_travelinfo` VALUES (234, 149614037, '崇明岛/长兴岛/横沙岛', '上海赏银杏', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100i12000gzp6eeaC391.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/shanghai2/0.html?poiId=149614037', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 31.68975, 121.487563, '5.6', '上海');
INSERT INTO `home_travelinfo` VALUES (235, 94544, '衡山路地区', '武康大楼', 579, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102e12000hyccmny78D3.jpg', '距市中心4.4km', '历史建筑', 'https://you.ctrip.com/sight/shanghai2/132515.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.210823, 121.444642, '5.6', '上海');
INSERT INTO `home_travelinfo` VALUES (236, 145736045, '大宁国际商业区', '叙宴(上海旗舰店)', 742, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo6h12000rrfhzq446A8.jpg', '距市中心7.2km', '夜游观景', 'https://you.ctrip.com/sight/shanghai2/145736045.html?poiType=66&scene=online', '398', '0', '已减', '398.0', '2', '门票', 0, 31.300401, 121.465053, '5.5', '上海');
INSERT INTO `home_travelinfo` VALUES (237, 156382755, '中山公园商业区', '上海 · 2026 P1Harmony FAN MEETING \"PHANTOM SIGNAL\"', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100212000t2m4if0A5E1.jpg', '距市中心4.9km', '演唱会', 'https://you.ctrip.com/sight/shanghai2/156382755.html?poiType=66&scene=online', '780', '暂无', '暂无', '免费', '3', '门市价', 0, 31.226848, 121.430454, '5.5', '上海');
INSERT INTO `home_travelinfo` VALUES (238, 152179375, '北外滩地区', '上海 · 开心麻花喜剪吹沉浸剧场《疯狂理发店》', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102u12000m6t7usl882E.png', '距市中心4.5km', '暂无', 'https://you.ctrip.com/sight/shanghai2/152179375.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.270062, 121.505281, '5.5', '上海');
INSERT INTO `home_travelinfo` VALUES (239, 156361738, '淮海路/新天地地区', '上海 · 音乐剧《危险游戏》十周年纪念·特别演出季', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0103o12000syjvhe25A07.jpg', '距市中心566m', '话剧/音乐剧', 'https://you.ctrip.com/sight/shanghai2/156361738.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.2347, 121.485942, '5.5', '上海');
INSERT INTO `home_travelinfo` VALUES (240, 56140154, '静安寺/南京西路', '上海《不眠之夜》', 346, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo3312000su2e2c4086A.jpg', '距市中心1.7km', '暂无', 'https://you.ctrip.com/sight/shanghai2/4976341.html?poiType=66&scene=online', '790', '暂无', '暂无', '免费', '3', '门市价', 0, 31.23642, 121.462204, '5.5', '上海');
INSERT INTO `home_travelinfo` VALUES (241, 153508452, '淮海路/新天地地区', '上海 · 原创沉浸式荒诞音乐剧《破墙》', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100o12000qr848pgE08B.png', '距市中心572m', '暂无', 'https://you.ctrip.com/sight/shanghai2/153508452.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.234247, 121.48581, '5.5', '上海');
INSERT INTO `home_travelinfo` VALUES (242, 25073031, '长风公园地区', '上海乐高探索中心', 3010, '4.5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0101s120008ptxurqFC6C.jpg', '距市中心7.5km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/1838224.html?poiType=66&scene=online', '215', '0', '已减', '215.0', '2', '门票', 0, 31.228928, 121.401968, '5.5', '上海');
INSERT INTO `home_travelinfo` VALUES (243, 75614, '陆家嘴', '金茂大厦', 7617, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/010691200083ix667DB18.jpg', '距市中心3.1km', '地标观景, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/739.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.240944, 121.512267, '5.5', '上海');
INSERT INTO `home_travelinfo` VALUES (244, 156458382, '前滩', '上海 · h3R3刘清云 2026《回响》巡演', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102412000cf1pv0g6D0C.png', '距市中心7.9km', 'livehouse', 'https://you.ctrip.com/sight/shanghai2/156458382.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.165636, 121.480486, '5.5', '上海');
INSERT INTO `home_travelinfo` VALUES (245, 156388051, '徐家汇地区', '上海 · 李荣浩《黑马》世界巡回演唱会', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104k12000d4ui7cr12A6.jpg', '距市中心6.2km', '演唱会', 'https://you.ctrip.com/sight/shanghai2/156388051.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.187715, 121.448402, '5.5', '上海');
INSERT INTO `home_travelinfo` VALUES (246, 58278369, '佘山/松江大学城', '上海佘山国家旅游度假区', 31, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104812000ri98m8bF0F3.jpg', '距市中心30.3km', '赏花胜地, 登高爬山', 'https://you.ctrip.com/sight/shanghai2/5140522.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.095504, 121.207368, '5.5', '上海');
INSERT INTO `home_travelinfo` VALUES (247, 149921176, '淮海路/新天地地区', '上海 · 环境式光影艺术悬疑剧《禁忌的色彩》', 1, '5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0106q12000i8pdl9qCB67.png', '距市中心2.2km', '赏花胜地, 话剧/音乐剧', 'https://you.ctrip.com/sight/shanghai2/149921176.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.217025, 121.482813, '5.4', '上海');
INSERT INTO `home_travelinfo` VALUES (248, 149936113, '佘山/松江大学城', '上海赏梅花', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104m12000igv7aueFD31.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/shanghai2/0.html?poiId=149936113', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 31.081656, 121.189029, '5.4', '上海');
INSERT INTO `home_travelinfo` VALUES (249, 75613, '江湾/五角场商业区', '上海共青森林公园', 2944, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/01A6l120008p0tdzqCC2E.jpg', '距市中心12.3km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/738.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.325479, 121.558059, '5.4', '上海');
INSERT INTO `home_travelinfo` VALUES (250, 73137460, '人民广场地区', '上海星空艺术馆', 638, '3.9', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102s120008sd1eg25B73.jpg', '距市中心1.2km', '夜游观景, 美术馆&艺术馆', 'https://you.ctrip.com/sight/shanghai2/5657397.html?poiType=3&scene=online', '68', '0', '已减', '39.8', '2', '门票', 0, 31.242477, 121.490252, '5.4', '上海');
INSERT INTO `home_travelinfo` VALUES (251, 150477703, '滴水湖临港地区', '交通银行耀雪水世界', 852, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo2r12000k07b8jn8B99.jpg', '距市中心53.7km', '水上乐园&水世界, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/150477703.html?poiType=66&scene=online', '260', '0', '已减', '220.0', '2', '门票', 0, 30.926102, 121.911982, '5.4', '上海');
INSERT INTO `home_travelinfo` VALUES (252, 156455402, '前滩', '上海 · 高天佐 2026《美丽人生》全国巡演', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0105p12000tf0xmexC590.jpg', '距市中心7.9km', 'livehouse', 'https://you.ctrip.com/sight/shanghai2/156455402.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.165636, 121.480486, '5.4', '上海');
INSERT INTO `home_travelinfo` VALUES (253, 10524120, '徐家汇地区', '上海电影博物馆', 3012, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0105712000iksvy1kFD4F.jpg', '距市中心5.9km', '博物馆&展馆', 'https://you.ctrip.com/sight/shanghai2/110776.html?poiType=3&scene=online', '60', '0', '已减', '60.0', '2', '门票', 0, 31.192622, 121.444823, '5.4', '上海');
INSERT INTO `home_travelinfo` VALUES (254, 71415717, '南汇/野生动物园', '上海野生动物园-车入区', 224, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo0i12000sloaqve8DEB.jpg', '距市中心30.6km', '动物园&水族馆', 'https://you.ctrip.com/sight/shanghai2/5630373.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.062532, 121.729696, '5.4', '上海');
INSERT INTO `home_travelinfo` VALUES (255, 149292519, '江湾/五角场商业区', '上海赏枫叶', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100e120008ioi5iiFFAB.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/shanghai2/0.html?poiId=149292519', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 31.325266, 121.557183, '5.4', '上海');
INSERT INTO `home_travelinfo` VALUES (256, 156362622, '四川北路商业区', '上海 · 潘玮柏“MADLOVE:ULTRA”巡回演唱会-上海站', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100312000sz06e5m5E0E.jpg', '距市中心4.6km', '演唱会', 'https://you.ctrip.com/sight/shanghai2/156362622.html?poiType=66&scene=online', '380', '0', '已减', '380.0', '2', '门票', 0, 31.276959, 121.48728, '5.4', '上海');
INSERT INTO `home_travelinfo` VALUES (257, 143237464, '淮海路/新天地地区', '上海 · 百老汇摇滚音乐剧《LIZZIE丽兹》环境式中文版', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1me2f12000i5a7hwbCC88.jpg', '距市中心887m', '话剧/音乐剧', 'https://you.ctrip.com/sight/shanghai2/143237464.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.228483, 121.478867, '5.4', '上海');
INSERT INTO `home_travelinfo` VALUES (258, 10533456, '打浦桥地区', '世博会博物馆', 689, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100b1b000001aafcbAFBF.jpg', '距市中心4.1km', '博物馆&展馆, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/110783.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.200317, 121.488626, '5.4', '上海');
INSERT INTO `home_travelinfo` VALUES (259, 33782293, '陆家嘴', '东方明珠259米全透明悬空观光廊', 530, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0103w12000mjco4ubA04B.jpg', '距市中心2.7km', '地标观景, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/2483876.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.245472, 121.506297, '5.3', '上海');
INSERT INTO `home_travelinfo` VALUES (260, 149667902, '淮海路/新天地地区', '上海 · 惊悚鬼混沉浸式戏剧《开关SWITCH》', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1me0p12000lwx9q2iF3BA.jpg', '距市中心578m', '暂无', 'https://you.ctrip.com/sight/shanghai2/149667902.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.234146, 121.485831, '5.3', '上海');
INSERT INTO `home_travelinfo` VALUES (261, 83716862, '虹桥机场/国家会展中心', '水裹·汤泉生活(虹桥店)', 152, '4.5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo4p12000hno3ov930C5.png', '距市中心15.9km', '夜游观景, 洗浴泡汤', 'https://you.ctrip.com/sight/shanghai2/5708244.html?poiType=66&scene=online', '399', '0', '已减', '298.0', '2', '门票', 0, 31.195979, 121.320296, '5.3', '上海');
INSERT INTO `home_travelinfo` VALUES (262, 75619, '徐家汇地区', '上海体育场', 420, '4.5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100w050000000cnau3075.jpg', '距市中心6.2km', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/747.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.187715, 121.448402, '5.3', '上海');
INSERT INTO `home_travelinfo` VALUES (263, 155078850, '新国际博览中心/世博园', '马王堆汉墓文物大展—千金之家', 51, '4.5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo0z12000sov89yq0CB3.jpg', '距市中心5.5km', '展览', 'https://you.ctrip.com/sight/shanghai2/155078850.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.190005, 121.501315, '5.3', '上海');
INSERT INTO `home_travelinfo` VALUES (264, 143237499, '人民广场地区', '上海 · 沉浸式悬疑惊悚音乐剧《嗜血博士》', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0105312000feuazhaA48F.jpg', '距市中心603m', '话剧/音乐剧', 'https://you.ctrip.com/sight/shanghai2/143237499.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.241568, 121.481872, '5.3', '上海');
INSERT INTO `home_travelinfo` VALUES (265, 156431778, '暂无', '上海 · 南京东路店人民广场脱口秀｜天天｜综艺卡司｜吐槽爆笑大会｜开心互动｜【大笑喜剧】即兴喜剧之夜', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0101w12000t9d40t8A571.jpg', '距市中心585m', '暂无', 'https://you.ctrip.com/sight/shanghai2/156431778.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.241564, 121.480953, '5.3', '上海');
INSERT INTO `home_travelinfo` VALUES (266, 154248804, '人民广场地区', '上海 · 《谋杀的艺术》南京东路｜悬疑喜剧｜致命悬案｜女性觉醒｜超绝反转结局｜沉浸式推理话剧｜外百老汇经典巨作', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100x12000s8627pa9ED6.jpg', '距市中心958m', '话剧/音乐剧', 'https://you.ctrip.com/sight/shanghai2/154248804.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.240882, 121.488738, '5.3', '上海');
INSERT INTO `home_travelinfo` VALUES (267, 10524066, '淮海路/新天地地区', '淮海路', 1626, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/fd/tg/g1/M01/60/8B/CghzfVW4afGAEBlWABQv1LrcCI8062.jpg', '距市中心1.3km', '城市漫步, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/48434.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.224781, 121.476199, '5.3', '上海');
INSERT INTO `home_travelinfo` VALUES (268, 144880004, '人民广场地区', '上海 · 环境式驻演原创音乐剧《#0528》', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0107012000d6uzuo7F949.png', '距市中心590m', '话剧/音乐剧', 'https://you.ctrip.com/sight/shanghai2/144880004.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.24008, 121.484584, '5.2', '上海');
INSERT INTO `home_travelinfo` VALUES (269, 82775, '乐高乐园度假区', '枫泾古镇', 1988, '4.4', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/10021f000001gxcsa66B7.jpg', '距市中心58.0km', '古镇古村, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/49029.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 30.892179, 121.022612, '5.2', '上海');
INSERT INTO `home_travelinfo` VALUES (270, 18087223, '大宁国际商业区', 'ERA-时空之旅', 503, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0103k120008wysbs566A6.jpg', '距市中心5.7km', '暂无', 'https://you.ctrip.com/sight/shanghai2/1489752.html?poiType=66&scene=online', '380', '0', '已减', '361.0', '2', '门票', 0, 31.284193, 121.458224, '5.2', '上海');
INSERT INTO `home_travelinfo` VALUES (271, 82562699, '佘山/松江大学城', '蓝精灵乐园-上海世茂精灵之城主题乐园', 2929, '4.5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100o1f000001gp24t45D7.jpg', '距市中心35.6km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/5707683.html?poiType=66&scene=online', '180', '0', '已减', '160.0', '2', '门票', 0, 31.066036, 121.162923, '5.2', '上海');
INSERT INTO `home_travelinfo` VALUES (272, 151934265, '佘山/松江大学城', '上海世茂精灵之城主题乐园', 1, '2', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102e12000rbuhge8EE0E.jpg', '距市中心35.6km', '主题乐园&游乐场', 'https://you.ctrip.com/sight/shanghai2/151934265.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.066036, 121.162923, '5.2', '上海');
INSERT INTO `home_travelinfo` VALUES (273, 156622328, '浦东金桥地区', '上海 · 歌者归来超级歌会-上海站（中秋特别场）', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100512000tmtlmrbC919.jpg', '距市中心13.1km', '演唱会', 'https://you.ctrip.com/sight/shanghai2/156622328.html?poiType=66&scene=online', '380', '0', '已减', '380.0', '2', '门票', 0, 31.244233, 121.617588, '5.4', '上海');
INSERT INTO `home_travelinfo` VALUES (274, 156460140, '大宁国际商业区', '上海 · 「贾想世界·无限玩家」 VR沉浸式—上海站', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100k12000cf1paz9C289.png', '距市中心7.1km', 'livehouse', 'https://you.ctrip.com/sight/shanghai2/156460140.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.286182, 121.433025, '5.2', '上海');
INSERT INTO `home_travelinfo` VALUES (275, 31678187, '乐高乐园度假区', '花开海上生态园', 2167, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/01062120009x99men72FE.jpg', '距市中心51.2km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/2045955.html?poiType=3&scene=online', '30', '0', '已减', '15.0', '2', '门票', 0, 30.891995, 121.122831, '5.2', '上海');
INSERT INTO `home_travelinfo` VALUES (276, 149543795, '交大/闵行经济开发区', '上海沉浸式戏剧体验', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo0912000pk0v7568DF4.jpg', '中国', '暂无', 'https://you.ctrip.com/sight/shanghai2/0.html?poiId=149543795', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.016708, 121.318804, '5.2', '上海');
INSERT INTO `home_travelinfo` VALUES (277, 99882, '淮海路/新天地地区', '思南路', 676, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0105t12000f6ql3oh9EDC.jpg', '距市中心2.2km', '城市漫步, 夜游观景', 'https://you.ctrip.com/sight/shanghai2/138824.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.216464, 121.476385, '5.2', '上海');
INSERT INTO `home_travelinfo` VALUES (278, 20908669, '虹桥机场/国家会展中心', '国家会展中心(上海)', 526, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100q12000f6qy7sl3AB7.jpg', '距市中心17.0km', '文化体验', 'https://you.ctrip.com/sight/shanghai2/1700629.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.195859, 121.308378, '5.2', '上海');
INSERT INTO `home_travelinfo` VALUES (279, 75616, '徐家汇地区', '龙华寺', 717, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100412000j21x4odC178.jpg', '距市中心6.5km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/shanghai2/742.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.181316, 121.458256, '5.2', '上海');
INSERT INTO `home_travelinfo` VALUES (280, 10548698, '豫园地区', '上海城隍庙', 2080, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0106x12000fe389h1BD51.jpg', '距市中心1.9km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/shanghai2/1407313.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.231471, 121.499034, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (281, 24302858, '外滩核心区', '外滩万国建筑博览群', 805, '4.8', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/010011200086xm1xuBBB1.jpg', '距市中心1.7km', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/shanghai2/1816006.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.243794, 121.495797, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (282, 156371083, '淮海路/新天地地区', '上海 · 一支麦小剧场 | 爆笑脱口秀拼盘', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0100312000t058qti64CF.jpg', '距市中心2.1km', '暂无', 'https://you.ctrip.com/sight/shanghai2/156371083.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.222769, 121.465748, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (283, 79193, '长风公园地区', '上海长风海洋世界', 10794, '4.2', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo1u12000hoyoruc119E.jpg', '距市中心7.3km', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/shanghai2/15297.html?poiType=3&scene=online', '210', '0', '已减', '115.0', '2', '门票', 0, 31.230949, 121.403669, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (284, 75612, '上海火车南站地区', '上海植物园', 1641, '4.5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0103212000ijbk25o248A.jpg', '距市中心9.6km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/737.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.153813, 121.450691, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (285, 142248199, '人民广场地区', '上海 · 环境式驻演原创音乐剧《辛吉路的画材店》', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102712000ccwvp495A99.png', '距市中心339m', '话剧/音乐剧', 'https://you.ctrip.com/sight/shanghai2/142248199.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.233965, 121.478054, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (286, 156377947, '前滩', '2026 UFC格斗之夜上海暨UFC精英之路', 1, '5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0102z12000t6i84v8AC43.png', '距市中心8.3km', '赛事', 'https://you.ctrip.com/sight/shanghai2/156377947.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.161852, 121.48398, '5.2', '上海');
INSERT INTO `home_travelinfo` VALUES (287, 143237481, '暂无', '【上海】环境式驻演原创音乐剧《辛吉路的画材店》', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0106q12000cpbqgm92260.png', '距市中心339m', '话剧/音乐剧', 'https://you.ctrip.com/sight/shanghai2/143237481.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.233965, 121.478054, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (288, 148890984, '人民广场地区', '上海 · 沉浸式惊悚悬疑音乐剧《怪物》', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0103q12000fcwds1zACC0.png', '距市中心567m', '话剧/音乐剧', 'https://you.ctrip.com/sight/shanghai2/148890984.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.239768, 121.484609, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (289, 86058, '陆家嘴', '上海环球金融中心', 22212, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/10081f000001gqj0a0AF5.jpg', '距市中心3.3km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/57043.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.239932, 121.514379, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (290, 156377793, '淮海路/新天地地区', '《永不消失的黑水城》沉浸式文博大展', 3, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1me5g12000tge5dguC2AC.jpg', '距市中心1.6km', '展览', 'https://you.ctrip.com/sight/shanghai2/156377793.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.222225, 121.4826, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (291, 94637110, '陆家嘴', '金茂大厦云中漫步', 312, '4.6', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo4612000cr7czoa045A.jpg', '距市中心3.1km', '夜游观景', 'https://you.ctrip.com/sight/shanghai2/5711039.html?poiType=66&scene=online', '388', '0', '已减', '278.0', '2', '门票', 0, 31.240849, 121.512241, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (292, 76804, '崇明岛/长兴岛/横沙岛', '东平国家森林公园', 6764, '4.5', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo2n12000lb1d4woE708.jpg', '距市中心50.4km', '赏花胜地, 自然山水', 'https://you.ctrip.com/sight/shanghai2/5681.html?poiType=3&scene=online', '70', '0', '已减', '50.0', '2', '门票', 0, 31.689472, 121.487406, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (293, 90439, '吴淞口国际邮轮港', '上海玻璃博物馆', 2058, '4.4', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0101812000f6sefsmC1C9.jpg', '距市中心12.7km', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/90024.html?poiType=3&scene=online', '0', '0', '已减', '60.0', '2', '门票', 0, 31.350435, 121.478517, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (294, 56376192, '外滩核心区', '\"水晶公主\"黄浦江游船', 212, '4.2', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104a120008ecumcj4049.jpg', '距市中心2.2km', '夜游观景, 乘船游览', 'https://you.ctrip.com/sight/shanghai2/5012387.html?poiType=66&scene=online', '438', '0', '已减', '390.0', '2', '门票', 0, 31.234907, 121.503078, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (295, 156444036, '四川北路商业区', '上海 · 2026 GAI周延 「REAL G」巡回演唱会-上海站', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104q12000teckzby7484.jpg', '距市中心4.6km', '演唱会', 'https://you.ctrip.com/sight/shanghai2/156444036.html?poiType=66&scene=online', '299', '0', '已减', '299.0', '2', '门票', 0, 31.276959, 121.48728, '5.2', '上海');
INSERT INTO `home_travelinfo` VALUES (296, 156368093, '上海火车南站地区', '上海 · “新·国风”LIVE!《兰陵鬼面异闻录》', 0, '0', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0105s12000szpuobj2750.jpg', '距市中心7.7km', 'livehouse', 'https://you.ctrip.com/sight/shanghai2/156368093.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 31.167799, 121.471705, '5', '上海');
INSERT INTO `home_travelinfo` VALUES (297, 10758971, '人民广场地区', 'BUSTOUR上海观光游', 1165, '4.1', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0104012000f6t5ynlE722.jpg', '距市中心450m', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shanghai2/136731.html?poiType=66&scene=online', '100', '0', '已减', '80.0', '2', '门票', 0, 31.240374, 121.480673, '5.1', '上海');
INSERT INTO `home_travelinfo` VALUES (298, 136023014, '徐家汇地区', '徐家汇书院', 59, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/0106f12000f29wglyE4F7.jpg', '距市中心5.6km', '夜游观景, 文化体验', 'https://you.ctrip.com/sight/shanghai2/136023014.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 31.197035, 121.443535, '5', '上海');
INSERT INTO `home_travelinfo` VALUES (299, 48620857, '浦江镇地区', '上海奇迹花园', 1744, '4.4', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/1lo4d12000izpbed08750.jpg', '距市中心19.8km', '赏花胜地, 自然山水', 'https://you.ctrip.com/sight/shanghai2/4358345.html?poiType=3&scene=online', '99', '暂无', '暂无', '免费', '3', '门市价', 0, 31.060155, 121.514249, '5', '上海');
INSERT INTO `home_travelinfo` VALUES (300, 91536, '嘉定新城', '古猗园', 1867, '4.7', 0, 0, '上海', 'https://dimg04.c-ctrip.com/images/100g1f000001gr0b880FB.jpg', '距市中心16.4km', '赏花胜地, 园林花园', 'https://you.ctrip.com/sight/shanghai2/109998.html?poiType=3&scene=online', '12', '0', '已减', '12.0', '2', '门票', 0, 31.298281, 121.323126, '5', '上海');
INSERT INTO `home_travelinfo` VALUES (301, 150197767, '光明农场商圈', '深圳科学技术馆', 723, '4.4', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0106a12000k16nyrtEA8C.jpg', '暂无', '博物馆&展馆', 'https://you.ctrip.com/sight/shenzhen26/150197767.html?poiType=3&scene=online', '50', '0', '已减', '50.0', '2', '门票', 0, 22.777915, 113.949789, '6.7', '广东');
INSERT INTO `home_travelinfo` VALUES (302, 10558673, '鼎湖山景区/肇庆东站', '鼎湖山', 5448, '4.4', 0, 0, '肇庆', 'https://dimg04.c-ctrip.com/images/fd/tg/g4/M00/E0/79/CggYHVbFllKABzBBAARpFuaP-jI412.jpg', '暂无', '赏花胜地, 登高爬山', 'https://you.ctrip.com/sight/zhaoqing269/9440.html?poiType=3&scene=online', '70', '0', '已减', '70.0', '2', '门票', 0, 23.173893, 112.54482, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (303, 76894, '番禺市桥/亚运城', '莲花山旅游区', 2195, '4.7', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0101z12000j4qn74a0478.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/6799.html?poiType=3&scene=online', '54', '0', '已减', '51.0', '2', '门票', 0, 22.992101, 113.509665, '5.3', '广东');
INSERT INTO `home_travelinfo` VALUES (304, 149852998, '清远长隆森林王国/清远新银盏温泉', '清远长隆森林王国', 7173, '4.9', 0, 0, '清远', 'https://dimg04.c-ctrip.com/images/1lo1q12000huvjxwdCBEC.jpg', '暂无', '主题乐园&游乐场, 动物园&水族馆', 'https://you.ctrip.com/sight/qingyuan517/149852998.html?poiType=66&scene=online', '0', '0', '已减', '250.0', '2', '门票', 0, 23.582295, 113.170946, '7.3', '广东');
INSERT INTO `home_travelinfo` VALUES (305, 84605, '番禺长隆/广州南站附近', '余荫山房', 1769, '4.7', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/350c15000000xzulgBBB1.jpg', '暂无', '赏花胜地, 园林花园', 'https://you.ctrip.com/sight/guangzhou152/52653.html?poiType=3&scene=online', '0', '0', '已减', '18.0', '2', '门票', 0, 23.017674, 113.402079, '5.4', '广东');
INSERT INTO `home_travelinfo` VALUES (306, 10762535, '长隆旅游度假区', '珠海长隆海洋王国', 80234, '4.8', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/350h1f000001fzea78141.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/zhuhai27/1408240.html?poiType=3&scene=online', '0', '0', '已减', '395.0', '2', '门票', 0, 22.103358, 113.542404, '9.2', '广东');
INSERT INTO `home_travelinfo` VALUES (307, 76896, '番禺长隆/广州南站附近', '长隆野生动物世界', 104431, '4.8', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/1lo2912000b94556pF4C6.jpg', '暂无', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/guangzhou152/6802.html?poiType=3&scene=online', '0', '0', '已减', '300.0', '2', '门票', 0, 23.007234, 113.322189, '9.2', '广东');
INSERT INTO `home_travelinfo` VALUES (308, 10559608, '番禺长隆/广州南站附近', '广州长隆度假区', 14618, '4.7', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0102212000f6tvovl4925.jpg', '暂无', '度假村, 遛娃宝藏地', 'https://you.ctrip.com/sight/guangzhou152/135794.html?poiType=3&scene=online', '100', '0', '已减', '100.0', '2', '门票', 0, 23.006878, 113.336232, '8.9', '广东');
INSERT INTO `home_travelinfo` VALUES (309, 90706, '琶洲会展/广州塔/客村', '广州塔', 48706, '4.6', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0105j12000bzanxfaBAF2.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/107540.html?poiType=3&scene=online', '150', '0', '已减', '135.0', '2', '门票', 0, 23.112047, 113.331075, '8.4', '广东');
INSERT INTO `home_travelinfo` VALUES (310, 75869, '深圳世界之窗/深圳欢乐谷', '深圳世界之窗', 45705, '4.5', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/1lo3w12000srj4tvq4583.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shenzhen26/2778.html?poiType=66&scene=online', '150', '0', '已减', '120.0', '2', '门票', 0, 22.541763, 113.982188, '8.1', '广东');
INSERT INTO `home_travelinfo` VALUES (311, 10759002, '番禺长隆/广州南站附近', '广州长隆国际大马戏', 23382, '4.7', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/350e1f000001g0k753C2D.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/137991.html?poiType=66&scene=online', '0', '0', '已减', '295.0', '2', '门票', 0, 23.008996, 113.337938, '7.9', '广东');
INSERT INTO `home_travelinfo` VALUES (312, 76901, '火车站/越秀公园附近', '南越王博物院(王墓展区)', 5758, '4.6', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/10070z000000nv020AB0F.jpg', '暂无', '博物馆&展馆', 'https://you.ctrip.com/sight/guangzhou152/6808.html?poiType=3&scene=online', '10', '0', '已减', '10.0', '2', '门票', 0, 23.144033, 113.267474, '7.9', '广东');
INSERT INTO `home_travelinfo` VALUES (313, 10758708, '海珠广场/北京路步行街', '珠江夜游', 12750, '4.5', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/1lo3512000ptwfhtmD956.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/110464.html?poiType=66&scene=online', '0', '0', '已减', '98.0', '2', '门票', 0, 23.120989, 113.277555, '7.9', '广东');
INSERT INTO `home_travelinfo` VALUES (314, 140773107, '长隆旅游度假区', '长隆飞船乐园', 8242, '4.8', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/1lo2u12000e95447i2701.jpg', '暂无', '主题乐园&游乐场, 动物园&水族馆', 'https://you.ctrip.com/sight/zhuhai27/140773107.html?poiType=66&scene=online', '0', '0', '已减', '325.0', '2', '门票', 0, 22.099125, 113.545153, '7.8', '广东');
INSERT INTO `home_travelinfo` VALUES (315, 79920, '南澳后宅镇/山海汇', '南澳岛', 1918, '4.4', 0, 0, '南澳县', 'https://dimg04.c-ctrip.com/images/0100912000jhzkf4pD9F5.jpg', '暂无', '海滨玩水, 遛娃宝藏地', 'https://you.ctrip.com/sight/nanaocounty958/17810.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.440636, 117.068268, '7.7', '广东');
INSERT INTO `home_travelinfo` VALUES (316, 10521550, '牌坊街/潮州古城/广济桥', '潮州古城', 869, '4.5', 0, 0, '潮州', 'https://dimg04.c-ctrip.com/images/0103012000jft5nxp08E9.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/chaozhou467/145618.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.671402, 116.654741, '7.7', '广东');
INSERT INTO `home_travelinfo` VALUES (317, 10558935, '番禺长隆/广州南站附近', '长隆欢乐世界', 27561, '4.7', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/1lo0r12000cqfjbydCBF4.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/48593.html?poiType=3&scene=online', '250', '0', '已减', '250.0', '2', '门票', 0, 23.004419, 113.336397, '7.7', '广东');
INSERT INTO `home_travelinfo` VALUES (318, 76904, '火车站/越秀公园附近', '越秀公园', 4450, '4.5', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0100212000juklkgsB725.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/6821.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.146421, 113.272117, '7.6', '广东');
INSERT INTO `home_travelinfo` VALUES (319, 22663446, '布吉/深圳东站', '甘坑古镇', 912, '4.5', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/10031c000001dcdk19FC2.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shenzhen26/1708576.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.663422, 114.109582, '7.6', '广东');
INSERT INTO `home_travelinfo` VALUES (320, 10539221, '情侣路/海滨泳场/珠海大剧院', '景山公园', 1527, '4.4', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/1lo1712000riygma58697.png', '暂无', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/zhuhai27/122382.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.266862, 113.577179, '7.6', '广东');
INSERT INTO `home_travelinfo` VALUES (321, 46835160, '会展中心/CBD', '深圳平安金融中心云际观光层', 22440, '4.9', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0105u120008jvydv63344.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shenzhen26/4336342.html?poiType=3&scene=online', '200', '0', '已减', '180.0', '2', '门票', 0, 22.539571, 114.061986, '7.5', '广东');
INSERT INTO `home_travelinfo` VALUES (322, 85862, '暂无', '广济桥', 2581, '4.6', 0, 0, '潮州', 'https://dimg04.c-ctrip.com/images/0103c12000f6rcogm9470.jpg', '暂无', '历史建筑, 地标观景', 'https://you.ctrip.com/sight/chaozhou467/56634.html?poiType=3&scene=online', '0', '0', '已减', '20.0', '2', '门票', 0, 23.668877, 116.661836, '7.5', '广东');
INSERT INTO `home_travelinfo` VALUES (323, 76884, '珠江新城/省博物馆', '广东省博物馆', 2062, '4.7', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0101e12000hyq2scv1CEB.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/6782.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.120486, 113.332975, '7.4', '广东');
INSERT INTO `home_travelinfo` VALUES (324, 85865, '韩文公祠/开元寺泰佛殿', '韩文公祠', 543, '4.7', 0, 0, '潮州', 'https://dimg04.c-ctrip.com/images/0102l12000rqt1jsr8EC3.jpg', '暂无', '历史建筑', 'https://you.ctrip.com/sight/chaozhou467/56645.html?poiType=3&scene=online', '0', '0', '已减', '免费', '1', '免费预约', 1, 23.669988, 116.666554, '7.4', '广东');
INSERT INTO `home_travelinfo` VALUES (325, 79771, '暂无', '连州地下河', 7109, '4.8', 0, 0, '连州', 'https://dimg04.c-ctrip.com/images/1lo1a12000nlre66gFDE7.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/lianzhou1141/17609.html?poiType=3&scene=online', '120', '0', '已减', '108.0', '2', '门票', 0, 25.013272, 112.336325, '7.3', '广东');
INSERT INTO `home_travelinfo` VALUES (326, 94560231, '宝安商业区', '欢乐港湾', 929, '4.6', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0102r120009bxheibA1C8.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shenzhen26/5711027.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.549758, 113.890309, '7.3', '广东');
INSERT INTO `home_travelinfo` VALUES (327, 10539235, '暂无', '港珠澳大桥游', 2096, '4.5', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/0105s120005otkgzlA5A3.jpg', '暂无', '地标观景, 乘船游览', 'https://you.ctrip.com/sight/zhuhai27/122396.html?poiType=3&scene=online', '198', '0', '已减', '193.0', '2', '门票', 0, 22.212741, 113.588048, '7.3', '广东');
INSERT INTO `home_travelinfo` VALUES (328, 79922, '潮博馆/礐石风景区', '礐石风景区', 675, '4.5', 0, 0, '汕头', 'https://dimg04.c-ctrip.com/images/100p1f000001gpe7r93BD.jpg', '暂无', '赏花胜地, 登高爬山', 'https://you.ctrip.com/sight/shantou215/17812.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.337134, 116.690997, '7.3', '广东');
INSERT INTO `home_travelinfo` VALUES (329, 91671, '巽寮湾', '巽寮湾', 2405, '4.5', 0, 0, '惠东', 'https://dimg04.c-ctrip.com/images/10011f000001h38x8AF87.jpg', '暂无', '海滨玩水, 遛娃宝藏地', 'https://you.ctrip.com/sight/huidong956/110149.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.683082, 114.757298, '7.3', '广东');
INSERT INTO `home_travelinfo` VALUES (330, 10758351, '番禺长隆/广州南站附近', '长隆水上乐园', 20750, '4.7', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/1lo6512000dguazfj220A.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/48597.html?poiType=66&scene=online', '199', '0', '已减', '69.0', '2', '门票', 0, 23.007841, 113.330852, '7.3', '广东');
INSERT INTO `home_travelinfo` VALUES (331, 76877, '永庆坊/上下九步行街', '陈家祠', 3604, '4.6', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0102l120008b39l1lD096.jpg', '暂无', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/guangzhou152/6772.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 23.132609, 113.251995, '7.3', '广东');
INSERT INTO `home_travelinfo` VALUES (332, 70089239, '海珠广场/北京路步行街', '南越王博物院(王宫展区)', 2030, '4.7', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/1lo1912000id72r8hB672.jpg', '暂无', '博物馆&展馆', 'https://you.ctrip.com/sight/guangzhou152/5613345.html?poiType=3&scene=online', '0', '0', '已减', '免费', '1', '免费预约', 1, 23.133143, 113.276289, '7.2', '广东');
INSERT INTO `home_travelinfo` VALUES (333, 142240232, '长隆旅游度假区', '珠海横琴《长隆秀》', 1954, '4.8', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/1lo5e12000ccjhukw478A.jpg', '暂无', '暂无', 'https://you.ctrip.com/sight/zhuhai27/142240232.html?poiType=66&scene=online', '0', '0', '已减', '350.0', '2', '门票', 0, 22.107265, 113.550247, '7.2', '广东');
INSERT INTO `home_travelinfo` VALUES (334, 81414, '西樵山/广东千古情', '西樵山风景名胜区', 4763, '4.4', 0, 0, '佛山', 'https://dimg04.c-ctrip.com/images/1lo0912000crse5ae225F.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/foshan207/23210.html?poiType=3&scene=online', '40', '0', '已减', '35.0', '2', '门票', 0, 22.930206, 112.98337, '7.2', '广东');
INSERT INTO `home_travelinfo` VALUES (335, 10762530, '长隆旅游度假区', '珠海长隆度假区', 5027, '4.7', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/350p1f000001fwyjg872F.jpg', '暂无', '度假村, 遛娃宝藏地', 'https://you.ctrip.com/sight/zhuhai27/1408228.html?poiType=66&scene=online', '150', '0', '已减', '69.0', '2', '门票', 0, 22.10435, 113.546963, '7.2', '广东');
INSERT INTO `home_travelinfo` VALUES (336, 78476, '永庆坊/上下九步行街', '沙面', 7144, '4.7', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0100g12000t36f3o270E0.jpg', '暂无', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/guangzhou152/11346.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.112715, 113.251211, '7.1', '广东');
INSERT INTO `home_travelinfo` VALUES (337, 81417, '祖庙/岭南天地', '佛山市祖庙博物馆', 4648, '4.6', 0, 0, '佛山', 'https://dimg04.c-ctrip.com/images/100t0z000000ngqy44DF1.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/foshan207/23213.html?poiType=3&scene=online', '0', '0', '已减', '20.0', '2', '门票', 0, 23.035561, 113.119673, '7.1', '广东');
INSERT INTO `home_travelinfo` VALUES (338, 79101, '深圳世界之窗/深圳欢乐谷', '深圳欢乐谷', 33619, '4.8', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/1lo6h12000b3iq7vt6754.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shenzhen26/13720.html?poiType=66&scene=online', '188', '0', '已减', '159.0', '2', '门票', 0, 22.547835, 113.986721, '7', '广东');
INSERT INTO `home_travelinfo` VALUES (339, 15129159, '琶洲会展/广州塔/客村', '广州塔460米摩天轮', 2631, '4.6', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/10011f000001h35yv60BD.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/1484195.html?poiType=66&scene=online', '298', '0', '已减', '283.0', '2', '门票', 0, 23.112106, 113.3311, '7', '广东');
INSERT INTO `home_travelinfo` VALUES (340, 75867, '深圳世界之窗/深圳欢乐谷', '锦绣中华民俗村', 21798, '4.7', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/1lo3q12000sx8ez694D3D.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shenzhen26/2776.html?poiType=66&scene=online', '220', '0', '已减', '220.0', '2', '门票', 0, 22.537081, 113.995149, '7', '广东');
INSERT INTO `home_travelinfo` VALUES (341, 10773677, '暂无', '丹霞山', 8360, '4.6', 0, 0, '仁化', 'https://dimg04.c-ctrip.com/images/0100q12000tkh9v52F59E.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/renhua959/1408735.html?poiType=3&scene=online', '100', '0', '已减', '100.0', '2', '门票', 0, 25.051942, 113.765391, '6.9', '广东');
INSERT INTO `home_travelinfo` VALUES (342, 87819, '广州大学城附近', '广东科学中心', 11622, '4.6', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0103j1200089fz67o9278.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/64724.html?poiType=3&scene=online', '60', '0', '已减', '60.0', '2', '门票', 0, 23.045319, 113.369027, '6.9', '广东');
INSERT INTO `home_travelinfo` VALUES (343, 75888, '东澳岛/格力东澳度假区', '东澳岛', 1027, '4.3', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/0102112000rqslsh7CD10.jpg', '暂无', '海滨玩水, 遛娃宝藏地', 'https://you.ctrip.com/sight/zhuhai27/2838.html?poiType=3&scene=online', '320', '0', '已减', '160.0', '2', '门票', 0, 22.023805, 113.716559, '6.9', '广东');
INSERT INTO `home_travelinfo` VALUES (344, 58282570, '古龙峡/清远万达广场', '古龙峡', 4150, '4.7', 0, 0, '清远', 'https://dimg04.c-ctrip.com/images/1lo6412000erztxtzC17D.jpg', '暂无', '清凉漂流, 遛娃宝藏地', 'https://you.ctrip.com/sight/qingyuan517/5139702.html?poiType=3&scene=online', '368', '0', '已减', '160.0', '2', '门票', 0, 23.785775, 112.964158, '6.9', '广东');
INSERT INTO `home_travelinfo` VALUES (345, 13103132, '暂无', '千年瑶寨', 9327, '4.7', 0, 0, '连南', 'https://dimg04.c-ctrip.com/images/0103z12000a0icf7o98C4.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/liannan2941/1409681.html?poiType=3&scene=online', '130', '0', '已减', '108.0', '2', '门票', 0, 24.588212, 112.307617, '6.8', '广东');
INSERT INTO `home_travelinfo` VALUES (346, 152938776, '宝能演艺中心/天河智慧城', '广州 · GO WITH THE FLOW林峯演唱会-广州站', 6, '4.8', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0105512000nmkw97c2B80.jpg', '暂无', '演唱会', 'https://you.ctrip.com/sight/guangzhou152/152938776.html?poiType=66&scene=online', '480', '暂无', '暂无', '免费', '3', '门市价', 0, 23.182952, 113.490114, '6.8', '广东');
INSERT INTO `home_travelinfo` VALUES (347, 83568, '番禺长隆/广州南站附近', '长隆飞鸟乐园', 4772, '4.7', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/35021f000001g4w32499B.jpg', '暂无', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/guangzhou152/51027.html?poiType=3&scene=online', '100', '0', '已减', '100.0', '2', '门票', 0, 23.030892, 113.284088, '6.8', '广东');
INSERT INTO `home_travelinfo` VALUES (348, 143363956, '西樵山/广东千古情', '广东千古情', 3397, '4.7', 0, 0, '佛山', 'https://dimg04.c-ctrip.com/images/1lo6j12000sbk7bxk45DA.png', '暂无', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/foshan207/143363956.html?poiType=3&scene=online', '238', '0', '已减', '159.0', '2', '门票', 0, 22.947493, 112.960084, '6.8', '广东');
INSERT INTO `home_travelinfo` VALUES (349, 76907, '火车站/越秀公园附近', '广州中山纪念堂', 3490, '0', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0102l120008638mpi1886.jpg', '暂无', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/guangzhou152/6824.html?poiType=3&scene=online', '0', '0', '已减', '10.0', '2', '门票', 0, 23.139096, 113.27118, '6.8', '广东');
INSERT INTO `home_travelinfo` VALUES (350, 76815, '大梅沙海滨公园/小梅沙海滨乐园', '大梅沙海滨公园', 2247, '4.6', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/1lo3612000tjpwgxx97A8.jpg', '暂无', '海滨玩水, 夜游观景', 'https://you.ctrip.com/sight/shenzhen26/5812.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.597999, 114.314448, '6.8', '广东');
INSERT INTO `home_travelinfo` VALUES (351, 76828, '大学城/西丽动物园', '深圳野生动物园', 14499, '4.4', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0101n12000jofkp1wC40D.jpg', '暂无', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/shenzhen26/6037.html?poiType=3&scene=online', '240', '0', '已减', '199.0', '2', '门票', 0, 22.602148, 113.978704, '6.8', '广东');
INSERT INTO `home_travelinfo` VALUES (352, 10546285, '古龙峡/清远万达广场', '古龙峡漂流', 7953, '4.7', 0, 0, '清远', 'https://dimg04.c-ctrip.com/images/350j16000000z8k7k515D.jpg', '暂无', '清凉漂流, 遛娃宝藏地', 'https://you.ctrip.com/sight/qingyuan517/131371.html?poiType=66&scene=online', '368', '0', '已减', '160.0', '2', '门票', 0, 23.77652, 112.960353, '6.8', '广东');
INSERT INTO `home_travelinfo` VALUES (353, 83563, '双月湾', '双月湾', 1264, '4.4', 0, 0, '惠东', 'https://dimg04.c-ctrip.com/images/10060u000000j47t4838E.jpg', '暂无', '海滨玩水, 遛娃宝藏地', 'https://you.ctrip.com/sight/huidong956/51020.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.590704, 114.904368, '6.8', '广东');
INSERT INTO `home_travelinfo` VALUES (354, 10558971, '大梅沙海滨公园/小梅沙海滨乐园', '小梅沙海洋世界', 8823, '4.5', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/1lo4n12000rorvpyg697D.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shenzhen26/50516.html?poiType=3&scene=online', '240', '15', '已减', '215.0', '2', '门票', 0, 22.610006, 114.335026, '6.8', '广东');
INSERT INTO `home_travelinfo` VALUES (355, 15053104, '海珠广场/北京路步行街', '大佛古寺', 574, '4.8', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0101t1200080zb8z3A40A.jpg', '暂无', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/guangzhou152/1481692.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.128637, 113.27446, '6.7', '广东');
INSERT INTO `home_travelinfo` VALUES (356, 81215, '湖光岩风景区', '湖光岩风景区', 1820, '4.3', 0, 0, '湛江', 'https://dimg04.c-ctrip.com/images/0100b12000j13y18b76F5.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/zhanjiang202/22826.html?poiType=3&scene=online', '50', '0', '已减', '40.0', '2', '门票', 0, 21.150261, 110.291882, '6.7', '广东');
INSERT INTO `home_travelinfo` VALUES (357, 97460, '暂无', '赤坎·广东华侨国际旅游度假区', 4667, '4.6', 0, 0, '开平', 'https://dimg04.c-ctrip.com/images/1lo2i12000syn7md7E0B5.png', '暂无', '赏花胜地, 古镇古村', 'https://you.ctrip.com/sight/kaiping525/135821.html?poiType=3&scene=online', '150', '0', '已减', '150.0', '2', '门票', 0, 22.323476, 112.591501, '6.7', '广东');
INSERT INTO `home_travelinfo` VALUES (358, 75886, '外伶仃岛', '外伶仃岛', 1592, '4.4', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/350a170000010srdkEAA3.jpg', '暂无', '海滨玩水, 遛娃宝藏地', 'https://you.ctrip.com/sight/zhuhai27/2836.html?poiType=3&scene=online', '320', '0', '已减', '210.0', '2', '门票', 0, 22.103902, 114.048555, '6.7', '广东');
INSERT INTO `home_travelinfo` VALUES (359, 136627117, '琶洲会展/广州塔/客村', '海珠有轨电车1号线', 886, '4.5', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/1lo3x12000b3jbyqpA2B5.jpg', '暂无', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/guangzhou152/136627117.html?poiType=66&scene=online', '22', '0', '已减', '6.9', '2', '门票', 0, 23.113354, 113.333379, '6.7', '广东');
INSERT INTO `home_travelinfo` VALUES (360, 10524178, '番禺市桥/亚运城', '沙湾古镇', 1235, '4.4', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0105i12000sl7e6j85959.jpg', '暂无', '赏花胜地, 古镇古村', 'https://you.ctrip.com/sight/guangzhou152/121749.html?poiType=3&scene=online', '40', '0', '已减', '30.0', '2', '门票', 0, 22.906347, 113.34084, '6.7', '广东');
INSERT INTO `home_travelinfo` VALUES (361, 81227, '罗浮山度假区', '广东罗浮山风景名胜区', 5719, '4.6', 0, 0, '博罗', 'https://dimg04.c-ctrip.com/images/1lo0a12000b3hw1gl9EC3.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/boluo954/22847.html?poiType=3&scene=online', '54', '0', '已减', '43.0', '2', '门票', 0, 23.270492, 114.042771, '6.6', '广东');
INSERT INTO `home_travelinfo` VALUES (362, 24301145, '天河体育中心/太古汇', '正佳极地海洋世界', 7213, '4.5', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/1lo1b12000fei6gseDFCC.jpg', '暂无', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/guangzhou152/1815375.html?poiType=3&scene=online', '0', '0', '已减', '109.0', '2', '门票', 0, 23.137339, 113.332845, '6.6', '广东');
INSERT INTO `home_travelinfo` VALUES (363, 76892, '广州大学城附近', '黄埔军校旧址纪念馆', 967, '0', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/01A3o120008oi9ckt57AE.jpg', '暂无', '历史建筑, 博物馆&展馆', 'https://you.ctrip.com/sight/guangzhou152/6797.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.09219, 113.431415, '6.6', '广东');
INSERT INTO `home_travelinfo` VALUES (364, 18400436, '小公园/滨海长廊', '汕头小公园', 378, '4.5', 0, 0, '汕头', 'https://dimg04.c-ctrip.com/images/10091a0000019klo41850.jpg', '暂无', '历史建筑, 城市漫步', 'https://you.ctrip.com/sight/shantou215/1646565.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.359224, 116.680257, '6.6', '广东');
INSERT INTO `home_travelinfo` VALUES (365, 76906, '火车站/越秀公园附近', '广州博物馆', 1705, '4.6', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0106u12000ildwy2hA47F.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/6823.html?poiType=3&scene=online', '0', '0', '已减', '0.0', '2', '门票', 0, 23.144, 113.272125, '6.6', '广东');
INSERT INTO `home_travelinfo` VALUES (366, 151345745, '深圳国际会展中心商圈', '华发前海冰雪世界', 1547, '4.6', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0100y12000nnr67ru0D09.png', '暂无', '夜游观景, 主题乐园&游乐场', 'https://you.ctrip.com/sight/shenzhen26/151345745.html?poiType=3&scene=online', '328', '0', '已减', '208.0', '2', '门票', 0, 22.719072, 113.776086, '6.6', '广东');
INSERT INTO `home_travelinfo` VALUES (367, 69518748, '潮博馆/礐石风景区', '潮汕历史文化博览中心', 86, '4.1', 0, 0, '汕头', 'https://dimg04.c-ctrip.com/images/1lo0212000jag1r6413DB.jpg', '暂无', '博物馆&展馆, 文化体验', 'https://you.ctrip.com/sight/shantou215/69518748.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.327226, 116.72216, '6.6', '广东');
INSERT INTO `home_travelinfo` VALUES (368, 83072, '小公园/滨海长廊', '汕头老城', 795, '4.5', 0, 0, '汕头', 'https://dimg04.c-ctrip.com/images/10041b000001bwb5bBA06.jpg', '暂无', '历史建筑, 城市漫步', 'https://you.ctrip.com/sight/shantou215/50159.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.359509, 116.677648, '6.6', '广东');
INSERT INTO `home_travelinfo` VALUES (369, 76811, '前山', '圆明新园', 1724, '4.2', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/1lo0i12000riawnskAD62.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/zhuhai27/5728.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.24932, 113.545983, '6.6', '广东');
INSERT INTO `home_travelinfo` VALUES (370, 155075264, '深圳湾万象城/深圳人才公园', '深圳 · 梁静茹《Best,茹果我不唱情歌》巡回演唱会', 0, '0', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0100o12000d4vkjqq233D.jpg', '暂无', '演唱会', 'https://you.ctrip.com/sight/shenzhen26/155075264.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 22.523299, 113.958037, '6.6', '广东');
INSERT INTO `home_travelinfo` VALUES (371, 10758762, '海珠广场/北京路步行街', '珠江夜游天字码头', 4444, '4.5', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0100e12000a2pcz1s8065.png', '暂无', '历史建筑, 夜游观景', 'https://you.ctrip.com/sight/guangzhou152/121689.html?poiType=3&scene=online', '0', '0', '已减', '98.0', '2', '门票', 0, 23.120989, 113.277555, '6.6', '广东');
INSERT INTO `home_travelinfo` VALUES (372, 56810132, '暂无', '中国大陆南极村', 73, '4.5', 0, 0, '徐闻', 'https://dimg04.c-ctrip.com/images/0104t12000f0up3l13ACE.jpg', '暂无', '夜游观景', 'https://you.ctrip.com/sight/xuwen2923/5069376.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 20.227861, 109.93177, '6.6', '广东');
INSERT INTO `home_travelinfo` VALUES (373, 13415649, '天河体育中心/太古汇', '正佳广场商贸旅游区', 596, '4.6', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0101r12000cz565sw41A4.jpg', '暂无', '城市漫步, 夜游观景', 'https://you.ctrip.com/sight/guangzhou152/1412403.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.137887, 113.333549, '6.5', '广东');
INSERT INTO `home_travelinfo` VALUES (374, 69256669, '双月湾', '海龟湾', 1377, '4.2', 0, 0, '惠东', 'https://dimg04.c-ctrip.com/images/0106b12000ijg84mu6BC3.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/huidong956/69256669.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 22.552197, 114.896778, '6.5', '广东');
INSERT INTO `home_travelinfo` VALUES (375, 134718276, '暂无', '湛江军事文化博览园', 749, '4.2', 0, 0, '湛江', 'https://dimg04.c-ctrip.com/images/0HJ1412000qfv2l8z816F.jpg', '暂无', '暂无', 'https://you.ctrip.com/sight/zhanjiang202/134718276.html?poiType=3&scene=online', '0', '0', '已减', '39.0', '2', '门票', 0, 21.263637, 110.441841, '6.5', '广东');
INSERT INTO `home_travelinfo` VALUES (376, 10758170, '横琴口岸', '澳门环岛游', 4462, '4.5', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/1lo0q12000c166dw915E4.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/zhuhai27/11542.html?poiType=66&scene=online', '0', '0', '已减', '142.0', '2', '门票', 0, 22.196848, 113.540054, '6.5', '广东');
INSERT INTO `home_travelinfo` VALUES (377, 94019, '牌坊街/潮州古城/广济桥', '牌坊街', 546, '4.6', 0, 0, '潮州', 'https://dimg04.c-ctrip.com/images/100q1f000001grkel4BC3.jpg', '暂无', '城市漫步, 夜游观景', 'https://you.ctrip.com/sight/chaozhou467/131443.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.674829, 116.657262, '6.5', '广东');
INSERT INTO `home_travelinfo` VALUES (378, 18119222, '深圳湾口岸/蛇口', '深圳湾公园', 536, '4.6', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/100e1f000001gszfe38A1.jpg', '暂无', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/shenzhen26/1508177.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.509555, 113.959669, '6.5', '广东');
INSERT INTO `home_travelinfo` VALUES (379, 149593054, '清远长隆森林王国/清远新银盏温泉', '清远长隆度假区', 185, '4.5', 0, 0, '清远', 'https://dimg04.c-ctrip.com/images/1lo6f12000i3j8on5BB7D.jpg', '暂无', '暂无', 'https://you.ctrip.com/sight/qingyuan517/149593054.html?poiType=3&scene=online', '0', '0', '已减', '250.0', '2', '门票', 0, 23.587761, 113.166595, '6.5', '广东');
INSERT INTO `home_travelinfo` VALUES (380, 154207281, '琶洲会展/广州塔/客村', '《一念敦煌》石窟艺术大展', 18, '5', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/1me3q12000sa62i3f74C7.jpg', '暂无', '展览', 'https://you.ctrip.com/sight/guangzhou152/154207281.html?poiType=66&scene=online', '98', '0', '已减', '98.0', '2', '门票', 0, 23.106912, 113.332827, '6.4', '广东');
INSERT INTO `home_travelinfo` VALUES (381, 76956, '海珠广场/北京路步行街', '广州圣心大教堂', 1663, '4.6', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0100812000q2v25oa44E2.jpg', '暂无', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/guangzhou152/6959.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.120803, 113.266659, '6.4', '广东');
INSERT INTO `home_travelinfo` VALUES (382, 82949, '清晖园度假区/顺德欢乐海岸PLUS', '清晖园博物馆', 1494, '4.4', 0, 0, '佛山', 'https://dimg04.c-ctrip.com/images/0102a12000f9atcnm63FC.jpg', '暂无', '赏花胜地, 园林花园', 'https://you.ctrip.com/sight/foshan207/49952.html?poiType=3&scene=online', '0', '0', '已减', '26.0', '2', '门票', 0, 22.841763, 113.261608, '6.4', '广东');
INSERT INTO `home_travelinfo` VALUES (383, 82958, '笔架山旅游度假区/黄腾峡生态旅游区', '清远笔架山旅游度假区', 2026, '4.6', 0, 0, '清远', 'https://dimg04.c-ctrip.com/images/1lo2f12000bgunyfw4081.jpg', '暂无', '清凉漂流, 遛娃宝藏地', 'https://you.ctrip.com/sight/qingyuan517/49968.html?poiType=3&scene=online', '128', '0', '已减', '78.0', '2', '门票', 0, 23.776504, 113.042312, '6.4', '广东');
INSERT INTO `home_travelinfo` VALUES (384, 103857634, '深圳湾口岸/蛇口', '招商蛇口邮轮母港游览', 572, '4.6', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/1lo0d12000ed6jvz4CB4D.jpg', '暂无', '夜游观景, 乘船游览', 'https://you.ctrip.com/sight/shenzhen26/103857634.html?poiType=66&scene=online', '398', '0', '已减', '198.0', '2', '门票', 0, 22.474665, 113.919967, '6.4', '广东');
INSERT INTO `home_travelinfo` VALUES (385, 76885, '淘金/环市东/广州动物园', '广州动物园', 3410, '4.4', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0104s12000ogai1ag69D0.jpg', '暂无', '亲近动物, 遛娃宝藏地', 'https://you.ctrip.com/sight/guangzhou152/6784.html?poiType=3&scene=online', '20', '暂无', '暂无', '免费', '3', '门市价', 0, 23.14681, 113.311864, '6.4', '广东');
INSERT INTO `home_travelinfo` VALUES (386, 149998050, '从化温泉风景区', '广州露营', 0, '0', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0101512000976bw5d832F.jpg', '广东', '暂无', 'https://you.ctrip.com/sight/guangzhou152/0.html?poiId=149998050', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 23.683375, 113.683868, '6.4', '广东');
INSERT INTO `home_travelinfo` VALUES (387, 112647075, '前海自贸区', '湾区之光摩天轮', 1459, '4.6', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0103q1200097s9gusAB59.png', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/shenzhen26/112647075.html?poiType=66&scene=online', '180', '0', '已减', '69.0', '2', '门票', 0, 22.547559, 113.894305, '6.4', '广东');
INSERT INTO `home_travelinfo` VALUES (388, 76889, '白云同和/龙洞地区', '中国科学院华南国家植物园', 4807, '4.7', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0100212000j1nzlp2DB6F.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/6794.html?poiType=3&scene=online', '20', '0', '已减', '20.0', '2', '门票', 0, 23.18787, 113.373726, '6.4', '广东');
INSERT INTO `home_travelinfo` VALUES (389, 71537673, '清晖园度假区/顺德欢乐海岸PLUS', '顺德欢乐海岸PLUS', 2122, '4.4', 0, 0, '佛山', 'https://dimg04.c-ctrip.com/images/1lo4r12000jvo1lqjAAFF.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/foshan207/5638370.html?poiType=66&scene=online', '160', '0', '已减', '149.0', '2', '门票', 0, 22.821912, 113.311452, '6.4', '广东');
INSERT INTO `home_travelinfo` VALUES (390, 13467111, '暂无', '黄满寨瀑布', 1200, '4.5', 0, 0, '揭西', 'https://dimg04.c-ctrip.com/images/0100312000j1xuedrE18C.jpg', '暂无', '自然山水', 'https://you.ctrip.com/sight/jiexi2930/1413466.html?poiType=3&scene=online', '120', '0', '已减', '85.0', '2', '门票', 0, 23.583242, 115.994722, '6.4', '广东');
INSERT INTO `home_travelinfo` VALUES (391, 83067, '暂无', '陈慈黉故居', 304, '4.2', 0, 0, '汕头', 'https://dimg04.c-ctrip.com/images/1A071e000001fx6z8A470.jpg', '暂无', '历史建筑', 'https://you.ctrip.com/sight/shantou215/50153.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 23.573437, 116.752005, '6.3', '广东');
INSERT INTO `home_travelinfo` VALUES (392, 149589060, '会展中心/CBD', '深圳 · 福田会展中心脱口秀【魔脱喜剧】| 每周一至周日｜爆笑解压欢乐精品脱口秀大会', 1, '4', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0106312000gsea4l5BA3B.png', '暂无', '暂无', 'https://you.ctrip.com/sight/shenzhen26/149589060.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 22.541515, 114.068691, '6.3', '广东');
INSERT INTO `home_travelinfo` VALUES (393, 10558635, '深圳湾口岸/蛇口', '海上世界', 628, '4.6', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/1005060000001vnvn07F9.jpg', '暂无', '赏花胜地, 夜游观景', 'https://you.ctrip.com/sight/shenzhen26/5815.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.487414, 113.924706, '6.3', '广东');
INSERT INTO `home_travelinfo` VALUES (394, 30055548, '赤坎老街/湛江西站', '赤坎老街景区', 357, '4.7', 0, 0, '湛江', 'https://dimg04.c-ctrip.com/images/0103d12000mcet0kvD17B.jpg', '暂无', '城市漫步, 夜游观景', 'https://you.ctrip.com/sight/zhanjiang202/1452180.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 21.280345, 110.368038, '6.2', '广东');
INSERT INTO `home_travelinfo` VALUES (395, 76874, '广州体育馆/白云山', '白云山', 5621, '4.6', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0101712000t39cnq3041D.jpg', '暂无', '赏花胜地, 登高爬山', 'https://you.ctrip.com/sight/guangzhou152/6766.html?poiType=3&scene=online', '5', '暂无', '暂无', '免费', '3', '门市价', 0, 23.18675, 113.30374, '6.2', '广东');
INSERT INTO `home_travelinfo` VALUES (396, 101259, '情侣路/海滨泳场/珠海大剧院', '珠海景山观光索道', 1237, '4.5', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/0106612000a042j6y1A70.jpg', '暂无', '夜游观景, 缆车索道', 'https://you.ctrip.com/sight/zhuhai27/140624.html?poiType=3&scene=online', '70', '0', '已减', '64.5', '2', '门票', 0, 22.269919, 113.587153, '6.2', '广东');
INSERT INTO `home_travelinfo` VALUES (397, 58255461, '花都融创文旅城及周边', '广州热雪奇迹', 9583, '4.5', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/1lo2512000tnb4s0z3A8A.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/5120365.html?poiType=66&scene=online', '298', '0', '已减', '138.0', '2', '门票', 0, 23.433968, 113.238822, '6.2', '广东');
INSERT INTO `home_travelinfo` VALUES (398, 101522, '金沙湾风景区', '湛江红嘴鸥游船', 1196, '4.4', 0, 0, '湛江', 'https://dimg04.c-ctrip.com/images/0103o12000f6t57r6F04D.png', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/zhanjiang202/140939.html?poiType=66&scene=online', '0', '0', '已减', '158.0', '2', '门票', 0, 21.265931, 110.408699, '6.2', '广东');
INSERT INTO `home_travelinfo` VALUES (399, 81193, '暂无', '开平碉楼文化旅游区', 2461, '4.5', 0, 0, '开平', 'https://dimg04.c-ctrip.com/images/0100n12000nlucqp18C5B.jpg', '暂无', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/kaiping525/22788.html?poiType=3&scene=online', '180', '0', '已减', '180.0', '2', '门票', 0, 22.379171, 112.585907, '6.2', '广东');
INSERT INTO `home_travelinfo` VALUES (400, 10559744, '七星岩景区/星湖风景区/肇庆站', '七星岩', 4747, '4.5', 0, 0, '肇庆', 'https://dimg04.c-ctrip.com/images/0103y12000f7kvxqm2E98.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/zhaoqing269/142169.html?poiType=3&scene=online', '70', '0', '已减', '70.0', '2', '门票', 0, 23.08011, 112.478887, '6.2', '广东');
INSERT INTO `home_travelinfo` VALUES (401, 61427506, '花都融创文旅城及周边', '广州融创文旅城', 493, '4.4', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/100o160000010ewcsF2E4.jpg', '暂无', '度假村, 遛娃宝藏地', 'https://you.ctrip.com/sight/guangzhou152/5356386.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.435617, 113.243844, '6.2', '广东');
INSERT INTO `home_travelinfo` VALUES (402, 83234, '杨梅坑/桔钓沙', '桔钓沙', 101, '4.5', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0102w12000h14oxu26265.jpg', '暂无', '海滨玩水, 夜游观景', 'https://you.ctrip.com/sight/shenzhen26/50526.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.562793, 114.559033, '6.2', '广东');
INSERT INTO `home_travelinfo` VALUES (403, 55184159, '琶洲会展/广州塔/客村', '珠江夜游广州塔码头', 429, '4.5', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/1lo3h12000dzf6n55FA82.jpg', '暂无', '夜游观景, 乘船游览', 'https://you.ctrip.com/sight/guangzhou152/4719347.html?poiType=66&scene=online', '0', '0', '已减', '118.0', '2', '门票', 0, 23.113354, 113.333379, '6.2', '广东');
INSERT INTO `home_travelinfo` VALUES (404, 10539309, '祖庙/岭南天地', '佛山岭南新天地', 505, '4.7', 0, 0, '佛山', 'https://dimg04.c-ctrip.com/images/0103t12000f0xibro6BA4.jpg', '暂无', '赏花胜地, 历史建筑', 'https://you.ctrip.com/sight/foshan207/122471.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.035703, 113.12282, '6.1', '广东');
INSERT INTO `home_travelinfo` VALUES (405, 82948, '祖庙/岭南天地', '南风古灶', 1815, '4.4', 0, 0, '佛山', 'https://dimg04.c-ctrip.com/images/10010z000000nrkvmCEF6.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/foshan207/49949.html?poiType=3&scene=online', '25', '0', '已减', '25.0', '2', '门票', 0, 23.011164, 113.085705, '6.1', '广东');
INSERT INTO `home_travelinfo` VALUES (406, 18648670, '拱北口岸/富华里', '珠海拱北口岸', 378, '4.5', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/0105i12000ettbzhhFFF9.jpg', '暂无', '地标观景, 夜游观景', 'https://you.ctrip.com/sight/zhuhai27/1684621.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.222077, 113.56062, '6.1', '广东');
INSERT INTO `home_travelinfo` VALUES (407, 81232, '惠州西湖/水东街', '惠州西湖', 2017, '4.7', 0, 0, '惠州', 'https://dimg04.c-ctrip.com/images/0100412000h0in1t5AA68.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/huizhou213/22852.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.095742, 114.404667, '6.1', '广东');
INSERT INTO `home_travelinfo` VALUES (408, 153100121, '深圳湾口岸/蛇口', '沉浸式形体剧《交易人生》', 53, '4.8', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/1lo4012000o7dgttn0F27.jpg', '暂无', '暂无', 'https://you.ctrip.com/sight/shenzhen26/153100121.html?poiType=66&scene=online', '680', '11', '已减', '569.0', '2', '门票', 0, 22.48925, 113.923162, '6.2', '广东');
INSERT INTO `home_travelinfo` VALUES (409, 151074791, '天河体育中心/太古汇', '广州citywalk', 0, '0', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/100l1d000001eah818A92.jpg', '广东', '暂无', 'https://you.ctrip.com/sight/guangzhou152/0.html?poiId=151074791', '暂无', '暂无', '暂无', '免费', '暂无', '暂无', 0, 23.143408, 113.33157, '6.1', '广东');
INSERT INTO `home_travelinfo` VALUES (410, 10532517, '盐田区政府/沙头角', '中英街', 683, '4.2', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0106y12000b8d0osdDBA6.jpg', '暂无', '城市漫步', 'https://you.ctrip.com/sight/shenzhen26/20401.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.551336, 114.238571, '6.1', '广东');
INSERT INTO `home_travelinfo` VALUES (411, 83068, '南澳青澳湾', '青澳湾', 506, '4.7', 0, 0, '南澳县', 'https://dimg04.c-ctrip.com/images/0104v12000m8yvvqa7509.jpg', '暂无', '海滨玩水, 遛娃宝藏地', 'https://you.ctrip.com/sight/nanaocounty958/50155.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.443961, 117.141682, '6.1', '广东');
INSERT INTO `home_travelinfo` VALUES (412, 79822, '雁南飞茶田度假村', '雁南飞茶田景区', 1037, '4.4', 0, 0, '梅州', 'https://dimg04.c-ctrip.com/images/1lo2b12000h144aax5416.jpg', '暂无', '度假村, 遛娃宝藏地', 'https://you.ctrip.com/sight/meizhou523/17691.html?poiType=3&scene=online', '80', '暂无', '暂无', '免费', '3', '门市价', 0, 24.388031, 116.386073, '6.1', '广东');
INSERT INTO `home_travelinfo` VALUES (413, 83418, '暂无', '江门古劳水乡旅游区', 2392, '4.7', 0, 0, '鹤山', 'https://dimg04.c-ctrip.com/images/1lo1n12000m2si10j9C94.jpg', '暂无', '赏花胜地, 乘船游览', 'https://you.ctrip.com/sight/heshan1182/50794.html?poiType=3&scene=online', '80', '0', '已减', '39.5', '2', '门票', 0, 22.82834, 112.960777, '6.1', '广东');
INSERT INTO `home_travelinfo` VALUES (414, 81351, '恒大海上夏威夷', '海陵岛', 1505, '4.5', 0, 0, '阳江', 'https://dimg04.c-ctrip.com/images/10020u000000januq5135.jpg', '暂无', '海滨玩水, 遛娃宝藏地', 'https://you.ctrip.com/sight/yangjiang363/23038.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 21.623854, 111.918496, '6', '广东');
INSERT INTO `home_travelinfo` VALUES (415, 79772, '暂无', '湟川三峡', 3882, '4.9', 0, 0, '连州', 'https://dimg04.c-ctrip.com/images/1lo5112000nlhheymBCB3.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/lianzhou1141/17610.html?poiType=3&scene=online', '50', '0', '已减', '45.0', '2', '门票', 0, 24.739543, 112.427973, '6', '广东');
INSERT INTO `home_travelinfo` VALUES (416, 85864, '牌坊街/潮州古城/广济桥', '开元寺', 472, '4.6', 0, 0, '潮州', 'https://dimg04.c-ctrip.com/images/0103x1200086wt1n45E48.jpg', '暂无', '历史建筑', 'https://you.ctrip.com/sight/chaozhou467/56642.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.669419, 116.655415, '6', '广东');
INSERT INTO `home_travelinfo` VALUES (417, 156461992, '佛山世纪莲体育中心/国际体育文化演艺中心', '佛山 · 徐良“时间折叠”巡回演唱会-佛山站', 0, '0', 0, 0, '佛山', 'https://dimg04.c-ctrip.com/images/0100312000thgcki09115.png', '暂无', '演唱会', 'https://you.ctrip.com/sight/foshan207/156461992.html?poiType=66&scene=online', '380', '暂无', '暂无', '免费', '3', '门市价', 0, 22.965468, 113.148088, '5.9', '广东');
INSERT INTO `home_travelinfo` VALUES (418, 10758155, '御温泉/金台寺', '珠海御温泉', 3621, '4.5', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/0105w120008a7wgwo8490.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/zhuhai27/5732.html?poiType=66&scene=online', '238', '0', '已减', '198.0', '2', '门票', 0, 22.253412, 113.201144, '6', '广东');
INSERT INTO `home_travelinfo` VALUES (419, 75870, '大梅沙海滨公园/小梅沙海滨乐园', '小梅沙海滨乐园', 1960, '4.7', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/1lo5712000t65abln95C4.jpg', '暂无', '海滨玩水, 夜游观景', 'https://you.ctrip.com/sight/shenzhen26/2780.html?poiType=3&scene=online', '50', '0', '已减', '45.0', '2', '门票', 0, 22.60749, 114.332499, '6', '广东');
INSERT INTO `home_travelinfo` VALUES (420, 85947, '东山湖/龙湖古寨', '龙湖古寨', 134, '4', 0, 0, '潮州', 'https://dimg04.c-ctrip.com/images/100s0z000000nollt70BF.jpg', '暂无', '古镇古村, 历史建筑', 'https://you.ctrip.com/sight/chaozhou467/56809.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.557595, 116.658802, '6', '广东');
INSERT INTO `home_travelinfo` VALUES (421, 56810081, '鼎龙湾国际海洋度假区', '鼎龙湾国际海洋度假区', 165, '4.5', 0, 0, '吴川', 'https://dimg04.c-ctrip.com/images/0103o120009exs6jqB8FE.jpg', '暂无', '度假村, 海滨玩水', 'https://you.ctrip.com/sight/wuchuan1898/5073330.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 21.402893, 110.910764, '5.9', '广东');
INSERT INTO `home_travelinfo` VALUES (422, 97542, '英西峰林走廊', '洞天仙境', 3803, '4.4', 0, 0, '英德', 'https://dimg04.c-ctrip.com/images/1lo2c12000qna4pnaD5A0.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/yingde962/135906.html?poiType=3&scene=online', '0', '0', '已减', '86.0', '2', '门票', 0, 24.160722, 112.90616, '5.9', '广东');
INSERT INTO `home_travelinfo` VALUES (423, 10558923, '唐家湾/中山大学', '情侣路', 3018, '4.7', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/0105j12000f6tve1rAC91.jpg', '暂无', '城市漫步, 夜游观景', 'https://you.ctrip.com/sight/zhuhai27/46146.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.355513, 113.629059, '5.9', '广东');
INSERT INTO `home_travelinfo` VALUES (424, 10558996, '番禺市桥/亚运城', '宝墨园', 6261, '4.7', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/1lo2612000t8m6n2k10A4.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/51254.html?poiType=3&scene=online', '54', '0', '已减', '54.0', '2', '门票', 0, 22.900714, 113.300795, '5.9', '广东');
INSERT INTO `home_travelinfo` VALUES (425, 31677759, '深圳湾口岸/蛇口', '蛇口港珠海游轮', 257, '4.7', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0106j120008ouw59f0083.jpg', '暂无', '夜游观景, 乘船游览', 'https://you.ctrip.com/sight/shenzhen26/2045541.html?poiType=66&scene=online', '150', '0', '已减', '130.0', '2', '门票', 0, 22.474693, 113.919947, '5.9', '广东');
INSERT INTO `home_travelinfo` VALUES (426, 80148, '桂山岛', '桂山岛', 323, '4.3', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/350b170000010ttp6B1A1.jpg', '暂无', '海滨玩水, 遛娃宝藏地', 'https://you.ctrip.com/sight/zhuhai27/18126.html?poiType=3&scene=online', '240', '0', '已减', '120.0', '2', '门票', 0, 22.141106, 113.833959, '5.9', '广东');
INSERT INTO `home_travelinfo` VALUES (427, 155095081, '龙岗中心区/大运新城', '深圳 · G.E.M.邓紫棋I AM GLORIA世界巡回演唱会2.0', 0, '0', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0103r12000d4vq1fn6B93.jpg', '暂无', '演唱会', 'https://you.ctrip.com/sight/shenzhen26/155095081.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 22.70042, 114.223724, '5.9', '广东');
INSERT INTO `home_travelinfo` VALUES (428, 136042219, '珠海金湾机场附近', '珠海太空中心', 909, '4.5', 0, 0, '珠海', 'https://dimg04.c-ctrip.com/images/1lo4k12000c9djrxk7AD8.jpg', '暂无', '科技馆, 博物馆&展馆', 'https://you.ctrip.com/sight/zhuhai27/136042219.html?poiType=3&scene=online', '198', '0', '已减', '168.0', '2', '门票', 0, 22.026455, 113.397226, '5.9', '广东');
INSERT INTO `home_travelinfo` VALUES (429, 20895491, '七星岩景区/星湖风景区/肇庆站', '星湖旅游景区', 445, '4.5', 0, 0, '肇庆', 'https://dimg04.c-ctrip.com/images/0101712000mlcm8xm061D.jpg', '暂无', '赏花胜地, 自然山水', 'https://you.ctrip.com/sight/zhaoqing269/1697636.html?poiType=3&scene=online', '70', '0', '已减', '70.0', '2', '门票', 0, 23.081657, 112.476283, '5.9', '广东');
INSERT INTO `home_travelinfo` VALUES (430, 81357, '观音山度假区', '观音山旅游风景区', 3118, '4.5', 0, 0, '东莞', 'https://dimg04.c-ctrip.com/images/1lo1x12000sxj0skt5B71.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/dongguan212/23049.html?poiType=3&scene=online', '45', '0', '已减', '39.0', '2', '门票', 0, 22.9112, 114.119723, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (431, 97740, '客天下景区', '客天下客家小镇景区', 2391, '3.9', 0, 0, '梅州', 'https://dimg04.c-ctrip.com/images/100r0r000000hbfym672E.jpg', '暂无', '度假村, 遛娃宝藏地', 'https://you.ctrip.com/sight/meizhou523/136131.html?poiType=3&scene=online', '60', '0', '已减', '29.0', '2', '门票', 0, 24.263764, 116.161278, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (432, 133939777, '双月湾', '日出情人湾风景区', 532, '4.9', 0, 0, '惠东', 'https://dimg04.c-ctrip.com/images/1lo2p12000g9phbjc38B9.jpg', '暂无', '登高爬山, 夜游观景', 'https://you.ctrip.com/sight/huidong956/133939777.html?poiType=3&scene=online', '0', '0', '已减', '38.0', '2', '门票', 0, 22.628989, 114.928487, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (433, 81356, '中山南区/詹园', '中山詹园', 3363, '4.3', 0, 0, '中山', 'https://dimg04.c-ctrip.com/images/0101k12000j14ezs27760.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/zhongshan233/23047.html?poiType=3&scene=online', '60', '0', '已减', '50.0', '2', '门票', 0, 22.440321, 113.337488, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (434, 156437572, '宝安商业区', '深圳 · 超级音雄巨星LIVE演唱会', 0, '0', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0103t12000soednrv1ABA.png', '暂无', '演唱会', 'https://you.ctrip.com/sight/shenzhen26/156437572.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '5', '暂无', 0, 22.56381, 113.887374, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (435, 78519, '万象城/京基100', '地王观光·深港之窗', 1879, '4.3', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/10051f000001gsu9xBA0E.jpg', '暂无', '地标观景, 夜游观景', 'https://you.ctrip.com/sight/shenzhen26/11546.html?poiType=3&scene=online', '89', '0', '已减', '79.0', '2', '门票', 0, 22.549004, 114.117131, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (436, 30491720, '暂无', '云门山旅游度假区', 2627, '4.2', 0, 0, '乳源', 'https://dimg04.c-ctrip.com/images/100e1h000001ht7gxB033.jpg', '暂无', '亲水乐园, 遛娃宝藏地', 'https://you.ctrip.com/sight/ruyuan2937/1990753.html?poiType=3&scene=online', '125', '0', '已减', '80.0', '2', '门票', 0, 24.824577, 113.327646, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (437, 13551733, '官湖沙滩/玫瑰海岸文化旅游度假区', '玫瑰海岸文化旅游度假区', 954, '4.4', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/1lo1h12000ax59mzaF228.jpg', '暂无', '海滨玩水, 遛娃宝藏地', 'https://you.ctrip.com/sight/shenzhen26/1417781.html?poiType=3&scene=online', '50', '0', '已减', '28.0', '2', '门票', 0, 22.616044, 114.383753, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (438, 92040, '珠江新城/省博物馆', '花城广场', 1008, '4.7', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/0100z12000t3k99d58365.jpg', '暂无', '赏花胜地, 地标观景', 'https://you.ctrip.com/sight/guangzhou152/110543.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 23.125752, 113.331127, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (439, 155113005, '华强北商业区', '深圳 · Jason Derulo THE LAST DANCE China Tour 巡回演唱会-深圳站', 0, '0', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0104k12000tbsirfr1F6E.jpg', '暂无', '演唱会', 'https://you.ctrip.com/sight/shenzhen26/155113005.html?poiType=66&scene=online', '0', '0', '已减', '399.0', '2', '门票', 0, 22.563249, 114.100267, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (440, 76047, '暂无', '妈阁庙', 789, '4.7', 0, 0, '澳门', 'https://dimg04.c-ctrip.com/images/0107112000f6o3a6a1541.jpg', '暂无', '历史建筑', 'https://you.ctrip.com/sight/macau39/3381.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.189487, 113.542862, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (441, 10557499, '罗湖口岸/火车站', '深圳罗湖口岸', 459, '4.4', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0106512000f1re8ic789E.jpg', '暂无', '夜游观景', 'https://you.ctrip.com/sight/shenzhen26/122206.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.534542, 114.124808, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (442, 22867460, '暂无', '总兵府', 393, '4.2', 0, 0, '南澳县', 'https://dimg04.c-ctrip.com/images/0100d12000m5rmbaf4BCF.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/nanaocounty958/1714961.html?poiType=3&scene=online', '0', '0', '已减', '12.0', '2', '门票', 0, 23.458355, 117.108496, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (443, 145980727, '南澳', '阿卡那拉', 18, '5', 0, 0, '深圳', 'https://dimg04.c-ctrip.com/images/0105e12000h8rlktp692C.jpg', '暂无', '夜游观景', 'https://you.ctrip.com/sight/shenzhen26/145980727.html?poiType=66&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 22.514453, 114.489004, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (444, 10521338, '硇洲岛旅游区', '硇洲岛', 119, '3.8', 0, 0, '湛江', 'https://dimg04.c-ctrip.com/images/0106d12000h0jidr2DBA2.jpg', '暂无', '海滨玩水, 遛娃宝藏地', 'https://you.ctrip.com/sight/zhanjiang202/145406.html?poiType=3&scene=online', '暂无', '暂无', '暂无', '免费', '4', '免费', 1, 20.909579, 110.603263, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (445, 10758630, '长鹿旅游休博园/三洲市场', '长鹿旅游休博园', 12581, '4.7', 0, 0, '佛山', 'https://dimg04.c-ctrip.com/images/350a1b000001adyyj16DC.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/foshan207/76192.html?poiType=66&scene=online', '180', '22', '已减', '128.0', '2', '门票', 0, 22.882962, 113.294572, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (446, 155093106, '篮球中心/城市学院', '东莞 · 黄丽玲 A-Lin 歌 迹 Journey 世界巡回演唱会-东莞站', 0, '0', 0, 0, '东莞', 'https://dimg04.c-ctrip.com/images/0100v12000t85zb0hA1E2.png', '暂无', '演唱会', 'https://you.ctrip.com/sight/dongguan212/155093106.html?poiType=66&scene=online', '380', '0', '已减', '380.0', '2', '门票', 0, 23.001928, 113.847023, '5.8', '广东');
INSERT INTO `home_travelinfo` VALUES (447, 91849, '广州大学城附近', '岭南印象园', 6764, '4.3', 0, 0, '广州', 'https://dimg04.c-ctrip.com/images/1lo4h12000kndg3ps83BA.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/guangzhou152/110338.html?poiType=3&scene=online', '60', '0', '已减', '60.0', '2', '门票', 0, 23.042445, 113.412689, '5.7', '广东');
INSERT INTO `home_travelinfo` VALUES (448, 85974, '暂无', '青岚怪臼谷国家地质公园', 832, '4.5', 0, 0, '饶平', 'https://dimg04.c-ctrip.com/images/1lo0k12000d2y61872E9D.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/raoping2932/56859.html?poiType=3&scene=online', '80', '0', '已减', '58.0', '2', '门票', 0, 23.735263, 116.844891, '5.7', '广东');
INSERT INTO `home_travelinfo` VALUES (449, 101249, '暂无', '仙门奇峡', 4568, '4.9', 0, 0, '乳源', 'https://dimg04.c-ctrip.com/images/1lo5n12000ptw2x8m2EFD.jpg', '暂无', '赏花胜地, 登高爬山', 'https://you.ctrip.com/sight/ruyuan2937/140613.html?poiType=3&scene=online', '50', '0', '已减', '25.0', '2', '门票', 0, 24.629997, 113.066781, '5.7', '广东');
INSERT INTO `home_travelinfo` VALUES (450, 78642, '暂无', '万绿湖风景区', 4640, '4.7', 0, 0, '东源', 'https://dimg04.c-ctrip.com/images/0101812000smvkceo4527.jpg', '暂无', '遛娃宝藏地, 亲子同乐', 'https://you.ctrip.com/sight/dongyuan2929/12346.html?poiType=3&scene=online', '198', '0', '已减', '175.0', '2', '门票', 0, 23.782189, 114.63803, '5.7', '广东');

-- ----------------------------
-- Table structure for part1
-- ----------------------------
DROP TABLE IF EXISTS `part1`;
CREATE TABLE `part1`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `score` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评分',
  `value` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of part1
-- ----------------------------
INSERT INTO `part1` VALUES (1, '4.7', '96');
INSERT INTO `part1` VALUES (2, '4.6', '56');
INSERT INTO `part1` VALUES (3, '4.5', '56');
INSERT INTO `part1` VALUES (4, '4.8', '47');
INSERT INTO `part1` VALUES (5, '4.4', '35');
INSERT INTO `part1` VALUES (6, '4.3', '13');
INSERT INTO `part1` VALUES (7, '4.2', '12');
INSERT INTO `part1` VALUES (8, '4.9', '9');
INSERT INTO `part1` VALUES (9, '5', '9');
INSERT INTO `part1` VALUES (10, '4.1', '4');
INSERT INTO `part1` VALUES (11, '4', '4');
INSERT INTO `part1` VALUES (12, '3.9', '2');
INSERT INTO `part1` VALUES (13, '3.7', '1');
INSERT INTO `part1` VALUES (14, '2', '1');
INSERT INTO `part1` VALUES (15, '3.8', '1');

-- ----------------------------
-- Table structure for part2
-- ----------------------------
DROP TABLE IF EXISTS `part2`;
CREATE TABLE `part2`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '景点名称',
  `value` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of part2
-- ----------------------------
INSERT INTO `part2` VALUES (1, '上海迪士尼度假区', '312956');
INSERT INTO `part2` VALUES (2, '故宫博物院', '199754');
INSERT INTO `part2` VALUES (3, '东方明珠', '178662');
INSERT INTO `part2` VALUES (4, '外滩', '157085');
INSERT INTO `part2` VALUES (5, '上海野生动物园', '127292');
INSERT INTO `part2` VALUES (6, '长隆野生动物世界', '104431');
INSERT INTO `part2` VALUES (7, '珠海长隆海洋王国', '80234');
INSERT INTO `part2` VALUES (8, '北京环球度假区', '76162');
INSERT INTO `part2` VALUES (9, '八达岭长城', '61856');
INSERT INTO `part2` VALUES (10, '上海海昌海洋公园', '57161');

-- ----------------------------
-- Table structure for part3
-- ----------------------------
DROP TABLE IF EXISTS `part3`;
CREATE TABLE `part3`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '价格区间',
  `value` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of part3
-- ----------------------------
INSERT INTO `part3` VALUES (1, '0', '246');
INSERT INTO `part3` VALUES (2, '1-50', '53');
INSERT INTO `part3` VALUES (3, '50-100', '48');
INSERT INTO `part3` VALUES (4, '100-200', '60');
INSERT INTO `part3` VALUES (5, '200-500', '38');
INSERT INTO `part3` VALUES (6, '500-1000', '3');
INSERT INTO `part3` VALUES (7, '1000+', '2');

-- ----------------------------
-- Table structure for part4
-- ----------------------------
DROP TABLE IF EXISTS `part4`;
CREATE TABLE `part4`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区域',
  `value` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 144 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of part4
-- ----------------------------
INSERT INTO `part4` VALUES (1, '天安门/王府井地区', '22');
INSERT INTO `part4` VALUES (2, '人民广场地区', '19');
INSERT INTO `part4` VALUES (3, '陆家嘴', '18');
INSERT INTO `part4` VALUES (4, '淮海路/新天地地区', '16');
INSERT INTO `part4` VALUES (5, '鸟巢/奥体中心地区', '15');
INSERT INTO `part4` VALUES (6, '前门/天坛公园/崇文门', '11');
INSERT INTO `part4` VALUES (7, '三里屯/工体/东直门地区', '10');
INSERT INTO `part4` VALUES (8, '华熙Live五棵松/首钢园', '10');
INSERT INTO `part4` VALUES (9, '新国际博览中心/世博园', '9');
INSERT INTO `part4` VALUES (10, '佘山/松江大学城', '8');
INSERT INTO `part4` VALUES (11, '徐家汇地区', '8');
INSERT INTO `part4` VALUES (12, '后海/南锣鼓巷地区', '7');
INSERT INTO `part4` VALUES (13, '外滩核心区', '7');
INSERT INTO `part4` VALUES (14, '番禺长隆/广州南站附近', '7');
INSERT INTO `part4` VALUES (15, '八达岭长城/野生动物园地区', '6');
INSERT INTO `part4` VALUES (16, '西直门/北京展览馆地区', '6');
INSERT INTO `part4` VALUES (17, '滴水湖临港地区', '6');
INSERT INTO `part4` VALUES (18, '环球影城度假区及周边', '5');
INSERT INTO `part4` VALUES (19, '中关村/五道口', '5');
INSERT INTO `part4` VALUES (20, '国贸CBD/朝阳大悦城', '5');
INSERT INTO `part4` VALUES (21, '四川北路商业区', '5');
INSERT INTO `part4` VALUES (22, '琶洲会展/广州塔/客村', '5');
INSERT INTO `part4` VALUES (23, '海珠广场/北京路步行街', '5');
INSERT INTO `part4` VALUES (24, '深圳湾口岸/蛇口', '5');
INSERT INTO `part4` VALUES (25, '昌平城区/十三陵度假区', '4');
INSERT INTO `part4` VALUES (26, '香山/八大处风景区', '4');
INSERT INTO `part4` VALUES (27, '望京/酒仙桥/798地区', '4');
INSERT INTO `part4` VALUES (28, '总部基地/丰台体育中心/南宫地区', '4');
INSERT INTO `part4` VALUES (29, '大宁国际商业区', '4');
INSERT INTO `part4` VALUES (30, '前滩', '4');
INSERT INTO `part4` VALUES (31, '长隆旅游度假区', '4');
INSERT INTO `part4` VALUES (32, '火车站/越秀公园附近', '4');
INSERT INTO `part4` VALUES (33, '永定门/南站/大红门/南苑地区', '3');
INSERT INTO `part4` VALUES (34, '西单/金融街地区', '3');
INSERT INTO `part4` VALUES (35, '门头沟/潭柘寺/妙峰山风景区', '3');
INSERT INTO `part4` VALUES (36, '迪士尼度假区', '3');
INSERT INTO `part4` VALUES (37, '豫园地区', '3');
INSERT INTO `part4` VALUES (38, '乐高乐园度假区', '3');
INSERT INTO `part4` VALUES (39, '静安寺/南京西路', '3');
INSERT INTO `part4` VALUES (40, '番禺市桥/亚运城', '3');
INSERT INTO `part4` VALUES (41, '深圳世界之窗/深圳欢乐谷', '3');
INSERT INTO `part4` VALUES (42, '牌坊街/潮州古城/广济桥', '3');
INSERT INTO `part4` VALUES (43, '祖庙/岭南天地', '3');
INSERT INTO `part4` VALUES (44, '广州大学城附近', '3');
INSERT INTO `part4` VALUES (45, '大梅沙海滨公园/小梅沙海滨乐园', '3');
INSERT INTO `part4` VALUES (46, '双月湾', '3');
INSERT INTO `part4` VALUES (47, '天河体育中心/太古汇', '3');
INSERT INTO `part4` VALUES (48, '燕莎/朝阳公园商业区', '2');
INSERT INTO `part4` VALUES (49, '慕田峪长城/响水湖长城地区', '2');
INSERT INTO `part4` VALUES (50, '欢乐谷游乐区', '2');
INSERT INTO `part4` VALUES (51, '古北水镇/司马台长城', '2');
INSERT INTO `part4` VALUES (52, '上地产业园/西三旗', '2');
INSERT INTO `part4` VALUES (53, '南汇/野生动物园', '2');
INSERT INTO `part4` VALUES (54, '虹桥地区', '2');
INSERT INTO `part4` VALUES (55, '交大/闵行经济开发区', '2');
INSERT INTO `part4` VALUES (56, '嘉定新城', '2');
INSERT INTO `part4` VALUES (57, '打浦桥地区', '2');
INSERT INTO `part4` VALUES (58, '北外滩地区', '2');
INSERT INTO `part4` VALUES (59, '崇明岛/长兴岛/横沙岛', '2');
INSERT INTO `part4` VALUES (60, '长风公园地区', '2');
INSERT INTO `part4` VALUES (61, '江湾/五角场商业区', '2');
INSERT INTO `part4` VALUES (62, '虹桥机场/国家会展中心', '2');
INSERT INTO `part4` VALUES (63, '上海火车南站地区', '2');
INSERT INTO `part4` VALUES (64, '清远长隆森林王国/清远新银盏温泉', '2');
INSERT INTO `part4` VALUES (65, '情侣路/海滨泳场/珠海大剧院', '2');
INSERT INTO `part4` VALUES (66, '会展中心/CBD', '2');
INSERT INTO `part4` VALUES (67, '珠江新城/省博物馆', '2');
INSERT INTO `part4` VALUES (68, '宝安商业区', '2');
INSERT INTO `part4` VALUES (69, '潮博馆/礐石风景区', '2');
INSERT INTO `part4` VALUES (70, '永庆坊/上下九步行街', '2');
INSERT INTO `part4` VALUES (71, '西樵山/广东千古情', '2');
INSERT INTO `part4` VALUES (72, '古龙峡/清远万达广场', '2');
INSERT INTO `part4` VALUES (73, '小公园/滨海长廊', '2');
INSERT INTO `part4` VALUES (74, '清晖园度假区/顺德欢乐海岸PLUS', '2');
INSERT INTO `part4` VALUES (75, '花都融创文旅城及周边', '2');
INSERT INTO `part4` VALUES (76, '七星岩景区/星湖风景区/肇庆站', '2');
INSERT INTO `part4` VALUES (77, '大兴北京新机场地区', '1');
INSERT INTO `part4` VALUES (78, '龙庆峡/永宁古城地区', '1');
INSERT INTO `part4` VALUES (79, '北京西站/丽泽商务区', '1');
INSERT INTO `part4` VALUES (80, '鼓楼西大街/南山滑雪场', '1');
INSERT INTO `part4` VALUES (81, '国展中心地区', '1');
INSERT INTO `part4` VALUES (82, '雁栖湖/红螺寺地区', '1');
INSERT INTO `part4` VALUES (83, '黄花城水长城地区', '1');
INSERT INTO `part4` VALUES (84, '首都机场/新国展地区', '1');
INSERT INTO `part4` VALUES (85, '喇叭沟原始森林公园地区', '1');
INSERT INTO `part4` VALUES (86, '青浦朱家角/东方绿舟', '1');
INSERT INTO `part4` VALUES (87, '上海火车站地区', '1');
INSERT INTO `part4` VALUES (88, '衡山路地区', '1');
INSERT INTO `part4` VALUES (89, '中山公园商业区', '1');
INSERT INTO `part4` VALUES (90, '浦东金桥地区', '1');
INSERT INTO `part4` VALUES (91, '吴淞口国际邮轮港', '1');
INSERT INTO `part4` VALUES (92, '浦江镇地区', '1');
INSERT INTO `part4` VALUES (93, '光明农场商圈', '1');
INSERT INTO `part4` VALUES (94, '鼎湖山景区/肇庆东站', '1');
INSERT INTO `part4` VALUES (95, '南澳后宅镇/山海汇', '1');
INSERT INTO `part4` VALUES (96, '布吉/深圳东站', '1');
INSERT INTO `part4` VALUES (97, '韩文公祠/开元寺泰佛殿', '1');
INSERT INTO `part4` VALUES (98, '巽寮湾', '1');
INSERT INTO `part4` VALUES (99, '东澳岛/格力东澳度假区', '1');
INSERT INTO `part4` VALUES (100, '宝能演艺中心/天河智慧城', '1');
INSERT INTO `part4` VALUES (101, '大学城/西丽动物园', '1');
INSERT INTO `part4` VALUES (102, '湖光岩风景区', '1');
INSERT INTO `part4` VALUES (103, '外伶仃岛', '1');
INSERT INTO `part4` VALUES (104, '罗浮山度假区', '1');
INSERT INTO `part4` VALUES (105, '深圳国际会展中心商圈', '1');
INSERT INTO `part4` VALUES (106, '前山', '1');
INSERT INTO `part4` VALUES (107, '深圳湾万象城/深圳人才公园', '1');
INSERT INTO `part4` VALUES (108, '横琴口岸', '1');
INSERT INTO `part4` VALUES (109, '笔架山旅游度假区/黄腾峡生态旅游区', '1');
INSERT INTO `part4` VALUES (110, '淘金/环市东/广州动物园', '1');
INSERT INTO `part4` VALUES (111, '从化温泉风景区', '1');
INSERT INTO `part4` VALUES (112, '前海自贸区', '1');
INSERT INTO `part4` VALUES (113, '白云同和/龙洞地区', '1');
INSERT INTO `part4` VALUES (114, '赤坎老街/湛江西站', '1');
INSERT INTO `part4` VALUES (115, '广州体育馆/白云山', '1');
INSERT INTO `part4` VALUES (116, '金沙湾风景区', '1');
INSERT INTO `part4` VALUES (117, '杨梅坑/桔钓沙', '1');
INSERT INTO `part4` VALUES (118, '拱北口岸/富华里', '1');
INSERT INTO `part4` VALUES (119, '惠州西湖/水东街', '1');
INSERT INTO `part4` VALUES (120, '盐田区政府/沙头角', '1');
INSERT INTO `part4` VALUES (121, '南澳青澳湾', '1');
INSERT INTO `part4` VALUES (122, '雁南飞茶田度假村', '1');
INSERT INTO `part4` VALUES (123, '恒大海上夏威夷', '1');
INSERT INTO `part4` VALUES (124, '佛山世纪莲体育中心/国际体育文化演艺中心', '1');
INSERT INTO `part4` VALUES (125, '御温泉/金台寺', '1');
INSERT INTO `part4` VALUES (126, '东山湖/龙湖古寨', '1');
INSERT INTO `part4` VALUES (127, '鼎龙湾国际海洋度假区', '1');
INSERT INTO `part4` VALUES (128, '英西峰林走廊', '1');
INSERT INTO `part4` VALUES (129, '唐家湾/中山大学', '1');
INSERT INTO `part4` VALUES (130, '桂山岛', '1');
INSERT INTO `part4` VALUES (131, '龙岗中心区/大运新城', '1');
INSERT INTO `part4` VALUES (132, '珠海金湾机场附近', '1');
INSERT INTO `part4` VALUES (133, '观音山度假区', '1');
INSERT INTO `part4` VALUES (134, '客天下景区', '1');
INSERT INTO `part4` VALUES (135, '中山南区/詹园', '1');
INSERT INTO `part4` VALUES (136, '万象城/京基100', '1');
INSERT INTO `part4` VALUES (137, '官湖沙滩/玫瑰海岸文化旅游度假区', '1');
INSERT INTO `part4` VALUES (138, '华强北商业区', '1');
INSERT INTO `part4` VALUES (139, '罗湖口岸/火车站', '1');
INSERT INTO `part4` VALUES (140, '南澳', '1');
INSERT INTO `part4` VALUES (141, '硇洲岛旅游区', '1');
INSERT INTO `part4` VALUES (142, '长鹿旅游休博园/三洲市场', '1');
INSERT INTO `part4` VALUES (143, '篮球中心/城市学院', '1');

-- ----------------------------
-- Table structure for part5
-- ----------------------------
DROP TABLE IF EXISTS `part5`;
CREATE TABLE `part5`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '词语',
  `value` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出现次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 973 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of part5
-- ----------------------------
INSERT INTO `part5` VALUES (1, '赏花', '77');
INSERT INTO `part5` VALUES (2, '胜地', '77');
INSERT INTO `part5` VALUES (3, '夜游', '92');
INSERT INTO `part5` VALUES (4, '观景', '104');
INSERT INTO `part5` VALUES (5, '主题乐园', '12');
INSERT INTO `part5` VALUES (6, '&', '48');
INSERT INTO `part5` VALUES (7, '游乐场', '10');
INSERT INTO `part5` VALUES (8, '遛', '139');
INSERT INTO `part5` VALUES (9, '娃', '139');
INSERT INTO `part5` VALUES (10, '宝藏', '139');
INSERT INTO `part5` VALUES (11, '地', '140');
INSERT INTO `part5` VALUES (12, '亲子', '103');
INSERT INTO `part5` VALUES (13, '同乐', '102');
INSERT INTO `part5` VALUES (14, '历史', '47');
INSERT INTO `part5` VALUES (15, '建筑', '48');
INSERT INTO `part5` VALUES (16, '博物馆', '43');
INSERT INTO `part5` VALUES (17, '展馆', '27');
INSERT INTO `part5` VALUES (18, '自然', '10');
INSERT INTO `part5` VALUES (19, '山水', '8');
INSERT INTO `part5` VALUES (20, '亲近', '16');
INSERT INTO `part5` VALUES (21, '动物', '17');
INSERT INTO `part5` VALUES (22, '城市', '24');
INSERT INTO `part5` VALUES (23, '漫步', '24');
INSERT INTO `part5` VALUES (24, '园林', '6');
INSERT INTO `part5` VALUES (25, '花园', '8');
INSERT INTO `part5` VALUES (26, '缆车', '3');
INSERT INTO `part5` VALUES (27, '索道', '5');
INSERT INTO `part5` VALUES (28, '地标', '15');
INSERT INTO `part5` VALUES (29, '话剧', '18');
INSERT INTO `part5` VALUES (30, '/', '18');
INSERT INTO `part5` VALUES (31, '音乐剧', '25');
INSERT INTO `part5` VALUES (32, '演唱会', '29');
INSERT INTO `part5` VALUES (33, '展览', '11');
INSERT INTO `part5` VALUES (34, '亲水', '2');
INSERT INTO `part5` VALUES (35, '乐园', '17');
INSERT INTO `part5` VALUES (36, '水上', '5');
INSERT INTO `part5` VALUES (37, '水', '8');
INSERT INTO `part5` VALUES (38, '世界', '26');
INSERT INTO `part5` VALUES (39, 'livehouse', '6');
INSERT INTO `part5` VALUES (40, '儿童乐园', '1');
INSERT INTO `part5` VALUES (41, 'SPA', '1');
INSERT INTO `part5` VALUES (42, '按摩', '1');
INSERT INTO `part5` VALUES (43, '清凉', '4');
INSERT INTO `part5` VALUES (44, '漂流', '5');
INSERT INTO `part5` VALUES (45, '登高', '8');
INSERT INTO `part5` VALUES (46, '爬山', '8');
INSERT INTO `part5` VALUES (47, '美术馆', '6');
INSERT INTO `part5` VALUES (48, '艺术馆', '5');
INSERT INTO `part5` VALUES (49, '音乐节', '2');
INSERT INTO `part5` VALUES (50, '洗浴', '4');
INSERT INTO `part5` VALUES (51, '泡汤', '4');
INSERT INTO `part5` VALUES (52, '乘船', '10');
INSERT INTO `part5` VALUES (53, '游览', '16');
INSERT INTO `part5` VALUES (54, '古镇', '9');
INSERT INTO `part5` VALUES (55, '古村', '5');
INSERT INTO `part5` VALUES (56, '巴士', '2');
INSERT INTO `part5` VALUES (57, '观光', '13');
INSERT INTO `part5` VALUES (58, '赛事', '2');
INSERT INTO `part5` VALUES (59, '动物园', '8');
INSERT INTO `part5` VALUES (60, '水族馆', '4');
INSERT INTO `part5` VALUES (61, '文化', '8');
INSERT INTO `part5` VALUES (62, '体验', '7');
INSERT INTO `part5` VALUES (63, '度假村', '6');
INSERT INTO `part5` VALUES (64, '海滨', '15');
INSERT INTO `part5` VALUES (65, '玩水', '14');
INSERT INTO `part5` VALUES (66, '科技馆', '2');
INSERT INTO `part5` VALUES (67, '北京', '63');
INSERT INTO `part5` VALUES (68, '环球', '3');
INSERT INTO `part5` VALUES (69, '度假区', '12');
INSERT INTO `part5` VALUES (70, '泡泡', '1');
INSERT INTO `part5` VALUES (71, '玛特', '1');
INSERT INTO `part5` VALUES (72, '故宫博物院', '1');
INSERT INTO `part5` VALUES (73, '恭王府', '1');
INSERT INTO `part5` VALUES (74, '天坛公园', '1');
INSERT INTO `part5` VALUES (75, '八达岭长城', '2');
INSERT INTO `part5` VALUES (76, '中国', '9');
INSERT INTO `part5` VALUES (77, '国家博物馆', '2');
INSERT INTO `part5` VALUES (78, '颐和园', '1');
INSERT INTO `part5` VALUES (79, '慕田峪长城', '2');
INSERT INTO `part5` VALUES (80, '登览', '1');
INSERT INTO `part5` VALUES (81, '长城', '3');
INSERT INTO `part5` VALUES (82, '什刹海', '1');
INSERT INTO `part5` VALUES (83, '风景区', '6');
INSERT INTO `part5` VALUES (84, '朝阳', '1');
INSERT INTO `part5` VALUES (85, '公园', '12');
INSERT INTO `part5` VALUES (86, '天安门广场', '2');
INSERT INTO `part5` VALUES (87, '雍和宫', '1');
INSERT INTO `part5` VALUES (88, '野生', '5');
INSERT INTO `part5` VALUES (89, '圆明园', '1');
INSERT INTO `part5` VALUES (90, '国家', '9');
INSERT INTO `part5` VALUES (91, '北京动物园', '1');
INSERT INTO `part5` VALUES (92, '景山公园', '2');
INSERT INTO `part5` VALUES (93, '欢乐谷', '3');
INSERT INTO `part5` VALUES (94, 'citywalk', '3');
INSERT INTO `part5` VALUES (95, '赏', '15');
INSERT INTO `part5` VALUES (96, '银杏', '2');
INSERT INTO `part5` VALUES (97, '中国科学技术馆', '1');
INSERT INTO `part5` VALUES (98, '前门大街', '1');
INSERT INTO `part5` VALUES (99, '参观', '1');
INSERT INTO `part5` VALUES (100, '四合院', '1');
INSERT INTO `part5` VALUES (101, '明十三陵', '1');
INSERT INTO `part5` VALUES (102, '奥林匹克公园', '1');
INSERT INTO `part5` VALUES (103, '古北', '1');
INSERT INTO `part5` VALUES (104, '水镇', '1');
INSERT INTO `part5` VALUES (105, '鸟巢', '2');
INSERT INTO `part5` VALUES (106, '(', '13');
INSERT INTO `part5` VALUES (107, '体育场', '1');
INSERT INTO `part5` VALUES (108, ')', '13');
INSERT INTO `part5` VALUES (109, '中国人民革命军事博物馆', '1');
INSERT INTO `part5` VALUES (110, '北海公园', '1');
INSERT INTO `part5` VALUES (111, '南锣鼓巷', '1');
INSERT INTO `part5` VALUES (112, '海洋馆', '1');
INSERT INTO `part5` VALUES (113, '游船', '4');
INSERT INTO `part5` VALUES (114, '红叶', '1');
INSERT INTO `part5` VALUES (115, '大观园', '2');
INSERT INTO `part5` VALUES (116, '三里屯', '2');
INSERT INTO `part5` VALUES (117, '滑道', '1');
INSERT INTO `part5` VALUES (118, '汉服', '1');
INSERT INTO `part5` VALUES (119, '八大处', '1');
INSERT INTO `part5` VALUES (120, '桃花', '1');
INSERT INTO `part5` VALUES (121, '王府井', '2');
INSERT INTO `part5` VALUES (122, '地质博物馆', '1');
INSERT INTO `part5` VALUES (123, '北京天文馆', '1');
INSERT INTO `part5` VALUES (124, '水立方', '2');
INSERT INTO `part5` VALUES (125, '游泳', '1');
INSERT INTO `part5` VALUES (126, '中心', '6');
INSERT INTO `part5` VALUES (127, '·', '71');
INSERT INTO `part5` VALUES (128, '开心', '5');
INSERT INTO `part5` VALUES (129, '麻花', '3');
INSERT INTO `part5` VALUES (130, '大型', '1');
INSERT INTO `part5` VALUES (131, '宫廷', '1');
INSERT INTO `part5` VALUES (132, '舞台剧', '1');
INSERT INTO `part5` VALUES (133, '《', '47');
INSERT INTO `part5` VALUES (134, '甄', '1');
INSERT INTO `part5` VALUES (135, '嬛', '1');
INSERT INTO `part5` VALUES (136, '传', '1');
INSERT INTO `part5` VALUES (137, '》', '47');
INSERT INTO `part5` VALUES (138, '沉浸', '17');
INSERT INTO `part5` VALUES (139, '版', '1');
INSERT INTO `part5` VALUES (140, '居庸关', '1');
INSERT INTO `part5` VALUES (141, '大栅栏', '1');
INSERT INTO `part5` VALUES (142, '龙庆峡', '1');
INSERT INTO `part5` VALUES (143, '国家大剧院', '1');
INSERT INTO `part5` VALUES (144, '首都博物馆', '1');
INSERT INTO `part5` VALUES (145, '天安门城楼', '1');
INSERT INTO `part5` VALUES (146, '八达岭', '3');
INSERT INTO `part5` VALUES (147, '北线', '1');
INSERT INTO `part5` VALUES (148, '-', '18');
INSERT INTO `part5` VALUES (149, '国旗', '1');
INSERT INTO `part5` VALUES (150, '海棠花', '1');
INSERT INTO `part5` VALUES (151, '汽车', '2');
INSERT INTO `part5` VALUES (152, '逛', '1');
INSERT INTO `part5` VALUES (153, '胡同', '1');
INSERT INTO `part5` VALUES (154, 'Jason', '2');
INSERT INTO `part5` VALUES (155, 'Derulo', '2');
INSERT INTO `part5` VALUES (156, 'THE', '4');
INSERT INTO `part5` VALUES (157, 'LAST', '2');
INSERT INTO `part5` VALUES (158, 'DANCE', '2');
INSERT INTO `part5` VALUES (159, 'China', '2');
INSERT INTO `part5` VALUES (160, 'Tour', '3');
INSERT INTO `part5` VALUES (161, '巡回演唱', '13');
INSERT INTO `part5` VALUES (162, '北京站', '5');
INSERT INTO `part5` VALUES (163, '风中', '1');
INSERT INTO `part5` VALUES (164, '写生', '1');
INSERT INTO `part5` VALUES (165, '泰康', '1');
INSERT INTO `part5` VALUES (166, '保险', '1');
INSERT INTO `part5` VALUES (167, '集团', '1');
INSERT INTO `part5` VALUES (168, '三十周年', '1');
INSERT INTO `part5` VALUES (169, '艺术展', '1');
INSERT INTO `part5` VALUES (170, '潭柘寺', '1');
INSERT INTO `part5` VALUES (171, '钟鼓楼', '1');
INSERT INTO `part5` VALUES (172, '香山', '1');
INSERT INTO `part5` VALUES (173, '梨花', '1');
INSERT INTO `part5` VALUES (174, '牛街', '1');
INSERT INTO `part5` VALUES (175, '中国美术馆', '1');
INSERT INTO `part5` VALUES (176, '中央', '1');
INSERT INTO `part5` VALUES (177, '广播', '1');
INSERT INTO `part5` VALUES (178, '电视塔', '1');
INSERT INTO `part5` VALUES (179, '南山', '1');
INSERT INTO `part5` VALUES (180, '滑雪场', '2');
INSERT INTO `part5` VALUES (181, '牡丹花', '1');
INSERT INTO `part5` VALUES (182, '杏花', '1');
INSERT INTO `part5` VALUES (183, '人民大会堂', '1');
INSERT INTO `part5` VALUES (184, '探秘', '1');
INSERT INTO `part5` VALUES (185, '皇家', '1');
INSERT INTO `part5` VALUES (186, '古迹', '1');
INSERT INTO `part5` VALUES (187, '地坛公园', '1');
INSERT INTO `part5` VALUES (188, '故宫', '1');
INSERT INTO `part5` VALUES (189, '珍宝馆', '1');
INSERT INTO `part5` VALUES (190, '毛主席纪念堂', '1');
INSERT INTO `part5` VALUES (191, '798', '1');
INSERT INTO `part5` VALUES (192, '艺术', '6');
INSERT INTO `part5` VALUES (193, '区', '2');
INSERT INTO `part5` VALUES (194, '未来', '1');
INSERT INTO `part5` VALUES (195, '司马台长城', '1');
INSERT INTO `part5` VALUES (196, '陶然亭', '1');
INSERT INTO `part5` VALUES (197, '刘忻', '1');
INSERT INTO `part5` VALUES (198, '遗忘', '1');
INSERT INTO `part5` VALUES (199, '俱乐部', '1');
INSERT INTO `part5` VALUES (200, '2026', '15');
INSERT INTO `part5` VALUES (201, '所到之处', '1');
INSERT INTO `part5` VALUES (202, '广德', '1');
INSERT INTO `part5` VALUES (203, '楼', '2');
INSERT INTO `part5` VALUES (204, '德云社', '2');
INSERT INTO `part5` VALUES (205, '相声', '2');
INSERT INTO `part5` VALUES (206, '大会', '4');
INSERT INTO `part5` VALUES (207, '斯拉法', '2');
INSERT INTO `part5` VALUES (208, '下雪', '2');
INSERT INTO `part5` VALUES (209, '秀', '4');
INSERT INTO `part5` VALUES (210, 'Slava', '2');
INSERT INTO `part5` VALUES (211, '\'', '3');
INSERT INTO `part5` VALUES (212, 's', '3');
INSERT INTO `part5` VALUES (213, 'Snow', '2');
INSERT INTO `part5` VALUES (214, 'Show', '2');
INSERT INTO `part5` VALUES (215, '植物园', '4');
INSERT INTO `part5` VALUES (216, '原', '1');
INSERT INTO `part5` VALUES (217, '北京植物园', '1');
INSERT INTO `part5` VALUES (218, '鼓楼', '1');
INSERT INTO `part5` VALUES (219, '西部', '1');
INSERT INTO `part5` VALUES (220, '式', '22');
INSERT INTO `part5` VALUES (221, '互动', '4');
INSERT INTO `part5` VALUES (222, '喜剧', '8');
INSERT INTO `part5` VALUES (223, '婚礼', '1');
INSERT INTO `part5` VALUES (224, '大', '6');
INSERT INTO `part5` VALUES (225, '镖客', '1');
INSERT INTO `part5` VALUES (226, '前门', '1');
INSERT INTO `part5` VALUES (227, '三庆园', '1');
INSERT INTO `part5` VALUES (228, '店', '2');
INSERT INTO `part5` VALUES (229, '玉兰花', '1');
INSERT INTO `part5` VALUES (230, '野生动物', '2');
INSERT INTO `part5` VALUES (231, '李宇春', '1');
INSERT INTO `part5` VALUES (232, '皇后', '1');
INSERT INTO `part5` VALUES (233, '梦想', '1');
INSERT INTO `part5` VALUES (234, '老舍', '2');
INSERT INTO `part5` VALUES (235, '茶馆', '2');
INSERT INTO `part5` VALUES (236, '遇见', '1');
INSERT INTO `part5` VALUES (237, '吴哥窟', '1');
INSERT INTO `part5` VALUES (238, '柬埔寨', '1');
INSERT INTO `part5` VALUES (239, '吴哥', '1');
INSERT INTO `part5` VALUES (240, '文明', '1');
INSERT INTO `part5` VALUES (241, '文物', '2');
INSERT INTO `part5` VALUES (242, '特展', '1');
INSERT INTO `part5` VALUES (243, '经典', '2');
INSERT INTO `part5` VALUES (244, '五棵松', '2');
INSERT INTO `part5` VALUES (245, 'MELAND', '1');
INSERT INTO `part5` VALUES (246, 'CLUB', '1');
INSERT INTO `part5` VALUES (247, '红螺寺', '1');
INSERT INTO `part5` VALUES (248, '俄罗斯', '2');
INSERT INTO `part5` VALUES (249, '芭蕾', '1');
INSERT INTO `part5` VALUES (250, '剧院', '1');
INSERT INTO `part5` VALUES (251, '—', '4');
INSERT INTO `part5` VALUES (252, '芭蕾舞剧', '1');
INSERT INTO `part5` VALUES (253, '天鹅湖', '1');
INSERT INTO `part5` VALUES (254, '胡桃', '1');
INSERT INTO `part5` VALUES (255, '夹子', '1');
INSERT INTO `part5` VALUES (256, '巡演', '4');
INSERT INTO `part5` VALUES (257, '京剧', '1');
INSERT INTO `part5` VALUES (258, '表演', '2');
INSERT INTO `part5` VALUES (259, '孔庙', '1');
INSERT INTO `part5` VALUES (260, '国子监', '2');
INSERT INTO `part5` VALUES (261, '张月', '1');
INSERT INTO `part5` VALUES (262, '月章', '1');
INSERT INTO `part5` VALUES (263, '生日', '1');
INSERT INTO `part5` VALUES (264, '见面会', '1');
INSERT INTO `part5` VALUES (265, '传统', '1');
INSERT INTO `part5` VALUES (266, '曲艺', '1');
INSERT INTO `part5` VALUES (267, '卢沟桥', '1');
INSERT INTO `part5` VALUES (268, '曲水', '2');
INSERT INTO `part5` VALUES (269, '兰亭', '2');
INSERT INTO `part5` VALUES (270, '水疗', '1');
INSERT INTO `part5` VALUES (271, '黄花', '1');
INSERT INTO `part5` VALUES (272, '城水', '1');
INSERT INTO `part5` VALUES (273, '汪苏', '1');
INSERT INTO `part5` VALUES (274, '泷', '1');
INSERT INTO `part5` VALUES (275, '明日', '1');
INSERT INTO `part5` VALUES (276, '古代', '1');
INSERT INTO `part5` VALUES (277, '宋庆龄故居', '1');
INSERT INTO `part5` VALUES (278, '太平洋', '1');
INSERT INTO `part5` VALUES (279, '海底', '2');
INSERT INTO `part5` VALUES (280, '电影', '2');
INSERT INTO `part5` VALUES (281, '西山', '2');
INSERT INTO `part5` VALUES (282, '国家森林公园', '2');
INSERT INTO `part5` VALUES (283, '陆地', '1');
INSERT INTO `part5` VALUES (284, '游轮', '2');
INSERT INTO `part5` VALUES (285, '温泉', '1');
INSERT INTO `part5` VALUES (286, '军都山', '1');
INSERT INTO `part5` VALUES (287, '脱口秀', '10');
INSERT INTO `part5` VALUES (288, '｜', '20');
INSERT INTO `part5` VALUES (289, '周一', '1');
INSERT INTO `part5` VALUES (290, '至', '1');
INSERT INTO `part5` VALUES (291, '周日', '2');
INSERT INTO `part5` VALUES (292, '综艺', '2');
INSERT INTO `part5` VALUES (293, '卡司', '2');
INSERT INTO `part5` VALUES (294, '吐槽', '2');
INSERT INTO `part5` VALUES (295, '爆笑', '5');
INSERT INTO `part5` VALUES (296, '【', '5');
INSERT INTO `part5` VALUES (297, '大笑', '2');
INSERT INTO `part5` VALUES (298, '】', '5');
INSERT INTO `part5` VALUES (299, '即兴', '2');
INSERT INTO `part5` VALUES (300, '之夜', '3');
INSERT INTO `part5` VALUES (301, '精品', '2');
INSERT INTO `part5` VALUES (302, '＞', '1');
INSERT INTO `part5` VALUES (303, '欢乐', '5');
INSERT INTO `part5` VALUES (304, '魔方', '1');
INSERT INTO `part5` VALUES (305, '于祥宇', '2');
INSERT INTO `part5` VALUES (306, '专场', '3');
INSERT INTO `part5` VALUES (307, '最小', '1');
INSERT INTO `part5` VALUES (308, '单位', '1');
INSERT INTO `part5` VALUES (309, '蜡梅', '1');
INSERT INTO `part5` VALUES (310, '考古', '1');
INSERT INTO `part5` VALUES (311, '唐宫', '1');
INSERT INTO `part5` VALUES (312, '夜宴', '1');
INSERT INTO `part5` VALUES (313, 'XR', '1');
INSERT INTO `part5` VALUES (314, '空间', '1');
INSERT INTO `part5` VALUES (315, '展', '3');
INSERT INTO `part5` VALUES (316, '赵雷', '1');
INSERT INTO `part5` VALUES (317, '信号', '1');
INSERT INTO `part5` VALUES (318, '好汉坡', '1');
INSERT INTO `part5` VALUES (319, '石景山游乐园', '1');
INSERT INTO `part5` VALUES (320, '大张伟', '1');
INSERT INTO `part5` VALUES (321, '“', '4');
INSERT INTO `part5` VALUES (322, '大好时光', '1');
INSERT INTO `part5` VALUES (323, '伟大', '1');
INSERT INTO `part5` VALUES (324, '人生', '3');
INSERT INTO `part5` VALUES (325, '”', '4');
INSERT INTO `part5` VALUES (326, '玉渊潭公园', '1');
INSERT INTO `part5` VALUES (327, '工艺', '1');
INSERT INTO `part5` VALUES (328, '定陵', '1');
INSERT INTO `part5` VALUES (329, '喇叭', '1');
INSERT INTO `part5` VALUES (330, '沟', '1');
INSERT INTO `part5` VALUES (331, '原始森林', '1');
INSERT INTO `part5` VALUES (332, '中山公园', '1');
INSERT INTO `part5` VALUES (333, '迎春花', '1');
INSERT INTO `part5` VALUES (334, '华熙', '1');
INSERT INTO `part5` VALUES (335, 'Live', '1');
INSERT INTO `part5` VALUES (336, '橙风岛', '1');
INSERT INTO `part5` VALUES (337, 'X', '1');
INSERT INTO `part5` VALUES (338, '奥莉', '1');
INSERT INTO `part5` VALUES (339, '兔', '1');
INSERT INTO `part5` VALUES (340, '清华大学', '1');
INSERT INTO `part5` VALUES (341, '张新成', '1');
INSERT INTO `part5` VALUES (342, '「', '5');
INSERT INTO `part5` VALUES (343, '新程', '1');
INSERT INTO `part5` VALUES (344, 'New', '1');
INSERT INTO `part5` VALUES (345, 'Journey', '2');
INSERT INTO `part5` VALUES (346, '」', '5');
INSERT INTO `part5` VALUES (347, '玛雅', '2');
INSERT INTO `part5` VALUES (348, '海滩', '2');
INSERT INTO `part5` VALUES (349, 'BIGBANG10', '1');
INSERT INTO `part5` VALUES (350, 'EXHIBITION', '1');
INSERT INTO `part5` VALUES (351, ':', '3');
INSERT INTO `part5` VALUES (352, 'A', '2');
INSERT INTO `part5` VALUES (353, 'TO', '1');
INSERT INTO `part5` VALUES (354, 'Z', '1');
INSERT INTO `part5` VALUES (355, '十周年', '2');
INSERT INTO `part5` VALUES (356, '回顾', '1');
INSERT INTO `part5` VALUES (357, '大展', '4');
INSERT INTO `part5` VALUES (358, '花卉', '1');
INSERT INTO `part5` VALUES (359, '毛', '1');
INSERT INTO `part5` VALUES (360, '不易', '1');
INSERT INTO `part5` VALUES (361, '只', '1');
INSERT INTO `part5` VALUES (362, '今夜', '1');
INSERT INTO `part5` VALUES (363, '首钢', '1');
INSERT INTO `part5` VALUES (364, '一', '2');
INSERT INTO `part5` VALUES (365, '高炉', '1');
INSERT INTO `part5` VALUES (366, 'SoReal', '1');
INSERT INTO `part5` VALUES (367, '科幻', '1');
INSERT INTO `part5` VALUES (368, '徐浩伦', '1');
INSERT INTO `part5` VALUES (369, '谭湘文', '1');
INSERT INTO `part5` VALUES (370, '、', '1');
INSERT INTO `part5` VALUES (371, '小帕', '1');
INSERT INTO `part5` VALUES (372, '领衔', '1');
INSERT INTO `part5` VALUES (373, 'Ta', '1');
INSERT INTO `part5` VALUES (374, '朋友', '1');
INSERT INTO `part5` VALUES (375, '们', '1');
INSERT INTO `part5` VALUES (376, '3', '1');
INSERT INTO `part5` VALUES (377, '全国', '3');
INSERT INTO `part5` VALUES (378, '笑果', '2');
INSERT INTO `part5` VALUES (379, '出品', '2');
INSERT INTO `part5` VALUES (380, '@', '2');
INSERT INTO `part5` VALUES (381, '儿童剧', '1');
INSERT INTO `part5` VALUES (382, '白雪公主', '1');
INSERT INTO `part5` VALUES (383, '中华民族', '1');
INSERT INTO `part5` VALUES (384, '博物院', '3');
INSERT INTO `part5` VALUES (385, '国内', '1');
INSERT INTO `part5` VALUES (386, '首档', '1');
INSERT INTO `part5` VALUES (387, '机关', '1');
INSERT INTO `part5` VALUES (388, 'mapping', '1');
INSERT INTO `part5` VALUES (389, '融合', '1');
INSERT INTO `part5` VALUES (390, '惊悚', '4');
INSERT INTO `part5` VALUES (391, '诡笑', '1');
INSERT INTO `part5` VALUES (392, '水裹', '2');
INSERT INTO `part5` VALUES (393, '汤泉', '3');
INSERT INTO `part5` VALUES (394, '生活', '3');
INSERT INTO `part5` VALUES (395, '乌兰图', '1');
INSERT INTO `part5` VALUES (396, '雅', '1');
INSERT INTO `part5` VALUES (397, '花', '2');
INSERT INTO `part5` VALUES (398, '开', '2');
INSERT INTO `part5` VALUES (399, '四季', '1');
INSERT INTO `part5` VALUES (400, '～', '1');
INSERT INTO `part5` VALUES (401, '心路', '1');
INSERT INTO `part5` VALUES (402, '歌者', '2');
INSERT INTO `part5` VALUES (403, '音乐', '1');
INSERT INTO `part5` VALUES (404, '周深', '1');
INSERT INTO `part5` VALUES (405, '深深', '1');
INSERT INTO `part5` VALUES (406, '富国', '1');
INSERT INTO `part5` VALUES (407, '长安街', '1');
INSERT INTO `part5` VALUES (408, '嬉水', '1');
INSERT INTO `part5` VALUES (409, '刘老根', '1');
INSERT INTO `part5` VALUES (410, '舞台', '1');
INSERT INTO `part5` VALUES (411, '趣', '1');
INSERT INTO `part5` VALUES (412, '听', '1');
INSERT INTO `part5` VALUES (413, 'x', '1');
INSERT INTO `part5` VALUES (414, '喜悦', '1');
INSERT INTO `part5` VALUES (415, '知名', '1');
INSERT INTO `part5` VALUES (416, '咖', '1');
INSERT INTO `part5` VALUES (417, '演员', '1');
INSERT INTO `part5` VALUES (418, '上海', '86');
INSERT INTO `part5` VALUES (419, '迪士尼', '2');
INSERT INTO `part5` VALUES (420, '上海博物馆', '2');
INSERT INTO `part5` VALUES (421, '海洋', '6');
INSERT INTO `part5` VALUES (422, '千古', '2');
INSERT INTO `part5` VALUES (423, '情', '2');
INSERT INTO `part5` VALUES (424, '外滩', '3');
INSERT INTO `part5` VALUES (425, '东方明珠', '4');
INSERT INTO `part5` VALUES (426, '豫园', '1');
INSERT INTO `part5` VALUES (427, '海昌', '1');
INSERT INTO `part5` VALUES (428, '海洋公园', '1');
INSERT INTO `part5` VALUES (429, '乐高', '2');
INSERT INTO `part5` VALUES (430, '®', '1');
INSERT INTO `part5` VALUES (431, '陆家嘴', '1');
INSERT INTO `part5` VALUES (432, '小镇', '2');
INSERT INTO `part5` VALUES (433, '大厦', '4');
INSERT INTO `part5` VALUES (434, '深度', '1');
INSERT INTO `part5` VALUES (435, '天文馆', '1');
INSERT INTO `part5` VALUES (436, '黄浦江', '5');
INSERT INTO `part5` VALUES (437, '十六铺', '1');
INSERT INTO `part5` VALUES (438, '码头', '5');
INSERT INTO `part5` VALUES (439, '城隍庙', '2');
INSERT INTO `part5` VALUES (440, '旅游区', '5');
INSERT INTO `part5` VALUES (441, '上海动物园', '1');
INSERT INTO `part5` VALUES (442, '磁浮', '1');
INSERT INTO `part5` VALUES (443, '列车', '1');
INSERT INTO `part5` VALUES (444, '之巅', '1');
INSERT INTO `part5` VALUES (445, '厅', '3');
INSERT INTO `part5` VALUES (446, '南京路', '1');
INSERT INTO `part5` VALUES (447, '步行街', '1');
INSERT INTO `part5` VALUES (448, '朱家角', '1');
INSERT INTO `part5` VALUES (449, '景区', '5');
INSERT INTO `part5` VALUES (450, '交通银行', '2');
INSERT INTO `part5` VALUES (451, '耀雪', '1');
INSERT INTO `part5` VALUES (452, '冰雪', '2');
INSERT INTO `part5` VALUES (453, '温室', '1');
INSERT INTO `part5` VALUES (454, 'TASTE', '1');
INSERT INTO `part5` VALUES (455, 'OF', '1');
INSERT INTO `part5` VALUES (456, 'CHINA', '1');
INSERT INTO `part5` VALUES (457, '味', '1');
INSERT INTO `part5` VALUES (458, '餐厅', '1');
INSERT INTO `part5` VALUES (459, '浦东', '1');
INSERT INTO `part5` VALUES (460, '武', '1');
INSERT INTO `part5` VALUES (461, '康路', '1');
INSERT INTO `part5` VALUES (462, '广富林', '1');
INSERT INTO `part5` VALUES (463, '遗址', '1');
INSERT INTO `part5` VALUES (464, '世博', '1');
INSERT INTO `part5` VALUES (465, '文化公园', '1');
INSERT INTO `part5` VALUES (466, '东馆', '1');
INSERT INTO `part5` VALUES (467, '金茂', '3');
INSERT INTO `part5` VALUES (468, '88', '1');
INSERT INTO `part5` VALUES (469, '层', '2');
INSERT INTO `part5` VALUES (470, '隧道', '1');
INSERT INTO `part5` VALUES (471, '影视', '1');
INSERT INTO `part5` VALUES (472, '郁金香', '1');
INSERT INTO `part5` VALUES (473, '人民广场', '2');
INSERT INTO `part5` VALUES (474, 'INS', '1');
INSERT INTO `part5` VALUES (475, 'LAND', '2');
INSERT INTO `part5` VALUES (476, '新', '2');
INSERT INTO `part5` VALUES (477, '杜莎', '1');
INSERT INTO `part5` VALUES (478, '夫人', '1');
INSERT INTO `part5` VALUES (479, '蜡像馆', '1');
INSERT INTO `part5` VALUES (480, '环境', '7');
INSERT INTO `part5` VALUES (481, '驻演', '5');
INSERT INTO `part5` VALUES (482, '阿波罗', '2');
INSERT INTO `part5` VALUES (483, '尼亚', '2');
INSERT INTO `part5` VALUES (484, '（', '3');
INSERT INTO `part5` VALUES (485, '）', '3');
INSERT INTO `part5` VALUES (486, '复兴', '1');
INSERT INTO `part5` VALUES (487, '新天地', '2');
INSERT INTO `part5` VALUES (488, '前传', '1');
INSERT INTO `part5` VALUES (489, '：', '2');
INSERT INTO `part5` VALUES (490, '桑塔露', '1');
INSERT INTO `part5` VALUES (491, '琪亚', '1');
INSERT INTO `part5` VALUES (492, '田子坊', '1');
INSERT INTO `part5` VALUES (493, 'The', '1');
INSERT INTO `part5` VALUES (494, 'Stage', '1');
INSERT INTO `part5` VALUES (495, '白玉兰', '1');
INSERT INTO `part5` VALUES (496, '观景台', '1');
INSERT INTO `part5` VALUES (497, '四行', '1');
INSERT INTO `part5` VALUES (498, '仓库', '1');
INSERT INTO `part5` VALUES (499, '抗战', '1');
INSERT INTO `part5` VALUES (500, '纪念馆', '2');
INSERT INTO `part5` VALUES (501, '中华', '2');
INSERT INTO `part5` VALUES (502, '艺术宫', '1');
INSERT INTO `part5` VALUES (503, '悬念', '1');
INSERT INTO `part5` VALUES (504, '剧场', '2');
INSERT INTO `part5` VALUES (505, '9', '1');
INSERT INTO `part5` VALUES (506, '号', '1');
INSERT INTO `part5` VALUES (507, '秘事', '1');
INSERT INTO `part5` VALUES (508, '浦江', '1');
INSERT INTO `part5` VALUES (509, 'RED', '1');
INSERT INTO `part5` VALUES (510, '疯狂', '2');
INSERT INTO `part5` VALUES (511, '城', '4');
INSERT INTO `part5` VALUES (512, '静安寺', '1');
INSERT INTO `part5` VALUES (513, 'Charlie', '1');
INSERT INTO `part5` VALUES (514, 'Puth', '1');
INSERT INTO `part5` VALUES (515, 'Whatever', '1');
INSERT INTO `part5` VALUES (516, 'Clever', '1');
INSERT INTO `part5` VALUES (517, '!', '2');
INSERT INTO `part5` VALUES (518, 'World', '1');
INSERT INTO `part5` VALUES (519, '上海站', '5');
INSERT INTO `part5` VALUES (520, '都市', '1');
INSERT INTO `part5` VALUES (521, '旗袍', '1');
INSERT INTO `part5` VALUES (522, '滴水', '1');
INSERT INTO `part5` VALUES (523, '湖', '1');
INSERT INTO `part5` VALUES (524, '航海', '1');
INSERT INTO `part5` VALUES (525, '玩偶', '1');
INSERT INTO `part5` VALUES (526, '双年展', '1');
INSERT INTO `part5` VALUES (527, 'WonderDolls2026', '1');
INSERT INTO `part5` VALUES (528, '马戏', '2');
INSERT INTO `part5` VALUES (529, '本帮菜', '1');
INSERT INTO `part5` VALUES (530, '品鉴', '1');
INSERT INTO `part5` VALUES (531, '烹饪', '1');
INSERT INTO `part5` VALUES (532, '漾', '1');
INSERT INTO `part5` VALUES (533, 'SPACE', '1');
INSERT INTO `part5` VALUES (534, '童漠', '1');
INSERT INTO `part5` VALUES (535, '男', '1');
INSERT INTO `part5` VALUES (536, '寻找', '1');
INSERT INTO `part5` VALUES (537, '王', '2');
INSERT INTO `part5` VALUES (538, '医生', '1');
INSERT INTO `part5` VALUES (539, '北', '1');
INSERT INTO `part5` VALUES (540, '下关', '1');
INSERT INTO `part5` VALUES (541, '特别版', '1');
INSERT INTO `part5` VALUES (542, '丨', '1');
INSERT INTO `part5` VALUES (543, '2026NBA', '1');
INSERT INTO `part5` VALUES (544, '篮球', '1');
INSERT INTO `part5` VALUES (545, '盛典', '1');
INSERT INTO `part5` VALUES (546, '虹桥店', '2');
INSERT INTO `part5` VALUES (547, '中国共产党第一次全国代表大会', '1');
INSERT INTO `part5` VALUES (548, '会址', '1');
INSERT INTO `part5` VALUES (549, '辰山', '1');
INSERT INTO `part5` VALUES (550, '史前', '1');
INSERT INTO `part5` VALUES (551, '星球', '1');
INSERT INTO `part5` VALUES (552, '恐龙', '1');
INSERT INTO `part5` VALUES (553, '篇', '1');
INSERT INTO `part5` VALUES (554, '巨幕', '1');
INSERT INTO `part5` VALUES (555, '金融中心', '3');
INSERT INTO `part5` VALUES (556, '树之巅', '1');
INSERT INTO `part5` VALUES (557, '美洲', '1');
INSERT INTO `part5` VALUES (558, '古代文明', '1');
INSERT INTO `part5` VALUES (559, '金陵', '1');
INSERT INTO `part5` VALUES (560, '东路', '1');
INSERT INTO `part5` VALUES (561, '樱花', '1');
INSERT INTO `part5` VALUES (562, '71', '1');
INSERT INTO `part5` VALUES (563, '特别', '3');
INSERT INTO `part5` VALUES (564, '沪语', '1');
INSERT INTO `part5` VALUES (565, '普通话', '1');
INSERT INTO `part5` VALUES (566, '•', '2');
INSERT INTO `part5` VALUES (567, 'SpicyComedy', '1');
INSERT INTO `part5` VALUES (568, '安福', '1');
INSERT INTO `part5` VALUES (569, '路', '3');
INSERT INTO `part5` VALUES (570, '大自然', '1');
INSERT INTO `part5` VALUES (571, '昆虫', '2');
INSERT INTO `part5` VALUES (572, '馆', '2');
INSERT INTO `part5` VALUES (573, '爬', '1');
INSERT INTO `part5` VALUES (574, '宠', '1');
INSERT INTO `part5` VALUES (575, '探索', '2');
INSERT INTO `part5` VALUES (576, '思南', '1');
INSERT INTO `part5` VALUES (577, '公馆', '1');
INSERT INTO `part5` VALUES (578, '武康', '1');
INSERT INTO `part5` VALUES (579, '大楼', '1');
INSERT INTO `part5` VALUES (580, '叙宴', '1');
INSERT INTO `part5` VALUES (581, '旗舰店', '1');
INSERT INTO `part5` VALUES (582, 'P1Harmony', '1');
INSERT INTO `part5` VALUES (583, 'FAN', '1');
INSERT INTO `part5` VALUES (584, 'MEETING', '1');
INSERT INTO `part5` VALUES (585, '\"', '4');
INSERT INTO `part5` VALUES (586, 'PHANTOM', '1');
INSERT INTO `part5` VALUES (587, 'SIGNAL', '1');
INSERT INTO `part5` VALUES (588, '喜剪', '1');
INSERT INTO `part5` VALUES (589, '吹', '1');
INSERT INTO `part5` VALUES (590, '理发店', '1');
INSERT INTO `part5` VALUES (591, '危险', '1');
INSERT INTO `part5` VALUES (592, '游戏', '1');
INSERT INTO `part5` VALUES (593, '纪念', '1');
INSERT INTO `part5` VALUES (594, '演出季', '1');
INSERT INTO `part5` VALUES (595, '不眠之夜', '1');
INSERT INTO `part5` VALUES (596, '原创', '4');
INSERT INTO `part5` VALUES (597, '荒诞', '1');
INSERT INTO `part5` VALUES (598, '破墙', '1');
INSERT INTO `part5` VALUES (599, 'h3R3', '1');
INSERT INTO `part5` VALUES (600, '刘清云', '1');
INSERT INTO `part5` VALUES (601, '回响', '1');
INSERT INTO `part5` VALUES (602, '李荣浩', '1');
INSERT INTO `part5` VALUES (603, '黑马', '1');
INSERT INTO `part5` VALUES (604, '佘山', '1');
INSERT INTO `part5` VALUES (605, '旅游', '8');
INSERT INTO `part5` VALUES (606, '光影', '1');
INSERT INTO `part5` VALUES (607, '悬疑剧', '1');
INSERT INTO `part5` VALUES (608, '禁忌', '1');
INSERT INTO `part5` VALUES (609, '色彩', '1');
INSERT INTO `part5` VALUES (610, '梅花', '1');
INSERT INTO `part5` VALUES (611, '共青', '1');
INSERT INTO `part5` VALUES (612, '森林公园', '1');
INSERT INTO `part5` VALUES (613, '星空', '1');
INSERT INTO `part5` VALUES (614, '耀', '1');
INSERT INTO `part5` VALUES (615, '雪水', '1');
INSERT INTO `part5` VALUES (616, '高天佐', '1');
INSERT INTO `part5` VALUES (617, '美丽', '1');
INSERT INTO `part5` VALUES (618, '车入', '1');
INSERT INTO `part5` VALUES (619, '枫叶', '1');
INSERT INTO `part5` VALUES (620, '潘玮柏', '1');
INSERT INTO `part5` VALUES (621, 'MADLOVE', '1');
INSERT INTO `part5` VALUES (622, 'ULTRA', '1');
INSERT INTO `part5` VALUES (623, '百老汇', '2');
INSERT INTO `part5` VALUES (624, '摇滚音乐', '1');
INSERT INTO `part5` VALUES (625, '剧', '2');
INSERT INTO `part5` VALUES (626, 'LIZZIE', '1');
INSERT INTO `part5` VALUES (627, '丽兹', '1');
INSERT INTO `part5` VALUES (628, '中文版', '1');
INSERT INTO `part5` VALUES (629, '世博会', '1');
INSERT INTO `part5` VALUES (630, '259', '1');
INSERT INTO `part5` VALUES (631, '米', '2');
INSERT INTO `part5` VALUES (632, '全透明', '1');
INSERT INTO `part5` VALUES (633, '悬空', '1');
INSERT INTO `part5` VALUES (634, '廊', '1');
INSERT INTO `part5` VALUES (635, '鬼混', '1');
INSERT INTO `part5` VALUES (636, '戏剧', '2');
INSERT INTO `part5` VALUES (637, '开关', '1');
INSERT INTO `part5` VALUES (638, 'SWITCH', '1');
INSERT INTO `part5` VALUES (639, '上海体育场', '1');
INSERT INTO `part5` VALUES (640, '马王堆', '1');
INSERT INTO `part5` VALUES (641, '汉墓', '1');
INSERT INTO `part5` VALUES (642, '千金之家', '1');
INSERT INTO `part5` VALUES (643, '悬疑', '3');
INSERT INTO `part5` VALUES (644, '嗜血', '1');
INSERT INTO `part5` VALUES (645, '博士', '1');
INSERT INTO `part5` VALUES (646, '南京东路', '2');
INSERT INTO `part5` VALUES (647, '天天', '1');
INSERT INTO `part5` VALUES (648, '谋杀', '1');
INSERT INTO `part5` VALUES (649, '致命', '1');
INSERT INTO `part5` VALUES (650, '悬案', '1');
INSERT INTO `part5` VALUES (651, '女性', '1');
INSERT INTO `part5` VALUES (652, '觉醒', '1');
INSERT INTO `part5` VALUES (653, '超绝', '1');
INSERT INTO `part5` VALUES (654, '反转', '1');
INSERT INTO `part5` VALUES (655, '结局', '1');
INSERT INTO `part5` VALUES (656, '推理', '1');
INSERT INTO `part5` VALUES (657, '外', '2');
INSERT INTO `part5` VALUES (658, '巨作', '1');
INSERT INTO `part5` VALUES (659, '淮海路', '1');
INSERT INTO `part5` VALUES (660, '#', '1');
INSERT INTO `part5` VALUES (661, '0528', '1');
INSERT INTO `part5` VALUES (662, '枫', '1');
INSERT INTO `part5` VALUES (663, '泾', '1');
INSERT INTO `part5` VALUES (664, 'ERA', '1');
INSERT INTO `part5` VALUES (665, '时空', '1');
INSERT INTO `part5` VALUES (666, '之旅', '1');
INSERT INTO `part5` VALUES (667, '蓝精灵', '1');
INSERT INTO `part5` VALUES (668, '世茂', '2');
INSERT INTO `part5` VALUES (669, '精灵', '2');
INSERT INTO `part5` VALUES (670, '归来', '1');
INSERT INTO `part5` VALUES (671, '超级', '2');
INSERT INTO `part5` VALUES (672, '歌会', '1');
INSERT INTO `part5` VALUES (673, '中秋', '1');
INSERT INTO `part5` VALUES (674, '场', '1');
INSERT INTO `part5` VALUES (675, '贾想', '1');
INSERT INTO `part5` VALUES (676, '无限', '1');
INSERT INTO `part5` VALUES (677, '玩家', '1');
INSERT INTO `part5` VALUES (678, 'VR', '1');
INSERT INTO `part5` VALUES (679, '海上', '2');
INSERT INTO `part5` VALUES (680, '生态园', '1');
INSERT INTO `part5` VALUES (681, '思南路', '1');
INSERT INTO `part5` VALUES (682, '会展中心', '2');
INSERT INTO `part5` VALUES (683, '龙华寺', '1');
INSERT INTO `part5` VALUES (684, '万国', '1');
INSERT INTO `part5` VALUES (685, '博览', '2');
INSERT INTO `part5` VALUES (686, '群', '1');
INSERT INTO `part5` VALUES (687, '一支', '1');
INSERT INTO `part5` VALUES (688, '麦', '1');
INSERT INTO `part5` VALUES (689, '小剧场', '1');
INSERT INTO `part5` VALUES (690, '|', '2');
INSERT INTO `part5` VALUES (691, '拼盘', '1');
INSERT INTO `part5` VALUES (692, '长风', '1');
INSERT INTO `part5` VALUES (693, '辛吉路', '2');
INSERT INTO `part5` VALUES (694, '画', '2');
INSERT INTO `part5` VALUES (695, '材店', '2');
INSERT INTO `part5` VALUES (696, 'UFC', '2');
INSERT INTO `part5` VALUES (697, '格斗', '1');
INSERT INTO `part5` VALUES (698, '暨', '1');
INSERT INTO `part5` VALUES (699, '精英', '1');
INSERT INTO `part5` VALUES (700, '怪物', '1');
INSERT INTO `part5` VALUES (701, '永不', '1');
INSERT INTO `part5` VALUES (702, '消失', '1');
INSERT INTO `part5` VALUES (703, '黑水城', '1');
INSERT INTO `part5` VALUES (704, '文', '1');
INSERT INTO `part5` VALUES (705, '博大', '1');
INSERT INTO `part5` VALUES (706, '云中', '1');
INSERT INTO `part5` VALUES (707, '东平', '1');
INSERT INTO `part5` VALUES (708, '玻璃', '1');
INSERT INTO `part5` VALUES (709, '水晶', '1');
INSERT INTO `part5` VALUES (710, '公主', '1');
INSERT INTO `part5` VALUES (711, 'GAI', '1');
INSERT INTO `part5` VALUES (712, '周延', '1');
INSERT INTO `part5` VALUES (713, 'REAL', '1');
INSERT INTO `part5` VALUES (714, 'G', '2');
INSERT INTO `part5` VALUES (715, '国风', '1');
INSERT INTO `part5` VALUES (716, 'LIVE', '2');
INSERT INTO `part5` VALUES (717, '兰陵', '1');
INSERT INTO `part5` VALUES (718, '鬼面', '1');
INSERT INTO `part5` VALUES (719, '异闻录', '1');
INSERT INTO `part5` VALUES (720, 'BUSTOUR', '1');
INSERT INTO `part5` VALUES (721, '游', '2');
INSERT INTO `part5` VALUES (722, '徐家汇', '1');
INSERT INTO `part5` VALUES (723, '书院', '1');
INSERT INTO `part5` VALUES (724, '奇迹', '2');
INSERT INTO `part5` VALUES (725, '古猗园', '1');
INSERT INTO `part5` VALUES (726, '深圳', '12');
INSERT INTO `part5` VALUES (727, '科学技术', '1');
INSERT INTO `part5` VALUES (728, '鼎湖山', '1');
INSERT INTO `part5` VALUES (729, '莲花山', '1');
INSERT INTO `part5` VALUES (730, '清远', '3');
INSERT INTO `part5` VALUES (731, '长隆', '11');
INSERT INTO `part5` VALUES (732, '森林王国', '1');
INSERT INTO `part5` VALUES (733, '余荫', '1');
INSERT INTO `part5` VALUES (734, '山房', '1');
INSERT INTO `part5` VALUES (735, '珠海', '8');
INSERT INTO `part5` VALUES (736, '王国', '1');
INSERT INTO `part5` VALUES (737, '广州', '15');
INSERT INTO `part5` VALUES (738, '塔', '3');
INSERT INTO `part5` VALUES (739, '世界之窗', '1');
INSERT INTO `part5` VALUES (740, '国际', '3');
INSERT INTO `part5` VALUES (741, '南越王', '2');
INSERT INTO `part5` VALUES (742, '王墓', '1');
INSERT INTO `part5` VALUES (743, '展区', '2');
INSERT INTO `part5` VALUES (744, '珠江', '3');
INSERT INTO `part5` VALUES (745, '飞船', '1');
INSERT INTO `part5` VALUES (746, '南澳岛', '1');
INSERT INTO `part5` VALUES (747, '潮州', '1');
INSERT INTO `part5` VALUES (748, '古城', '1');
INSERT INTO `part5` VALUES (749, '越秀', '1');
INSERT INTO `part5` VALUES (750, '甘坑', '1');
INSERT INTO `part5` VALUES (751, '平安', '1');
INSERT INTO `part5` VALUES (752, '云际', '1');
INSERT INTO `part5` VALUES (753, '广济桥', '1');
INSERT INTO `part5` VALUES (754, '广东省', '1');
INSERT INTO `part5` VALUES (755, '韩文', '1');
INSERT INTO `part5` VALUES (756, '公祠', '1');
INSERT INTO `part5` VALUES (757, '连州', '1');
INSERT INTO `part5` VALUES (758, '地下河', '1');
INSERT INTO `part5` VALUES (759, '港湾', '1');
INSERT INTO `part5` VALUES (760, '港珠澳', '1');
INSERT INTO `part5` VALUES (761, '大桥', '1');
INSERT INTO `part5` VALUES (762, '礐', '1');
INSERT INTO `part5` VALUES (763, '石', '1');
INSERT INTO `part5` VALUES (764, '巽', '1');
INSERT INTO `part5` VALUES (765, '寮', '1');
INSERT INTO `part5` VALUES (766, '湾', '3');
INSERT INTO `part5` VALUES (767, '陈家祠', '1');
INSERT INTO `part5` VALUES (768, '王宫', '1');
INSERT INTO `part5` VALUES (769, '横琴', '1');
INSERT INTO `part5` VALUES (770, '长隆秀', '1');
INSERT INTO `part5` VALUES (771, '西樵山', '1');
INSERT INTO `part5` VALUES (772, '风景', '2');
INSERT INTO `part5` VALUES (773, '名胜区', '2');
INSERT INTO `part5` VALUES (774, '沙面', '1');
INSERT INTO `part5` VALUES (775, '佛山市', '1');
INSERT INTO `part5` VALUES (776, '祖庙', '1');
INSERT INTO `part5` VALUES (777, '460', '1');
INSERT INTO `part5` VALUES (778, '摩天轮', '2');
INSERT INTO `part5` VALUES (779, '锦绣', '1');
INSERT INTO `part5` VALUES (780, '民俗村', '1');
INSERT INTO `part5` VALUES (781, '丹霞山', '1');
INSERT INTO `part5` VALUES (782, '广东', '4');
INSERT INTO `part5` VALUES (783, '科学', '1');
INSERT INTO `part5` VALUES (784, '东澳岛', '1');
INSERT INTO `part5` VALUES (785, '古龙', '2');
INSERT INTO `part5` VALUES (786, '峡', '2');
INSERT INTO `part5` VALUES (787, '千年', '1');
INSERT INTO `part5` VALUES (788, '瑶寨', '1');
INSERT INTO `part5` VALUES (789, 'GO', '1');
INSERT INTO `part5` VALUES (790, 'WITH', '1');
INSERT INTO `part5` VALUES (791, 'FLOW', '1');
INSERT INTO `part5` VALUES (792, '林', '1');
INSERT INTO `part5` VALUES (793, '峯', '1');
INSERT INTO `part5` VALUES (794, '站', '4');
INSERT INTO `part5` VALUES (795, '飞鸟', '1');
INSERT INTO `part5` VALUES (796, '中山纪念堂', '1');
INSERT INTO `part5` VALUES (797, '大梅沙', '1');
INSERT INTO `part5` VALUES (798, '海滨公园', '1');
INSERT INTO `part5` VALUES (799, '双月湾', '1');
INSERT INTO `part5` VALUES (800, '小梅沙', '2');
INSERT INTO `part5` VALUES (801, '大佛', '1');
INSERT INTO `part5` VALUES (802, '古寺', '1');
INSERT INTO `part5` VALUES (803, '湖光', '1');
INSERT INTO `part5` VALUES (804, '岩', '1');
INSERT INTO `part5` VALUES (805, '赤坎', '2');
INSERT INTO `part5` VALUES (806, '华侨', '1');
INSERT INTO `part5` VALUES (807, '伶仃', '1');
INSERT INTO `part5` VALUES (808, '岛', '4');
INSERT INTO `part5` VALUES (809, '海珠', '1');
INSERT INTO `part5` VALUES (810, '有轨电车', '1');
INSERT INTO `part5` VALUES (811, '1', '1');
INSERT INTO `part5` VALUES (812, '号线', '1');
INSERT INTO `part5` VALUES (813, '沙湾', '1');
INSERT INTO `part5` VALUES (814, '罗浮山', '1');
INSERT INTO `part5` VALUES (815, '正佳', '2');
INSERT INTO `part5` VALUES (816, '极地', '1');
INSERT INTO `part5` VALUES (817, '黄埔军校', '1');
INSERT INTO `part5` VALUES (818, '旧址', '1');
INSERT INTO `part5` VALUES (819, '汕头', '2');
INSERT INTO `part5` VALUES (820, '小', '1');
INSERT INTO `part5` VALUES (821, '华发', '1');
INSERT INTO `part5` VALUES (822, '前', '1');
INSERT INTO `part5` VALUES (823, '海', '1');
INSERT INTO `part5` VALUES (824, '潮汕', '1');
INSERT INTO `part5` VALUES (825, '老城', '1');
INSERT INTO `part5` VALUES (826, '圆明', '1');
INSERT INTO `part5` VALUES (827, '新园', '1');
INSERT INTO `part5` VALUES (828, '梁静茹', '1');
INSERT INTO `part5` VALUES (829, 'Best', '1');
INSERT INTO `part5` VALUES (830, '茹果', '1');
INSERT INTO `part5` VALUES (831, '不', '1');
INSERT INTO `part5` VALUES (832, '唱', '1');
INSERT INTO `part5` VALUES (833, '情歌', '1');
INSERT INTO `part5` VALUES (834, '天字', '1');
INSERT INTO `part5` VALUES (835, '大陆', '1');
INSERT INTO `part5` VALUES (836, '南极', '1');
INSERT INTO `part5` VALUES (837, '村', '1');
INSERT INTO `part5` VALUES (838, '广场', '2');
INSERT INTO `part5` VALUES (839, '商贸', '1');
INSERT INTO `part5` VALUES (840, '海龟', '1');
INSERT INTO `part5` VALUES (841, '湛江', '2');
INSERT INTO `part5` VALUES (842, '军事', '1');
INSERT INTO `part5` VALUES (843, '博览园', '1');
INSERT INTO `part5` VALUES (844, '澳门', '1');
INSERT INTO `part5` VALUES (845, '环岛游', '1');
INSERT INTO `part5` VALUES (846, '牌坊', '1');
INSERT INTO `part5` VALUES (847, '街', '1');
INSERT INTO `part5` VALUES (848, '深圳湾', '1');
INSERT INTO `part5` VALUES (849, '念', '1');
INSERT INTO `part5` VALUES (850, '敦煌', '1');
INSERT INTO `part5` VALUES (851, '石窟', '1');
INSERT INTO `part5` VALUES (852, '圣心', '1');
INSERT INTO `part5` VALUES (853, '教堂', '1');
INSERT INTO `part5` VALUES (854, '清晖园', '1');
INSERT INTO `part5` VALUES (855, '笔架山', '1');
INSERT INTO `part5` VALUES (856, '招商', '1');
INSERT INTO `part5` VALUES (857, '蛇口', '1');
INSERT INTO `part5` VALUES (858, '邮轮', '1');
INSERT INTO `part5` VALUES (859, '母港', '1');
INSERT INTO `part5` VALUES (860, '露营', '1');
INSERT INTO `part5` VALUES (861, '湾区', '1');
INSERT INTO `part5` VALUES (862, '之光', '1');
INSERT INTO `part5` VALUES (863, '中国科学院', '1');
INSERT INTO `part5` VALUES (864, '华南', '1');
INSERT INTO `part5` VALUES (865, '顺德', '1');
INSERT INTO `part5` VALUES (866, '海岸', '2');
INSERT INTO `part5` VALUES (867, 'PLUS', '1');
INSERT INTO `part5` VALUES (868, '黄满', '1');
INSERT INTO `part5` VALUES (869, '寨', '1');
INSERT INTO `part5` VALUES (870, '瀑布', '1');
INSERT INTO `part5` VALUES (871, '陈慈', '1');
INSERT INTO `part5` VALUES (872, '黉', '1');
INSERT INTO `part5` VALUES (873, '故居', '1');
INSERT INTO `part5` VALUES (874, '福田', '1');
INSERT INTO `part5` VALUES (875, '魔脱', '1');
INSERT INTO `part5` VALUES (876, '每周', '1');
INSERT INTO `part5` VALUES (877, '一至', '1');
INSERT INTO `part5` VALUES (878, '解压', '1');
INSERT INTO `part5` VALUES (879, '老街', '1');
INSERT INTO `part5` VALUES (880, '白云山', '1');
INSERT INTO `part5` VALUES (881, '景山', '1');
INSERT INTO `part5` VALUES (882, '热雪', '1');
INSERT INTO `part5` VALUES (883, '红嘴鸥', '1');
INSERT INTO `part5` VALUES (884, '开平', '1');
INSERT INTO `part5` VALUES (885, '碉楼', '1');
INSERT INTO `part5` VALUES (886, '七星岩', '1');
INSERT INTO `part5` VALUES (887, '融创文', '1');
INSERT INTO `part5` VALUES (888, '旅城', '1');
INSERT INTO `part5` VALUES (889, '桔钓沙', '1');
INSERT INTO `part5` VALUES (890, '佛山', '3');
INSERT INTO `part5` VALUES (891, '岭南', '2');
INSERT INTO `part5` VALUES (892, '南风', '1');
INSERT INTO `part5` VALUES (893, '古灶', '1');
INSERT INTO `part5` VALUES (894, '拱北', '1');
INSERT INTO `part5` VALUES (895, '口岸', '1');
INSERT INTO `part5` VALUES (896, '惠州', '1');
INSERT INTO `part5` VALUES (897, '西湖', '1');
INSERT INTO `part5` VALUES (898, '形体', '1');
INSERT INTO `part5` VALUES (899, '交易', '1');
INSERT INTO `part5` VALUES (900, '中英街', '1');
INSERT INTO `part5` VALUES (901, '青澳湾', '1');
INSERT INTO `part5` VALUES (902, '雁南飞', '1');
INSERT INTO `part5` VALUES (903, '茶田', '1');
INSERT INTO `part5` VALUES (904, '江门', '1');
INSERT INTO `part5` VALUES (905, '古劳', '1');
INSERT INTO `part5` VALUES (906, '水乡', '1');
INSERT INTO `part5` VALUES (907, '海陵', '1');
INSERT INTO `part5` VALUES (908, '湟川', '1');
INSERT INTO `part5` VALUES (909, '三峡', '1');
INSERT INTO `part5` VALUES (910, '开元寺', '1');
INSERT INTO `part5` VALUES (911, '徐良', '1');
INSERT INTO `part5` VALUES (912, '时间', '1');
INSERT INTO `part5` VALUES (913, '折叠', '1');
INSERT INTO `part5` VALUES (914, '御温泉', '1');
INSERT INTO `part5` VALUES (915, '龙湖', '1');
INSERT INTO `part5` VALUES (916, '古寨', '1');
INSERT INTO `part5` VALUES (917, '鼎', '1');
INSERT INTO `part5` VALUES (918, '龙湾', '1');
INSERT INTO `part5` VALUES (919, '洞天', '1');
INSERT INTO `part5` VALUES (920, '仙境', '1');
INSERT INTO `part5` VALUES (921, '情侣', '1');
INSERT INTO `part5` VALUES (922, '宝墨园', '1');
INSERT INTO `part5` VALUES (923, '蛇口港', '1');
INSERT INTO `part5` VALUES (924, '桂山', '1');
INSERT INTO `part5` VALUES (925, '.', '3');
INSERT INTO `part5` VALUES (926, 'E', '1');
INSERT INTO `part5` VALUES (927, 'M', '1');
INSERT INTO `part5` VALUES (928, '邓紫棋', '1');
INSERT INTO `part5` VALUES (929, 'I', '1');
INSERT INTO `part5` VALUES (930, 'AM', '1');
INSERT INTO `part5` VALUES (931, 'GLORIA', '1');
INSERT INTO `part5` VALUES (932, '2.0', '1');
INSERT INTO `part5` VALUES (933, '太空中心', '1');
INSERT INTO `part5` VALUES (934, '星湖', '1');
INSERT INTO `part5` VALUES (935, '观音山', '1');
INSERT INTO `part5` VALUES (936, '客', '1');
INSERT INTO `part5` VALUES (937, '天下', '1');
INSERT INTO `part5` VALUES (938, '客家', '1');
INSERT INTO `part5` VALUES (939, '日出', '1');
INSERT INTO `part5` VALUES (940, '情人', '1');
INSERT INTO `part5` VALUES (941, '中山', '1');
INSERT INTO `part5` VALUES (942, '詹园', '1');
INSERT INTO `part5` VALUES (943, '音雄', '1');
INSERT INTO `part5` VALUES (944, '巨星', '1');
INSERT INTO `part5` VALUES (945, '深港', '1');
INSERT INTO `part5` VALUES (946, '之窗', '1');
INSERT INTO `part5` VALUES (947, '云门山', '1');
INSERT INTO `part5` VALUES (948, '玫瑰', '1');
INSERT INTO `part5` VALUES (949, '花城', '1');
INSERT INTO `part5` VALUES (950, '妈阁庙', '1');
INSERT INTO `part5` VALUES (951, '罗湖口岸', '1');
INSERT INTO `part5` VALUES (952, '总兵', '1');
INSERT INTO `part5` VALUES (953, '府', '1');
INSERT INTO `part5` VALUES (954, '阿卡', '1');
INSERT INTO `part5` VALUES (955, '那拉', '1');
INSERT INTO `part5` VALUES (956, '硇洲', '1');
INSERT INTO `part5` VALUES (957, '长鹿', '1');
INSERT INTO `part5` VALUES (958, '休', '1');
INSERT INTO `part5` VALUES (959, '博园', '1');
INSERT INTO `part5` VALUES (960, '东莞', '2');
INSERT INTO `part5` VALUES (961, '黄丽玲', '1');
INSERT INTO `part5` VALUES (962, 'Lin', '1');
INSERT INTO `part5` VALUES (963, '歌', '1');
INSERT INTO `part5` VALUES (964, '迹', '1');
INSERT INTO `part5` VALUES (965, '印象', '1');
INSERT INTO `part5` VALUES (966, '园', '1');
INSERT INTO `part5` VALUES (967, '青岚怪', '1');
INSERT INTO `part5` VALUES (968, '臼谷', '1');
INSERT INTO `part5` VALUES (969, '地质公园', '1');
INSERT INTO `part5` VALUES (970, '仙门', '1');
INSERT INTO `part5` VALUES (971, '奇峡', '1');
INSERT INTO `part5` VALUES (972, '万绿湖', '1');

-- ----------------------------
-- Table structure for part6
-- ----------------------------
DROP TABLE IF EXISTS `part6`;
CREATE TABLE `part6`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省份',
  `value` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of part6
-- ----------------------------
INSERT INTO `part6` VALUES (1, '北京', '150');
INSERT INTO `part6` VALUES (2, '上海', '150');
INSERT INTO `part6` VALUES (3, '广东', '150');

-- ----------------------------
-- Table structure for part7
-- ----------------------------
DROP TABLE IF EXISTS `part7`;
CREATE TABLE `part7`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `city` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市',
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '景点名称',
  `value` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '热度评分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of part7
-- ----------------------------
INSERT INTO `part7` VALUES (1, '上海', '上海迪士尼度假区', '10');
INSERT INTO `part7` VALUES (2, '北京', '八达岭长城', '10');
INSERT INTO `part7` VALUES (3, '北京', '故宫博物院', '10');
INSERT INTO `part7` VALUES (4, '北京', '北京环球度假区', '10');
INSERT INTO `part7` VALUES (5, '上海', '外滩', '10');
INSERT INTO `part7` VALUES (6, '北京', '中国国家博物馆', '9.5');
INSERT INTO `part7` VALUES (7, '珠海', '珠海长隆海洋王国', '9.2');
INSERT INTO `part7` VALUES (8, '广州', '长隆野生动物世界', '9.2');
INSERT INTO `part7` VALUES (9, '广州', '广州长隆度假区', '8.9');
INSERT INTO `part7` VALUES (10, '北京', '恭王府', '8.6');
INSERT INTO `part7` VALUES (11, '上海', '东方明珠', '8.5');
INSERT INTO `part7` VALUES (12, '广州', '广州塔', '8.4');
INSERT INTO `part7` VALUES (13, '北京', '颐和园', '8.4');
INSERT INTO `part7` VALUES (14, '北京', '天坛公园', '8.4');
INSERT INTO `part7` VALUES (15, '北京', '慕田峪长城', '8.3');
INSERT INTO `part7` VALUES (16, '上海', '豫园', '8.2');
INSERT INTO `part7` VALUES (17, '上海', '上海海昌海洋公园', '8.1');
INSERT INTO `part7` VALUES (18, '上海', '上海乐高乐园®度假区', '8.1');
INSERT INTO `part7` VALUES (19, '北京', '泡泡玛特城市乐园', '8.1');
INSERT INTO `part7` VALUES (20, '北京', '北京登览长城', '8.1');
INSERT INTO `part7` VALUES (21, '深圳', '深圳世界之窗', '8.1');
INSERT INTO `part7` VALUES (22, '上海', '上海野生动物园', '8');
INSERT INTO `part7` VALUES (23, '上海', '陆家嘴', '8');
INSERT INTO `part7` VALUES (24, '广州', '珠江夜游', '7.9');
INSERT INTO `part7` VALUES (25, '广州', '广州长隆国际大马戏', '7.9');
INSERT INTO `part7` VALUES (26, '广州', '南越王博物院(王墓展区)', '7.9');
INSERT INTO `part7` VALUES (27, '上海', '迪士尼小镇', '7.9');
INSERT INTO `part7` VALUES (28, '珠海', '长隆飞船乐园', '7.8');
INSERT INTO `part7` VALUES (29, '广州', '长隆欢乐世界', '7.7');
INSERT INTO `part7` VALUES (30, '南澳县', '南澳岛', '7.7');
INSERT INTO `part7` VALUES (31, '潮州', '潮州古城', '7.7');
INSERT INTO `part7` VALUES (32, '上海', '上海海洋水族馆', '7.7');
INSERT INTO `part7` VALUES (33, '珠海', '景山公园', '7.6');
INSERT INTO `part7` VALUES (34, '广州', '越秀公园', '7.6');
INSERT INTO `part7` VALUES (35, '深圳', '甘坑古镇', '7.6');
INSERT INTO `part7` VALUES (36, '深圳', '深圳平安金融中心云际观光层', '7.5');
INSERT INTO `part7` VALUES (37, '潮州', '广济桥', '7.5');
INSERT INTO `part7` VALUES (38, '广州', '广东省博物馆', '7.4');
INSERT INTO `part7` VALUES (39, '潮州', '韩文公祠', '7.4');
INSERT INTO `part7` VALUES (40, '惠东', '巽寮湾', '7.3');
INSERT INTO `part7` VALUES (41, '汕头', '礐石风景区', '7.3');
INSERT INTO `part7` VALUES (42, '广州', '陈家祠', '7.3');
INSERT INTO `part7` VALUES (43, '珠海', '港珠澳大桥游', '7.3');
INSERT INTO `part7` VALUES (44, '清远', '清远长隆森林王国', '7.3');
INSERT INTO `part7` VALUES (45, '连州', '连州地下河', '7.3');
INSERT INTO `part7` VALUES (46, '深圳', '欢乐港湾', '7.3');
INSERT INTO `part7` VALUES (47, '珠海', '珠海横琴《长隆秀》', '7.2');
INSERT INTO `part7` VALUES (48, '珠海', '珠海长隆度假区', '7.2');
INSERT INTO `part7` VALUES (49, '佛山', '西樵山风景名胜区', '7.2');
INSERT INTO `part7` VALUES (50, '佛山', '佛山市祖庙博物馆', '7.1');
INSERT INTO `part7` VALUES (51, '深圳', '深圳欢乐谷', '7');
INSERT INTO `part7` VALUES (52, '深圳', '锦绣中华民俗村', '7');
INSERT INTO `part7` VALUES (53, '清远', '古龙峡', '6.9');
INSERT INTO `part7` VALUES (54, '仁化', '丹霞山', '6.9');
INSERT INTO `part7` VALUES (55, '珠海', '东澳岛', '6.9');
INSERT INTO `part7` VALUES (56, '深圳', '深圳野生动物园', '6.8');
INSERT INTO `part7` VALUES (57, '深圳', '大梅沙海滨公园', '6.8');
INSERT INTO `part7` VALUES (58, '清远', '古龙峡漂流', '6.8');
INSERT INTO `part7` VALUES (59, '惠东', '双月湾', '6.8');
INSERT INTO `part7` VALUES (60, '深圳', '小梅沙海洋世界', '6.8');
INSERT INTO `part7` VALUES (61, '佛山', '广东千古情', '6.8');
INSERT INTO `part7` VALUES (62, '连南', '千年瑶寨', '6.8');
INSERT INTO `part7` VALUES (63, '开平', '赤坎·广东华侨国际旅游度假区', '6.7');
INSERT INTO `part7` VALUES (64, '珠海', '外伶仃岛', '6.7');
INSERT INTO `part7` VALUES (65, '深圳', '深圳科学技术馆', '6.7');
INSERT INTO `part7` VALUES (66, '湛江', '湖光岩风景区', '6.7');
INSERT INTO `part7` VALUES (67, '汕头', '汕头老城', '6.6');
INSERT INTO `part7` VALUES (68, '汕头', '潮汕历史文化博览中心', '6.6');
INSERT INTO `part7` VALUES (69, '博罗', '广东罗浮山风景名胜区', '6.6');
INSERT INTO `part7` VALUES (70, '珠海', '圆明新园', '6.6');
INSERT INTO `part7` VALUES (71, '徐闻', '中国大陆南极村', '6.6');
INSERT INTO `part7` VALUES (72, '汕头', '汕头小公园', '6.6');
INSERT INTO `part7` VALUES (73, '清远', '清远长隆度假区', '6.5');
INSERT INTO `part7` VALUES (74, '珠海', '澳门环岛游', '6.5');
INSERT INTO `part7` VALUES (75, '潮州', '牌坊街', '6.5');
INSERT INTO `part7` VALUES (76, '惠东', '海龟湾', '6.5');
INSERT INTO `part7` VALUES (77, '湛江', '湛江军事文化博览园', '6.5');
INSERT INTO `part7` VALUES (78, '清远', '清远笔架山旅游度假区', '6.4');
INSERT INTO `part7` VALUES (79, '佛山', '顺德欢乐海岸PLUS', '6.4');
INSERT INTO `part7` VALUES (80, '揭西', '黄满寨瀑布', '6.4');
INSERT INTO `part7` VALUES (81, '佛山', '清晖园博物馆', '6.4');
INSERT INTO `part7` VALUES (82, '汕头', '陈慈黉故居', '6.3');
INSERT INTO `part7` VALUES (83, '开平', '开平碉楼文化旅游区', '6.2');
INSERT INTO `part7` VALUES (84, '湛江', '湛江红嘴鸥游船', '6.2');
INSERT INTO `part7` VALUES (85, '湛江', '赤坎老街景区', '6.2');
INSERT INTO `part7` VALUES (86, '肇庆', '七星岩', '6.2');
INSERT INTO `part7` VALUES (87, '惠州', '惠州西湖', '6.1');
INSERT INTO `part7` VALUES (88, '佛山', '南风古灶', '6.1');
INSERT INTO `part7` VALUES (89, '佛山', '佛山岭南新天地', '6.1');
INSERT INTO `part7` VALUES (90, '南澳县', '青澳湾', '6.1');
INSERT INTO `part7` VALUES (91, '梅州', '雁南飞茶田景区', '6.1');
INSERT INTO `part7` VALUES (92, '鹤山', '江门古劳水乡旅游区', '6.1');
INSERT INTO `part7` VALUES (93, '潮州', '龙湖古寨', '6');
INSERT INTO `part7` VALUES (94, '阳江', '海陵岛', '6');
INSERT INTO `part7` VALUES (95, '连州', '湟川三峡', '6');
INSERT INTO `part7` VALUES (96, '潮州', '开元寺', '6');
INSERT INTO `part7` VALUES (97, '英德', '洞天仙境', '5.9');
INSERT INTO `part7` VALUES (98, '佛山', '佛山 · 徐良“时间折叠”巡回演唱会-佛山站', '5.9');
INSERT INTO `part7` VALUES (99, '吴川', '鼎龙湾国际海洋度假区', '5.9');
INSERT INTO `part7` VALUES (100, '肇庆', '星湖旅游景区', '5.9');
INSERT INTO `part7` VALUES (101, '东莞', '东莞 · 黄丽玲 A-Lin 歌 迹 Journey 世界巡回演唱会-东莞站', '5.8');
INSERT INTO `part7` VALUES (102, '佛山', '长鹿旅游休博园', '5.8');
INSERT INTO `part7` VALUES (103, '湛江', '硇洲岛', '5.8');
INSERT INTO `part7` VALUES (104, '东莞', '观音山旅游风景区', '5.8');
INSERT INTO `part7` VALUES (105, '肇庆', '鼎湖山', '5.8');
INSERT INTO `part7` VALUES (106, '澳门', '妈阁庙', '5.8');
INSERT INTO `part7` VALUES (107, '惠东', '日出情人湾风景区', '5.8');
INSERT INTO `part7` VALUES (108, '南澳县', '总兵府', '5.8');
INSERT INTO `part7` VALUES (109, '中山', '中山詹园', '5.8');
INSERT INTO `part7` VALUES (110, '乳源', '云门山旅游度假区', '5.8');
INSERT INTO `part7` VALUES (111, '梅州', '客天下客家小镇景区', '5.8');
INSERT INTO `part7` VALUES (112, '乳源', '仙门奇峡', '5.7');
INSERT INTO `part7` VALUES (113, '东源', '万绿湖风景区', '5.7');
INSERT INTO `part7` VALUES (114, '饶平', '青岚怪臼谷国家地质公园', '5.7');

-- ----------------------------
-- Table structure for part8
-- ----------------------------
DROP TABLE IF EXISTS `part8`;
CREATE TABLE `part8`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省份',
  `travel_num` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '景点数量',
  `avg_score` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平均评分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of part8
-- ----------------------------
INSERT INTO `part8` VALUES (1, '上海', '107', '4.58');
INSERT INTO `part8` VALUES (2, '北京', '99', '4.63');
INSERT INTO `part8` VALUES (3, '广东', '140', '4.55');

-- ----------------------------
-- Table structure for user_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `user_userinfo`;
CREATE TABLE `user_userinfo`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uemail` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uaddress` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uyoubian` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uphone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_userinfo
-- ----------------------------
INSERT INTO `user_userinfo` VALUES (1, 'admin', '123456', 'admin@qq.com', '', '', '', '', '2026-08-31 15:26:41.336511');
INSERT INTO `user_userinfo` VALUES (2, 'user', '123456', 'user@qq.com', '', '', '', '', '2026-09-02 08:43:37.502736');

SET FOREIGN_KEY_CHECKS = 1;
