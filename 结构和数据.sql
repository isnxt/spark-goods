/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50726
Source Host           : 127.0.0.1:3306
Source Database       : spark

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-07-18 15:43:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for evaluation
-- ----------------------------
DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE `evaluation` (
  `rank` int(11) NOT NULL,
  `iterations` int(11) NOT NULL,
  `lambda` double NOT NULL,
  `rmse` double NOT NULL,
  `time` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluation
-- ----------------------------
INSERT INTO `evaluation` VALUES ('5', '10', '0.1', '2.5176731121400464', '3517');
INSERT INTO `evaluation` VALUES ('10', '10', '0.1', '2.410519020223011', '2602');
INSERT INTO `evaluation` VALUES ('15', '10', '0.1', '2.40249300844279', '2718');
INSERT INTO `evaluation` VALUES ('20', '10', '0.1', '2.4036652268240584', '2229');
INSERT INTO `evaluation` VALUES ('50', '10', '0.1', '2.3931506229882706', '2338');
INSERT INTO `evaluation` VALUES ('100', '10', '0.1', '2.3906770695194766', '3563');
INSERT INTO `evaluation` VALUES ('10', '5', '0.1', '2.4863764513021978', '1144');
INSERT INTO `evaluation` VALUES ('10', '10', '0.1', '2.3945251635977485', '2090');
INSERT INTO `evaluation` VALUES ('10', '15', '0.1', '2.401814269318801', '2649');
INSERT INTO `evaluation` VALUES ('10', '20', '0.1', '2.3739498912175874', '4043');
INSERT INTO `evaluation` VALUES ('10', '25', '0.1', '2.417184894298716', '4529');
INSERT INTO `evaluation` VALUES ('10', '10', '0.05', '2.4597675009688995', '1920');
INSERT INTO `evaluation` VALUES ('10', '10', '0.1', '2.465796145837208', '2020');
INSERT INTO `evaluation` VALUES ('10', '10', '1', '2.3226625330894133', '1932');
INSERT INTO `evaluation` VALUES ('10', '10', '5', '2.599437529870282', '2710');
INSERT INTO `evaluation` VALUES ('10', '10', '10', '2.599437529870282', '2180');

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `itemID` int(11) NOT NULL,
  `followValue` double(11,6) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `item` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES ('1', '16.976653');
INSERT INTO `follow` VALUES ('2', '20.867339');
INSERT INTO `follow` VALUES ('3', '10.739196');
INSERT INTO `follow` VALUES ('4', '15.318005');
INSERT INTO `follow` VALUES ('6', '13.951969');
INSERT INTO `follow` VALUES ('7', '14.162311');
INSERT INTO `follow` VALUES ('8', '29.878584');
INSERT INTO `follow` VALUES ('9', '1.709678');
INSERT INTO `follow` VALUES ('13', '11.921971');
INSERT INTO `follow` VALUES ('14', '28.643151');
INSERT INTO `follow` VALUES ('15', '14.993140');
INSERT INTO `follow` VALUES ('16', '16.949082');
INSERT INTO `follow` VALUES ('19', '16.762920');
INSERT INTO `follow` VALUES ('20', '18.415876');
INSERT INTO `follow` VALUES ('22', '11.852012');
INSERT INTO `follow` VALUES ('23', '39.609932');
INSERT INTO `follow` VALUES ('24', '2.106666');
INSERT INTO `follow` VALUES ('25', '40.151768');
INSERT INTO `follow` VALUES ('27', '15.672199');
INSERT INTO `follow` VALUES ('28', '41.797015');
INSERT INTO `follow` VALUES ('29', '4.051916');
INSERT INTO `follow` VALUES ('30', '27.067279');
INSERT INTO `follow` VALUES ('31', '0.912466');
INSERT INTO `follow` VALUES ('32', '0.768202');
INSERT INTO `follow` VALUES ('33', '33.997991');
INSERT INTO `follow` VALUES ('34', '58.745066');
INSERT INTO `follow` VALUES ('37', '11.427417');
INSERT INTO `follow` VALUES ('38', '30.598816');
INSERT INTO `follow` VALUES ('39', '14.580302');
INSERT INTO `follow` VALUES ('40', '13.425934');
INSERT INTO `follow` VALUES ('42', '13.887918');
INSERT INTO `follow` VALUES ('43', '16.456797');
INSERT INTO `follow` VALUES ('44', '16.622662');
INSERT INTO `follow` VALUES ('45', '19.529387');
INSERT INTO `follow` VALUES ('46', '11.354745');
INSERT INTO `follow` VALUES ('47', '39.568334');
INSERT INTO `follow` VALUES ('48', '12.785387');
INSERT INTO `follow` VALUES ('49', '39.540054');
INSERT INTO `follow` VALUES ('50', '1.534663');

-- ----------------------------
-- Table structure for followsingle
-- ----------------------------
DROP TABLE IF EXISTS `followsingle`;
CREATE TABLE `followsingle` (
  `windowFollowValue` double(11,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of followsingle
-- ----------------------------
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.976847');
INSERT INTO `followsingle` VALUES ('0.976847');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('1.787365');
INSERT INTO `followsingle` VALUES ('1.787365');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('1.130072');
INSERT INTO `followsingle` VALUES ('1.130072');
INSERT INTO `followsingle` VALUES ('0.236229');
INSERT INTO `followsingle` VALUES ('0.236229');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('2.849761');
INSERT INTO `followsingle` VALUES ('2.849761');
INSERT INTO `followsingle` VALUES ('1.627697');
INSERT INTO `followsingle` VALUES ('1.627697');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('2.381083');
INSERT INTO `followsingle` VALUES ('2.381083');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.757403');
INSERT INTO `followsingle` VALUES ('0.757403');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('1.014345');
INSERT INTO `followsingle` VALUES ('1.014345');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('1.800325');
INSERT INTO `followsingle` VALUES ('1.800325');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('2.415526');
INSERT INTO `followsingle` VALUES ('2.415526');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');
INSERT INTO `followsingle` VALUES ('0.000000');

-- ----------------------------
-- Table structure for followwindow
-- ----------------------------
DROP TABLE IF EXISTS `followwindow`;
CREATE TABLE `followwindow` (
  `itemID` int(11) NOT NULL,
  `followValue` double(11,6) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  CONSTRAINT `followwindow_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `item` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of followwindow
-- ----------------------------
INSERT INTO `followwindow` VALUES ('1', '2.415526');
INSERT INTO `followwindow` VALUES ('2', '0.187899');
INSERT INTO `followwindow` VALUES ('3', '1.270362');
INSERT INTO `followwindow` VALUES ('4', '1.247618');
INSERT INTO `followwindow` VALUES ('6', '-0.075308');
INSERT INTO `followwindow` VALUES ('7', '1.274289');
INSERT INTO `followwindow` VALUES ('8', '1.038522');
INSERT INTO `followwindow` VALUES ('9', '1.322952');
INSERT INTO `followwindow` VALUES ('13', '0.849851');
INSERT INTO `followwindow` VALUES ('14', '2.063791');
INSERT INTO `followwindow` VALUES ('15', '1.973660');
INSERT INTO `followwindow` VALUES ('16', '0.314769');
INSERT INTO `followwindow` VALUES ('19', '1.788083');
INSERT INTO `followwindow` VALUES ('20', '2.586648');
INSERT INTO `followwindow` VALUES ('22', '1.299240');
INSERT INTO `followwindow` VALUES ('23', '1.133138');
INSERT INTO `followwindow` VALUES ('24', '2.106666');
INSERT INTO `followwindow` VALUES ('25', '2.317095');
INSERT INTO `followwindow` VALUES ('27', '1.041080');
INSERT INTO `followwindow` VALUES ('28', '1.201947');
INSERT INTO `followwindow` VALUES ('29', '1.806186');
INSERT INTO `followwindow` VALUES ('30', '1.783197');
INSERT INTO `followwindow` VALUES ('31', '0.912466');
INSERT INTO `followwindow` VALUES ('32', '0.768202');
INSERT INTO `followwindow` VALUES ('33', '1.595255');
INSERT INTO `followwindow` VALUES ('34', '2.046595');
INSERT INTO `followwindow` VALUES ('37', '1.834834');
INSERT INTO `followwindow` VALUES ('38', '2.483697');
INSERT INTO `followwindow` VALUES ('39', '1.307992');
INSERT INTO `followwindow` VALUES ('40', '2.590813');
INSERT INTO `followwindow` VALUES ('42', '1.231082');
INSERT INTO `followwindow` VALUES ('43', '1.999041');
INSERT INTO `followwindow` VALUES ('44', '2.438700');
INSERT INTO `followwindow` VALUES ('45', '0.925414');
INSERT INTO `followwindow` VALUES ('46', '0.216263');
INSERT INTO `followwindow` VALUES ('47', '1.697082');
INSERT INTO `followwindow` VALUES ('48', '1.487056');
INSERT INTO `followwindow` VALUES ('49', '2.244466');
INSERT INTO `followwindow` VALUES ('50', '0.733341');

-- ----------------------------
-- Table structure for fpg
-- ----------------------------
DROP TABLE IF EXISTS `fpg`;
CREATE TABLE `fpg` (
  `antecedent` varchar(255) NOT NULL,
  `consequent` varchar(255) NOT NULL,
  `confidence` double(255,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fpg
-- ----------------------------
INSERT INTO `fpg` VALUES ('47 49', '25', '1');
INSERT INTO `fpg` VALUES ('25 49', '47', '1');
INSERT INTO `fpg` VALUES ('47 25', '49', '1');
INSERT INTO `fpg` VALUES ('47', '49', '1');
INSERT INTO `fpg` VALUES ('47', '25', '1');
INSERT INTO `fpg` VALUES ('25', '47', '1');
INSERT INTO `fpg` VALUES ('25', '49', '1');
INSERT INTO `fpg` VALUES ('33', '23', '1');
INSERT INTO `fpg` VALUES ('49', '25', '1');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('0', 'item-6b5ac408d4110249f');
INSERT INTO `item` VALUES ('1', 'item-c85a1596fa9c55c00');
INSERT INTO `item` VALUES ('2', 'item-daf7371d3b6428ff4');
INSERT INTO `item` VALUES ('3', 'item-4a5f558247388bbfa');
INSERT INTO `item` VALUES ('4', 'item-8b630926899c50ad4');
INSERT INTO `item` VALUES ('5', 'item-a80d43944e02528cd');
INSERT INTO `item` VALUES ('6', 'item-9a5f425d5edd36e32');
INSERT INTO `item` VALUES ('7', 'item-1833ca7f81c963656');
INSERT INTO `item` VALUES ('8', 'item-385ab645c59fdecd9');
INSERT INTO `item` VALUES ('9', 'item-5b8326a8aa8520aaa');
INSERT INTO `item` VALUES ('10', 'item-ebd8e0c847522a2e2');
INSERT INTO `item` VALUES ('11', 'item-5804ea1da3b8e1354');
INSERT INTO `item` VALUES ('12', 'item-bb656a7051d9db0e6');
INSERT INTO `item` VALUES ('13', 'item-9b023d3d27a90eff7');
INSERT INTO `item` VALUES ('14', 'item-b8535d4581352e36f');
INSERT INTO `item` VALUES ('15', 'item-d81e9e0442a88daf8');
INSERT INTO `item` VALUES ('16', 'item-080a7fda87a620d78');
INSERT INTO `item` VALUES ('17', 'item-48ff0728534cc8deb');
INSERT INTO `item` VALUES ('18', 'item-cbc08f9901be80eb7');
INSERT INTO `item` VALUES ('19', 'item-19f8d0ecc1ab44dac');
INSERT INTO `item` VALUES ('20', 'item-ca55edf855a0ac353');
INSERT INTO `item` VALUES ('21', 'item-d85046f0a77a2c18b');
INSERT INTO `item` VALUES ('22', 'item-0a21d28fde83f62a0');
INSERT INTO `item` VALUES ('23', 'item-691d14badf5db31e0');
INSERT INTO `item` VALUES ('24', 'item-f827049245caa5333');
INSERT INTO `item` VALUES ('25', 'item-a84f81b6b4bcebdc0');
INSERT INTO `item` VALUES ('26', 'item-1b22fdaeefd39020b');
INSERT INTO `item` VALUES ('27', 'item-daa559bf44b0b8032');
INSERT INTO `item` VALUES ('28', 'item-e932a3bf07a2d9515');
INSERT INTO `item` VALUES ('29', 'item-1bf31cfc3d3d79a71');
INSERT INTO `item` VALUES ('30', 'item-183c3d3740c422b0c');
INSERT INTO `item` VALUES ('31', 'item-f906c5f35ef9c6491');
INSERT INTO `item` VALUES ('32', 'item-aa24a6f7b3792eddc');
INSERT INTO `item` VALUES ('33', 'item-39966b935f69ae032');
INSERT INTO `item` VALUES ('34', 'item-1accfd07ed50a4085');
INSERT INTO `item` VALUES ('35', 'item-e8b428532531d7767');
INSERT INTO `item` VALUES ('36', 'item-6b12cda60d4664c83');
INSERT INTO `item` VALUES ('37', 'item-7b2aa78315d1b4531');
INSERT INTO `item` VALUES ('38', 'item-0a4d2311f4a82bb88');
INSERT INTO `item` VALUES ('39', 'item-9b93afd63118f3483');
INSERT INTO `item` VALUES ('40', 'item-bb5d09ca0f876ce63');
INSERT INTO `item` VALUES ('41', 'item-4acd11ec6dfa403da');
INSERT INTO `item` VALUES ('42', 'item-ab03ae997f0b2ecca');
INSERT INTO `item` VALUES ('43', 'item-7bd5d51ab1315eb56');
INSERT INTO `item` VALUES ('44', 'item-ea14e1f9c067b46fe');
INSERT INTO `item` VALUES ('45', 'item-6a9934e29f317310f');
INSERT INTO `item` VALUES ('46', 'item-b9110a1e5b3ba332c');
INSERT INTO `item` VALUES ('47', 'item-68b46e54aa2295b23');
INSERT INTO `item` VALUES ('48', 'item-e8afc12c86429d2d1');
INSERT INTO `item` VALUES ('49', 'item-3b4afcebdbd0ced11');
INSERT INTO `item` VALUES ('50', 'item-1a8206111155d8156');
INSERT INTO `item` VALUES ('51', 'item-8a5084b15c3796d28');
INSERT INTO `item` VALUES ('52', 'item-6abf5d160e6056c20');
INSERT INTO `item` VALUES ('53', 'item-8a275bd7f368870c3');
INSERT INTO `item` VALUES ('54', 'item-c8fae21c7c90d01dd');
INSERT INTO `item` VALUES ('55', 'item-19a1272aeea2a76e2');
INSERT INTO `item` VALUES ('56', 'item-19292d253229ff1ed');
INSERT INTO `item` VALUES ('57', 'item-59a9bb474ae7e1722');
INSERT INTO `item` VALUES ('58', 'item-887dcc8998af581f6');
INSERT INTO `item` VALUES ('59', 'item-c8e209bd2833c4c6e');
INSERT INTO `item` VALUES ('60', 'item-d925b11022d1c7ff9');
INSERT INTO `item` VALUES ('61', 'item-fa85838a2dcf8522a');
INSERT INTO `item` VALUES ('62', 'item-4b51bf7ffe0796399');
INSERT INTO `item` VALUES ('63', 'item-5a4fff68190834691');
INSERT INTO `item` VALUES ('64', 'item-4a9c39005d768069b');
INSERT INTO `item` VALUES ('65', 'item-591eb3c564a38f5f2');
INSERT INTO `item` VALUES ('66', 'item-5a26c69305d7f459c');
INSERT INTO `item` VALUES ('67', 'item-f953799f65307df20');
INSERT INTO `item` VALUES ('68', 'item-ab345788c59df3862');
INSERT INTO `item` VALUES ('69', 'item-180363cc80130899a');
INSERT INTO `item` VALUES ('70', 'item-08cd3d04639d94296');
INSERT INTO `item` VALUES ('71', 'item-fa34d1cb949d97452');
INSERT INTO `item` VALUES ('72', 'item-3b9e8331d52f64f90');
INSERT INTO `item` VALUES ('73', 'item-9928cd1e9c9db13de');
INSERT INTO `item` VALUES ('74', 'item-789e3202c8ad1f700');
INSERT INTO `item` VALUES ('75', 'item-f8963ad28b40eb612');
INSERT INTO `item` VALUES ('76', 'item-2998946b0aca36845');
INSERT INTO `item` VALUES ('77', 'item-ab7f3ad8d6eeb13cc');
INSERT INTO `item` VALUES ('78', 'item-5bf22d1cdb3e45b51');
INSERT INTO `item` VALUES ('79', 'item-c93bec1a4dc892131');
INSERT INTO `item` VALUES ('80', 'item-a89aa822958d2c5e0');
INSERT INTO `item` VALUES ('81', 'item-b88de75cbbf4c3343');
INSERT INTO `item` VALUES ('82', 'item-c9d4b2c7b6c539866');
INSERT INTO `item` VALUES ('83', 'item-79000e12337e9dc23');
INSERT INTO `item` VALUES ('84', 'item-2bb1da2ecdc6bc6a5');
INSERT INTO `item` VALUES ('85', 'item-cbc4a5956dd01d9ad');
INSERT INTO `item` VALUES ('86', 'item-3b1f1190d9cc905c1');
INSERT INTO `item` VALUES ('87', 'item-7b25d6db380144b68');
INSERT INTO `item` VALUES ('88', 'item-aaf16212770eb80bb');
INSERT INTO `item` VALUES ('89', 'item-d8b95d943aa3e3071');
INSERT INTO `item` VALUES ('90', 'item-495eb2e9b70e15afa');
INSERT INTO `item` VALUES ('91', 'item-48705226b36ebbe47');
INSERT INTO `item` VALUES ('92', 'item-2a2cbd4300cddc57b');
INSERT INTO `item` VALUES ('93', 'item-3b3735c7776b2ba36');
INSERT INTO `item` VALUES ('94', 'item-d95fa4acac8b342ba');
INSERT INTO `item` VALUES ('95', 'item-b8568e2a748f42638');
INSERT INTO `item` VALUES ('96', 'item-bb514dad4a69ef179');
INSERT INTO `item` VALUES ('97', 'item-185b39658845dde9c');
INSERT INTO `item` VALUES ('98', 'item-aa3dbee6f5342edcb');
INSERT INTO `item` VALUES ('99', 'item-195394be4bda03085');

-- ----------------------------
-- Table structure for raw
-- ----------------------------
DROP TABLE IF EXISTS `raw`;
CREATE TABLE `raw` (
  `rawID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `browser_num` int(11) NOT NULL,
  `stay_time` float DEFAULT NULL,
  `collect` int(11) NOT NULL,
  `buy_num` int(11) NOT NULL,
  `scores` double DEFAULT NULL,
  PRIMARY KEY (`rawID`),
  KEY `rawdata_ibfk_1` (`rawID`) USING BTREE,
  KEY `raw_fk_1` (`userID`),
  KEY `raw_fk_2` (`itemID`),
  CONSTRAINT `raw_fk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  CONSTRAINT `raw_fk_2` FOREIGN KEY (`itemID`) REFERENCES `item` (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=1820 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of raw
-- ----------------------------
INSERT INTO `raw` VALUES ('1317', '191', '29', '5', '5.97153', '0', '3', '0');
INSERT INTO `raw` VALUES ('1318', '191', '37', '2', '1.75409', '1', '2', '5');
INSERT INTO `raw` VALUES ('1319', '191', '34', '1', '2.62468', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1320', '191', '8', '5', '5.06819', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1321', '191', '3', '5', '6.73808', '1', '0', '3');
INSERT INTO `raw` VALUES ('1322', '191', '42', '3', '9.58543', '0', '0', '2');
INSERT INTO `raw` VALUES ('1323', '191', '48', '1', '4.50583', '0', '5', '0');
INSERT INTO `raw` VALUES ('1324', '26', '6', '2', '9.17636', '0', '5', '3');
INSERT INTO `raw` VALUES ('1325', '26', '34', '1', '7.7099', '0', '1', '3');
INSERT INTO `raw` VALUES ('1326', '26', '7', '2', '1.97951', '0', '5', '3');
INSERT INTO `raw` VALUES ('1327', '26', '23', '2', '5.07886', '0', '1', '4');
INSERT INTO `raw` VALUES ('1328', '26', '28', '4', '8.13506', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1329', '26', '33', '1', '6.2952', '0', '1', '1');
INSERT INTO `raw` VALUES ('1330', '26', '15', '3', '3.53693', '0', '2', '3');
INSERT INTO `raw` VALUES ('1331', '158', '4', '1', '9.85073', '0', '2', '3');
INSERT INTO `raw` VALUES ('1332', '158', '49', '1', '0.110612', '1', '5', '1');
INSERT INTO `raw` VALUES ('1333', '158', '8', '3', '1.82075', '1', '1', '4');
INSERT INTO `raw` VALUES ('1334', '158', '47', '4', '4.6062', '0', '4', '2');
INSERT INTO `raw` VALUES ('1335', '158', '45', '3', '0.497217', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1336', '158', '2', '1', '7.20523', '0', '0', '3');
INSERT INTO `raw` VALUES ('1337', '158', '25', '5', '2.6157', '1', '3', '1');
INSERT INTO `raw` VALUES ('1338', '148', '23', '5', '2.34707', '1', '5', '4');
INSERT INTO `raw` VALUES ('1339', '148', '34', '4', '0.602459', '1', '0', '0');
INSERT INTO `raw` VALUES ('1340', '148', '27', '2', '7.7188', '0', '2', '4');
INSERT INTO `raw` VALUES ('1341', '148', '28', '2', '0.590143', '0', '0', '5');
INSERT INTO `raw` VALUES ('1342', '148', '38', '4', '5.32644', '1', '5', '4');
INSERT INTO `raw` VALUES ('1343', '198', '6', '5', '3.5249', '1', '0', '3');
INSERT INTO `raw` VALUES ('1344', '198', '34', '4', '4.63957', '0', '0', '2');
INSERT INTO `raw` VALUES ('1345', '198', '7', '5', '0.98453', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1346', '198', '23', '3', '4.83125', '0', '1', '3');
INSERT INTO `raw` VALUES ('1347', '198', '28', '1', '6.00425', '0', '2', '1');
INSERT INTO `raw` VALUES ('1348', '198', '33', '4', '8.48862', '1', '1', '0');
INSERT INTO `raw` VALUES ('1349', '198', '15', '5', '0.979745', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1350', '41', '29', '1', '5.70791', '0', '4', '4');
INSERT INTO `raw` VALUES ('1351', '41', '43', '1', '9.65517', '0', '3', '1');
INSERT INTO `raw` VALUES ('1352', '41', '14', '5', '5.71875', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1353', '41', '44', '5', '0.212912', '1', '0', '3');
INSERT INTO `raw` VALUES ('1354', '41', '25', '3', '8.01406', '0', '4', '4');
INSERT INTO `raw` VALUES ('1355', '41', '28', '1', '6.55538', '0', '2', '1');
INSERT INTO `raw` VALUES ('1356', '41', '16', '3', '2.09606', '1', '5', '2');
INSERT INTO `raw` VALUES ('1357', '41', '49', '2', '2.04148', '0', '5', '4');
INSERT INTO `raw` VALUES ('1358', '113', '20', '5', '7.2773', '1', '3', '0');
INSERT INTO `raw` VALUES ('1359', '113', '37', '5', '1.74385', '1', '0', '5');
INSERT INTO `raw` VALUES ('1360', '113', '34', '3', '8.06273', '0', '1', '3');
INSERT INTO `raw` VALUES ('1361', '113', '8', '1', '5.07564', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1362', '113', '3', '1', '3.19759', '0', '1', '5');
INSERT INTO `raw` VALUES ('1363', '113', '42', '3', '4.16873', '0', '4', '0');
INSERT INTO `raw` VALUES ('1364', '113', '48', '5', '6.65336', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1365', '164', '37', '1', '9.85984', '0', '3', '1');
INSERT INTO `raw` VALUES ('1366', '164', '34', '1', '0.29345', '0', '1', '1');
INSERT INTO `raw` VALUES ('1367', '164', '8', '4', '4.75922', '1', '4', '5');
INSERT INTO `raw` VALUES ('1368', '164', '3', '2', '2.25533', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1369', '164', '42', '2', '5.61517', '1', '1', '4');
INSERT INTO `raw` VALUES ('1370', '164', '48', '1', '2.92496', '0', '1', '4');
INSERT INTO `raw` VALUES ('1371', '171', '46', '2', '6.50419', '0', '3', '0');
INSERT INTO `raw` VALUES ('1372', '171', '4', '5', '5.9417', '0', '0', '3');
INSERT INTO `raw` VALUES ('1373', '171', '38', '2', '1.07734', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1374', '171', '23', '2', '3.97957', '0', '1', '3');
INSERT INTO `raw` VALUES ('1375', '171', '20', '3', '7.62873', '1', '2', '2');
INSERT INTO `raw` VALUES ('1376', '171', '22', '5', '9.52288', '1', '5', '2');
INSERT INTO `raw` VALUES ('1377', '171', '30', '3', '0.970509', '1', '4', '0');
INSERT INTO `raw` VALUES ('1378', '146', '2', '3', '7.83539', '1', '3', '0');
INSERT INTO `raw` VALUES ('1379', '146', '23', '4', '5.01143', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1380', '146', '34', '1', '0.496007', '1', '0', '2');
INSERT INTO `raw` VALUES ('1381', '146', '27', '3', '6.75952', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1382', '146', '28', '3', '0.210875', '0', '2', '2');
INSERT INTO `raw` VALUES ('1383', '146', '38', '2', '5.46196', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1384', '169', '23', '2', '9.56231', '1', '5', '3');
INSERT INTO `raw` VALUES ('1385', '169', '34', '2', '8.03536', '1', '5', '5');
INSERT INTO `raw` VALUES ('1386', '169', '27', '3', '4.17216', '0', '1', '0');
INSERT INTO `raw` VALUES ('1387', '169', '28', '2', '3.68786', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1388', '169', '38', '5', '7.31205', '1', '2', '5');
INSERT INTO `raw` VALUES ('1389', '68', '23', '1', '7.1189', '0', '4', '0');
INSERT INTO `raw` VALUES ('1390', '68', '34', '5', '5.00393', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1391', '68', '27', '2', '8.44063', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1392', '68', '28', '1', '6.91743', '0', '5', '4');
INSERT INTO `raw` VALUES ('1393', '68', '38', '3', '5.77083', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1394', '83', '9', '2', '3.91151', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1395', '83', '19', '5', '6.85184', '1', '1', '0');
INSERT INTO `raw` VALUES ('1396', '83', '34', '1', '3.81934', '0', '1', '4');
INSERT INTO `raw` VALUES ('1397', '83', '47', '3', '2.53145', '0', '5', '4');
INSERT INTO `raw` VALUES ('1398', '83', '30', '4', '8.47045', '0', '0', '0');
INSERT INTO `raw` VALUES ('1399', '83', '13', '2', '4.55842', '1', '1', '4');
INSERT INTO `raw` VALUES ('1400', '22', '46', '1', '8.57016', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1401', '22', '49', '5', '2.44544', '0', '5', '0');
INSERT INTO `raw` VALUES ('1402', '22', '8', '2', '3.08853', '0', '2', '4');
INSERT INTO `raw` VALUES ('1403', '22', '47', '5', '5.26304', '0', '2', '3');
INSERT INTO `raw` VALUES ('1404', '22', '45', '4', '9.50505', '1', '5', '5');
INSERT INTO `raw` VALUES ('1405', '22', '2', '5', '7.43562', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1406', '22', '25', '3', '8.61475', '0', '1', '0');
INSERT INTO `raw` VALUES ('1407', '52', '31', '4', '2.08311', '0', '0', '4');
INSERT INTO `raw` VALUES ('1408', '52', '46', '4', '4.80144', '1', '0', '2');
INSERT INTO `raw` VALUES ('1409', '52', '4', '5', '2.85484', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1410', '52', '38', '3', '3.23573', '0', '5', '0');
INSERT INTO `raw` VALUES ('1411', '52', '23', '4', '9.33518', '1', '1', '4');
INSERT INTO `raw` VALUES ('1412', '52', '20', '1', '3.4517', '1', '5', '0');
INSERT INTO `raw` VALUES ('1413', '52', '22', '1', '7.03393', '1', '0', '1');
INSERT INTO `raw` VALUES ('1414', '52', '30', '2', '6.40154', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1415', '11', '23', '1', '0.189443', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1416', '11', '34', '5', '2.91039', '0', '4', '1');
INSERT INTO `raw` VALUES ('1417', '11', '27', '3', '5.03092', '0', '4', '2');
INSERT INTO `raw` VALUES ('1418', '11', '28', '2', '2.63933', '1', '1', '1');
INSERT INTO `raw` VALUES ('1419', '11', '38', '3', '9.90882', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1420', '72', '1', '1', '4.17898', '0', '1', '4');
INSERT INTO `raw` VALUES ('1421', '72', '23', '3', '5.33079', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1422', '72', '34', '1', '6.48693', '1', '1', '4');
INSERT INTO `raw` VALUES ('1423', '72', '27', '1', '3.21165', '0', '2', '4');
INSERT INTO `raw` VALUES ('1424', '72', '28', '1', '7.27786', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1425', '72', '38', '4', '2.00893', '0', '3', '5');
INSERT INTO `raw` VALUES ('1426', '49', '37', '5', '5.47545', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1427', '49', '34', '5', '5.58277', '0', '0', '1');
INSERT INTO `raw` VALUES ('1428', '49', '8', '1', '7.66447', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1429', '49', '3', '2', '2.67918', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1430', '49', '42', '2', '0.258234', '1', '1', '2');
INSERT INTO `raw` VALUES ('1431', '49', '48', '3', '5.82472', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1432', '28', '43', '3', '5.97577', '0', '1', '0');
INSERT INTO `raw` VALUES ('1433', '28', '14', '4', '1.98619', '0', '2', '5');
INSERT INTO `raw` VALUES ('1434', '28', '44', '3', '3.37356', '0', '4', '1');
INSERT INTO `raw` VALUES ('1435', '28', '25', '1', '2.55128', '0', '1', '0');
INSERT INTO `raw` VALUES ('1436', '28', '28', '3', '5.66937', '1', '5', '0');
INSERT INTO `raw` VALUES ('1437', '28', '16', '3', '2.00834', '0', '2', '4');
INSERT INTO `raw` VALUES ('1438', '28', '49', '1', '4.26449', '0', '5', '1');
INSERT INTO `raw` VALUES ('1439', '24', '6', '3', '8.15372', '0', '2', '4');
INSERT INTO `raw` VALUES ('1440', '24', '34', '3', '2.58881', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1441', '24', '7', '4', '5.15119', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1442', '24', '23', '4', '1.62454', '0', '4', '1');
INSERT INTO `raw` VALUES ('1443', '24', '28', '1', '6.12788', '1', '1', '1');
INSERT INTO `raw` VALUES ('1444', '24', '33', '5', '4.51141', '1', '5', '5');
INSERT INTO `raw` VALUES ('1445', '24', '15', '4', '3.9504', '0', '3', '0');
INSERT INTO `raw` VALUES ('1446', '36', '20', '2', '3.7948', '1', '4', '4');
INSERT INTO `raw` VALUES ('1447', '36', '33', '2', '4.57647', '1', '5', '4');
INSERT INTO `raw` VALUES ('1448', '36', '39', '4', '7.97225', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1449', '36', '1', '5', '1.58243', '0', '4', '0');
INSERT INTO `raw` VALUES ('1450', '36', '14', '1', '2.99937', '0', '2', '3');
INSERT INTO `raw` VALUES ('1451', '36', '34', '5', '1.99396', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1452', '36', '40', '1', '3.0054', '1', '2', '1');
INSERT INTO `raw` VALUES ('1453', '1', '38', '3', '0.752554', '1', '4', '2');
INSERT INTO `raw` VALUES ('1454', '1', '6', '1', '3.89685', '0', '1', '5');
INSERT INTO `raw` VALUES ('1455', '1', '34', '1', '5.01778', '1', '0', '1');
INSERT INTO `raw` VALUES ('1456', '1', '7', '1', '3.10255', '0', '4', '1');
INSERT INTO `raw` VALUES ('1457', '1', '23', '2', '3.2968', '0', '5', '5');
INSERT INTO `raw` VALUES ('1458', '1', '28', '5', '1.44043', '1', '2', '0');
INSERT INTO `raw` VALUES ('1459', '1', '33', '4', '5.51616', '1', '1', '1');
INSERT INTO `raw` VALUES ('1460', '1', '15', '5', '5.00603', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1461', '167', '25', '1', '3.11701', '1', '3', '4');
INSERT INTO `raw` VALUES ('1462', '167', '19', '1', '8.57737', '0', '2', '1');
INSERT INTO `raw` VALUES ('1463', '167', '34', '5', '6.55177', '0', '5', '3');
INSERT INTO `raw` VALUES ('1464', '167', '47', '5', '7.20311', '1', '4', '1');
INSERT INTO `raw` VALUES ('1465', '167', '30', '4', '0.996954', '1', '0', '5');
INSERT INTO `raw` VALUES ('1466', '167', '13', '3', '7.9616', '1', '0', '3');
INSERT INTO `raw` VALUES ('1467', '43', '43', '1', '2.94639', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1468', '43', '14', '5', '7.3837', '0', '2', '3');
INSERT INTO `raw` VALUES ('1469', '43', '44', '2', '8.65236', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1470', '43', '25', '4', '4.10318', '1', '3', '5');
INSERT INTO `raw` VALUES ('1471', '43', '28', '5', '6.77981', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1472', '43', '16', '4', '7.09952', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1473', '43', '49', '5', '9.02035', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1474', '19', '3', '2', '8.19789', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1475', '19', '46', '2', '4.1591', '0', '3', '2');
INSERT INTO `raw` VALUES ('1476', '19', '4', '3', '7.71473', '1', '2', '0');
INSERT INTO `raw` VALUES ('1477', '19', '38', '4', '6.51373', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1478', '19', '23', '3', '0.131015', '0', '0', '5');
INSERT INTO `raw` VALUES ('1479', '19', '20', '2', '8.13476', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1480', '19', '22', '1', '8.61691', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1481', '19', '30', '4', '9.07968', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1482', '45', '7', '2', '8.03393', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1483', '45', '23', '1', '7.72556', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1484', '45', '34', '4', '1.9128', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1485', '45', '27', '1', '5.96279', '0', '3', '4');
INSERT INTO `raw` VALUES ('1486', '45', '28', '2', '1.054', '1', '2', '2');
INSERT INTO `raw` VALUES ('1487', '45', '38', '1', '4.67415', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1488', '124', '33', '5', '5.14163', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1489', '124', '39', '2', '5.29703', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1490', '124', '1', '2', '5.53381', '0', '0', '5');
INSERT INTO `raw` VALUES ('1491', '124', '14', '2', '8.14686', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1492', '124', '34', '2', '4.99095', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1493', '124', '40', '1', '0.00479633', '1', '5', '2');
INSERT INTO `raw` VALUES ('1494', '25', '6', '2', '2.64279', '0', '2', '3');
INSERT INTO `raw` VALUES ('1495', '25', '33', '1', '1.2909', '0', '3', '3');
INSERT INTO `raw` VALUES ('1496', '25', '39', '2', '9.97618', '1', '1', '5');
INSERT INTO `raw` VALUES ('1497', '25', '1', '3', '1.90819', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1498', '25', '14', '1', '5.24827', '0', '3', '0');
INSERT INTO `raw` VALUES ('1499', '25', '34', '1', '0.263266', '1', '1', '2');
INSERT INTO `raw` VALUES ('1500', '25', '40', '1', '9.6668', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1501', '177', '19', '5', '5.74715', '0', '4', '1');
INSERT INTO `raw` VALUES ('1502', '177', '34', '3', '6.27063', '1', '5', '1');
INSERT INTO `raw` VALUES ('1503', '177', '47', '1', '6.90899', '1', '3', '3');
INSERT INTO `raw` VALUES ('1504', '177', '30', '3', '0.864018', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1505', '177', '13', '2', '1.42189', '0', '0', '2');
INSERT INTO `raw` VALUES ('1506', '131', '33', '1', '5.34953', '1', '0', '0');
INSERT INTO `raw` VALUES ('1507', '131', '39', '3', '5.85465', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1508', '131', '1', '5', '7.33174', '0', '5', '3');
INSERT INTO `raw` VALUES ('1509', '131', '14', '1', '7.84019', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1510', '131', '34', '2', '5.64704', '1', '2', '2');
INSERT INTO `raw` VALUES ('1511', '131', '40', '5', '8.074', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1512', '195', '33', '1', '8.21856', '0', '3', '4');
INSERT INTO `raw` VALUES ('1513', '195', '39', '1', '9.24616', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1514', '195', '1', '3', '1.18465', '0', '5', '2');
INSERT INTO `raw` VALUES ('1515', '195', '14', '1', '3.84497', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1516', '195', '34', '5', '7.12154', '1', '5', '5');
INSERT INTO `raw` VALUES ('1517', '195', '40', '1', '0.754865', '0', '0', '1');
INSERT INTO `raw` VALUES ('1518', '86', '50', '1', '7.67548', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1519', '86', '46', '3', '2.54561', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1520', '86', '4', '5', '5.17907', '0', '0', '0');
INSERT INTO `raw` VALUES ('1521', '86', '38', '4', '8.96025', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1522', '86', '23', '2', '0.116367', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1523', '86', '20', '1', '1.15987', '0', '3', '2');
INSERT INTO `raw` VALUES ('1524', '86', '22', '1', '3.70263', '1', '3', '1');
INSERT INTO `raw` VALUES ('1525', '86', '30', '5', '4.28435', '1', '2', '2');
INSERT INTO `raw` VALUES ('1526', '116', '14', '4', '4.84317', '1', '2', '0');
INSERT INTO `raw` VALUES ('1527', '116', '43', '3', '2.09229', '1', '5', '5');
INSERT INTO `raw` VALUES ('1528', '116', '14', '1', '1.50885', '1', '5', '1');
INSERT INTO `raw` VALUES ('1529', '116', '44', '5', '4.49862', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1530', '116', '25', '4', '0.669112', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1531', '116', '28', '1', '0.624547', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1532', '116', '16', '5', '6.00006', '1', '2', '4');
INSERT INTO `raw` VALUES ('1533', '116', '49', '3', '9.60414', '1', '1', '5');
INSERT INTO `raw` VALUES ('1534', '38', '23', '2', '6.17048', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1535', '38', '34', '4', '6.1436', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1536', '38', '27', '2', '8.02737', '0', '3', '3');
INSERT INTO `raw` VALUES ('1537', '38', '28', '4', '6.8525', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1538', '38', '38', '4', '7.73026', '1', '3', '0');
INSERT INTO `raw` VALUES ('1539', '179', '43', '4', '0.876062', '0', '1', '0');
INSERT INTO `raw` VALUES ('1540', '179', '14', '4', '0.333237', '1', '2', '4');
INSERT INTO `raw` VALUES ('1541', '179', '44', '1', '3.71095', '0', '1', '0');
INSERT INTO `raw` VALUES ('1542', '179', '25', '3', '0.750314', '0', '1', '3');
INSERT INTO `raw` VALUES ('1543', '179', '28', '2', '0.158443', '1', '5', '3');
INSERT INTO `raw` VALUES ('1544', '179', '16', '4', '6.63593', '1', '4', '2');
INSERT INTO `raw` VALUES ('1545', '179', '49', '1', '2.75585', '0', '3', '3');
INSERT INTO `raw` VALUES ('1546', '197', '49', '2', '2.96929', '1', '4', '4');
INSERT INTO `raw` VALUES ('1547', '197', '8', '4', '0.832168', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1548', '197', '47', '5', '9.02793', '1', '2', '3');
INSERT INTO `raw` VALUES ('1549', '197', '45', '5', '8.46445', '0', '1', '1');
INSERT INTO `raw` VALUES ('1550', '197', '2', '3', '3.7917', '0', '0', '4');
INSERT INTO `raw` VALUES ('1551', '197', '25', '2', '1.8037', '1', '1', '1');
INSERT INTO `raw` VALUES ('1552', '152', '37', '3', '1.20751', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1553', '152', '34', '3', '9.31836', '1', '0', '1');
INSERT INTO `raw` VALUES ('1554', '152', '8', '3', '6.01328', '0', '1', '4');
INSERT INTO `raw` VALUES ('1555', '152', '3', '5', '6.67381', '1', '2', '0');
INSERT INTO `raw` VALUES ('1556', '152', '42', '5', '0.270288', '1', '3', '0');
INSERT INTO `raw` VALUES ('1557', '152', '48', '4', '5.16716', '0', '4', '4');
INSERT INTO `raw` VALUES ('1558', '185', '32', '5', '3.45468', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1559', '185', '43', '5', '3.26278', '0', '2', '2');
INSERT INTO `raw` VALUES ('1560', '185', '14', '2', '4.45486', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1561', '185', '44', '3', '5.69587', '0', '1', '5');
INSERT INTO `raw` VALUES ('1562', '185', '25', '2', '5.11858', '1', '0', '4');
INSERT INTO `raw` VALUES ('1563', '185', '28', '3', '3.01777', '1', '5', '2');
INSERT INTO `raw` VALUES ('1564', '185', '16', '2', '3.10095', '1', '5', '2');
INSERT INTO `raw` VALUES ('1565', '185', '49', '4', '3.16378', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1566', '87', '33', '2', '7.16742', '1', '3', '1');
INSERT INTO `raw` VALUES ('1567', '87', '39', '4', '9.19544', '1', '2', '4');
INSERT INTO `raw` VALUES ('1568', '87', '1', '3', '8.20722', '1', '1', '1');
INSERT INTO `raw` VALUES ('1569', '87', '14', '4', '4.04551', '0', '4', '2');
INSERT INTO `raw` VALUES ('1570', '87', '34', '2', '1.30223', '0', '2', '5');
INSERT INTO `raw` VALUES ('1571', '87', '40', '4', '1.09061', '0', '3', '1');
INSERT INTO `raw` VALUES ('1572', '10', '42', '4', '8.70944', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1573', '10', '49', '4', '2.2396', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1574', '10', '8', '2', '7.20225', '0', '2', '1');
INSERT INTO `raw` VALUES ('1575', '10', '47', '5', '8.29238', '1', '2', '0');
INSERT INTO `raw` VALUES ('1576', '10', '45', '1', '9.37403', '0', '4', '1');
INSERT INTO `raw` VALUES ('1577', '10', '2', '4', '7.80672', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1578', '10', '25', '1', '2.56972', '0', '4', '4');
INSERT INTO `raw` VALUES ('1579', '190', '23', '4', '3.40911', '1', '1', '5');
INSERT INTO `raw` VALUES ('1580', '190', '19', '3', '3.61639', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1581', '190', '34', '4', '4.11956', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1582', '190', '47', '2', '5.5653', '1', '5', '5');
INSERT INTO `raw` VALUES ('1583', '190', '30', '5', '2.55638', '0', '2', '5');
INSERT INTO `raw` VALUES ('1584', '190', '13', '1', '9.61392', '1', '0', '2');
INSERT INTO `raw` VALUES ('1585', '149', '46', '4', '2.97167', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1586', '149', '4', '4', '5.74145', '1', '3', '5');
INSERT INTO `raw` VALUES ('1587', '149', '38', '4', '6.27455', '1', '4', '1');
INSERT INTO `raw` VALUES ('1588', '149', '23', '1', '4.37003', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1589', '149', '20', '3', '5.22789', '0', '1', '0');
INSERT INTO `raw` VALUES ('1590', '149', '22', '3', '6.86653', '1', '3', '2');
INSERT INTO `raw` VALUES ('1591', '149', '30', '4', '9.17095', '1', '4', '4');
INSERT INTO `raw` VALUES ('1592', '6', '37', '5', '8.22966', '1', '3', '2');
INSERT INTO `raw` VALUES ('1593', '6', '34', '4', '7.74875', '0', '0', '4');
INSERT INTO `raw` VALUES ('1594', '6', '8', '1', '4.0486', '0', '1', '3');
INSERT INTO `raw` VALUES ('1595', '6', '3', '3', '0.188433', '0', '0', '5');
INSERT INTO `raw` VALUES ('1596', '6', '42', '4', '8.10494', '1', '2', '4');
INSERT INTO `raw` VALUES ('1597', '6', '48', '3', '4.4834', '1', '4', '5');
INSERT INTO `raw` VALUES ('1598', '89', '8', '5', '5.69649', '1', '1', '4');
INSERT INTO `raw` VALUES ('1599', '89', '19', '4', '1.98521', '1', '1', '0');
INSERT INTO `raw` VALUES ('1600', '89', '34', '3', '0.469576', '1', '1', '0');
INSERT INTO `raw` VALUES ('1601', '89', '47', '5', '4.75958', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1602', '89', '30', '2', '1.1939', '1', '3', '5');
INSERT INTO `raw` VALUES ('1603', '89', '13', '1', '4.88073', '1', '3', '5');
INSERT INTO `raw` VALUES ('1604', '99', '2', '3', '2.33071', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1605', '99', '49', '5', '9.81645', '1', '5', '5');
INSERT INTO `raw` VALUES ('1606', '99', '8', '4', '4.80785', '1', '0', '2');
INSERT INTO `raw` VALUES ('1607', '99', '47', '3', '4.7973', '0', '1', '3');
INSERT INTO `raw` VALUES ('1608', '99', '45', '4', '0.945677', '0', '4', '0');
INSERT INTO `raw` VALUES ('1609', '99', '2', '5', '4.31253', '0', '1', '5');
INSERT INTO `raw` VALUES ('1610', '99', '25', '4', '1.43097', '1', '5', '3');
INSERT INTO `raw` VALUES ('1611', '106', '49', '1', '4.34191', '0', '3', '2');
INSERT INTO `raw` VALUES ('1612', '106', '8', '1', '9.33622', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1613', '106', '47', '4', '3.95476', '1', '2', '2');
INSERT INTO `raw` VALUES ('1614', '106', '45', '1', '3.33282', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1615', '106', '2', '2', '9.20409', '0', '4', '4');
INSERT INTO `raw` VALUES ('1616', '106', '25', '5', '4.06215', '1', '1', '3');
INSERT INTO `raw` VALUES ('1617', '35', '23', '3', '6.17307', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1618', '35', '34', '5', '8.44917', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1619', '35', '27', '4', '9.05353', '0', '1', '1');
INSERT INTO `raw` VALUES ('1620', '35', '28', '1', '7.30063', '1', '3', '5');
INSERT INTO `raw` VALUES ('1621', '35', '38', '4', '1.91909', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1622', '102', '46', '4', '0.0224348', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1623', '102', '49', '4', '0.881404', '0', '2', '1');
INSERT INTO `raw` VALUES ('1624', '102', '8', '1', '7.88061', '0', '4', '4');
INSERT INTO `raw` VALUES ('1625', '102', '47', '2', '9.59593', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1626', '102', '45', '5', '6.38722', '1', '4', '3');
INSERT INTO `raw` VALUES ('1627', '102', '2', '1', '8.50492', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1628', '102', '25', '2', '7.9347', '0', '2', '0');
INSERT INTO `raw` VALUES ('1629', '80', '7', '2', '5.51433', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1630', '80', '6', '2', '8.97301', '1', '2', '2');
INSERT INTO `raw` VALUES ('1631', '80', '34', '4', '6.81014', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1632', '80', '7', '5', '7.6244', '1', '1', '5');
INSERT INTO `raw` VALUES ('1633', '80', '23', '3', '6.95633', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1634', '80', '28', '2', '1.32036', '0', '4', '2');
INSERT INTO `raw` VALUES ('1635', '80', '33', '5', '1.30558', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1636', '80', '15', '1', '9.12016', '1', '4', '0');
INSERT INTO `raw` VALUES ('1637', '141', '19', '4', '9.98952', '1', '0', '4');
INSERT INTO `raw` VALUES ('1638', '141', '34', '1', '6.30142', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1639', '141', '47', '2', '2.62684', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1640', '141', '30', '5', '3.91178', '0', '1', '5');
INSERT INTO `raw` VALUES ('1641', '141', '13', '3', '8.22638', '0', '1', '1');
INSERT INTO `raw` VALUES ('1642', '79', '33', '5', '3.02005', '1', '1', '5');
INSERT INTO `raw` VALUES ('1643', '79', '39', '3', '4.71156', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1644', '79', '1', '1', '0.0493516', '0', '3', '0');
INSERT INTO `raw` VALUES ('1645', '79', '14', '1', '3.91973', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1646', '79', '34', '1', '1.70963', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1647', '79', '40', '1', '4.8076', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1648', '31', '23', '1', '2.73363', '0', '1', '1');
INSERT INTO `raw` VALUES ('1649', '31', '34', '2', '6.66837', '0', '2', '2');
INSERT INTO `raw` VALUES ('1650', '31', '27', '5', '1.83009', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1651', '31', '28', '1', '1.77511', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1652', '31', '38', '3', '7.73312', '0', '0', '0');
INSERT INTO `raw` VALUES ('1653', '64', '14', '4', '2.2013', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1654', '64', '43', '5', '4.82214', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1655', '64', '14', '1', '8.56236', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1656', '64', '44', '4', '7.90073', '1', '5', '5');
INSERT INTO `raw` VALUES ('1657', '64', '25', '1', '1.20132', '1', '3', '5');
INSERT INTO `raw` VALUES ('1658', '64', '28', '3', '8.46509', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1659', '64', '16', '3', '6.56035', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1660', '64', '49', '1', '5.88732', '1', '5', '5');
INSERT INTO `raw` VALUES ('1661', '17', '3', '2', '0.909722', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1662', '17', '23', '4', '7.0437', '1', '2', '3');
INSERT INTO `raw` VALUES ('1663', '17', '34', '3', '2.30523', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1664', '17', '27', '4', '0.273867', '0', '2', '3');
INSERT INTO `raw` VALUES ('1665', '17', '28', '2', '7.70106', '0', '2', '2');
INSERT INTO `raw` VALUES ('1666', '17', '38', '1', '0.829343', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1667', '174', '49', '1', '9.45023', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1668', '174', '8', '3', '7.75318', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1669', '174', '47', '4', '4.96325', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1670', '174', '45', '3', '3.77903', '1', '0', '0');
INSERT INTO `raw` VALUES ('1671', '174', '2', '1', '5.51471', '0', '4', '4');
INSERT INTO `raw` VALUES ('1672', '174', '25', '4', '5.34519', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1673', '4', '19', '3', '5.99959', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1674', '4', '6', '1', '6.73144', '1', '1', '1');
INSERT INTO `raw` VALUES ('1675', '4', '34', '2', '8.1842', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1676', '4', '7', '1', '9.54839', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1677', '4', '23', '1', '7.32194', '1', '2', '1');
INSERT INTO `raw` VALUES ('1678', '4', '28', '2', '8.1085', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1679', '4', '33', '4', '6.79218', '1', '3', '3');
INSERT INTO `raw` VALUES ('1680', '4', '15', '2', '3.53996', '1', '2', '2');
INSERT INTO `raw` VALUES ('1681', '76', '33', '5', '7.3474', '1', '0', '5');
INSERT INTO `raw` VALUES ('1682', '76', '39', '1', '6.74585', '1', '1', '2');
INSERT INTO `raw` VALUES ('1683', '76', '1', '5', '5.09563', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1684', '76', '14', '4', '1.41206', '1', '1', '4');
INSERT INTO `raw` VALUES ('1685', '76', '34', '5', '7.73941', '0', '0', '5');
INSERT INTO `raw` VALUES ('1686', '76', '40', '5', '0.346489', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1687', '7', '45', '2', '1.86316', '1', '3', '4');
INSERT INTO `raw` VALUES ('1688', '7', '19', '5', '8.39852', '1', '1', '2');
INSERT INTO `raw` VALUES ('1689', '7', '34', '1', '0.94673', '0', '1', '5');
INSERT INTO `raw` VALUES ('1690', '7', '47', '2', '3.56972', '1', '3', '5');
INSERT INTO `raw` VALUES ('1691', '7', '30', '4', '2.93135', '0', '3', '0');
INSERT INTO `raw` VALUES ('1692', '7', '13', '4', '4.48451', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1693', '165', '46', '4', '6.79176', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1694', '165', '6', '1', '1.96858', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1695', '165', '34', '3', '4.42183', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1696', '165', '7', '4', '7.81924', '0', '3', '2');
INSERT INTO `raw` VALUES ('1697', '165', '23', '5', '6.06414', '0', '1', '3');
INSERT INTO `raw` VALUES ('1698', '165', '28', '1', '3.33976', '1', '2', '2');
INSERT INTO `raw` VALUES ('1699', '165', '33', '1', '5.50491', '1', '2', '4');
INSERT INTO `raw` VALUES ('1700', '165', '15', '4', '9.05152', '0', '1', '4');
INSERT INTO `raw` VALUES ('1701', '50', '49', '4', '0.357693', '1', '2', '4');
INSERT INTO `raw` VALUES ('1702', '50', '8', '1', '2.06269', '0', '0', '5');
INSERT INTO `raw` VALUES ('1703', '50', '47', '2', '9.50195', '0', '0', '4');
INSERT INTO `raw` VALUES ('1704', '50', '45', '2', '5.23228', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1705', '50', '2', '4', '7.22073', '1', '4', '0');
INSERT INTO `raw` VALUES ('1706', '50', '25', '5', '9.34523', '0', '5', '1');
INSERT INTO `raw` VALUES ('1707', '98', '19', '1', '4.25389', '0', '5', '2');
INSERT INTO `raw` VALUES ('1708', '98', '34', '3', '0.868693', '1', '4', '4');
INSERT INTO `raw` VALUES ('1709', '98', '47', '4', '8.6297', '0', '2', '2');
INSERT INTO `raw` VALUES ('1710', '98', '30', '5', '9.22309', '1', '5', '1');
INSERT INTO `raw` VALUES ('1711', '98', '13', '1', '7.99901', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1712', '51', '9', '3', '2.48634', '1', '0', '5');
INSERT INTO `raw` VALUES ('1713', '51', '33', '4', '3.17416', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1714', '51', '39', '4', '6.81627', '0', '0', '0');
INSERT INTO `raw` VALUES ('1715', '51', '1', '3', '0.335499', '1', '4', '2');
INSERT INTO `raw` VALUES ('1716', '51', '14', '4', '2.03319', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1717', '51', '34', '4', '5.79989', '1', '3', '0');
INSERT INTO `raw` VALUES ('1718', '51', '40', '4', '9.48358', '0', '4', '2');
INSERT INTO `raw` VALUES ('1719', '127', '49', '2', '2.68062', '1', '4', '0');
INSERT INTO `raw` VALUES ('1720', '127', '8', '4', '9.88763', '0', '3', '4');
INSERT INTO `raw` VALUES ('1721', '127', '47', '5', '6.48247', '1', '5', '4');
INSERT INTO `raw` VALUES ('1722', '127', '45', '2', '2.22576', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1723', '127', '2', '3', '8.7138', '0', '2', '3');
INSERT INTO `raw` VALUES ('1724', '127', '25', '4', '4.24492', '1', '4', '5');
INSERT INTO `raw` VALUES ('1725', '96', '33', '2', '8.41189', '0', '0', '2');
INSERT INTO `raw` VALUES ('1726', '96', '39', '4', '8.05328', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1727', '96', '1', '2', '5.43684', '1', '4', '4');
INSERT INTO `raw` VALUES ('1728', '96', '14', '2', '4.82072', '0', '1', '0');
INSERT INTO `raw` VALUES ('1729', '96', '34', '2', '4.97541', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1730', '96', '40', '1', '8.93875', '1', '3', '2');
INSERT INTO `raw` VALUES ('1731', '2', '47', '3', '5.06464', '0', '5', '5');
INSERT INTO `raw` VALUES ('1732', '2', '43', '3', '0.197756', '0', '0', '0');
INSERT INTO `raw` VALUES ('1733', '2', '14', '3', '5.16162', '0', '1', '4');
INSERT INTO `raw` VALUES ('1734', '2', '44', '4', '0.257033', '0', '5', '4');
INSERT INTO `raw` VALUES ('1735', '2', '25', '1', '6.7112', '1', '2', '2');
INSERT INTO `raw` VALUES ('1736', '2', '28', '5', '4.28267', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1737', '2', '16', '3', '7.99116', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1738', '2', '49', '1', '0.296874', '1', '2', '0');
INSERT INTO `raw` VALUES ('1739', '30', '43', '4', '6.93749', '1', '4', '1');
INSERT INTO `raw` VALUES ('1740', '30', '14', '5', '9.46737', '0', '2', '2');
INSERT INTO `raw` VALUES ('1741', '30', '44', '2', '1.8722', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1742', '30', '25', '5', '6.91443', '1', '5', '3');
INSERT INTO `raw` VALUES ('1743', '30', '28', '1', '8.31188', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1744', '30', '16', '3', '4.98076', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1745', '30', '49', '5', '9.33995', '0', '2', '1');
INSERT INTO `raw` VALUES ('1746', '85', '46', '1', '1.01202', '0', '5', '0');
INSERT INTO `raw` VALUES ('1747', '85', '4', '1', '2.95978', '1', '5', '4');
INSERT INTO `raw` VALUES ('1748', '85', '38', '2', '3.62961', '0', '1', '0');
INSERT INTO `raw` VALUES ('1749', '85', '23', '4', '8.61721', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1750', '85', '20', '1', '8.8646', '0', '0', '0');
INSERT INTO `raw` VALUES ('1751', '85', '22', '1', '2.39434', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1752', '85', '30', '1', '8.95755', '0', '0', '1');
INSERT INTO `raw` VALUES ('1753', '58', '37', '4', '0.0134824', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1754', '58', '37', '3', '2.56556', '0', '5', '1');
INSERT INTO `raw` VALUES ('1755', '58', '34', '2', '3.5167', '1', '1', '3');
INSERT INTO `raw` VALUES ('1756', '58', '8', '5', '7.62982', '0', '4', '0');
INSERT INTO `raw` VALUES ('1757', '58', '3', '3', '5.95218', '0', '3', '1');
INSERT INTO `raw` VALUES ('1758', '58', '42', '2', '9.54055', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1759', '58', '48', '3', '3.76278', '0', '5', '1');
INSERT INTO `raw` VALUES ('1760', '196', '24', '5', '5.04444', '0', '3', '1');
INSERT INTO `raw` VALUES ('1761', '196', '6', '4', '6.78087', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1762', '196', '34', '1', '6.23149', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1763', '196', '7', '5', '4.49542', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1764', '196', '23', '3', '7.71072', '1', '5', '1');
INSERT INTO `raw` VALUES ('1765', '196', '28', '4', '0.0377554', '0', '5', '3');
INSERT INTO `raw` VALUES ('1766', '196', '33', '3', '0.906171', '1', '3', '4');
INSERT INTO `raw` VALUES ('1767', '196', '15', '4', '6.73507', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1768', '183', '16', '4', '2.62698', '0', '0', '0');
INSERT INTO `raw` VALUES ('1769', '183', '43', '3', '9.61917', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1770', '183', '14', '2', '4.26345', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1771', '183', '44', '3', '1.71884', '0', '5', '0');
INSERT INTO `raw` VALUES ('1772', '183', '25', '1', '3.60326', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1773', '183', '28', '5', '1.1262', '1', '1', '1');
INSERT INTO `raw` VALUES ('1774', '183', '16', '2', '5.12865', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1775', '183', '49', '3', '1.86488', '1', '1', '2');
INSERT INTO `raw` VALUES ('1776', '117', '49', '1', '8.67373', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1777', '117', '8', '2', '6.97283', '1', '4', '5');
INSERT INTO `raw` VALUES ('1778', '117', '47', '3', '0.130479', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1779', '117', '45', '1', '5.41979', '1', '2', '0');
INSERT INTO `raw` VALUES ('1780', '117', '2', '4', '1.65344', '0', '0', '1');
INSERT INTO `raw` VALUES ('1781', '117', '25', '5', '2.50763', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1782', '101', '48', '3', '6.91371', '0', '0', '1');
INSERT INTO `raw` VALUES ('1783', '101', '43', '4', '1.9936', '1', '3', '5');
INSERT INTO `raw` VALUES ('1784', '101', '14', '4', '2.42527', '1', '3', '2');
INSERT INTO `raw` VALUES ('1785', '101', '44', '2', '7.59133', '0', '5', '4');
INSERT INTO `raw` VALUES ('1786', '101', '25', '4', '5.00276', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1787', '101', '28', '1', '5.45517', '0', '5', '3');
INSERT INTO `raw` VALUES ('1788', '101', '16', '2', '3.43179', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1789', '101', '49', '1', '8.7645', '0', '4', '5');
INSERT INTO `raw` VALUES ('1790', '118', '15', '3', '4.54338', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1791', '118', '49', '1', '8.62977', '0', '4', '1');
INSERT INTO `raw` VALUES ('1792', '118', '8', '2', '2.25681', '0', '2', '2');
INSERT INTO `raw` VALUES ('1793', '118', '47', '3', '2.31388', '1', '2', '5');
INSERT INTO `raw` VALUES ('1794', '118', '45', '5', '4.50276', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1795', '118', '2', '1', '3.58599', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1796', '118', '25', '5', '1.78064', '1', '4', '0');
INSERT INTO `raw` VALUES ('1797', '97', '50', '4', '4.22227', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1798', '97', '46', '5', '8.87814', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1799', '97', '4', '4', '6.22695', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1800', '97', '38', '2', '7.64872', '1', '5', '1');
INSERT INTO `raw` VALUES ('1801', '97', '23', '2', '0.126116', '1', '3', '5');
INSERT INTO `raw` VALUES ('1802', '97', '20', '2', '9.32189', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1803', '97', '22', '2', '0.214596', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1804', '97', '30', '1', '2.88138', '0', '2', '5');
INSERT INTO `raw` VALUES ('1805', '13', '46', '3', '1.77509', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1806', '13', '4', '1', '1.98412', '0', '4', '0');
INSERT INTO `raw` VALUES ('1807', '13', '38', '1', '8.89131', '0', '5', '2');
INSERT INTO `raw` VALUES ('1808', '13', '23', '5', '1.13638', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1809', '13', '20', '4', '7.24432', '1', '2', '5');
INSERT INTO `raw` VALUES ('1810', '13', '22', '3', '2.99493', '0', '2', '4');
INSERT INTO `raw` VALUES ('1811', '13', '30', '2', '7.22131', '0', '2', '0');
INSERT INTO `raw` VALUES ('1812', '92', '3', '2', '0.469078', '1', '2', '4');
INSERT INTO `raw` VALUES ('1813', '92', '6', '2', '0.831281', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1814', '92', '34', '1', '5.9773', '0', '5', '1');
INSERT INTO `raw` VALUES ('1815', '92', '7', '3', '0.828595', '1', '1', '0');
INSERT INTO `raw` VALUES ('1816', '92', '23', '4', '0.887586', '0', '2', '1');
INSERT INTO `raw` VALUES ('1817', '92', '28', '3', '8.34631', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1818', '92', '33', '5', '8.96836', '-1', '0', '0');
INSERT INTO `raw` VALUES ('1819', '92', '15', '1', '6.15774', '1', '2', '5');

-- ----------------------------
-- Table structure for raw2
-- ----------------------------
DROP TABLE IF EXISTS `raw2`;
CREATE TABLE `raw2` (
  `rawID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `browser_num` int(11) NOT NULL,
  `stay_time` float DEFAULT NULL,
  `collect` int(11) NOT NULL,
  `buy_num` int(11) NOT NULL,
  `scores` double DEFAULT NULL,
  PRIMARY KEY (`rawID`),
  KEY `rawdata_ibfk_1` (`rawID`) USING BTREE,
  KEY `raw_fk_1` (`userID`),
  KEY `raw_fk_2` (`itemID`),
  CONSTRAINT `raw2_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  CONSTRAINT `raw2_ibfk_2` FOREIGN KEY (`itemID`) REFERENCES `item` (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=1317 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of raw2
-- ----------------------------

-- ----------------------------
-- Table structure for recitem
-- ----------------------------
DROP TABLE IF EXISTS `recitem`;
CREATE TABLE `recitem` (
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `scores` double(255,0) DEFAULT NULL,
  PRIMARY KEY (`itemID`,`userID`),
  KEY `itemrecommend_ibfk_2` (`userID`),
  CONSTRAINT `recitem_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `item` (`itemID`),
  CONSTRAINT `recitem_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recitem
-- ----------------------------
INSERT INTO `recitem` VALUES ('1', '51', '1');
INSERT INTO `recitem` VALUES ('1', '72', '1');
INSERT INTO `recitem` VALUES ('1', '148', '1');
INSERT INTO `recitem` VALUES ('2', '6', '1');
INSERT INTO `recitem` VALUES ('2', '127', '1');
INSERT INTO `recitem` VALUES ('2', '190', '1');
INSERT INTO `recitem` VALUES ('3', '6', '2');
INSERT INTO `recitem` VALUES ('3', '7', '1');
INSERT INTO `recitem` VALUES ('3', '113', '1');
INSERT INTO `recitem` VALUES ('4', '6', '1');
INSERT INTO `recitem` VALUES ('4', '167', '1');
INSERT INTO `recitem` VALUES ('4', '190', '1');
INSERT INTO `recitem` VALUES ('6', '6', '2');
INSERT INTO `recitem` VALUES ('6', '148', '2');
INSERT INTO `recitem` VALUES ('6', '190', '2');
INSERT INTO `recitem` VALUES ('7', '6', '1');
INSERT INTO `recitem` VALUES ('7', '148', '1');
INSERT INTO `recitem` VALUES ('7', '190', '1');
INSERT INTO `recitem` VALUES ('8', '6', '2');
INSERT INTO `recitem` VALUES ('8', '164', '2');
INSERT INTO `recitem` VALUES ('8', '190', '2');
INSERT INTO `recitem` VALUES ('9', '51', '2');
INSERT INTO `recitem` VALUES ('9', '72', '1');
INSERT INTO `recitem` VALUES ('9', '124', '1');
INSERT INTO `recitem` VALUES ('13', '6', '2');
INSERT INTO `recitem` VALUES ('13', '167', '2');
INSERT INTO `recitem` VALUES ('13', '190', '2');
INSERT INTO `recitem` VALUES ('14', '6', '1');
INSERT INTO `recitem` VALUES ('14', '76', '1');
INSERT INTO `recitem` VALUES ('14', '190', '1');
INSERT INTO `recitem` VALUES ('15', '6', '1');
INSERT INTO `recitem` VALUES ('15', '76', '1');
INSERT INTO `recitem` VALUES ('15', '169', '1');
INSERT INTO `recitem` VALUES ('16', '6', '1');
INSERT INTO `recitem` VALUES ('16', '76', '1');
INSERT INTO `recitem` VALUES ('16', '148', '1');
INSERT INTO `recitem` VALUES ('19', '6', '1');
INSERT INTO `recitem` VALUES ('19', '76', '1');
INSERT INTO `recitem` VALUES ('19', '190', '1');
INSERT INTO `recitem` VALUES ('20', '76', '1');
INSERT INTO `recitem` VALUES ('20', '148', '1');
INSERT INTO `recitem` VALUES ('20', '190', '1');
INSERT INTO `recitem` VALUES ('22', '6', '1');
INSERT INTO `recitem` VALUES ('22', '148', '1');
INSERT INTO `recitem` VALUES ('22', '190', '1');
INSERT INTO `recitem` VALUES ('23', '6', '2');
INSERT INTO `recitem` VALUES ('23', '148', '2');
INSERT INTO `recitem` VALUES ('23', '190', '2');
INSERT INTO `recitem` VALUES ('24', '76', '1');
INSERT INTO `recitem` VALUES ('24', '148', '1');
INSERT INTO `recitem` VALUES ('24', '190', '1');
INSERT INTO `recitem` VALUES ('25', '6', '2');
INSERT INTO `recitem` VALUES ('25', '76', '2');
INSERT INTO `recitem` VALUES ('25', '190', '2');
INSERT INTO `recitem` VALUES ('27', '72', '1');
INSERT INTO `recitem` VALUES ('27', '76', '1');
INSERT INTO `recitem` VALUES ('27', '148', '2');
INSERT INTO `recitem` VALUES ('28', '76', '1');
INSERT INTO `recitem` VALUES ('28', '148', '1');
INSERT INTO `recitem` VALUES ('28', '190', '1');
INSERT INTO `recitem` VALUES ('29', '99', '2');
INSERT INTO `recitem` VALUES ('29', '127', '2');
INSERT INTO `recitem` VALUES ('29', '190', '2');
INSERT INTO `recitem` VALUES ('30', '89', '2');
INSERT INTO `recitem` VALUES ('30', '167', '2');
INSERT INTO `recitem` VALUES ('30', '190', '2');
INSERT INTO `recitem` VALUES ('31', '76', '3');
INSERT INTO `recitem` VALUES ('31', '148', '3');
INSERT INTO `recitem` VALUES ('31', '190', '2');
INSERT INTO `recitem` VALUES ('32', '1', '0');
INSERT INTO `recitem` VALUES ('32', '13', '0');
INSERT INTO `recitem` VALUES ('32', '17', '0');
INSERT INTO `recitem` VALUES ('33', '6', '2');
INSERT INTO `recitem` VALUES ('33', '148', '2');
INSERT INTO `recitem` VALUES ('33', '190', '2');
INSERT INTO `recitem` VALUES ('34', '6', '2');
INSERT INTO `recitem` VALUES ('34', '76', '1');
INSERT INTO `recitem` VALUES ('34', '190', '1');
INSERT INTO `recitem` VALUES ('37', '6', '2');
INSERT INTO `recitem` VALUES ('37', '113', '1');
INSERT INTO `recitem` VALUES ('37', '191', '1');
INSERT INTO `recitem` VALUES ('38', '6', '1');
INSERT INTO `recitem` VALUES ('38', '76', '1');
INSERT INTO `recitem` VALUES ('38', '148', '1');
INSERT INTO `recitem` VALUES ('39', '6', '1');
INSERT INTO `recitem` VALUES ('39', '76', '1');
INSERT INTO `recitem` VALUES ('39', '190', '1');
INSERT INTO `recitem` VALUES ('40', '51', '0');
INSERT INTO `recitem` VALUES ('40', '72', '1');
INSERT INTO `recitem` VALUES ('40', '148', '1');
INSERT INTO `recitem` VALUES ('42', '6', '2');
INSERT INTO `recitem` VALUES ('42', '76', '1');
INSERT INTO `recitem` VALUES ('42', '164', '1');
INSERT INTO `recitem` VALUES ('43', '64', '1');
INSERT INTO `recitem` VALUES ('43', '99', '1');
INSERT INTO `recitem` VALUES ('43', '148', '1');
INSERT INTO `recitem` VALUES ('44', '6', '2');
INSERT INTO `recitem` VALUES ('44', '127', '2');
INSERT INTO `recitem` VALUES ('44', '190', '2');
INSERT INTO `recitem` VALUES ('45', '6', '1');
INSERT INTO `recitem` VALUES ('45', '7', '1');
INSERT INTO `recitem` VALUES ('45', '76', '1');
INSERT INTO `recitem` VALUES ('46', '76', '0');
INSERT INTO `recitem` VALUES ('46', '148', '0');
INSERT INTO `recitem` VALUES ('46', '190', '0');
INSERT INTO `recitem` VALUES ('47', '6', '2');
INSERT INTO `recitem` VALUES ('47', '76', '2');
INSERT INTO `recitem` VALUES ('47', '190', '2');
INSERT INTO `recitem` VALUES ('48', '6', '2');
INSERT INTO `recitem` VALUES ('48', '164', '2');
INSERT INTO `recitem` VALUES ('48', '190', '2');
INSERT INTO `recitem` VALUES ('49', '6', '2');
INSERT INTO `recitem` VALUES ('49', '99', '2');
INSERT INTO `recitem` VALUES ('49', '190', '2');
INSERT INTO `recitem` VALUES ('50', '7', '0');
INSERT INTO `recitem` VALUES ('50', '11', '0');
INSERT INTO `recitem` VALUES ('50', '19', '0');

-- ----------------------------
-- Table structure for recuser
-- ----------------------------
DROP TABLE IF EXISTS `recuser`;
CREATE TABLE `recuser` (
  `userID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `scores` double(255,0) DEFAULT NULL,
  PRIMARY KEY (`userID`,`itemID`),
  KEY `userrecommend_ibfk_2` (`itemID`),
  CONSTRAINT `recuser_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  CONSTRAINT `recuser_ibfk_2` FOREIGN KEY (`itemID`) REFERENCES `item` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recuser
-- ----------------------------
INSERT INTO `recuser` VALUES ('1', '31', '2');
INSERT INTO `recuser` VALUES ('1', '33', '1');
INSERT INTO `recuser` VALUES ('1', '47', '1');
INSERT INTO `recuser` VALUES ('2', '29', '1');
INSERT INTO `recuser` VALUES ('2', '31', '2');
INSERT INTO `recuser` VALUES ('2', '47', '1');
INSERT INTO `recuser` VALUES ('4', '31', '1');
INSERT INTO `recuser` VALUES ('4', '33', '1');
INSERT INTO `recuser` VALUES ('4', '47', '1');
INSERT INTO `recuser` VALUES ('6', '8', '2');
INSERT INTO `recuser` VALUES ('6', '31', '2');
INSERT INTO `recuser` VALUES ('6', '47', '2');
INSERT INTO `recuser` VALUES ('7', '29', '2');
INSERT INTO `recuser` VALUES ('7', '31', '2');
INSERT INTO `recuser` VALUES ('7', '47', '2');
INSERT INTO `recuser` VALUES ('10', '29', '1');
INSERT INTO `recuser` VALUES ('10', '31', '1');
INSERT INTO `recuser` VALUES ('10', '47', '1');
INSERT INTO `recuser` VALUES ('11', '29', '0');
INSERT INTO `recuser` VALUES ('11', '31', '1');
INSERT INTO `recuser` VALUES ('11', '47', '0');
INSERT INTO `recuser` VALUES ('13', '29', '1');
INSERT INTO `recuser` VALUES ('13', '31', '1');
INSERT INTO `recuser` VALUES ('13', '47', '1');
INSERT INTO `recuser` VALUES ('17', '29', '1');
INSERT INTO `recuser` VALUES ('17', '31', '1');
INSERT INTO `recuser` VALUES ('17', '33', '1');
INSERT INTO `recuser` VALUES ('19', '6', '1');
INSERT INTO `recuser` VALUES ('19', '31', '1');
INSERT INTO `recuser` VALUES ('19', '33', '1');
INSERT INTO `recuser` VALUES ('22', '8', '1');
INSERT INTO `recuser` VALUES ('22', '47', '1');
INSERT INTO `recuser` VALUES ('22', '48', '1');
INSERT INTO `recuser` VALUES ('24', '29', '1');
INSERT INTO `recuser` VALUES ('24', '31', '2');
INSERT INTO `recuser` VALUES ('24', '47', '1');
INSERT INTO `recuser` VALUES ('25', '31', '2');
INSERT INTO `recuser` VALUES ('25', '33', '1');
INSERT INTO `recuser` VALUES ('25', '47', '1');
INSERT INTO `recuser` VALUES ('26', '31', '2');
INSERT INTO `recuser` VALUES ('26', '33', '1');
INSERT INTO `recuser` VALUES ('26', '47', '1');
INSERT INTO `recuser` VALUES ('28', '29', '1');
INSERT INTO `recuser` VALUES ('28', '31', '1');
INSERT INTO `recuser` VALUES ('28', '47', '1');
INSERT INTO `recuser` VALUES ('30', '29', '1');
INSERT INTO `recuser` VALUES ('30', '31', '1');
INSERT INTO `recuser` VALUES ('30', '47', '1');
INSERT INTO `recuser` VALUES ('31', '8', '0');
INSERT INTO `recuser` VALUES ('31', '31', '1');
INSERT INTO `recuser` VALUES ('31', '47', '0');
INSERT INTO `recuser` VALUES ('35', '29', '1');
INSERT INTO `recuser` VALUES ('35', '31', '1');
INSERT INTO `recuser` VALUES ('35', '33', '1');
INSERT INTO `recuser` VALUES ('36', '29', '1');
INSERT INTO `recuser` VALUES ('36', '31', '2');
INSERT INTO `recuser` VALUES ('36', '47', '1');
INSERT INTO `recuser` VALUES ('38', '9', '0');
INSERT INTO `recuser` VALUES ('38', '27', '0');
INSERT INTO `recuser` VALUES ('38', '31', '1');
INSERT INTO `recuser` VALUES ('41', '29', '2');
INSERT INTO `recuser` VALUES ('41', '31', '2');
INSERT INTO `recuser` VALUES ('41', '47', '2');
INSERT INTO `recuser` VALUES ('43', '29', '1');
INSERT INTO `recuser` VALUES ('43', '31', '1');
INSERT INTO `recuser` VALUES ('43', '47', '1');
INSERT INTO `recuser` VALUES ('45', '9', '1');
INSERT INTO `recuser` VALUES ('45', '27', '1');
INSERT INTO `recuser` VALUES ('45', '31', '1');
INSERT INTO `recuser` VALUES ('49', '8', '0');
INSERT INTO `recuser` VALUES ('49', '31', '0');
INSERT INTO `recuser` VALUES ('49', '47', '0');
INSERT INTO `recuser` VALUES ('50', '8', '2');
INSERT INTO `recuser` VALUES ('50', '29', '2');
INSERT INTO `recuser` VALUES ('50', '47', '2');
INSERT INTO `recuser` VALUES ('51', '1', '1');
INSERT INTO `recuser` VALUES ('51', '9', '2');
INSERT INTO `recuser` VALUES ('51', '27', '1');
INSERT INTO `recuser` VALUES ('52', '6', '1');
INSERT INTO `recuser` VALUES ('52', '31', '2');
INSERT INTO `recuser` VALUES ('52', '33', '1');
INSERT INTO `recuser` VALUES ('58', '3', '0');
INSERT INTO `recuser` VALUES ('58', '31', '1');
INSERT INTO `recuser` VALUES ('58', '47', '1');
INSERT INTO `recuser` VALUES ('64', '29', '2');
INSERT INTO `recuser` VALUES ('64', '31', '2');
INSERT INTO `recuser` VALUES ('64', '47', '2');
INSERT INTO `recuser` VALUES ('68', '29', '0');
INSERT INTO `recuser` VALUES ('68', '31', '0');
INSERT INTO `recuser` VALUES ('68', '47', '0');
INSERT INTO `recuser` VALUES ('72', '31', '2');
INSERT INTO `recuser` VALUES ('72', '33', '2');
INSERT INTO `recuser` VALUES ('72', '47', '2');
INSERT INTO `recuser` VALUES ('76', '29', '2');
INSERT INTO `recuser` VALUES ('76', '31', '3');
INSERT INTO `recuser` VALUES ('76', '47', '2');
INSERT INTO `recuser` VALUES ('79', '31', '1');
INSERT INTO `recuser` VALUES ('79', '33', '1');
INSERT INTO `recuser` VALUES ('79', '47', '1');
INSERT INTO `recuser` VALUES ('80', '29', '0');
INSERT INTO `recuser` VALUES ('80', '31', '1');
INSERT INTO `recuser` VALUES ('80', '33', '0');
INSERT INTO `recuser` VALUES ('83', '29', '2');
INSERT INTO `recuser` VALUES ('83', '31', '2');
INSERT INTO `recuser` VALUES ('83', '47', '2');
INSERT INTO `recuser` VALUES ('85', '8', '1');
INSERT INTO `recuser` VALUES ('85', '30', '1');
INSERT INTO `recuser` VALUES ('85', '48', '1');
INSERT INTO `recuser` VALUES ('86', '8', '0');
INSERT INTO `recuser` VALUES ('86', '30', '0');
INSERT INTO `recuser` VALUES ('86', '31', '1');
INSERT INTO `recuser` VALUES ('87', '29', '1');
INSERT INTO `recuser` VALUES ('87', '31', '2');
INSERT INTO `recuser` VALUES ('87', '47', '1');
INSERT INTO `recuser` VALUES ('89', '8', '2');
INSERT INTO `recuser` VALUES ('89', '13', '2');
INSERT INTO `recuser` VALUES ('89', '30', '2');
INSERT INTO `recuser` VALUES ('92', '3', '1');
INSERT INTO `recuser` VALUES ('92', '31', '1');
INSERT INTO `recuser` VALUES ('92', '37', '1');
INSERT INTO `recuser` VALUES ('96', '1', '1');
INSERT INTO `recuser` VALUES ('96', '9', '1');
INSERT INTO `recuser` VALUES ('96', '31', '1');
INSERT INTO `recuser` VALUES ('97', '8', '1');
INSERT INTO `recuser` VALUES ('97', '30', '1');
INSERT INTO `recuser` VALUES ('97', '31', '2');
INSERT INTO `recuser` VALUES ('98', '29', '1');
INSERT INTO `recuser` VALUES ('98', '31', '1');
INSERT INTO `recuser` VALUES ('98', '47', '1');
INSERT INTO `recuser` VALUES ('99', '29', '2');
INSERT INTO `recuser` VALUES ('99', '31', '2');
INSERT INTO `recuser` VALUES ('99', '47', '2');
INSERT INTO `recuser` VALUES ('101', '29', '2');
INSERT INTO `recuser` VALUES ('101', '31', '2');
INSERT INTO `recuser` VALUES ('101', '47', '2');
INSERT INTO `recuser` VALUES ('102', '8', '1');
INSERT INTO `recuser` VALUES ('102', '47', '1');
INSERT INTO `recuser` VALUES ('102', '48', '1');
INSERT INTO `recuser` VALUES ('106', '29', '1');
INSERT INTO `recuser` VALUES ('106', '31', '1');
INSERT INTO `recuser` VALUES ('106', '47', '1');
INSERT INTO `recuser` VALUES ('113', '3', '1');
INSERT INTO `recuser` VALUES ('113', '31', '1');
INSERT INTO `recuser` VALUES ('113', '37', '1');
INSERT INTO `recuser` VALUES ('116', '29', '1');
INSERT INTO `recuser` VALUES ('116', '44', '1');
INSERT INTO `recuser` VALUES ('116', '47', '1');
INSERT INTO `recuser` VALUES ('117', '8', '1');
INSERT INTO `recuser` VALUES ('117', '30', '1');
INSERT INTO `recuser` VALUES ('117', '48', '1');
INSERT INTO `recuser` VALUES ('118', '8', '1');
INSERT INTO `recuser` VALUES ('118', '29', '1');
INSERT INTO `recuser` VALUES ('118', '47', '1');
INSERT INTO `recuser` VALUES ('124', '1', '1');
INSERT INTO `recuser` VALUES ('124', '9', '1');
INSERT INTO `recuser` VALUES ('124', '31', '1');
INSERT INTO `recuser` VALUES ('127', '8', '2');
INSERT INTO `recuser` VALUES ('127', '29', '2');
INSERT INTO `recuser` VALUES ('127', '47', '2');
INSERT INTO `recuser` VALUES ('131', '1', '0');
INSERT INTO `recuser` VALUES ('131', '9', '1');
INSERT INTO `recuser` VALUES ('131', '31', '1');
INSERT INTO `recuser` VALUES ('141', '8', '1');
INSERT INTO `recuser` VALUES ('141', '30', '1');
INSERT INTO `recuser` VALUES ('141', '31', '1');
INSERT INTO `recuser` VALUES ('146', '29', '0');
INSERT INTO `recuser` VALUES ('146', '31', '0');
INSERT INTO `recuser` VALUES ('146', '47', '0');
INSERT INTO `recuser` VALUES ('148', '29', '2');
INSERT INTO `recuser` VALUES ('148', '31', '3');
INSERT INTO `recuser` VALUES ('148', '33', '2');
INSERT INTO `recuser` VALUES ('149', '8', '1');
INSERT INTO `recuser` VALUES ('149', '30', '1');
INSERT INTO `recuser` VALUES ('149', '31', '1');
INSERT INTO `recuser` VALUES ('152', '8', '1');
INSERT INTO `recuser` VALUES ('152', '47', '1');
INSERT INTO `recuser` VALUES ('152', '48', '1');
INSERT INTO `recuser` VALUES ('158', '8', '1');
INSERT INTO `recuser` VALUES ('158', '29', '1');
INSERT INTO `recuser` VALUES ('158', '47', '1');
INSERT INTO `recuser` VALUES ('164', '8', '2');
INSERT INTO `recuser` VALUES ('164', '47', '2');
INSERT INTO `recuser` VALUES ('164', '48', '2');
INSERT INTO `recuser` VALUES ('165', '31', '2');
INSERT INTO `recuser` VALUES ('165', '33', '1');
INSERT INTO `recuser` VALUES ('165', '47', '1');
INSERT INTO `recuser` VALUES ('167', '8', '2');
INSERT INTO `recuser` VALUES ('167', '30', '2');
INSERT INTO `recuser` VALUES ('167', '31', '2');
INSERT INTO `recuser` VALUES ('169', '31', '2');
INSERT INTO `recuser` VALUES ('169', '33', '2');
INSERT INTO `recuser` VALUES ('169', '47', '2');
INSERT INTO `recuser` VALUES ('171', '29', '1');
INSERT INTO `recuser` VALUES ('171', '31', '1');
INSERT INTO `recuser` VALUES ('171', '47', '1');
INSERT INTO `recuser` VALUES ('174', '29', '0');
INSERT INTO `recuser` VALUES ('174', '44', '0');
INSERT INTO `recuser` VALUES ('174', '47', '0');
INSERT INTO `recuser` VALUES ('177', '29', '1');
INSERT INTO `recuser` VALUES ('177', '31', '1');
INSERT INTO `recuser` VALUES ('177', '47', '1');
INSERT INTO `recuser` VALUES ('179', '29', '1');
INSERT INTO `recuser` VALUES ('179', '31', '1');
INSERT INTO `recuser` VALUES ('179', '47', '1');
INSERT INTO `recuser` VALUES ('183', '29', '0');
INSERT INTO `recuser` VALUES ('183', '31', '0');
INSERT INTO `recuser` VALUES ('183', '47', '0');
INSERT INTO `recuser` VALUES ('185', '29', '1');
INSERT INTO `recuser` VALUES ('185', '31', '1');
INSERT INTO `recuser` VALUES ('185', '47', '1');
INSERT INTO `recuser` VALUES ('190', '8', '2');
INSERT INTO `recuser` VALUES ('190', '31', '2');
INSERT INTO `recuser` VALUES ('190', '47', '2');
INSERT INTO `recuser` VALUES ('191', '3', '1');
INSERT INTO `recuser` VALUES ('191', '31', '1');
INSERT INTO `recuser` VALUES ('191', '37', '1');
INSERT INTO `recuser` VALUES ('195', '31', '2');
INSERT INTO `recuser` VALUES ('195', '33', '1');
INSERT INTO `recuser` VALUES ('195', '47', '1');
INSERT INTO `recuser` VALUES ('196', '29', '1');
INSERT INTO `recuser` VALUES ('196', '31', '1');
INSERT INTO `recuser` VALUES ('196', '47', '1');
INSERT INTO `recuser` VALUES ('197', '29', '2');
INSERT INTO `recuser` VALUES ('197', '31', '1');
INSERT INTO `recuser` VALUES ('197', '47', '1');
INSERT INTO `recuser` VALUES ('198', '31', '1');
INSERT INTO `recuser` VALUES ('198', '33', '1');
INSERT INTO `recuser` VALUES ('198', '47', '1');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `userID` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`userID`),
  CONSTRAINT `test_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0', 'user-c91eb681cb046163e');
INSERT INTO `user` VALUES ('1', 'user-faec71de16f3f7ed3');
INSERT INTO `user` VALUES ('2', 'user-0a9dbb2d938c00f85');
INSERT INTO `user` VALUES ('3', 'user-6ae366aa8ee37ddcd');
INSERT INTO `user` VALUES ('4', 'user-c9966b582bc2a62b6');
INSERT INTO `user` VALUES ('5', 'user-58d585658fa65f1cc');
INSERT INTO `user` VALUES ('6', 'user-78a6be8f544185532');
INSERT INTO `user` VALUES ('7', 'user-a9de3ef8e63c0e458');
INSERT INTO `user` VALUES ('8', 'user-6ba119b230fe40b82');
INSERT INTO `user` VALUES ('9', 'user-39501f4a57b61bfdc');
INSERT INTO `user` VALUES ('10', 'user-5a9992ec5a11edf27');
INSERT INTO `user` VALUES ('11', 'user-8ab94866cf4fd96a4');
INSERT INTO `user` VALUES ('12', 'user-59d6eea1713a1b5b3');
INSERT INTO `user` VALUES ('13', 'user-9abc4cbaae8b98602');
INSERT INTO `user` VALUES ('14', 'user-7ae6fe69a94639d8f');
INSERT INTO `user` VALUES ('15', 'user-4bfb033f3e15d673e');
INSERT INTO `user` VALUES ('16', 'user-4a5f64b7932fd2e51');
INSERT INTO `user` VALUES ('17', 'user-9a8f8eb0ed0b3431d');
INSERT INTO `user` VALUES ('18', 'user-79634300ed49a0c7a');
INSERT INTO `user` VALUES ('19', 'user-0ae58b66e3ba49277');
INSERT INTO `user` VALUES ('20', 'user-88ded099b4453151b');
INSERT INTO `user` VALUES ('21', 'user-084c830bb34d52dda');
INSERT INTO `user` VALUES ('22', 'user-780e7b7b7519f290f');
INSERT INTO `user` VALUES ('23', 'user-3a691e38e19cf88c7');
INSERT INTO `user` VALUES ('24', 'user-7a74aae78668a4326');
INSERT INTO `user` VALUES ('25', 'user-b95301882923d156f');
INSERT INTO `user` VALUES ('26', 'user-38ed3fbe495e94d60');
INSERT INTO `user` VALUES ('27', 'user-6b65acfdad83d4b7b');
INSERT INTO `user` VALUES ('28', 'user-9953df00b6a069339');
INSERT INTO `user` VALUES ('29', 'user-59d44e24c53ac3010');
INSERT INTO `user` VALUES ('30', 'user-3a16083997f71da41');
INSERT INTO `user` VALUES ('31', 'user-89fa6ba793b8e7926');
INSERT INTO `user` VALUES ('32', 'user-bb6b700c0a5446ded');
INSERT INTO `user` VALUES ('33', 'user-7bb5f4761bf413dbe');
INSERT INTO `user` VALUES ('34', 'user-89fbace342bbb4f8b');
INSERT INTO `user` VALUES ('35', 'user-fb01e19c381d2451f');
INSERT INTO `user` VALUES ('36', 'user-f9f9cdc4188a7ba51');
INSERT INTO `user` VALUES ('37', 'user-0a00b57255920a651');
INSERT INTO `user` VALUES ('38', 'user-b9b1798884827cf3c');
INSERT INTO `user` VALUES ('39', 'user-ab9d1c6ce886a84b3');
INSERT INTO `user` VALUES ('40', 'user-090423187f8522f8d');
INSERT INTO `user` VALUES ('41', 'user-7833e5403aee508d0');
INSERT INTO `user` VALUES ('42', 'user-aacec0ba19d19ff10');
INSERT INTO `user` VALUES ('43', 'user-eb695730876504243');
INSERT INTO `user` VALUES ('44', 'user-2abfcf7accb9e5e9f');
INSERT INTO `user` VALUES ('45', 'user-59a646e532aa1daa2');
INSERT INTO `user` VALUES ('46', 'user-a9ab62497cc1c136c');
INSERT INTO `user` VALUES ('47', 'user-a99030b4aeb899481');
INSERT INTO `user` VALUES ('48', 'user-b9c59172de2df3f23');
INSERT INTO `user` VALUES ('49', 'user-fb9b21aa594fa9ca6');
INSERT INTO `user` VALUES ('50', 'user-6bcfa35e9f8619bb0');
INSERT INTO `user` VALUES ('51', 'user-495845312e4025e43');
INSERT INTO `user` VALUES ('52', 'user-3bcaef7dd3788f632');
INSERT INTO `user` VALUES ('53', 'user-b9aa6724d185d9b4a');
INSERT INTO `user` VALUES ('54', 'user-fb3adc3ec2e7213d3');
INSERT INTO `user` VALUES ('55', 'user-484572bec50d5b2d1');
INSERT INTO `user` VALUES ('56', 'user-cba0cd153a1a46c49');
INSERT INTO `user` VALUES ('57', 'user-db7bc8e53f641c441');
INSERT INTO `user` VALUES ('58', 'user-989575ab72c523d36');
INSERT INTO `user` VALUES ('59', 'user-1bd6a691054ed64b6');
INSERT INTO `user` VALUES ('60', 'user-791a1d75c6d059034');
INSERT INTO `user` VALUES ('61', 'user-9b6e411b241911c70');
INSERT INTO `user` VALUES ('62', 'user-08dba70144e2b9f46');
INSERT INTO `user` VALUES ('63', 'user-5a1998e39a1497512');
INSERT INTO `user` VALUES ('64', 'user-2a9905da9febb93db');
INSERT INTO `user` VALUES ('65', 'user-58bf552aeefc2fb70');
INSERT INTO `user` VALUES ('66', 'user-8a7dbc5ff427c7992');
INSERT INTO `user` VALUES ('67', 'user-eb192fc796966f391');
INSERT INTO `user` VALUES ('68', 'user-aab249712a1d69fc7');
INSERT INTO `user` VALUES ('69', 'user-6bfb2d1d30a9a3e20');
INSERT INTO `user` VALUES ('70', 'user-b88144ef33c8058b7');
INSERT INTO `user` VALUES ('71', 'user-8b3100c3f26d2114e');
INSERT INTO `user` VALUES ('72', 'user-da6f889b31b24eea4');
INSERT INTO `user` VALUES ('73', 'user-4a78dd531ad737098');
INSERT INTO `user` VALUES ('74', 'user-faad6f95f10133043');
INSERT INTO `user` VALUES ('75', 'user-e8d66940ebd9873a6');
INSERT INTO `user` VALUES ('76', 'user-a8cff5119dc98ae46');
INSERT INTO `user` VALUES ('77', 'user-6a2d2682fe1e6a8ee');
INSERT INTO `user` VALUES ('78', 'user-491a9d6e488022ebf');
INSERT INTO `user` VALUES ('79', 'user-7b74956bafda4551a');
INSERT INTO `user` VALUES ('80', 'user-19d173a604943549b');
INSERT INTO `user` VALUES ('81', 'user-d8a345ed0f97a2242');
INSERT INTO `user` VALUES ('82', 'user-e8d52b3348b6d97ae');
INSERT INTO `user` VALUES ('83', 'user-4a85909dee611e54e');
INSERT INTO `user` VALUES ('84', 'user-299313f75baabdb86');
INSERT INTO `user` VALUES ('85', 'user-486938ace310bf596');
INSERT INTO `user` VALUES ('86', 'user-e94cdc0a583fd0583');
INSERT INTO `user` VALUES ('87', 'user-99441a6f7c2ea49b7');
INSERT INTO `user` VALUES ('88', 'user-7a6b98ea6e4e81be7');
INSERT INTO `user` VALUES ('89', 'user-583a36e84519b61d2');
INSERT INTO `user` VALUES ('90', 'user-a8df9e087e979104b');
INSERT INTO `user` VALUES ('91', 'user-79a514c21b0c703b7');
INSERT INTO `user` VALUES ('92', 'user-2b4cd273dbd5d9e0b');
INSERT INTO `user` VALUES ('93', 'user-596c61b62299ab927');
INSERT INTO `user` VALUES ('94', 'user-bb536915a1e1e98da');
INSERT INTO `user` VALUES ('95', 'user-cbd122c4162298319');
INSERT INTO `user` VALUES ('96', 'user-48260476cb862cd4a');
INSERT INTO `user` VALUES ('97', 'user-4a6b6d3c2a18e616c');
INSERT INTO `user` VALUES ('98', 'user-f9b675cbae2e931c4');
INSERT INTO `user` VALUES ('99', 'user-db4770b4cd657b8e9');
INSERT INTO `user` VALUES ('100', 'user-3a9c9fbc9457c5ea5');
INSERT INTO `user` VALUES ('101', 'user-8b4ec2f853ef2c382');
INSERT INTO `user` VALUES ('102', 'user-1afc50f4ec867ea1e');
INSERT INTO `user` VALUES ('103', 'user-c9b75d666f1e0a7e1');
INSERT INTO `user` VALUES ('104', 'user-cbf79fba3ba04a5ac');
INSERT INTO `user` VALUES ('105', 'user-58bfb129044615e2e');
INSERT INTO `user` VALUES ('106', 'user-c8233e098e541142e');
INSERT INTO `user` VALUES ('107', 'user-f8ff5e71d04e78366');
INSERT INTO `user` VALUES ('108', 'user-e867a4adc7d82235d');
INSERT INTO `user` VALUES ('109', 'user-3ad42882b5c4253c2');
INSERT INTO `user` VALUES ('110', 'user-58e31e81e3497f584');
INSERT INTO `user` VALUES ('111', 'user-d87c0d18076eb92f2');
INSERT INTO `user` VALUES ('112', 'user-b8fbebe8a6548a43b');
INSERT INTO `user` VALUES ('113', 'user-7a1e88c7e2d6e3b54');
INSERT INTO `user` VALUES ('114', 'user-d95242db767c367a6');
INSERT INTO `user` VALUES ('115', 'user-1acbe4f6e3ab5b5b2');
INSERT INTO `user` VALUES ('116', 'user-a909220fdb6b2d708');
INSERT INTO `user` VALUES ('117', 'user-b8f1059e319800941');
INSERT INTO `user` VALUES ('118', 'user-9acd85634a9842f8d');
INSERT INTO `user` VALUES ('119', 'user-7ade34a6bef8c1a47');
INSERT INTO `user` VALUES ('120', 'user-db2981a4b7410a952');
INSERT INTO `user` VALUES ('121', 'user-082e8f055ac8ddc41');
INSERT INTO `user` VALUES ('122', 'user-19e2f7aea2e9a8288');
INSERT INTO `user` VALUES ('123', 'user-28e95b89176bdae43');
INSERT INTO `user` VALUES ('124', 'user-186ac9d47ba4f47aa');
INSERT INTO `user` VALUES ('125', 'user-b987188ae1af73be3');
INSERT INTO `user` VALUES ('126', 'user-5879910ff26b1ec99');
INSERT INTO `user` VALUES ('127', 'user-2a3ab3923117390f7');
INSERT INTO `user` VALUES ('128', 'user-6b6e4dd8f08a3bb86');
INSERT INTO `user` VALUES ('129', 'user-9a1db958f0921a498');
INSERT INTO `user` VALUES ('130', 'user-ca4f40dca4c99a627');
INSERT INTO `user` VALUES ('131', 'user-c8f26239996f6d0ec');
INSERT INTO `user` VALUES ('132', 'user-4940eafedf59c90a1');
INSERT INTO `user` VALUES ('133', 'user-bbb985b1fe69347ab');
INSERT INTO `user` VALUES ('134', 'user-48022c4eb42477b8d');
INSERT INTO `user` VALUES ('135', 'user-ca77d74c2a609d9ca');
INSERT INTO `user` VALUES ('136', 'user-1bb0c72ed531eb103');
INSERT INTO `user` VALUES ('137', 'user-9ac14e2da5190014a');
INSERT INTO `user` VALUES ('138', 'user-4a2071fcf54516e7d');
INSERT INTO `user` VALUES ('139', 'user-09074246c6baa6218');
INSERT INTO `user` VALUES ('140', 'user-d8d512d00e4721bdf');
INSERT INTO `user` VALUES ('141', 'user-489b10f8c12b332de');
INSERT INTO `user` VALUES ('142', 'user-89deba95ccafa2be7');
INSERT INTO `user` VALUES ('143', 'user-f922b9a22a9d372a9');
INSERT INTO `user` VALUES ('144', 'user-db96c9f046f344907');
INSERT INTO `user` VALUES ('145', 'user-dbc26d1dbb89b4c96');
INSERT INTO `user` VALUES ('146', 'user-0b22a8829df3347a9');
INSERT INTO `user` VALUES ('147', 'user-f85e9e864db8c50cd');
INSERT INTO `user` VALUES ('148', 'user-1889e14d33e493c5e');
INSERT INTO `user` VALUES ('149', 'user-b90fcf8d0cf66e0a7');
INSERT INTO `user` VALUES ('150', 'user-fa023abce6ef697d6');
INSERT INTO `user` VALUES ('151', 'user-aa36b8fa74a3ae516');
INSERT INTO `user` VALUES ('152', 'user-eac0d873e890ae2d5');
INSERT INTO `user` VALUES ('153', 'user-5b3c529046a775b9d');
INSERT INTO `user` VALUES ('154', 'user-ca32b74a2236876ff');
INSERT INTO `user` VALUES ('155', 'user-5818c90ff3f1ccbe2');
INSERT INTO `user` VALUES ('156', 'user-ca7df3e98ea950a39');
INSERT INTO `user` VALUES ('157', 'user-897a2d25468216ae7');
INSERT INTO `user` VALUES ('158', 'user-09cc1273ee64fb3aa');
INSERT INTO `user` VALUES ('159', 'user-cbf9a528aba9ca53d');
INSERT INTO `user` VALUES ('160', 'user-4b3537731337ef21e');
INSERT INTO `user` VALUES ('161', 'user-691d492748e4fa173');
INSERT INTO `user` VALUES ('162', 'user-8baf4d7c2fabf90ef');
INSERT INTO `user` VALUES ('163', 'user-b86a8a103e5556b0b');
INSERT INTO `user` VALUES ('164', 'user-db502eda2b5516657');
INSERT INTO `user` VALUES ('165', 'user-3a3bfb45f88dd4f91');
INSERT INTO `user` VALUES ('166', 'user-0b96db8f1f4fb7736');
INSERT INTO `user` VALUES ('167', 'user-39781cc931c61b205');
INSERT INTO `user` VALUES ('168', 'user-8a046ddf440ef91aa');
INSERT INTO `user` VALUES ('169', 'user-6b37cf64756709c44');
INSERT INTO `user` VALUES ('170', 'user-0b128b7866c834ede');
INSERT INTO `user` VALUES ('171', 'user-09bf364b1556a1136');
INSERT INTO `user` VALUES ('172', 'user-48c8e4a445e9cca19');
INSERT INTO `user` VALUES ('173', 'user-da307b902ea5054c0');
INSERT INTO `user` VALUES ('174', 'user-4ab2906eb57f991c5');
INSERT INTO `user` VALUES ('175', 'user-6a2d9697d9d8ac622');
INSERT INTO `user` VALUES ('176', 'user-8b9896935145c628c');
INSERT INTO `user` VALUES ('177', 'user-3b68a2c9c889a576c');
INSERT INTO `user` VALUES ('178', 'user-caf74656ff460adb5');
INSERT INTO `user` VALUES ('179', 'user-cb93db42e637423f7');
INSERT INTO `user` VALUES ('180', 'user-db620a034bdcf03d4');
INSERT INTO `user` VALUES ('181', 'user-19f6e8b3fb90a9526');
INSERT INTO `user` VALUES ('182', 'user-288a49983281b4365');
INSERT INTO `user` VALUES ('183', 'user-b95070727314f31e5');
INSERT INTO `user` VALUES ('184', 'user-db1a73bf017a5b027');
INSERT INTO `user` VALUES ('185', 'user-d90cd40440957372a');
INSERT INTO `user` VALUES ('186', 'user-18cf48bfb358a67d6');
INSERT INTO `user` VALUES ('187', 'user-38ff9adbf91b1c734');
INSERT INTO `user` VALUES ('188', 'user-a941b91e820c078c8');
INSERT INTO `user` VALUES ('189', 'user-5b05b88a644bdf59c');
INSERT INTO `user` VALUES ('190', 'user-4864fd12ebe0871e0');
INSERT INTO `user` VALUES ('191', 'user-4a5102a09449b920a');
INSERT INTO `user` VALUES ('192', 'user-a997a6a79303f7313');
INSERT INTO `user` VALUES ('193', 'user-291b52f4986cc0d66');
INSERT INTO `user` VALUES ('194', 'user-49d6cfc4d663cd7ca');
INSERT INTO `user` VALUES ('195', 'user-a809099353f0bbe2c');
INSERT INTO `user` VALUES ('196', 'user-fb1fbe3dba1417427');
INSERT INTO `user` VALUES ('197', 'user-2bae99974d52a7c1b');
INSERT INTO `user` VALUES ('198', 'user-eb0f6b03f4cad308a');
INSERT INTO `user` VALUES ('199', 'user-78b43afdb7dc7c9d0');
INSERT INTO `user` VALUES ('200', 'user-182981a3bfb40f6a9');
INSERT INTO `user` VALUES ('201', 'user-0bf35a0863d8aaa93');
INSERT INTO `user` VALUES ('202', 'user-5bee68dd6a8080421');
INSERT INTO `user` VALUES ('203', 'user-49e841acc274222a8');
INSERT INTO `user` VALUES ('204', 'user-2b2fa0e4870f91ca4');
INSERT INTO `user` VALUES ('205', 'user-0a41c700f5f587e31');
INSERT INTO `user` VALUES ('206', 'user-d9b6b85236204f969');
INSERT INTO `user` VALUES ('207', 'user-c84d023a80bf3f070');
INSERT INTO `user` VALUES ('208', 'user-a9d20f4397a905a55');
INSERT INTO `user` VALUES ('209', 'user-d8943bf6dfaa7fe65');
INSERT INTO `user` VALUES ('210', 'user-9babe613ed92c3071');
INSERT INTO `user` VALUES ('211', 'user-db5159cc759634319');
INSERT INTO `user` VALUES ('212', 'user-a8518a4105998e6d7');
INSERT INTO `user` VALUES ('213', 'user-8ad7b78df3d0650c5');
INSERT INTO `user` VALUES ('214', 'user-fb2bd618af027476a');
INSERT INTO `user` VALUES ('215', 'user-9bc887d6e1e1f5adb');
INSERT INTO `user` VALUES ('216', 'user-1acb6c3b0bb796ea0');
INSERT INTO `user` VALUES ('217', 'user-aabf8eed24f92e146');
INSERT INTO `user` VALUES ('218', 'user-2a4abced217b56cea');
INSERT INTO `user` VALUES ('219', 'user-29f22dd8a7ec829b8');
INSERT INTO `user` VALUES ('220', 'user-0883ab28940bf500d');
INSERT INTO `user` VALUES ('221', 'user-e8ca63427754c036c');
INSERT INTO `user` VALUES ('222', 'user-5be0a2790f92bda3b');
INSERT INTO `user` VALUES ('223', 'user-3b2c1466c80108ed4');
INSERT INTO `user` VALUES ('224', 'user-8b88c56fc60bb9383');
INSERT INTO `user` VALUES ('225', 'user-aba43ce3dec629213');
INSERT INTO `user` VALUES ('226', 'user-3869113d5d096c7e6');
INSERT INTO `user` VALUES ('227', 'user-883b77244a6497071');
INSERT INTO `user` VALUES ('228', 'user-692a777f1cfaddde8');
INSERT INTO `user` VALUES ('229', 'user-e9b0a003935cc6c0e');
INSERT INTO `user` VALUES ('230', 'user-4ae4808b8a85e4a4c');
INSERT INTO `user` VALUES ('231', 'user-692624da40182b181');
INSERT INTO `user` VALUES ('232', 'user-fa51d11d5da8a3a71');
INSERT INTO `user` VALUES ('233', 'user-a99da4ddd8c25eb65');
INSERT INTO `user` VALUES ('234', 'user-19256b860b186a602');
INSERT INTO `user` VALUES ('235', 'user-8b5292be917ef6140');
INSERT INTO `user` VALUES ('236', 'user-7a9b1645638f75c9c');
INSERT INTO `user` VALUES ('237', 'user-4955db4ac2dc7d2b3');
INSERT INTO `user` VALUES ('238', 'user-9a40ac368708690b1');
INSERT INTO `user` VALUES ('239', 'user-0bfa7e48b20766bcd');
INSERT INTO `user` VALUES ('240', 'user-29f8bb60e22962a70');
INSERT INTO `user` VALUES ('241', 'user-691089050994c11ef');
INSERT INTO `user` VALUES ('242', 'user-b84279a6b2575ba7b');
INSERT INTO `user` VALUES ('243', 'user-59d45080aab0409dc');
INSERT INTO `user` VALUES ('244', 'user-29186ef6fff5e2404');
INSERT INTO `user` VALUES ('245', 'user-db800c41f4279ff32');
INSERT INTO `user` VALUES ('246', 'user-6b1cdab1ba4809f36');
INSERT INTO `user` VALUES ('247', 'user-3b0e6c9af8e87567c');
INSERT INTO `user` VALUES ('248', 'user-ea9a39d4a79726d45');
INSERT INTO `user` VALUES ('249', 'user-a956b58829f65db29');
INSERT INTO `user` VALUES ('250', 'user-a87eee059c44b6697');
INSERT INTO `user` VALUES ('251', 'user-c8e89a038b78b8c46');
INSERT INTO `user` VALUES ('252', 'user-092642e3dc3758ff1');
INSERT INTO `user` VALUES ('253', 'user-f996dc6f6f7698412');
INSERT INTO `user` VALUES ('254', 'user-fa741f69474d20d1f');
INSERT INTO `user` VALUES ('255', 'user-785fe83072b483b82');
INSERT INTO `user` VALUES ('256', 'user-89142a884d5f3c961');
INSERT INTO `user` VALUES ('257', 'user-c9982449852e1f7b3');
INSERT INTO `user` VALUES ('258', 'user-fae629586b910464f');
INSERT INTO `user` VALUES ('259', 'user-da61c368f6e47b63a');
INSERT INTO `user` VALUES ('260', 'user-faf287fe38fbd2cb3');
INSERT INTO `user` VALUES ('261', 'user-98e9c1bf0ca081dff');
INSERT INTO `user` VALUES ('262', 'user-f96a56f0fcbc1e62b');
INSERT INTO `user` VALUES ('263', 'user-793f02c9258eb9cbb');
INSERT INTO `user` VALUES ('264', 'user-d89b8a36a7f152702');
INSERT INTO `user` VALUES ('265', 'user-a897d837dc471afa0');
INSERT INTO `user` VALUES ('266', 'user-2b91549121ef3c666');
INSERT INTO `user` VALUES ('267', 'user-08223ddb7dbddc9aa');
INSERT INTO `user` VALUES ('268', 'user-082de0c58897ee1ad');
INSERT INTO `user` VALUES ('269', 'user-88d96ed7b28f484d3');
INSERT INTO `user` VALUES ('270', 'user-e98d229f661bf51f7');
INSERT INTO `user` VALUES ('271', 'user-48e094c7d8b90987d');
INSERT INTO `user` VALUES ('272', 'user-e80c025c901046d92');
INSERT INTO `user` VALUES ('273', 'user-2a4e74865daf1c1f9');
INSERT INTO `user` VALUES ('274', 'user-787fd2d3c4129405b');
INSERT INTO `user` VALUES ('275', 'user-4b524b2283eb6ae2b');
INSERT INTO `user` VALUES ('276', 'user-7af76d52719a1bca8');
INSERT INTO `user` VALUES ('277', 'user-a90bbeec6656d6e9a');
INSERT INTO `user` VALUES ('278', 'user-495f82dd760bc81a2');
INSERT INTO `user` VALUES ('279', 'user-194cf2c20d13ca904');
INSERT INTO `user` VALUES ('280', 'user-694855d28bf8680e6');
INSERT INTO `user` VALUES ('281', 'user-e88a6e03435da2652');
INSERT INTO `user` VALUES ('282', 'user-ba77824a0b69e8f4b');
INSERT INTO `user` VALUES ('283', 'user-0a187bb548def6aec');
INSERT INTO `user` VALUES ('284', 'user-e97be583aee8b52dc');
INSERT INTO `user` VALUES ('285', 'user-b97252708ad8457a0');
INSERT INTO `user` VALUES ('286', 'user-49fb4fedfc15e9bdd');
INSERT INTO `user` VALUES ('287', 'user-5a05b9fa0083f2998');
INSERT INTO `user` VALUES ('288', 'user-7a338b78d16158ade');
INSERT INTO `user` VALUES ('289', 'user-d85d6d20e432e0629');
INSERT INTO `user` VALUES ('290', 'user-aa281fb5060baba91');
INSERT INTO `user` VALUES ('291', 'user-79f82c5b6374cc255');
INSERT INTO `user` VALUES ('292', 'user-c9da9d1f6219c7ab2');
INSERT INTO `user` VALUES ('293', 'user-db0c7eeed9ce0c3ef');
INSERT INTO `user` VALUES ('294', 'user-cbc27792b181d3017');
INSERT INTO `user` VALUES ('295', 'user-9a630a85e39834e95');
INSERT INTO `user` VALUES ('296', 'user-9b049e1f7d7a09fa0');
INSERT INTO `user` VALUES ('297', 'user-dabecf333aba6693c');
INSERT INTO `user` VALUES ('298', 'user-9877f11dadb001fbe');
INSERT INTO `user` VALUES ('299', 'user-7beaad2af631cfd8e');
INSERT INTO `user` VALUES ('300', 'user-c85390846ce529ed7');
INSERT INTO `user` VALUES ('301', 'user-db952cd1c9fda732f');
INSERT INTO `user` VALUES ('302', 'user-99456e7607b8920af');
INSERT INTO `user` VALUES ('303', 'user-08fbe9b36c531e420');
INSERT INTO `user` VALUES ('304', 'user-5ac059a380dfee113');
INSERT INTO `user` VALUES ('305', 'user-39be0de6dd0aa9884');
INSERT INTO `user` VALUES ('306', 'user-3bd0e70639a77f8ce');
INSERT INTO `user` VALUES ('307', 'user-b82b9a4fc3724fd07');
INSERT INTO `user` VALUES ('308', 'user-18e3306cd1d369d6b');
INSERT INTO `user` VALUES ('309', 'user-193f454f8133a412b');
INSERT INTO `user` VALUES ('310', 'user-682bd2f239912c14d');
INSERT INTO `user` VALUES ('311', 'user-39ab15d93d2a1d567');
INSERT INTO `user` VALUES ('312', 'user-ab55ffc12a0570eb8');
INSERT INTO `user` VALUES ('313', 'user-ba9dc92db283833e9');
INSERT INTO `user` VALUES ('314', 'user-7b108b340daa8f32c');
INSERT INTO `user` VALUES ('315', 'user-6ab647df498a96aef');
INSERT INTO `user` VALUES ('316', 'user-cbd571e099c2dbda6');
INSERT INTO `user` VALUES ('317', 'user-39b11e1cc3cf9bfd2');
INSERT INTO `user` VALUES ('318', 'user-78d98b5fd5513f282');
INSERT INTO `user` VALUES ('319', 'user-6b5ee8d6aabdd29fe');
INSERT INTO `user` VALUES ('320', 'user-eb05cdde0fcc1cb4a');
INSERT INTO `user` VALUES ('321', 'user-ab00b886d53f51ce5');
INSERT INTO `user` VALUES ('322', 'user-a942a8561fd7adeee');
INSERT INTO `user` VALUES ('323', 'user-5a58b4c6f7ea34f97');
INSERT INTO `user` VALUES ('324', 'user-88860716498463667');
INSERT INTO `user` VALUES ('325', 'user-897f55d833100a9ff');
INSERT INTO `user` VALUES ('326', 'user-18188a4a31e8ca284');
INSERT INTO `user` VALUES ('327', 'user-792f948fc1f50b518');
INSERT INTO `user` VALUES ('328', 'user-5a1c2eb9fedb0343e');
INSERT INTO `user` VALUES ('329', 'user-fa4b2b1648dda3c07');
INSERT INTO `user` VALUES ('330', 'user-2966b546c23e9419a');
INSERT INTO `user` VALUES ('331', 'user-9b7d5251d0394583d');
INSERT INTO `user` VALUES ('332', 'user-8aebc23d3f5e60996');
INSERT INTO `user` VALUES ('333', 'user-4b25b7d1064185ffc');
INSERT INTO `user` VALUES ('334', 'user-a9bc589567a43aecf');
INSERT INTO `user` VALUES ('335', 'user-0bd6ad7398dae4d22');
INSERT INTO `user` VALUES ('336', 'user-fa629a061f0144535');
INSERT INTO `user` VALUES ('337', 'user-2ba406dbe611dbb54');
INSERT INTO `user` VALUES ('338', 'user-5ad918f0f43de8936');
INSERT INTO `user` VALUES ('339', 'user-39367cb450a5137a3');
INSERT INTO `user` VALUES ('340', 'user-a867c91dec6f02ea1');
INSERT INTO `user` VALUES ('341', 'user-18c9de9e76488b465');
INSERT INTO `user` VALUES ('342', 'user-181d3646a73818a9f');
INSERT INTO `user` VALUES ('343', 'user-3be92819f6475c78c');
INSERT INTO `user` VALUES ('344', 'user-1867fbeb7d61860a1');
INSERT INTO `user` VALUES ('345', 'user-c864111bc1c0f0aad');
INSERT INTO `user` VALUES ('346', 'user-597c4af7ca304dad8');
INSERT INTO `user` VALUES ('347', 'user-38950b87c877e34a0');
INSERT INTO `user` VALUES ('348', 'user-4a8b194045cd8b661');
INSERT INTO `user` VALUES ('349', 'user-9b67a5eb0871184c5');
INSERT INTO `user` VALUES ('350', 'user-19c5fe6bf1047f002');
INSERT INTO `user` VALUES ('351', 'user-e862e846f91e0c8e2');
INSERT INTO `user` VALUES ('352', 'user-ca31f8a8790948990');
INSERT INTO `user` VALUES ('353', 'user-4b17d0394dc3adfde');
INSERT INTO `user` VALUES ('354', 'user-895808f7627a247fd');
INSERT INTO `user` VALUES ('355', 'user-58f9c7ec65e386d6d');
INSERT INTO `user` VALUES ('356', 'user-48065069528ae9525');
INSERT INTO `user` VALUES ('357', 'user-1ae03af8f91ee6248');
INSERT INTO `user` VALUES ('358', 'user-9be2945aa6fc47e95');
INSERT INTO `user` VALUES ('359', 'user-09fc2c995e0872340');
INSERT INTO `user` VALUES ('360', 'user-29702581563bb88be');
INSERT INTO `user` VALUES ('361', 'user-4908291dded6f48ab');
INSERT INTO `user` VALUES ('362', 'user-d931b3f3e46459ff4');
INSERT INTO `user` VALUES ('363', 'user-8a40b172ab115836a');
INSERT INTO `user` VALUES ('364', 'user-cac0c7e1ae8ce8600');
INSERT INTO `user` VALUES ('365', 'user-696d2d5fcc62f8799');
INSERT INTO `user` VALUES ('366', 'user-cb54567d57200cd94');
INSERT INTO `user` VALUES ('367', 'user-08cc0d29bce5f6f33');
INSERT INTO `user` VALUES ('368', 'user-c992b75544d452301');
INSERT INTO `user` VALUES ('369', 'user-ebb08c3b4a401d6f9');
INSERT INTO `user` VALUES ('370', 'user-59d42b795b4a7af2a');
INSERT INTO `user` VALUES ('371', 'user-08f40eda19e695101');
INSERT INTO `user` VALUES ('372', 'user-ab95cddad788a9636');
INSERT INTO `user` VALUES ('373', 'user-683041e3738e6697b');
INSERT INTO `user` VALUES ('374', 'user-08a4bdd9a00fcc8a6');
INSERT INTO `user` VALUES ('375', 'user-da1bf3f85c7e2d290');
INSERT INTO `user` VALUES ('376', 'user-880021d6f89b07704');
INSERT INTO `user` VALUES ('377', 'user-8a1dd050442e1f4d6');
INSERT INTO `user` VALUES ('378', 'user-dbac11353464bcbb3');
INSERT INTO `user` VALUES ('379', 'user-195b4e20f24bd6320');
INSERT INTO `user` VALUES ('380', 'user-d8556c3b208351226');
INSERT INTO `user` VALUES ('381', 'user-8b19716d26ac368c5');
INSERT INTO `user` VALUES ('382', 'user-0bae74451c2302738');
INSERT INTO `user` VALUES ('383', 'user-4abefabab5aa58b99');
INSERT INTO `user` VALUES ('384', 'user-6b8524d3cfb7ba73f');
INSERT INTO `user` VALUES ('385', 'user-38aed051f31f5415c');
INSERT INTO `user` VALUES ('386', 'user-aab3c3f05e5557a3f');
INSERT INTO `user` VALUES ('387', 'user-79bd290c6ec9194fb');
INSERT INTO `user` VALUES ('388', 'user-e898e2cdf04e5c393');
INSERT INTO `user` VALUES ('389', 'user-089670ab3de6055a4');
INSERT INTO `user` VALUES ('390', 'user-daf965c7d2582eb19');
INSERT INTO `user` VALUES ('391', 'user-2ac015a150bd0d021');
INSERT INTO `user` VALUES ('392', 'user-8a0793e83e0781e6b');
INSERT INTO `user` VALUES ('393', 'user-4b703db0212f00ee1');
INSERT INTO `user` VALUES ('394', 'user-1921b9c30905b023f');
INSERT INTO `user` VALUES ('395', 'user-798673c4de82b3d80');
INSERT INTO `user` VALUES ('396', 'user-78ea36a6b30216b1b');
INSERT INTO `user` VALUES ('397', 'user-a919bbb2cb8d24215');
INSERT INTO `user` VALUES ('398', 'user-bb778b6e5ffae2c15');
INSERT INTO `user` VALUES ('399', 'user-58e20445c842a02bd');
INSERT INTO `user` VALUES ('400', 'user-18af6529081597ccf');
INSERT INTO `user` VALUES ('401', 'user-295fa739ba1cf0e08');
INSERT INTO `user` VALUES ('402', 'user-3a8765424e3800b70');
INSERT INTO `user` VALUES ('403', 'user-29ed67ea68b495c32');
INSERT INTO `user` VALUES ('404', 'user-f8affb00b944d2471');
INSERT INTO `user` VALUES ('405', 'user-59a085b7c24db8382');
INSERT INTO `user` VALUES ('406', 'user-1bc95459dc4a5cd2b');
INSERT INTO `user` VALUES ('407', 'user-6836afe3dba37604a');
INSERT INTO `user` VALUES ('408', 'user-095515ff1189d288a');
INSERT INTO `user` VALUES ('409', 'user-d971879f4e70982cc');
INSERT INTO `user` VALUES ('410', 'user-f9e625d26aee0c8bc');
INSERT INTO `user` VALUES ('411', 'user-194dc57be41a153ec');
INSERT INTO `user` VALUES ('412', 'user-cafc39f32c5d45bf2');
INSERT INTO `user` VALUES ('413', 'user-0825d7fe0a7cf43f2');
INSERT INTO `user` VALUES ('414', 'user-aa3cf2e04d1e8c3dc');
INSERT INTO `user` VALUES ('415', 'user-2b628d06ca57eaf56');
INSERT INTO `user` VALUES ('416', 'user-69f0ca70d5fc63ac8');
INSERT INTO `user` VALUES ('417', 'user-6b40495372a3672e6');
INSERT INTO `user` VALUES ('418', 'user-d8779adfe80508116');
INSERT INTO `user` VALUES ('419', 'user-28a2bfaffe00cae4a');
INSERT INTO `user` VALUES ('420', 'user-68d2b58833bf86d8c');
INSERT INTO `user` VALUES ('421', 'user-5b0a9904aac552953');
INSERT INTO `user` VALUES ('422', 'user-5af3545b9ceae1d9f');
INSERT INTO `user` VALUES ('423', 'user-fb6bf545dc51ce832');
INSERT INTO `user` VALUES ('424', 'user-db45a48a26c0124a4');
INSERT INTO `user` VALUES ('425', 'user-ea026ead68dab62f5');
INSERT INTO `user` VALUES ('426', 'user-9a5ef95dc2d15e8a0');
INSERT INTO `user` VALUES ('427', 'user-3a9428014c72725e7');
INSERT INTO `user` VALUES ('428', 'user-4be9beed398516b37');
INSERT INTO `user` VALUES ('429', 'user-5bed46fff6ac6cd4a');
INSERT INTO `user` VALUES ('430', 'user-ba965a5769650769d');
INSERT INTO `user` VALUES ('431', 'user-cb97b029590ed2877');
INSERT INTO `user` VALUES ('432', 'user-491448c42b96d8dc4');
INSERT INTO `user` VALUES ('433', 'user-38fa6a9b888dd9e52');
INSERT INTO `user` VALUES ('434', 'user-181e6885d7208c853');
INSERT INTO `user` VALUES ('435', 'user-18a4d7550f2dd9d3b');
INSERT INTO `user` VALUES ('436', 'user-48787a12aa207d89b');
INSERT INTO `user` VALUES ('437', 'user-c9ca58773a7132a6f');
INSERT INTO `user` VALUES ('438', 'user-5aaff2cbb88b4cd35');
INSERT INTO `user` VALUES ('439', 'user-f9fa48d40030d23bb');
INSERT INTO `user` VALUES ('440', 'user-a9ad6453beacfbcb8');
INSERT INTO `user` VALUES ('441', 'user-28515bbba107abe86');
INSERT INTO `user` VALUES ('442', 'user-0b0fb30a0dab3e597');
INSERT INTO `user` VALUES ('443', 'user-18bd8850c5b188e53');
INSERT INTO `user` VALUES ('444', 'user-0b9f4022c08275a63');
INSERT INTO `user` VALUES ('445', 'user-2a9eaea64202b0354');
INSERT INTO `user` VALUES ('446', 'user-19d20cf9db7fd9ce4');
INSERT INTO `user` VALUES ('447', 'user-191ad9a6277e2cce7');
INSERT INTO `user` VALUES ('448', 'user-580b20cbb29da3c23');
INSERT INTO `user` VALUES ('449', 'user-280b7c83bc75a431a');
INSERT INTO `user` VALUES ('450', 'user-d8e51edd424a69cd7');
INSERT INTO `user` VALUES ('451', 'user-aa7514a9ea325f6bd');
INSERT INTO `user` VALUES ('452', 'user-d85eca7bfce04b6ff');
INSERT INTO `user` VALUES ('453', 'user-1adf94552da28fea8');
INSERT INTO `user` VALUES ('454', 'user-487b8df340d120409');
INSERT INTO `user` VALUES ('455', 'user-bbabe304b8f296f86');
INSERT INTO `user` VALUES ('456', 'user-ebb368f8a57e66433');
INSERT INTO `user` VALUES ('457', 'user-f8ea1e728cfa8d4e6');
INSERT INTO `user` VALUES ('458', 'user-3be8ac9f61918cde5');
INSERT INTO `user` VALUES ('459', 'user-0881f65ab39291b4e');
INSERT INTO `user` VALUES ('460', 'user-6b4da0ca0889bcfcb');
INSERT INTO `user` VALUES ('461', 'user-bb11486a951faf0c4');
INSERT INTO `user` VALUES ('462', 'user-cbc8c0ca795499bc1');
INSERT INTO `user` VALUES ('463', 'user-fad8d24d92b29cbb1');
INSERT INTO `user` VALUES ('464', 'user-19d79e2a9c51b8a74');
INSERT INTO `user` VALUES ('465', 'user-cb3bd923fd3352d70');
INSERT INTO `user` VALUES ('466', 'user-2b5ffbe35d038c3fa');
INSERT INTO `user` VALUES ('467', 'user-cbc9eead790fa35cb');
INSERT INTO `user` VALUES ('468', 'user-eaccdd9087f1274fe');
INSERT INTO `user` VALUES ('469', 'user-4b778b5b0bcd15be5');
INSERT INTO `user` VALUES ('470', 'user-6a7250b8e1e329826');
INSERT INTO `user` VALUES ('471', 'user-58bff89ff8a0c9651');
INSERT INTO `user` VALUES ('472', 'user-29c22dfebd22cbe63');
INSERT INTO `user` VALUES ('473', 'user-4a55be99a14ba7187');
INSERT INTO `user` VALUES ('474', 'user-bb0ebfdf1ddac336f');
INSERT INTO `user` VALUES ('475', 'user-9895fa6e1e75b301d');
INSERT INTO `user` VALUES ('476', 'user-4a488969f31405985');
INSERT INTO `user` VALUES ('477', 'user-8b56480d93b2de91b');
INSERT INTO `user` VALUES ('478', 'user-7a47cb44cac4879ac');
INSERT INTO `user` VALUES ('479', 'user-7866fb733e04aea0a');
INSERT INTO `user` VALUES ('480', 'user-0aa767919ac80f7c9');
INSERT INTO `user` VALUES ('481', 'user-eaae5705a362e2855');
INSERT INTO `user` VALUES ('482', 'user-5aec58045d54a09bb');
INSERT INTO `user` VALUES ('483', 'user-fb679f2588bed879b');
INSERT INTO `user` VALUES ('484', 'user-6a515a98313d47033');
INSERT INTO `user` VALUES ('485', 'user-ab9c78fca1164df24');
INSERT INTO `user` VALUES ('486', 'user-2bf69689ca3d28d39');
INSERT INTO `user` VALUES ('487', 'user-28ff8ffec00d6e040');
INSERT INTO `user` VALUES ('488', 'user-2b2ca519e2619367f');
INSERT INTO `user` VALUES ('489', 'user-5b35265e73f374e31');
INSERT INTO `user` VALUES ('490', 'user-f8cc0e7c17c0f09e0');
INSERT INTO `user` VALUES ('491', 'user-0b813a0dc88319694');
INSERT INTO `user` VALUES ('492', 'user-fb506aa3a94c7f9c2');
INSERT INTO `user` VALUES ('493', 'user-98b539d103f83069f');
INSERT INTO `user` VALUES ('494', 'user-baf356f47ef78bc70');
INSERT INTO `user` VALUES ('495', 'user-3b012d715eee7628e');
INSERT INTO `user` VALUES ('496', 'user-e8bd2ec83bfbf064e');
INSERT INTO `user` VALUES ('497', 'user-08656e05c72392f32');
INSERT INTO `user` VALUES ('498', 'user-fa24da8c1c824b487');
INSERT INTO `user` VALUES ('499', 'user-cb26a052dfb603e58');
