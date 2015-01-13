-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 13, 2015 at 01:40 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `captiv8`
--
CREATE DATABASE IF NOT EXISTS `captiv8` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `captiv8`;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE IF NOT EXISTS `education` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(60) NOT NULL,
  `wikipedia_link` text NOT NULL,
  `degree` text NOT NULL,
  `started` date DEFAULT NULL,
  `finished` date DEFAULT NULL,
  `is_current` int(11) NOT NULL,
  `forwhom` varchar(25) NOT NULL,
  `ed_level` varchar(30) NOT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `friend_limbo`
--

CREATE TABLE IF NOT EXISTS `friend_limbo` (
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `fl_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`fl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) NOT NULL,
  `url` varchar(110) NOT NULL,
  `towhom` varchar(25) DEFAULT NULL,
  `stamptime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`n_id`, `content`, `url`, `towhom`, `stamptime`, `status`) VALUES
(1, '<a href=''index.php?profile=nerd''>nerd</a> replied to your thread: Test post', 'index.php?thread_view=_2852f12123', 'nolvorite', '2014-12-17 22:06:46', 1),
(2, '<a href=''index.php?profile=nerd''>nerd</a> replied to your comment: Test post', 'index.php?comment=c4fd398dd2', 'nolvorite', '2014-12-17 22:15:46', 1),
(3, '<a href=''index.php?profile=nolvorite''>nolvorite</a> replied to your thread: ', 'index.php?comment=4b60367874', 'nerd', '2014-12-28 15:47:55', 1),
(4, '<a href=''index.php?profile=nolvorite''>nolvorite</a> replied to your comment: Okay this should be the', 'index.php?comment=e1ba3e6d1b', 'nerd', '2014-12-28 16:03:14', 1),
(5, '<a href=''index.php?profile=nolvorite''>nolvorite</a> replied to your thread: ', 'index.php?comment=3f8dbdee7a', 'nerd', '2014-12-28 16:06:11', 1),
(6, '<a href=''index.php?profile=nolvorite''>nolvorite</a> replied to your comment: ', 'index.php?comment=bb106a0ebc', 'nerd', '2014-12-28 16:07:07', 1),
(7, '<a href=''index.php?profile=nerd''>nerd</a> replied to your comment: ', 'index.php?comment=354fd07a14', 'nerd', '2014-12-28 16:08:33', 1),
(8, '<a href=''index.php?profile=nolvorite''>nolvorite</a> replied to your comment: ', 'index.php?comment=be805506ae', 'nerd', '2014-12-28 16:09:26', 1),
(9, '<a href=''index.php?profile=nerd''>nerd</a> replied to your comment: Okay this should be the charm', 'index.php?comment=237aba4b41', 'nerd', '2014-12-28 16:10:32', 1),
(10, '<a href=''index.php?profile=nolvorite''>nolvorite</a> replied to your comment: Okay this should be the', 'index.php?comment=d04238e820', 'nerd', '2014-12-28 16:12:13', 1),
(11, '<a href=''index.php?profile=nolvorite''>nolvorite</a> replied to your comment: And for legitimacy...', 'index.php?comment=0809dfc8da', 'nolvorite', '2014-12-28 16:57:12', 1),
(12, '<a href=''index.php?profile=nolvorite''>nolvorite</a> replied to your comment: And for legitimacy...', 'index.php?comment=19a06a3c85', 'nolvorite', '2014-12-28 16:57:42', 1),
(13, '<a href=''index.php?profile=nolvorite''>nolvorite</a> replied to your comment: And for legitimacy...', 'index.php?comment=5da50d3f9f', 'nolvorite', '2014-12-28 16:59:11', 1),
(14, '<a href=''index.php?profile=nolvorite''>nolvorite</a> replied to your comment: And for legitimacy...', 'index.php?comment=a56328b3b9', 'nolvorite', '2014-12-28 17:00:51', 1),
(15, '<a href=''index.php?profile=nolvorite''>nolvorite</a> replied to your comment: Again.', 'index.php?comment=6292754060', 'nolvorite', '2014-12-28 18:27:20', 1),
(16, '<span>nerd</span> replied to your comment: And for legitimacy...', 'index.php?comment=6a05952fa0', 'nolvorite', '2015-01-03 12:49:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE IF NOT EXISTS `polls` (
  `post_id_root` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `define_set` varchar(20) NOT NULL,
  `votes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`post_id_root`, `value`, `data_id`, `define_set`, `votes`) VALUES
