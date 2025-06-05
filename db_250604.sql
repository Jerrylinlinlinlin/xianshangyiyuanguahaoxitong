-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.20 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 xianshangyiyuanguahaoxitong 的数据库结构
CREATE DATABASE IF NOT EXISTS `xianshangyiyuanguahaoxitong` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `xianshangyiyuanguahaoxitong`;

-- 导出  表 xianshangyiyuanguahaoxitong.config 结构
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

-- 正在导出表  xianshangyiyuanguahaoxitong.config 的数据：~3 rows (大约)
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/xianshangyiyuanguahaoxitong/upload/1745574108864.jpeg'),
	(2, '轮播图2', 'http://localhost:8080/xianshangyiyuanguahaoxitong/upload/1745574125062.jpeg');

-- 导出  表 xianshangyiyuanguahaoxitong.dictionary 结构
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典';

-- 正在导出表  xianshangyiyuanguahaoxitong.dictionary 的数据：~29 rows (大约)
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-28 05:58:54'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-28 05:58:54'),
	(3, 'keshi_types', '科室', 1, '外科', NULL, NULL, '2022-03-28 05:58:54'),
	(4, 'keshi_types', '科室', 2, '内科', NULL, NULL, '2022-03-28 05:58:54'),
	(5, 'keshi_types', '科室', 3, '耳鼻喉科', NULL, NULL, '2022-03-28 05:58:54'),
	(6, 'keshi_types', '科室', 4, '骨科', NULL, NULL, '2022-03-28 05:58:55'),
	(7, 'zhiwei_types', '职位', 1, '普通医师', NULL, NULL, '2022-03-28 05:58:55'),
	(8, 'zhiwei_types', '职位', 2, '主治医师', NULL, NULL, '2022-03-28 05:58:55'),
	(9, 'zhiwei_types', '职位', 3, '主任医师', NULL, NULL, '2022-03-28 05:58:55'),
	(10, 'single_seach_types', '单页数据类型', 1, '网站介绍', NULL, NULL, '2022-03-28 05:58:55'),
	(11, 'single_seach_types', '单页数据类型', 2, '联系我们', NULL, NULL, '2022-03-28 05:58:55'),
	(12, 'zhuanjia_order_yesno_types', '状态', 1, '待审核', NULL, NULL, '2022-03-28 05:58:55'),
	(13, 'zhuanjia_order_yesno_types', '状态', 2, '同意', NULL, NULL, '2022-03-28 05:58:55'),
	(14, 'zhuanjia_order_yesno_types', '状态', 3, '拒绝', NULL, NULL, '2022-03-28 05:58:55'),
	(15, 'shijianduan_types', '时间段', 1, '08:00-09:00', NULL, NULL, '2022-03-28 05:58:55'),
	(16, 'shijianduan_types', '时间段', 2, '09:00-10:00', NULL, NULL, '2022-03-28 05:58:55'),
	(17, 'shijianduan_types', '时间段', 3, '10:00-11:00', NULL, NULL, '2022-03-28 05:58:55'),
	(18, 'shijianduan_types', '时间段', 4, '11:00-12:00', NULL, NULL, '2022-03-28 05:58:55'),
	(19, 'shijianduan_types', '时间段', 5, '14:00-15:00', NULL, NULL, '2022-03-28 05:58:55'),
	(20, 'shijianduan_types', '时间段', 6, '15:00-16:00', NULL, NULL, '2022-03-28 05:58:55'),
	(21, 'shijianduan_types', '时间段', 7, '16:00-17:00', NULL, NULL, '2022-03-28 05:58:55'),
	(22, 'shijianduan_types', '时间段', 8, '17:00-18:00', NULL, NULL, '2022-03-28 05:58:55'),
	(23, 'forum_types', '帖子类型', 1, '疾病咨询', NULL, NULL, '2022-03-28 05:58:55'),
	(24, 'forum_types', '帖子类型', 2, '就医体验分享', NULL, NULL, '2022-03-28 05:58:55'),
	(25, 'forum_types', '帖子类型', 3, '药品使用交流', NULL, NULL, '2022-03-28 05:58:55'),
	(26, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-03-28 05:58:55'),
	(27, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-03-28 05:58:55'),
	(28, 'forum_types', '帖子类型', 4, '投诉与建议', NULL, '', '2022-03-28 06:16:29'),
	(29, 'single_seach_types', '单页数据类型', 3, '医院介绍', NULL, '', '2022-03-28 05:58:55');

-- 导出  表 xianshangyiyuanguahaoxitong.forum 结构
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `huiyuan_id` int DEFAULT NULL COMMENT '会员',
  `zhuanjia_id` int DEFAULT NULL COMMENT '医生',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

-- 正在导出表  xianshangyiyuanguahaoxitong.forum 的数据：~6 rows (大约)
INSERT INTO `forum` (`id`, `forum_name`, `huiyuan_id`, `zhuanjia_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '等待时间太长了', 1, NULL, NULL, '每次排队看医生时间太长了，本来就不舒服，每次挂号最起码要等一个小时', NULL, 4, 1, '2025-04-24 03:13:29', NULL, '2025-04-24 03:13:29'),
	(2, '感冒了是哪个药比较好', 1, NULL, NULL, '如题，有医生回答吗？谢谢', NULL, 3, 1, '2025-04-24 03:14:43', NULL, '2025-04-24 03:14:43'),
	(3, '张勇医生医术好', 2, NULL, NULL, '张勇医生医术好，心系患者', NULL, 2, 1, '2025-04-24 03:17:50', NULL, '2025-04-24 03:17:50'),
	(4, '内科看哪些医生', 2, NULL, NULL, '大家给个建议，哪位医生比较好', NULL, 1, 1, '2025-04-24 03:18:40', NULL, '2025-04-24 03:18:40'),
	(5, NULL, 3, NULL, NULL, '我之前是看张勇医生', 4, NULL, 2, '2025-04-24 03:23:38', NULL, '2025-04-24 03:23:38'),
	(6, '医生开药太多', 3, NULL, NULL, '每次都开一堆药，过分了', NULL, 4, 1, '2025-04-24 03:24:32', NULL, '2025-04-24 03:24:32'),
	(7, NULL, 2, NULL, NULL, '谢谢', 4, NULL, 2, '2025-04-24 03:26:10', NULL, '2025-04-24 03:26:10');

-- 导出  表 xianshangyiyuanguahaoxitong.huiyuan 结构
CREATE TABLE IF NOT EXISTS `huiyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `huiyuan_name` varchar(200) DEFAULT NULL COMMENT '会员姓名 Search111 ',
  `huiyuan_phone` varchar(200) DEFAULT NULL COMMENT '会员手机号',
  `huiyuan_id_number` varchar(200) DEFAULT NULL COMMENT '会员身份证号',
  `huiyuan_photo` varchar(200) DEFAULT NULL COMMENT '会员头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `huiyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `huiyuan_content` text COMMENT '会员介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员 show2 photoShow';

-- 正在导出表  xianshangyiyuanguahaoxitong.huiyuan 的数据：~3 rows (大约)
INSERT INTO `huiyuan` (`id`, `username`, `password`, `huiyuan_name`, `huiyuan_phone`, `huiyuan_id_number`, `huiyuan_photo`, `sex_types`, `huiyuan_email`, `new_money`, `huiyuan_content`, `create_time`) VALUES
	(1, 'user1', '123456', '李晓晴', '17703786901', '410224199610232001', 'http://localhost:8080/xianshangyiyuanguahaoxitong/upload/1745415996236.jpg', 2, 'lixiaoqing@qq.com', 98910.25, '会员介绍1', '2022-03-28 05:58:58'),
	(2, 'user2', '123456', '陈立伟', '17703786902', '410224199610232002', 'http://localhost:8080/xianshangyiyuanguahaoxitong/upload/1745464593725.jpg', 1, 'chenweili@qq.com', 9590.92, '会员介绍2', '2022-03-28 05:58:58'),
	(3, 'user3', '123456', '叶小棠', '17703786903', '410224199610232003', 'http://localhost:8080/xianshangyiyuanguahaoxitong/upload/1745464901049.jpg', 2, 'yexiaotang@qq.com', 333.00, '<p>会员介绍31111</p>', '2022-03-28 05:58:58');

-- 导出  表 xianshangyiyuanguahaoxitong.single_seach 结构
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='单页数据';

-- 正在导出表  xianshangyiyuanguahaoxitong.single_seach 的数据：~3 rows (大约)
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_content`, `create_time`) VALUES
	(1, '联系我们', 2, '<p>医院地址：广州市白云区‌京溪街道\r\n咨询电话：020-8732234\r\n官方网站：www.renai.com\r\n微信公众号：仁爱综合医院\r\n就诊时间：周一至周日 8:00 - 12:00，14:00 - 17:30（急诊 24 小时开放）​\r\n无论您是身患疾病寻求治疗，还是关注健康想要咨询，仁爱综合医院全体医护人员都将竭诚为您服务，守护您和家人的健康！</p>', '2025-04-24 02:00:00'),
	(2, '网站介绍', 1, '<p>仁爱综合医院官方网站（www.renai.com）以简洁大气、专业清晰的设计风格呈现，旨在为患者及家属提供全面、便捷的医疗信息服务。网站采用蓝白为主色调，既传递出医疗行业的严谨与专业，又营造出舒适、安心的视觉感受。​\r\n在功能板块设置上，网站首页便设有 “医院概况”“科室导航”“专家团队”“就医指南”“健康科普”“在线服务” 等核心栏目。点击 “医院概况”，可深入了解医院的发展历程、荣誉资质、文化理念等内容；“科室导航” 清晰罗列所有临床医技科室，点击进入后能查看科室介绍、特色技术、医生团队等详细信息，方便患者快速定位所需科室；“专家团队” 板块则展示了医院各科室专家的详细资料，包括擅长领域、学术成就、出诊时间等，帮助患者按需选择合适的医生。​\r\n“就医指南” 栏目是患者的贴心助手，涵盖预约挂号流程、门诊时间表、住院须知、医保报销指南等实用信息，还提供线上预约挂号入口，支持多种预约方式，如按科室、按专家、按日期等，大幅节省患者就医时间。“健康科普” 定期更新各类疾病预防、治疗、康复知识，以及养生保健、营养饮食等健康资讯，以图文、视频等丰富形式呈现，助力公众提升健康意识。​\r\n“在线服务” 板块更是网站的一大亮点，不仅设有在线咨询功能，患者可随时与医生进行文字、语音沟通，获取专业建议；还开通了检查检验报告查询、电子病历下载等服务，让患者足不出户就能完成多项就医操作。此外，网站还设有 “新闻动态” 栏目，实时发布医院的最新活动、学术成果、公益义诊等资讯，增进公众对医院的了解。​\r\n仁爱综合医院官方网站，是连接医院与患者的重要桥梁，致力于以优质、高效的线上服务，提升患者就医体验，为广大群众的健康保驾护航。</p>', '2025-04-24 02:00:00'),
	(3, '医院介绍', 3, '<p>仁爱综合医院，作为区域医疗健康领域的中流砥柱，自 2005 年成立以来，始终坚守 “以患者为中心，以质量为核心” 的服务理念，深耕医疗事业近二十载。医院坐落于 [具体城市] 市 [具体街道]，交通便利，环境优雅，占地面积达 30000 平方米，建筑面积 50000 平方米，是一所集医疗、教学、科研、预防、保健、康复为一体的现代化三级综合医院。​\r\n医院汇聚了一支实力雄厚的医疗团队，现有职工 1200 余人，其中高级职称专家 150 名，中级职称人员 300 名，硕博学历医护人员占比达 40%。他们不仅临床经验丰富，还在各自领域有着深入研究，定期参与国内外学术交流，紧跟医学前沿动态。医院开设了 40 余个临床医技科室，涵盖内科、外科、妇产科、儿科、眼科、耳鼻喉科、口腔科、中医科等，其中，心血管内科、骨科、肿瘤科、神经内科为省级重点专科，在疾病的诊断与治疗上达到国内先进水平。​\r\n为了给患者提供精准、高效的医疗服务，医院斥巨资引进了大批国际领先的医疗设备，如 3.0T 核磁共振成像仪、64 排 128 层螺旋 CT、数字化平板血管造影机（DSA）、高端四维彩超等，能够满足各类疾病的检查与治疗需求。同时，医院建立了智能化信息管理系统，实现了电子病历、智慧药房、远程医疗等功能，优化就医流程，提升患者就医体验。​\r\n在服务方面，仁爱综合医院始终秉持人文关怀，推出 “一站式” 导诊服务、24 小时急诊绿色通道、多学科联合诊疗（MDT）模式等特色服务，为患者提供个性化、全方位的医疗解决方案。此外，医院还积极开展公益活动，定期组织专家团队进社区、下乡村进行义诊，普及健康知识，为提升全民健康水平贡献力量。</p>', '2025-04-24 02:00:00');

-- 导出  表 xianshangyiyuanguahaoxitong.token 结构
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

-- 正在导出表  xianshangyiyuanguahaoxitong.token 的数据：~7 rows (大约)
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'rzpgl45qong9y0ta7f1nhwla5xutvhdu', '2022-03-28 05:54:00', '2025-06-04 12:13:17'),
	(2, 1, 'a1', 'huiyuan', '会员 show2 photoShow', '4sofzwlempzfbgfla62yhe4sx8w9hxe1', '2022-03-28 05:54:25', '2022-03-28 06:54:26'),
	(3, 1, 'a1', 'huiyuan', '会员', '6nirfxqva9b368f1g6hw9n7cmd2cwz1p', '2022-03-28 06:14:16', '2022-04-06 08:32:11'),
	(4, 1, 'a1', 'zhuanjia', '医生', 'fqfc9hmj4hhebfqj978ddpysnqtkxf6a', '2022-03-28 06:17:17', '2025-05-21 04:31:05'),
	(5, 1, 'a1', 'huiyuan', '用户', '23zt1j8reep4ymh71d3gv72i5ta5zlum', '2022-04-06 07:34:00', '2025-06-04 12:14:31'),
	(6, 2, 'a2', 'huiyuan', '用户', 'nfg0lllyd85p0m922nntcdi4sz49ejv1', '2022-04-06 07:34:23', '2025-05-21 02:50:33'),
	(7, 2, 'a2', 'zhuanjia', '医生', 'm7m3l9cp7ndtyxlutyq6dzefle328ans', '2022-04-06 07:37:04', '2025-05-21 04:30:45'),
	(8, 3, 'a3', 'huiyuan', '用户', 'hiui6cywt0h49k0cfnj6mm1cz4edwfm5', '2025-04-22 02:59:45', '2025-04-24 04:45:31'),
	(9, 3, 'doctor3', 'zhuanjia', '医生', '1yx22nxgytcp1cxwm7213f6ihpf1gjcw', '2025-04-24 03:04:15', '2025-05-21 04:30:06');

-- 导出  表 xianshangyiyuanguahaoxitong.users 结构
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

-- 正在导出表  xianshangyiyuanguahaoxitong.users 的数据：~0 rows (大约)
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', 'admin', '管理员', '2022-05-02 06:51:13');

-- 导出  表 xianshangyiyuanguahaoxitong.zhuanjia 结构
CREATE TABLE IF NOT EXISTS `zhuanjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhuanjia_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `zhuanjia_phone` varchar(200) DEFAULT NULL COMMENT '医生手机号',
  `zhuanjia_id_number` varchar(200) DEFAULT NULL COMMENT '医生身份证号',
  `zhuanjia_photo` varchar(200) DEFAULT NULL COMMENT '医生头像',
  `zhuanjia_paiban` varchar(200) DEFAULT NULL COMMENT '医生排班',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `keshi_types` int DEFAULT NULL COMMENT '科室 Search111 ',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位 Search111 ',
  `guahao_money` decimal(10,2) DEFAULT NULL COMMENT '挂号费 ',
  `zhuanjia_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `zhuanjia_content` text COMMENT '医生介绍',
  `zhuanjia_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='医生';

-- 正在导出表  xianshangyiyuanguahaoxitong.zhuanjia 的数据：~3 rows (大约)
INSERT INTO `zhuanjia` (`id`, `username`, `password`, `zhuanjia_name`, `zhuanjia_phone`, `zhuanjia_id_number`, `zhuanjia_photo`, `zhuanjia_paiban`, `sex_types`, `keshi_types`, `zhiwei_types`, `guahao_money`, `zhuanjia_email`, `zhuanjia_content`, `zhuanjia_delete`, `insert_time`, `create_time`) VALUES
	(1, 'doctor1', '123456', '李华医生', '17703786901', '410224199610232001', 'http://localhost:8080/xianshangyiyuanguahaoxitong/upload/1745463694503.png', '周一', 1, 4, 3, 20.00, 'lihua@qq.com', '<p>李华医生是仁爱综合医院骨科的学科带头人，拥有 25 年丰富的临床经验，在腰椎间盘突出、颈椎病、关节置换、复杂骨折创伤修复等骨科疾病的诊断与治疗上造诣深厚。他毕业于国内知名医科大学，后赴德国顶尖骨科研究中心进修，将国际前沿的微创骨科技术与数字化诊疗方案引入临床实践。在脊柱内镜手术领域，李医生创新改良手术操作流程，极大提升手术精准度与安全性；擅长运用 3D 打印技术定制个性化关节置换方案，成功为数千例患者解决关节功能障碍难题。他还主导多项省级骨科科研项目，在国际权威骨科期刊发表论文 20 余篇，参与编写《现代骨科微创治疗学》等多部专业著作，是国内骨科领域兼具临床实力与科研能力的领军人物。</p><p><br></p>', 1, '2022-03-28 05:58:58', '2025-04-24 02:00:00'),
	(2, 'doctor2', '123456', '梁敏医生', '17703786902', '410224199610232002', 'http://localhost:8080/xianshangyiyuanguahaoxitong/upload/1745463808181.png', '周二', 2, 2, 2, 20.00, 'liangmin@qq.com', '<p>梁敏医生是仁爱综合医院内科的骨干力量，专注内科临床工作 20 年，在呼吸系统疾病、消化系统疾病、内分泌疾病的诊疗方面有着卓越表现。她毕业于 莲花清瘟研究大学，多次赴国内顶尖三甲医院进修，并积极参与国际内科领域学术交流，将前沿的诊疗理念和技术融入日常临床工作。</p><p><br></p><p><br></p><p>在呼吸系统疾病方面，梁敏医生擅长治疗慢性阻塞性肺疾病、支气管哮喘等，对重症肺炎的抢救治疗有着丰富经验；在消化系统疾病领域，她熟练掌握胃镜、肠镜的检查与镜下治疗技术，尤其对早期消化道肿瘤的诊断与治疗有深入研究；在内分泌疾病上，她对糖尿病及其并发症、甲状腺疾病等的个性化治疗方案制定独具心得。梁敏医生还主导开展多项院内科研项目，在核心医学期刊发表学术论文 15 篇，参与编写《实用内科学诊疗指南》，凭借精湛医术和耐心细致的问诊态度，成为患者信赖的内科专家。</p>', 1, '2022-03-28 05:58:58', '2025-04-24 02:00:00'),
	(3, 'doctor3', '123456', '张勇医生', '17703786903', '410224199610232003', 'http://localhost:8080/xianshangyiyuanguahaoxitong/upload/1745463865769.png', '周三', 1, 2, 2, 20.00, 'zhangyong@qq.com', '<p>张勇医生是仁爱综合医院内科的中坚力量，从事内科临床工作 18 年，在心血管、神经及消化系统疾病的诊治方面经验丰富，尤其擅长高血压危象处理、急性脑血管病溶栓治疗以及消化性溃疡的个体化治疗。他毕业于 [某重点医学院校]，先后于国内三家顶尖三甲医院的心内科、神经内科及消化内科进修，系统掌握了多领域内科疾病的前沿诊疗技术。</p><p><br></p><p><br></p><p>工作中，张勇医生将理论与实践深度结合，对顽固性高血压的综合管理、急性脑梗死的超早期干预形成了一套行之有效的治疗方案；在消化系统疾病领域，他擅长运用内镜技术诊断早期消化道病变，并针对幽门螺杆菌感染、功能性胃肠病制定个性化治疗策略。他主持开展的 “高血压患者多器官保护机制研究” 项目获省级科研成果奖，在核心期刊发表学术论文 12 篇，参与编写《临床内科诊疗新进展》，以扎实的专业功底和对患者高度负责的态度，赢得了广泛认可。</p>', 1, '2022-04-06 07:36:37', '2025-04-24 02:00:00');

-- 导出  表 xianshangyiyuanguahaoxitong.zhuanjia_liuyan 结构
CREATE TABLE IF NOT EXISTS `zhuanjia_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhuanjia_id` int DEFAULT NULL COMMENT '医生',
  `huiyuan_id` int DEFAULT NULL COMMENT '会员',
  `zhuanjia_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='医生留言';

-- 正在导出表  xianshangyiyuanguahaoxitong.zhuanjia_liuyan 的数据：~3 rows (大约)
INSERT INTO `zhuanjia_liuyan` (`id`, `zhuanjia_id`, `huiyuan_id`, `zhuanjia_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 3, 2, '张勇医术高', '2025-04-24 03:27:16', '感谢认可', '2025-05-21 01:43:31', '2025-04-24 03:27:16'),
	(2, 2, 1, '梁医生，没胃口是肠胃出问题了吗', '2025-04-24 03:28:13', '请来面诊', '2025-05-21 01:38:36', '2025-04-24 03:28:13'),
	(3, 1, 3, '李医生，你下周一上班吗', '2025-04-24 03:29:07', '来吧', '2025-05-21 04:13:04', '2025-04-24 03:29:07');

-- 导出  表 xianshangyiyuanguahaoxitong.zhuanjia_order 结构
CREATE TABLE IF NOT EXISTS `zhuanjia_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhuanjia_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '号 Search111 ',
  `zhuanjia_id` int DEFAULT NULL COMMENT '医生',
  `huiyuan_id` int DEFAULT NULL COMMENT '会员',
  `guahao_time` date DEFAULT NULL COMMENT '挂号日期 Search111 ',
  `shijianduan_types` int DEFAULT NULL COMMENT '时间段 Search111 ',
  `zhuanjia_order_yesno_types` int DEFAULT NULL COMMENT '状态 Search111 ',
  `zhuanjia_order_yesno_text` text COMMENT '审核意见',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='医生挂号订单';

-- 正在导出表  xianshangyiyuanguahaoxitong.zhuanjia_order 的数据：~7 rows (大约)
INSERT INTO `zhuanjia_order` (`id`, `zhuanjia_order_uuid_number`, `zhuanjia_id`, `huiyuan_id`, `guahao_time`, `shijianduan_types`, `zhuanjia_order_yesno_types`, `zhuanjia_order_yesno_text`, `insert_time`, `create_time`) VALUES
	(1, '1745466279407', 3, 1, '2025-04-24', 8, 3, '临时有事，不出诊', '2025-04-24 03:44:39', '2025-04-24 03:44:39'),
	(2, '1745466316534', 2, 2, '2025-04-24', 2, 2, '请准时就医', '2025-04-24 03:45:17', '2025-04-24 03:45:17'),
	(3, '1745466344211', 1, 3, '2025-04-25', 4, 2, '请准时就医', '2025-04-24 03:45:44', '2025-04-24 03:45:44'),
	(4, '1745476352976', 3, 1, '2025-04-24', 6, 3, '临时有事调休', '2025-04-24 06:32:33', '2025-04-24 06:32:33'),
	(5, '1746675613563', 2, 1, '2025-05-08', 4, 2, '请准时就医', '2025-05-08 03:40:14', '2025-05-08 03:40:14'),
	(7, '1748360010056', 3, 1, '2025-05-27', 4, 3, '暂无', '2025-05-27 15:33:30', '2025-05-27 15:33:30'),
	(8, '1748396160733', 3, 1, '2025-05-28', 6, 2, '好的', '2025-05-28 01:36:01', '2025-05-28 01:36:01'),
	(9, '1748397009723', 3, 1, '2025-05-28', 6, 2, '可以', '2025-05-28 01:50:10', '2025-05-28 01:50:10'),
	(10, '1749035586432', 3, 1, '2025-06-05', 3, 2, '可以', '2025-06-04 11:13:06', '2025-06-04 11:13:06'),
	(11, '1749035686524', 2, 1, '2025-06-05', 8, 1, NULL, '2025-06-04 11:14:47', '2025-06-04 11:14:47');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
