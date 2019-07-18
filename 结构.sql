/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50726
Source Host           : 127.0.0.1:3306
Source Database       : spark

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-07-18 11:36:16
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `evaluation`;
DROP TABLE IF EXISTS `fpg`;
DROP TABLE IF EXISTS `recuser`;
DROP TABLE IF EXISTS `recitem`;
DROP TABLE IF EXISTS `follow`;
DROP TABLE IF EXISTS `followwindow`;
DROP TABLE IF EXISTS `followsingle`;
DROP TABLE IF EXISTS `raw`;
DROP TABLE IF EXISTS `raw2`;
DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `item`;

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for item
-- ----------------------------
CREATE TABLE `item` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for raw
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=1317 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for raw2
-- ----------------------------
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
-- Table structure for evaluation
-- ----------------------------
CREATE TABLE `evaluation` (
  `rank` int(11) NOT NULL,
  `iterations` int(11) NOT NULL,
  `lambda` double NOT NULL,
  `rmse` double NOT NULL,
  `time` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for follow
-- ----------------------------
CREATE TABLE `follow` (
  `itemID` int(11) NOT NULL,
  `followValue` double(11,6) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `item` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for followsingle
-- ----------------------------
CREATE TABLE `followsingle` (
  `windowFollowValue` double(11,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for followwindow
-- ----------------------------
CREATE TABLE `followwindow` (
  `itemID` int(11) NOT NULL,
  `followValue` double(11,6) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  CONSTRAINT `followwindow_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `item` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fpg
-- ----------------------------
CREATE TABLE `fpg` (
  `antecedent` varchar(255) NOT NULL,
  `consequent` varchar(255) NOT NULL,
  `confidence` double(255,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for recitem
-- ----------------------------
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
-- Table structure for recuser
-- ----------------------------
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
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `userID` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`userID`),
  CONSTRAINT `test_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