(84, 'To be or not to be...', 59, 'question', 0),
(84, 'true', 60, 'choice_selection', 0),
(84, 'false', 61, 'choice_addition', 0),
(84, 'Or is it?', 62, 'poll_choice', 0),
(84, 'Is the question.', 63, 'poll_choice', 0),
(85, 'To be or not to be...', 64, 'question', 0),
(85, 'true', 65, 'choice_selection', 0),
(85, 'false', 66, 'choice_addition', 0),
(85, '...Or is it?', 67, 'poll_choice', 0),
(85, 'Is the question.', 68, 'poll_choice', 0),
(88, 'To be or not to be...', 69, 'question', 0),
(88, 'true', 70, 'choice_selection', 0),
(88, 'false', 71, 'choice_addition', 0),
(88, '...Or is it?', 72, 'poll_choice', 1),
(88, 'Is the question.', 73, 'poll_choice', 1),
(89, 'Test poll question', 74, 'question', 0),
(89, 'true', 75, 'choice_selection', 0),
(89, 'true', 76, 'choice_addition', 0),
(89, '3 and 4', 77, 'poll_choice', 0),
(89, '1 and 2', 78, 'poll_choice', 2),
(138, 'Do animals have legs?', 79, 'question', 0),
(138, 'true', 80, 'choice_selection', 0),
(138, 'false', 81, 'choice_addition', 0),
(138, 'Are they more like, limbs?', 82, 'poll_choice', 2),
(138, 'Depends.', 83, 'poll_choice', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pollvotes_q`
--

CREATE TABLE IF NOT EXISTS `pollvotes_q` (
  `bywhom` varchar(25) NOT NULL,
  `timeof` datetime NOT NULL,
  `choice_id` int(11) NOT NULL,
  `which_poll` int(11) NOT NULL,
  `vote_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`vote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `pollvotes_q`
--

INSERT INTO `pollvotes_q` (`bywhom`, `timeof`, `choice_id`, `which_poll`, `vote_id`) VALUES
('nolvorite', '2014-12-14 15:03:32', 78, 89, 5),
('nolvorite', '2014-12-14 16:10:10', 72, 88, 6),
('nolvorite', '2014-12-14 15:03:32', 78, 89, 8),
('nerd', '2014-12-17 15:46:35', 78, 89, 9),
('nerd', '2014-12-17 15:46:41', 73, 88, 10),
('nolvorite', '2014-12-19 11:09:49', 82, 138, 11),
('nerd', '2015-01-03 13:19:52', 82, 138, 12);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `content` varchar(15000) DEFAULT NULL,
  `cnttype` int(11) NOT NULL,
  `msgtype` char(20) DEFAULT NULL,
  `forwhom` text NOT NULL,
  `parent` int(11) NOT NULL,
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `stamptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bywhom` text NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `thread_nick` varchar(50) DEFAULT NULL,
  `topic_hash` varchar(10) DEFAULT NULL,
  `settings` int(11) NOT NULL DEFAULT '1',
  `thread_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `upvotes` int(11) NOT NULL DEFAULT '1',
  `downvotes` int(11) NOT NULL DEFAULT '0',
  `post_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=159 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`content`, `cnttype`, `msgtype`, `forwhom`, `parent`, `postid`, `stamptime`, `bywhom`, `title`, `thread_nick`, `topic_hash`, `settings`, `thread_id`, `level`, `upvotes`, `downvotes`, `post_type`) VALUES
('...Even explain it in detail, if you like!', 1, NULL, 'self', 0, 5, '2014-11-24 00:58:31', 'nolvorite', 'Thoughts you might have right now, post it here!', 'Thoughts_you_might_have_right_now__post_it_here_', '276e6b7e1e', 1, NULL, NULL, 1, 0, 0),
('...Even explain it in detail, if you like!', 1, NULL, 'self', 0, 6, '2014-11-24 03:06:39', 'nolvorite', 'Thoughts you might have right now, post it here!', 'Thoughts_you_might_have_right_now__post_it_here_', 'b5a74135ed', 1, NULL, NULL, 1, 0, 0),
('...Even explain it in detail, if you like!', 1, NULL, 'self', 0, 7, '2014-11-24 03:08:43', 'nolvorite', 'Thoughts you might have right now, post it here!', 'Thoughts_you_might_have_right_now__post_it_here_', 'bf67b81029', 1, NULL, NULL, 1, 0, 0),
('...Even explain it in detail, if you like!', 1, NULL, 'self', 0, 8, '2014-11-24 03:09:40', 'nolvorite', 'Thoughts you might have right now, post it here!', 'Thoughts_you_might_have_right_now__post_it_here_', '8edaae084a', 1, NULL, NULL, 1, 0, 0),
('...Even explain it in detail, if you like!', 1, NULL, 'self', 0, 9, '2014-11-24 03:11:58', 'nolvorite', 'Thoughts you might have right now, post it here!', 'Thoughts_you_might_have_right_now__post_it_here_', 'f3cf520162', 1, NULL, NULL, 1, 0, 0),
('...Even explain it in detail, if you like!', 1, NULL, 'self', 0, 10, '2014-11-24 03:24:44', 'nolvorite', 'Thoughts you might have right now, post it here!', 'Thoughts_you_might_have_right_now__post_it_here_', '7aa3b7e43d', 1, NULL, NULL, 1, 0, 0),
('...Checkmate, Kierkegaard!', 1, NULL, 'self', 0, 11, '2014-11-24 05:33:06', 'nolvorite', 'Morality don''t real without STEM', 'Morality_don__t_real_without_STEM', '0eeef9e370', 1, NULL, NULL, 1, 0, 0),
('something for breakfast', 1, NULL, 'self', 0, 12, '2014-11-24 05:35:35', 'nolvorite', 'I ate', 'I_ate', 'd8b7e25aab', 1, NULL, NULL, 1, 0, 0),
('''; SELECT FROM', 1, NULL, 'self', 0, 13, '2014-11-24 05:39:57', 'nolvorite', 'Hmm....', 'Hmm____', '52335748c5', 1, NULL, NULL, 1, 0, 0),
('Nope', 1, NULL, 'self', 0, 14, '2014-11-24 05:42:18', 'nolvorite', 'I...asda', 'I___asda', '827dfd66eb', 1, NULL, NULL, 1, 0, 0),
('nope', 1, NULL, 'self', 0, 15, '2014-11-24 05:42:30', 'nolvorite', 'I....', 'I____', '9e340cf9a9', 1, NULL, NULL, 1, 0, 0),
('Last spam!', 1, NULL, 'self', 0, 16, '2014-11-24 05:43:13', 'nolvorite', 'Last spam', 'Last_spam', 'f7e4ec6ec5', 1, NULL, NULL, 1, 0, 0),
('Hmm...', 1, NULL, 'self', 0, 17, '2014-11-25 01:32:44', 'nolvorite', 'Hmm', 'Hmm', '52aa06291f', 1, NULL, NULL, 1, 0, 0),
('...Even explain it in detail, if you like!', 1, NULL, 'self', 0, 18, '2014-11-25 01:33:55', 'nolvorite', 'Thoughts you might have right now, post it here!', 'Thoughts_you_might_have_right_now__post_it_here_', 'e14c192c90', 1, NULL, NULL, 1, 0, 0),
('And again', 1, NULL, 'self', 0, 19, '2014-11-25 01:48:31', 'nolvorite', 'Test again&gt;', 'Test_again_gt_', 'dd52dd2c10', 1, NULL, NULL, 1, 0, 0),
('this time, test a comment.', 2, NULL, 'n-a', 19, 21, '2014-11-25 01:59:34', 'nolvorite', '', '', '5ee3311f2f', 1, 19, NULL, 1, 0, 0),
('...Even explain it in detail, if you like!', 1, NULL, 'self', 0, 22, '2014-11-27 04:46:32', 'nolvorite', '////xdsd', '____xdsd', '7c42424563', 1, NULL, NULL, 1, 0, 0),
('tttt', 1, NULL, 'self', 0, 23, '2014-11-27 05:10:53', 'nolvorite', 'ttt', 'ttt', '98738252a4', 1, NULL, NULL, 1, 0, 0),
('Reply to this comment... Ergo, comment on this comment.', 2, NULL, 'n-a', 21, 24, '2014-11-27 05:21:53', 'nolvorite', 'Comments', 'Comments', '5db884b51d', 1, 19, NULL, 1, 0, 0),
('Reply to this comment... Ergo, comment on this comment.', 2, NULL, 'n-a', 21, 25, '2014-11-27 14:59:35', 'nolvorite', 'Comments', 'Comments', '9fe4de9981', 1, 19, NULL, 1, 0, 0),
('test', 2, NULL, 'n-a', 21, 26, '2014-11-27 15:13:53', 'nolvorite', 'Comments', 'Comments', 'ec1d24a3f1', 1, NULL, NULL, 1, 0, 0),
('whyyyyyyy', 2, NULL, 'n-a', 21, 27, '2014-11-27 15:52:55', 'nolvorite', 'Comments', 'Comments', 'ef5abae8b2', 1, 19, NULL, 1, 0, 0),
('nooooooooooo try this', 2, NULL, 'n-a', 21, 28, '2014-11-27 15:54:38', 'nolvorite', 'Comments', 'Comments', 'e93bbb26e9', 1, 19, NULL, 1, 0, 0),
('...Even explain it in detail, if you like!', 1, NULL, 'self', 0, 29, '2014-11-27 17:25:44', 'nolvorite', 'asdasda', 'asdasda', 'c25120cea5', 1, NULL, NULL, 1, 0, 0),
('Test', 2, NULL, 'n-a', 28, 30, '2014-11-27 21:52:33', 'nolvorite', 'Comments', 'Comments', '61e12ccd6e', 1, 19, NULL, 1, 0, 0),
('Level 2', 2, NULL, 'n-a', 27, 31, '2014-11-27 21:56:08', 'nolvorite', 'Comments', 'Comments', '40ad952f57', 1, 19, NULL, 1, 0, 0),
('Level 3', 2, NULL, 'n-a', 31, 32, '2014-11-27 21:56:25', 'nolvorite', 'Comments', 'Comments', 'd112d60de6', 1, 19, NULL, 1, 0, 0),
('Testing for comment-generations', 2, NULL, 'n-a', 30, 33, '2014-11-28 19:06:56', 'nolvorite', 'Comments', 'Comments', 'b49694ad68', 1, 19, NULL, 1, 0, 0),
('test', 2, NULL, 'n-a', 19, 34, '2014-11-28 19:45:43', 'nolvorite', '', '', '494a456d05', 1, 19, NULL, 1, 0, 0),
('Reply to this comment... Ergo, comment on this comment.', 2, NULL, 'n-a', 28, 35, '2014-11-28 21:19:01', 'nolvorite', 'Comments', 'Comments', 'acf8ac4cf4', 1, 19, NULL, 1, 0, 0),
('another one', 2, NULL, 'n-a', 33, 36, '2014-11-30 00:51:41', 'nolvorite', 'Comments', 'Comments', '383780840c', 1, 19, NULL, 1, 0, 0),
('last comment generation to boot?', 2, NULL, 'n-a', 36, 37, '2014-11-30 04:50:18', 'nolvorite', 'Comments', 'Comments', '1974971f18', 1, 19, NULL, 1, 0, 0),
('test last comment generation?', 2, NULL, 'n-a', 36, 38, '2014-11-30 04:51:19', 'nolvorite', 'Comments', 'Comments', '0aadae2602', 1, 19, NULL, 1, 0, 0),
('test once and never again', 2, NULL, 'n-a', 36, 39, '2014-11-30 08:33:37', 'nolvorite', 'Comments', 'Comments', '6a334ce691', 1, 19, NULL, 1, 0, 0),
('#2', 2, NULL, 'n-a', 28, 40, '2014-12-01 04:13:42', 'nolvorite', 'Comments', 'Comments', '2480d5875c', 1, 19, NULL, 1, 0, 0),
('oh dear God pleaaaaaaase', 2, NULL, 'n-a', 39, 41, '2014-12-01 07:52:53', 'nolvorite', 'Comments', 'Comments', '482cd668fa', 1, 19, NULL, 1, 0, 0),
('I am actually essentially done with the posting system\r\nMy god there''s just been too much wasted time man', 1, NULL, 'self', 0, 42, '2014-12-01 08:50:53', 'nolvorite', 'Hallelujah', 'Hallelujah', '67b5de8682', 1, NULL, NULL, 1, 0, 0),
('Test for line breaks....', 2, NULL, 'n-a', 42, 43, '2014-12-01 09:02:23', 'nolvorite', '', '', '77ecd433bf', 1, 42, NULL, 1, 0, 0),
('Whoops\r\nNow test for em''', 2, NULL, 'n-a', 42, 44, '2014-12-01 09:02:36', 'nolvorite', '', '', 'c8b644d746', 1, 42, NULL, 1, 0, 0),
('Test\r\nfor\r\nline breaks', 2, NULL, 'n-a', 43, 45, '2014-12-01 09:04:34', 'nolvorite', 'Comments', 'Comments', '778d2a3089', 1, 42, NULL, 1, 0, 0),
('Test now\r\n...? omg', 2, NULL, 'n-a', 45, 46, '2014-12-01 09:06:20', 'nolvorite', 'Comments', 'Comments', 'ada1f15197', 1, 42, NULL, 1, 0, 0),
('Test\r\nline breaks\r\n\r\nnow!', 2, NULL, 'n-a', 42, 47, '2014-12-01 23:35:23', 'nolvorite', '', '', 'ae0e475f7d', 1, 42, NULL, 1, 0, 0),
('Test line breaks\r<br>\r<br>gr\r<br>gr', 2, NULL, 'n-a', 42, 48, '2014-12-01 23:36:48', 'nolvorite', '', '', '503bf27d09', 1, 42, NULL, 1, 0, 0),
('Check for the new safe string comparison...?', 2, NULL, 'n-a', 42, 49, '2014-12-01 23:55:09', 'nolvorite', '', '', '323ac6e5e8', 1, 42, NULL, 1, 0, 0),
('noobs', 1, NULL, 'self', 0, 50, '2014-12-02 08:47:46', 'nolvorite', 'Noobs', 'Noobs', 'da582833ad', 1, NULL, NULL, 1, 0, 0),
('Test!!!!\r<br>Yes', 1, NULL, 'self', 0, 51, '2014-12-02 19:35:08', 'nolvorite', 'Test', 'Test', '4a6d4eacbc', 1, NULL, NULL, 1, 0, 0),
(' ', 1, NULL, 'self', 0, 52, '2014-12-02 20:22:46', 'nolvorite', 'Hmm', 'Hmm', '69775851ce', 1, NULL, NULL, 1, 0, 0),
('...Even explain it in detail, if you like!', 1, NULL, 'self', 0, 53, '2014-12-02 21:39:35', 'nolvorite', 'Thoughts you might have right now, post it here!', 'Thoughts_you_might_have_right_now__post_it_here_', '9299c3b5ef', 1, NULL, NULL, 1, 0, 0),
('...Even explain it in detail, if you like!', 1, NULL, 'self', 0, 54, '2014-12-02 21:47:31', 'nolvorite', 'Testing em'' now', 'Testing_em___now', '8a5723ec91', 1, NULL, NULL, 1, 0, 0),
(' ', 1, NULL, 'self', 0, 55, '2014-12-02 21:48:04', 'nolvorite', 'And again', 'And_again', 'fdf02221ab', 1, NULL, NULL, 1, 0, 0),
('Hmm', 1, NULL, 'self', 0, 56, '2014-12-03 02:25:29', 'nolvorite', 'Hmm', 'Hmm', '09a0f5e1fc', 1, NULL, NULL, 1, 0, 0),
('Now?', 1, NULL, 'self', 0, 57, '2014-12-03 02:42:34', 'nolvorite', 'Try this?', 'Try_this_', '04def5aa86', 1, NULL, NULL, 1, 0, 0),
('hmm hmm hmm', 1, NULL, 'self', 0, 58, '2014-12-03 03:07:15', 'nolvorite', 'Test for timezone adjustment', 'Test_for_timezone_adjustment', '25b8e1f905', 1, NULL, NULL, 1, 0, 0),
('hmm', 1, NULL, 'self', 0, 59, '2014-12-04 01:25:26', 'nolvorite', 'New post btw', 'New_post_btw', '22498c2aff', 1, NULL, NULL, 1, 0, 0),
('repluuuuu', 1, NULL, 'self', 0, 60, '2014-12-04 01:37:30', 'nolvorite', 'test ', 'test_', '120ffce301', 1, NULL, NULL, 1, 0, 0),
('One flips out, and then they both do. (yu-gi-oh joke--ikr)', 1, NULL, 'self', 0, 61, '2014-12-04 01:43:05', 'nolvorite', '(One-liner) [Two Penguin Soldiers meet in a bar.]', '_One-liner___Two_Penguin_Soldiers_meet_in_a_bar__', '1ff77ba424', 1, NULL, NULL, 1, 1, 0),
('Muchacha!', 1, NULL, 'self', 0, 62, '2014-12-05 01:55:01', 'nolvorite', 'Muchacho', 'Muchacho', 'e6c64e50b1', 1, NULL, NULL, 1, 1, 0),
('Sigh... with a poll. again. soz', 1, NULL, 'self', 0, 88, '2014-12-08 01:22:44', 'nolvorite', 'Test question', 'Test_question', '6845525f04', 1, NULL, NULL, 2, 0, 0),
('I swear right', 1, NULL, 'self', 0, 89, '2014-12-08 01:24:52', 'nolvorite', 'Soz....', 'Soz____', 'a1f4d23957', 1, NULL, NULL, 1, 1, 0),
('Test post', 1, NULL, 'self', 0, 90, '2014-12-12 19:46:39', 'nolvorite', 'Test post', 'Test_post', '19adda3671', 1, NULL, NULL, 1, 0, 0),
('Replyyyy', 2, NULL, 'n-a', 90, 91, '2014-12-15 03:16:15', 'nolvorite', '', '', 'bba3a58208', 1, 90, NULL, 1, 0, 0),
('And again', 2, NULL, 'n-a', 91, 92, '2014-12-15 03:16:23', 'nolvorite', 'Comments', 'Comments', 'bb3e86f54d', 1, 90, NULL, 1, 0, 0),
('Test', 1, NULL, 'self', 0, 94, '2014-12-15 04:19:23', 'nerd', 'Test reply', 'Test_reply', 'ff834e9252', 1, NULL, NULL, 1, 0, 0),
('Idiot', 2, NULL, 'n-a', 90, 95, '2014-12-15 04:30:22', 'nerd', '', '', '2780b57e60', 1, 90, NULL, 1, 0, 0),
('Test again?', 2, NULL, 'n-a', 90, 96, '2014-12-15 04:33:12', 'nerd', '', '', '1fe92b7e54', 1, 90, NULL, 1, 0, 0),
('Yes', 2, NULL, 'n-a', 96, 97, '2014-12-15 04:42:30', 'nerd', 'Comments', 'Comments', 'e8fc7cd6ad', 1, 90, NULL, 1, 0, 0),
('Jmmm', 2, NULL, 'n-a', 97, 98, '2014-12-15 04:45:17', 'nolvorite', 'Comments', 'Comments', '76dd0f2cdb', 1, 90, NULL, 1, 0, 0),
('Test', 2, NULL, 'n-a', 90, 99, '2014-12-15 04:50:28', 'nerd', '', '', 'd2ee2bb9ca', 1, 90, NULL, 1, 0, 0),
('Hmmm....', 2, NULL, 'n-a', 90, 100, '2014-12-15 04:53:20', 'nerd', '', '', 'eff7fb6aa9', 1, 90, NULL, 1, 0, 0),
('Text', 1, NULL, 'self', 0, 101, '2014-12-15 04:56:11', 'nerd', 'Text', 'Text', 'a81b31bbcd', 1, NULL, NULL, 1, 0, 0),
('Text', 2, NULL, 'n-a', 101, 102, '2014-12-15 04:56:18', 'nerd', '', '', 'bd4603950f', 1, 101, NULL, 1, 0, 0),
('Test', 2, NULL, 'n-a', 90, 103, '2014-12-15 04:56:41', 'nerd', '', '', '58d1e6cbcd', 1, 90, NULL, 1, 0, 0),
('Hmm....', 2, NULL, 'n-a', 101, 104, '2014-12-15 05:06:18', 'nolvorite', '', '', 'fa79cf8b24', 1, 101, NULL, 1, 0, 0),
('Test', 2, NULL, 'n-a', 90, 105, '2014-12-15 05:11:14', 'nolvorite', '', '', '705e00bf5d', 1, 90, NULL, 1, 0, 0),
('TO BE OR NOT TO BE', 2, NULL, 'n-a', 90, 106, '2014-12-15 05:17:57', 'nolvorite', '', '', 'e87c71dd12', 1, 90, NULL, 1, 0, 0),
('Tesssdsdsrdx', 2, NULL, 'n-a', 101, 107, '2014-12-15 05:19:34', 'nolvorite', '', '', 'b5e9ec5dd0', 1, 101, NULL, 1, 0, 0),
('No', 2, NULL, 'n-a', 107, 108, '2014-12-15 05:21:54', 'nerd', 'Comments', 'Comments', '39cb8196e1', 1, 101, NULL, 1, 0, 0),
('ugh', 2, NULL, 'n-a', 90, 109, '2014-12-15 05:22:19', 'nerd', '', '', '66d8b94944', 1, 90, NULL, 1, 0, 0),
('axiom', 2, NULL, 'n-a', 90, 110, '2014-12-15 05:27:31', 'nerd', '', '', 'c887985a54', 1, 90, NULL, 1, 0, 0),
('axiom', 2, NULL, 'n-a', 90, 111, '2014-12-15 05:27:56', 'nerd', '', '', '45ecf3cde1', 1, 90, NULL, 1, 0, 0),
('If you feel the urge to freak do the jitterbug', 2, NULL, 'n-a', 90, 112, '2014-12-15 05:30:21', 'nerd', '', '', '2a93c41df0', 1, 90, NULL, 1, 0, 0),
('If you feel the urge to freak do the jitterbug', 2, NULL, 'n-a', 90, 113, '2014-12-15 05:30:48', 'nerd', '', '', '77c0d547d4', 1, 90, NULL, 1, 0, 0),
('If you feel the urge to freak do the jitterbug', 2, NULL, 'n-a', 90, 114, '2014-12-15 05:31:17', 'nerd', '', '', '131f77271a', 1, 90, NULL, 1, 0, 0),
('If you feel the urge to freak do the jitterbug', 2, NULL, 'n-a', 90, 115, '2014-12-15 05:37:19', 'nerd', '', '', 'c6f6d3f4fb', 1, 90, NULL, 1, 0, 0),
('If you feel the urge to freak do the jitterbug', 2, NULL, 'n-a', 90, 116, '2014-12-15 05:38:11', 'nerd', '', '', 'd5da65c5d9', 1, 90, NULL, 1, 0, 0),
('If you feel the urge to freak do the jitterbug', 2, NULL, 'n-a', 90, 117, '2014-12-15 05:44:15', 'nerd', '', '', 'bb5393f08f', 1, 90, NULL, 1, 0, 0),
('Reply', 2, NULL, 'n-a', 94, 118, '2014-12-17 19:40:03', 'nolvorite', '', '', 'be23c99542', 1, 94, NULL, 1, 0, 0),
(NULL, 0, NULL, '', 0, 119, '2014-12-17 22:11:33', '', NULL, NULL, NULL, 1, NULL, NULL, 1, 0, 0),
('make a notification!', 2, NULL, 'n-a', 90, 120, '2014-12-18 03:27:07', 'nerd', '', '', 'f5653750e8', 1, 90, NULL, 1, 0, 0),
('okay, my bad, forgot the other columns. Try another notification!', 2, NULL, 'n-a', 90, 121, '2014-12-18 03:33:50', 'nerd', '', '', '52613cbd64', 1, 90, NULL, 1, 0, 0),
('dang it', 2, NULL, 'n-a', 90, 122, '2014-12-18 03:35:02', 'nerd', '', '', '79128f024a', 1, 90, NULL, 1, 0, 0),
('one sec...', 2, NULL, 'n-a', 90, 123, '2014-12-18 03:36:09', 'nerd', '', '', '976543eda8', 1, 90, NULL, 1, 0, 0),
('hmmmm', 2, NULL, 'n-a', 90, 124, '2014-12-18 03:36:30', 'nerd', '', '', '22b70358be', 1, 90, NULL, 1, 0, 0),
('ewwwwww', 2, NULL, 'n-a', 90, 125, '2014-12-18 03:36:54', 'nerd', '', '', 'c61422f14b', 1, 90, NULL, 1, 0, 0),
('test.....', 2, NULL, 'n-a', 90, 126, '2014-12-18 03:37:26', 'nerd', '', '', 'f6e15a0f93', 1, 90, NULL, 1, 0, 0),
('This is annoying.', 2, NULL, 'n-a', 90, 127, '2014-12-18 03:42:05', 'nerd', '', '', 'f6ad018d5c', 1, 90, NULL, 1, 0, 0),
('I mean seriously.', 2, NULL, 'n-a', 90, 128, '2014-12-18 03:45:45', 'nerd', '', '', 'bfca954d5f', 1, 90, NULL, 1, 0, 0),
('Hmm.....', 2, NULL, 'n-a', 90, 129, '2014-12-18 03:49:26', 'nerd', '', '', '755552445c', 1, 90, NULL, 1, 0, 0),
('Tesm', 2, NULL, 'n-a', 90, 130, '2014-12-18 03:54:24', 'nerd', '', '', '3893981dc6', 1, 90, NULL, 1, 0, 0),
('somebody gag me', 2, NULL, 'n-a', 90, 131, '2014-12-18 03:56:26', 'nerd', '', '', 'de53769b21', 1, 90, NULL, 1, 0, 0),
('I mean it', 2, NULL, 'n-a', 90, 132, '2014-12-18 03:59:00', 'nerd', '', '', 'ea8f74f1bf', 1, 90, NULL, 1, 0, 0),
('eugh', 2, NULL, 'n-a', 90, 133, '2014-12-18 04:01:39', 'nerd', '', '', '24c1496955', 1, 90, NULL, 1, 0, 0),
('Test for SQL errors', 2, NULL, 'n-a', 90, 134, '2014-12-18 04:03:50', 'nerd', '', '', '182e910e0a', 1, 90, NULL, 1, 0, 0),
('or other errors :/', 2, NULL, 'n-a', 90, 135, '2014-12-18 04:05:40', 'nerd', '', '', '922347a11c', 1, 90, NULL, 1, 0, 0),
('This sucks', 2, NULL, 'n-a', 90, 136, '2014-12-18 04:06:45', 'nerd', '', '', '2852f12123', 1, 90, NULL, 1, 0, 0),
('Okay this should be the charm', 2, NULL, 'n-a', 90, 137, '2014-12-18 04:15:45', 'nerd', '', '', 'c4fd398dd2', 1, 90, NULL, 1, 0, 0),
('Again', 1, NULL, 'self', 0, 138, '2014-12-19 16:24:12', 'nolvorite', 'Test poll question', 'Test_poll_question', 'ee4bb77fed', 1, NULL, NULL, 1, 1, 0),
('Test', 1, NULL, 'self', 0, 139, '2014-12-26 06:25:53', 'nolvorite', 'Hmmmmmmmmm', 'Hmmmmmmmmm', 'b3a9334ded', 1, NULL, NULL, 2, 0, 0),
('stfu noob', 2, NULL, 'n-a', 137, 140, '2014-12-28 21:47:54', 'nolvorite', 'Comments', 'Comments', '4b60367874', 1, 90, NULL, 1, 0, 0),
('ur my bitch now', 2, NULL, 'n-a', 137, 141, '2014-12-28 22:03:13', 'nolvorite', 'Comments', 'Comments', 'e1ba3e6d1b', 1, 90, NULL, 1, 0, 0),
('Yup', 2, NULL, 'n-a', 137, 142, '2014-12-28 22:06:10', 'nolvorite', 'Comments', 'Comments', '3f8dbdee7a', 1, 90, NULL, 1, 0, 0),
('Again', 2, NULL, 'n-a', 137, 143, '2014-12-28 22:07:06', 'nolvorite', 'Comments', 'Comments', 'bb106a0ebc', 1, 90, NULL, 1, 0, 0),
('And again', 2, NULL, 'n-a', 137, 144, '2014-12-28 22:08:32', 'nerd', 'Comments', 'Comments', '354fd07a14', 1, 90, NULL, 1, 0, 0),
('Eugh', 2, NULL, 'n-a', 137, 145, '2014-12-28 22:09:25', 'nolvorite', 'Comments', 'Comments', 'be805506ae', 1, 90, NULL, 1, 0, 0),
('oh right.', 2, NULL, 'n-a', 137, 146, '2014-12-28 22:10:31', 'nerd', 'Comments', 'Comments', '237aba4b41', 1, 90, NULL, 1, 0, 0),
('And for legitimacy...', 2, NULL, 'n-a', 137, 147, '2014-12-28 22:12:12', 'nolvorite', 'Comments', 'Comments', 'd04238e820', 1, 90, NULL, 1, 0, 0),
('Test for replying to your own post.', 2, NULL, 'n-a', 147, 148, '2014-12-28 22:57:11', 'nolvorite', 'Comments', 'Comments', '0809dfc8da', 1, 90, NULL, 1, 0, 0),
('Again?', 2, NULL, 'n-a', 147, 149, '2014-12-28 22:57:41', 'nolvorite', 'Comments', 'Comments', '19a06a3c85', 1, 90, NULL, 1, 0, 0),
('Nao', 2, NULL, 'n-a', 147, 150, '2014-12-28 22:59:10', 'nolvorite', 'Comments', 'Comments', '5da50d3f9f', 1, 90, NULL, 1, 0, 0),
('Hmmm', 2, NULL, 'n-a', 147, 151, '2014-12-28 23:00:50', 'nolvorite', 'Comments', 'Comments', 'a56328b3b9', 1, 90, NULL, 1, 0, 0),
('Again.', 2, NULL, 'n-a', 146, 152, '2014-12-29 00:26:53', 'nolvorite', 'Comments', 'Comments', '76bd3af5eb', 1, 90, NULL, 1, 0, 0),
('Testing levels.', 2, NULL, 'n-a', 152, 153, '2014-12-29 00:27:19', 'nolvorite', 'Comments', 'Comments', '6292754060', 1, 90, NULL, 1, 0, 0),
('Again.', 2, NULL, 'n-a', 148, 154, '2014-12-29 00:33:10', 'nolvorite', 'Comments', 'Comments', 'dc7a020920', 1, 90, NULL, 1, 0, 0),
('Now?', 2, NULL, 'n-a', 154, 155, '2014-12-29 00:34:25', 'nolvorite', 'Comments', 'Comments', '6966e97fe9', 1, 90, NULL, 1, 0, 0),
('Hmmm', 2, NULL, 'n-a', 147, 156, '2014-12-29 00:34:47', 'nolvorite', 'Comments', 'Comments', 'bf2aa304a2', 1, 90, NULL, 1, 0, 0),
('eugh', 2, NULL, 'n-a', 156, 157, '2014-12-30 02:25:10', 'nolvorite', 'Comments', 'Comments', '1028a261a2', 1, 90, NULL, 1, 0, 0),
('Ayyyyyyy', 2, NULL, 'n-a', 147, 158, '2015-01-03 18:49:06', 'nerd', 'Comments', 'Comments', '6a05952fa0', 1, 90, NULL, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE IF NOT EXISTS `school` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `coordinates` varchar(50) DEFAULT NULL,
  `motto` varchar(50) DEFAULT NULL,
  `religiousaffiliations` varchar(50) DEFAULT NULL,
  `established` varchar(50) DEFAULT NULL,
  `principal` varchar(50) DEFAULT NULL,
  `headmaster` varchar(50) DEFAULT NULL,
  `chaplain` varchar(50) DEFAULT NULL,
  `faculty` varchar(50) DEFAULT NULL,
  `grades` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `numberofstudents` varchar(50) DEFAULT NULL,
  `campussize` varchar(50) DEFAULT NULL,
  `campustype` varchar(50) DEFAULT NULL,
  `colors` varchar(50) DEFAULT NULL,
  `athletics` varchar(50) DEFAULT NULL,
  `mascot` varchar(50) DEFAULT NULL,
  `rival` varchar(50) DEFAULT NULL,
  `accreditation` varchar(50) DEFAULT NULL,
  `averagesatscores` varchar(50) DEFAULT NULL,
  `averageactscores` varchar(50) DEFAULT NULL,
  `publication` varchar(50) DEFAULT NULL,
  `newspaper` varchar(50) DEFAULT NULL,
  `yearbook` varchar(50) DEFAULT NULL,
  `tuition` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `link` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `schoolboard` varchar(50) DEFAULT NULL,
  `schooldistrict` varchar(50) DEFAULT NULL,
  `ncesdistrictid` varchar(50) DEFAULT NULL,
  `oversight` varchar(50) DEFAULT NULL,
  `ceebcode` varchar(50) DEFAULT NULL,
  `ncesschoolid` varchar(50) DEFAULT NULL,
  `enrollment` varchar(50) DEFAULT NULL,
  `studenttoteacherratio` varchar(50) DEFAULT NULL,
  `educationsystem` varchar(50) DEFAULT NULL,
  `classesoffered` varchar(50) DEFAULT NULL,
  `schoolcolors` varchar(50) DEFAULT NULL,
  `athleticsconference` varchar(50) DEFAULT NULL,
  `teamname` varchar(50) DEFAULT NULL,
  `usnwrranking` varchar(50) DEFAULT NULL,
  `feederschools` varchar(50) DEFAULT NULL,
  `affiliation` varchar(50) DEFAULT NULL,
  `ed_level` varchar(25) DEFAULT NULL,
  `schooltype` varchar(50) DEFAULT NULL,
  `founded` varchar(50) DEFAULT NULL,
  `assistantprincipals` varchar(50) DEFAULT NULL,
  `staff` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `campus` varchar(50) DEFAULT NULL,
  `rivals` varchar(50) DEFAULT NULL,
  `communitiesserved` varchar(50) DEFAULT NULL,
  `formernames` varchar(50) DEFAULT NULL,
  `endowment` varchar(50) DEFAULT NULL,
  `president` varchar(50) DEFAULT NULL,
  `provost` varchar(50) DEFAULT NULL,
  `academicstaff` varchar(50) DEFAULT NULL,
  `students` varchar(50) DEFAULT NULL,
  `undergraduates` varchar(50) DEFAULT NULL,
  `postgraduates` varchar(50) DEFAULT NULL,
  `doctoralstudents` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `sports` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `affiliations` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`s_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`s_id`, `name`, `type`, `coordinates`, `motto`, `religiousaffiliations`, `established`, `principal`, `headmaster`, `chaplain`, `faculty`, `grades`, `gender`, `numberofstudents`, `campussize`, `campustype`, `colors`, `athletics`, `mascot`, `rival`, `accreditation`, `averagesatscores`, `averageactscores`, `publication`, `newspaper`, `yearbook`, `tuition`, `website`, `link`, `status`, `schoolboard`, `schooldistrict`, `ncesdistrictid`, `oversight`, `ceebcode`, `ncesschoolid`, `enrollment`, `studenttoteacherratio`, `educationsystem`, `classesoffered`, `schoolcolors`, `athleticsconference`, `teamname`, `usnwrranking`, `feederschools`, `affiliation`, `ed_level`, `schooltype`, `founded`, `assistantprincipals`, `staff`, `language`, `campus`, `rivals`, `communitiesserved`, `formernames`, `endowment`, `president`, `provost`, `academicstaff`, `students`, `undergraduates`, `postgraduates`, `doctoralstudents`, `location`, `sports`, `nickname`, `affiliations`) VALUES
