/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t236`;
CREATE DATABASE IF NOT EXISTS `t236` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t236`;

DROP TABLE IF EXISTS `chushoufangwu`;
CREATE TABLE IF NOT EXISTS `chushoufangwu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `chushoufangwu_name` varchar(200) DEFAULT NULL COMMENT '出售房屋名称  Search111 ',
  `chushoufangwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '出售房屋编号  Search111 ',
  `chushoufangwu_photo` varchar(200) DEFAULT NULL COMMENT '出售房屋照片',
  `chushoufangwu_types` int DEFAULT NULL COMMENT '房屋类型 Search111',
  `chushoufangwu_xinjiu_types` int DEFAULT NULL COMMENT '新房旧房 Search111 ',
  `quyu_types` int DEFAULT NULL COMMENT '区域 Search111',
  `chushoufangwu_xiaoqu` varchar(200) DEFAULT NULL COMMENT '所在小区',
  `chushoufangwu_weizhi` varchar(200) DEFAULT NULL COMMENT '所在详细位置',
  `chushoufangwu_mianji` decimal(10,2) DEFAULT NULL COMMENT '房屋面积  Search111 ',
  `chushoufangwu_old_money` decimal(10,2) DEFAULT NULL COMMENT '原总价 ',
  `chushoufangwu_new_money` decimal(10,2) DEFAULT NULL COMMENT '现总价 Search111 ',
  `chushoufangwu_clicknum` int DEFAULT NULL COMMENT '房屋热度 ',
  `chushoufangwu_content` text COMMENT '出售房屋介绍 ',
  `chushoufangwu_zhuangtai_types` int DEFAULT NULL COMMENT '房屋状态 Search111 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `chushoufangwu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='出售房屋';

DELETE FROM `chushoufangwu`;
INSERT INTO `chushoufangwu` (`id`, `yonghu_id`, `chushoufangwu_name`, `chushoufangwu_uuid_number`, `chushoufangwu_photo`, `chushoufangwu_types`, `chushoufangwu_xinjiu_types`, `quyu_types`, `chushoufangwu_xiaoqu`, `chushoufangwu_weizhi`, `chushoufangwu_mianji`, `chushoufangwu_old_money`, `chushoufangwu_new_money`, `chushoufangwu_clicknum`, `chushoufangwu_content`, `chushoufangwu_zhuangtai_types`, `shangxia_types`, `chushoufangwu_delete`, `create_time`) VALUES
	(1, 1, '出售房屋名称1', '165045491661213', 'http://localhost:8080/fangwujiaoyipingtai/upload/chushoufangwu1.jpg', 2, 1, 2, '所在小区1', '所在详细位置1', 449.59, 960.14, 93.82, 457, '出售房屋介绍1', 2, 1, 1, '2022-04-20 11:41:56'),
	(2, 1, '出售房屋名称2', '165045491661351', 'http://localhost:8080/fangwujiaoyipingtai/upload/chushoufangwu2.jpg', 3, 1, 2, '所在小区2', '所在详细位置2', 243.78, 890.36, 462.22, 374, '出售房屋介绍2', 1, 1, 1, '2022-04-20 11:41:56'),
	(3, 2, '出售房屋名称3', '16504549166134', 'http://localhost:8080/fangwujiaoyipingtai/upload/chushoufangwu3.jpg', 2, 1, 1, '所在小区3', '所在详细位置3', 849.66, 941.99, 241.30, 340, '出售房屋介绍3', 1, 1, 1, '2022-04-20 11:41:56'),
	(4, 2, '出售房屋名称4', '165045491661372', 'http://localhost:8080/fangwujiaoyipingtai/upload/chushoufangwu4.jpg', 3, 2, 2, '所在小区4', '所在详细位置4', 689.22, 621.69, 264.27, 322, '出售房屋介绍4', 1, 1, 1, '2022-04-20 11:41:56'),
	(5, 3, '出售房屋名称5', '165045491661320', 'http://localhost:8080/fangwujiaoyipingtai/upload/chushoufangwu5.jpg', 3, 1, 4, '所在小区5', '所在详细位置5', 25.13, 829.65, 195.85, 482, '出售房屋介绍5', 1, 1, 1, '2022-04-20 11:41:56');

