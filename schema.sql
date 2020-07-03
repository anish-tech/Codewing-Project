-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 11:52 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-07-02 05:08:48', '2020-07-02 05:08:48', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `key` longtext DEFAULT NULL,
  `type` longtext DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `label` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`, `label`) VALUES
(1, '', '', 'save', 1, 1, '2020-07-03 08:03:31', '2020-07-03 08:03:31', 'Store Submission'),
(2, '', '', 'email', 1, 1, '2020-07-03 08:03:31', '2020-07-03 08:03:31', 'Email Confirmation'),
(3, '', '', 'email', 1, 1, '2020-07-03 08:03:31', '2020-07-03 08:03:31', 'Email Notification'),
(4, '', '', 'successmessage', 1, 1, '2020-07-03 08:03:31', '2020-07-03 08:03:31', 'Success Message'),
(5, '', '', 'save', 1, 2, '2016-08-24 10:54:20', NULL, 'Store Submission'),
(6, '', '', 'email', 1, 2, '2016-08-24 10:54:20', NULL, 'Email Confirmation'),
(7, '', '', 'email', 1, 2, '2016-08-24 11:02:39', NULL, 'Email Notification'),
(8, '', '', 'successmessage', 1, 2, '2016-08-24 10:54:20', NULL, 'Success Message');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext DEFAULT NULL,
  `meta_key` longtext DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'objectType', 'Action', 'objectType', 'Action'),
(2, 1, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(3, 1, 'editActive', '', 'editActive', ''),
(4, 1, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(5, 1, 'payment_gateways', '', 'payment_gateways', ''),
(6, 1, 'payment_total', '0', 'payment_total', '0'),
(7, 1, 'tag', '', 'tag', ''),
(8, 1, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(9, 1, 'email_subject', 'Ninja Forms Submission', 'email_subject', 'Ninja Forms Submission'),
(10, 1, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(11, 1, 'from_name', '', 'from_name', ''),
(12, 1, 'from_address', '', 'from_address', ''),
(13, 1, 'reply_to', '', 'reply_to', ''),
(14, 1, 'email_format', 'html', 'email_format', 'html'),
(15, 1, 'cc', '', 'cc', ''),
(16, 1, 'bcc', '', 'bcc', ''),
(17, 1, 'attach_csv', '', 'attach_csv', ''),
(18, 1, 'redirect_url', '', 'redirect_url', ''),
(19, 1, 'email_message_plain', '', 'email_message_plain', ''),
(20, 2, 'to', '{field:email}', 'to', '{field:email}'),
(21, 2, 'subject', 'This is an email action.', 'subject', 'This is an email action.'),
(22, 2, 'message', 'Hello, Ninja Forms!', 'message', 'Hello, Ninja Forms!'),
(23, 2, 'objectType', 'Action', 'objectType', 'Action'),
(24, 2, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(25, 2, 'editActive', '', 'editActive', ''),
(26, 2, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(27, 2, 'payment_gateways', '', 'payment_gateways', ''),
(28, 2, 'payment_total', '0', 'payment_total', '0'),
(29, 2, 'tag', '', 'tag', ''),
(30, 2, 'email_subject', 'Submission Confirmation ', 'email_subject', 'Submission Confirmation '),
(31, 2, 'email_message', '<p>{all_fields_table}<br></p>', 'email_message', '<p>{all_fields_table}<br></p>'),
(32, 2, 'from_name', '', 'from_name', ''),
(33, 2, 'from_address', '', 'from_address', ''),
(34, 2, 'reply_to', '', 'reply_to', ''),
(35, 2, 'email_format', 'html', 'email_format', 'html'),
(36, 2, 'cc', '', 'cc', ''),
(37, 2, 'bcc', '', 'bcc', ''),
(38, 2, 'attach_csv', '', 'attach_csv', ''),
(39, 2, 'email_message_plain', '', 'email_message_plain', ''),
(40, 3, 'objectType', 'Action', 'objectType', 'Action'),
(41, 3, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(42, 3, 'editActive', '', 'editActive', ''),
(43, 3, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(44, 3, 'payment_gateways', '', 'payment_gateways', ''),
(45, 3, 'payment_total', '0', 'payment_total', '0'),
(46, 3, 'tag', '', 'tag', ''),
(47, 3, 'to', '{system:admin_email}', 'to', '{system:admin_email}'),
(48, 3, 'email_subject', 'New message from {field:name}', 'email_subject', 'New message from {field:name}'),
(49, 3, 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>', 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>'),
(50, 3, 'from_name', '', 'from_name', ''),
(51, 3, 'from_address', '', 'from_address', ''),
(52, 3, 'reply_to', '{field:email}', 'reply_to', '{field:email}'),
(53, 3, 'email_format', 'html', 'email_format', 'html'),
(54, 3, 'cc', '', 'cc', ''),
(55, 3, 'bcc', '', 'bcc', ''),
(56, 3, 'attach_csv', '0', 'attach_csv', '0'),
(57, 3, 'email_message_plain', '', 'email_message_plain', ''),
(58, 4, 'message', 'Thank you {field:name} for filling out my form!', 'message', 'Thank you {field:name} for filling out my form!'),
(59, 4, 'objectType', 'Action', 'objectType', 'Action'),
(60, 4, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(61, 4, 'editActive', '', 'editActive', ''),
(62, 4, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(63, 4, 'payment_gateways', '', 'payment_gateways', ''),
(64, 4, 'payment_total', '0', 'payment_total', '0'),
(65, 4, 'tag', '', 'tag', ''),
(66, 4, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(67, 4, 'email_subject', 'Ninja Forms Submission', 'email_subject', 'Ninja Forms Submission'),
(68, 4, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(69, 4, 'from_name', '', 'from_name', ''),
(70, 4, 'from_address', '', 'from_address', ''),
(71, 4, 'reply_to', '', 'reply_to', ''),
(72, 4, 'email_format', 'html', 'email_format', 'html'),
(73, 4, 'cc', '', 'cc', ''),
(74, 4, 'bcc', '', 'bcc', ''),
(75, 4, 'attach_csv', '', 'attach_csv', ''),
(76, 4, 'redirect_url', '', 'redirect_url', ''),
(77, 4, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>', 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(78, 4, 'email_message_plain', '', 'email_message_plain', ''),
(79, 1, 'message', 'This action adds users to WordPress&#039; personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.', 'message', 'This action adds users to WordPress&#039; personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.'),
(80, 1, 'submitter_email', '', 'submitter_email', ''),
(81, 1, 'fields-save-toggle', 'save_all', 'fields-save-toggle', 'save_all'),
(82, 1, 'exception_fields', 'a:0:{}', 'exception_fields', 'a:0:{}'),
(83, 1, 'set_subs_to_expire', '0', 'set_subs_to_expire', '0'),
(84, 1, 'subs_expire_time', '90', 'subs_expire_time', '90'),
(85, 3, 'message', 'This action adds users to WordPress&#039; personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.', 'message', 'This action adds users to WordPress&#039; personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.'),
(86, 4, 'submitter_email', '', 'submitter_email', ''),
(87, 4, 'fields-save-toggle', 'save_all', 'fields-save-toggle', 'save_all'),
(88, 4, 'exception_fields', 'a:0:{}', 'exception_fields', 'a:0:{}'),
(89, 4, 'set_subs_to_expire', '0', 'set_subs_to_expire', '0'),
(90, 4, 'subs_expire_time', '90', 'subs_expire_time', '90'),
(91, 5, 'title', '', 'title', ''),
(92, 5, 'key', '', 'key', ''),
(93, 5, 'type', 'save', 'type', 'save'),
(94, 5, 'active', '1', 'active', '1'),
(95, 5, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(96, 5, 'label', 'Store Submission', 'label', 'Store Submission'),
(97, 5, 'objectType', 'Action', 'objectType', 'Action'),
(98, 5, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(99, 5, 'editActive', '', 'editActive', ''),
(100, 5, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(101, 5, 'payment_gateways', '', 'payment_gateways', ''),
(102, 5, 'payment_total', '0', 'payment_total', '0'),
(103, 5, 'tag', '', 'tag', ''),
(104, 5, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(105, 5, 'email_subject', 'Ninja Forms Submission', 'email_subject', 'Ninja Forms Submission'),
(106, 5, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(107, 5, 'from_name', '', 'from_name', ''),
(108, 5, 'from_address', '', 'from_address', ''),
(109, 5, 'reply_to', '', 'reply_to', ''),
(110, 5, 'email_format', 'html', 'email_format', 'html'),
(111, 5, 'cc', '', 'cc', ''),
(112, 5, 'bcc', '', 'bcc', ''),
(113, 5, 'attach_csv', '', 'attach_csv', ''),
(114, 5, 'redirect_url', '', 'redirect_url', ''),
(115, 5, 'email_message_plain', '', 'email_message_plain', ''),
(116, 5, 'parent_id', '2', 'parent_id', '2'),
(117, 6, 'title', '', 'title', ''),
(118, 6, 'key', '', 'key', ''),
(119, 6, 'type', 'email', 'type', 'email'),
(120, 6, 'active', '1', 'active', '1'),
(121, 6, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(122, 6, 'label', 'Email Confirmation', 'label', 'Email Confirmation'),
(123, 6, 'to', '{field:email}', 'to', '{field:email}'),
(124, 6, 'subject', 'This is an email action.', 'subject', 'This is an email action.'),
(125, 6, 'message', 'Hello, Ninja Forms!', 'message', 'Hello, Ninja Forms!'),
(126, 6, 'objectType', 'Action', 'objectType', 'Action'),
(127, 6, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(128, 6, 'editActive', '', 'editActive', ''),
(129, 6, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(130, 6, 'payment_gateways', '', 'payment_gateways', ''),
(131, 6, 'payment_total', '0', 'payment_total', '0'),
(132, 6, 'tag', '', 'tag', ''),
(133, 6, 'email_subject', 'Submission Confirmation ', 'email_subject', 'Submission Confirmation '),
(134, 6, 'email_message', '<p>{all_fields_table}<br></p>', 'email_message', '<p>{all_fields_table}<br></p>'),
(135, 6, 'from_name', '', 'from_name', ''),
(136, 6, 'from_address', '', 'from_address', ''),
(137, 6, 'reply_to', '', 'reply_to', ''),
(138, 6, 'email_format', 'html', 'email_format', 'html'),
(139, 6, 'cc', '', 'cc', ''),
(140, 6, 'bcc', '', 'bcc', ''),
(141, 6, 'attach_csv', '', 'attach_csv', ''),
(142, 6, 'email_message_plain', '', 'email_message_plain', ''),
(143, 6, 'parent_id', '2', 'parent_id', '2'),
(144, 7, 'title', '', 'title', ''),
(145, 7, 'key', '', 'key', ''),
(146, 7, 'type', 'email', 'type', 'email'),
(147, 7, 'active', '1', 'active', '1'),
(148, 7, 'created_at', '2016-08-24 16:47:39', 'created_at', '2016-08-24 16:47:39'),
(149, 7, 'objectType', 'Action', 'objectType', 'Action'),
(150, 7, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(151, 7, 'editActive', '', 'editActive', ''),
(152, 7, 'label', 'Email Notification', 'label', 'Email Notification'),
(153, 7, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(154, 7, 'payment_gateways', '', 'payment_gateways', ''),
(155, 7, 'payment_total', '0', 'payment_total', '0'),
(156, 7, 'tag', '', 'tag', ''),
(157, 7, 'to', '{system:admin_email}', 'to', '{system:admin_email}'),
(158, 7, 'email_subject', 'New message from {field:name}', 'email_subject', 'New message from {field:name}'),
(159, 7, 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>', 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>'),
(160, 7, 'from_name', '', 'from_name', ''),
(161, 7, 'from_address', '', 'from_address', ''),
(162, 7, 'reply_to', '{field:email}', 'reply_to', '{field:email}'),
(163, 7, 'email_format', 'html', 'email_format', 'html'),
(164, 7, 'cc', '', 'cc', ''),
(165, 7, 'bcc', '', 'bcc', ''),
(166, 7, 'attach_csv', '0', 'attach_csv', '0'),
(167, 7, 'email_message_plain', '', 'email_message_plain', ''),
(168, 7, 'parent_id', '2', 'parent_id', '2'),
(169, 8, 'title', '', 'title', ''),
(170, 8, 'key', '', 'key', ''),
(171, 8, 'type', 'successmessage', 'type', 'successmessage'),
(172, 8, 'active', '1', 'active', '1'),
(173, 8, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(174, 8, 'label', 'Success Message', 'label', 'Success Message'),
(175, 8, 'message', 'Thank you {field:name} for filling out my form!', 'message', 'Thank you {field:name} for filling out my form!'),
(176, 8, 'objectType', 'Action', 'objectType', 'Action'),
(177, 8, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(178, 8, 'editActive', '', 'editActive', ''),
(179, 8, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(180, 8, 'payment_gateways', '', 'payment_gateways', ''),
(181, 8, 'payment_total', '0', 'payment_total', '0'),
(182, 8, 'tag', '', 'tag', ''),
(183, 8, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(184, 8, 'email_subject', 'Ninja Forms Submission', 'email_subject', 'Ninja Forms Submission'),
(185, 8, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(186, 8, 'from_name', '', 'from_name', ''),
(187, 8, 'from_address', '', 'from_address', ''),
(188, 8, 'reply_to', '', 'reply_to', ''),
(189, 8, 'email_format', 'html', 'email_format', 'html'),
(190, 8, 'cc', '', 'cc', ''),
(191, 8, 'bcc', '', 'bcc', ''),
(192, 8, 'attach_csv', '', 'attach_csv', ''),
(193, 8, 'redirect_url', '', 'redirect_url', ''),
(194, 8, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>', 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(195, 8, 'email_message_plain', '', 'email_message_plain', ''),
(196, 8, 'parent_id', '2', 'parent_id', '2'),
(197, 5, 'message', 'This action adds users to WordPress&#039; personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.', 'message', 'This action adds users to WordPress&#039; personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.'),
(198, 5, 'submitter_email', '', 'submitter_email', ''),
(199, 5, 'fields-save-toggle', 'save_all', 'fields-save-toggle', 'save_all'),
(200, 5, 'exception_fields', 'a:0:{}', 'exception_fields', 'a:0:{}'),
(201, 5, 'set_subs_to_expire', '0', 'set_subs_to_expire', '0'),
(202, 5, 'subs_expire_time', '90', 'subs_expire_time', '90'),
(203, 7, 'message', 'This action adds users to WordPress&#039; personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.', 'message', 'This action adds users to WordPress&#039; personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.'),
(204, 8, 'submitter_email', '', 'submitter_email', ''),
(205, 8, 'fields-save-toggle', 'save_all', 'fields-save-toggle', 'save_all'),
(206, 8, 'exception_fields', 'a:0:{}', 'exception_fields', 'a:0:{}'),
(207, 8, 'set_subs_to_expire', '0', 'set_subs_to_expire', '0'),
(208, 8, 'subs_expire_time', '90', 'subs_expire_time', '90');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_chunks`
--

CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext DEFAULT NULL,
  `key` longtext DEFAULT NULL,
  `type` longtext DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `field_label` longtext DEFAULT NULL,
  `field_key` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `required` bit(1) DEFAULT NULL,
  `default_value` longtext DEFAULT NULL,
  `label_pos` varchar(15) DEFAULT NULL,
  `personally_identifiable` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`, `field_label`, `field_key`, `order`, `required`, `default_value`, `label_pos`, `personally_identifiable`) VALUES
(1, 'Name', 'name', 'textbox', 1, '2020-07-03 08:04:09', '2020-07-03 08:03:29', 'Name', 'name', 1, b'1', '', 'above', b'0'),
(2, 'Email', 'email', 'email', 1, '2020-07-03 08:04:09', '2020-07-03 08:03:29', 'Email', 'email', 2, b'1', '', 'above', b'1'),
(3, 'Message', 'message', 'textarea', 1, '2020-07-03 08:04:09', '2020-07-03 08:03:29', 'Message', 'message', 3, b'1', '', 'above', b'0'),
(4, 'Submit', 'submit', 'submit', 1, '2020-07-03 08:04:09', '2020-07-03 08:03:29', 'Submit', 'submit', 5, b'0', '', '', b'0'),
(5, 'Name', 'name', 'textbox', 2, '2020-07-03 08:06:24', NULL, 'Name', 'name', 1, b'1', '', 'above', b'0'),
(6, 'Email', 'email', 'email', 2, '2020-07-03 08:06:24', NULL, 'Email', 'email', 2, b'1', '', 'above', b'1'),
(7, 'Message', 'message', 'textarea', 2, '2020-07-03 08:06:24', NULL, 'Message', 'message', 3, b'1', '', 'above', b'0'),
(8, 'Submit', 'submit', 'submit', 2, '2020-07-03 08:06:24', NULL, 'Submit', 'submit', 4, b'0', '', '', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext DEFAULT NULL,
  `meta_key` longtext DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'label_pos', 'above', 'label_pos', 'above'),
(2, 1, 'required', '1', 'required', '1'),
(3, 1, 'order', '1', 'order', '1'),
(4, 1, 'placeholder', '', 'placeholder', ''),
(5, 1, 'default', '', 'default', ''),
(6, 1, 'wrapper_class', '', 'wrapper_class', ''),
(7, 1, 'element_class', '', 'element_class', ''),
(8, 1, 'objectType', 'Field', 'objectType', 'Field'),
(9, 1, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(10, 1, 'editActive', '', 'editActive', ''),
(11, 1, 'container_class', '', 'container_class', ''),
(12, 1, 'input_limit', '', 'input_limit', ''),
(13, 1, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(14, 1, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(15, 1, 'manual_key', '', 'manual_key', ''),
(16, 1, 'disable_input', '', 'disable_input', ''),
(17, 1, 'admin_label', '', 'admin_label', ''),
(18, 1, 'help_text', '', 'help_text', ''),
(19, 1, 'desc_text', '', 'desc_text', ''),
(20, 1, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(21, 1, 'mask', '', 'mask', ''),
(22, 1, 'custom_mask', '', 'custom_mask', ''),
(23, 1, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(24, 1, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(25, 1, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(26, 1, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(27, 1, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(28, 1, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(29, 1, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(30, 1, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(31, 1, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(32, 1, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(33, 1, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(34, 1, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(35, 1, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(36, 1, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(37, 1, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(38, 1, 'label_styles_border', '', 'label_styles_border', ''),
(39, 1, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(40, 1, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(41, 1, 'label_styles_color', '', 'label_styles_color', ''),
(42, 1, 'label_styles_height', '', 'label_styles_height', ''),
(43, 1, 'label_styles_width', '', 'label_styles_width', ''),
(44, 1, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(45, 1, 'label_styles_margin', '', 'label_styles_margin', ''),
(46, 1, 'label_styles_padding', '', 'label_styles_padding', ''),
(47, 1, 'label_styles_display', '', 'label_styles_display', ''),
(48, 1, 'label_styles_float', '', 'label_styles_float', ''),
(49, 1, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(50, 1, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(51, 1, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(52, 1, 'element_styles_border', '', 'element_styles_border', ''),
(53, 1, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(54, 1, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(55, 1, 'element_styles_color', '', 'element_styles_color', ''),
(56, 1, 'element_styles_height', '', 'element_styles_height', ''),
(57, 1, 'element_styles_width', '', 'element_styles_width', ''),
(58, 1, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(59, 1, 'element_styles_margin', '', 'element_styles_margin', ''),
(60, 1, 'element_styles_padding', '', 'element_styles_padding', ''),
(61, 1, 'element_styles_display', '', 'element_styles_display', ''),
(62, 1, 'element_styles_float', '', 'element_styles_float', ''),
(63, 1, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(64, 1, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(65, 1, 'cellcid', 'c3277', 'cellcid', 'c3277'),
(66, 2, 'label_pos', 'above', 'label_pos', 'above'),
(67, 2, 'required', '1', 'required', '1'),
(68, 2, 'order', '2', 'order', '2'),
(69, 2, 'placeholder', '', 'placeholder', ''),
(70, 2, 'default', '', 'default', ''),
(71, 2, 'wrapper_class', '', 'wrapper_class', ''),
(72, 2, 'element_class', '', 'element_class', ''),
(73, 2, 'objectType', 'Field', 'objectType', 'Field'),
(74, 2, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(75, 2, 'editActive', '', 'editActive', ''),
(76, 2, 'container_class', '', 'container_class', ''),
(77, 2, 'admin_label', '', 'admin_label', ''),
(78, 2, 'help_text', '', 'help_text', ''),
(79, 2, 'desc_text', '', 'desc_text', ''),
(80, 2, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(81, 2, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(82, 2, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(83, 2, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(84, 2, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(85, 2, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(86, 2, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(87, 2, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(88, 2, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(89, 2, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(90, 2, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(91, 2, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(92, 2, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(93, 2, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(94, 2, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(95, 2, 'label_styles_border', '', 'label_styles_border', ''),
(96, 2, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(97, 2, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(98, 2, 'label_styles_color', '', 'label_styles_color', ''),
(99, 2, 'label_styles_height', '', 'label_styles_height', ''),
(100, 2, 'label_styles_width', '', 'label_styles_width', ''),
(101, 2, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(102, 2, 'label_styles_margin', '', 'label_styles_margin', ''),
(103, 2, 'label_styles_padding', '', 'label_styles_padding', ''),
(104, 2, 'label_styles_display', '', 'label_styles_display', ''),
(105, 2, 'label_styles_float', '', 'label_styles_float', ''),
(106, 2, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(107, 2, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(108, 2, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(109, 2, 'element_styles_border', '', 'element_styles_border', ''),
(110, 2, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(111, 2, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(112, 2, 'element_styles_color', '', 'element_styles_color', ''),
(113, 2, 'element_styles_height', '', 'element_styles_height', ''),
(114, 2, 'element_styles_width', '', 'element_styles_width', ''),
(115, 2, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(116, 2, 'element_styles_margin', '', 'element_styles_margin', ''),
(117, 2, 'element_styles_padding', '', 'element_styles_padding', ''),
(118, 2, 'element_styles_display', '', 'element_styles_display', ''),
(119, 2, 'element_styles_float', '', 'element_styles_float', ''),
(120, 2, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(121, 2, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(122, 2, 'cellcid', 'c3281', 'cellcid', 'c3281'),
(123, 3, 'label_pos', 'above', 'label_pos', 'above'),
(124, 3, 'required', '1', 'required', '1'),
(125, 3, 'order', '3', 'order', '3'),
(126, 3, 'placeholder', '', 'placeholder', ''),
(127, 3, 'default', '', 'default', ''),
(128, 3, 'wrapper_class', '', 'wrapper_class', ''),
(129, 3, 'element_class', '', 'element_class', ''),
(130, 3, 'objectType', 'Field', 'objectType', 'Field'),
(131, 3, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(132, 3, 'editActive', '', 'editActive', ''),
(133, 3, 'container_class', '', 'container_class', ''),
(134, 3, 'input_limit', '', 'input_limit', ''),
(135, 3, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(136, 3, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(137, 3, 'manual_key', '', 'manual_key', ''),
(138, 3, 'disable_input', '', 'disable_input', ''),
(139, 3, 'admin_label', '', 'admin_label', ''),
(140, 3, 'help_text', '', 'help_text', ''),
(141, 3, 'desc_text', '', 'desc_text', ''),
(142, 3, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(143, 3, 'textarea_rte', '', 'textarea_rte', ''),
(144, 3, 'disable_rte_mobile', '', 'disable_rte_mobile', ''),
(145, 3, 'textarea_media', '', 'textarea_media', ''),
(146, 3, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(147, 3, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(148, 3, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(149, 3, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(150, 3, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(151, 3, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(152, 3, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(153, 3, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(154, 3, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(155, 3, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(156, 3, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(157, 3, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(158, 3, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(159, 3, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(160, 3, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(161, 3, 'label_styles_border', '', 'label_styles_border', ''),
(162, 3, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(163, 3, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(164, 3, 'label_styles_color', '', 'label_styles_color', ''),
(165, 3, 'label_styles_height', '', 'label_styles_height', ''),
(166, 3, 'label_styles_width', '', 'label_styles_width', ''),
(167, 3, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(168, 3, 'label_styles_margin', '', 'label_styles_margin', ''),
(169, 3, 'label_styles_padding', '', 'label_styles_padding', ''),
(170, 3, 'label_styles_display', '', 'label_styles_display', ''),
(171, 3, 'label_styles_float', '', 'label_styles_float', ''),
(172, 3, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(173, 3, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(174, 3, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(175, 3, 'element_styles_border', '', 'element_styles_border', ''),
(176, 3, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(177, 3, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(178, 3, 'element_styles_color', '', 'element_styles_color', ''),
(179, 3, 'element_styles_height', '', 'element_styles_height', ''),
(180, 3, 'element_styles_width', '', 'element_styles_width', ''),
(181, 3, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(182, 3, 'element_styles_margin', '', 'element_styles_margin', ''),
(183, 3, 'element_styles_padding', '', 'element_styles_padding', ''),
(184, 3, 'element_styles_display', '', 'element_styles_display', ''),
(185, 3, 'element_styles_float', '', 'element_styles_float', ''),
(186, 3, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(187, 3, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(188, 3, 'cellcid', 'c3284', 'cellcid', 'c3284'),
(189, 4, 'processing_label', 'Processing', 'processing_label', 'Processing'),
(190, 4, 'order', '5', 'order', '5'),
(191, 4, 'objectType', 'Field', 'objectType', 'Field'),
(192, 4, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(193, 4, 'editActive', '', 'editActive', ''),
(194, 4, 'container_class', '', 'container_class', ''),
(195, 4, 'element_class', '', 'element_class', ''),
(196, 4, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(197, 4, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(198, 4, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(199, 4, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(200, 4, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(201, 4, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(202, 4, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(203, 4, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(204, 4, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(205, 4, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(206, 4, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(207, 4, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(208, 4, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(209, 4, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(210, 4, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(211, 4, 'label_styles_border', '', 'label_styles_border', ''),
(212, 4, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(213, 4, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(214, 4, 'label_styles_color', '', 'label_styles_color', ''),
(215, 4, 'label_styles_height', '', 'label_styles_height', ''),
(216, 4, 'label_styles_width', '', 'label_styles_width', ''),
(217, 4, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(218, 4, 'label_styles_margin', '', 'label_styles_margin', ''),
(219, 4, 'label_styles_padding', '', 'label_styles_padding', ''),
(220, 4, 'label_styles_display', '', 'label_styles_display', ''),
(221, 4, 'label_styles_float', '', 'label_styles_float', ''),
(222, 4, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(223, 4, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(224, 4, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(225, 4, 'element_styles_border', '', 'element_styles_border', ''),
(226, 4, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(227, 4, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(228, 4, 'element_styles_color', '', 'element_styles_color', ''),
(229, 4, 'element_styles_height', '', 'element_styles_height', ''),
(230, 4, 'element_styles_width', '', 'element_styles_width', ''),
(231, 4, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(232, 4, 'element_styles_margin', '', 'element_styles_margin', ''),
(233, 4, 'element_styles_padding', '', 'element_styles_padding', ''),
(234, 4, 'element_styles_display', '', 'element_styles_display', ''),
(235, 4, 'element_styles_float', '', 'element_styles_float', ''),
(236, 4, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(237, 4, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(238, 4, 'submit_element_hover_styles_background-color', '', 'submit_element_hover_styles_background-color', ''),
(239, 4, 'submit_element_hover_styles_border', '', 'submit_element_hover_styles_border', ''),
(240, 4, 'submit_element_hover_styles_border-style', '', 'submit_element_hover_styles_border-style', ''),
(241, 4, 'submit_element_hover_styles_border-color', '', 'submit_element_hover_styles_border-color', ''),
(242, 4, 'submit_element_hover_styles_color', '', 'submit_element_hover_styles_color', ''),
(243, 4, 'submit_element_hover_styles_height', '', 'submit_element_hover_styles_height', ''),
(244, 4, 'submit_element_hover_styles_width', '', 'submit_element_hover_styles_width', ''),
(245, 4, 'submit_element_hover_styles_font-size', '', 'submit_element_hover_styles_font-size', ''),
(246, 4, 'submit_element_hover_styles_margin', '', 'submit_element_hover_styles_margin', ''),
(247, 4, 'submit_element_hover_styles_padding', '', 'submit_element_hover_styles_padding', ''),
(248, 4, 'submit_element_hover_styles_display', '', 'submit_element_hover_styles_display', ''),
(249, 4, 'submit_element_hover_styles_float', '', 'submit_element_hover_styles_float', ''),
(250, 4, 'submit_element_hover_styles_show_advanced_css', '0', 'submit_element_hover_styles_show_advanced_css', '0'),
(251, 4, 'submit_element_hover_styles_advanced', '', 'submit_element_hover_styles_advanced', ''),
(252, 4, 'cellcid', 'c3287', 'cellcid', 'c3287'),
(253, 1, 'label', 'Name', 'label', 'Name'),
(254, 1, 'key', 'name', 'key', 'name'),
(255, 1, 'type', 'textbox', 'type', 'textbox'),
(256, 1, 'created_at', '2020-07-03 08:03:29', 'created_at', '2020-07-03 08:03:29'),
(257, 1, 'custom_name_attribute', '', 'custom_name_attribute', ''),
(258, 1, 'personally_identifiable', '', 'personally_identifiable', ''),
(259, 1, 'value', '', 'value', ''),
(260, 2, 'label', 'Email', 'label', 'Email'),
(261, 2, 'key', 'email', 'key', 'email'),
(262, 2, 'type', 'email', 'type', 'email'),
(263, 2, 'created_at', '2020-07-03 08:03:29', 'created_at', '2020-07-03 08:03:29'),
(264, 2, 'custom_name_attribute', 'email', 'custom_name_attribute', 'email'),
(265, 2, 'personally_identifiable', '1', 'personally_identifiable', '1'),
(266, 2, 'value', '', 'value', ''),
(267, 3, 'label', 'Message', 'label', 'Message'),
(268, 3, 'key', 'message', 'key', 'message'),
(269, 3, 'type', 'textarea', 'type', 'textarea'),
(270, 3, 'created_at', '2020-07-03 08:03:29', 'created_at', '2020-07-03 08:03:29'),
(271, 3, 'value', '', 'value', ''),
(272, 4, 'label', 'Submit', 'label', 'Submit'),
(273, 4, 'key', 'submit', 'key', 'submit'),
(274, 4, 'type', 'submit', 'type', 'submit'),
(275, 4, 'created_at', '2020-07-03 08:03:29', 'created_at', '2020-07-03 08:03:29'),
(276, 5, 'label', 'Name', 'label', 'Name'),
(277, 5, 'key', 'name', 'key', 'name'),
(278, 5, 'parent_id', '2', 'parent_id', '2'),
(279, 5, 'type', 'textbox', 'type', 'textbox'),
(280, 5, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(281, 5, 'label_pos', 'above', 'label_pos', 'above'),
(282, 5, 'required', '1', 'required', '1'),
(283, 5, 'order', '1', 'order', '1'),
(284, 5, 'placeholder', '', 'placeholder', ''),
(285, 5, 'default', '', 'default', ''),
(286, 5, 'wrapper_class', '', 'wrapper_class', ''),
(287, 5, 'element_class', '', 'element_class', ''),
(288, 5, 'objectType', 'Field', 'objectType', 'Field'),
(289, 5, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(290, 5, 'editActive', '', 'editActive', ''),
(291, 5, 'container_class', '', 'container_class', ''),
(292, 5, 'input_limit', '', 'input_limit', ''),
(293, 5, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(294, 5, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(295, 5, 'manual_key', '', 'manual_key', ''),
(296, 5, 'disable_input', '', 'disable_input', ''),
(297, 5, 'admin_label', '', 'admin_label', ''),
(298, 5, 'help_text', '', 'help_text', ''),
(299, 5, 'desc_text', '', 'desc_text', ''),
(300, 5, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(301, 5, 'mask', '', 'mask', ''),
(302, 5, 'custom_mask', '', 'custom_mask', ''),
(303, 5, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(304, 5, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(305, 5, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(306, 5, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(307, 5, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(308, 5, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(309, 5, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(310, 5, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(311, 5, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(312, 5, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(313, 5, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(314, 5, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(315, 5, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(316, 5, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(317, 5, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(318, 5, 'label_styles_border', '', 'label_styles_border', ''),
(319, 5, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(320, 5, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(321, 5, 'label_styles_color', '', 'label_styles_color', ''),
(322, 5, 'label_styles_height', '', 'label_styles_height', ''),
(323, 5, 'label_styles_width', '', 'label_styles_width', ''),
(324, 5, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(325, 5, 'label_styles_margin', '', 'label_styles_margin', ''),
(326, 5, 'label_styles_padding', '', 'label_styles_padding', ''),
(327, 5, 'label_styles_display', '', 'label_styles_display', ''),
(328, 5, 'label_styles_float', '', 'label_styles_float', ''),
(329, 5, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(330, 5, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(331, 5, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(332, 5, 'element_styles_border', '', 'element_styles_border', ''),
(333, 5, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(334, 5, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(335, 5, 'element_styles_color', '', 'element_styles_color', ''),
(336, 5, 'element_styles_height', '', 'element_styles_height', ''),
(337, 5, 'element_styles_width', '', 'element_styles_width', ''),
(338, 5, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(339, 5, 'element_styles_margin', '', 'element_styles_margin', ''),
(340, 5, 'element_styles_padding', '', 'element_styles_padding', ''),
(341, 5, 'element_styles_display', '', 'element_styles_display', ''),
(342, 5, 'element_styles_float', '', 'element_styles_float', ''),
(343, 5, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(344, 5, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(345, 5, 'cellcid', 'c3277', 'cellcid', 'c3277'),
(346, 6, 'label', 'Email', 'label', 'Email'),
(347, 6, 'key', 'email', 'key', 'email'),
(348, 6, 'parent_id', '2', 'parent_id', '2'),
(349, 6, 'type', 'email', 'type', 'email'),
(350, 6, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(351, 6, 'label_pos', 'above', 'label_pos', 'above'),
(352, 6, 'required', '1', 'required', '1'),
(353, 6, 'order', '2', 'order', '2'),
(354, 6, 'placeholder', '', 'placeholder', ''),
(355, 6, 'default', '', 'default', ''),
(356, 6, 'wrapper_class', '', 'wrapper_class', ''),
(357, 6, 'element_class', '', 'element_class', ''),
(358, 6, 'objectType', 'Field', 'objectType', 'Field'),
(359, 6, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(360, 6, 'editActive', '', 'editActive', ''),
(361, 6, 'container_class', '', 'container_class', ''),
(362, 6, 'admin_label', '', 'admin_label', ''),
(363, 6, 'help_text', '', 'help_text', ''),
(364, 6, 'desc_text', '', 'desc_text', ''),
(365, 6, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(366, 6, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(367, 6, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(368, 6, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(369, 6, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(370, 6, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(371, 6, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(372, 6, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(373, 6, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(374, 6, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(375, 6, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(376, 6, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(377, 6, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(378, 6, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(379, 6, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(380, 6, 'label_styles_border', '', 'label_styles_border', ''),
(381, 6, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(382, 6, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(383, 6, 'label_styles_color', '', 'label_styles_color', ''),
(384, 6, 'label_styles_height', '', 'label_styles_height', ''),
(385, 6, 'label_styles_width', '', 'label_styles_width', ''),
(386, 6, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(387, 6, 'label_styles_margin', '', 'label_styles_margin', ''),
(388, 6, 'label_styles_padding', '', 'label_styles_padding', ''),
(389, 6, 'label_styles_display', '', 'label_styles_display', ''),
(390, 6, 'label_styles_float', '', 'label_styles_float', ''),
(391, 6, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(392, 6, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(393, 6, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(394, 6, 'element_styles_border', '', 'element_styles_border', ''),
(395, 6, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(396, 6, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(397, 6, 'element_styles_color', '', 'element_styles_color', ''),
(398, 6, 'element_styles_height', '', 'element_styles_height', ''),
(399, 6, 'element_styles_width', '', 'element_styles_width', ''),
(400, 6, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(401, 6, 'element_styles_margin', '', 'element_styles_margin', ''),
(402, 6, 'element_styles_padding', '', 'element_styles_padding', ''),
(403, 6, 'element_styles_display', '', 'element_styles_display', ''),
(404, 6, 'element_styles_float', '', 'element_styles_float', ''),
(405, 6, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(406, 6, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(407, 6, 'cellcid', 'c3281', 'cellcid', 'c3281'),
(408, 7, 'label', 'Message', 'label', 'Message'),
(409, 7, 'key', 'message', 'key', 'message'),
(410, 7, 'parent_id', '2', 'parent_id', '2'),
(411, 7, 'type', 'textarea', 'type', 'textarea'),
(412, 7, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(413, 7, 'label_pos', 'above', 'label_pos', 'above'),
(414, 7, 'required', '1', 'required', '1'),
(415, 7, 'order', '3', 'order', '3'),
(416, 7, 'placeholder', '', 'placeholder', ''),
(417, 7, 'default', '', 'default', ''),
(418, 7, 'wrapper_class', '', 'wrapper_class', ''),
(419, 7, 'element_class', '', 'element_class', ''),
(420, 7, 'objectType', 'Field', 'objectType', 'Field'),
(421, 7, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(422, 7, 'editActive', '', 'editActive', ''),
(423, 7, 'container_class', '', 'container_class', ''),
(424, 7, 'input_limit', '', 'input_limit', ''),
(425, 7, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(426, 7, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(427, 7, 'manual_key', '', 'manual_key', ''),
(428, 7, 'disable_input', '', 'disable_input', ''),
(429, 7, 'admin_label', '', 'admin_label', ''),
(430, 7, 'help_text', '', 'help_text', ''),
(431, 7, 'desc_text', '', 'desc_text', ''),
(432, 7, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(433, 7, 'textarea_rte', '', 'textarea_rte', ''),
(434, 7, 'disable_rte_mobile', '', 'disable_rte_mobile', ''),
(435, 7, 'textarea_media', '', 'textarea_media', ''),
(436, 7, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(437, 7, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(438, 7, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(439, 7, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(440, 7, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(441, 7, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(442, 7, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(443, 7, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(444, 7, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(445, 7, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(446, 7, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(447, 7, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(448, 7, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(449, 7, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(450, 7, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(451, 7, 'label_styles_border', '', 'label_styles_border', ''),
(452, 7, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(453, 7, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(454, 7, 'label_styles_color', '', 'label_styles_color', ''),
(455, 7, 'label_styles_height', '', 'label_styles_height', ''),
(456, 7, 'label_styles_width', '', 'label_styles_width', ''),
(457, 7, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(458, 7, 'label_styles_margin', '', 'label_styles_margin', ''),
(459, 7, 'label_styles_padding', '', 'label_styles_padding', ''),
(460, 7, 'label_styles_display', '', 'label_styles_display', ''),
(461, 7, 'label_styles_float', '', 'label_styles_float', ''),
(462, 7, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(463, 7, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(464, 7, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(465, 7, 'element_styles_border', '', 'element_styles_border', ''),
(466, 7, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(467, 7, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(468, 7, 'element_styles_color', '', 'element_styles_color', ''),
(469, 7, 'element_styles_height', '', 'element_styles_height', ''),
(470, 7, 'element_styles_width', '', 'element_styles_width', ''),
(471, 7, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(472, 7, 'element_styles_margin', '', 'element_styles_margin', ''),
(473, 7, 'element_styles_padding', '', 'element_styles_padding', ''),
(474, 7, 'element_styles_display', '', 'element_styles_display', ''),
(475, 7, 'element_styles_float', '', 'element_styles_float', ''),
(476, 7, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(477, 7, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(478, 7, 'cellcid', 'c3284', 'cellcid', 'c3284'),
(479, 8, 'label', 'Submit', 'label', 'Submit'),
(480, 8, 'key', 'submit', 'key', 'submit'),
(481, 8, 'parent_id', '2', 'parent_id', '2'),
(482, 8, 'type', 'submit', 'type', 'submit'),
(483, 8, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(484, 8, 'processing_label', 'Processing', 'processing_label', 'Processing'),
(485, 8, 'order', '4', 'order', '4'),
(486, 8, 'objectType', 'Field', 'objectType', 'Field'),
(487, 8, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(488, 8, 'editActive', '', 'editActive', ''),
(489, 8, 'container_class', '', 'container_class', ''),
(490, 8, 'element_class', '', 'element_class', ''),
(491, 8, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(492, 8, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(493, 8, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(494, 8, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(495, 8, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(496, 8, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(497, 8, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(498, 8, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(499, 8, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(500, 8, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(501, 8, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(502, 8, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(503, 8, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(504, 8, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(505, 8, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(506, 8, 'label_styles_border', '', 'label_styles_border', ''),
(507, 8, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(508, 8, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(509, 8, 'label_styles_color', '', 'label_styles_color', ''),
(510, 8, 'label_styles_height', '', 'label_styles_height', ''),
(511, 8, 'label_styles_width', '', 'label_styles_width', ''),
(512, 8, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(513, 8, 'label_styles_margin', '', 'label_styles_margin', ''),
(514, 8, 'label_styles_padding', '', 'label_styles_padding', ''),
(515, 8, 'label_styles_display', '', 'label_styles_display', ''),
(516, 8, 'label_styles_float', '', 'label_styles_float', ''),
(517, 8, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(518, 8, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(519, 8, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(520, 8, 'element_styles_border', '', 'element_styles_border', ''),
(521, 8, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(522, 8, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(523, 8, 'element_styles_color', '', 'element_styles_color', ''),
(524, 8, 'element_styles_height', '', 'element_styles_height', ''),
(525, 8, 'element_styles_width', '', 'element_styles_width', ''),
(526, 8, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(527, 8, 'element_styles_margin', '', 'element_styles_margin', ''),
(528, 8, 'element_styles_padding', '', 'element_styles_padding', ''),
(529, 8, 'element_styles_display', '', 'element_styles_display', ''),
(530, 8, 'element_styles_float', '', 'element_styles_float', ''),
(531, 8, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(532, 8, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(533, 8, 'submit_element_hover_styles_background-color', '', 'submit_element_hover_styles_background-color', ''),
(534, 8, 'submit_element_hover_styles_border', '', 'submit_element_hover_styles_border', ''),
(535, 8, 'submit_element_hover_styles_border-style', '', 'submit_element_hover_styles_border-style', ''),
(536, 8, 'submit_element_hover_styles_border-color', '', 'submit_element_hover_styles_border-color', ''),
(537, 8, 'submit_element_hover_styles_color', '', 'submit_element_hover_styles_color', ''),
(538, 8, 'submit_element_hover_styles_height', '', 'submit_element_hover_styles_height', ''),
(539, 8, 'submit_element_hover_styles_width', '', 'submit_element_hover_styles_width', ''),
(540, 8, 'submit_element_hover_styles_font-size', '', 'submit_element_hover_styles_font-size', ''),
(541, 8, 'submit_element_hover_styles_margin', '', 'submit_element_hover_styles_margin', ''),
(542, 8, 'submit_element_hover_styles_padding', '', 'submit_element_hover_styles_padding', ''),
(543, 8, 'submit_element_hover_styles_display', '', 'submit_element_hover_styles_display', ''),
(544, 8, 'submit_element_hover_styles_float', '', 'submit_element_hover_styles_float', ''),
(545, 8, 'submit_element_hover_styles_show_advanced_css', '0', 'submit_element_hover_styles_show_advanced_css', '0'),
(546, 8, 'submit_element_hover_styles_advanced', '', 'submit_element_hover_styles_advanced', ''),
(547, 8, 'cellcid', 'c3287', 'cellcid', 'c3287'),
(548, 5, 'field_label', 'Name', 'field_label', 'Name'),
(549, 5, 'field_key', 'name', 'field_key', 'name'),
(550, 5, 'custom_name_attribute', '', 'custom_name_attribute', ''),
(551, 5, 'personally_identifiable', '', 'personally_identifiable', ''),
(552, 5, 'value', '', 'value', ''),
(553, 6, 'field_label', 'Email', 'field_label', 'Email'),
(554, 6, 'field_key', 'email', 'field_key', 'email'),
(555, 6, 'custom_name_attribute', 'email', 'custom_name_attribute', 'email'),
(556, 6, 'personally_identifiable', '1', 'personally_identifiable', '1'),
(557, 6, 'value', '', 'value', ''),
(558, 7, 'field_label', 'Message', 'field_label', 'Message'),
(559, 7, 'field_key', 'message', 'field_key', 'message'),
(560, 7, 'value', '', 'value', ''),
(561, 8, 'field_label', 'Submit', 'field_label', 'Submit'),
(562, 8, 'field_key', 'submit', 'field_key', 'submit');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `key` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  `form_title` longtext DEFAULT NULL,
  `default_label_pos` varchar(15) DEFAULT NULL,
  `show_title` bit(1) DEFAULT NULL,
  `clear_complete` bit(1) DEFAULT NULL,
  `hide_complete` bit(1) DEFAULT NULL,
  `logged_in` bit(1) DEFAULT NULL,
  `seq_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`, `form_title`, `default_label_pos`, `show_title`, `clear_complete`, `hide_complete`, `logged_in`, `seq_num`) VALUES
(1, 'Contact Me', NULL, '2020-07-03 02:18:29', '2020-07-03 08:03:29', NULL, NULL, 'Contact Me', 'above', b'1', b'1', b'1', b'0', NULL),
(2, 'Contact Me', NULL, '2016-08-24 10:54:20', NULL, NULL, NULL, 'Contact Me', 'above', b'1', b'1', b'1', b'0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext DEFAULT NULL,
  `meta_key` longtext DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'key', '', 'key', ''),
(2, 1, 'created_at', '2020-07-03 08:03:29', 'created_at', '2020-07-03 08:03:29'),
(3, 1, 'default_label_pos', 'above', 'default_label_pos', 'above'),
(4, 1, 'conditions', 'a:0:{}', 'conditions', 'a:0:{}'),
(5, 1, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(6, 1, 'editActive', '', 'editActive', ''),
(7, 1, 'show_title', '1', 'show_title', '1'),
(8, 1, 'clear_complete', '1', 'clear_complete', '1'),
(9, 1, 'hide_complete', '1', 'hide_complete', '1'),
(10, 1, 'wrapper_class', '', 'wrapper_class', ''),
(11, 1, 'element_class', '', 'element_class', ''),
(12, 1, 'add_submit', '1', 'add_submit', '1'),
(13, 1, 'logged_in', '', 'logged_in', ''),
(14, 1, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(15, 1, 'sub_limit_number', '', 'sub_limit_number', ''),
(16, 1, 'sub_limit_msg', '', 'sub_limit_msg', ''),
(17, 1, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(18, 1, 'formContentData', 'a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:6:\"submit\";}', 'formContentData', 'a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:6:\"submit\";}'),
(19, 1, 'container_styles_background-color', '', 'container_styles_background-color', ''),
(20, 1, 'container_styles_border', '', 'container_styles_border', ''),
(21, 1, 'container_styles_border-style', '', 'container_styles_border-style', ''),
(22, 1, 'container_styles_border-color', '', 'container_styles_border-color', ''),
(23, 1, 'container_styles_color', '', 'container_styles_color', ''),
(24, 1, 'container_styles_height', '', 'container_styles_height', ''),
(25, 1, 'container_styles_width', '', 'container_styles_width', ''),
(26, 1, 'container_styles_font-size', '', 'container_styles_font-size', ''),
(27, 1, 'container_styles_margin', '', 'container_styles_margin', ''),
(28, 1, 'container_styles_padding', '', 'container_styles_padding', ''),
(29, 1, 'container_styles_display', '', 'container_styles_display', ''),
(30, 1, 'container_styles_float', '', 'container_styles_float', ''),
(31, 1, 'container_styles_show_advanced_css', '0', 'container_styles_show_advanced_css', '0'),
(32, 1, 'container_styles_advanced', '', 'container_styles_advanced', ''),
(33, 1, 'title_styles_background-color', '', 'title_styles_background-color', ''),
(34, 1, 'title_styles_border', '', 'title_styles_border', ''),
(35, 1, 'title_styles_border-style', '', 'title_styles_border-style', ''),
(36, 1, 'title_styles_border-color', '', 'title_styles_border-color', ''),
(37, 1, 'title_styles_color', '', 'title_styles_color', ''),
(38, 1, 'title_styles_height', '', 'title_styles_height', ''),
(39, 1, 'title_styles_width', '', 'title_styles_width', ''),
(40, 1, 'title_styles_font-size', '', 'title_styles_font-size', ''),
(41, 1, 'title_styles_margin', '', 'title_styles_margin', ''),
(42, 1, 'title_styles_padding', '', 'title_styles_padding', ''),
(43, 1, 'title_styles_display', '', 'title_styles_display', ''),
(44, 1, 'title_styles_float', '', 'title_styles_float', ''),
(45, 1, 'title_styles_show_advanced_css', '0', 'title_styles_show_advanced_css', '0'),
(46, 1, 'title_styles_advanced', '', 'title_styles_advanced', ''),
(47, 1, 'row_styles_background-color', '', 'row_styles_background-color', ''),
(48, 1, 'row_styles_border', '', 'row_styles_border', ''),
(49, 1, 'row_styles_border-style', '', 'row_styles_border-style', ''),
(50, 1, 'row_styles_border-color', '', 'row_styles_border-color', ''),
(51, 1, 'row_styles_color', '', 'row_styles_color', ''),
(52, 1, 'row_styles_height', '', 'row_styles_height', ''),
(53, 1, 'row_styles_width', '', 'row_styles_width', ''),
(54, 1, 'row_styles_font-size', '', 'row_styles_font-size', ''),
(55, 1, 'row_styles_margin', '', 'row_styles_margin', ''),
(56, 1, 'row_styles_padding', '', 'row_styles_padding', ''),
(57, 1, 'row_styles_display', '', 'row_styles_display', ''),
(58, 1, 'row_styles_show_advanced_css', '0', 'row_styles_show_advanced_css', '0'),
(59, 1, 'row_styles_advanced', '', 'row_styles_advanced', ''),
(60, 1, 'row-odd_styles_background-color', '', 'row-odd_styles_background-color', ''),
(61, 1, 'row-odd_styles_border', '', 'row-odd_styles_border', ''),
(62, 1, 'row-odd_styles_border-style', '', 'row-odd_styles_border-style', ''),
(63, 1, 'row-odd_styles_border-color', '', 'row-odd_styles_border-color', ''),
(64, 1, 'row-odd_styles_color', '', 'row-odd_styles_color', ''),
(65, 1, 'row-odd_styles_height', '', 'row-odd_styles_height', ''),
(66, 1, 'row-odd_styles_width', '', 'row-odd_styles_width', ''),
(67, 1, 'row-odd_styles_font-size', '', 'row-odd_styles_font-size', ''),
(68, 1, 'row-odd_styles_margin', '', 'row-odd_styles_margin', ''),
(69, 1, 'row-odd_styles_padding', '', 'row-odd_styles_padding', ''),
(70, 1, 'row-odd_styles_display', '', 'row-odd_styles_display', ''),
(71, 1, 'row-odd_styles_show_advanced_css', '0', 'row-odd_styles_show_advanced_css', '0'),
(72, 1, 'row-odd_styles_advanced', '', 'row-odd_styles_advanced', ''),
(73, 1, 'success-msg_styles_background-color', '', 'success-msg_styles_background-color', ''),
(74, 1, 'success-msg_styles_border', '', 'success-msg_styles_border', ''),
(75, 1, 'success-msg_styles_border-style', '', 'success-msg_styles_border-style', ''),
(76, 1, 'success-msg_styles_border-color', '', 'success-msg_styles_border-color', ''),
(77, 1, 'success-msg_styles_color', '', 'success-msg_styles_color', ''),
(78, 1, 'success-msg_styles_height', '', 'success-msg_styles_height', ''),
(79, 1, 'success-msg_styles_width', '', 'success-msg_styles_width', ''),
(80, 1, 'success-msg_styles_font-size', '', 'success-msg_styles_font-size', ''),
(81, 1, 'success-msg_styles_margin', '', 'success-msg_styles_margin', ''),
(82, 1, 'success-msg_styles_padding', '', 'success-msg_styles_padding', ''),
(83, 1, 'success-msg_styles_display', '', 'success-msg_styles_display', ''),
(84, 1, 'success-msg_styles_show_advanced_css', '0', 'success-msg_styles_show_advanced_css', '0'),
(85, 1, 'success-msg_styles_advanced', '', 'success-msg_styles_advanced', ''),
(86, 1, 'error_msg_styles_background-color', '', 'error_msg_styles_background-color', ''),
(87, 1, 'error_msg_styles_border', '', 'error_msg_styles_border', ''),
(88, 1, 'error_msg_styles_border-style', '', 'error_msg_styles_border-style', ''),
(89, 1, 'error_msg_styles_border-color', '', 'error_msg_styles_border-color', ''),
(90, 1, 'error_msg_styles_color', '', 'error_msg_styles_color', ''),
(91, 1, 'error_msg_styles_height', '', 'error_msg_styles_height', ''),
(92, 1, 'error_msg_styles_width', '', 'error_msg_styles_width', ''),
(93, 1, 'error_msg_styles_font-size', '', 'error_msg_styles_font-size', ''),
(94, 1, 'error_msg_styles_margin', '', 'error_msg_styles_margin', ''),
(95, 1, 'error_msg_styles_padding', '', 'error_msg_styles_padding', ''),
(96, 1, 'error_msg_styles_display', '', 'error_msg_styles_display', ''),
(97, 1, 'error_msg_styles_show_advanced_css', '0', 'error_msg_styles_show_advanced_css', '0'),
(98, 1, 'error_msg_styles_advanced', '', 'error_msg_styles_advanced', ''),
(99, 1, 'allow_public_link', '0', 'allow_public_link', '0'),
(100, 1, 'embed_form', '', 'embed_form', ''),
(101, 1, 'currency', '', 'currency', ''),
(102, 1, 'unique_field_error', 'A form with this value has already been submitted.', 'unique_field_error', 'A form with this value has already been submitted.'),
(103, 2, 'title', 'Contact Me', 'title', 'Contact Me'),
(104, 2, 'key', '', 'key', ''),
(105, 2, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(106, 2, 'default_label_pos', 'above', 'default_label_pos', 'above'),
(107, 2, 'conditions', 'a:0:{}', 'conditions', 'a:0:{}'),
(108, 2, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(109, 2, 'editActive', '', 'editActive', ''),
(110, 2, 'show_title', '1', 'show_title', '1'),
(111, 2, 'clear_complete', '1', 'clear_complete', '1'),
(112, 2, 'hide_complete', '1', 'hide_complete', '1'),
(113, 2, 'wrapper_class', '', 'wrapper_class', ''),
(114, 2, 'element_class', '', 'element_class', ''),
(115, 2, 'add_submit', '1', 'add_submit', '1'),
(116, 2, 'logged_in', '0', 'logged_in', '0'),
(117, 2, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(118, 2, 'sub_limit_number', '', 'sub_limit_number', ''),
(119, 2, 'sub_limit_msg', '', 'sub_limit_msg', ''),
(120, 2, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(121, 2, 'formContentData', 'a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:6:\"submit\";}', 'formContentData', 'a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:6:\"submit\";}'),
(122, 2, 'container_styles_background-color', '', 'container_styles_background-color', ''),
(123, 2, 'container_styles_border', '', 'container_styles_border', ''),
(124, 2, 'container_styles_border-style', '', 'container_styles_border-style', ''),
(125, 2, 'container_styles_border-color', '', 'container_styles_border-color', ''),
(126, 2, 'container_styles_color', '', 'container_styles_color', ''),
(127, 2, 'container_styles_height', '', 'container_styles_height', ''),
(128, 2, 'container_styles_width', '', 'container_styles_width', ''),
(129, 2, 'container_styles_font-size', '', 'container_styles_font-size', ''),
(130, 2, 'container_styles_margin', '', 'container_styles_margin', ''),
(131, 2, 'container_styles_padding', '', 'container_styles_padding', ''),
(132, 2, 'container_styles_display', '', 'container_styles_display', ''),
(133, 2, 'container_styles_float', '', 'container_styles_float', ''),
(134, 2, 'container_styles_show_advanced_css', '0', 'container_styles_show_advanced_css', '0'),
(135, 2, 'container_styles_advanced', '', 'container_styles_advanced', ''),
(136, 2, 'title_styles_background-color', '', 'title_styles_background-color', ''),
(137, 2, 'title_styles_border', '', 'title_styles_border', ''),
(138, 2, 'title_styles_border-style', '', 'title_styles_border-style', ''),
(139, 2, 'title_styles_border-color', '', 'title_styles_border-color', ''),
(140, 2, 'title_styles_color', '', 'title_styles_color', ''),
(141, 2, 'title_styles_height', '', 'title_styles_height', ''),
(142, 2, 'title_styles_width', '', 'title_styles_width', ''),
(143, 2, 'title_styles_font-size', '', 'title_styles_font-size', ''),
(144, 2, 'title_styles_margin', '', 'title_styles_margin', ''),
(145, 2, 'title_styles_padding', '', 'title_styles_padding', ''),
(146, 2, 'title_styles_display', '', 'title_styles_display', ''),
(147, 2, 'title_styles_float', '', 'title_styles_float', ''),
(148, 2, 'title_styles_show_advanced_css', '0', 'title_styles_show_advanced_css', '0'),
(149, 2, 'title_styles_advanced', '', 'title_styles_advanced', ''),
(150, 2, 'row_styles_background-color', '', 'row_styles_background-color', ''),
(151, 2, 'row_styles_border', '', 'row_styles_border', ''),
(152, 2, 'row_styles_border-style', '', 'row_styles_border-style', ''),
(153, 2, 'row_styles_border-color', '', 'row_styles_border-color', ''),
(154, 2, 'row_styles_color', '', 'row_styles_color', ''),
(155, 2, 'row_styles_height', '', 'row_styles_height', ''),
(156, 2, 'row_styles_width', '', 'row_styles_width', ''),
(157, 2, 'row_styles_font-size', '', 'row_styles_font-size', ''),
(158, 2, 'row_styles_margin', '', 'row_styles_margin', ''),
(159, 2, 'row_styles_padding', '', 'row_styles_padding', ''),
(160, 2, 'row_styles_display', '', 'row_styles_display', ''),
(161, 2, 'row_styles_show_advanced_css', '0', 'row_styles_show_advanced_css', '0'),
(162, 2, 'row_styles_advanced', '', 'row_styles_advanced', ''),
(163, 2, 'row-odd_styles_background-color', '', 'row-odd_styles_background-color', ''),
(164, 2, 'row-odd_styles_border', '', 'row-odd_styles_border', ''),
(165, 2, 'row-odd_styles_border-style', '', 'row-odd_styles_border-style', ''),
(166, 2, 'row-odd_styles_border-color', '', 'row-odd_styles_border-color', ''),
(167, 2, 'row-odd_styles_color', '', 'row-odd_styles_color', ''),
(168, 2, 'row-odd_styles_height', '', 'row-odd_styles_height', ''),
(169, 2, 'row-odd_styles_width', '', 'row-odd_styles_width', ''),
(170, 2, 'row-odd_styles_font-size', '', 'row-odd_styles_font-size', ''),
(171, 2, 'row-odd_styles_margin', '', 'row-odd_styles_margin', ''),
(172, 2, 'row-odd_styles_padding', '', 'row-odd_styles_padding', ''),
(173, 2, 'row-odd_styles_display', '', 'row-odd_styles_display', ''),
(174, 2, 'row-odd_styles_show_advanced_css', '0', 'row-odd_styles_show_advanced_css', '0'),
(175, 2, 'row-odd_styles_advanced', '', 'row-odd_styles_advanced', ''),
(176, 2, 'success-msg_styles_background-color', '', 'success-msg_styles_background-color', ''),
(177, 2, 'success-msg_styles_border', '', 'success-msg_styles_border', ''),
(178, 2, 'success-msg_styles_border-style', '', 'success-msg_styles_border-style', ''),
(179, 2, 'success-msg_styles_border-color', '', 'success-msg_styles_border-color', ''),
(180, 2, 'success-msg_styles_color', '', 'success-msg_styles_color', ''),
(181, 2, 'success-msg_styles_height', '', 'success-msg_styles_height', ''),
(182, 2, 'success-msg_styles_width', '', 'success-msg_styles_width', ''),
(183, 2, 'success-msg_styles_font-size', '', 'success-msg_styles_font-size', ''),
(184, 2, 'success-msg_styles_margin', '', 'success-msg_styles_margin', ''),
(185, 2, 'success-msg_styles_padding', '', 'success-msg_styles_padding', ''),
(186, 2, 'success-msg_styles_display', '', 'success-msg_styles_display', ''),
(187, 2, 'success-msg_styles_show_advanced_css', '0', 'success-msg_styles_show_advanced_css', '0'),
(188, 2, 'success-msg_styles_advanced', '', 'success-msg_styles_advanced', ''),
(189, 2, 'error_msg_styles_background-color', '', 'error_msg_styles_background-color', ''),
(190, 2, 'error_msg_styles_border', '', 'error_msg_styles_border', ''),
(191, 2, 'error_msg_styles_border-style', '', 'error_msg_styles_border-style', ''),
(192, 2, 'error_msg_styles_border-color', '', 'error_msg_styles_border-color', ''),
(193, 2, 'error_msg_styles_color', '', 'error_msg_styles_color', ''),
(194, 2, 'error_msg_styles_height', '', 'error_msg_styles_height', ''),
(195, 2, 'error_msg_styles_width', '', 'error_msg_styles_width', ''),
(196, 2, 'error_msg_styles_font-size', '', 'error_msg_styles_font-size', ''),
(197, 2, 'error_msg_styles_margin', '', 'error_msg_styles_margin', ''),
(198, 2, 'error_msg_styles_padding', '', 'error_msg_styles_padding', ''),
(199, 2, 'error_msg_styles_display', '', 'error_msg_styles_display', ''),
(200, 2, 'error_msg_styles_show_advanced_css', '0', 'error_msg_styles_show_advanced_css', '0'),
(201, 2, 'error_msg_styles_advanced', '', 'error_msg_styles_advanced', ''),
(202, 2, 'seq_num', NULL, 'seq_num', NULL),
(203, 2, 'allow_public_link', '0', 'allow_public_link', '0'),
(204, 2, 'embed_form', '', 'embed_form', ''),
(205, 2, 'currency', '', 'currency', ''),
(206, 2, 'unique_field_error', 'A form with this value has already been submitted.', 'unique_field_error', 'A form with this value has already been submitted.');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `object_title` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext DEFAULT NULL,
  `meta_key` longtext DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_upgrades`