(1, 'Nettleton High School (Arkansas)', '', '35Â°48â€²45â€³N  90Â°38â€²58â€³W    /  35.81250Â°N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9-12', NULL, '', NULL, 'City; small', NULL, NULL, 'Raider', NULL, 'AdvancED (1965-)', NULL, NULL, NULL, NULL, NULL, NULL, 'nettleton.ar.schoolwebpages.com.', 'http://en.wikipedia.org/wiki/Nettleton_High_School', 'Open', 'Nettleton School Board', 'Nettleton School District', '0510440', 'Arkansas Department of Education (ADE)', '041815', '051044000762', '877Â (2010-11[ 2] )', '13.27', 'ADE Smart Core curriculum', 'Regular, Advanced Placement', 'Â Â Â Â   Black\r\n Â Â Â Â   Gold', '5A East (2012-14)', 'Nettleton Raiders', 'Unranked (2012)', 'Nettleton Junior High School (6-8)', 'Arkansas Activities Association (AAA)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Jonesboro High School (Arkansas)', '', NULL, NULL, NULL, NULL, 'David Clark', NULL, NULL, NULL, '10â€“12', NULL, '', NULL, NULL, 'Â Â Â Â   Black Â Â Â Â   Gold Â Â Â Â   White', NULL, 'Golden Hurricane', NULL, 'North Central Association (NCA) Commission on Accr', NULL, NULL, NULL, NULL, NULL, NULL, 'www.jps.k12.ar.us', 'http://en.wikipedia.org/wiki/Jonesboro_High_School', NULL, NULL, 'Jonesboro Public Schools', NULL, NULL, NULL, NULL, '1,066Â (2013-14)', NULL, NULL, NULL, NULL, '7A/6A East (2012-14)', NULL, NULL, 'Annie Camp Junior High School\r\n Douglas MacArthur ', NULL, 'High School', 'Public, secondary school', '1899Â (1899 )', 'Shannon Lewis\r\n Brett Brown', '118', 'English', 'Suburban', 'West Memphis High School\r\n Nettleton High School\r\n', 'Jonesboro, tnÂ°', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Texas A&amp;amp;M University', 'Flagship state university\r\n Land-grant university\r\n Sea-grant university\r\n Space-grant university', NULL, NULL, NULL, '1876', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 'Â   Â Maroon and white', 'NCAA Division I â€“ SEC', 'Reveille VIII', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'www.tamu.edu', 'http://en.wikipedia.org/wiki/Texas_A%26M_Universit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'College', NULL, NULL, NULL, NULL, NULL, 'College town/Suburban, 5,500 acres (20Â km2)', NULL, NULL, 'The Agricultural and Mechanical College of Texas (', '$ 7.6 billion(2012)', 'Mark Hussey', 'Karan Watson', '2,700', '62,185 (Fall 2014)', '47,567 (Fall 2014)', '14,618 (Fall 2014)', '4,804 (Fall 2014)', 'College Station , Texas , US', '20 varsity teams', 'Aggies', 'Texas A&amp;M University System AAU CONAHEC ORAU U');

-- --------------------------------------------------------

--
-- Table structure for table `sg_permissions`
--

CREATE TABLE IF NOT EXISTS `sg_permissions` (
  `access_type` varchar(30) NOT NULL,
  `towhom` varchar(30) NOT NULL,
  `date_g` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `granted_by` varchar(35) NOT NULL,
  `sgp_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sgp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `sg_permissions`
--

INSERT INTO `sg_permissions` (`access_type`, `towhom`, `date_g`, `granted_by`, `sgp_id`) VALUES
('friend snowglobe', 'nolvorite', '2014-12-16 00:00:00', 'nerd', 1),
('friend snowglobe', 'nerd', '2014-12-17 00:00:00', 'nolvorite', 2),
('friend snowglobe', 'nolvorite', '0000-00-00 00:00:00', 'nolvorite', 3),
('friend snowglobe', 'test_user4aaaasd', '0000-00-00 00:00:00', 'test_user4aaaasd', 4),
('friend snowglobe', 'test_9', '0000-00-00 00:00:00', 'test_9', 5),
('friend snowglobe', 'asdasdas', '0000-00-00 00:00:00', 'asdasdas', 6),
('friend snowglobe', 'nerd', '0000-00-00 00:00:00', 'nerd', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sg_settings`
--

CREATE TABLE IF NOT EXISTS `sg_settings` (
  `id` varchar(36) NOT NULL,
  `a1_check` varchar(30) DEFAULT NULL,
  `a2_check` varchar(30) DEFAULT NULL,
  `a3_check` varchar(30) DEFAULT NULL,
  `a4_check` varchar(30) DEFAULT NULL,
  `a5_check` varchar(30) DEFAULT NULL,
  `real_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`real_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sg_settings`
--

INSERT INTO `sg_settings` (`id`, `a1_check`, `a2_check`, `a3_check`, `a4_check`, `a5_check`, `real_id`) VALUES
('user_1', 'all', 'all', 'all', 'self', 'self', 1),
('user_27', 'all', 'all', 'all', 'self', 'self', 2),
('user_31', 'all', 'all', 'all', 'self', 'self', 3),
('user_32', 'all', 'all', 'all', 'self', 'self', 4),
('user_36', 'all', 'all', 'all', 'self', 'self', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` char(25) DEFAULT NULL,
  `password` char(50) DEFAULT NULL,
  `isvalidated` int(11) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `joindate` datetime DEFAULT NULL,
  `fullname` char(30) DEFAULT NULL,
  `admin_notifs` varchar(6) DEFAULT NULL,
  `root_admin_status` varchar(6) DEFAULT NULL,
  `month2` int(5) DEFAULT NULL,
  `day2` int(5) DEFAULT NULL,
  `year2` int(4) DEFAULT NULL,
  `salt` varchar(60) DEFAULT NULL,
  `login_attempts` varchar(1) DEFAULT NULL,
  `login_att_last` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_active_at` datetime DEFAULT '0000-00-00 00:00:00',
  `last_activity` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `root_admin_status` (`root_admin_status`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `isvalidated`, `email`, `userid`, `joindate`, `fullname`, `admin_notifs`, `root_admin_status`, `month2`, `day2`, `year2`, `salt`, `login_attempts`, `login_att_last`, `last_active_at`, `last_activity`) VALUES
('nolvorite', 'd83ab46b4325d8bcd1102188c38d8a098b23a168', 1, 'hns_marcon@hotmail.com', 1, '2014-11-14 23:52:34', 'Hans Marcon', 'on', '1', 4, 9, 1996, '6c478c525f517a7ab838', '0', '2014-12-15 13:31:51', '2015-01-12 19:33:00', NULL),
('test_user4aaaasd', 'c08c7f680792684058eafc92e8e1e85e07617eff', NULL, 'asdasdas@asda.asdas', 27, '2014-11-13 21:16:30', 'asdas asdas', 'on', NULL, 12, 16, 1994, 'aad763cbecdacccb1f63', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('test_9', '6e1d3ee1ec90c3617dc4aff58fe39bba75a8b68e', NULL, 'laskdla@alsdkalsd.asdjas', 31, '2014-11-14 23:21:41', 'asdajsdjaks asdjaks', 'on', NULL, 4, 19, 1996, '3aab2407326f6ada6661', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
('asdasdas', 'ef659ade9df94a0bc3e792ec9e2f81095d375a48', NULL, 'hns_marcon@hotmail.coma', 32, '2014-11-13 21:16:30', 'asdasd asd asdas', 'on', NULL, 11, 15, 1999, 'e64ec838d0dba46ea10a', '0', '2014-12-02 00:06:50', '0000-00-00 00:00:00', NULL),
('nerd', '0989807af1ccfc712499519ebcb0e742b0597918', NULL, 'nerd@nerd.nerd', 36, '2014-12-14 22:10:24', 'John Hammercock', 'on', NULL, 6, 5, 1976, '9f5106ab7ebfe0e42b9a', '0', '2014-12-17 21:26:35', '2015-01-03 13:20:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `votes_q`
--

CREATE TABLE IF NOT EXISTS `votes_q` (
  `bywhom` varchar(25) NOT NULL,
  `timeof` datetime DEFAULT NULL,
  `which_post` int(11) NOT NULL,
  `vote` int(1) NOT NULL DEFAULT '1',
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=186 ;

--
-- Dumping data for table `votes_q`
--

INSERT INTO `votes_q` (`bywhom`, `timeof`, `which_post`, `vote`, `v_id`) VALUES
('nolvorite', '2014-12-02 18:57:30', 54, 1, 4),
('nolvorite', '2014-12-02 20:47:30', 55, 1, 11),
('nolvorite', '2014-12-02 21:04:23', 56, 1, 12),
('nolvorite', '2014-12-02 21:04:25', 57, 1, 13),
('nolvorite', '2014-12-02 21:27:30', 5, 1, 15),
('nolvorite', '2014-12-02 21:27:30', 6, 1, 16),
('nolvorite', '2014-12-02 21:27:31', 7, 1, 17),
('nolvorite', '2014-12-02 21:27:31', 8, 1, 18),
('nolvorite', '2014-12-02 21:27:31', 9, 1, 19),
('nolvorite', '2014-12-02 21:27:31', 10, 1, 20),
('nolvorite', '2014-12-02 21:27:32', 11, 1, 21),
('nolvorite', '2014-12-02 21:27:32', 12, 1, 22),
('nolvorite', '2014-12-02 21:27:32', 13, 1, 23),
('nolvorite', '2014-12-02 21:27:32', 14, 1, 24),
('nolvorite', '2014-12-02 21:27:32', 15, 1, 25),
('nolvorite', '2014-12-02 21:27:32', 16, 1, 26),
('nolvorite', '2014-12-02 21:27:32', 17, 1, 27),
('nolvorite', '2014-12-02 21:27:32', 18, 1, 28),
('nolvorite', '2014-12-02 21:27:32', 19, 1, 29),
('nolvorite', '2014-12-02 21:27:33', 21, 1, 30),
('nolvorite', '2014-12-02 21:27:33', 22, 1, 31),
('nolvorite', '2014-12-02 21:27:33', 23, 1, 32),
('nolvorite', '2014-12-02 21:27:33', 24, 1, 33),
('nolvorite', '2014-12-02 21:27:33', 25, 1, 34),
('nolvorite', '2014-12-02 21:27:33', 26, 1, 35),
('nolvorite', '2014-12-02 21:27:33', 27, 1, 36),
('nolvorite', '2014-12-02 21:27:33', 28, 1, 37),
('nolvorite', '2014-12-02 21:27:34', 29, 1, 38),
('nolvorite', '2014-12-02 21:27:34', 30, 1, 39),
('nolvorite', '2014-12-02 21:27:34', 31, 1, 40),
('nolvorite', '2014-12-02 21:27:34', 32, 1, 41),
('nolvorite', '2014-12-02 21:27:34', 33, 1, 42),
('nolvorite', '2014-12-02 21:27:35', 34, 1, 43),
('nolvorite', '2014-12-02 21:27:35', 35, 1, 44),
('nolvorite', '2014-12-02 21:27:35', 36, 1, 45),
('nolvorite', '2014-12-02 21:27:35', 37, 1, 46),
('nolvorite', '2014-12-02 21:27:35', 38, 1, 47),
('nolvorite', '2014-12-02 21:27:35', 39, 1, 48),
('nolvorite', '2014-12-02 21:27:35', 40, 1, 49),
('nolvorite', '2014-12-02 21:27:36', 41, 1, 50),
('nolvorite', '2014-12-02 21:27:36', 42, 1, 51),
('nolvorite', '2014-12-02 21:27:36', 43, 1, 52),
('nolvorite', '2014-12-02 21:27:36', 44, 1, 53),
('nolvorite', '2014-12-02 21:27:36', 45, 1, 54),
('nolvorite', '2014-12-02 21:27:36', 46, 1, 55),
('nolvorite', '2014-12-02 21:27:36', 47, 1, 56),
('nolvorite', '2014-12-02 21:27:37', 48, 1, 57),
('nolvorite', '2014-12-02 21:27:37', 49, 1, 58),
('nolvorite', '2014-12-02 21:27:37', 50, 1, 59),
('nolvorite', '2014-12-02 21:27:37', 51, 1, 60),
('nolvorite', '2014-12-02 21:27:37', 52, 1, 61),
('nolvorite', '2014-12-02 21:27:37', 53, 1, 62),
('nolvorite', '2014-12-02 21:29:22', 58, 1, 64),
('nolvorite', '2014-12-03 19:29:43', 59, 1, 65),
('nolvorite', '2014-12-04 19:49:30', 60, 1, 66),
('nolvorite', '2014-12-05 18:03:59', 61, 1, 69),
('nolvorite', '2014-12-07 19:37:09', 62, 1, 70),
('nolvorite', '2014-12-06 23:07:11', 63, 1, 71),
('nolvorite', '2014-12-06 23:13:55', 64, 1, 72),
('nolvorite', '2014-12-07 19:22:45', 88, 1, 75),
('', '2014-12-12 13:32:06', 58, 0, 78),
('nolvorite', '2014-12-22 10:20:23', 89, 0, 83),
('nolvorite', '2014-12-17 15:42:44', 90, 1, 84),
('nolvorite', '2014-12-14 21:16:15', 0, 1, 85),
('nolvorite', '2014-12-14 21:16:16', 91, 1, 86),
('nolvorite', '2014-12-14 21:16:23', 0, 1, 87),
('nolvorite', '2014-12-14 21:16:24', 92, 1, 88),
('nerd', '2014-12-14 22:19:24', 94, 1, 89),
('nerd', '2014-12-14 22:30:23', 0, 1, 90),
('nerd', '2014-12-14 22:30:23', 95, 1, 91),
('nerd', '2014-12-14 22:33:12', 0, 1, 92),
('nerd', '2014-12-14 22:33:12', 96, 1, 93),
('nerd', '2014-12-14 22:42:30', 0, 1, 94),
('nerd', '2014-12-14 22:42:30', 97, 1, 95),
('nolvorite', '2014-12-14 22:45:17', 0, 1, 96),
('nolvorite', '2014-12-14 22:45:17', 98, 1, 97),
('nerd', '2014-12-14 22:50:28', 0, 1, 98),
('nerd', '2014-12-14 22:50:29', 99, 1, 99),
('nerd', '2014-12-14 22:53:20', 0, 1, 100),
('nerd', '2014-12-14 22:53:20', 100, 1, 101),
('nerd', '2014-12-14 23:32:41', 101, 1, 102),
('nerd', '2014-12-14 22:56:18', 0, 1, 103),
('nerd', '2014-12-14 22:56:19', 102, 1, 104),
('nerd', '2014-12-14 22:56:42', 0, 1, 105),
('nerd', '2014-12-14 22:56:42', 103, 1, 106),
('nolvorite', '2014-12-14 23:06:18', 0, 1, 107),
('nolvorite', '2014-12-14 23:06:18', 104, 1, 108),
('nolvorite', '2014-12-14 23:11:14', 0, 1, 109),
('nolvorite', '2014-12-14 23:11:14', 105, 1, 110),
('nolvorite', '2014-12-14 23:17:57', 0, 1, 111),
('nolvorite', '2014-12-14 23:17:57', 106, 1, 112),
('nolvorite', '2014-12-14 23:19:34', 0, 1, 113),
('nolvorite', '2014-12-14 23:19:35', 107, 1, 114),
('nerd', '2014-12-14 23:21:55', 0, 1, 115),
('nerd', '2014-12-14 23:21:55', 108, 1, 116),
('nerd', '2014-12-14 23:22:19', 0, 1, 117),
('nerd', '2014-12-14 23:22:20', 109, 1, 118),
('nerd', '2014-12-14 23:27:31', 0, 1, 119),
('nerd', '2014-12-14 23:27:31', 110, 1, 120),
('nerd', '2014-12-14 23:27:56', 0, 1, 121),
('nerd', '2014-12-14 23:27:57', 111, 1, 122),
('nerd', '2014-12-14 23:30:21', 0, 1, 123),
('nerd', '2014-12-14 23:30:22', 112, 1, 124),
('nerd', '2014-12-14 23:30:48', 0, 1, 125),
('nerd', '2014-12-14 23:30:48', 113, 1, 126),
('nerd', '2014-12-14 23:31:17', 0, 1, 127),
('nerd', '2014-12-14 23:31:18', 114, 1, 128),
('nerd', '2014-12-14 23:37:19', 0, 1, 129),
('nerd', '2014-12-14 23:37:20', 115, 1, 130),
('nerd', '2014-12-14 23:38:11', 0, 1, 131),
('nerd', '2014-12-14 23:38:11', 116, 1, 132),
('nerd', '2014-12-14 23:44:16', 0, 1, 133),
('nerd', '2014-12-14 23:44:16', 117, 1, 134),
('nolvorite', '2014-12-17 13:40:03', 0, 1, 135),
('nolvorite', '2014-12-17 13:40:04', 118, 1, 136),
('nolvorite', '2014-12-17 14:20:55', 94, 1, 137),
('nolvorite', '2014-12-17 14:20:58', 101, 1, 138),
('nerd', '2014-12-17 15:42:44', 90, 1, 139),
('nerd', '2014-12-17 15:44:38', 87, 1, 140),
('nerd', '2014-12-22 10:20:23', 89, 0, 142),
('nerd', '2014-12-17 16:13:28', 88, 1, 143),
('nerd', '2014-12-17 21:27:07', 120, 1, 144),
('nerd', '2014-12-17 21:33:50', 121, 1, 145),
('nerd', '2014-12-17 21:35:03', 122, 1, 146),
('nerd', '2014-12-17 21:36:10', 123, 1, 147),
('nerd', '2014-12-17 21:36:30', 124, 1, 148),
('nerd', '2014-12-17 21:36:54', 125, 1, 149),
('nerd', '2014-12-17 21:37:26', 126, 1, 150),
('nerd', '2014-12-17 21:42:06', 127, 1, 151),
('nerd', '2014-12-17 21:45:46', 128, 1, 152),
('nerd', '2014-12-17 21:49:27', 129, 1, 153),
('nerd', '2014-12-17 21:54:24', 130, 1, 154),
('nerd', '2014-12-17 21:56:27', 131, 1, 155),
('nerd', '2014-12-17 21:59:01', 132, 1, 156),
('nerd', '2014-12-17 22:01:39', 133, 1, 157),
('nerd', '2014-12-17 22:03:51', 134, 1, 158),
('nerd', '2014-12-17 22:05:41', 135, 1, 159),
('nerd', '2014-12-17 22:06:46', 136, 1, 160),
('nerd', '2014-12-17 22:15:46', 137, 1, 161),
('nolvorite', '2014-12-19 10:24:14', 138, 1, 162),
('nolvorite', '2015-01-03 13:20:30', 139, 1, 163),
('nerd', '2014-12-28 15:34:24', 138, 0, 164),
('nerd', '2015-01-03 13:20:30', 139, 1, 165),
('nerd', '2014-12-28 15:42:42', 62, 0, 166),
('nerd', '2014-12-28 15:46:25', 61, 0, 167),
('nolvorite', '2014-12-28 15:47:56', 140, 1, 168),
('nolvorite', '2014-12-28 16:03:14', 141, 1, 169),
('nolvorite', '2014-12-28 16:06:11', 142, 1, 170),
('nolvorite', '2014-12-28 16:07:07', 143, 1, 171),
('nerd', '2014-12-28 16:08:33', 144, 1, 172),
('nolvorite', '2014-12-28 16:09:26', 145, 1, 173),
('nerd', '2014-12-28 16:10:32', 146, 1, 174),
('nolvorite', '2014-12-28 16:12:13', 147, 1, 175),
('nolvorite', '2014-12-28 16:57:13', 148, 1, 176),
('nolvorite', '2014-12-28 16:57:42', 149, 1, 177),
('nolvorite', '2014-12-28 16:59:11', 150, 1, 178),
('nolvorite', '2014-12-28 17:00:51', 151, 1, 179),
('nolvorite', '2014-12-28 18:26:54', 152, 1, 180),
('nolvorite', '2014-12-28 18:27:20', 153, 1, 181),
('nolvorite', '2014-12-28 18:34:26', 155, 1, 182),
('nolvorite', '2014-12-28 18:34:49', 156, 1, 183),
('nolvorite', '2014-12-29 20:25:12', 157, 1, 184),
('nerd', '2015-01-03 12:49:08', 158, 1, 185);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
