-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jun 26, 2011 at 09:44 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `testx`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `access_control`
-- 

CREATE TABLE `access_control` (
  `id` int(11) NOT NULL auto_increment,
  `video_id` int(11) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `allow_donation` tinyint(1) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `video_id` (`video_id`),
  KEY `video_id_2` (`video_id`),
  KEY `video_id_3` (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `access_control`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `channel`
-- 

CREATE TABLE `channel` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `disc` varchar(500) default NULL,
  `creation_date` datetime NOT NULL,
  `type_id` int(11) NOT NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `user_id` (`type_id`),
  KEY `type_id` (`type_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `channel`
-- 

INSERT INTO `channel` VALUES (1, 'CH1', 'DESC1', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `channel` VALUES (2, 'CH2', 'DESC2', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `channel` VALUES (3, 'CH3', 'games', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `channel` VALUES (4, 'XXX', 'YYY', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `channel` VALUES (5, 'deqw', 'fdasf', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `channel` VALUES (6, 'fsdds', 'fsdfds', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `channel` VALUES (7, 'RRR', 'ee', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `channel` VALUES (8, 'dqae', 'eqeqw', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `channel` VALUES (9, 'sadfsfds', 'dasdas', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `channel` VALUES (10, 'CH5', 'DESC2', '0000-00-00 00:00:00', 1, 1);
INSERT INTO `channel` VALUES (12, 'Shymaa Fans', 'dddd', '0000-00-00 00:00:00', 1, 10);

-- --------------------------------------------------------

-- 
-- Table structure for table `channel_type`
-- 

CREATE TABLE `channel_type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(10) NOT NULL,
  `price` float default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `channel_type`
-- 

INSERT INTO `channel_type` VALUES (1, 'free', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `comment`
-- 

CREATE TABLE `comment` (
  `id` int(11) NOT NULL auto_increment,
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `video_id` (`video_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `comment`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `country`
-- 

CREATE TABLE `country` (
  `id` int(11) NOT NULL auto_increment,
  `country_name` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `country_name` (`country_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `country`
-- 

INSERT INTO `country` VALUES (1, 'egypt');

-- --------------------------------------------------------

-- 
-- Table structure for table `donation`
-- 

CREATE TABLE `donation` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `value` float NOT NULL,
  `server_visa` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `invite_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  KEY `invite_id` (`invite_id`),
  KEY `invite_id_2` (`invite_id`),
  KEY `invite_id_3` (`invite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `donation`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `invite`
-- 

CREATE TABLE `invite` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(20) NOT NULL,
  `access_control_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `access_control_id` (`access_control_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `invite`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `mailbox`
-- 

CREATE TABLE `mailbox` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `new_msg` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `mailbox`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `message`
-- 

CREATE TABLE `message` (
  `id` int(11) NOT NULL auto_increment,
  `to_mailbox_id` int(11) NOT NULL,
  `from_mailbox_id` int(11) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `to_mailbox_id` (`to_mailbox_id`),
  KEY `to_mailbox_id_2` (`to_mailbox_id`),
  KEY `from_mailbox_id` (`from_mailbox_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `message`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `rate`
-- 

CREATE TABLE `rate` (
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` int(11) default NULL,
  PRIMARY KEY  (`video_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `rate`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `user`
-- 

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(24) NOT NULL,
  `email` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL,
  `reg_date` datetime NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `last_login_date` datetime NOT NULL,
  `visa` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `user`
-- 

INSERT INTO `user` VALUES (1, 'amr', 'mohammed', 'Gama', '1234', 'amrasd@yahoo.com', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 123456789);
INSERT INTO `user` VALUES (2, 'ahmed', 'essam', 'era', '1234', 'era@yahoo.com', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 123456789);
INSERT INTO `user` VALUES (3, 'dasd', 'adqw', 'asd', '123', 'sdfsa@das', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (4, 'ahmed', 'MRK', 'dddd', 'weqweq', 'q23123@dsaf', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (5, 'ad', 'dsae', 'sae', 'sda', 'dsad!', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (6, 'dflkj', 'fdsalfkj', 'fsdlfj', '432398', 'fflllll', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (7, 'ahmed', 'fci', 'fci', '123', 'dddddddd@dfs', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (8, 'exx', 'dsdas', 'exx', '123', 'dasda', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (9, 'mooooo', 'ddd', 'ERRRR', '123', 'sdasa', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (10, 'dasdas', 'dasda', 'shymaa', '123', 'sadfs', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `video`
-- 

CREATE TABLE `video` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `desc` varchar(500) default NULL,
  `channel_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `view` int(20) NOT NULL,
  `access_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `access_id` (`access_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `video`
-- 


-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `access_control`
-- 
ALTER TABLE `access_control`
  ADD CONSTRAINT `access_control_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- 
-- Constraints for table `channel`
-- 
ALTER TABLE `channel`
  ADD CONSTRAINT `channel_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `channel_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `channel_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- 
-- Constraints for table `comment`
-- 
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- 
-- Constraints for table `donation`
-- 
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_ibfk_3` FOREIGN KEY (`invite_id`) REFERENCES `invite` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- 
-- Constraints for table `invite`
-- 
ALTER TABLE `invite`
  ADD CONSTRAINT `invite_ibfk_1` FOREIGN KEY (`access_control_id`) REFERENCES `access_control` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- 
-- Constraints for table `mailbox`
-- 
ALTER TABLE `mailbox`
  ADD CONSTRAINT `mailbox_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- 
-- Constraints for table `message`
-- 
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`to_mailbox_id`) REFERENCES `mailbox` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`from_mailbox_id`) REFERENCES `mailbox` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- 
-- Constraints for table `rate`
-- 
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- 
-- Constraints for table `user`
-- 
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- 
-- Constraints for table `video`
-- 
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `video_ibfk_3` FOREIGN KEY (`access_id`) REFERENCES `access_control` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
