/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50726
Source Host           : 127.0.0.1:3306
Source Database       : spark

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-07-01 09:08:09
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
-- Table structure for followdata
-- ----------------------------
DROP TABLE IF EXISTS `followdata`;
CREATE TABLE `followdata` (
  `followValue` int(11) DEFAULT NULL,
  `itemID` int(11) NOT NULL,
  PRIMARY KEY (`itemID`),
  CONSTRAINT `followdata_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `itemmap` (`itemID`)
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
-- Table structure for itemmap
-- ----------------------------
DROP TABLE IF EXISTS `itemmap`;
CREATE TABLE `itemmap` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for itemrecommend
-- ----------------------------
DROP TABLE IF EXISTS `itemrecommend`;
CREATE TABLE `itemrecommend` (
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `scores` double DEFAULT NULL,
  PRIMARY KEY (`itemID`,`userID`),
  KEY `userID` (`userID`),
  CONSTRAINT `itemrecommend_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `itemmap` (`itemID`),
  CONSTRAINT `itemrecommend_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `usermap` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rawdata
-- ----------------------------
DROP TABLE IF EXISTS `rawdata`;
CREATE TABLE `rawdata` (
  `rawID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `browser_num` int(11) NOT NULL,
  `stay_time` float DEFAULT NULL,
  `collect` int(11) NOT NULL,
  `buy_num` int(11) NOT NULL,
  `scores` double DEFAULT NULL,
  PRIMARY KEY (`userID`,`itemID`,`rawID`),
  KEY `itemID` (`itemID`),
  CONSTRAINT `rawdata_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usermap` (`userID`),
  CONSTRAINT `rawdata_ibfk_2` FOREIGN KEY (`itemID`) REFERENCES `itemmap` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `userID` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`userID`),
  CONSTRAINT `test_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usermap` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for usermap
-- ----------------------------
DROP TABLE IF EXISTS `usermap`;
CREATE TABLE `usermap` (
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for userrecommend
-- ----------------------------
DROP TABLE IF EXISTS `userrecommend`;
CREATE TABLE `userrecommend` (
  `userID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `socres` double(255,0) DEFAULT NULL,
  PRIMARY KEY (`userID`,`itemID`),
  KEY `itemID` (`itemID`),
  CONSTRAINT `userrecommend_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usermap` (`userID`),
  CONSTRAINT `userrecommend_ibfk_2` FOREIGN KEY (`itemID`) REFERENCES `itemmap` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for windowfollowdata
-- ----------------------------
DROP TABLE IF EXISTS `windowfollowdata`;
CREATE TABLE `windowfollowdata` (
  `itemID` int(11) NOT NULL,
  `followValue` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  CONSTRAINT `windowfollowdata_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `itemmap` (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
