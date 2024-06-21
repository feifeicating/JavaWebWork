/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:3306
 Source Schema         : taoshop

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 23/11/2023 15:40:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, 30, 1, 1, 76.50, '76.5');
INSERT INTO `car` VALUES (2, 34, 1, 1, 76.50, '76.5');
INSERT INTO `car` VALUES (3, 32, 9, 1, 89.10, '89.1');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `item_id` int(11) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (7, 3, 35, '真的很不错', '2022-01-01 19:23:03');
INSERT INTO `comment` VALUES (8, 3, 28, '真好吃', '2022-01-01 19:32:31');
INSERT INTO `comment` VALUES (9, 1, 35, '这个东西真流弊', '2022-01-01 20:02:25');
INSERT INTO `comment` VALUES (10, 9, 37, '这个芒果真是太好吃了', '2022-01-02 10:38:43');
INSERT INTO `comment` VALUES (11, 22, 27, '苹果真不错', '2022-01-06 08:45:51');
INSERT INTO `comment` VALUES (12, 22, 27, '阿斯达斯大所', '2022-01-06 08:46:22');
INSERT INTO `comment` VALUES (13, 29, 27, '驱蚊器王庆伟全为全为', '2022-01-06 10:13:53');
INSERT INTO `comment` VALUES (14, 30, 36, '不错的东西', '2022-04-04 10:18:46');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scNum` int(11) NULL DEFAULT NULL COMMENT '收藏数',
  `gmNum` int(11) NULL DEFAULT NULL COMMENT '购买数',
  `url1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pam1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数1',
  `pam2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数2',
  `pam3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数3',
  `val3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值3',
  `val2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值2',
  `val1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值1',
  `type` int(11) NULL DEFAULT NULL,
  `zk` int(10) NULL DEFAULT NULL COMMENT '折扣',
  `category_id_one` int(11) NULL DEFAULT NULL COMMENT '类别id',
  `category_id_two` int(11) NULL DEFAULT NULL COMMENT '类别2级',
  `isDelete` int(2) NULL DEFAULT NULL COMMENT '0否 1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (27, '山西运城新鲜水果苹果红富士', '54.9', 3, 20, '\\test1_war_exploded\\resource\\ueditor\\upload\\9f0296902c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\9f030bc02c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\9f05cae02c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\9f0667202c2111e865b6dc2da7582a7aTB2faFrcFGWBuNjy0FbXXb4sXXa_!!3320501499.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\9f06dc502c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/3ca705602c1e11e865b6dc2da7582a7a1.jpg\" title=\"\" alt=\"1.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 75, 76, 0);
INSERT INTO `item` VALUES (28, '黄河古道安徽砀山红富士 丑苹果 不打蜡，无农药', '66.5', 2, 8, '\\test1_war_exploded\\resource\\ueditor\\upload\\ba329bc02c1e11e865b6dc2da7582a7a811f5031-87ab-4a55-bfd2-3e29a5eb0ad7.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\ba3310f02c1e11e865b6dc2da7582a7a6431e0f4-1f60-465b-906e-25ea52bd076b.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\ba3386202c1e11e865b6dc2da7582a7ae13bedb5-c6c1-47f2-8588-5735397f0dea (1).jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\ba33d4402c1e11e865b6dc2da7582a7ae13bedb5-c6c1-47f2-8588-5735397f0dea.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\ba3449702c1e11e865b6dc2da7582a7ae37c45cf-fcea-4cb1-8b4e-c7ead141c76d.jpg', '<p><img src=\"/test1_war_exploded/resource/ueditor/a730e2c02c1e11e865b6dc2da7582a7a1.jpg\" title=\"\" alt=\"1.jpg\"/></p><p><img src=\"/test1_war_exploded/resource/ueditor/a93984002c1e11e865b6dc2da7582a7a2.png\" title=\"\" alt=\"2.png\"/></p><p><br/></p><p><img src=\"/test1_war_exploded/resource/ueditor/upload/ab62cca02c1e11e865b6dc2da7582a7a3.jpg\" title=\"\" alt=\"3.jpg\"/></p><p><img src=\"/test1_war_exploded/resource/ueditor/upload/ad2368602c1e11e865b6dc2da7582a7a4.png\" title=\"\" alt=\"4.png\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 75, 76, 0);
INSERT INTO `item` VALUES (29, '2017山东新鲜红富士苹果', '49.9', 1, 0, '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb2e5102c1f11e865b6dc2da7582a7a5f5bfef1-1183-4c8a-80f5-23a8251422eb.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb333302c1f11e865b6dc2da7582a7a49e3c13e-5e8c-4c4a-8382-0721d61ae630.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb3a8602c1f11e865b6dc2da7582a7adbbbca07-7c2d-4ecb-a1e3-097620517400.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb41d902c1f11e865b6dc2da7582a7ae798f106-7f85-43f8-82d0-7a1918bd5876.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\2cb46bb02c1f11e865b6dc2da7582a7adbbbca07-7c2d-4ecb-a1e3-097620517400.jpg', '<p><img src=\"/test1_war_exploded/resource/ueditor/29418c102c1f11e865b6dc2da7582a7a1.jpg\" title=\"\" alt=\"1.jpg\"/></p><p><img src=\"/test1_war_exploded/resource/ueditor/upload/2bb683b02c1f11e865b6dc2da7582a7a2.jpg\" title=\"\" alt=\"2.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 75, 76, 0);
INSERT INTO `item` VALUES (30, '陕西新鲜石榴现摘时令水果贵妃大石榴农家特产薄皮酸石榴', '85', 0, 3, '\\test1_war_exploded\\resource\\ueditor\\upload\\d9a752b02c1f11e865b6dc2da7582a7aTB1pC88XOCYBuNkSnaVXXcMsVXa_!!0-item_pic.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\d9a7eef02c1f11e865b6dc2da7582a7aTB2dP17arGYBuNjy0FoXXciBFXa_!!2455418594.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\d9a864202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\d9a8b2402c1f11e865b6dc2da7582a7aTB2dP17arGYBuNjy0FoXXciBFXa_!!2455418594.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\d9aad5202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg', '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/d89212202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg\" title=\"\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0);
INSERT INTO `item` VALUES (31, '【现货】蒙自甜石榴云南特产薄皮 新鲜水果9个装 单果4.5两左右', '36', 0, 0, '\\test1_war_exploded\\resource\\ueditor\\upload\\23dc83f02c2011e865b6dc2da7582a7aTB2A3FzXRLzQeBjSZFoXXc5gFXa_!!2455185564.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\23dcf9202c2011e865b6dc2da7582a7aTB2iwNJX8PzQeBjSZPiXXb0TpXa_!!2455185564.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\23dd95602c2011e865b6dc2da7582a7aTB2MpRlaqnyQeBjSsplXXaLWVXa_!!2455185564.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\23de0a902c2011e865b6dc2da7582a7aTB11gurg63z9KJjy0FmXXXiwXXa_!!0-item_pic.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\23de7fc02c2011e865b6dc2da7582a7aTB2MpRlaqnyQeBjSsplXXaLWVXa_!!2455185564.jpg_430x430q90.jpg', '<p>品牌名称：<span class=\"J_EbrandLogo\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51);\">绿养道</span></p><p class=\"attr-list-hd tm-clear\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 20px; line-height: 22px; color: rgb(153, 153, 153); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; font-variant-numeric: normal; font-variant-east-asian: normal; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-weight: 700; float: left;\">产品参数：</span></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>厂名：绿养道农产品产销合作社</p></li><li><p>厂址：云南蒙自攀枝村花石榴园</p></li><li><p>厂家联系方式：13521676858</p></li><li><p>保质期：60 天</p></li><li><p>净含量:&nbsp;1900g</p></li><li><p>包装方式:&nbsp;包装</p></li><li><p>品牌:&nbsp;绿养道</p></li><li><p>售卖方式:&nbsp;单品</p></li><li><p>生鲜储存温度:&nbsp;8-15℃</p></li><li><p>热卖时间:&nbsp;1月&nbsp;2月&nbsp;8月&nbsp;9月&nbsp;10月&nbsp;11月&nbsp;12月</p></li><li><p>产地:&nbsp;中国大陆</p></li><li><p>省份:&nbsp;云南省</p></li><li><p>城市:&nbsp;红河哈尼族彝族自治州</p></li><li><p>特产品类:&nbsp;蒙自石榴</p></li><li><p>净含量:&nbsp;2.5kg(含）-5kg(不含)</p></li><li><p>价格:&nbsp;51-100元</p></li></ul><p><br/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 71, 72, 0);
INSERT INTO `item` VALUES (32, '现货突尼斯软籽石榴2个超大果软子甜酸石榴新鲜水果非蒙自石榴', '99', 0, 10, '\\test1_war_exploded\\resource\\ueditor\\upload\\92cc7a902c2011e865b6dc2da7582a7aTB1a7xUdUR1BeNjy0FmXXb0wVXa_!!0-item_pic.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\92ccefc02c2011e865b6dc2da7582a7aTB2GV6ld7fb_uJjSsD4XXaqiFXa_!!3206065077.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\92cd8c002c2011e865b6dc2da7582a7aTB2J81_nf2H8KJjy0FcXXaDlFXa_!!3206065077.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\92ce01302c2011e865b6dc2da7582a7aTB2oM1InmYH8KJjSspdXXcRgVXa_!!3206065077.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\92ce76602c2011e865b6dc2da7582a7aTB29bjrngLD8KJjSszeXXaGRpXa_!!3206065077.jpg_430x430q90.jpg', '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/8bbe4bc02c2011e865b6dc2da7582a7a1.jpg\" title=\"\" alt=\"1.jpg\"/><img src=\"/test1_war_exploded/resource/ueditor/upload/8d8947c02c2011e865b6dc2da7582a7a2.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/test1_war_exploded/resource/ueditor/upload/8fd310b02c2011e865b6dc2da7582a7a77.jpg\" title=\"\" alt=\"77.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0);
INSERT INTO `item` VALUES (33, '荥阳突尼斯陈氏河阴软籽石榴软子新鲜水果非会理蒙自临潼甜新鲜', '80', 2, 0, '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb3b2e02c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb6e7302c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb75c602c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb7d1902c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\dcb86dd02c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/dbbc33802c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg\" title=\"\" alt=\"TB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0);
INSERT INTO `item` VALUES (34, '正宗陕西红心石榴水果新鲜', '85', 1, 4, '\\test1_war_exploded\\resource\\ueditor\\upload\\012eb0202c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\012f25502c2111e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\012fc1902c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\013036c02c2111e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\0130abf02c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg', '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/004f73b02c2111e865b6dc2da7582a7aTB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg\" title=\"\" alt=\"TB23TvclwoQMeJjy1XaXXcSsFXa_!!3296167834.jpg_430x430q90.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0);
INSERT INTO `item` VALUES (35, '新鲜油桃5斤 新鲜孕妇水果非水蜜桃黄桃毛桃子樱桃当季时令鲜果', '25', 0, 14, '\\test1_war_exploded\\resource\\ueditor\\upload\\4152abc02c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\41536f102c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\41540b502c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\415459702c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg', '\\test1_war_exploded\\resource\\ueditor\\upload\\4154cea02c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg', '<p><img src=\"/test1_war_exploded/resource/ueditor/upload/407173802c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg\" title=\"\" alt=\"TB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 73, 74, 0);
INSERT INTO `item` VALUES (36, '现摘3斤 桃子水蜜桃 新鲜水果包邮脆桃硬桃现货新摘桃子非油桃黄', '120', 1, 7, '/shop\\resource\\ueditor\\upload\\760cd00089d311eed8fb05f247c8a9edR-C.jpg', '/shop\\resource\\ueditor\\upload\\760d935089d311eed8fb05f247c8a9edR-C.jpg', '/shop\\resource\\ueditor\\upload\\760de17089d311eed8fb05f247c8a9edR-C.jpg', '/shop\\resource\\ueditor\\upload\\760e2f9089d311eed8fb05f247c8a9edR-C.jpg', '/shop\\resource\\ueditor\\upload\\760e7db089d311eed8fb05f247c8a9edR-C.jpg', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-align: justify; font-family: &quot;microsoft yahei&quot;; text-wrap: wrap;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、“苹果和葡萄、柑橘、香蕉并称世界四大水果。”苹果是最重要的湿带水果，土质以沙壤最适宜。我们这里种植苹果已有20xx多年的历史。一直都用嫁接繁殖的。栽培的品种有100个左右。苹果嫁接45年开始结果，盛果期一般维持1530年。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-align: justify; font-family: &quot;microsoft yahei&quot;; text-wrap: wrap;\">　　2、收获的果实五彩缤纷，似乎比那色彩斑斓的孔雀还要美，就像一个天然的调色盘，五光十色：有红的，有黄的，有紫的，有橙的……</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-align: justify; font-family: &quot;microsoft yahei&quot;; text-wrap: wrap;\">　　3、苹果渐渐红了，笑的很开心</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-align: justify; font-family: &quot;microsoft yahei&quot;; text-wrap: wrap;\">　　4、到了秋天，柑桔林中不再是满枝繁花，而是累累硕果。那圆圆的柑桔有如万千盏小灯笼，金灿灿，红彤彤，在墨绿的树叶里灼灼闪光。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-align: justify; font-family: &quot;microsoft yahei&quot;; text-wrap: wrap;\">　　5、熟透了的柿子握在手里软软的，只需轻轻撕掉一点皮，放在嘴边一吸，就会吸到比蜜还甜的红色汁水，从嘴角一直甜到心里。</p><p><br/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 73, 74, 0);
INSERT INTO `item` VALUES (37, '广西百色小台芒农芒果当季水果新鲜10斤整箱树上熟贵妃小核甜心芒', '19', 0, 1, '/test1_war_exploded\\resource\\ueditor\\upload\\3dcd84206b7411ec4e37c18b3ec4c3e9芒果main.jpg', '/test1_war_exploded\\resource\\ueditor\\upload\\3dd636b06b7411ec4e37c18b3ec4c3e9芒果1_.webp', '/test1_war_exploded\\resource\\ueditor\\upload\\3dd65dc06b7411ec4e37c18b3ec4c3e9芒果2.webp', '/test1_war_exploded\\resource\\ueditor\\upload\\3dd748206b7411ec4e37c18b3ec4c3e9', '/test1_war_exploded\\resource\\ueditor\\upload\\3dd76f306b7411ec4e37c18b3ec4c3e9', '<h3 class=\"tb-main-title\" style=\"margin: 0px; padding: 0px; font-size: 16px; min-height: 21px; line-height: 21px; color: rgb(60, 60, 60); font-family: tahoma, arial, &quot;Hiragino Sans GB&quot;, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">广西百色小台芒农芒果当季水果新鲜10斤整箱树上熟贵妃小核甜心芒</h3><p><br/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 85, 86, 1);
INSERT INTO `item` VALUES (38, '每个每个每个每个吗每个每个每个每个每个吗每个', '19', 1, 5, '/test1_war_exploded\\resource\\ueditor\\upload\\b0b944006b7511ec4e37c18b3ec4c3e9芒果main.jpg', '/test1_war_exploded\\resource\\ueditor\\upload\\b0bc78506b7511ec4e37c18b3ec4c3e9芒果1_.webp', '/test1_war_exploded\\resource\\ueditor\\upload\\b0bd89c06b7511ec4e37c18b3ec4c3e9芒果2.webp', '/test1_war_exploded\\resource\\ueditor\\upload\\b0bd89c16b7511ec4e37c18b3ec4c3e9', '/test1_war_exploded\\resource\\ueditor\\upload\\b0bdb0d06b7511ec4e37c18b3ec4c3e9', '<p>好东西</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 85, 86, 1);
INSERT INTO `item` VALUES (39, '非洲大芒果', '19', 0, 0, '/test1_war_exploded\\resource\\ueditor\\upload\\9e86a1306dee11ec2686f051950fe582芒果main.jpg', '/test1_war_exploded\\resource\\ueditor\\upload\\9e86ef506dee11ec2686f051950fe582芒果2.webp', '/test1_war_exploded\\resource\\ueditor\\upload\\9e878b906dee11ec2686f051950fe582芒果3.webp', '/test1_war_exploded\\resource\\ueditor\\upload\\9e8e69606dee11ec2686f051950fe582芒果1_.webp', '/test1_war_exploded\\resource\\ueditor\\upload\\9e90da606dee11ec2686f051950fe582芒果4.webp', '<p>超级大芒果，非常好吃！！！</p><p><img width=\"530\" height=\"340\" src=\"http://api.map.baidu.com/staticimage?center=116.404,39.915&zoom=10&width=530&height=340&markers=116.404,39.915\"/><img src=\"/test1_war_exploded/resource/ueditor/upload/89ab1f206dee11ec2686f051950fe582芒果main.jpg\" alt=\"芒果main.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 87, 89, 1);

-- ----------------------------
-- Table structure for item_category
-- ----------------------------
DROP TABLE IF EXISTS `item_category`;
CREATE TABLE `item_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  `isDelete` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_category
-- ----------------------------
INSERT INTO `item_category` VALUES (50, ' 礼帽', 44, 1);
INSERT INTO `item_category` VALUES (69, '梨子', NULL, 0);
INSERT INTO `item_category` VALUES (70, '湾里酥梨', 69, 0);
INSERT INTO `item_category` VALUES (71, '石榴', NULL, 0);
INSERT INTO `item_category` VALUES (72, '肖山御石榴', 71, 0);
INSERT INTO `item_category` VALUES (73, '桃子', NULL, 0);
INSERT INTO `item_category` VALUES (74, '史德镇御桃', 73, 0);
INSERT INTO `item_category` VALUES (75, '苹果', NULL, 0);
INSERT INTO `item_category` VALUES (76, '日本红富士', 75, 0);
INSERT INTO `item_category` VALUES (77, '秦冠', 75, 0);
INSERT INTO `item_category` VALUES (78, '嘎拉', 75, 1);
INSERT INTO `item_category` VALUES (79, '黄元帅', 75, 0);
INSERT INTO `item_category` VALUES (80, '菠菜', NULL, 0);
INSERT INTO `item_category` VALUES (81, 'xx', 75, 0);
INSERT INTO `item_category` VALUES (82, '仙人掌', NULL, 0);
INSERT INTO `item_category` VALUES (83, '小仙人掌', 82, 0);
INSERT INTO `item_category` VALUES (84, '大仙人掌', 82, 0);
INSERT INTO `item_category` VALUES (85, '芒果', NULL, 1);
INSERT INTO `item_category` VALUES (86, '小芒果', 85, 1);
INSERT INTO `item_category` VALUES (87, '芒果', NULL, 1);
INSERT INTO `item_category` VALUES (88, '大芒果', 87, 1);
INSERT INTO `item_category` VALUES (89, '小芒果', 87, 1);