DROP TABLE IF EXISTS `chushoufangwu_collection`;
CREATE TABLE IF NOT EXISTS `chushoufangwu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chushoufangwu_id` int DEFAULT NULL COMMENT '出售房屋',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `chushoufangwu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='出售房屋收藏';

DELETE FROM `chushoufangwu_collection`;
INSERT INTO `chushoufangwu_collection` (`id`, `chushoufangwu_id`, `yonghu_id`, `chushoufangwu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(2, 2, 3, 1, '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(3, 3, 3, 1, '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(4, 4, 3, 1, '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(5, 5, 2, 1, '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(6, 1, 1, 1, '2022-04-20 12:52:57', '2022-04-20 12:52:57'),
	(7, 3, 1, 1, '2022-04-20 13:19:27', '2022-04-20 13:19:27');

DROP TABLE IF EXISTS `chushoufangwu_liuyan`;
CREATE TABLE IF NOT EXISTS `chushoufangwu_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chushoufangwu_id` int DEFAULT NULL COMMENT '出售房屋',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `chushoufangwu_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='出售房屋留言';

DELETE FROM `chushoufangwu_liuyan`;
INSERT INTO `chushoufangwu_liuyan` (`id`, `chushoufangwu_id`, `yonghu_id`, `chushoufangwu_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2022-04-20 11:41:56', '回复信息1', '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(2, 2, 3, '留言内容2', '2022-04-20 11:41:56', '回复信息2', '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(3, 3, 1, '留言内容3', '2022-04-20 11:41:56', '回复信息3', '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(4, 4, 3, '留言内容4', '2022-04-20 11:41:56', '回复信息4', '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(5, 5, 3, '留言内容5', '2022-04-20 11:41:56', '回复信息5', '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(6, 1, 1, '1112sagsagsa', '2022-04-20 13:17:37', '53454saag', '2022-04-20 13:21:50', '2022-04-20 13:17:37'),
	(7, 5, 1, '啥阿嘎事故', '2022-04-20 13:17:51', NULL, NULL, '2022-04-20 13:17:51');

DROP TABLE IF EXISTS `chushoufangwu_order`;
CREATE TABLE IF NOT EXISTS `chushoufangwu_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chushoufangwu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '看房编号 Search111 ',
  `chushoufangwu_id` int DEFAULT NULL COMMENT '出售房屋',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `chushoufangwu_order_name` varchar(200) DEFAULT NULL COMMENT '申请看房人姓名 Search111 ',
  `chushoufangwu_order_phone` varchar(200) DEFAULT NULL COMMENT '申请看房人联系电话 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `kanfang_time` timestamp NULL DEFAULT NULL COMMENT '看房时间',
  `chushoufangwu_order_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111 ',
  `chushoufangwu_order_yesno_text` text COMMENT '回复内容',
  `chushoufangwu_order_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='预约出售房屋看房';

DELETE FROM `chushoufangwu_order`;
INSERT INTO `chushoufangwu_order` (`id`, `chushoufangwu_order_uuid_number`, `chushoufangwu_id`, `yonghu_id`, `chushoufangwu_order_name`, `chushoufangwu_order_phone`, `insert_time`, `kanfang_time`, `chushoufangwu_order_yesno_types`, `chushoufangwu_order_yesno_text`, `chushoufangwu_order_shenhe_time`, `create_time`) VALUES
	(2, '1650459803742', 5, 1, '张三', '17703789595', '2022-04-20 13:03:24', '2022-04-20 16:00:00', 1, NULL, NULL, '2022-04-20 13:03:24'),
	(3, '1650459826124', 4, 1, '张三', '17703785858', '2022-04-20 13:03:46', '2022-04-21 16:00:00', 3, '很忙  没有时间,约个其他时间吧', '2022-04-20 13:23:28', '2022-04-20 13:03:46'),
	(4, '1650460584292', 3, 1, '李四', '17703785959', '2022-04-20 13:16:24', '2022-04-28 16:00:00', 2, '撒嘎嘎哈斯多喝点水', '2022-04-20 13:23:06', '2022-04-20 13:16:24');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/fangwujiaoyipingtai/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/fangwujiaoyipingtai/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/fangwujiaoyipingtai/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-20 11:38:22'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-20 11:38:22'),
	(3, 'chushoufangwu_zhuangtai_types', '房屋状态', 1, '在销售', NULL, NULL, '2022-04-20 11:38:22'),
	(4, 'chushoufangwu_zhuangtai_types', '房屋状态', 2, '已售出', NULL, NULL, '2022-04-20 11:38:22'),
	(5, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-04-20 11:38:22'),
	(6, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-04-20 11:38:22'),
	(7, 'chushoufangwu_types', '出售房屋类型', 1, '两室一厅', NULL, NULL, '2022-04-20 11:38:22'),
	(8, 'chushoufangwu_types', '出售房屋类型', 2, '三室一厅', NULL, NULL, '2022-04-20 11:38:22'),
	(9, 'chushoufangwu_types', '出售房屋类型', 3, '小洋房', NULL, NULL, '2022-04-20 11:38:22'),
	(10, 'chushoufangwu_types', '出售房屋类型', 4, '大洋房', NULL, NULL, '2022-04-20 11:38:22'),
	(11, 'chushoufangwu_xinjiu_types', '新房旧房', 1, '新房', NULL, NULL, '2022-04-20 11:38:22'),
	(12, 'chushoufangwu_xinjiu_types', '新房旧房', 2, '二手房', NULL, NULL, '2022-04-20 11:38:22'),
	(13, 'quyu_types', '区域', 1, '区域1', NULL, NULL, '2022-04-20 11:38:22'),
	(14, 'quyu_types', '区域', 2, '区域2', NULL, NULL, '2022-04-20 11:38:22'),
	(15, 'quyu_types', '区域', 3, '区域3', NULL, NULL, '2022-04-20 11:38:22'),
	(16, 'quyu_types', '区域', 4, '区域4', NULL, NULL, '2022-04-20 11:38:22'),
	(17, 'chushoufangwu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-20 11:38:22'),
	(18, 'chushoufangwu_order_yesno_types', '审核状态', 1, '待审核', NULL, NULL, '2022-04-20 11:38:23'),
	(19, 'chushoufangwu_order_yesno_types', '审核状态', 2, '同意', NULL, NULL, '2022-04-20 11:38:23'),
	(20, 'chushoufangwu_order_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2022-04-20 11:38:23'),
	(21, 'zufang_zhuangtai_types', '房屋状态', 1, '在出租', NULL, NULL, '2022-04-20 11:38:23'),
	(22, 'zufang_zhuangtai_types', '房屋状态', 2, '已出租', NULL, NULL, '2022-04-20 11:38:23'),
	(23, 'zufang_types', '出租房屋类型', 1, '两室一厅', NULL, NULL, '2022-04-20 11:38:23'),
	(24, 'zufang_types', '出租房屋类型', 2, '三室一厅', NULL, NULL, '2022-04-20 11:38:23'),
	(25, 'zufang_types', '出租房屋类型', 3, '小洋房', NULL, NULL, '2022-04-20 11:38:23'),
	(26, 'zufang_types', '出租房屋类型', 4, '大洋房', NULL, NULL, '2022-04-20 11:38:23'),
	(27, 'zufang_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-20 11:38:23'),
	(28, 'zufang_order_yesno_types', '审核状态', 1, '待审核', NULL, NULL, '2022-04-20 11:38:23'),
	(29, 'zufang_order_yesno_types', '审核状态', 2, '同意', NULL, NULL, '2022-04-20 11:38:23'),
	(30, 'zufang_order_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2022-04-20 11:38:23'),
	(31, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-20 11:38:23'),
	(32, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-20 11:38:23'),
	(33, 'chushoufangwu_types', '出售房屋类型', 5, '房屋类型1', NULL, '', '2022-04-20 13:20:05'),
	(34, 'quyu_types', '区域', 5, '区域5', NULL, '', '2022-04-20 13:20:17');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/fangwujiaoyipingtai/upload/gonggao1.jpg', 2, '2022-04-20 11:41:56', '公告详情1', '2022-04-20 11:41:56'),
	(2, '公告名称2', 'http://localhost:8080/fangwujiaoyipingtai/upload/gonggao2.jpg', 1, '2022-04-20 11:41:56', '公告详情2', '2022-04-20 11:41:56'),
	(3, '公告名称3', 'http://localhost:8080/fangwujiaoyipingtai/upload/gonggao3.jpg', 2, '2022-04-20 11:41:56', '公告详情3', '2022-04-20 11:41:56'),
	(4, '公告名称4', 'http://localhost:8080/fangwujiaoyipingtai/upload/gonggao4.jpg', 1, '2022-04-20 11:41:56', '公告详情4', '2022-04-20 11:41:56'),
	(5, '公告名称5', 'http://localhost:8080/fangwujiaoyipingtai/upload/gonggao5.jpg', 2, '2022-04-20 11:41:56', '公告详情5', '2022-04-20 11:41:56');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'un8qfzvxv2w4bnba1vpqtvjxp1obcqu3', '2022-04-20 11:45:33', '2024-06-21 09:42:04'),
	(2, 1, 'a1', 'yonghu', '用户', 'j26vonflh4rdr1oc2bpb5ruqr8tvd49f', '2022-04-20 12:00:13', '2024-06-21 09:43:26'),
	(3, 2, 'a2', 'yonghu', '用户', 'whwo2hudqklzs6yxhlh5kewlarc3uuag', '2022-04-20 13:12:59', '2022-04-20 14:22:31');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/fangwujiaoyipingtai/upload/yonghu1.jpg', 2, '1@qq.com', '2022-04-20 11:41:56'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/fangwujiaoyipingtai/upload/yonghu2.jpg', 2, '2@qq.com', '2022-04-20 11:41:56'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/fangwujiaoyipingtai/upload/yonghu3.jpg', 1, '3@qq.com', '2022-04-20 11:41:56');

DROP TABLE IF EXISTS `zufang`;
CREATE TABLE IF NOT EXISTS `zufang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zufang_name` varchar(200) DEFAULT NULL COMMENT '房屋名称  Search111 ',
  `zufang_uuid_number` varchar(200) DEFAULT NULL COMMENT '房屋编号  Search111 ',
  `zufang_photo` varchar(200) DEFAULT NULL COMMENT '租房照片',
  `zufang_types` int DEFAULT NULL COMMENT '出租房屋类型 Search111',
  `quyu_types` int DEFAULT NULL COMMENT '区域 Search111',
  `zufang_xiaoqu` varchar(200) DEFAULT NULL COMMENT '所在小区',
  `zufang_weizhi` varchar(200) DEFAULT NULL COMMENT '所在详细位置',
  `zufang_mianji` decimal(10,2) DEFAULT NULL COMMENT '房屋面积  Search111 ',
  `zufang_old_money` decimal(10,2) DEFAULT NULL COMMENT '原价/月 ',
  `zufang_new_money` decimal(10,2) DEFAULT NULL COMMENT '现加/月 Search111 ',
  `zufang_clicknum` int DEFAULT NULL COMMENT '房屋热度 ',
  `zufang_content` text COMMENT '房屋介绍 ',
  `zufang_zhuangtai_types` int DEFAULT NULL COMMENT '房屋状态 Search111 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `zufang_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='租房';

DELETE FROM `zufang`;
INSERT INTO `zufang` (`id`, `yonghu_id`, `zufang_name`, `zufang_uuid_number`, `zufang_photo`, `zufang_types`, `quyu_types`, `zufang_xiaoqu`, `zufang_weizhi`, `zufang_mianji`, `zufang_old_money`, `zufang_new_money`, `zufang_clicknum`, `zufang_content`, `zufang_zhuangtai_types`, `shangxia_types`, `zufang_delete`, `create_time`) VALUES
	(1, 1, '房屋名称1', '165045491663141', 'http://localhost:8080/fangwujiaoyipingtai/upload/zufang1.jpg', 3, 1, '所在小区1', '所在详细位置1', 4.51, 738.30, 444.07, 423, '房屋介绍1', 2, 1, 1, '2022-04-20 11:41:56'),
	(2, 1, '房屋名称2', '165045491663122', 'http://localhost:8080/fangwujiaoyipingtai/upload/zufang2.jpg', 1, 4, '所在小区2', '所在详细位置2', 74.97, 710.56, 108.93, 207, '<p>房屋介绍2</p>', 1, 1, 1, '2022-04-20 11:41:56'),
	(3, 2, '房屋名称3', '165045491663115', 'http://localhost:8080/fangwujiaoyipingtai/upload/zufang3.jpg', 4, 2, '所在小区3', '所在详细位置3', 551.05, 924.92, 333.54, 181, '房屋介绍3', 1, 1, 1, '2022-04-20 11:41:56'),
	(4, 2, '房屋名称4', '165045491663182', 'http://localhost:8080/fangwujiaoyipingtai/upload/zufang4.jpg', 4, 4, '所在小区4', '所在详细位置4', 74.90, 707.30, 77.08, 179, '房屋介绍4', 1, 1, 1, '2022-04-20 11:41:56'),
	(5, 3, '房屋名称5', '165045491663189', 'http://localhost:8080/fangwujiaoyipingtai/upload/zufang5.jpg', 3, 1, '所在小区5', '所在详细位置5', 617.05, 811.27, 39.39, 346, '房屋介绍5', 1, 1, 1, '2022-04-20 11:41:56');

DROP TABLE IF EXISTS `zufang_collection`;
CREATE TABLE IF NOT EXISTS `zufang_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zufang_id` int DEFAULT NULL COMMENT '租房',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zufang_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='租房收藏';

DELETE FROM `zufang_collection`;
INSERT INTO `zufang_collection` (`id`, `zufang_id`, `yonghu_id`, `zufang_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(2, 2, 1, 1, '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(3, 3, 3, 1, '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(4, 4, 1, 1, '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(5, 5, 1, 1, '2022-04-20 11:41:56', '2022-04-20 11:41:56');

DROP TABLE IF EXISTS `zufang_liuyan`;
CREATE TABLE IF NOT EXISTS `zufang_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zufang_id` int DEFAULT NULL COMMENT '租房',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zufang_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='租房留言';

DELETE FROM `zufang_liuyan`;
INSERT INTO `zufang_liuyan` (`id`, `zufang_id`, `yonghu_id`, `zufang_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '2022-04-20 11:41:56', '回复信息1', '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(2, 2, 1, '留言内容2', '2022-04-20 11:41:56', '回复信息2', '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(3, 3, 3, '留言内容3', '2022-04-20 11:41:56', '回复信息3', '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(4, 4, 1, '留言内容4', '2022-04-20 11:41:56', '回复信息4', '2022-04-20 11:41:56', '2022-04-20 11:41:56'),
	(5, 5, 3, '留言内容5', '2022-04-20 11:41:56', '回复信息5', '2022-04-20 11:41:56', '2022-04-20 11:41:56');

DROP TABLE IF EXISTS `zufang_order`;
CREATE TABLE IF NOT EXISTS `zufang_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zufang_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '看房编号 Search111 ',
  `zufang_id` int DEFAULT NULL COMMENT '租房',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zufang_order_name` varchar(200) DEFAULT NULL COMMENT '申请看房人姓名 Search111 ',
  `zufang_order_phone` varchar(200) DEFAULT NULL COMMENT '申请看房人联系电话 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `kanfang_time` timestamp NULL DEFAULT NULL COMMENT '看房时间',
  `zufang_order_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111 ',
  `zufang_order_yesno_text` text COMMENT '回复内容',
  `zufang_order_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='预约租房看房';

DELETE FROM `zufang_order`;
INSERT INTO `zufang_order` (`id`, `zufang_order_uuid_number`, `zufang_id`, `yonghu_id`, `zufang_order_name`, `zufang_order_phone`, `insert_time`, `kanfang_time`, `zufang_order_yesno_types`, `zufang_order_yesno_text`, `zufang_order_shenhe_time`, `create_time`) VALUES
	(1, '1650460511674', 5, 1, '李四', '17703789595', '2022-04-20 13:15:12', '2022-04-28 23:00:00', 1, NULL, NULL, '2022-04-20 13:15:12'),
	(2, '1650460748724', 4, 1, '胡琪', '17789895656', '2022-04-20 13:19:09', '2022-04-29 16:00:00', 2, '来吧,当天有空,准时来看房', '2022-04-20 13:22:53', '2022-04-20 13:19:09');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
