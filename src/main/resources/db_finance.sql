/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : db_finance

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 06/06/2020 07:44:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_finance
-- ----------------------------
DROP TABLE IF EXISTS `tb_finance`;
CREATE TABLE `tb_finance`  (
  `p_code` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'P000000001' COMMENT '编号',
  `p_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '日期',
  `f_code` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'F0001' COMMENT '款项',
  `m_code` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'M0001' COMMENT '成员',
  `p_qty` double NULL DEFAULT 0 COMMENT '数量',
  `p_money` double UNSIGNED ZEROFILL NULL DEFAULT 0000000000000000000000 COMMENT '金额',
  `p_type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '收支' COMMENT '收支',
  `p_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '方式' COMMENT '方式',
  `p_info` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`p_code`) USING BTREE,
  INDEX `finance_foreign_key_funds`(`f_code`) USING BTREE,
  INDEX `finance_foreign_key_member`(`m_code`) USING BTREE,
  CONSTRAINT `finance_foreign_key_funds` FOREIGN KEY (`f_code`) REFERENCES `tb_funds` (`f_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `finance_foreign_key_member` FOREIGN KEY (`m_code`) REFERENCES `tb_member` (`m_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_finance
-- ----------------------------
INSERT INTO `tb_finance` VALUES ('I000000001', '2019-05-05 00:00:00', 'F0010', 'M0001', 20, 0000000000000000200000, '收入', '银行卡', '2019-05-05');
INSERT INTO `tb_finance` VALUES ('I000000002', '2019-05-14 00:00:00', 'F0003', 'M0001', 1, 0000000000000000100000, '收入', '银行卡', '2019-05-05');
INSERT INTO `tb_finance` VALUES ('I000000003', '2019-05-14 00:00:00', 'F0002', 'M0002', 1, 0000000000000000100000, '收入', '银行卡', '2019-05-22');
INSERT INTO `tb_finance` VALUES ('I000000004', '2019-05-14 00:00:00', 'F0004', 'M0001', 1, 0000000000000000100000, '收入', '银行卡', '2019-05-23');
INSERT INTO `tb_finance` VALUES ('I000000005', '2019-05-14 00:00:00', 'F0005', 'M0001', 1, 0000000000000000080000, '收入', '银行卡', '2019-05-23');
INSERT INTO `tb_finance` VALUES ('I000000006', '2019-05-14 00:00:00', 'F0006', 'M0002', 1, 0000000000000000050000, '收入', '银行卡', '2019-05-23');
INSERT INTO `tb_finance` VALUES ('I000000007', '2019-05-14 00:00:00', 'F0009', 'M0001', 1, 0000000000000000020000, '收入', '银行卡', '2019-05-24');
INSERT INTO `tb_finance` VALUES ('I000000008', '2019-05-14 00:00:00', 'F0010', 'M0001', 10, 0000000000000000100000, '收入', '银行卡', '2019-05-24');
INSERT INTO `tb_finance` VALUES ('I000000009', '2019-05-14 00:00:00', 'F0010', 'M0002', 24, 0000000000000000240000, '收入', '银行卡', '2019-05-24');
INSERT INTO `tb_finance` VALUES ('I000000010', '2019-06-05 00:00:00', 'F0010', 'M0002', 5, 0000000000000000050000, '收入', '银行卡', '2019-06-05');
INSERT INTO `tb_finance` VALUES ('O000000001', '2019-05-24 00:00:00', 'F0012', 'M0001', 75.634, 0000000000000000756340, '支出', '银行卡', '2019-05-24');
INSERT INTO `tb_finance` VALUES ('O000000002', '2019-06-08 00:00:00', 'F0015', 'M0001', 2, 0000000000000000020000, '支出', '现金', '2019-06-08');
INSERT INTO `tb_finance` VALUES ('O000000003', '2019-12-07 00:00:00', 'F0021', 'M0001', 1, 0000000000000000010000, '支出', '支付宝', '2019-12-07');
INSERT INTO `tb_finance` VALUES ('O000000004', '2019-12-07 00:00:00', 'F0024', 'M0001', 1, 0000000000000000085000, '支出', '银行卡', '2019-12-07');
INSERT INTO `tb_finance` VALUES ('O000000005', '2019-12-07 00:00:00', 'F0023', 'M0001', 1, 0000000000000000160000, '支出', '银行卡', '2019-12-07');

-- ----------------------------
-- Table structure for tb_funds
-- ----------------------------
DROP TABLE IF EXISTS `tb_funds`;
CREATE TABLE `tb_funds`  (
  `f_code` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'F0001' COMMENT '编号',
  `f_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '款项' COMMENT '名称',
  `f_category` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '类别' COMMENT '类别',
  `f_business` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '商家' COMMENT '商家',
  `f_unit` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '件' COMMENT '单位',
  `f_price` double NULL DEFAULT 0 COMMENT '单价',
  `f_info` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`f_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_funds
-- ----------------------------
INSERT INTO `tb_funds` VALUES ('F0001', '工资', '工资', '中铁十二局一公司', '月', 10000, '2019-05-05');
INSERT INTO `tb_funds` VALUES ('F0002', '杨老师', '借款', '个人', '次', 100000, '2019-05-05');
INSERT INTO `tb_funds` VALUES ('F0003', '杜振清', '借款', '个人', '次', 100000, '2019-05-22');
INSERT INTO `tb_funds` VALUES ('F0004', '方涛', '借款', '个人', '次', 100000, '2019-05-22');
INSERT INTO `tb_funds` VALUES ('F0005', '徐贺', '借款', '个人', '次', 80000, '2019-05-22');
INSERT INTO `tb_funds` VALUES ('F0006', '都红', '借款', '个人', '次', 50000, '2019-05-22');
INSERT INTO `tb_funds` VALUES ('F0007', '火锅', '餐饮', '海底捞', '次', 100, '2019-05-22');
INSERT INTO `tb_funds` VALUES ('F0008', '拉面', '餐饮', '兰州拉面馆', '次', 10, '2019-05-22');
INSERT INTO `tb_funds` VALUES ('F0009', '崔越超', '借款', '个人', '次', 20000, '2019-05-24');
INSERT INTO `tb_funds` VALUES ('F0010', '积蓄', '存款', '个人', '次', 10000, '2019-05-24');
INSERT INTO `tb_funds` VALUES ('F0011', '住房', '住宿', '个人', '套', 1866337, '2019-05-24');
INSERT INTO `tb_funds` VALUES ('F0012', '房款', '还款', '西安朔坤房地产开发有限公司', '月', 10000, '2019-05-24');
INSERT INTO `tb_funds` VALUES ('F0013', '还款', '还款', '个人', '次', 10000, '2019-05-24');
INSERT INTO `tb_funds` VALUES ('F0014', '奥数', '教育', '西安', '年', 8200, '2019-05-31');
INSERT INTO `tb_funds` VALUES ('F0015', '徐贺', '还款', '个人', '次', 10000, '2019-06-08');
INSERT INTO `tb_funds` VALUES ('F0016', '借款', '借款', '个人', '次', 10000, '2019-06-08');
INSERT INTO `tb_funds` VALUES ('F0017', '杜振清', '还款', '个人', '次', 10000, '2019-06-08');
INSERT INTO `tb_funds` VALUES ('F0018', '方涛', '还款', '个人', '次', 10000, '2019-06-08');
INSERT INTO `tb_funds` VALUES ('F0019', '杨老师', '还款', '个人', '次', 10000, '2019-06-08');
INSERT INTO `tb_funds` VALUES ('F0020', '都红', '还款', '个人', '次', 10000, '2019-06-08');
INSERT INTO `tb_funds` VALUES ('F0021', '崔越超', '还款', '个人', '次', 10000, '2019-06-08');
INSERT INTO `tb_funds` VALUES ('F0022', '宾馆', '住宿', '商家', '次', 100, '2019-06-08');
INSERT INTO `tb_funds` VALUES ('F0023', '车位', '交通', '西安朔坤房地产开发有限公司', '个', 160000, '2019-12-07');
INSERT INTO `tb_funds` VALUES ('F0024', '装修', '住宿', '西安朔坤房地产开发有限公司', '套', 85000, '2019-12-07');

-- ----------------------------
-- Table structure for tb_income
-- ----------------------------
DROP TABLE IF EXISTS `tb_income`;
CREATE TABLE `tb_income`  (
  `i_code` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'I000000001' COMMENT '编号',
  `i_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '日期',
  `f_code` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'F0001' COMMENT '款项',
  `m_code` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'M0001' COMMENT '成员',
  `i_qty` double NULL DEFAULT 0 COMMENT '数量',
  `i_money` double NULL DEFAULT 0 COMMENT '金额',
  `i_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '方式' COMMENT '方式',
  `i_info` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`i_code`) USING BTREE,
  INDEX `income_foreign_key_funds`(`f_code`) USING BTREE,
  INDEX `income_foreign_key_member`(`m_code`) USING BTREE,
  CONSTRAINT `income_foreign_key_funds` FOREIGN KEY (`f_code`) REFERENCES `tb_funds` (`f_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `income_foreign_key_member` FOREIGN KEY (`m_code`) REFERENCES `tb_member` (`m_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_income
-- ----------------------------
INSERT INTO `tb_income` VALUES ('I000000001', '2019-05-05 00:00:00', 'F0010', 'M0001', 20, 200000, '银行卡', '2019-05-05');
INSERT INTO `tb_income` VALUES ('I000000002', '2019-05-14 00:00:00', 'F0003', 'M0001', 1, 100000, '银行卡', '2019-05-05');
INSERT INTO `tb_income` VALUES ('I000000003', '2019-05-14 00:00:00', 'F0002', 'M0002', 1, 100000, '银行卡', '2019-05-22');
INSERT INTO `tb_income` VALUES ('I000000004', '2019-05-14 00:00:00', 'F0004', 'M0001', 1, 100000, '银行卡', '2019-05-23');
INSERT INTO `tb_income` VALUES ('I000000005', '2019-05-14 00:00:00', 'F0005', 'M0001', 1, 80000, '银行卡', '2019-05-23');
INSERT INTO `tb_income` VALUES ('I000000006', '2019-05-14 00:00:00', 'F0006', 'M0002', 1, 50000, '银行卡', '2019-05-23');
INSERT INTO `tb_income` VALUES ('I000000007', '2019-05-14 00:00:00', 'F0009', 'M0001', 1, 20000, '银行卡', '2019-05-24');
INSERT INTO `tb_income` VALUES ('I000000008', '2019-05-14 00:00:00', 'F0010', 'M0001', 10, 100000, '银行卡', '2019-05-24');
INSERT INTO `tb_income` VALUES ('I000000009', '2019-05-14 00:00:00', 'F0010', 'M0002', 24, 240000, '银行卡', '2019-05-24');
INSERT INTO `tb_income` VALUES ('I000000010', '2019-06-05 00:00:00', 'F0010', 'M0002', 5, 50000, '银行卡', '2019-06-05');

-- ----------------------------
-- Table structure for tb_login
-- ----------------------------
DROP TABLE IF EXISTS `tb_login`;
CREATE TABLE `tb_login`  (
  `id` int(11) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_login
-- ----------------------------
INSERT INTO `tb_login` VALUES (1, '管理员', 'admin', '123456');
INSERT INTO `tb_login` VALUES (2, '测试员', 'test', '123456');
INSERT INTO `tb_login` VALUES (3, 'JSP', 'jsp', '123');

-- ----------------------------
-- Table structure for tb_member
-- ----------------------------
DROP TABLE IF EXISTS `tb_member`;
CREATE TABLE `tb_member`  (
  `m_code` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'M0001' COMMENT '编号',
  `m_name` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '姓名' COMMENT '姓名',
  `m_sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '男' COMMENT '性别',
  `m_birth` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '生日',
  `m_identity` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '党员' COMMENT '身份',
  `m_relation` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '母亲' COMMENT '关系',
  `m_origin` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '陕西西安' COMMENT '籍贯',
  `m_education` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '大学本科' COMMENT '学历',
  `m_college` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '院校' COMMENT '院校',
  `m_tel` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '17791540396' COMMENT '电话',
  `m_info` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`m_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_member
-- ----------------------------
INSERT INTO `tb_member` VALUES ('M0001', '方波', '男', '1980-11-01 00:00:00', '党员', '爸爸', '户县', '本科', '西安理工大学', '1234567890', '2019-05-05');
INSERT INTO `tb_member` VALUES ('M0002', '都雪', '女', '1980-06-02 00:00:00', '党员', '妈妈', '泾阳', '本科', '西安财经大学', '1234567890', '2019-05-05');
INSERT INTO `tb_member` VALUES ('M0003', '方祉璇', '女', '2009-11-20 00:00:00', '学生', '女儿', '西安', '小学', '东仪路小学', '1234567890', '2019-05-05');
INSERT INTO `tb_member` VALUES ('M0004', '张三', '男', '2019-06-03 00:00:00', '党员', '爸爸', '户县', '本科', '西安理工大学', '1234567890', '2019-06-03');

-- ----------------------------
-- Table structure for tb_outlay
-- ----------------------------
DROP TABLE IF EXISTS `tb_outlay`;
CREATE TABLE `tb_outlay`  (
  `o_code` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'O000000001' COMMENT '编号',
  `o_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '日期',
  `f_code` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'F0001' COMMENT '款项',
  `m_code` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'M0001' COMMENT '成员',
  `o_qty` double NULL DEFAULT 0 COMMENT '数量',
  `o_money` double NOT NULL DEFAULT 0 COMMENT '金额',
  `o_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '方式' COMMENT '方式',
  `o_info` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`o_code`) USING BTREE,
  INDEX `outlay_foreign_key_funds`(`f_code`) USING BTREE,
  INDEX `outlay_foreign_key_member`(`m_code`) USING BTREE,
  CONSTRAINT `outlay_foreign_key_funds` FOREIGN KEY (`f_code`) REFERENCES `tb_funds` (`f_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `outlay_foreign_key_member` FOREIGN KEY (`m_code`) REFERENCES `tb_member` (`m_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_outlay
-- ----------------------------
INSERT INTO `tb_outlay` VALUES ('O000000001', '2019-05-24 00:00:00', 'F0012', 'M0001', 75.634, 756340, '银行卡', '2019-05-24');
INSERT INTO `tb_outlay` VALUES ('O000000002', '2019-06-08 00:00:00', 'F0015', 'M0001', 2, 20000, '现金', '2019-06-08');
INSERT INTO `tb_outlay` VALUES ('O000000003', '2019-12-07 00:00:00', 'F0021', 'M0001', 1, 10000, '支付宝', '2019-12-07');
INSERT INTO `tb_outlay` VALUES ('O000000004', '2019-12-07 00:00:00', 'F0024', 'M0001', 1, 85000, '银行卡', '2019-12-07');
INSERT INTO `tb_outlay` VALUES ('O000000005', '2019-12-07 00:00:00', 'F0023', 'M0001', 1, 160000, '银行卡', '2019-12-07');

-- ----------------------------
-- Table structure for tb_systemlog
-- ----------------------------
DROP TABLE IF EXISTS `tb_systemlog`;
CREATE TABLE `tb_systemlog`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '日志ID',
  `code` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志编码',
  `description` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志描述',
  `method` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志方法',
  `type` bigint(20) NULL DEFAULT NULL COMMENT '日志类型',
  `request` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志请求',
  `exception` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志异常',
  `params` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志参数',
  `author` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志作者',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '日志日期',
  `info` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_systemlog
-- ----------------------------

-- ----------------------------
-- Triggers structure for table tb_funds
-- ----------------------------
DROP TRIGGER IF EXISTS `tr_funds_delete`;
delimiter ;;
CREATE TRIGGER `tr_funds_delete` AFTER DELETE ON `tb_funds` FOR EACH ROW begin
	delete from tb_income where tb_income.f_code = old.f_code;
	delete from tb_outlay where tb_outlay.f_code = old.f_code;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table tb_funds
-- ----------------------------
DROP TRIGGER IF EXISTS `tr_funds_update`;
delimiter ;;
CREATE TRIGGER `tr_funds_update` AFTER UPDATE ON `tb_funds` FOR EACH ROW begin
	update tb_income set i_money=new.f_price*i_qty where f_code = new.f_code;
	update tb_outlay set o_money=new.f_price*o_qty where f_code = new.f_code;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table tb_income
-- ----------------------------
DROP TRIGGER IF EXISTS `tr_income_delete`;
delimiter ;;
CREATE TRIGGER `tr_income_delete` AFTER DELETE ON `tb_income` FOR EACH ROW begin
	delete from tb_finance where tb_finance.p_code=old.i_code;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table tb_income
-- ----------------------------
DROP TRIGGER IF EXISTS `tr_income_update`;
delimiter ;;
CREATE TRIGGER `tr_income_update` AFTER UPDATE ON `tb_income` FOR EACH ROW begin
	declare	price double;
	set price=(select f_price from tb_funds where f_code = new.f_code);

	update tb_income set i_money=price*new.i_qty where i_code = new.i_code;
	update tb_finance set p_date=new.i_date,f_code=new.f_code,m_code=new.m_code,p_qty=new.i_qty,p_money=price*new.i_qty,p_method=new.i_method,p_info=new.i_info where p_code = new.i_code;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table tb_income
-- ----------------------------
DROP TRIGGER IF EXISTS `[tr_income_insert]`;
delimiter ;;
CREATE TRIGGER `[tr_income_insert]` AFTER INSERT ON `tb_income` FOR EACH ROW begin
	insert into tb_finance(p_code,p_date,f_code,m_code,p_qty,p_money,p_type,p_method, p_info) values
	(new.i_code,new.i_date,new.f_code,new.m_code,new.i_qty,new.i_money,'收入',new.i_method, new.i_info);
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table tb_outlay
-- ----------------------------
DROP TRIGGER IF EXISTS `[tr_outlay_delete]`;
delimiter ;;
CREATE TRIGGER `[tr_outlay_delete]` AFTER DELETE ON `tb_outlay` FOR EACH ROW begin
	delete from tb_finance where tb_finance.p_code=old.o_code;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table tb_outlay
-- ----------------------------
DROP TRIGGER IF EXISTS `[tr_outlay_update]`;
delimiter ;;
CREATE TRIGGER `[tr_outlay_update]` AFTER UPDATE ON `tb_outlay` FOR EACH ROW begin
	declare	price double;
	set price=(select f_price from tb_funds where f_code = new.f_code);

	update tb_outlay set o_money=price*new.o_qty where o_code = new.o_code;
	update tb_finance set p_date=new.o_date,f_code=new.f_code,m_code=new.m_code,p_qty=new.o_qty,p_money=price*new.o_qty,p_method=new.o_method,p_info=new.o_info	where p_code=new.o_code;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table tb_outlay
-- ----------------------------
DROP TRIGGER IF EXISTS `[tr_outlay_insert]`;
delimiter ;;
CREATE TRIGGER `[tr_outlay_insert]` AFTER INSERT ON `tb_outlay` FOR EACH ROW begin
	insert into tb_finance(p_code,p_date,f_code,m_code,p_qty,p_money,p_type,p_method,p_info) values 
	(new.o_code,new.o_date,new.f_code,new.m_code,new.o_qty,new.o_money,'支出',new.o_method,new.o_info);
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