-- ----------------------------
-- Table structure for item_order
-- ----------------------------
DROP TABLE IF EXISTS `item_order`;
CREATE TABLE `item_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTime` datetime(0) NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isDelete` int(255) NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL COMMENT '0.新建代发货1.已取消 2已已发货3.到收货4已评价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_order
-- ----------------------------
INSERT INTO `item_order` VALUES (27, NULL, 3, '2021032017080001', '2021-12-27 17:08:56', '54.9', 0, 3);
INSERT INTO `item_order` VALUES (28, NULL, 3, '2021032017380001', '2021-12-27 17:38:52', '653.59', 0, 3);
INSERT INTO `item_order` VALUES (29, NULL, 3, '2021032017390001', '2021-12-27 17:39:28', '976.5', 0, 3);
INSERT INTO `item_order` VALUES (30, NULL, 3, '2021032019220001', '2021-12-27 19:22:25', '364.5', 0, 3);
INSERT INTO `item_order` VALUES (31, NULL, 3, '2021032019310001', '2021-12-28 19:31:23', '359.15999999999997', 0, 1);
INSERT INTO `item_order` VALUES (32, NULL, 3, '2021032019310002', '2021-12-28 19:31:50', '59.86', 0, 3);
INSERT INTO `item_order` VALUES (33, NULL, 1, '2022010120000001', '2022-01-01 20:00:16', '135.00', 0, 3);
INSERT INTO `item_order` VALUES (34, NULL, 9, '2022010210370001', '2022-01-02 10:37:38', '17.11', 0, 3);
INSERT INTO `item_order` VALUES (35, NULL, 1, '2022010211490001', '2022-01-02 11:49:44', '98.82', 0, 0);
INSERT INTO `item_order` VALUES (36, NULL, 1, '2022010211550001', '2022-01-02 11:55:21', '296.46', 0, 0);
INSERT INTO `item_order` VALUES (37, NULL, 1, '2022010513390001', '2022-01-05 13:39:34', '85.55', 0, 0);
INSERT INTO `item_order` VALUES (38, NULL, 22, '2022010522260001', '2022-01-05 22:26:13', '197.64', 0, 1);
INSERT INTO `item_order` VALUES (39, NULL, 22, '2022010522280001', '2022-01-05 22:28:27', '49.41', 0, 3);
INSERT INTO `item_order` VALUES (40, NULL, 29, '2022010610120001', '2022-01-06 10:12:54', '148.23', 0, 3);
INSERT INTO `item_order` VALUES (41, NULL, 30, '2022040410160001', '2022-04-04 10:16:42', '60.00', 0, 3);
INSERT INTO `item_order` VALUES (42, NULL, 30, '2022040410190001', '2022-04-04 10:19:13', '180.00', 0, 1);

-- ----------------------------
-- Table structure for manage
-- ----------------------------
DROP TABLE IF EXISTS `manage`;
CREATE TABLE `manage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manage
-- ----------------------------
INSERT INTO `manage` VALUES (1, 'admin', '111111', '管理员');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (2, '1', '1', '                    \n             1       ');
INSERT INTO `message` VALUES (3, '2', '2', '                    \n             2       ');
INSERT INTO `message` VALUES (4, 'Druid', '12283958437', '你们的水果这么贵，抢钱吗？警告你们快点降价，不然马上到12315投诉你们。降价了马上和我联系！！！');
INSERT INTO `message` VALUES (5, '麒麟', '15000000001', '手办是用手办你吗？');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `addTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (7, '手办商城', '<p><video class=\"edui-upload-video  vjs-default-skin video-js\" controls=\"\" preload=\"none\" width=\"420\" height=\"280\" src=\"/test1_war_exploded/resource/ueditor/upload/bfdf6a00b3c211ec2852a2cb9d0a4588合成 1.mp4\" data-setup=\"{}\"></video></p>', '2022-01-05 13:48:25');
INSERT INTO `news` VALUES (8, '国家主席习近平发表二〇二二年新年贺词', '<p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">大家好，2022年即将到来。我在北京向大家致以新年祝福！</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">回首这一年，意义非凡。我们亲历了党和国家历史上具有里程碑意义的大事。“两个一百年”奋斗目标历史交汇，我们开启了全面建设社会主义现代化国家新征程，正昂首阔步行进在实现中华民族伟大复兴的道路上。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">从年头到年尾，农田、企业、社区、学校、医院、军营、科研院所……大家忙了一整年，付出了，奉献了，也收获了。在飞逝的时光里，我们看到的、感悟到的中国，是一个坚韧不拔、欣欣向荣的中国。这里有可亲可敬的人民，有日新月异的发展，有赓续传承的事业。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">七月一日，我们隆重庆祝中国共产党成立一百周年。站在天安门城楼上感慨系之，历史征程风云激荡，中国共产党人带领亿万人民经千难而百折不挠、历万险而矢志不渝，成就了百年大党的恢宏气象。不忘初心，方得始终。我们唯有踔厉奋发、笃行不怠，方能不负历史、不负时代、不负人民。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">党的十九届六中全会通过了党的第三个历史决议。百年成就使人振奋，百年经验给人启迪。我曾谈到当年毛主席与黄炎培先生的“窑洞对”，我们只有勇于自我革命才能赢得历史主动。中华民族伟大复兴绝不是轻轻松松、敲锣打鼓就能实现的，也绝不是一马平川、朝夕之间就能到达的。我们要常怀远虑、居安思危，保持战略定力和耐心，“致广大而尽精微”。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">大国之大，也有大国之重。千头万绪的事，说到底是千家万户的事。我调研了一些地方，看了听了不少情况，很有启发和收获。每到群众家中，常会问一问，还有什么困难，父老乡亲的话我都记在心里。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">民之所忧，我必念之；民之所盼，我必行之。我也是从农村出来的，对贫困有着切身感受。经过一代代接续努力，以前贫困的人们，现在也能吃饱肚子、穿暖衣裳，有学上、有房住、有医保。全面小康、摆脱贫困是我们党给人民的交代，也是对世界的贡献。让大家过上更好生活，我们不能满足于眼前的成绩，还有很长的路要走。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">黄河安澜是中华儿女的千年期盼。近年来，我走遍了黄河上中下游9省区。无论是黄河长江“母亲河”，还是碧波荡漾的青海湖、逶迤磅礴的雅鲁藏布江；无论是南水北调的世纪工程，还是塞罕坝林场的“绿色地图”；无论是云南大象北上南归，还是藏羚羊繁衍迁徙……这些都昭示着，人不负青山，青山定不负人。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">这一年，还有很多难忘的中国声音、中国瞬间、中国故事。“请党放心、强国有我”的青春誓言，“清澈的爱、只为中国”的深情告白；“祝融”探火、“羲和”逐日、“天和”遨游星辰；运动健儿激情飞扬、奋勇争先；全国上下防控疫情坚决有力；受灾群众守望相助重建家园；人民解放军指战员、武警部队官兵矢志强军、保家卫国……无数平凡英雄拼搏奋斗，汇聚成新时代中国昂扬奋进的洪流。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">祖国一直牵挂着香港、澳门的繁荣稳定。只有和衷共济、共同努力，“一国两制”才能行稳致远。实现祖国完全统一是两岸同胞的共同心愿。真诚期盼全体中华儿女携手向前，共创中华民族美好未来。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">我同外国领导人及国际组织负责人电话沟通、视频连线时，他们多次赞扬中国抗疫和为全球疫情防控所作的贡献。截至目前，中国累计向120多个国家和国际组织提供20亿剂新冠疫苗。世界各国风雨同舟、团结合作，才能书写构建人类命运共同体的新篇章。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">再过一个多月，北京冬奥会、冬残奥会就要开幕了。让更多人参与到冰雪运动中来，这也是奥林匹克运动的题中之义。我们将竭诚为世界奉献一届奥运盛会。世界期待中国，中国做好了准备。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">新年的钟声即将敲响。我们的三位航天员正在浩瀚太空“出差”，海外同胞仍在辛勤耕耘，使领馆、中资企业等海外派驻人员和广大留学生仍在勇毅坚守，无数追梦人还在奋斗奉献。大家辛苦了，我向大家致以诚挚的新年问候！</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 16px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px; color: rgb(13, 20, 30); min-height: 18px; caret-color: rgb(13, 20, 30); text-size-adjust: auto;\">让我们一起向未来！祝福国泰民安！</p><p><br/></p>', '2022-01-05 13:50:52');
INSERT INTO `news` VALUES (9, '本科毕业月平均起薪5825元，硕士10113元，你达标了吗？', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span style=\"max-width: 100%;\">1月5日早间，“本科毕业月平均起薪5825元”话题迅速蹿上新浪微博热搜第一，引发网友热议。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><span style=\"max-width: 100%;\">据光明日报，北京大学“全国高校毕业生就业状况调查”课题组于2021年6月起对高校毕业生进行了问卷调查。样本包括东、中、西部地区19个省份的34所高校，样本量超过2万人。调查显示，2021年博士、硕士、本科、专科的月起薪算数平均值分别为14823元、<strong style=\"max-width: 100%;\">10113元</strong>、<strong style=\"max-width: 100%;\">5825元</strong>、3910元；中位数分别为15000元、9000元、5000元、3500元。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><h2 style=\"margin: 0px; padding: 0px; font-size: 16px; overflow-y: auto; max-width: 100%;\">“慢就业”的观念略有增加</h2><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">2021年毕业生的去向结构与2019年也基本相似，已确定单位、升学、出国出境、自主创业、自由职业、其他灵活就业的比例都没有大幅度的变化。其中单位就业比例为32.1%，比2019年降低了5.3个百分点。高等教育人才“蓄水池”的作用显著，升学比例为29.3%，比2019年提高了4个百分点。自由职业比例略有增加(上升0.8个百分点)，自主创业的比例基本一样，出国出境和其他灵活就业的比例比2019年都略有下降。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">数据也显示，2021年“慢就业”“缓就业”“懒就业”的就业观念略有增加，有7.9%的毕业生选择了“不就业拟升学”或“其他暂不就业”，比2019年提高了1.8个百分点。如果这些毕业生选择积极就业，那么总体落实率还会进一步地提高。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">毕业去向存在显著的学历差异。硕士生和博士生在单位就业上的优势明显，比例分别为64.5%和54.6%；受研究生扩招的影响，本科生的升学优势显著，为35.3%；专科生在自主创业、自由职业和其他灵活就业方面的比例显著高于其他学历毕业生，合计比例为24.0%。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">落实率存在显著的学历、学校、学科、地区差异。分学历看，硕士生的落实率最高(82.2%)，本科生的落实率最低(74.4%)，专科生(80.6%)和博士生(77.9%)的落实率分别排在第二位和第三位，各学历毕业生的落实率都达到70%以上。分学校类型看，一流大学建设高校的落实率最高(82.2%)；其次是高职高专和一流学科建设高校，落实率分别为81.4%和81.0%；民办高校/独立学院和普通本科高校的落实率相对较低，分别为70.8%和71.6%；各类高校的落实率都达到70%以上。分学科看，工学和理学的落实率显著更高，分别为83.6%和79.3%；教育学、医学和农学的落实率较低，都在70%以下，分别为66.3%、68.3%和68.9%。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><h2 style=\"margin: 0px; padding: 0px; font-size: 16px; overflow-y: auto; max-width: 100%;\">就业收入比疫情前的2019年有小幅增加</h2><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">从客观收入反映的就业质量看，人力资本的价值在就业市场上得到了有效的体现，学历越高收入越多。2021年博士、硕士、本科、专科的月起薪算数平均值分别为14823元、10113元、5825元、3910元；中位数分别为15000元、9000元、5000元、3500元。各学历层次毕业生的平均收入均比疫情前的2019年有所增加，反映出就业质量不仅没有下降，而且稳中有升。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">月起薪存在显著的学校、学科和就业地区差异。分学校类型看，一流大学建设高校的月起薪最高，为10827元；其次一流学科建设高校，为7346元；第三是普通本科高校，为6043元。分学科门类看，工学、理学和交叉学科位居前三名，分别为8341元、7909元和7838元。在高考志愿中受热捧的经济学和管理学并没有在收入上显示出特别的优势，表明各个学科门类的毕业生都有市场需求。高考填报志愿应该基于个人的兴趣和特长选择学科和专业，这样才会提高劳动力市场的人职匹配效率，从而促进经济高质量发展。分就业地区看，东中西地区的月起薪分别为7620元、5868元和5512元，东部地区就业的收入相对较高。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><h2 style=\"margin: 0px; padding: 0px; font-size: 16px; overflow-y: auto; max-width: 100%;\">就业分布与疫情前的2019年基本相似</h2><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">据东北网，从已确定单位毕业生的就业分布看，我国劳动力市场结构非均衡化的特点比较显著。地区、城乡、行业、单位、职业等分布的非均衡化特点显著。与疫情前的2019年相比，毕业生就业的城乡分布、行业分布、单位分布等各种结构都没表现出很大的波动性。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">从城乡分布看，省会城市或直辖市的就业占比超过一半，为54.9%；其次是地级市，占比为27.3%；县级市或县城的占比排在第三，为12.3%；乡镇和农村的占比很低，分别只有4.1%和1.5%。县级及以下地方也是毕业生大有作为的工作天地(比例为17.9%)。我国已经建成小康社会，全面消除了贫困人口。十九大提出实施乡村振兴计划，未来要实现共同富裕。因此，毕业生去县级及以下地方就业，既有新时代社会发展的机遇，也是大学生奉献社会义不容辞的责任。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">从行业分布看，行业就业集中度较高的特点依然存在，经济转型发展和产业结构调整使得行业就业的排序发生了显著变化。2021年，教育、制造业、信息传输、软件和信息技术服务业(以下简称“IT”)、金融业、科学研究和技术服务业成为占比最大的5个行业，占比分别为15.1%、14.5%、13.1%、8.5%和7.4%，合计为58.6%。与2019年相比，教育仍然保持第1位，制造业由第3位上升至第2位，而IT业由第2位下降至第3位，金融业仍旧排在第4位，科学研究和技术服务业取代建筑业排在第5位。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">今年的《政府工作报告》提出要“保持制造业比重基本稳定”，从毕业生就业的行业分布看，这一目标得到很好的落实。制造业不仅排名上升，而且比例比2019年提高了2.6个百分点。面对动荡不定的国际形势，提升自主创新能力、突破关键技术，是构建我国新发展格局的一个关键问题。“十四五”期间，我国将进一步增加研发投入，吸纳毕业生就业。这一举措使得科学研究和技术服务业的占比相比2019年提高了2.7个百分点，首次排进前5位。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">从单位性质分布看，企业是吸纳毕业生就业的主要单位，在已确定工作单位的毕业生中大约四分之三去了企业(73.8%)。民营企业的占比最大，吸纳了超过三分之一的毕业生(35.2%)；国有企业的占比排在第2位，为25.0%；三资企业的作用也不容忽视，占比为6.6%。到体制内单位(国有企业、党政机关、事业单位)入职的高校毕业生接近一半(49.3%)，其中到中小学和高校工作的合计占比为9.0%。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">改革开放以来，我国民营企业已经发展成为社会经济的重要支撑力量，成为“稳就业”的重要着力点。大学生应该有更高的眼光，不把自己局限在体制内的工作圈，在民营企业和三资企业工作也能为国家和社会做贡献。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\">同学们要树立这样的观点：只要能发挥个人所学所长、对国家和社会有所贡献、对他人有所帮助、能体现人生价值的工作都是好工作。因此，对于仍在求职中的应届毕业生，要积极调整就业观念和心态，主动向学校、老师、同学等了解就业信息和求职技巧，按照自己的能力努力求职，相信付出必有回报，最终一定能找到适合自己的“好工作”。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; overflow-y: auto; max-width: 100%; line-height: 24px;\"><strong style=\"max-width: 100%;\">来源：每日经济新闻综合光明日报、东北网</strong></p><p><br/></p>', '2022-01-05 13:51:37');
INSERT INTO `news` VALUES (10, '中国风', '<p><img width=\"530\" height=\"340\" src=\"http://api.map.baidu.com/staticimage?center=116.404,39.915&zoom=10&width=530&height=340&markers=116.404,39.915\"/></p>', '2022-04-04 10:20:08');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(255) NULL DEFAULT NULL,
  `order_id` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '0.未退货 1已退货',
  `num` int(11) NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (54, 27, 27, 0, 1, '1');
INSERT INTO `order_detail` VALUES (55, 32, 28, 0, 5, '25');
INSERT INTO `order_detail` VALUES (56, 27, 28, 0, 3, '9');
INSERT INTO `order_detail` VALUES (57, 28, 28, 0, 1, '1');
INSERT INTO `order_detail` VALUES (58, 35, 29, 0, 2, '4');
INSERT INTO `order_detail` VALUES (59, 34, 29, 0, 4, '16');
INSERT INTO `order_detail` VALUES (60, 32, 29, 0, 3, '9');
INSERT INTO `order_detail` VALUES (61, 36, 29, 0, 3, '9');
INSERT INTO `order_detail` VALUES (62, 32, 29, 0, 2, '4');
INSERT INTO `order_detail` VALUES (63, 35, 30, 0, 6, '36');
INSERT INTO `order_detail` VALUES (64, 30, 30, 0, 3, '9');
INSERT INTO `order_detail` VALUES (65, 28, 31, 0, 4, '16');
INSERT INTO `order_detail` VALUES (66, 28, 31, 0, 2, '4');
INSERT INTO `order_detail` VALUES (67, 28, 32, 0, 1, '1');
INSERT INTO `order_detail` VALUES (68, 35, 33, 0, 6, '135.0');
INSERT INTO `order_detail` VALUES (69, 37, 34, 0, 1, '17.11');
INSERT INTO `order_detail` VALUES (70, 27, 35, 0, 2, '98.82');
INSERT INTO `order_detail` VALUES (71, 27, 36, 0, 6, '296.46');
INSERT INTO `order_detail` VALUES (72, 38, 37, 0, 5, '85.55');
INSERT INTO `order_detail` VALUES (73, 27, 38, 0, 4, '197.64');
INSERT INTO `order_detail` VALUES (74, 27, 39, 0, 1, '49.41');
INSERT INTO `order_detail` VALUES (75, 27, 40, 0, 3, '148.23');
INSERT INTO `order_detail` VALUES (76, 36, 41, 0, 1, '60.0');
INSERT INTO `order_detail` VALUES (77, 36, 42, 0, 3, '180.0');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES (17, 27, 3);
INSERT INTO `sc` VALUES (18, 28, 3);
INSERT INTO `sc` VALUES (21, 29, 1);
INSERT INTO `sc` VALUES (22, 36, 30);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'user', 'user', '123123123', 'asd', '男', '奥术大师多', '22');
INSERT INTO `user` VALUES (2, 'dd', 'dd', '123123123', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, 'zs', '111111', '12345678933', '测试33', '女', '这里是', '1133');
INSERT INTO `user` VALUES (31, 'user001', 'user001', '18555555566', NULL, NULL, NULL, '222@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
