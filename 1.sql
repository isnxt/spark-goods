DROP TABLE IF EXISTS `itemrecommend`;
CREATE TABLE `itemrecommend` (
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `scores` double(255,0) DEFAULT NULL,
  PRIMARY KEY (`itemID`,`userID`),
  CONSTRAINT `itemrecommend_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `itemmap` (`itemID`),
  CONSTRAINT `itemrecommend_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `usermap` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;