--

CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT 0,
  `maintenance` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_upgrades`
--

INSERT INTO `wp_nf3_upgrades` (`id`, `cache`, `stage`, `maintenance`) VALUES
(1, 'a:7:{s:2:\"id\";i:1;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:4:{i:0;a:2:{s:8:\"settings\";a:72:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:5:\"order\";s:1:\"1\";s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2020-07-03 08:03:29\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:1;}i:1;a:2:{s:8:\"settings\";a:64:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:5:\"order\";s:1:\"2\";s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2020-07-03 08:03:29\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:2;}i:2;a:2:{s:8:\"settings\";a:71:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:5:\"order\";s:1:\"3\";s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2020-07-03 08:03:29\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:3;}i:3;a:2:{s:8:\"settings\";a:68:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:5:\"order\";s:1:\"5\";s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2020-07-03 08:03:29\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}s:2:\"id\";i:4;}}s:7:\"actions\";a:4:{i:0;a:2:{s:8:\"settings\";a:30:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2020-07-03 13:48:31\";s:5:\"label\";s:16:\"Store Submission\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";s:7:\"message\";s:170:\"This action adds users to WordPress&#039; personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:1;}i:1;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2020-07-03 13:48:31\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:2;}i:2;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2020-07-03 13:48:31\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:29:\"New message from {field:name}\";s:13:\"email_message\";s:60:\"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";s:7:\"message\";s:170:\"This action adds users to WordPress&#039; personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.\";}s:2:\"id\";i:3;}i:3;a:2:{s:8:\"settings\";a:31:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2020-07-03 13:48:31\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:47:\"Thank you {field:name} for filling out my form!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:4;}}s:8:\"settings\";a:103:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:10:\"Contact Me\";s:3:\"key\";s:0:\"\";s:10:\"created_at\";s:19:\"2020-07-03 08:03:29\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"conditions\";a:0:{}s:10:\"show_title\";s:1:\"1\";s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:9:\"logged_in\";s:0:\"\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:6:\"submit\";}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";s:17:\"allow_public_link\";i:0;s:10:\"embed_form\";s:0:\"\";s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}', 4, b'0'),
(2, 'a:7:{s:2:\"id\";i:2;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:4:{i:0;a:2:{s:8:\"settings\";a:74:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";s:11:\"field_label\";s:4:\"Name\";s:9:\"field_key\";s:4:\"name\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:5;}i:1;a:2:{s:8:\"settings\";a:66:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";s:11:\"field_label\";s:5:\"Email\";s:9:\"field_key\";s:5:\"email\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:6;}i:2;a:2:{s:8:\"settings\";a:73:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";s:11:\"field_label\";s:7:\"Message\";s:9:\"field_key\";s:7:\"message\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:7;}i:3;a:2:{s:8:\"settings\";a:70:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:4;s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";s:11:\"field_label\";s:6:\"Submit\";s:9:\"field_key\";s:6:\"submit\";}s:2:\"id\";i:8;}}s:7:\"actions\";a:4:{i:0;a:2:{s:8:\"settings\";a:30:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:5:\"label\";s:16:\"Store Submission\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";s:7:\"message\";s:170:\"This action adds users to WordPress&#039; personal data export tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:5;}i:1;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:6;}i:2;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:47:39\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:29:\"New message from {field:name}\";s:13:\"email_message\";s:60:\"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";s:7:\"message\";s:170:\"This action adds users to WordPress&#039; personal data delete tool, allowing admins to comply with the GDPR and other privacy regulations from the site&#039;s front end.\";}s:2:\"id\";i:7;}i:3;a:2:{s:8:\"settings\";a:31:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:47:\"Thank you {field:name} for filling out my form!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";i:0;s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:8;}}s:8:\"settings\";a:104:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";s:0:\"\";s:5:\"title\";s:10:\"Contact Me\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:10:\"form_title\";s:10:\"Contact Me\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"show_title\";s:1:\"1\";s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:9:\"logged_in\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:10:\"conditions\";a:0:{}s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;s:4:\"name\";i:1;s:5:\"email\";i:2;s:7:\"message\";i:3;s:6:\"submit\";}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";s:17:\"allow_public_link\";i:0;s:10:\"embed_form\";s:0:\"\";s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}', 4, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Schema', 'yes'),
(2, 'home', 'http://localhost/Schema', 'yes'),
(3, 'blogname', 'Schema', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'anishsangat5@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:27:\"ninja-forms/ninja-forms.php\";i:5;s:57:\"real-time-find-and-replace/real-time-find-and-replace.php\";i:6;s:24:\"wordpress-seo/wp-seo.php\";i:7;s:27:\"wp-pagenavi/wp-pagenavi.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Schema', 'yes'),
(41, 'stylesheet', 'Schema', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:4:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:4;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:31:\"What do you need help with now?\";s:4:\"text\";s:128:\"<div class=\"textwidget\">\r\n<p>Get evidence-based collection of articles on a topic sent directly to you in one email.</p>\r\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:5:\"About\";s:4:\"text\";s:103:\"All seven continents by 30, I wrote. I wanted to be the person that could say that. On December 16th...\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}s:27:\"wp-pagenavi/wp-pagenavi.php\";s:14:\"__return_false\";s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1609218527', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:6:\"Search\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:4:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}i:4;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:3;s:9:\"show_date\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-3\";a:1:{i:0;s:13:\"custom_html-2\";}s:9:\"sidebar-4\";a:7:{i:0;s:8:\"search-3\";i:1;s:10:\"archives-3\";i:2;s:12:\"categories-3\";i:3;s:7:\"pages-2\";i:4;s:17:\"recent-comments-3\";i:5;s:14:\"recent-posts-3\";i:6;s:11:\"tag_cloud-2\";}s:9:\"sidebar-5\";a:1:{i:0;s:6:\"text-3\";}s:9:\"sidebar-6\";a:1:{i:0;s:14:\"recent-posts-4\";}s:9:\"sidebar-7\";a:1:{i:0;s:12:\"categories-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:12:{i:1593770928;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1593796128;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1593839328;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593839336;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593839338;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593849607;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594357728;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1594368006;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1594368211;a:1:{s:26:\"nf_weekly_promotion_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1594368287;a:1:{s:22:\"nf_marketing_feed_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1596441887;a:1:{s:13:\"nf_optin_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"nf-monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:2:{i:2;a:3:{s:5:\"title\";s:9:\"Tag Cloud\";s:5:\"count\";i:1;s:8:\"taxonomy\";s:8:\"post_tag\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:\"title\";s:54:\"Read our blog to sharpen your business and SEO skills.\";s:7:\"content\";s:116:\"<div class=\"page-desc\">Get evidence-based collection of articles on a topic sent directly to you in one email.</div>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:2:{s:22:\"WzgGW0KmotBgLxDfQdjbrE\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BTygMisMn3rZcikb3Og.PUFwFHTDpe1\";s:10:\"created_at\";i:1593672807;}s:22:\"MkKDy21YmtysmAx1oxrmqy\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BEIpJjJPek/pN96ofQyNTSVyA2nP1F0\";s:10:\"created_at\";i:1593762476;}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:69:\"http://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:70:\"http://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1593764622;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1593666632;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(124, '_site_transient_timeout_browser_6aa22f8afb172793f3803c076764d327', '1594271337', 'no'),
(125, '_site_transient_browser_6aa22f8afb172793f3803c076764d327', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"83.0.4103.116\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, '_site_transient_timeout_php_check_c35af108126e3879ab2f7bb297998072', '1594271338', 'no'),
(127, '_site_transient_php_check_c35af108126e3879ab2f7bb297998072', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(142, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1593764627;s:7:\"checked\";a:1:{s:6:\"Schema\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(143, 'current_theme', 'superultra', 'yes'),
(144, 'theme_mods_Schema', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(148, 'recently_activated', 'a:1:{s:33:\"duplicate-post/duplicate-post.php\";i:1593683617;}', 'yes'),
(160, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.9\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1593671291;s:7:\"version\";s:5:\"5.1.9\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(162, 'acf_version', '5.8.12', 'yes'),
(171, 'recovery_mode_email_last_sent', '1593762476', 'yes'),
(176, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(180, 'category_children', 'a:0:{}', 'yes'),
(194, 'duplicate_post_copytitle', '1', 'yes'),
(195, 'duplicate_post_copydate', '0', 'yes'),
(196, 'duplicate_post_copystatus', '0', 'yes'),
(197, 'duplicate_post_copyslug', '0', 'yes'),
(198, 'duplicate_post_copyexcerpt', '1', 'yes'),
(199, 'duplicate_post_copycontent', '1', 'yes'),
(200, 'duplicate_post_copythumbnail', '1', 'yes'),
(201, 'duplicate_post_copytemplate', '1', 'yes'),
(202, 'duplicate_post_copyformat', '1', 'yes'),
(203, 'duplicate_post_copyauthor', '0', 'yes'),
(204, 'duplicate_post_copypassword', '0', 'yes'),
(205, 'duplicate_post_copyattachments', '0', 'yes'),
(206, 'duplicate_post_copychildren', '0', 'yes'),
(207, 'duplicate_post_copycomments', '0', 'yes'),
(208, 'duplicate_post_copymenuorder', '1', 'yes'),
(209, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(210, 'duplicate_post_blacklist', '', 'yes'),
(211, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(212, 'duplicate_post_show_row', '1', 'yes'),
(213, 'duplicate_post_show_adminbar', '1', 'yes'),
(214, 'duplicate_post_show_submitbox', '1', 'yes'),
(215, 'duplicate_post_show_bulkactions', '1', 'yes'),
(216, 'duplicate_post_show_original_column', '0', 'yes'),
(217, 'duplicate_post_show_original_in_post_states', '0', 'yes'),
(218, 'duplicate_post_show_original_meta_box', '0', 'yes'),
(219, 'duplicate_post_version', '3.2.4', 'yes'),
(220, 'duplicate_post_show_notice', '1', 'no'),
(257, 'pagenavi_options', 'a:15:{s:10:\"pages_text\";s:0:\"\";s:12:\"current_text\";s:13:\"%PAGE_NUMBER%\";s:9:\"page_text\";s:13:\"%PAGE_NUMBER%\";s:10:\"first_text\";s:0:\"\";s:9:\"last_text\";s:0:\"\";s:9:\"prev_text\";s:8:\"← Prev\";s:9:\"next_text\";s:8:\"Next →\";s:12:\"dotleft_text\";s:0:\"\";s:13:\"dotright_text\";s:0:\"\";s:9:\"num_pages\";i:5;s:23:\"num_larger_page_numbers\";i:3;s:28:\"larger_page_numbers_multiple\";i:3;s:11:\"always_show\";i:0;s:16:\"use_pagenavi_css\";i:1;s:5:\"style\";i:1;}', 'yes'),
(295, 'widget_tag_cloud-2_inner_banner_image', '', 'no'),
(296, '_widget_tag_cloud-2_inner_banner_image', 'field_5efdeabf123d1', 'no'),
(303, '_transient_health-check-site-status-result', '{\"good\":8,\"recommended\":9,\"critical\":0}', 'yes'),
(313, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(314, '_site_transient_timeout_available_translations', '1593773901', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(315, '_site_transient_available_translations', 'a:122:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-22 12:24:39\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-05-29 08:41:36\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.15/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.14/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-02 09:15:25\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-17 11:59:40\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-27 07:15:52\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-11 08:59:48\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-10 15:15:09\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-05-20 09:36:00\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-16 11:43:52\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.4.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-19 09:59:11\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-17 18:22:34\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-19 09:59:34\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.4.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-19 11:25:27\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-04 12:34:15\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-05-23 06:28:24\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-18 22:29:32\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-05-22 22:03:00\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-03-30 09:33:04\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-03-31 22:29:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-02 13:31:49\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-17 14:25:07\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-05-31 09:30:36\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-23 16:46:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-26 20:02:36\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-01 15:18:21\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-01 18:27:50\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-17 15:16:51\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-18 10:25:55\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-05-23 17:57:39\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-30 13:59:01\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-10 10:30:15\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-16 08:38:07\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-05-26 21:16:26\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-01 12:25:22\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-05-30 09:42:01\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-27 22:04:47\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-05 20:35:18\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-30 12:36:02\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-03 10:58:08\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-03 03:44:04\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-12 08:30:48\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-19 01:20:29\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-30 07:54:16\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-05-24 12:23:59\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.15/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-05-21 16:29:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-06 14:36:42\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.14/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.15/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-22 04:53:48\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-04 08:33:38\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.4.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-30 18:03:47\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-02 20:14:59\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-09 06:38:25\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-16 21:50:48\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-03 12:39:07\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-01 06:10:37\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.4.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-01 11:09:51\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-01 08:31:25\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-18 12:47:27\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-08 11:26:21\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-05-27 17:42:38\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-05-29 15:07:21\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-04-01 01:42:23\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-03 06:23:10\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.6/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-04 18:21:20\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-21 01:12:44\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-05-23 01:47:18\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.6\";s:7:\"updated\";s:19:\"2020-04-09 10:48:08\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.6/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:6:\"5.0.10\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0.10/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-07 15:52:24\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-11 01:26:14\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-03-08 12:12:22\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-03-30 20:54:59\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no'),
(317, '_site_transient_timeout_theme_roots', '1593764912', 'no'),
(318, '_site_transient_theme_roots', 'a:1:{s:6:\"Schema\";s:7:\"/themes\";}', 'no'),
(319, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1593773926', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(320, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4709;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4203;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2673;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2560;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1964;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1813;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1794;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1487;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1478;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1477;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1453;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1436;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1430;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1305;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1204;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1196;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1130;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1126;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1099;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1000;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:884;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:876;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:876;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:876;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:791;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:781;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:777;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:773;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:768;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:750;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:730;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:718;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:718;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:699;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:691;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:662;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:662;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:656;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:654;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:647;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:630;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:627;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:594;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:586;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:579;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:578;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:577;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:572;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:557;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:550;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:550;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:550;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:540;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:538;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:531;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:524;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:517;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:514;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:512;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:507;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:505;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:503;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:494;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:490;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:478;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:477;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:469;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:445;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:441;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:438;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:433;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:432;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:429;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:429;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:421;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:410;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:408;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:408;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:402;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:398;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:398;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:392;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:388;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:379;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:377;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:377;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:376;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:373;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:369;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:367;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:363;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:362;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:359;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:355;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:350;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:344;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:342;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:337;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:337;}}', 'no'),
(323, 'wpseo', 'a:26:{s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:25:\"ignore_indexation_warning\";b:0;s:29:\"indexation_warning_hide_until\";b:0;s:18:\"indexation_started\";b:0;s:7:\"version\";s:6:\"14.4.1\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1593763206;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(324, 'wpseo_titles', 'a:120:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:17:\"title-home_banner\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:20:\"metadesc-home_banner\";s:0:\"\";s:19:\"noindex-home_banner\";b:0;s:20:\"showdate-home_banner\";b:0;s:30:\"display-metabox-pt-home_banner\";b:1;s:30:\"post_types-home_banner-maintax\";i:0;s:27:\"title-ptarchive-home_banner\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:30:\"metadesc-ptarchive-home_banner\";s:0:\"\";s:29:\"bctitle-ptarchive-home_banner\";s:0:\"\";s:29:\"noindex-ptarchive-home_banner\";b:0;s:14:\"title-services\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:17:\"metadesc-services\";s:0:\"\";s:16:\"noindex-services\";b:0;s:17:\"showdate-services\";b:0;s:27:\"display-metabox-pt-services\";b:1;s:27:\"post_types-services-maintax\";i:0;s:24:\"title-ptarchive-services\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:27:\"metadesc-ptarchive-services\";s:0:\"\";s:26:\"bctitle-ptarchive-services\";s:0:\"\";s:26:\"noindex-ptarchive-services\";b:0;s:14:\"title-partners\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:17:\"metadesc-partners\";s:0:\"\";s:16:\"noindex-partners\";b:0;s:17:\"showdate-partners\";b:0;s:27:\"display-metabox-pt-partners\";b:1;s:27:\"post_types-partners-maintax\";i:0;s:24:\"title-ptarchive-partners\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:27:\"metadesc-ptarchive-partners\";s:0:\"\";s:26:\"bctitle-ptarchive-partners\";s:0:\"\";s:26:\"noindex-ptarchive-partners\";b:0;s:14:\"title-get_help\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:17:\"metadesc-get_help\";s:0:\"\";s:16:\"noindex-get_help\";b:0;s:17:\"showdate-get_help\";b:0;s:27:\"display-metabox-pt-get_help\";b:1;s:27:\"post_types-get_help-maintax\";i:0;s:24:\"title-ptarchive-get_help\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:27:\"metadesc-ptarchive-get_help\";s:0:\"\";s:26:\"bctitle-ptarchive-get_help\";s:0:\"\";s:26:\"noindex-ptarchive-get_help\";b:0;s:18:\"title-testimonials\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-testimonials\";s:0:\"\";s:20:\"noindex-testimonials\";b:0;s:21:\"showdate-testimonials\";b:0;s:31:\"display-metabox-pt-testimonials\";b:1;s:31:\"post_types-testimonials-maintax\";i:0;s:28:\"title-ptarchive-testimonials\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:31:\"metadesc-ptarchive-testimonials\";s:0:\"\";s:30:\"bctitle-ptarchive-testimonials\";s:0:\"\";s:30:\"noindex-ptarchive-testimonials\";b:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(325, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(326, 'wpseo_flush_rewrite', '1', 'yes'),
(327, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:6:\"14.4.1\";}', 'yes'),
(328, '_transient_timeout_wpseo_link_table_inaccessible', '1625299207', 'no'),
(329, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(330, '_transient_timeout_wpseo_meta_table_inaccessible', '1625299207', 'no'),
(331, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(333, 'wpseo_ryte', 'a:2:{s:6:\"status\";i:-1;s:10:\"last_fetch\";i:1593763212;}', 'yes'),
(334, 'rewrite_rules', 'a:182:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"home_banner/?$\";s:28:\"index.php?post_type=partners\";s:44:\"home_banner/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=partners&feed=$matches[1]\";s:39:\"home_banner/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=partners&feed=$matches[1]\";s:31:\"home_banner/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=partners&paged=$matches[1]\";s:11:\"services/?$\";s:28:\"index.php?post_type=services\";s:41:\"services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:36:\"services/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:28:\"services/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:11:\"get_help/?$\";s:28:\"index.php?post_type=get_help\";s:41:\"get_help/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=get_help&feed=$matches[1]\";s:36:\"get_help/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=get_help&feed=$matches[1]\";s:28:\"get_help/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=get_help&paged=$matches[1]\";s:15:\"testimonials/?$\";s:32:\"index.php?post_type=testimonials\";s:45:\"testimonials/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=testimonials&feed=$matches[1]\";s:40:\"testimonials/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=testimonials&feed=$matches[1]\";s:32:\"testimonials/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=testimonials&paged=$matches[1]\";s:29:\"^ninja-forms/([a-zA-Z0-9]+)/?\";s:36:\"index.php?nf_public_link=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"home_banner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"home_banner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"home_banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home_banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"home_banner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"home_banner/([^/]+)/embed/?$\";s:41:\"index.php?partners=$matches[1]&embed=true\";s:32:\"home_banner/([^/]+)/trackback/?$\";s:35:\"index.php?partners=$matches[1]&tb=1\";s:52:\"home_banner/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?partners=$matches[1]&feed=$matches[2]\";s:47:\"home_banner/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?partners=$matches[1]&feed=$matches[2]\";s:40:\"home_banner/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?partners=$matches[1]&paged=$matches[2]\";s:47:\"home_banner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?partners=$matches[1]&cpage=$matches[2]\";s:36:\"home_banner/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?partners=$matches[1]&page=$matches[2]\";s:28:\"home_banner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"home_banner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"home_banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home_banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"home_banner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:49:\"services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:44:\"services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"get_help/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"get_help/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"get_help/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"get_help/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"get_help/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"get_help/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"get_help/([^/]+)/embed/?$\";s:41:\"index.php?get_help=$matches[1]&embed=true\";s:29:\"get_help/([^/]+)/trackback/?$\";s:35:\"index.php?get_help=$matches[1]&tb=1\";s:49:\"get_help/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?get_help=$matches[1]&feed=$matches[2]\";s:44:\"get_help/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?get_help=$matches[1]&feed=$matches[2]\";s:37:\"get_help/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?get_help=$matches[1]&paged=$matches[2]\";s:44:\"get_help/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?get_help=$matches[1]&cpage=$matches[2]\";s:33:\"get_help/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?get_help=$matches[1]&page=$matches[2]\";s:25:\"get_help/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"get_help/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"get_help/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"get_help/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"get_help/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"get_help/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"testimonials/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"testimonials/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"testimonials/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"testimonials/([^/]+)/embed/?$\";s:45:\"index.php?testimonials=$matches[1]&embed=true\";s:33:\"testimonials/([^/]+)/trackback/?$\";s:39:\"index.php?testimonials=$matches[1]&tb=1\";s:53:\"testimonials/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?testimonials=$matches[1]&feed=$matches[2]\";s:48:\"testimonials/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?testimonials=$matches[1]&feed=$matches[2]\";s:41:\"testimonials/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&paged=$matches[2]\";s:48:\"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&cpage=$matches[2]\";s:37:\"testimonials/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?testimonials=$matches[1]&page=$matches[2]\";s:29:\"testimonials/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"testimonials/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"testimonials/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(337, 'ninja_forms_oauth_client_secret', 'pvzxh5LADZ59fTreykWy3EFaGapSsxYEoyGonkop', 'yes'),
(338, 'ninja_forms_version', '3.4.24.3', 'yes'),
(339, 'ninja_forms_db_version', '1.4', 'no'),
(340, 'ninja_forms_required_updates', 'a:6:{s:19:\"CacheCollateActions\";s:19:\"2020-07-03 08:03:29\";s:17:\"CacheCollateForms\";s:19:\"2020-07-03 08:03:29\";s:18:\"CacheCollateFields\";s:19:\"2020-07-03 08:03:29\";s:19:\"CacheCollateObjects\";s:19:\"2020-07-03 08:03:29\";s:19:\"CacheCollateCleanup\";s:19:\"2020-07-03 08:03:29\";s:25:\"CacheFieldReconcilliation\";s:19:\"2020-07-03 08:03:29\";}', 'yes'),
(341, 'ninja_forms_settings', 'a:9:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";i:0;s:16:\"builder_dev_mode\";i:0;s:18:\"opinionated_styles\";s:5:\"light\";}', 'yes'),
(342, 'ninja_forms_zuul', '69', 'no'),
(343, 'wp_nf_update_fields_batch_f290d7552aa8bf2a38bc9071d7dbe5aa', 'a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2020-07-03 08:03:29\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2020-07-03 08:03:29\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2020-07-03 08:03:29\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2020-07-03 08:03:29\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}', 'no'),
(345, 'widget_ninja_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(346, 'ninja_forms_needs_updates', '0', 'yes'),
(347, 'nf_admin_notice', 'a:1:{s:16:\"one_week_support\";a:2:{s:5:\"start\";s:9:\"7/10/2020\";s:3:\"int\";i:7;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(349, 'nf_active_promotions', '{\"dashboard\":[{\"id\":\"personal-20\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-20\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"http:\\/\\/localhost\\/Schema\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-20.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"personal-50\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-50\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"http:\\/\\/localhost\\/Schema\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-50.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"sendwp-banner\",\"location\":\"dashboard\",\"content\":\"<span aria-label=\\\"SendWP. Getting WordPress email into an inbox shouldn\'t be that hard! Never miss another receipt, form submission, or any WordPress email ever again.\\\" style=\\\"cursor:pointer;width:800px;height:83px;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;background-image:url(\'http:\\/\\/localhost\\/Schema\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-sendwp.png\');display:block;\\\"><\\/span>\",\"type\":\"sendwp\",\"script\":\"\\n      setTimeout(function(){ \\/* Wait for services to init. *\\/\\n        var data = {\\n          width: 450,\\n          closeOnClick: \'body\',\\n          closeOnEsc: true,\\n          content: \'<p><h2>Frustrated that WordPress email isn\\u2019t being received?<\\/h2><p>Form submission notifications not hitting your inbox? Some of your visitors getting form feedback via email, others not? By default, your WordPress site sends emails through your web host, which can be unreliable. Your host has spent lots of time and money optimizing to serve your pages, not send your emails.<\\/p><h3>Sign up for SendWP today, and never deal with WordPress email issues again!<\\/h3><p>SendWP is an email service that removes your web host from the email equation.<\\/p><ul style=&quot;list-style-type:initial;margin-left: 20px;&quot;><li>Sends email through dedicated email service, increasing email deliverability.<\\/li><li>Keeps form submission emails out of spam by using a trusted email provider.<\\/li><li>On a shared web host? Don\\u2019t worry about emails being rejected because of blocked IP addresses.<\\/li><li><strong>$1 for the first month. $9\\/month after. Cancel anytime!<\\/strong><\\/li><\\/ul><\\/p><br \\/>\',\\n          btnPrimary: {\\n            text: \'Sign me up!\',\\n            callback: function() {\\n              var spinner = document.createElement(\'span\');\\n              spinner.classList.add(\'dashicons\', \'dashicons-update\', \'dashicons-update-spin\');\\n              var w = this.offsetWidth;\\n              this.innerHTML = spinner.outerHTML;\\n              this.style.width = w+\'px\';\\n              ninja_forms_sendwp_remote_install();\\n            }\\n          },\\n          btnSecondary: {\\n            text: \'Cancel\',\\n            callback: function() {\\n              sendwpModal.toggleModal(false);\\n            }\\n          }\\n        }\\n        var sendwpModal = new NinjaModal(data);\\n      }, 500);\\n    \"}]}', 'no'),
(350, 'nf_form_tel_data', '1', 'no'),
(351, 'ninja_forms_allow_tracking', '1', 'yes'),
(352, 'ninja_forms_optin_reported', '1', 'yes'),
(353, 'nf_tel_collate', '1', 'no'),
(354, 'nf_sub_expiration', 'a:0:{}', 'yes'),
(355, 'nf_form_tel_sent', 'true', 'no'),
(357, 'ninja_forms_addons_feed', '[{\"title\":\"Conditional Logic\",\"image\":\"assets\\/img\\/add-ons\\/conditional-logic.png\",\"content\":\"Build dynamic forms that can change as a user fills out the form. Show and hide fields. Send certain email, don\'t send others. Redirect to one of many pages. The possibilities are endless!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic\",\"plugin\":\"ninja-forms-conditionals\\/conditionals.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic+Docs\",\"version\":\"3.0.26\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Multi-Part Forms\",\"image\":\"assets\\/img\\/add-ons\\/multi-part-forms.png\",\"content\":\"Give submissions a boost on any longer form by making it a multi-page form. Drag and drop fields between pages, add breadcrumb navigation, a progress bar, and loads more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/multi-part-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi-Part+Forms\",\"plugin\":\"ninja-forms-multi-part\\/multi-part.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/multi-part-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi-Part+Forms+Docs\",\"version\":\"3.0.26\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Front-End Posting\",\"image\":\"assets\\/img\\/add-ons\\/front-end-posting.png\",\"content\":\"Let users publish content just by submitting a form! Completely configurable including post type, title, even categories and tags. Set post status, author, and much more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting\",\"plugin\":\"ninja-forms-post-creation\\/ninja-forms-post-creation.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting+Docs\",\"version\":\"3.0.9\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"File Uploads\",\"image\":\"assets\\/img\\/add-ons\\/file-uploads.png\",\"content\":\"Upload files to WordPress, Google Drive, Dropbox, or Amazon S3. Upload documents, images, media, and more. Easily control file type and size. Add an upload field to any form!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads\",\"plugin\":\"ninja-forms-uploads\\/file-uploads.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads+Docs\",\"version\":\"3.3.5\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Layout and Styles\",\"image\":\"assets\\/img\\/add-ons\\/layout-styles.png\",\"content\":\"Drag and drop fields into columns and rows. Resize fields. Add backgrounds, adjust borders, and more. Design gorgeous forms without being a designer!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles\",\"plugin\":\"ninja-forms-style\\/ninja-forms-style.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles+Docs\",\"version\":\"3.0.28\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Mailchimp\",\"image\":\"assets\\/img\\/add-ons\\/mail-chimp.png\",\"content\":\"Bring new life to your lists with upgraded Mailchimp signup forms for WordPress! Easy to build and customize with no code required. Link to lists and interest groups!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp\",\"plugin\":\"ninja-forms-mail-chimp\\/ninja-forms-mail-chimp.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp+Docs\",\"version\":\"3.1.11\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Campaign Monitor\",\"image\":\"assets\\/img\\/add-ons\\/campaign-monitor.png\",\"content\":\"Make any form a custom crafted WordPress signup form for Campaign Monitor. Connect to any list, link form fields to list fields, and watch your lists grow!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor\",\"plugin\":\"ninja-forms-campaign-monitor\\/ninja-forms-campaign-monitor.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"User Analytics\",\"image\":\"assets\\/img\\/add-ons\\/user-analytics.png\",\"content\":\"Get better data on where your form traffic is coming from with every submission. Add 12+ analytics fields including UTM values,  URL referrer, geo data, and more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics\",\"plugin\":\"ninja-forms-user-analytics\\/ninja-forms-user-analytics.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Constant Contact\",\"image\":\"assets\\/img\\/add-ons\\/constant-contact.png\",\"content\":\"Connect WordPress to Constant Contact with forms that you can build and design just the way you want, no tech skills required! Subscribe users to any list or interest group.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact\",\"plugin\":\"ninja-forms-constant-contact\\/ninja-forms-constant-contact.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"AWeber\",\"image\":\"assets\\/img\\/add-ons\\/aweber.png\",\"content\":\"Build your lists faster with easy to design, professional quality WordPress signup forms. No technical skills required. Connect WordPress to AWeber with style!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber\",\"plugin\":\"ninja-forms-aweber\\/ninja-forms-aweber.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PayPal Express\",\"image\":\"assets\\/img\\/add-ons\\/paypal-express.png\",\"content\":\"Set up any form to accept PayPal payments with PayPal Express for WordPress! Base totals on a fixed amount, user entered amount, or a calculated total.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express\",\"plugin\":\"ninja-forms-paypal-express\\/ninja-forms-paypal-express.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express+Docs\",\"version\":\"3.0.15\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"MailPoet\",\"image\":\"assets\\/img\\/add-ons\\/mailpoet.png\",\"content\":\"Say hello better! Customize your MailPoet signup forms to draw more subscribers than ever before. Connect WordPress to any MailPoet list in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet\",\"plugin\":\"ninja-forms-mailpoet\\/nf-mailpoet.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Zoho CRM\",\"image\":\"assets\\/img\\/add-ons\\/zoho-crm.png\",\"content\":\"Customize your forms to get the most out of your connection between WordPress and Zoho. Link form fields directly to Zoho fields, custom fields included, from almost any module.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/ninja-forms-zoho-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM+Docs\",\"version\":\"3.4\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Capsule CRM\",\"image\":\"assets\\/img\\/add-ons\\/capsule-crm.png\",\"content\":\"Boost conversions from WordPress to Capsule with forms tailor made to your audience. Link form fields to Capsule fields from a wide range of modules. Custom fields too!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM\",\"plugin\":\"ninja-forms-capsule-crm\\/ninja-forms-capsule-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM+Docs\",\"version\":\"3.4.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Stripe\",\"image\":\"assets\\/img\\/add-ons\\/stripe.png\",\"content\":\"Set up any WordPress form to accept credit card payments or donations through Stripe. Base totals on a fixed amount, user entered amount, or a calculated total!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe\",\"plugin\":\"ninja-forms-stripe\\/ninja-forms-stripe.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Insightly CRM\",\"image\":\"assets\\/img\\/add-ons\\/insightly-crm.png\",\"content\":\"Your customer\'s journey begins with your WordPress forms. Send Contacts, Leads, Opportunities, Custom fields and more seamlessly from WordPress to Insightly!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM\",\"plugin\":\"ninja-forms-insightly-crm\\/ninja-forms-insightly-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PDF Form Submission\",\"image\":\"assets\\/img\\/add-ons\\/pdf-form-submission.png\",\"content\":\"Generate a PDF of any WordPress form submission. Export any submission as a PDF, or attach it to an email and send a copy to whoever needs one!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission\",\"plugin\":\"ninja-forms-pdf-submissions\\/nf-pdf-submissions.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission+Docs\",\"version\":\"3.1.2\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Trello\",\"image\":\"assets\\/img\\/add-ons\\/trello.png\",\"content\":\"Create a new Trello card with data from any WordPress form submission. Map fields to card details, assign members and labels, upload images, embed links.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello\",\"plugin\":\"ninja-forms-trello\\/ninja-forms-trello.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Elavon\",\"image\":\"assets\\/img\\/add-ons\\/elavon.png\",\"content\":\"Accept credit card payments from any of your WordPress forms. Pass customer and invoice info from any field securely into Elavon with each payment.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon\",\"plugin\":\"ninja-forms-elavon-payment-gateway\\/ninja-forms-elavon-payment-gateway.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon+Docs\",\"version\":\"3.1.0\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Zapier\",\"image\":\"assets\\/img\\/add-ons\\/zapier.png\",\"content\":\"Don\'t see an add-on integration for a service you love? Don\'t worry! Connect WordPress to more than 1,500 different services through Zapier, no code required!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier\",\"plugin\":\"ninja-forms-zapier\\/ninja-forms-zapier.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier+Docs\",\"version\":\"3.0.8\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"}]},{\"title\":\"Salesforce CRM\",\"image\":\"assets\\/img\\/add-ons\\/salesforce-crm.png\",\"content\":\"Easily map any form field to any Salesforce Object or Field. A better connection to your customers begins with a better WordPress form builder!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM\",\"plugin\":\"ninja-forms-salesforce-crm\\/ninja-forms-salesforce-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Slack\",\"image\":\"assets\\/img\\/add-ons\\/slack.png\",\"content\":\"Get realtime Slack notifications in the workspace and channel of your choice with any new WordPress form submission. @Mention any team member!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack\",\"plugin\":\"ninja-forms-slack\\/ninja-forms-slack.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"CleverReach\",\"image\":\"assets\\/img\\/add-ons\\/cleverreach.png\",\"content\":\"Grow the reach of your email marketing with better CleverReach signup forms. Tailor your forms to your audience with this easy to set up integration!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach\",\"plugin\":\"ninja-forms-cleverreach\\/ninja-forms-cleverreach.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Webhooks\",\"image\":\"assets\\/img\\/add-ons\\/webhooks.png\",\"content\":\"Can\'t find a WordPress integration for the service you love? Send WordPress forms data to any external URL using a simple GET or POST request!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks\",\"plugin\":\"ninja-forms-webhooks\\/ninja-forms-webhooks.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"}]},{\"title\":\"Excel Export\",\"image\":\"assets\\/img\\/add-ons\\/excel-export.png\",\"content\":\"Export any form\'s submissions as a Microsoft Excel spreadsheet. Choose a date range, the fields you want to include, and export to Excel! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export\",\"plugin\":\"ninja-forms-excel-export\\/ninja-forms-excel-export.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export+Docs\",\"version\":\"3.3.1\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"WebMerge\",\"image\":\"assets\\/img\\/add-ons\\/webmerge.png\",\"content\":\"Create specifically formatted templates from an uploaded PDF or Word document, then auto-fill them from any WordPress form submission!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=WebMerge\",\"plugin\":\"ninja-forms-webmerge\\/ninja-forms-webmerge.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=WebMerge+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Help Scout\",\"image\":\"assets\\/img\\/add-ons\\/help-scout.png\",\"content\":\"Offering great support is hard. Tailor your WordPress forms to match your customers\' needs with this Help Scout integration for WordPress.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout\",\"plugin\":null,\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Emma\",\"image\":\"assets\\/img\\/add-ons\\/emma.png\",\"content\":\"Take your email marketing further with handcrafted, easy to build signup forms that connect directly into your Emma account! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma\",\"plugin\":\"ninja-forms-emma\\/ninja-forms-emma.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ClickSend SMS\",\"image\":\"assets\\/img\\/add-ons\\/clicksend-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS\",\"plugin\":\"ninja-forms-clicksend\\/ninja-forms-clicksend.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Twilio SMS\",\"image\":\"assets\\/img\\/add-ons\\/twilio-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS\",\"plugin\":\"ninja-forms-twilio\\/ninja-forms-twilio.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Recurly\",\"image\":\"assets\\/img\\/add-ons\\/recurly.png\",\"content\":\"Subscription plans a part of your business model? Let your users subscribe from any WordPress form & make management easier with Recurly!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly\",\"plugin\":\"ninja-forms-recurly\\/ninja-forms-recurly.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"User Management\",\"image\":\"assets\\/img\\/add-ons\\/user-management.png\",\"content\":\"Allow your users to register, login, and manage their own profiles on your website. Customizable template forms for each, or design your own!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management\",\"plugin\":\"ninja-forms-user-management\\/ninja-forms-user-management.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management+Docs\",\"version\":\"3.0.12\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Save Progress\",\"image\":\"assets\\/img\\/add-ons\\/save-progress.png\",\"content\":\"Let your users save their work and reload it all when they have time to return. Don\'t lose out on valuable submissions for longer forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress\",\"plugin\":\"ninja-forms-save-progress\\/ninja-forms-save-progress.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress+Docs\",\"version\":\"3.0.24.2\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"EmailOctopus\",\"image\":\"assets\\/img\\/add-ons\\/emailoctopus.png\",\"content\":\"Pair WordPress\' best drag and drop form builder with your EmailOctopus account for incredibly effective signup forms. Easy, complete integration.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus\",\"plugin\":\"ninja-forms-emailoctopus\\/ninja-forms-emailoctopus.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PipelineDeals CRM\",\"image\":\"assets\\/img\\/add-ons\\/pipelinedeals-crm.png\",\"content\":\"Complete, effortless integration with PipelineDeals CRM. Increase the flow of leads into your sales pipeline with upgraded lead generation forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/zoho-integration.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Highrise CRM\",\"image\":\"assets\\/img\\/add-ons\\/highrise-crm.png\",\"content\":\"Get more out of the functional simplicity of Highrise CRM with forms that can be designed from the ground up to maximize conversion. \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM\",\"plugin\":\"ninja-forms-highrise-crm\\/ninja-forms-highrise-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ConvertKit\",\"image\":\"assets\\/img\\/add-ons\\/convertkit.png\",\"content\":\"Connect WordPress to your ConvertKit account with completely customizable opt-in forms. Watch your audience & sales grow like never before!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit\",\"plugin\":\"ninja-forms-convertkit\\/ninja-forms-convertkit.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit+Docs\",\"version\":\"3.0.2\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"OnePageCRM\",\"image\":\"assets\\/img\\/add-ons\\/onepage-crm.png\",\"content\":\"Integrate WordPress with OnePage CRM seamlessly through highly customizable WordPress forms. Make better conversions <em>your<\\/em> Next Action!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM\",\"plugin\":\"ninja-forms-onepage-crm\\/ninja-forms-onepage-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ActiveCampaign\",\"image\":\"assets\\/img\\/add-ons\\/active-campaign.png\",\"content\":\"Design custom forms that link perfectly to your ActiveCampaign account for the ultimate in marketing automation. Better leads begin here!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign\",\"plugin\":\"ninja-forms-active-campaign\\/ninja-forms-active-campaign.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign+Docs\",\"version\":\"3.0.6\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]}]', 'no'),
(363, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1593764633;s:7:\"checked\";a:8:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.8.12\";s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.9\";s:27:\"ninja-forms/ninja-forms.php\";s:8:\"3.4.24.3\";s:57:\"real-time-find-and-replace/real-time-find-and-replace.php\";s:5:\"4.0.2\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:6:\"2.93.3\";s:24:\"wordpress-seo/wp-seo.php\";s:6:\"14.4.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.8.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"http://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:55:\"http://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/plugin/contact-form-7.5.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=2279696\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"ninja-forms/ninja-forms.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/ninja-forms\";s:4:\"slug\";s:11:\"ninja-forms\";s:6:\"plugin\";s:27:\"ninja-forms/ninja-forms.php\";s:11:\"new_version\";s:8:\"3.4.24.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ninja-forms/\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/plugin/ninja-forms.3.4.24.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747\";s:2:\"1x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-128x128.png?rev=1649747\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=2069024\";s:2:\"1x\";s:66:\"https://ps.w.org/ninja-forms/assets/banner-772x250.png?rev=2069024\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"real-time-find-and-replace/real-time-find-and-replace.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/real-time-find-and-replace\";s:4:\"slug\";s:26:\"real-time-find-and-replace\";s:6:\"plugin\";s:57:\"real-time-find-and-replace/real-time-find-and-replace.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/real-time-find-and-replace/\";s:7:\"package\";s:68:\"http://downloads.wordpress.org/plugin/real-time-find-and-replace.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/real-time-find-and-replace/assets/icon-256x256.png?rev=1347950\";s:2:\"1x\";s:79:\"https://ps.w.org/real-time-find-and-replace/assets/icon-128x128.png?rev=1347950\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/real-time-find-and-replace/assets/banner-1544x500.png?rev=1347950\";s:2:\"1x\";s:81:\"https://ps.w.org/real-time-find-and-replace/assets/banner-772x250.png?rev=1347950\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/real-time-find-and-replace/assets/banner-1544x500-rtl.png?rev=1347950\";s:2:\"1x\";s:85:\"https://ps.w.org/real-time-find-and-replace/assets/banner-772x250-rtl.png?rev=1347950\";}}s:27:\"wp-pagenavi/wp-pagenavi.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/wp-pagenavi\";s:4:\"slug\";s:11:\"wp-pagenavi\";s:6:\"plugin\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:11:\"new_version\";s:6:\"2.93.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-pagenavi/\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/plugin/wp-pagenavi.2.93.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";s:3:\"svg\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-pagenavi/assets/banner-1544x500.jpg?rev=1206758\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-pagenavi/assets/banner-772x250.jpg?rev=1206758\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"14.4.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/plugin/wordpress-seo.14.4.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(364, 'far_plugin_settings', 'a:4:{s:8:\"_wpnonce\";s:10:\"8f151433ff\";s:16:\"_wp_http_referer\";s:58:\"/Schema/wp-admin/tools.php?page=real-time-find-and-replace\";s:7:\"farfind\";a:3:{i:0;s:10:\"{location}\";i:1;s:7:\"{phone}\";i:2;s:7:\"{email}\";}s:10:\"farreplace\";a:3:{i:0;s:47:\"15401 Anacapa Rd. <br>Victorville, <br>CA 92392\";i:1;s:46:\"<a href=\"tel://+1232344566\">(123) 234 4566</a>\";i:2;s:13:\"test@mail.com\";}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_edit_lock', '1593667903:1'),
(6, 9, '_edit_last', '1'),
(7, 9, '_edit_lock', '1593668164:1'),
(8, 10, '_edit_last', '1'),
(9, 10, '_edit_lock', '1593673538:1'),
(11, 12, '_form', '<label>[email* your-email placeholder \"Email address\"] </label>[submit \"Get Started\"]\n<span class=\"form-bottom-text\">*I hate spam as much as you do.</span>'),
(12, 12, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:23:\"Schema \"[your-subject]\"\";s:6:\"sender\";s:34:\"[your-name] <Wordpress@schema.com>\";s:9:\"recipient\";s:22:\"anishsangat5@gmail.com\";s:4:\"body\";s:168:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(13, 12, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:23:\"Schema \"[your-subject]\"\";s:6:\"sender\";s:31:\"Schema <anishsangat5@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:110:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\";s:18:\"additional_headers\";s:32:\"Reply-To: anishsangat5@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(14, 12, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(15, 12, '_additional_settings', ''),
(16, 12, '_locale', 'en_US'),
(19, 14, '_edit_last', '1'),
(20, 14, '_edit_lock', '1593676704:1'),
(22, 10, 'banner_form', '[contact-form-7 id=\"12\" title=\"Banner Form\"]'),
(23, 10, '_banner_form', 'field_5efd806fc68df'),
(24, 10, 'banner_featured_image', '18'),
(25, 10, '_banner_featured_image', 'field_5efd80d2b14ec'),
(26, 17, 'banner_form', '[contact-form-7 id=\"12\" title=\"Banner Form\"]'),
(27, 17, '_banner_form', 'field_5efd806fc68df'),
(28, 17, 'banner_featured_image', ''),
(29, 17, '_banner_featured_image', 'field_5efd80d2b14ec'),
(30, 18, '_wp_attached_file', '2020/07/banner-img.jpg'),
(31, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2020/07/banner-img.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"banner-img-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"banner-img-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"banner-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"banner-img-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"banner-img-1536x480.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 19, 'banner_form', '[contact-form-7 id=\"12\" title=\"Banner Form\"]'),
(34, 19, '_banner_form', 'field_5efd806fc68df'),
(35, 19, 'banner_featured_image', '18'),
(36, 19, '_banner_featured_image', 'field_5efd80d2b14ec'),
(37, 20, '_edit_last', '1'),
(38, 20, '_edit_lock', '1593673425:1'),
(40, 22, '_edit_last', '1'),
(41, 22, '_edit_lock', '1593672217:1'),
(43, 24, '_edit_last', '1'),
(44, 24, '_edit_lock', '1593745628:1'),
(46, 26, '_edit_last', '1'),
(47, 26, '_edit_lock', '1593745624:1'),
(49, 9, '_wp_trash_meta_status', 'draft'),
(50, 9, '_wp_trash_meta_time', '1593673586'),
(51, 9, '_wp_desired_post_slug', ''),
(52, 29, '_edit_last', '1'),
(53, 29, '_edit_lock', '1593677584:1'),
(54, 29, '_thumbnail_id', '18'),
(55, 33, '_edit_last', '1'),
(56, 33, '_edit_lock', '1593748374:1'),
(57, 34, '_wp_attached_file', '2020/07/about-img.jpg'),
(58, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:470;s:6:\"height\";i:353;s:4:\"file\";s:21:\"2020/07/about-img.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"about-img-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"about-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 33, '_thumbnail_id', '34'),
(60, 36, '_menu_item_type', 'custom'),
(61, 36, '_menu_item_menu_item_parent', '0'),
(62, 36, '_menu_item_object_id', '36'),
(63, 36, '_menu_item_object', 'custom'),
(64, 36, '_menu_item_target', ''),
(65, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 36, '_menu_item_xfn', ''),
(67, 36, '_menu_item_url', 'http://localhost/Schema/'),
(69, 37, '_edit_last', '1'),
(70, 37, '_edit_lock', '1593762944:1'),
(71, 39, '_menu_item_type', 'custom'),
(72, 39, '_menu_item_menu_item_parent', '0'),
(73, 39, '_menu_item_object_id', '39'),
(74, 39, '_menu_item_object', 'custom'),
(75, 39, '_menu_item_target', ''),
(76, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 39, '_menu_item_xfn', ''),
(78, 39, '_menu_item_url', '#'),
(80, 40, '_edit_last', '1'),
(81, 40, '_edit_lock', '1593676842:1'),
(82, 41, '_menu_item_type', 'taxonomy'),
(83, 41, '_menu_item_menu_item_parent', '0'),
(84, 41, '_menu_item_object_id', '5'),
(85, 41, '_menu_item_object', 'category'),
(86, 41, '_menu_item_target', ''),
(87, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 41, '_menu_item_xfn', ''),
(89, 41, '_menu_item_url', ''),
(91, 42, '_edit_last', '1'),
(92, 42, '_edit_lock', '1593767754:1'),
(93, 44, '_menu_item_type', 'post_type'),
(94, 44, '_menu_item_menu_item_parent', '0'),
(95, 44, '_menu_item_object_id', '42'),
(96, 44, '_menu_item_object', 'page'),
(97, 44, '_menu_item_target', ''),
(98, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 44, '_menu_item_xfn', ''),
(100, 44, '_menu_item_url', ''),
(102, 45, '_menu_item_type', 'post_type'),
(103, 45, '_menu_item_menu_item_parent', '0'),
(104, 45, '_menu_item_object_id', '37'),
(105, 45, '_menu_item_object', 'page'),
(106, 45, '_menu_item_target', ''),
(107, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 45, '_menu_item_xfn', ''),
(109, 45, '_menu_item_url', ''),
(111, 46, '_menu_item_type', 'post_type'),
(112, 46, '_menu_item_menu_item_parent', '39'),
(113, 46, '_menu_item_object_id', '2'),
(114, 46, '_menu_item_object', 'page'),
(115, 46, '_menu_item_target', ''),
(116, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 46, '_menu_item_xfn', ''),
(118, 46, '_menu_item_url', ''),
(120, 47, '_menu_item_type', 'post_type'),
(121, 47, '_menu_item_menu_item_parent', '39'),
(122, 47, '_menu_item_object_id', '2'),
(123, 47, '_menu_item_object', 'page'),
(124, 47, '_menu_item_target', ''),
(125, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(126, 47, '_menu_item_xfn', ''),
(127, 47, '_menu_item_url', ''),
(129, 48, '_menu_item_type', 'post_type'),
(130, 48, '_menu_item_menu_item_parent', '39'),
(131, 48, '_menu_item_object_id', '2'),
(132, 48, '_menu_item_object', 'page'),
(133, 48, '_menu_item_target', ''),
(134, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(135, 48, '_menu_item_xfn', ''),
(136, 48, '_menu_item_url', ''),
(138, 49, '_menu_item_type', 'post_type'),
(139, 49, '_menu_item_menu_item_parent', '47'),
(140, 49, '_menu_item_object_id', '2'),
(141, 49, '_menu_item_object', 'page'),
(142, 49, '_menu_item_target', ''),
(143, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(144, 49, '_menu_item_xfn', ''),
(145, 49, '_menu_item_url', ''),
(147, 50, '_menu_item_type', 'post_type'),
(148, 50, '_menu_item_menu_item_parent', '47'),
(149, 50, '_menu_item_object_id', '2'),
(150, 50, '_menu_item_object', 'page'),
(151, 50, '_menu_item_target', ''),
(152, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(153, 50, '_menu_item_xfn', ''),
(154, 50, '_menu_item_url', ''),
(156, 51, '_edit_last', '1'),
(157, 51, '_edit_lock', '1593677831:1'),
(158, 52, '_edit_last', '1'),
(159, 52, '_edit_lock', '1593690005:1'),
(160, 55, '_wp_attached_file', '2020/07/amazon.png'),
(161, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:51;s:4:\"file\";s:18:\"2020/07/amazon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 51, 'partner_image', '55'),
(163, 51, '_partner_image', 'field_5efd97cbcd4bf'),
(164, 56, 'partner_image', '55'),
(165, 56, '_partner_image', 'field_5efd97cbcd4bf'),
(166, 63, '_edit_last', '1'),
(167, 63, '_edit_lock', '1593678083:1'),
(168, 63, 'partner_image', '65'),
(169, 63, '_partner_image', 'field_5efd97cbcd4bf'),
(170, 64, 'partner_image', ''),
(171, 64, '_partner_image', 'field_5efd97cbcd4bf'),
(172, 65, '_wp_attached_file', '2020/07/deviantart.png'),
(173, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:50;s:4:\"file\";s:22:\"2020/07/deviantart.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"deviantart-150x50.png\";s:5:\"width\";i:150;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 66, 'partner_image', '65'),
(175, 66, '_partner_image', 'field_5efd97cbcd4bf'),
(176, 67, '_edit_last', '1'),
(177, 67, '_edit_lock', '1593678139:1'),
(178, 68, '_wp_attached_file', '2020/07/mixpanel.png'),
(179, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:137;s:6:\"height\";i:45;s:4:\"file\";s:20:\"2020/07/mixpanel.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 67, 'partner_image', '68'),
(181, 67, '_partner_image', 'field_5efd97cbcd4bf'),
(182, 69, 'partner_image', '68'),
(183, 69, '_partner_image', 'field_5efd97cbcd4bf'),
(184, 70, '_edit_last', '1'),
(185, 70, '_edit_lock', '1593678193:1'),
(186, 71, '_wp_attached_file', '2020/07/khan_academy.png'),
(187, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:71;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2020/07/khan_academy.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 70, 'partner_image', '71'),
(189, 70, '_partner_image', 'field_5efd97cbcd4bf'),
(190, 72, 'partner_image', '71'),
(191, 72, '_partner_image', 'field_5efd97cbcd4bf'),
(192, 73, '_edit_last', '1'),
(193, 73, '_edit_lock', '1593678239:1'),
(194, 74, '_wp_attached_file', '2020/07/get-satisfaction.png'),
(195, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:210;s:6:\"height\";i:50;s:4:\"file\";s:28:\"2020/07/get-satisfaction.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"get-satisfaction-150x50.png\";s:5:\"width\";i:150;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(196, 73, 'partner_image', '74'),
(197, 73, '_partner_image', 'field_5efd97cbcd4bf'),
(198, 75, 'partner_image', '74'),
(199, 75, '_partner_image', 'field_5efd97cbcd4bf'),
(200, 76, '_edit_last', '1'),
(201, 76, '_edit_lock', '1593689945:1'),
(202, 77, '_wp_attached_file', '2020/07/dashlane.png'),
(203, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:221;s:6:\"height\";i:65;s:4:\"file\";s:20:\"2020/07/dashlane.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"dashlane-150x65.png\";s:5:\"width\";i:150;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 76, 'partner_image', '77'),
(205, 76, '_partner_image', 'field_5efd97cbcd4bf'),
(206, 78, 'partner_image', '77'),
(207, 78, '_partner_image', 'field_5efd97cbcd4bf'),
(208, 79, '_edit_last', '1'),
(209, 79, '_edit_lock', '1593679850:1'),
(210, 80, '_edit_last', '1'),
(211, 80, '_edit_lock', '1593682867:1'),
(212, 83, '_wp_attached_file', '2020/07/collaboration.png'),
(213, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:25:\"2020/07/collaboration.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 79, 'get_help_icon', '83'),
(215, 79, '_get_help_icon', 'field_5efd9da1ee64f'),
(216, 84, 'get_help_icon', '83'),
(217, 84, '_get_help_icon', 'field_5efd9da1ee64f'),
(218, 85, '_edit_last', '1'),
(219, 85, '_edit_lock', '1593679847:1'),
(220, 86, '_wp_attached_file', '2020/07/money-bag.png'),
(221, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:37;s:6:\"height\";i:48;s:4:\"file\";s:21:\"2020/07/money-bag.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 85, 'get_help_icon', '86'),
(223, 85, '_get_help_icon', 'field_5efd9da1ee64f'),
(224, 87, 'get_help_icon', '86'),
(225, 87, '_get_help_icon', 'field_5efd9da1ee64f'),
(226, 88, '_edit_last', '1'),
(227, 88, '_edit_lock', '1593679846:1'),
(228, 89, '_wp_attached_file', '2020/07/growth.png'),
(229, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:18:\"2020/07/growth.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 88, 'get_help_icon', '89'),
(231, 88, '_get_help_icon', 'field_5efd9da1ee64f'),
(232, 90, 'get_help_icon', '89'),
(233, 90, '_get_help_icon', 'field_5efd9da1ee64f'),
(234, 91, '_edit_last', '1'),
(235, 91, '_edit_lock', '1593679844:1'),
(236, 92, '_wp_attached_file', '2020/07/focus.png'),
(237, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:48;s:6:\"height\";i:48;s:4:\"file\";s:17:\"2020/07/focus.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(238, 91, 'get_help_icon', '92'),
(239, 91, '_get_help_icon', 'field_5efd9da1ee64f'),
(240, 93, 'get_help_icon', '92'),
(241, 93, '_get_help_icon', 'field_5efd9da1ee64f'),
(242, 96, '_edit_last', '1'),
(243, 96, '_edit_lock', '1593679836:1'),
(244, 97, '_wp_attached_file', '2020/07/discussion.png'),
(245, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:48;s:6:\"height\";i:39;s:4:\"file\";s:22:\"2020/07/discussion.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 96, 'get_help_icon', '97'),
(247, 96, '_get_help_icon', 'field_5efd9da1ee64f'),
(248, 98, 'get_help_icon', '97'),
(249, 98, '_get_help_icon', 'field_5efd9da1ee64f'),
(250, 99, '_edit_last', '1'),
(251, 99, '_edit_lock', '1593749008:1'),
(256, 102, '_wp_attached_file', '2020/07/anroid-1.png'),
(257, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:59;s:6:\"height\";i:65;s:4:\"file\";s:20:\"2020/07/anroid-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 99, 'get_help_icon', '102'),
(259, 99, '_get_help_icon', 'field_5efd9da1ee64f'),
(260, 103, 'get_help_icon', '102'),
(261, 103, '_get_help_icon', 'field_5efd9da1ee64f'),
(262, 104, 'get_help_icon', '102'),
(263, 104, '_get_help_icon', 'field_5efd9da1ee64f'),
(264, 105, 'get_help_icon', '97'),
(265, 105, '_get_help_icon', 'field_5efd9da1ee64f'),
(266, 106, 'get_help_icon', '92'),
(267, 106, '_get_help_icon', 'field_5efd9da1ee64f'),
(268, 108, '_edit_last', '1'),
(269, 108, '_edit_lock', '1593745609:1'),
(271, 110, '_edit_last', '1'),
(272, 110, '_edit_lock', '1593745594:1'),
(274, 112, '_edit_last', '1'),
(275, 112, '_edit_lock', '1593745578:1'),
(277, 114, '_edit_last', '1'),
(278, 114, '_edit_lock', '1593745569:1'),
(280, 116, '_edit_last', '1'),
(281, 116, '_edit_lock', '1593745545:1'),
(285, 119, '_dp_original', '116'),
(286, 120, '_dp_original', '114'),
(287, 121, '_dp_original', '112'),
(288, 122, '_dp_original', '110'),
(289, 123, '_dp_original', '108'),
(290, 124, '_dp_original', '110'),
(292, 125, '_dp_original', '120'),
(294, 126, '_dp_original', '122'),
(295, 127, '_dp_original', '116'),
(296, 128, '_dp_original', '112'),
(297, 129, '_dp_original', '112'),
(298, 130, '_dp_original', '110'),
(299, 131, '_dp_original', '112'),
(300, 119, '_edit_lock', '1593745536:1'),
(301, 127, '_edit_lock', '1593745527:1'),
(302, 120, '_edit_lock', '1593745505:1'),
(303, 125, '_edit_lock', '1593745486:1'),
(304, 123, '_edit_lock', '1593745474:1'),
(305, 122, '_edit_lock', '1593745459:1'),
(306, 124, '_edit_lock', '1593745448:1'),
(307, 126, '_edit_lock', '1593745435:1'),
(308, 130, '_edit_lock', '1593745420:1'),
(309, 121, '_edit_lock', '1593748497:1'),
(310, 128, '_edit_lock', '1593745529:1'),
(311, 129, '_edit_lock', '1593754098:1'),
(312, 131, '_edit_lock', '1593697429:1'),
(313, 119, '_edit_last', '1'),
(315, 127, '_edit_last', '1'),
(317, 120, '_edit_last', '1'),
(319, 125, '_edit_last', '1'),
(321, 123, '_edit_last', '1'),
(323, 122, '_edit_last', '1'),
(325, 124, '_edit_last', '1'),
(327, 126, '_edit_last', '1'),
(329, 130, '_edit_last', '1'),
(331, 121, '_edit_last', '1'),
(333, 128, '_edit_last', '1'),
(335, 129, '_edit_last', '1'),
(337, 131, '_edit_last', '1'),
(340, 145, '_wp_attached_file', '2020/07/blog-img1.jpg'),
(341, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:776;s:6:\"height\";i:437;s:4:\"file\";s:21:\"2020/07/blog-img1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"blog-img1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"blog-img1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"blog-img1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(342, 146, '_wp_attached_file', '2020/07/blog-img3.jpg'),
(343, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:776;s:6:\"height\";i:437;s:4:\"file\";s:21:\"2020/07/blog-img3.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"blog-img3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"blog-img3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"blog-img3-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(344, 147, '_wp_attached_file', '2020/07/blog-img4.jpg'),
(345, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:776;s:6:\"height\";i:437;s:4:\"file\";s:21:\"2020/07/blog-img4.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"blog-img4-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"blog-img4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"blog-img4-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(346, 148, '_wp_attached_file', '2020/07/blog-img2.jpg'),
(347, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:776;s:6:\"height\";i:437;s:4:\"file\";s:21:\"2020/07/blog-img2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"blog-img2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"blog-img2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"blog-img2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 149, '_wp_attached_file', '2020/07/blog-img5.jpg'),
(349, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:776;s:6:\"height\";i:437;s:4:\"file\";s:21:\"2020/07/blog-img5.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"blog-img5-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"blog-img5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"blog-img5-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(350, 131, '_thumbnail_id', '145'),
(352, 129, '_thumbnail_id', '148'),
(354, 128, '_thumbnail_id', '146'),
(356, 121, '_thumbnail_id', '147'),
(358, 130, '_thumbnail_id', '145'),
(360, 126, '_thumbnail_id', '146'),
(362, 124, '_thumbnail_id', '148'),
(364, 122, '_thumbnail_id', '146'),
(367, 123, '_thumbnail_id', '149'),
(369, 125, '_thumbnail_id', '147'),
(371, 120, '_thumbnail_id', '145'),
(373, 127, '_thumbnail_id', '148'),
(375, 119, '_thumbnail_id', '148'),
(377, 116, '_thumbnail_id', '145'),
(379, 114, '_thumbnail_id', '149'),
(381, 112, '_thumbnail_id', '146'),
(383, 110, '_thumbnail_id', '147'),
(385, 108, '_thumbnail_id', '148'),
(388, 152, '_edit_last', '1'),
(389, 152, '_edit_lock', '1593697432:1'),
(392, 158, '_edit_last', '1'),
(393, 158, '_edit_lock', '1593747664:1'),
(394, 152, '_wp_trash_meta_status', 'publish'),
(395, 152, '_wp_trash_meta_time', '1593701164'),
(396, 152, '_wp_desired_post_slug', 'test'),
(397, 160, '_form', '<label>[email* your-email placeholder \"Email address\"] </label>[submit \"Get Started\"]\n<span class=\"form-bottom-text\">*I hate spam as much as you do.</span>'),
(398, 160, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:23:\"Schema \"[your-subject]\"\";s:6:\"sender\";s:29:\"Schema <wordpress@schema.com>\";s:9:\"recipient\";s:22:\"anishsangat5@gmail.com\";s:4:\"body\";s:168:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(399, 160, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:23:\"Schema \"[your-subject]\"\";s:6:\"sender\";s:31:\"Schema <anishsangat5@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:110:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\";s:18:\"additional_headers\";s:32:\"Reply-To: anishsangat5@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(400, 160, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(401, 160, '_additional_settings', ''),
(402, 160, '_locale', 'en_US'),
(404, 129, 'inner_banner_image', ''),
(405, 129, '_inner_banner_image', 'field_5efdeabf123d1'),
(406, 143, 'inner_banner_image', ''),
(407, 143, '_inner_banner_image', 'field_5efdeabf123d1'),
(409, 128, 'inner_banner_image', ''),
(410, 128, '_inner_banner_image', 'field_5efdeabf123d1'),
(411, 142, 'inner_banner_image', ''),
(412, 142, '_inner_banner_image', 'field_5efdeabf123d1'),
(414, 121, 'inner_banner_image', ''),
(415, 121, '_inner_banner_image', 'field_5efdeabf123d1'),
(416, 141, 'inner_banner_image', ''),
(417, 141, '_inner_banner_image', 'field_5efdeabf123d1'),
(419, 130, 'inner_banner_image', ''),
(420, 130, '_inner_banner_image', 'field_5efdeabf123d1'),
(421, 140, 'inner_banner_image', ''),
(422, 140, '_inner_banner_image', 'field_5efdeabf123d1'),
(424, 126, 'inner_banner_image', ''),
(425, 126, '_inner_banner_image', 'field_5efdeabf123d1'),
(426, 139, 'inner_banner_image', ''),
(427, 139, '_inner_banner_image', 'field_5efdeabf123d1'),
(429, 124, 'inner_banner_image', ''),
(430, 124, '_inner_banner_image', 'field_5efdeabf123d1'),
(431, 138, 'inner_banner_image', ''),
(432, 138, '_inner_banner_image', 'field_5efdeabf123d1'),
(434, 122, 'inner_banner_image', ''),
(435, 122, '_inner_banner_image', 'field_5efdeabf123d1'),
(436, 137, 'inner_banner_image', ''),
(437, 137, '_inner_banner_image', 'field_5efdeabf123d1'),
(439, 123, 'inner_banner_image', ''),
(440, 123, '_inner_banner_image', 'field_5efdeabf123d1'),
(441, 136, 'inner_banner_image', ''),
(442, 136, '_inner_banner_image', 'field_5efdeabf123d1'),
(444, 125, 'inner_banner_image', ''),
(445, 125, '_inner_banner_image', 'field_5efdeabf123d1'),
(446, 135, 'inner_banner_image', ''),
(447, 135, '_inner_banner_image', 'field_5efdeabf123d1'),
(449, 120, 'inner_banner_image', ''),
(450, 120, '_inner_banner_image', 'field_5efdeabf123d1'),
(451, 134, 'inner_banner_image', ''),
(452, 134, '_inner_banner_image', 'field_5efdeabf123d1'),
(454, 127, 'inner_banner_image', ''),
(455, 127, '_inner_banner_image', 'field_5efdeabf123d1'),
(456, 133, 'inner_banner_image', ''),
(457, 133, '_inner_banner_image', 'field_5efdeabf123d1'),
(459, 119, 'inner_banner_image', ''),
(460, 119, '_inner_banner_image', 'field_5efdeabf123d1'),
(461, 132, 'inner_banner_image', ''),
(462, 132, '_inner_banner_image', 'field_5efdeabf123d1'),
(464, 116, 'inner_banner_image', ''),
(465, 116, '_inner_banner_image', 'field_5efdeabf123d1'),
(466, 117, 'inner_banner_image', ''),
(467, 117, '_inner_banner_image', 'field_5efdeabf123d1'),
(469, 114, 'inner_banner_image', ''),
(470, 114, '_inner_banner_image', 'field_5efdeabf123d1'),
(471, 115, 'inner_banner_image', ''),
(472, 115, '_inner_banner_image', 'field_5efdeabf123d1'),
(474, 112, 'inner_banner_image', ''),
(475, 112, '_inner_banner_image', 'field_5efdeabf123d1'),
(476, 113, 'inner_banner_image', ''),
(477, 113, '_inner_banner_image', 'field_5efdeabf123d1'),
(479, 110, 'inner_banner_image', ''),
(480, 110, '_inner_banner_image', 'field_5efdeabf123d1'),
(481, 111, 'inner_banner_image', ''),
(482, 111, '_inner_banner_image', 'field_5efdeabf123d1'),
(484, 108, 'inner_banner_image', ''),
(485, 108, '_inner_banner_image', 'field_5efdeabf123d1'),
(486, 109, 'inner_banner_image', ''),
(487, 109, '_inner_banner_image', 'field_5efdeabf123d1'),
(489, 26, 'inner_banner_image', ''),
(490, 26, '_inner_banner_image', 'field_5efdeabf123d1'),
(491, 27, 'inner_banner_image', ''),
(492, 27, '_inner_banner_image', 'field_5efdeabf123d1'),
(493, 24, '_wp_trash_meta_status', 'publish'),
(494, 24, '_wp_trash_meta_time', '1593745772'),
(495, 24, '_wp_desired_post_slug', 'mixpannel'),
(496, 162, '_form', '<label>[text* FullName placeholder \"Full Name\"] </label>\n\n<label>[email* your-email placeholder \"Email\"] </label>\n\n<label>[text your-subject placeholder \"Phone\"] </label>\n\n<label>[textarea your-message placeholder \"Comment\"] </label>\n\n[submit \"Send\"]'),
(497, 162, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:15:\"[your-subject]\"\";s:6:\"sender\";s:35:\"[FullName] <anishsangat5@gmail.com>\";s:9:\"recipient\";s:22:\"anishsangat5@gmail.com\";s:4:\"body\";s:168:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(498, 162, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:23:\"Schema \"[your-subject]\"\";s:6:\"sender\";s:31:\"Schema <anishsangat5@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:110:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\";s:18:\"additional_headers\";s:32:\"Reply-To: anishsangat5@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(499, 162, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(500, 162, '_additional_settings', ''),
(501, 162, '_locale', 'en_US'),
(502, 163, '_form', '<label>[text* text-495 placeholder \"Your Name\"]</label><label>[email* email-499 placeholder \"Email Address\"]<label>\n\n[submit \"Sign Up\"]'),
(503, 163, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:23:\"Schema \"[your-subject]\"\";s:6:\"sender\";s:31:\"Schema <anishsangat5@gmail.com>\";s:9:\"recipient\";s:22:\"anishsangat5@gmail.com\";s:4:\"body\";s:168:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(504, 163, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:23:\"Schema \"[your-subject]\"\";s:6:\"sender\";s:31:\"Schema <anishsangat5@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:110:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\";s:18:\"additional_headers\";s:32:\"Reply-To: anishsangat5@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(505, 163, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(506, 163, '_additional_settings', ''),
(507, 163, '_locale', 'en_US'),
(509, 163, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(510, 2, '_edit_lock', '1593769339:1'),
(511, 2, '_edit_last', '1'),
(512, 2, 'inner_banner_image', ''),
(513, 2, '_inner_banner_image', 'field_5efdeabf123d1'),
(514, 165, 'inner_banner_image', ''),
(515, 165, '_inner_banner_image', 'field_5efdeabf123d1'),
(516, 166, 'inner_banner_image', ''),
(517, 166, '_inner_banner_image', 'field_5efdeabf123d1'),
(518, 37, 'inner_banner_image', ''),
(519, 37, '_inner_banner_image', 'field_5efdeabf123d1'),
(520, 167, 'inner_banner_image', ''),
(521, 167, '_inner_banner_image', 'field_5efdeabf123d1'),
(529, 2, '_yoast_wpseo_content_score', '60'),
(530, 169, 'inner_banner_image', ''),
(531, 169, '_inner_banner_image', 'field_5efdeabf123d1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-07-02 05:08:48', '2020-07-02 05:08:48', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-07-02 05:08:48', '2020-07-02 05:08:48', '', 0, 'http://localhost/Schema/?p=1', 0, 'post', '', 1),
(2, 1, '2020-07-02 05:08:48', '2020-07-02 05:08:48', '<h1>Lorem ipsum dolor sit amet</h1>\r\nconsectetur adipiscing elit. Etiam non turpis a ipsum tempor commodo vitae sed augue. In et justo in metus iaculis elementum. Nullam in lobortis purus, ut maximus dui. Donec maximus nisl id nibh venenatis luctus sed pellentesque velit. Integer a placerat mi. Pellentesque placerat lacus ipsum, id faucibus eros cursus eu. Sed eget ligula non neque porttitor tempus. Duis eros nisl, sodales quis urna et, volutpat rutrum ex. Phasellus et egestas erat. Nulla velit enim, gravida in ipsum sed, posuere scelerisque tortor. Mauris sodales sed nisl et tincidunt. Curabitur fermentum libero eu eros volutpat, nec condimentum massa tempus.\r\n\r\n<ul>\r\n<li>Cras eu feugiat mauris. Integer venenatis elementum sem, nec congue nisl scelerisque tristique.</li>\r\n<li>Pellentesque eget rhoncus dui. Quisque tristique est ante, at malesuada nulla efficitur non.</li>\r\n<li>Aenean egestas luctus ligula, id aliquam est. Vestibulum sed sapien dictum leo molestie</li>\r\n</ul>\r\n<ol>\r\n<li>luctus vel quis nibh. Donec iaculis posuere erat. Etiam pellentesque vehicula metus</li>\r\n<li>vitae aliquam. Quisque semper sit amet turpis vitae molestie.</li>\r\n<li>Aenean efficitur enim in purus venenatis, eu varius nunc lacinia.</li>\r\n</ol>\r\n\r\nNulla pellentesque mauris eu neque tempor, quis fermentum nibh tempor. <b>Vestibulum</b> pellentesque iaculis <a href=\"\">malesuada</a>. Fusce scelerisque venenatis molestie. Praesent massa lectus, mattis ut porttitor vitae, pretium in nibh. Ut dignissim ipsum sit amet ex dictum vulputate.\r\n\r\n<h2>Nullam congue a est et bibendum. Integer vel nisl in quam placerat semper.</h2>\r\nDonec semper, ligula ut tempus consectetur, <strong>tellus massa lobortis metus</strong>, nec ultrices dui ex et diam. Aenean pharetra velit quis tortor efficitur facilisis. Nam metus urna, scelerisque ut sem nec, vehicula interdum ligula. Proin vel augue eu velit ultricies consectetur. Phasellus leo nisl, consectetur sit amet consequat id, tincidunt in eros. Nullam porta massa id cursus viverra.\r\n\r\nNunc risus nunc, bibendum ut leo et, ultrices ultrices nisl. Nulla lacinia mauris id urna imperdiet egestas et ac elit. Mauris malesuada congue lectus, nec rhoncus nibh elementum ut. Suspendisse convallis leo sed dictum pretium. Pellentesque finibus elit in leo vulputate, a lacinia mi dictum. Morbi nibh purus, rhoncus vel faucibus commodo, hendrerit at sapien. Sed et justo tortor. Suspendisse mi velit, suscipit et faucibus eu, venenatis at urna. Ut fermentum eros ac lorem hendrerit porta. Vivamus pretium massa a leo mattis pulvinar. Maecenas purus urna, pellentesque id sodales ac, mollis a ex. Cras in erat in ipsum dictum consequat. Quisque pretium, erat ut rutrum finibus, justo ante hendrerit lacus, vel varius quam augue vitae nunc. Nullam scelerisque risus tortor, eget tincidunt libero malesuada in. Sed non nisl quis sem viverra lobortis. Maecenas ut tellus ullamcorper, consectetur quam pulvinar, mattis erat.', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-07-03 09:42:19', '2020-07-03 09:42:19', '', 0, 'http://localhost/Schema/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-07-02 05:08:48', '2020-07-02 05:08:48', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/Schema.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-07-02 05:08:48', '2020-07-02 05:08:48', '', 0, 'http://localhost/Schema/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-07-02 05:08:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-02 05:08:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?p=4', 0, 'post', '', 0),
(6, 1, '2020-07-02 05:33:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-02 05:33:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?p=6', 0, 'post', '', 0),
(7, 1, '2020-07-02 05:34:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-02 05:34:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?p=7', 0, 'post', '', 0),
(8, 1, '2020-07-02 05:34:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-02 05:34:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?p=8', 0, 'post', '', 0),
(9, 1, '2020-07-02 07:06:26', '2020-07-02 07:06:26', '', 'Content Marketing & SEO Done Right', 'Learn how B2B and SaaS companies improve their marketing ROI through the evidence-based approach to SEO and content marketing.', 'trash', 'open', 'open', '', '__trashed', '', '', '2020-07-02 07:06:26', '2020-07-02 07:06:26', '', 0, 'http://localhost/Schema/?p=9', 0, 'post', '', 0),
(10, 1, '2020-07-02 05:50:15', '2020-07-02 05:50:15', '', 'Content Marketing & SEO Done Right', 'Learn how B2B and SaaS companies improve their marketing ROI through the evidence-based approach to SEO and content marketing.', 'publish', 'open', 'open', '', 'content-marketing-seo-done-right', '', '', '2020-07-02 06:40:53', '2020-07-02 06:40:53', '', 0, 'http://localhost/Schema/?p=10', 0, 'post', '', 0),
(11, 1, '2020-07-02 05:50:15', '2020-07-02 05:50:15', '', 'Content Marketing & SEO Done Right', 'Learn how B2B and SaaS companies improve their marketing ROI through the evidence-based approach to SEO and content marketing.', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-07-02 05:50:15', '2020-07-02 05:50:15', '', 10, 'http://localhost/Schema/2020/07/02/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-07-02 06:28:11', '2020-07-02 06:28:11', '<label>[email* your-email placeholder \"Email address\"] </label>[submit \"Get Started\"]\r\n<span class=\"form-bottom-text\">*I hate spam as much as you do.</span>\n1\nSchema \"[your-subject]\"\n[your-name] <Wordpress@schema.com>\nanishsangat5@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\nReply-To: [your-email]\n\n\n\n\nSchema \"[your-subject]\"\nSchema <anishsangat5@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\nReply-To: anishsangat5@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Banner Form', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-07-03 08:15:15', '2020-07-03 08:15:15', '', 0, 'http://localhost/Schema/?post_type=wpcf7_contact_form&#038;p=12', 0, 'wpcf7_contact_form', '', 0),
(14, 1, '2020-07-02 06:38:03', '2020-07-02 06:38:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"category:bannner\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Banner Extra Field', 'home-banner-extra-field', 'publish', 'closed', 'closed', '', 'group_5efd805dd2166', '', '', '2020-07-02 07:07:53', '2020-07-02 07:07:53', '', 0, 'http://localhost/Schema/?post_type=acf-field-group&#038;p=14', 0, 'acf-field-group', '', 0),
(15, 1, '2020-07-02 06:38:03', '2020-07-02 06:38:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Banner Form', 'banner_form', 'publish', 'closed', 'closed', '', 'field_5efd806fc68df', '', '', '2020-07-02 06:38:03', '2020-07-02 06:38:03', '', 14, 'http://localhost/Schema/?post_type=acf-field&p=15', 0, 'acf-field', '', 0),
(16, 1, '2020-07-02 06:38:22', '2020-07-02 06:38:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Featured Image', 'banner_featured_image', 'publish', 'closed', 'closed', '', 'field_5efd80d2b14ec', '', '', '2020-07-02 06:38:22', '2020-07-02 06:38:22', '', 14, 'http://localhost/Schema/?post_type=acf-field&p=16', 1, 'acf-field', '', 0),
(17, 1, '2020-07-02 06:38:50', '2020-07-02 06:38:50', '', 'Content Marketing & SEO Done Right', 'Learn how B2B and SaaS companies improve their marketing ROI through the evidence-based approach to SEO and content marketing.', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-07-02 06:38:50', '2020-07-02 06:38:50', '', 10, 'http://localhost/Schema/2020/07/02/10-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-07-02 06:40:47', '2020-07-02 06:40:47', '', 'banner-img', '', 'inherit', 'open', 'closed', '', 'banner-img', '', '', '2020-07-02 06:40:47', '2020-07-02 06:40:47', '', 10, 'http://localhost/Schema/wp-content/uploads/2020/07/banner-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2020-07-02 06:40:53', '2020-07-02 06:40:53', '', 'Content Marketing & SEO Done Right', 'Learn how B2B and SaaS companies improve their marketing ROI through the evidence-based approach to SEO and content marketing.', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-07-02 06:40:53', '2020-07-02 06:40:53', '', 10, 'http://localhost/Schema/2020/07/02/10-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-07-02 06:45:33', '2020-07-02 06:45:33', '', 'Amazone', '', 'publish', 'open', 'open', '', 'amazone', '', '', '2020-07-02 06:45:33', '2020-07-02 06:45:33', '', 0, 'http://localhost/Schema/?p=20', 0, 'post', '', 0),
(21, 1, '2020-07-02 06:45:33', '2020-07-02 06:45:33', '', 'Amazone', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-07-02 06:45:33', '2020-07-02 06:45:33', '', 20, 'http://localhost/Schema/2020/07/02/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-07-02 06:45:58', '2020-07-02 06:45:58', '', 'Deviant Art', '', 'publish', 'open', 'open', '', 'deviant-art', '', '', '2020-07-02 06:45:58', '2020-07-02 06:45:58', '', 0, 'http://localhost/Schema/?p=22', 0, 'post', '', 0),
(23, 1, '2020-07-02 06:45:58', '2020-07-02 06:45:58', '', 'Deviant Art', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-07-02 06:45:58', '2020-07-02 06:45:58', '', 22, 'http://localhost/Schema/2020/07/02/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-07-02 06:46:12', '2020-07-02 06:46:12', '', 'MixPannel', '', 'trash', 'open', 'open', '', 'mixpannel__trashed', '', '', '2020-07-03 03:09:32', '2020-07-03 03:09:32', '', 0, 'http://localhost/Schema/?p=24', 0, 'post', '', 0),
(25, 1, '2020-07-02 06:46:12', '2020-07-02 06:46:12', '', 'MixPannel', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2020-07-02 06:46:12', '2020-07-02 06:46:12', '', 24, 'http://localhost/Schema/2020/07/02/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-07-02 06:46:26', '2020-07-02 06:46:26', '', 'Khan Academy', '', 'publish', 'open', 'open', '', 'khan-academy', '', '', '2020-07-03 03:09:27', '2020-07-03 03:09:27', '', 0, 'http://localhost/Schema/?p=26', 0, 'post', '', 0),
(27, 1, '2020-07-02 06:46:26', '2020-07-02 06:46:26', '', 'Khan Academy', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-07-02 06:46:26', '2020-07-02 06:46:26', '', 26, 'http://localhost/Schema/2020/07/02/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-07-02 06:59:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-07-02 06:59:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?post_type=testimonials&p=28', 0, 'testimonials', '', 0),
(29, 1, '2020-07-02 07:12:21', '2020-07-02 07:12:21', '', 'Content Marketing & SEO Done Right', 'Learn how B2B and SaaS companies improve their marketing ROI through the evidence-based approach to SEO and content marketing.', 'publish', 'open', 'closed', '', 'content-marketing-seo-done-right', '', '', '2020-07-02 07:12:21', '2020-07-02 07:12:21', '', 0, 'http://localhost/Schema/?post_type=home_banner&#038;p=29', 0, 'home_banner', '', 0),
(30, 1, '2020-07-02 07:06:26', '2020-07-02 07:06:26', '', 'Content Marketing & SEO Done Right', 'Learn how B2B and SaaS companies improve their marketing ROI through the evidence-based approach to SEO and content marketing.', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-07-02 07:06:26', '2020-07-02 07:06:26', '', 9, 'http://localhost/Schema/2020/07/02/9-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-07-02 07:07:25', '2020-07-02 07:07:25', '', '', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2020-07-02 07:07:25', '2020-07-02 07:07:25', '', 10, 'http://localhost/Schema/2020/07/02/10-autosave-v1/', 0, 'revision', '', 0),
(32, 1, '2020-07-02 07:12:21', '2020-07-02 07:12:21', '', 'Content Marketing & SEO Done Right', 'Learn how B2B and SaaS companies improve their marketing ROI through the evidence-based approach to SEO and content marketing.', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-07-02 07:12:21', '2020-07-02 07:12:21', '', 29, 'http://localhost/Schema/2020/07/02/29-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-07-02 07:50:13', '2020-07-02 07:50:13', 'Yes, I know my stuff! And throughout our coaching time, you will develop the tools and confidence to take action. My way of coaching is to empower you in becoming the Leader you want to be. You are unique and so your coaching should be too. I don’t follow a template, or ‘one size fits all’. We start where you are & we work towards your goals. If you want a business that generates you income while also positively contributing to others, then you have arrived at the right place!\r\n\r\nWhether you have an existing business, or you’ve an idea that you want to bring to life, there is a way to create a positive triple bottom-line company: profit-people-planet all winning. No longer are these areas mutually exclusive, you can have it all and do good at the same time!', 'Hi, I\'m Raushan.', '', 'publish', 'open', 'closed', '', 'hi-im-raushan', '', '', '2020-07-02 07:50:13', '2020-07-02 07:50:13', '', 0, 'http://localhost/Schema/?post_type=testimonials&#038;p=33', 0, 'testimonials', '', 0),
(34, 1, '2020-07-02 07:50:09', '2020-07-02 07:50:09', '', 'about-img', '', 'inherit', 'open', 'closed', '', 'about-img', '', '', '2020-07-02 07:50:09', '2020-07-02 07:50:09', '', 33, 'http://localhost/Schema/wp-content/uploads/2020/07/about-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2020-07-02 07:50:13', '2020-07-02 07:50:13', 'Yes, I know my stuff! And throughout our coaching time, you will develop the tools and confidence to take action. My way of coaching is to empower you in becoming the Leader you want to be. You are unique and so your coaching should be too. I don’t follow a template, or ‘one size fits all’. We start where you are & we work towards your goals. If you want a business that generates you income while also positively contributing to others, then you have arrived at the right place!\r\n\r\nWhether you have an existing business, or you’ve an idea that you want to bring to life, there is a way to create a positive triple bottom-line company: profit-people-planet all winning. No longer are these areas mutually exclusive, you can have it all and do good at the same time!', 'Hi, I\'m Raushan.', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-07-02 07:50:13', '2020-07-02 07:50:13', '', 33, 'http://localhost/Schema/2020/07/02/33-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-07-02 08:00:10', '2020-07-02 08:00:10', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-07-02 08:06:23', '2020-07-02 08:06:23', '', 0, 'http://localhost/Schema/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2020-07-02 07:58:06', '2020-07-02 07:58:06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur consequat lectus tellus, at pulvinar neque auctor eget. Donec suscipit ultrices malesuada. Nulla ultricies purus libero, quis tincidunt sem molestie id. Sed vestibulum, dui vitae feugiat pretium, leo nisi scelerisque tortor, vitae condimentum arcu elit quis libero. Phasellus a libero volutpat, pulvinar velit sed, semper ante. Nunc vehicula augue magna, at euismod purus tristique sed. Vestibulum fermentum rutrum placerat. Vivamus vulputate magna id volutpat maximus. Donec at quam est. Duis porttitor at ante a condimentum.\r\n\r\nDonec luctus nisl at fringilla aliquam. Maecenas molestie egestas arcu at pellentesque. Phasellus congue rutrum justo non sodales. Nunc blandit nulla sed nulla efficitur, vel pellentesque libero feugiat. Aliquam erat volutpat. Etiam vitae enim a massa sodales varius sit amet sit amet tortor. Ut dolor urna, scelerisque a pulvinar vel, efficitur nec nibh. Donec venenatis ipsum non tellus gravida varius. Donec mollis ac metus at consectetur. Integer sed rhoncus lectus. Nulla placerat velit lorem, vel varius lectus aliquet quis.\r\n\r\nEtiam eget vehicula odio, eu ultrices urna. Mauris id ante eget est tincidunt lobortis sodales at massa. Pellentesque at purus eleifend, faucibus neque sed, euismod justo. Fusce bibendum mi vitae turpis vestibulum, at viverra odio tempor. Aliquam vel interdum ex, non iaculis risus. Vestibulum at bibendum elit, tristique dictum nisl. Proin sit amet rutrum elit. Morbi at ornare nulla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam egestas pulvinar ligula vitae sodales.', 'About', 'All seven continents by 30, I wrote. I wanted to be the person that could say that. On December 16th...', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-07-03 07:19:31', '2020-07-03 07:19:31', '', 0, 'http://localhost/Schema/?page_id=37', 0, 'page', '', 0),
(38, 1, '2020-07-02 07:58:06', '2020-07-02 07:58:06', '', 'About', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-07-02 07:58:06', '2020-07-02 07:58:06', '', 37, 'http://localhost/Schema/2020/07/02/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-07-02 08:00:56', '2020-07-02 08:00:56', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2020-07-02 08:06:23', '2020-07-02 08:06:23', '', 0, 'http://localhost/Schema/?p=39', 3, 'nav_menu_item', '', 0),
(40, 1, '2020-07-02 08:00:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-02 08:00:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?p=40', 0, 'post', '', 0),
(41, 1, '2020-07-02 08:01:29', '2020-07-02 08:01:29', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2020-07-02 08:06:23', '2020-07-02 08:06:23', '', 0, 'http://localhost/Schema/?p=41', 9, 'nav_menu_item', '', 0),
(42, 1, '2020-07-02 08:01:24', '2020-07-02 08:01:24', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-07-02 08:01:24', '2020-07-02 08:01:24', '', 0, 'http://localhost/Schema/?page_id=42', 0, 'page', '', 0),
(43, 1, '2020-07-02 08:01:24', '2020-07-02 08:01:24', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-07-02 08:01:24', '2020-07-02 08:01:24', '', 42, 'http://localhost/Schema/2020/07/02/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-07-02 08:02:38', '2020-07-02 08:02:38', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2020-07-02 08:06:23', '2020-07-02 08:06:23', '', 0, 'http://localhost/Schema/?p=44', 10, 'nav_menu_item', '', 0),
(45, 1, '2020-07-02 08:02:37', '2020-07-02 08:02:37', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-07-02 08:06:23', '2020-07-02 08:06:23', '', 0, 'http://localhost/Schema/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2020-07-02 08:02:37', '2020-07-02 08:02:37', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2020-07-02 08:06:23', '2020-07-02 08:06:23', '', 0, 'http://localhost/Schema/?p=46', 4, 'nav_menu_item', '', 0),
(47, 1, '2020-07-02 08:02:38', '2020-07-02 08:02:38', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2020-07-02 08:06:23', '2020-07-02 08:06:23', '', 0, 'http://localhost/Schema/?p=47', 5, 'nav_menu_item', '', 0),
(48, 1, '2020-07-02 08:02:38', '2020-07-02 08:02:38', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2020-07-02 08:06:23', '2020-07-02 08:06:23', '', 0, 'http://localhost/Schema/?p=48', 8, 'nav_menu_item', '', 0),
(49, 1, '2020-07-02 08:02:38', '2020-07-02 08:02:38', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2020-07-02 08:06:23', '2020-07-02 08:06:23', '', 0, 'http://localhost/Schema/?p=49', 6, 'nav_menu_item', '', 0),
(50, 1, '2020-07-02 08:02:38', '2020-07-02 08:02:38', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-07-02 08:06:23', '2020-07-02 08:06:23', '', 0, 'http://localhost/Schema/?p=50', 7, 'nav_menu_item', '', 0),
(51, 1, '2020-07-02 08:18:51', '2020-07-02 08:18:51', '', 'Amazone', '', 'publish', 'open', 'closed', '', 'amazone', '', '', '2020-07-02 08:19:33', '2020-07-02 08:19:33', '', 0, 'http://localhost/Schema/?post_type=partners&#038;p=51', 0, 'partners', '', 0),
(52, 1, '2020-07-02 08:17:03', '2020-07-02 08:17:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"partners\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Partners Extra Field', 'partners-extra-field', 'publish', 'closed', 'closed', '', 'group_5efd97bb85e85', '', '', '2020-07-02 08:19:11', '2020-07-02 08:19:11', '', 0, 'http://localhost/Schema/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2020-07-02 08:17:03', '2020-07-02 08:17:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Partner Image', 'partner_image', 'publish', 'closed', 'closed', '', 'field_5efd97cbcd4bf', '', '', '2020-07-02 08:17:03', '2020-07-02 08:17:03', '', 52, 'http://localhost/Schema/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(54, 1, '2020-07-02 08:18:51', '2020-07-02 08:18:51', '', 'Amazone', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-07-02 08:18:51', '2020-07-02 08:18:51', '', 51, 'http://localhost/Schema/2020/07/02/51-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-07-02 08:19:30', '2020-07-02 08:19:30', '', 'amazon', '', 'inherit', 'open', 'closed', '', 'amazon', '', '', '2020-07-02 08:19:30', '2020-07-02 08:19:30', '', 51, 'http://localhost/Schema/wp-content/uploads/2020/07/amazon.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2020-07-02 08:19:33', '2020-07-02 08:19:33', '', 'Amazone', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-07-02 08:19:33', '2020-07-02 08:19:33', '', 51, 'http://localhost/Schema/2020/07/02/51-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-07-02 08:19:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-07-02 08:19:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?post_type=partners&p=57', 0, 'partners', '', 0),
(58, 1, '2020-07-02 08:19:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-07-02 08:19:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?post_type=partners&p=58', 0, 'partners', '', 0),
(59, 1, '2020-07-02 08:19:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-07-02 08:19:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?post_type=partners&p=59', 0, 'partners', '', 0),
(60, 1, '2020-07-02 08:19:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-07-02 08:19:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?post_type=partners&p=60', 0, 'partners', '', 0),
(61, 1, '2020-07-02 08:19:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-07-02 08:19:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?post_type=partners&p=61', 0, 'partners', '', 0),
(62, 1, '2020-07-02 08:19:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-07-02 08:19:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?post_type=partners&p=62', 0, 'partners', '', 0),
(63, 1, '2020-07-02 08:20:27', '2020-07-02 08:20:27', '', 'Deviant Art', '', 'publish', 'open', 'closed', '', 'deviant-art', '', '', '2020-07-02 08:23:46', '2020-07-02 08:23:46', '', 0, 'http://localhost/Schema/?post_type=partners&#038;p=63', 0, 'partners', '', 0),
(64, 1, '2020-07-02 08:20:27', '2020-07-02 08:20:27', '', 'Deviant Art', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-02 08:20:27', '2020-07-02 08:20:27', '', 63, 'http://localhost/Schema/2020/07/02/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-07-02 08:23:42', '2020-07-02 08:23:42', '', 'deviantart', '', 'inherit', 'open', 'closed', '', 'deviantart', '', '', '2020-07-02 08:23:42', '2020-07-02 08:23:42', '', 63, 'http://localhost/Schema/wp-content/uploads/2020/07/deviantart.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2020-07-02 08:23:46', '2020-07-02 08:23:46', '', 'Deviant Art', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-02 08:23:46', '2020-07-02 08:23:46', '', 63, 'http://localhost/Schema/2020/07/02/63-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-07-02 08:24:42', '2020-07-02 08:24:42', '', 'MixPannel', '', 'publish', 'open', 'closed', '', 'mixpannel', '', '', '2020-07-02 08:24:42', '2020-07-02 08:24:42', '', 0, 'http://localhost/Schema/?post_type=partners&#038;p=67', 0, 'partners', '', 0),
(68, 1, '2020-07-02 08:24:38', '2020-07-02 08:24:38', '', 'mixpanel', '', 'inherit', 'open', 'closed', '', 'mixpanel', '', '', '2020-07-02 08:24:38', '2020-07-02 08:24:38', '', 67, 'http://localhost/Schema/wp-content/uploads/2020/07/mixpanel.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2020-07-02 08:24:42', '2020-07-02 08:24:42', '', 'MixPannel', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-07-02 08:24:42', '2020-07-02 08:24:42', '', 67, 'http://localhost/Schema/2020/07/02/67-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-07-02 08:25:35', '2020-07-02 08:25:35', '', 'Khan Academy', '', 'publish', 'open', 'closed', '', 'khan-academy', '', '', '2020-07-02 08:25:35', '2020-07-02 08:25:35', '', 0, 'http://localhost/Schema/?post_type=partners&#038;p=70', 0, 'partners', '', 0),
(71, 1, '2020-07-02 08:25:32', '2020-07-02 08:25:32', '', 'khan_academy', '', 'inherit', 'open', 'closed', '', 'khan_academy', '', '', '2020-07-02 08:25:32', '2020-07-02 08:25:32', '', 70, 'http://localhost/Schema/wp-content/uploads/2020/07/khan_academy.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2020-07-02 08:25:35', '2020-07-02 08:25:35', '', 'Khan Academy', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2020-07-02 08:25:35', '2020-07-02 08:25:35', '', 70, 'http://localhost/Schema/2020/07/02/70-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-07-02 08:26:09', '2020-07-02 08:26:09', '', 'Get Satisfaction', '', 'publish', 'open', 'closed', '', 'get-satisfaction', '', '', '2020-07-02 08:26:09', '2020-07-02 08:26:09', '', 0, 'http://localhost/Schema/?post_type=partners&#038;p=73', 0, 'partners', '', 0),
(74, 1, '2020-07-02 08:26:06', '2020-07-02 08:26:06', '', 'get-satisfaction', '', 'inherit', 'open', 'closed', '', 'get-satisfaction', '', '', '2020-07-02 08:26:06', '2020-07-02 08:26:06', '', 73, 'http://localhost/Schema/wp-content/uploads/2020/07/get-satisfaction.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2020-07-02 08:26:09', '2020-07-02 08:26:09', '', 'Get Satisfaction', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2020-07-02 08:26:09', '2020-07-02 08:26:09', '', 73, 'http://localhost/Schema/2020/07/02/73-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-07-02 08:26:58', '2020-07-02 08:26:58', '', 'Dashlane', '', 'publish', 'open', 'closed', '', 'dashlane', '', '', '2020-07-02 08:26:58', '2020-07-02 08:26:58', '', 0, 'http://localhost/Schema/?post_type=partners&#038;p=76', 0, 'partners', '', 0),
(77, 1, '2020-07-02 08:26:54', '2020-07-02 08:26:54', '', 'dashlane', '', 'inherit', 'open', 'closed', '', 'dashlane', '', '', '2020-07-02 08:26:54', '2020-07-02 08:26:54', '', 76, 'http://localhost/Schema/wp-content/uploads/2020/07/dashlane.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2020-07-02 08:26:58', '2020-07-02 08:26:58', '', 'Dashlane', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-07-02 08:26:58', '2020-07-02 08:26:58', '', 76, 'http://localhost/Schema/2020/07/02/76-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-07-02 08:41:34', '2020-07-02 08:41:34', '', 'Keep Management   Clients Informed', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.', 'publish', 'open', 'closed', '', 'keep-management-clients-informed', '', '', '2020-07-02 08:41:55', '2020-07-02 08:41:55', '', 0, 'http://localhost/Schema/?post_type=get_help&#038;p=79', 0, 'get_help', '', 0),
(80, 1, '2020-07-02 08:41:27', '2020-07-02 08:41:27', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"get_help\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Get Help Extra Field', 'get-help-extra-field', 'publish', 'closed', 'closed', '', 'group_5efd9d94ed78f', '', '', '2020-07-02 08:41:27', '2020-07-02 08:41:27', '', 0, 'http://localhost/Schema/?post_type=acf-field-group&#038;p=80', 0, 'acf-field-group', '', 0),
(81, 1, '2020-07-02 08:41:27', '2020-07-02 08:41:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Get Help Icon', 'get_help_icon', 'publish', 'closed', 'closed', '', 'field_5efd9da1ee64f', '', '', '2020-07-02 08:41:27', '2020-07-02 08:41:27', '', 80, 'http://localhost/Schema/?post_type=acf-field&p=81', 0, 'acf-field', '', 0),
(82, 1, '2020-07-02 08:41:34', '2020-07-02 08:41:34', '', 'Keep Management   Clients Informed', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2020-07-02 08:41:34', '2020-07-02 08:41:34', '', 79, 'http://localhost/Schema/2020/07/02/79-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-07-02 08:41:51', '2020-07-02 08:41:51', '', 'collaboration', '', 'inherit', 'open', 'closed', '', 'collaboration', '', '', '2020-07-02 08:41:51', '2020-07-02 08:41:51', '', 79, 'http://localhost/Schema/wp-content/uploads/2020/07/collaboration.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2020-07-02 08:41:55', '2020-07-02 08:41:55', '', 'Keep Management   Clients Informed', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2020-07-02 08:41:55', '2020-07-02 08:41:55', '', 79, 'http://localhost/Schema/2020/07/02/79-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-07-02 08:42:43', '2020-07-02 08:42:43', '', 'Boost Revenue Opportunities', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.\r\n\r\n', 'publish', 'open', 'closed', '', 'boost-revenue-opportunities', '', '', '2020-07-02 08:42:43', '2020-07-02 08:42:43', '', 0, 'http://localhost/Schema/?post_type=get_help&#038;p=85', 0, 'get_help', '', 0),
(86, 1, '2020-07-02 08:42:39', '2020-07-02 08:42:39', '', 'money-bag', '', 'inherit', 'open', 'closed', '', 'money-bag', '', '', '2020-07-02 08:42:39', '2020-07-02 08:42:39', '', 85, 'http://localhost/Schema/wp-content/uploads/2020/07/money-bag.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2020-07-02 08:42:43', '2020-07-02 08:42:43', '', 'Boost Revenue Opportunities', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.\r\n\r\n', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2020-07-02 08:42:43', '2020-07-02 08:42:43', '', 85, 'http://localhost/Schema/2020/07/02/85-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-07-02 08:44:06', '2020-07-02 08:44:06', '', 'Improve Operational Efficiencies', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.', 'publish', 'open', 'closed', '', 'improve-operational-efficiencies', '', '', '2020-07-02 08:44:06', '2020-07-02 08:44:06', '', 0, 'http://localhost/Schema/?post_type=get_help&#038;p=88', 0, 'get_help', '', 0),
(89, 1, '2020-07-02 08:44:02', '2020-07-02 08:44:02', '', 'growth', '', 'inherit', 'open', 'closed', '', 'growth', '', '', '2020-07-02 08:44:02', '2020-07-02 08:44:02', '', 88, 'http://localhost/Schema/wp-content/uploads/2020/07/growth.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2020-07-02 08:44:06', '2020-07-02 08:44:06', '', 'Improve Operational Efficiencies', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2020-07-02 08:44:06', '2020-07-02 08:44:06', '', 88, 'http://localhost/Schema/2020/07/02/88-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-07-02 08:44:40', '2020-07-02 08:44:40', '', 'Manage Projects from Start to Finish', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.', 'publish', 'open', 'closed', '', 'manage-projects-from-start-to-finish', '', '', '2020-07-02 08:53:07', '2020-07-02 08:53:07', '', 0, 'http://localhost/Schema/?post_type=get_help&#038;p=91', 0, 'get_help', '', 0),
(92, 1, '2020-07-02 08:44:36', '2020-07-02 08:44:36', '', 'focus', '', 'inherit', 'open', 'closed', '', 'focus', '', '', '2020-07-02 08:44:36', '2020-07-02 08:44:36', '', 91, 'http://localhost/Schema/wp-content/uploads/2020/07/focus.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2020-07-02 08:44:40', '2020-07-02 08:44:40', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.\r\n', 'Manage Projects from Start to Finish', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2020-07-02 08:44:40', '2020-07-02 08:44:40', '', 91, 'http://localhost/Schema/2020/07/02/91-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-07-02 08:44:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-07-02 08:44:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?post_type=get_help&p=94', 0, 'get_help', '', 0),
(95, 1, '2020-07-02 08:44:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-07-02 08:44:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?post_type=get_help&p=95', 0, 'get_help', '', 0),
(96, 1, '2020-07-02 08:45:19', '2020-07-02 08:45:19', '', 'Improve Communication', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.', 'publish', 'open', 'closed', '', 'improve-communication', '', '', '2020-07-02 08:52:48', '2020-07-02 08:52:48', '', 0, 'http://localhost/Schema/?post_type=get_help&#038;p=96', 0, 'get_help', '', 0),
(97, 1, '2020-07-02 08:45:16', '2020-07-02 08:45:16', '', 'discussion', '', 'inherit', 'open', 'closed', '', 'discussion', '', '', '2020-07-02 08:45:16', '2020-07-02 08:45:16', '', 96, 'http://localhost/Schema/wp-content/uploads/2020/07/discussion.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2020-07-02 08:45:19', '2020-07-02 08:45:19', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.', 'Improve Communication', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-07-02 08:45:19', '2020-07-02 08:45:19', '', 96, 'http://localhost/Schema/2020/07/02/96-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2020-07-02 08:49:44', '2020-07-02 08:49:44', '', 'Generate Better Plans', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.', 'publish', 'open', 'closed', '', 'generate-better-plans', '', '', '2020-07-02 08:52:33', '2020-07-02 08:52:33', '', 0, 'http://localhost/Schema/?post_type=get_help&#038;p=99', 0, 'get_help', '', 0),
(102, 1, '2020-07-02 08:49:32', '2020-07-02 08:49:32', '', 'anroid (1)', '', 'inherit', 'open', 'closed', '', 'anroid-1', '', '', '2020-07-02 08:49:32', '2020-07-02 08:49:32', '', 99, 'http://localhost/Schema/wp-content/uploads/2020/07/anroid-1.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2020-07-02 08:49:44', '2020-07-02 08:49:44', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.', 'Generate Better Plans', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2020-07-02 08:49:44', '2020-07-02 08:49:44', '', 99, 'http://localhost/Schema/2020/07/02/99-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2020-07-02 08:52:33', '2020-07-02 08:52:33', '', 'Generate Better Plans', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2020-07-02 08:52:33', '2020-07-02 08:52:33', '', 99, 'http://localhost/Schema/2020/07/02/99-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2020-07-02 08:52:48', '2020-07-02 08:52:48', '', 'Improve Communication', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-07-02 08:52:48', '2020-07-02 08:52:48', '', 96, 'http://localhost/Schema/2020/07/02/96-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2020-07-02 08:53:07', '2020-07-02 08:53:07', '', 'Manage Projects from Start to Finish', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when.', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2020-07-02 08:53:07', '2020-07-02 08:53:07', '', 91, 'http://localhost/Schema/2020/07/02/91-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-07-02 09:49:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-02 09:49:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?p=107', 0, 'post', '', 0),
(108, 1, '2020-07-02 09:49:25', '2020-07-02 09:49:25', '', 'New Facebook Feature Helps Protect User Data', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', 'new-facebook-feature-helps-protect-user-data', '', '', '2020-07-03 03:09:12', '2020-07-03 03:09:12', '', 0, 'http://localhost/Schema/?p=108', 0, 'post', '', 0),
(109, 1, '2020-07-02 09:49:25', '2020-07-02 09:49:25', '', 'New Facebook Feature Helps Protect User Data', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2020-07-02 09:49:25', '2020-07-02 09:49:25', '', 108, 'http://localhost/Schema/2020/07/02/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2020-07-02 09:49:45', '2020-07-02 09:49:45', '', 'MIT Develops Technology to Digitally Program Water Droplets', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', 'mit-develops-technology-to-digitally-program-water-droplets', '', '', '2020-07-03 03:08:55', '2020-07-03 03:08:55', '', 0, 'http://localhost/Schema/?p=110', 0, 'post', '', 0),
(111, 1, '2020-07-02 09:49:45', '2020-07-02 09:49:45', '', 'MIT Develops Technology to Digitally Program Water Droplets', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2020-07-02 09:49:45', '2020-07-02 09:49:45', '', 110, 'http://localhost/Schema/2020/07/02/110-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(112, 1, '2020-07-02 09:50:18', '2020-07-02 09:50:18', '', '7 Off-Duty Outfits That Will Reinvent Your Spring Wardrobe', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', '7-off-duty-outfits-that-will-reinvent-your-spring-wardrobe', '', '', '2020-07-03 03:08:41', '2020-07-03 03:08:41', '', 0, 'http://localhost/Schema/?p=112', 0, 'post', '', 0),
(113, 1, '2020-07-02 09:50:18', '2020-07-02 09:50:18', '', '7 Off-Duty Outfits That Will Reinvent Your Spring Wardrobe', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2020-07-02 09:50:18', '2020-07-02 09:50:18', '', 112, 'http://localhost/Schema/2020/07/02/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2020-07-02 09:50:46', '2020-07-02 09:50:46', '', 'Tesla Ramps Up Model 3 Production and Predicts Profitability', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', 'tesla-ramps-up-model-3-production-and-predicts-profitability', '', '', '2020-07-03 03:08:31', '2020-07-03 03:08:31', '', 0, 'http://localhost/Schema/?p=114', 0, 'post', '', 0),
(115, 1, '2020-07-02 09:50:46', '2020-07-02 09:50:46', '', 'Tesla Ramps Up Model 3 Production and Predicts Profitability', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2020-07-02 09:50:46', '2020-07-02 09:50:46', '', 114, 'http://localhost/Schema/2020/07/02/114-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2020-07-02 09:51:08', '2020-07-02 09:51:08', '', 'This Start-Up Will Actually Downsize Your Closet', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', 'this-start-up-will-actually-downsize-your-closet', '', '', '2020-07-03 03:08:08', '2020-07-03 03:08:08', '', 0, 'http://localhost/Schema/?p=116', 0, 'post', '', 0),
(117, 1, '2020-07-02 09:51:08', '2020-07-02 09:51:08', '', 'This Start-Up Will Actually Downsize Your Closet', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2020-07-02 09:51:08', '2020-07-02 09:51:08', '', 116, 'http://localhost/Schema/2020/07/02/116-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2020-07-02 09:53:45', '2020-07-02 09:53:45', '', 'This Start-Up Will Actually Downsize Your Closet', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', 'this-start-up-will-actually-downsize-your-closet-2', '', '', '2020-07-03 03:07:59', '2020-07-03 03:07:59', '', 0, 'http://localhost/Schema/?p=119', 0, 'post', '', 0),
(120, 1, '2020-07-02 09:53:53', '2020-07-02 09:53:53', '', 'Tesla Ramps Up Model 3 Production and Predicts Profitability', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', 'tesla-ramps-up-model-3-production-and-predicts-profitability-2', '', '', '2020-07-03 03:07:28', '2020-07-03 03:07:28', '', 0, 'http://localhost/Schema/?p=120', 0, 'post', '', 0),
(121, 1, '2020-07-02 09:54:13', '2020-07-02 09:54:13', '', '7 Off-Duty Outfits That Will Reinvent Your Spring Wardrobe', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', '7-off-duty-outfits-that-will-reinvent-your-spring-wardrobe-2', '', '', '2020-07-03 03:05:37', '2020-07-03 03:05:37', '', 0, 'http://localhost/Schema/?p=121', 0, 'post', '', 0),
(122, 1, '2020-07-02 09:54:02', '2020-07-02 09:54:02', '', 'MIT Develops Technology to Digitally Program Water Droplets', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', 'mit-develops-technology-to-digitally-program-water-droplets-2', '', '', '2020-07-03 03:06:42', '2020-07-03 03:06:42', '', 0, 'http://localhost/Schema/?p=122', 0, 'post', '', 0),
(123, 1, '2020-07-02 09:53:59', '2020-07-02 09:53:59', '', 'New Facebook Feature Helps Protect User Data', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', 'new-facebook-feature-helps-protect-user-data-2', '', '', '2020-07-03 03:06:57', '2020-07-03 03:06:57', '', 0, 'http://localhost/Schema/?p=123', 0, 'post', '', 0),
(124, 1, '2020-07-02 09:54:05', '2020-07-02 09:54:05', '', 'MIT Develops Technology to Digitally Program Water Droplets', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', 'mit-develops-technology-to-digitally-program-water-droplets-3', '', '', '2020-07-03 03:06:31', '2020-07-03 03:06:31', '', 0, 'http://localhost/Schema/?p=124', 0, 'post', '', 0),
(125, 1, '2020-07-02 09:53:55', '2020-07-02 09:53:55', '', 'Tesla Ramps Up Model 3 Production and Predicts Profitability', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', 'tesla-ramps-up-model-3-production-and-predicts-profitability-3', '', '', '2020-07-03 03:07:09', '2020-07-03 03:07:09', '', 0, 'http://localhost/Schema/?p=125', 0, 'post', '', 0),
(126, 1, '2020-07-02 09:54:07', '2020-07-02 09:54:07', '', 'MIT Develops Technology to Digitally Program Water Droplets', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', 'mit-develops-technology-to-digitally-program-water-droplets-4', '', '', '2020-07-03 03:06:17', '2020-07-03 03:06:17', '', 0, 'http://localhost/Schema/?p=126', 0, 'post', '', 0),
(127, 1, '2020-07-02 09:53:50', '2020-07-02 09:53:50', '', 'This Start-Up Will Actually Downsize Your Closet', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', 'this-start-up-will-actually-downsize-your-closet-3', '', '', '2020-07-03 03:07:50', '2020-07-03 03:07:50', '', 0, 'http://localhost/Schema/?p=127', 0, 'post', '', 0),
(128, 1, '2020-07-02 09:54:15', '2020-07-02 09:54:15', '', '7 Off-Duty Outfits That Will Reinvent Your Spring Wardrobe', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', '7-off-duty-outfits-that-will-reinvent-your-spring-wardrobe-3', '', '', '2020-07-03 03:05:28', '2020-07-03 03:05:28', '', 0, 'http://localhost/Schema/?p=128', 0, 'post', '', 0),
(129, 1, '2020-07-02 09:54:17', '2020-07-02 09:54:17', '', '7 Off-Duty Outfits That Will Reinvent Your Spring Wardrobe', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', '7-off-duty-outfits-that-will-reinvent-your-spring-wardrobe-4', '', '', '2020-07-03 03:05:18', '2020-07-03 03:05:18', '', 0, 'http://localhost/Schema/?p=129', 0, 'post', '', 0),
(130, 1, '2020-07-02 09:54:11', '2020-07-02 09:54:11', '', 'MIT Develops Technology to Digitally Program Water Droplets', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', 'mit-develops-technology-to-digitally-program-water-droplets-5', '', '', '2020-07-03 03:06:03', '2020-07-03 03:06:03', '', 0, 'http://localhost/Schema/?p=130', 0, 'post', '', 0),
(131, 1, '2020-07-02 09:54:19', '2020-07-02 09:54:19', '', '7 Off-Duty Outfits That Will Reinvent Your Spring Wardrobe', 'Use adwvanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'publish', 'open', 'open', '', '7-off-duty-outfits-that-will-reinvent-your-spring-wardrobe-5', '', '', '2020-07-02 12:36:57', '2020-07-02 12:36:57', '', 0, 'http://localhost/Schema/?p=131', 0, 'post', '', 0),
(132, 1, '2020-07-02 09:53:45', '2020-07-02 09:53:45', '', 'This Start-Up Will Actually Downsize Your Closet', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2020-07-02 09:53:45', '2020-07-02 09:53:45', '', 119, 'http://localhost/Schema/2020/07/02/119-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2020-07-02 09:53:50', '2020-07-02 09:53:50', '', 'This Start-Up Will Actually Downsize Your Closet', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2020-07-02 09:53:50', '2020-07-02 09:53:50', '', 127, 'http://localhost/Schema/2020/07/02/127-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2020-07-02 09:53:53', '2020-07-02 09:53:53', '', 'Tesla Ramps Up Model 3 Production and Predicts Profitability', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2020-07-02 09:53:53', '2020-07-02 09:53:53', '', 120, 'http://localhost/Schema/2020/07/02/120-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2020-07-02 09:53:55', '2020-07-02 09:53:55', '', 'Tesla Ramps Up Model 3 Production and Predicts Profitability', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2020-07-02 09:53:55', '2020-07-02 09:53:55', '', 125, 'http://localhost/Schema/2020/07/02/125-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2020-07-02 09:53:59', '2020-07-02 09:53:59', '', 'New Facebook Feature Helps Protect User Data', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2020-07-02 09:53:59', '2020-07-02 09:53:59', '', 123, 'http://localhost/Schema/2020/07/02/123-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2020-07-02 09:54:02', '2020-07-02 09:54:02', '', 'MIT Develops Technology to Digitally Program Water Droplets', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2020-07-02 09:54:02', '2020-07-02 09:54:02', '', 122, 'http://localhost/Schema/2020/07/02/122-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2020-07-02 09:54:05', '2020-07-02 09:54:05', '', 'MIT Develops Technology to Digitally Program Water Droplets', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2020-07-02 09:54:05', '2020-07-02 09:54:05', '', 124, 'http://localhost/Schema/2020/07/02/124-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2020-07-02 09:54:07', '2020-07-02 09:54:07', '', 'MIT Develops Technology to Digitally Program Water Droplets', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2020-07-02 09:54:07', '2020-07-02 09:54:07', '', 126, 'http://localhost/Schema/2020/07/02/126-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2020-07-02 09:54:11', '2020-07-02 09:54:11', '', 'MIT Develops Technology to Digitally Program Water Droplets', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2020-07-02 09:54:11', '2020-07-02 09:54:11', '', 130, 'http://localhost/Schema/2020/07/02/130-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2020-07-02 09:54:13', '2020-07-02 09:54:13', '', '7 Off-Duty Outfits That Will Reinvent Your Spring Wardrobe', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2020-07-02 09:54:13', '2020-07-02 09:54:13', '', 121, 'http://localhost/Schema/2020/07/02/121-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2020-07-02 09:54:15', '2020-07-02 09:54:15', '', '7 Off-Duty Outfits That Will Reinvent Your Spring Wardrobe', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2020-07-02 09:54:15', '2020-07-02 09:54:15', '', 128, 'http://localhost/Schema/2020/07/02/128-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2020-07-02 09:54:17', '2020-07-02 09:54:17', '', '7 Off-Duty Outfits That Will Reinvent Your Spring Wardrobe', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2020-07-02 09:54:17', '2020-07-02 09:54:17', '', 129, 'http://localhost/Schema/2020/07/02/129-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2020-07-02 09:54:19', '2020-07-02 09:54:19', '', '7 Off-Duty Outfits That Will Reinvent Your Spring Wardrobe', 'Use advanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2020-07-02 09:54:19', '2020-07-02 09:54:19', '', 131, 'http://localhost/Schema/2020/07/02/131-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2020-07-02 09:56:04', '2020-07-02 09:56:04', '', 'blog-img1', '', 'inherit', 'open', 'closed', '', 'blog-img1', '', '', '2020-07-02 09:56:04', '2020-07-02 09:56:04', '', 131, 'http://localhost/Schema/wp-content/uploads/2020/07/blog-img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2020-07-02 09:56:07', '2020-07-02 09:56:07', '', 'blog-img3', '', 'inherit', 'open', 'closed', '', 'blog-img3', '', '', '2020-07-02 09:56:07', '2020-07-02 09:56:07', '', 131, 'http://localhost/Schema/wp-content/uploads/2020/07/blog-img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2020-07-02 09:56:09', '2020-07-02 09:56:09', '', 'blog-img4', '', 'inherit', 'open', 'closed', '', 'blog-img4', '', '', '2020-07-02 09:56:09', '2020-07-02 09:56:09', '', 131, 'http://localhost/Schema/wp-content/uploads/2020/07/blog-img4.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2020-07-02 09:56:28', '2020-07-02 09:56:28', '', 'blog-img2', '', 'inherit', 'open', 'closed', '', 'blog-img2', '', '', '2020-07-02 09:56:28', '2020-07-02 09:56:28', '', 131, 'http://localhost/Schema/wp-content/uploads/2020/07/blog-img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2020-07-02 09:56:48', '2020-07-02 09:56:48', '', 'blog-img5', '', 'inherit', 'open', 'closed', '', 'blog-img5', '', '', '2020-07-02 09:56:48', '2020-07-02 09:56:48', '', 131, 'http://localhost/Schema/wp-content/uploads/2020/07/blog-img5.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2020-07-02 09:56:53', '2020-07-02 09:56:53', '', '7 Off-Duty Outfits That Will Reinvent Your Spring Wardrobe', 'Use adwvanced Task Management tools, Gantt Charts or Kanban Boards to create accurate plans and schedules, so each member of your team knows exactly what to do and when...', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2020-07-02 09:56:53', '2020-07-02 09:56:53', '', 131, 'http://localhost/Schema/2020/07/02/131-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2020-07-02 11:07:10', '2020-07-02 11:07:10', '', 'About', 'All seven continents by 30, I wrote. I wanted to be the person that could say that. On December 16th...', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-07-02 11:07:10', '2020-07-02 11:07:10', '', 37, 'http://localhost/Schema/2020/07/02/37-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2020-07-02 13:19:41', '2020-07-02 13:19:41', '', 'Test', 'feareqewew', 'trash', 'open', 'open', '', 'test__trashed', '', '', '2020-07-02 14:46:04', '2020-07-02 14:46:04', '', 0, 'http://localhost/Schema/?p=152', 0, 'post', '', 0),
(153, 1, '2020-07-02 13:19:41', '2020-07-02 13:19:41', '', 'Test', 'feareqewew', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2020-07-02 13:19:41', '2020-07-02 13:19:41', '', 152, 'http://localhost/Schema/2020/07/02/152-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2020-07-02 14:09:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-02 14:09:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?post_type=acf-field-group&p=154', 0, 'acf-field-group', '', 0),
(155, 1, '2020-07-02 14:09:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-02 14:09:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?post_type=acf-field-group&p=155', 0, 'acf-field-group', '', 0),
(156, 1, '2020-07-02 14:09:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-02 14:09:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?post_type=acf-field-group&p=156', 0, 'acf-field-group', '', 0),
(157, 1, '2020-07-02 14:09:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-02 14:09:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/Schema/?post_type=acf-field-group&p=157', 0, 'acf-field-group', '', 0),
(158, 1, '2020-07-02 14:10:39', '2020-07-02 14:10:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"current_user\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"logged_in\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Inner Banner Extra Field', 'inner-banner-extra-field', 'publish', 'closed', 'closed', '', 'group_5efdeab64c149', '', '', '2020-07-02 14:11:37', '2020-07-02 14:11:37', '', 0, 'http://localhost/Schema/?post_type=acf-field-group&#038;p=158', 0, 'acf-field-group', '', 0),
(159, 1, '2020-07-02 14:10:39', '2020-07-02 14:10:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Inner Banner Image', 'inner_banner_image', 'publish', 'closed', 'closed', '', 'field_5efdeabf123d1', '', '', '2020-07-02 14:10:39', '2020-07-02 14:10:39', '', 158, 'http://localhost/Schema/?post_type=acf-field&p=159', 0, 'acf-field', '', 0),
(160, 1, '2020-07-02 14:46:57', '2020-07-02 14:46:57', '<label>[email* your-email placeholder \"Email address\"] </label>[submit \"Get Started\"]\r\n<span class=\"form-bottom-text\">*I hate spam as much as you do.</span>\n1\nSchema \"[your-subject]\"\nSchema <wordpress@schema.com>\nanishsangat5@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\nReply-To: [your-email]\n\n\n\n\nSchema \"[your-subject]\"\nSchema <anishsangat5@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\nReply-To: anishsangat5@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Form', '', 'publish', 'closed', 'closed', '', 'form', '', '', '2020-07-03 08:21:28', '2020-07-03 08:21:28', '', 0, 'http://localhost/Schema/?post_type=wpcf7_contact_form&#038;p=160', 0, 'wpcf7_contact_form', '', 0),
(161, 1, '2020-07-03 03:54:41', '2020-07-03 03:54:41', 'Yes, I know my stuff! And throughout our coaching time, you will develop the tools and confidence to take action. My way of coaching is to empower you in becoming the Leader you want to be. You are unique and so your coaching should be too. I don’t follow a template, or ‘one size fits all’. We start where you are & we work towards your goals. If you want a business that generates you income while also positively contributing to others, then you have arrived at the right place!\n\nWhether you have an existing business, or you’ve an idea that you want to bring to life, there is a way to create a positive triple bottom-line company: profit-people-planet all winning. No longer are these areas mutually exclusive, you can have it all and do good at the same time!', 'Hi, I\'m Raushan.', '', 'inherit', 'closed', 'closed', '', '33-autosave-v1', '', '', '2020-07-03 03:54:41', '2020-07-03 03:54:41', '', 33, 'http://localhost/Schema/33-autosave-v1/', 0, 'revision', '', 0),
(162, 1, '2020-07-03 05:19:28', '2020-07-03 05:19:28', '<label>[text* FullName placeholder \"Full Name\"] </label>\r\n\r\n<label>[email* your-email placeholder \"Email\"] </label>\r\n\r\n<label>[text your-subject placeholder \"Phone\"] </label>\r\n\r\n<label>[textarea your-message placeholder \"Comment\"] </label>\r\n\r\n[submit \"Send\"]\n1\n[your-subject]\"\n[FullName] <anishsangat5@gmail.com>\nanishsangat5@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\nReply-To: [your-email]\n\n\n\n\nSchema \"[your-subject]\"\nSchema <anishsangat5@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\nReply-To: anishsangat5@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Us Form', '', 'publish', 'closed', 'closed', '', 'contact-us-form', '', '', '2020-07-03 07:28:42', '2020-07-03 07:28:42', '', 0, 'http://localhost/Schema/?post_type=wpcf7_contact_form&#038;p=162', 0, 'wpcf7_contact_form', '', 0),
(163, 1, '2020-07-03 06:01:53', '2020-07-03 06:01:53', '<label>[text* text-495 placeholder \"Your Name\"]</label><label>[email* email-499 placeholder \"Email Address\"]<label>\r\n\r\n[submit \"Sign Up\"]\n1\nSchema \"[your-subject]\"\nSchema <anishsangat5@gmail.com>\nanishsangat5@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\nReply-To: [your-email]\n\n\n\n\nSchema \"[your-subject]\"\nSchema <anishsangat5@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Schema (http://localhost/Schema)\nReply-To: anishsangat5@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Footer Newsletter', '', 'publish', 'closed', 'closed', '', 'footer-newsletter', '', '', '2020-07-03 06:17:45', '2020-07-03 06:17:45', '', 0, 'http://localhost/Schema/?post_type=wpcf7_contact_form&#038;p=163', 0, 'wpcf7_contact_form', '', 0),
(164, 1, '2020-07-03 07:13:12', '2020-07-03 07:13:12', '<h1>Lorem ipsum dolor sit amet</h1>\nconsectetur adipiscing elit. Etiam non turpis a ipsum tempor commodo vitae sed augue. In et justo in metus iaculis elementum. Nullam in lobortis purus, ut maximus dui. Donec maximus nisl id nibh venenatis luctus sed pellentesque velit. Integer a placerat mi. Pellentesque placerat lacus ipsum, id faucibus eros cursus eu. Sed eget ligula non neque porttitor tempus. Duis eros nisl, sodales quis urna et, volutpat rutrum ex. Phasellus et egestas erat. Nulla velit enim, gravida in ipsum sed, posuere scelerisque tortor. Mauris sodales sed nisl et tincidunt. Curabitur fermentum libero eu eros volutpat, nec condimentum massa tempus.\n\n<ul>\n<li>Cras eu feugiat mauris. Integer venenatis elementum sem, nec congue nisl scelerisque tristique.</li>\n<li>Pellentesque eget rhoncus dui. Quisque tristique est ante, at malesuada nulla efficitur non.</li>\n<li>Aenean egestas luctus ligula, id aliquam est. Vestibulum sed sapien dictum leo molestie</li>\n</ul>\n<ol>\n<li>luctus vel quis nibh. Donec iaculis posuere erat. Etiam pellentesque vehicula metus</li>\n vitae aliquam. Quisque semper sit amet turpis vitae molestie. Aenean efficitur enim in purus venenatis, eu varius nunc lacinia. Nulla pellentesque mauris eu neque tempor, quis fermentum nibh tempor. Vestibulum pellentesque iaculis malesuada. Fusce scelerisque venenatis molestie. Praesent massa lectus, mattis ut porttitor vitae, pretium in nibh. Ut dignissim ipsum sit amet ex dictum vulputate.\n\nNullam congue a est et bibendum. Integer vel nisl in quam placerat semper. Donec semper, ligula ut tempus consectetur, tellus massa lobortis metus, nec ultrices dui ex et diam. Aenean pharetra velit quis tortor efficitur facilisis. Nam metus urna, scelerisque ut sem nec, vehicula interdum ligula. Proin vel augue eu velit ultricies consectetur. Phasellus leo nisl, consectetur sit amet consequat id, tincidunt in eros. Nullam porta massa id cursus viverra.\n\nNunc risus nunc, bibendum ut leo et, ultrices ultrices nisl. Nulla lacinia mauris id urna imperdiet egestas et ac elit. Mauris malesuada congue lectus, nec rhoncus nibh elementum ut. Suspendisse convallis leo sed dictum pretium. Pellentesque finibus elit in leo vulputate, a lacinia mi dictum. Morbi nibh purus, rhoncus vel faucibus commodo, hendrerit at sapien. Sed et justo tortor. Suspendisse mi velit, suscipit et faucibus eu, venenatis at urna. Ut fermentum eros ac lorem hendrerit porta. Vivamus pretium massa a leo mattis pulvinar. Maecenas purus urna, pellentesque id sodales ac, mollis a ex. Cras in erat in ipsum dictum consequat. Quisque pretium, erat ut rutrum finibus, justo ante hendrerit lacus, vel varius quam augue vitae nunc. Nullam scelerisque risus tortor, eget tincidunt libero malesuada in. Sed non nisl quis sem viverra lobortis. Maecenas ut tellus ullamcorper, consectetur quam pulvinar, mattis erat.', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2020-07-03 07:13:12', '2020-07-03 07:13:12', '', 2, 'http://localhost/Schema/2-autosave-v1/', 0, 'revision', '', 0),
(165, 1, '2020-07-03 07:14:24', '2020-07-03 07:14:24', '<h1>Lorem ipsum dolor sit amet</h1>\r\nconsectetur adipiscing elit. Etiam non turpis a ipsum tempor commodo vitae sed augue. In et justo in metus iaculis elementum. Nullam in lobortis purus, ut maximus dui. Donec maximus nisl id nibh venenatis luctus sed pellentesque velit. Integer a placerat mi. Pellentesque placerat lacus ipsum, id faucibus eros cursus eu. Sed eget ligula non neque porttitor tempus. Duis eros nisl, sodales quis urna et, volutpat rutrum ex. Phasellus et egestas erat. Nulla velit enim, gravida in ipsum sed, posuere scelerisque tortor. Mauris sodales sed nisl et tincidunt. Curabitur fermentum libero eu eros volutpat, nec condimentum massa tempus.\r\n\r\n<ul>\r\n<li>Cras eu feugiat mauris. Integer venenatis elementum sem, nec congue nisl scelerisque tristique.</li>\r\n<li>Pellentesque eget rhoncus dui. Quisque tristique est ante, at malesuada nulla efficitur non.</li>\r\n<li>Aenean egestas luctus ligula, id aliquam est. Vestibulum sed sapien dictum leo molestie</li>\r\n</ul>\r\n<ol>\r\n<li>luctus vel quis nibh. Donec iaculis posuere erat. Etiam pellentesque vehicula metus</li>\r\n<li>vitae aliquam. Quisque semper sit amet turpis vitae molestie.</li>\r\n<li>Aenean efficitur enim in purus venenatis, eu varius nunc lacinia.</li>\r\n</ol>\r\n\r\nNulla pellentesque mauris eu neque tempor, quis fermentum nibh tempor. <b>Vestibulum</b> pellentesque iaculis <a href=\"\">malesuada</a>. Fusce scelerisque venenatis molestie. Praesent massa lectus, mattis ut porttitor vitae, pretium in nibh. Ut dignissim ipsum sit amet ex dictum vulputate.\r\n\r\n<h2>Nullam congue a est et bibendum. Integer vel nisl in quam placerat semper.</h2>\r\nDonec semper, ligula ut tempus consectetur, <strong>tellus massa lobortis metus</strong>, nec ultrices dui ex et diam. Aenean pharetra velit quis tortor efficitur facilisis. Nam metus urna, scelerisque ut sem nec, vehicula interdum ligula. Proin vel augue eu velit ultricies consectetur. Phasellus leo nisl, consectetur sit amet consequat id, tincidunt in eros. Nullam porta massa id cursus viverra.\r\n\r\nNunc risus nunc, bibendum ut leo et, ultrices ultrices nisl. Nulla lacinia mauris id urna imperdiet egestas et ac elit. Mauris malesuada congue lectus, nec rhoncus nibh elementum ut. Suspendisse convallis leo sed dictum pretium. Pellentesque finibus elit in leo vulputate, a lacinia mi dictum. Morbi nibh purus, rhoncus vel faucibus commodo, hendrerit at sapien. Sed et justo tortor. Suspendisse mi velit, suscipit et faucibus eu, venenatis at urna. Ut fermentum eros ac lorem hendrerit porta. Vivamus pretium massa a leo mattis pulvinar. Maecenas purus urna, pellentesque id sodales ac, mollis a ex. Cras in erat in ipsum dictum consequat. Quisque pretium, erat ut rutrum finibus, justo ante hendrerit lacus, vel varius quam augue vitae nunc. Nullam scelerisque risus tortor, eget tincidunt libero malesuada in. Sed non nisl quis sem viverra lobortis. Maecenas ut tellus ullamcorper, consectetur quam pulvinar, mattis erat.', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-03 07:14:24', '2020-07-03 07:14:24', '', 2, 'http://localhost/Schema/2-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2020-07-03 07:18:35', '2020-07-03 07:18:35', '<h1>Lorem ipsum dolor sit amet</h1>\r\nconsectetur adipiscing elit. Etiam non turpis a ipsum tempor commodo vitae sed augue. In et justo in metus iaculis elementum. Nullam in lobortis purus, ut maximus dui. Donec maximus nisl id nibh venenatis luctus sed pellentesque velit. Integer a placerat mi. Pellentesque placerat lacus ipsum, id faucibus eros cursus eu. Sed eget ligula non neque porttitor tempus. Duis eros nisl, sodales quis urna et, volutpat rutrum ex. Phasellus et egestas erat. Nulla velit enim, gravida in ipsum sed, posuere scelerisque tortor. Mauris sodales sed nisl et tincidunt. Curabitur fermentum libero eu eros volutpat, nec condimentum massa tempus.\r\n\r\n<ul>\r\n<li>Cras eu feugiat mauris. Integer venenatis elementum sem, nec congue nisl scelerisque tristique.</li>\r\n<li>Pellentesque eget rhoncus dui. Quisque tristique est ante, at malesuada nulla efficitur non.</li>\r\n<li>Aenean egestas luctus ligula, id aliquam est. Vestibulum sed sapien dictum leo molestie</li>\r\n</ul>\r\n<ol>\r\n<li>luctus vel quis nibh. Donec iaculis posuere erat. Etiam pellentesque vehicula metus</li>\r\n<li>vitae aliquam. Quisque semper sit amet turpis vitae molestie.</li>\r\n<li>Aenean efficitur enim in purus venenatis, eu varius nunc lacinia.</li>\r\n</ol>\r\n\r\nNulla pellentesque mauris eu neque tempor, quis fermentum nibh tempor. <b>Vestibulum</b> pellentesque iaculis <a href=\"\">malesuada</a>. Fusce scelerisque venenatis molestie. Praesent massa lectus, mattis ut porttitor vitae, pretium in nibh. Ut dignissim ipsum sit amet ex dictum vulputate.\r\n\r\n<h2>Nullam congue a est et bibendum. Integer vel nisl in quam placerat semper.</h2>\r\nDonec semper, ligula ut tempus consectetur, <strong>tellus massa lobortis metus</strong>, nec ultrices dui ex et diam. Aenean pharetra velit quis tortor efficitur facilisis. Nam metus urna, scelerisque ut sem nec, vehicula interdum ligula. Proin vel augue eu velit ultricies consectetur. Phasellus leo nisl, consectetur sit amet consequat id, tincidunt in eros. Nullam porta massa id cursus viverra.\r\n\r\nNunc risus nunc, bibendum ut leo et, ultrices ultrices nisl. Nulla lacinia mauris id urna imperdiet egestas et ac elit. Mauris malesuada congue lectus, nec rhoncus nibh elementum ut. Suspendisse convallis leo sed dictum pretium. Pellentesque finibus elit in leo vulputate, a lacinia mi dictum. Morbi nibh purus, rhoncus vel faucibus commodo, hendrerit at sapien. Sed et justo tortor. Suspendisse mi velit, suscipit et faucibus eu, venenatis at urna. Ut fermentum eros ac lorem hendrerit porta. Vivamus pretium massa a leo mattis pulvinar. Maecenas purus urna, pellentesque id sodales ac, mollis a ex. Cras in erat in ipsum dictum consequat. Quisque pretium, erat ut rutrum finibus, justo ante hendrerit lacus, vel varius quam augue vitae nunc. Nullam scelerisque risus tortor, eget tincidunt libero malesuada in. Sed non nisl quis sem viverra lobortis. Maecenas ut tellus ullamcorper, consectetur quam pulvinar, mattis erat.', 'Sample Page', 'Hello World', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-03 07:18:35', '2020-07-03 07:18:35', '', 2, 'http://localhost/Schema/2-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2020-07-03 07:19:31', '2020-07-03 07:19:31', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur consequat lectus tellus, at pulvinar neque auctor eget. Donec suscipit ultrices malesuada. Nulla ultricies purus libero, quis tincidunt sem molestie id. Sed vestibulum, dui vitae feugiat pretium, leo nisi scelerisque tortor, vitae condimentum arcu elit quis libero. Phasellus a libero volutpat, pulvinar velit sed, semper ante. Nunc vehicula augue magna, at euismod purus tristique sed. Vestibulum fermentum rutrum placerat. Vivamus vulputate magna id volutpat maximus. Donec at quam est. Duis porttitor at ante a condimentum.\r\n\r\nDonec luctus nisl at fringilla aliquam. Maecenas molestie egestas arcu at pellentesque. Phasellus congue rutrum justo non sodales. Nunc blandit nulla sed nulla efficitur, vel pellentesque libero feugiat. Aliquam erat volutpat. Etiam vitae enim a massa sodales varius sit amet sit amet tortor. Ut dolor urna, scelerisque a pulvinar vel, efficitur nec nibh. Donec venenatis ipsum non tellus gravida varius. Donec mollis ac metus at consectetur. Integer sed rhoncus lectus. Nulla placerat velit lorem, vel varius lectus aliquet quis.\r\n\r\nEtiam eget vehicula odio, eu ultrices urna. Mauris id ante eget est tincidunt lobortis sodales at massa. Pellentesque at purus eleifend, faucibus neque sed, euismod justo. Fusce bibendum mi vitae turpis vestibulum, at viverra odio tempor. Aliquam vel interdum ex, non iaculis risus. Vestibulum at bibendum elit, tristique dictum nisl. Proin sit amet rutrum elit. Morbi at ornare nulla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam egestas pulvinar ligula vitae sodales.', 'About', 'All seven continents by 30, I wrote. I wanted to be the person that could say that. On December 16th...', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-07-03 07:19:31', '2020-07-03 07:19:31', '', 37, 'http://localhost/Schema/37-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2020-07-03 09:42:19', '2020-07-03 09:42:19', '<h1>Lorem ipsum dolor sit amet</h1>\r\nconsectetur adipiscing elit. Etiam non turpis a ipsum tempor commodo vitae sed augue. In et justo in metus iaculis elementum. Nullam in lobortis purus, ut maximus dui. Donec maximus nisl id nibh venenatis luctus sed pellentesque velit. Integer a placerat mi. Pellentesque placerat lacus ipsum, id faucibus eros cursus eu. Sed eget ligula non neque porttitor tempus. Duis eros nisl, sodales quis urna et, volutpat rutrum ex. Phasellus et egestas erat. Nulla velit enim, gravida in ipsum sed, posuere scelerisque tortor. Mauris sodales sed nisl et tincidunt. Curabitur fermentum libero eu eros volutpat, nec condimentum massa tempus.\r\n\r\n<ul>\r\n<li>Cras eu feugiat mauris. Integer venenatis elementum sem, nec congue nisl scelerisque tristique.</li>\r\n<li>Pellentesque eget rhoncus dui. Quisque tristique est ante, at malesuada nulla efficitur non.</li>\r\n<li>Aenean egestas luctus ligula, id aliquam est. Vestibulum sed sapien dictum leo molestie</li>\r\n</ul>\r\n<ol>\r\n<li>luctus vel quis nibh. Donec iaculis posuere erat. Etiam pellentesque vehicula metus</li>\r\n<li>vitae aliquam. Quisque semper sit amet turpis vitae molestie.</li>\r\n<li>Aenean efficitur enim in purus venenatis, eu varius nunc lacinia.</li>\r\n</ol>\r\n\r\nNulla pellentesque mauris eu neque tempor, quis fermentum nibh tempor. <b>Vestibulum</b> pellentesque iaculis <a href=\"\">malesuada</a>. Fusce scelerisque venenatis molestie. Praesent massa lectus, mattis ut porttitor vitae, pretium in nibh. Ut dignissim ipsum sit amet ex dictum vulputate.\r\n\r\n<h2>Nullam congue a est et bibendum. Integer vel nisl in quam placerat semper.</h2>\r\nDonec semper, ligula ut tempus consectetur, <strong>tellus massa lobortis metus</strong>, nec ultrices dui ex et diam. Aenean pharetra velit quis tortor efficitur facilisis. Nam metus urna, scelerisque ut sem nec, vehicula interdum ligula. Proin vel augue eu velit ultricies consectetur. Phasellus leo nisl, consectetur sit amet consequat id, tincidunt in eros. Nullam porta massa id cursus viverra.\r\n\r\nNunc risus nunc, bibendum ut leo et, ultrices ultrices nisl. Nulla lacinia mauris id urna imperdiet egestas et ac elit. Mauris malesuada congue lectus, nec rhoncus nibh elementum ut. Suspendisse convallis leo sed dictum pretium. Pellentesque finibus elit in leo vulputate, a lacinia mi dictum. Morbi nibh purus, rhoncus vel faucibus commodo, hendrerit at sapien. Sed et justo tortor. Suspendisse mi velit, suscipit et faucibus eu, venenatis at urna. Ut fermentum eros ac lorem hendrerit porta. Vivamus pretium massa a leo mattis pulvinar. Maecenas purus urna, pellentesque id sodales ac, mollis a ex. Cras in erat in ipsum dictum consequat. Quisque pretium, erat ut rutrum finibus, justo ante hendrerit lacus, vel varius quam augue vitae nunc. Nullam scelerisque risus tortor, eget tincidunt libero malesuada in. Sed non nisl quis sem viverra lobortis. Maecenas ut tellus ullamcorper, consectetur quam pulvinar, mattis erat.', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-03 09:42:19', '2020-07-03 09:42:19', '', 2, 'http://localhost/Schema/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(4, 'Main Menu', 'main-menu', 0),
(5, 'Blog', 'blog', 0),
(6, 'DESIGN', 'design', 0),
(7, 'PHOTOGRAPHY', 'photography', 0),
(8, 'test', 'test', 0),
(9, 'hello', 'hello', 0),
(10, 'Entertainment', 'entertainment', 0),
(11, 'Finance', 'finance', 0),
(12, 'Politics', 'politics', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 1, 0),
(10, 1, 0),
(20, 1, 0),
(22, 1, 0),
(24, 1, 0),
(26, 1, 0),
(26, 10, 0),
(36, 4, 0),
(39, 4, 0),
(41, 4, 0),
(44, 4, 0),
(45, 4, 0),
(46, 4, 0),
(47, 4, 0),
(48, 4, 0),
(49, 4, 0),
(50, 4, 0),
(108, 5, 0),
(108, 12, 0),
(110, 5, 0),
(110, 6, 0),
(110, 10, 0),
(112, 5, 0),
(112, 7, 0),
(114, 5, 0),
(114, 6, 0),
(114, 10, 0),
(116, 5, 0),
(116, 12, 0),
(119, 5, 0),
(119, 7, 0),
(120, 5, 0),
(120, 6, 0),
(121, 5, 0),
(121, 6, 0),
(122, 5, 0),
(122, 10, 0),
(123, 5, 0),
(123, 11, 0),
(124, 5, 0),
(124, 6, 0),
(124, 12, 0),
(125, 5, 0),
(125, 6, 0),
(125, 10, 0),
(126, 5, 0),
(126, 12, 0),
(127, 5, 0),
(127, 6, 0),
(127, 7, 0),
(128, 5, 0),
(128, 11, 0),
(129, 5, 0),
(129, 10, 0),
(129, 11, 0),
(130, 5, 0),
(130, 6, 0),
(130, 7, 0),
(131, 5, 0),
(131, 6, 0),
(131, 7, 0),
(152, 5, 0),
(152, 8, 0),
(152, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 10),
(5, 5, 'category', '', 0, 18),
(6, 6, 'post_tag', '', 0, 9),
(7, 7, 'post_tag', '', 0, 5),
(8, 8, 'post_tag', '', 0, 0),
(9, 9, 'post_tag', '', 0, 0),
(10, 10, 'post_tag', '', 0, 6),
(11, 11, 'post_tag', '', 0, 3),
(12, 12, 'post_tag', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"9fb7661aeb2abc01d8f6feff311b2c4d50310d94cc2a2c8b64d75e83fd3b5b69\";a:4:{s:10:\"expiration\";i:1593839336;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1593666536;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_post', 'a:0:{}'),
(19, 1, 'metaboxhidden_post', 'a:4:{i:0;s:13:\"trackbacksdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(20, 1, 'meta-box-order_post', 'a:3:{s:4:\"side\";s:38:\"submitdiv,categorydiv,tagsdiv-post_tag\";s:6:\"normal\";s:71:\"postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(21, 1, 'screen_layout_post', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(23, 1, 'wp_user-settings-time', '1593676208'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:25:\"add-post-type-home_banner\";i:1;s:26:\"add-post-type-testimonials\";i:2;s:12:\"add-post_tag\";}'),
(26, 1, 'nav_menu_recently_edited', '4'),
(27, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(28, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(29, 1, 'closedpostboxes_page', 'a:0:{}'),
(30, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B0YjtUkk8TaTNpFXn9UV7Wibp7EmIe1', 'admin', 'anishsangat5@gmail.com', 'http://localhost/Schema', '2020-07-02 05:08:48', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int(11) UNSIGNED DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `post_parent` int(11) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`) VALUES
(1, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-03 08:00:48', '2020-07-03 03:49:57', 1, NULL, NULL, NULL, NULL, 0),
(2, 'http://localhost/Schema/author/admin/', '37:dec015661a18a7db50e3a76cc50da798', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://1.gravatar.com/avatar/7809298ac0702dc2ec39682c1f73eddc?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://1.gravatar.com/avatar/7809298ac0702dc2ec39682c1f73eddc?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2020-07-03 08:04:47', '2020-07-03 03:57:19', 1, NULL, NULL, NULL, NULL, 0),
(3, 'http://localhost/Schema/contact/', '32:2fda0c28efd155d5848ca5fa125bdaac', 42, 'post', 'page', 1, 0, NULL, NULL, 'Contact', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-03 08:04:47', '2020-07-03 02:19:47', 1, NULL, NULL, NULL, NULL, 0),
(4, 'http://localhost/Schema/?post_type=wpcf7_contact_form&p=12', '58:d365abaeb3c845f59874eed3efd58f74', 12, 'post', 'wpcf7_contact_form', 1, 0, NULL, NULL, 'Banner Form', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-03 08:15:15', '2020-07-03 02:30:15', 1, NULL, NULL, NULL, NULL, 0),
(5, 'http://localhost/Schema/', '24:8867480dfd21bb029a0479cc10b5a388', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Just another WordPress site', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '2020-07-03 08:18:11', '2020-07-03 02:33:11', 1, NULL, NULL, NULL, NULL, 0),
(6, 'http://localhost/Schema/?post_type=wpcf7_contact_form&p=160', '59:57de17fcc940575bb89cc340de8e7b8d', 160, 'post', 'wpcf7_contact_form', 1, 0, NULL, NULL, 'Form', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-03 08:21:28', '2020-07-03 02:36:28', 1, NULL, NULL, NULL, NULL, 0),
(7, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-03 08:28:01', '2020-07-03 03:43:44', 1, NULL, NULL, NULL, NULL, 0),
(8, 'http://localhost/Schema/get_help/improve-communication/', '55:b2791482d18cc9c334236f78b91549ab', 96, 'post', 'get_help', 1, 0, NULL, NULL, 'Improve Communication', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-03 08:28:01', '2020-07-03 02:43:01', 1, NULL, NULL, NULL, NULL, 0),
(9, 'http://localhost/Schema/tag/design/', '35:c44782d84131720dcffca6b764e1f775', 6, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'DESIGN', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-03 08:50:45', '2020-07-03 03:05:45', 1, NULL, NULL, NULL, NULL, 0),
(10, 'http://localhost/Schema/tag/finance/', '36:59c7265fc5d4284f1c1887efcdb66a94', 11, 'term', 'post_tag', NULL, NULL, NULL, NULL, 'Finance', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-03 08:50:46', '2020-07-03 03:05:46', 1, NULL, NULL, NULL, NULL, 0),
(11, 'http://localhost/Schema/7-off-duty-outfits-that-will-reinvent-your-spring-wardrobe-4/', '85:91f80ccf75852a8eae6fb6461a1d5684', 129, 'post', 'post', 1, 0, NULL, NULL, '7 Off-Duty Outfits That Will Reinvent Your Spring Wardrobe', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Schema/wp-content/uploads/2020/07/blog-img2.jpg', NULL, '148', 'featured-image', NULL, NULL, 'http://localhost/Schema/wp-content/uploads/2020/07/blog-img2.jpg', '148', 'featured-image', '{\"width\":776,\"height\":437,\"url\":\"http:\\/\\/localhost\\/Schema\\/wp-content\\/uploads\\/2020\\/07\\/blog-img2.jpg\",\"path\":\"C:\\\\xampp\\\\htdocs\\\\Schema\\/wp-content\\/uploads\\/2020\\/07\\/blog-img2.jpg\",\"size\":\"full\",\"id\":148,\"alt\":\"\",\"pixels\":339112,\"type\":\"image\\/jpeg\"}', NULL, NULL, NULL, '2020-07-03 08:50:53', '2020-07-03 03:05:53', 1, NULL, NULL, NULL, NULL, 0),
(12, 'http://localhost/Schema/7-off-duty-outfits-that-will-reinvent-your-spring-wardrobe-5/', '85:3333e909390b51ddb5fbc93e063d541d', 131, 'post', 'post', 1, 0, NULL, NULL, '7 Off-Duty Outfits That Will Reinvent Your Spring Wardrobe', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Schema/wp-content/uploads/2020/07/blog-img1.jpg', NULL, '145', 'featured-image', NULL, NULL, 'http://localhost/Schema/wp-content/uploads/2020/07/blog-img1.jpg', '145', 'featured-image', '{\"width\":776,\"height\":437,\"url\":\"http:\\/\\/localhost\\/Schema\\/wp-content\\/uploads\\/2020\\/07\\/blog-img1.jpg\",\"path\":\"C:\\\\xampp\\\\htdocs\\\\Schema\\/wp-content\\/uploads\\/2020\\/07\\/blog-img1.jpg\",\"size\":\"full\",\"id\":145,\"alt\":\"\",\"pixels\":339112,\"type\":\"image\\/jpeg\"}', NULL, NULL, NULL, '2020-07-03 08:51:34', '2020-07-03 03:06:34', 1, NULL, NULL, NULL, NULL, 0),
(13, 'http://localhost/Schema/testimonials/hi-im-raushan/', '51:d5f716b5bb42374077b3911b2145fa31', 33, 'post', 'testimonials', 1, 0, NULL, NULL, 'Hi, I&#8217;m Raushan.', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/Schema/wp-content/uploads/2020/07/about-img.jpg', NULL, '34', 'featured-image', NULL, NULL, 'http://localhost/Schema/wp-content/uploads/2020/07/about-img.jpg', '34', 'featured-image', '{\"width\":470,\"height\":353,\"url\":\"http:\\/\\/localhost\\/Schema\\/wp-content\\/uploads\\/2020\\/07\\/about-img.jpg\",\"path\":\"C:\\\\xampp\\\\htdocs\\\\Schema\\/wp-content\\/uploads\\/2020\\/07\\/about-img.jpg\",\"size\":\"full\",\"id\":34,\"alt\":\"\",\"pixels\":165910,\"type\":\"image\\/jpeg\"}', NULL, NULL, NULL, '2020-07-03 08:51:39', '2020-07-03 03:06:39', 1, NULL, NULL, NULL, NULL, 0),
(14, 'http://localhost/Schema/category/blog/', '38:efcc9c07867f54ea678728360b88fb09', 5, 'term', 'category', NULL, NULL, NULL, NULL, 'Blog', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-03 08:59:37', '2020-07-03 03:14:37', 1, NULL, NULL, NULL, NULL, 0),
(15, 'http://localhost/Schema/about/', '30:59a8e4943611f7d32300e3079cfc533f', 37, 'post', 'page', 1, 0, NULL, NULL, 'About', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-03 09:05:51', '2020-07-03 03:20:51', 1, NULL, NULL, NULL, NULL, 0),
(16, 'http://localhost/Schema/sample-page/', '36:65ac3857ad9a2d251d213d1490296df2', 2, 'post', 'page', 1, 0, NULL, NULL, 'Sample Page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2020-07-03 09:25:45', '2020-07-03 03:57:19', 1, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL,
  `term_id` int(11) UNSIGNED NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(1, '', 2, 0, 'internal');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(2, 1, 0),
(168, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_upgrades`
--
ALTER TABLE `wp_nf3_upgrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `permalink_hash` (`permalink_hash`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`);

--
-- Indexes for table `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Indexes for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

--
-- AUTO_INCREMENT for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
