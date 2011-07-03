-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jul 03, 2011 at 01:50 PM
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
  `is_public` tinyint(1) NOT NULL,
  `allow_donation` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `access_control`
-- 

INSERT INTO `access_control` VALUES (1, 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

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
INSERT INTO `channel` VALUES (15, 'looooooooooooo', 'dada', '0000-00-00 00:00:00', 1, 21);
INSERT INTO `channel` VALUES (16, 'Era', 'loveeeeee', '2011-06-24 19:04:56', 1, 2);
INSERT INTO `channel` VALUES (17, 'FATMA FANS', 'dasdasdsa', '0000-00-00 00:00:00', 1, 23);
INSERT INTO `channel` VALUES (18, 'ooooooo', 'oooodasda', '0000-00-00 00:00:00', 1, 24);
INSERT INTO `channel` VALUES (19, 'lllllllllllllllll', 'opppp', '0000-00-00 00:00:00', 1, 25);

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
-- Table structure for table `ci_sessions`
-- 

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL default '0',
  `ip_address` varchar(16) NOT NULL default '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL default '0',
  `user_data` text NOT NULL,
  PRIMARY KEY  (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `ci_sessions`
-- 

INSERT INTO `ci_sessions` VALUES ('95b6db06760915be210e109b96ce2bfa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/534.30 (K', 1309690135, 'a:4:{s:8:"username";s:3:"era";s:7:"user_id";s:1:"2";s:6:"logged";b:1;s:10:"channel_id";s:2:"16";}');

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
-- Table structure for table `external_comment`
-- 

CREATE TABLE `external_comment` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `video_id` int(11) NOT NULL,
  `text` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `video_id` (`video_id`),
  KEY `video_id_2` (`video_id`),
  KEY `user_id` (`user_id`),
  KEY `video_id_3` (`video_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

-- 
-- Dumping data for table `external_comment`
-- 

INSERT INTO `external_comment` VALUES (23, 'era', '', 26, 'waw', '0000-00-00 00:00:00', 2);
INSERT INTO `external_comment` VALUES (24, 'era', '', 27, ':D :D :d', '0000-00-00 00:00:00', 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `user`
-- 

INSERT INTO `user` VALUES (1, 'external_comments', 'external_comments', 'external_comments', 'external_comments', 'external_comments', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (2, 'ahmed', 'essam', 'era', '123', 'era@yahoo.com', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 123456789);
INSERT INTO `user` VALUES (3, 'dasd', 'adqw', 'asd', '123', 'sdfsa@das', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (4, 'ahmed', 'MRK', 'dddd', 'weqweq', 'q23123@dsaf', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (5, 'ad', 'dsae', 'sae', 'sda', 'dsad!', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (6, 'dflkj', 'fdsalfkj', 'fsdlfj', '432398', 'fflllll', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (7, 'ahmed', 'fci', 'fci', '123', 'dddddddd@dfs', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (8, 'exx', 'dsdas', 'exx', '123', 'dasda', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (9, 'mooooo', 'ddd', 'ERRRR', '123', 'sdasa', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (10, 'dasdas', 'dasda', 'shymaa', '123', 'sadfs', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `user` VALUES (11, 'ahmed', 'essam', 'eradas', '1234', 'era@yahoo.com', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `user` VALUES (12, 'sdfsd', 'sdfs', 'ttttttttt', 'tsefsd', 'gdfgfdg', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `user` VALUES (13, 'eqwewq', 'eqweq', 'yyyyyyyu', 'sdfsdf', 'fsfs', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `user` VALUES (14, 'dasdsa', 'asfsd', 'fffffffffff', 'riouwruw', 'sfsh', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `user` VALUES (15, 'dsfs', 'sdfs', 'wer324', 'sfrsdfs', 'fsdf', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `user` VALUES (16, 'dasdsa', 'dasdsad', 'dasdsa', 'dasdsa', 'dadasda', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `user` VALUES (17, 'rewklrjew', 'fsfksj', 'rrr', 'sfs', 'fsfs', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `user` VALUES (18, 'fsfs', 'fsfs', 'rrrrrrrt', 'rwerw', 'rwrew', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `user` VALUES (19, 'tert', 'terte', 'terter', 'teter', 'trete', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `user` VALUES (20, 'dsada', 'dfkjlj', 'ooooooo', 'fsdfds', 'mfsd,mfns', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `user` VALUES (21, 'dadas', 'dasdsa', 'uuuuuuuu', 'dasdsa', 'dasda', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `user` VALUES (23, 'asdsajg', 'asj', 'fatma', '123', 'fasfsafa', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `user` VALUES (24, 'fsdfds', 'fsdfs', 'kkkkkk', 'fsdfds', 'fsdfsd', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `user` VALUES (25, 'treutyreiu', 'twiuetyw', 'pppppppppp', 'sadashd', 'fsas', 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', NULL);

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
  `link` varchar(150) default NULL,
  `thumb` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `access_id` (`access_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- 
-- Dumping data for table `video`
-- 

INSERT INTO `video` VALUES (26, 'Nuclear energy', 'explosion', 16, '0000-00-00 00:00:00', 1, 1, 'uploads/27081.flv', 'thumbs/27081.png');
INSERT INTO `video` VALUES (27, 'hetlar', ':D', 16, '0000-00-00 00:00:00', 1, 1, 'uploads/26841.flv', 'thumbs/26841.png');

-- 
-- Constraints for dumped tables
-- 

-- 
-- Constraints for table `channel`
-- 
ALTER TABLE `channel`
  ADD CONSTRAINT `channel_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `channel_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `channel_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `external_comment`
-- 
ALTER TABLE `external_comment`
  ADD CONSTRAINT `external_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `external_comment_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
