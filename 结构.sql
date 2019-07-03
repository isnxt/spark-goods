/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50726
Source Host           : 127.0.0.1:3306
Source Database       : spark

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-07-03 09:18:06
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
-- Table structure for followsingle
-- ----------------------------
DROP TABLE IF EXISTS `followsingle`;
CREATE TABLE `followsingle` (
  `windowFollowValue` double(11,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for fpg
-- ----------------------------
DROP TABLE IF EXISTS `fpg`;
CREATE TABLE `fpg` (
  `antecedent` varchar(255) NOT NULL,
  `consequent` varchar(255) NOT NULL,
  `confidence` double(255,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for raw
-- ----------------------------
DROP TABLE IF EXISTS `raw`;
CREATE TABLE `raw` (
  `userID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `browser_num` int(11) NOT NULL,
  `stay_time` float DEFAULT NULL,
  `collect` int(11) NOT NULL,
  `buy_num` int(11) NOT NULL,
  `scores` double DEFAULT NULL,
  PRIMARY KEY (`userID`,`itemID`),
  KEY `rawdata_ibfk_2` (`itemID`),
  CONSTRAINT `raw_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  CONSTRAINT `raw_ibfk_2` FOREIGN KEY (`itemID`) REFERENCES `item` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for raw2
-- ----------------------------
DROP TABLE IF EXISTS `raw2`;
CREATE TABLE `raw2` (
  `userID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `browser_num` int(11) NOT NULL,
  `stay_time` float DEFAULT NULL,
  `collect` int(11) NOT NULL,
  `buy_num` int(11) NOT NULL,
  `scores` double DEFAULT NULL,
  PRIMARY KEY (`userID`,`itemID`),
  KEY `rawdata_ibfk_2` (`itemID`),
  CONSTRAINT `raw2_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  CONSTRAINT `raw2_ibfk_2` FOREIGN KEY (`itemID`) REFERENCES `item` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
