-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.31-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for lapizeria_wp
CREATE DATABASE IF NOT EXISTS `lapizeria_wp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lapizeria_wp`;

-- Dumping structure for table lapizeria_wp.wp_commentmeta
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapizeria_wp.wp_commentmeta: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;

-- Dumping structure for table lapizeria_wp.wp_comments
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapizeria_wp.wp_comments: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
REPLACE INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
	(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-09-17 10:28:23', '2019-09-17 10:28:23', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;

-- Dumping structure for table lapizeria_wp.wp_links
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapizeria_wp.wp_links: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;

-- Dumping structure for table lapizeria_wp.wp_options
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapizeria_wp.wp_options: ~127 rows (approximately)
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
REPLACE INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'siteurl', 'http://localhost:8080/lapizeria', 'yes'),
	(2, 'home', 'http://localhost:8080/lapizeria', 'yes'),
	(3, 'blogname', 'Lapizeria', 'yes'),
	(4, 'blogdescription', 'Just another WordPress site', 'yes'),
	(5, 'users_can_register', '0', 'yes'),
	(6, 'admin_email', 'dejozcg@yahoo.com', 'yes'),
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
	(21, 'default_pingback_flag', '1', 'yes'),
	(22, 'posts_per_page', '10', 'yes'),
	(23, 'date_format', 'F j, Y', 'yes'),
	(24, 'time_format', 'g:i a', 'yes'),
	(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
	(26, 'comment_moderation', '0', 'yes'),
	(27, 'moderation_notify', '1', 'yes'),
	(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
	(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=9&cpage=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
	(30, 'hack_file', '0', 'yes'),
	(31, 'blog_charset', 'UTF-8', 'yes'),
	(32, 'moderation_keys', '', 'no'),
	(33, 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";}', 'yes'),
	(34, 'category_base', '', 'yes'),
	(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
	(36, 'comment_max_links', '2', 'yes'),
	(37, 'gmt_offset', '0', 'yes'),
	(38, 'default_email_category', '1', 'yes'),
	(39, 'recently_edited', 'a:3:{i:0;s:75:"C:\\xampp\\htdocs\\lapizeria/wp-content/plugins/advanced-custom-fields/acf.php";i:1;s:63:"C:\\xampp\\htdocs\\lapizeria/wp-content/themes/lapizeria/style.css";i:2;s:0:"";}', 'no'),
	(40, 'template', 'lapizeria/lapizeria', 'yes'),
	(41, 'stylesheet', 'lapizeria/lapizeria', 'yes'),
	(42, 'comment_whitelist', '1', 'yes'),
	(43, 'blacklist_keys', '', 'no'),
	(44, 'comment_registration', '0', 'yes'),
	(45, 'html_type', 'text/html', 'yes'),
	(46, 'use_trackback', '0', 'yes'),
	(47, 'default_role', 'subscriber', 'yes'),
	(48, 'db_version', '44719', 'yes'),
	(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
	(50, 'upload_path', '', 'yes'),
	(51, 'blog_public', '1', 'yes'),
	(52, 'default_link_category', '2', 'yes'),
	(53, 'show_on_front', 'page', 'yes'),
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
	(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(81, 'uninstall_plugins', 'a:0:{}', 'no'),
	(82, 'timezone_string', '', 'yes'),
	(83, 'page_for_posts', '7', 'yes'),
	(84, 'page_on_front', '9', 'yes'),
	(85, 'default_post_format', '0', 'yes'),
	(86, 'link_manager_enabled', '0', 'yes'),
	(87, 'finished_splitting_shared_terms', '1', 'yes'),
	(88, 'site_icon', '0', 'yes'),
	(89, 'medium_large_size_w', '768', 'yes'),
	(90, 'medium_large_size_h', '0', 'yes'),
	(91, 'wp_page_for_privacy_policy', '3', 'yes'),
	(92, 'show_comments_cookies_opt_in', '1', 'yes'),
	(93, 'initial_db_version', '44719', 'yes'),
	(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
	(95, 'fresh_site', '0', 'yes'),
	(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(101, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
	(102, 'cron', 'a:6:{i:1569418106;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1569450506;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1569493705;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1569493928;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1569493930;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
	(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(113, 'recovery_keys', 'a:0:{}', 'yes'),
	(114, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.3";s:7:"version";s:5:"5.2.3";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1569407667;s:15:"version_checked";s:5:"5.2.3";s:12:"translations";a:0:{}}', 'no'),
	(115, 'theme_mods_twentynineteen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1569305962;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}s:18:"nav_menu_locations";a:2:{s:6:"menu-1";i:2;s:6:"social";i:3;}}', 'yes'),
	(120, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1569407669;s:7:"checked";a:4:{s:19:"lapizeria/lapizeria";s:3:"1.0";s:14:"twentynineteen";s:3:"1.4";s:15:"twentyseventeen";s:3:"2.2";s:13:"twentysixteen";s:3:"2.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
	(132, 'can_compress_scripts', '1', 'no'),
	(143, 'current_theme', 'lapizeria', 'yes'),
	(144, 'theme_mods_lapizeria', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"header-menu";i:2;s:11:"social-menu";i:3;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1569305943;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
	(145, 'theme_switched', '', 'yes'),
	(180, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
	(228, 'recently_activated', 'a:0:{}', 'yes'),
	(229, 'acf_version', '5.8.3', 'yes'),
	(240, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1569407669;s:7:"checked";a:4:{s:30:"advanced-custom-fields/acf.php";s:5:"5.8.3";s:19:"akismet/akismet.php";s:5:"4.1.2";s:9:"hello.php";s:5:"1.7.2";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:5:"3.1.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"5.8.3";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.3.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/regenerate-thumbnails";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.1.zip";s:5:"icons";a:1:{s:2:"1x";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";}s:7:"banners";a:2:{s:2:"2x";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";s:2:"1x";s:76:"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
	(260, 'theme_mods_lapizeria/lapizeria', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"header-menu";i:2;s:11:"social-menu";i:3;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
	(278, 'category_children', 'a:0:{}', 'yes'),
	(282, '_site_transient_timeout_theme_roots', '1569409468', 'no'),
	(283, '_site_transient_theme_roots', 'a:4:{s:19:"lapizeria/lapizeria";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

-- Dumping structure for table lapizeria_wp.wp_postmeta
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapizeria_wp.wp_postmeta: ~199 rows (approximately)
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
REPLACE INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(1, 2, '_wp_page_template', 'default'),
	(2, 3, '_wp_page_template', 'default'),
	(3, 1, '_edit_lock', '1568721214:1'),
	(4, 5, '_edit_lock', '1569305835:1'),
	(5, 7, '_edit_lock', '1568721588:1'),
	(6, 9, '_edit_lock', '1568721601:1'),
	(7, 11, '_edit_lock', '1568721634:1'),
	(8, 13, '_edit_lock', '1568725466:1'),
	(18, 16, '_menu_item_type', 'post_type'),
	(19, 16, '_menu_item_menu_item_parent', '0'),
	(20, 16, '_menu_item_object_id', '5'),
	(21, 16, '_menu_item_object', 'page'),
	(22, 16, '_menu_item_target', ''),
	(23, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(24, 16, '_menu_item_xfn', ''),
	(25, 16, '_menu_item_url', ''),
	(27, 17, '_menu_item_type', 'post_type'),
	(28, 17, '_menu_item_menu_item_parent', '0'),
	(29, 17, '_menu_item_object_id', '7'),
	(30, 17, '_menu_item_object', 'page'),
	(31, 17, '_menu_item_target', ''),
	(32, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(33, 17, '_menu_item_xfn', ''),
	(34, 17, '_menu_item_url', ''),
	(36, 18, '_menu_item_type', 'post_type'),
	(37, 18, '_menu_item_menu_item_parent', '0'),
	(38, 18, '_menu_item_object_id', '11'),
	(39, 18, '_menu_item_object', 'page'),
	(40, 18, '_menu_item_target', ''),
	(41, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(42, 18, '_menu_item_xfn', ''),
	(43, 18, '_menu_item_url', ''),
	(45, 19, '_menu_item_type', 'post_type'),
	(46, 19, '_menu_item_menu_item_parent', '0'),
	(47, 19, '_menu_item_object_id', '13'),
	(48, 19, '_menu_item_object', 'page'),
	(49, 19, '_menu_item_target', ''),
	(50, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(51, 19, '_menu_item_xfn', ''),
	(52, 19, '_menu_item_url', ''),
	(72, 22, '_edit_lock', '1569407543:1'),
	(73, 25, '_menu_item_type', 'post_type'),
	(74, 25, '_menu_item_menu_item_parent', '0'),
	(75, 25, '_menu_item_object_id', '22'),
	(76, 25, '_menu_item_object', 'page'),
	(77, 25, '_menu_item_target', ''),
	(78, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(79, 25, '_menu_item_xfn', ''),
	(80, 25, '_menu_item_url', ''),
	(82, 26, '_menu_item_type', 'custom'),
	(83, 26, '_menu_item_menu_item_parent', '0'),
	(84, 26, '_menu_item_object_id', '26'),
	(85, 26, '_menu_item_object', 'custom'),
	(86, 26, '_menu_item_target', ''),
	(87, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(88, 26, '_menu_item_xfn', ''),
	(89, 26, '_menu_item_url', 'http://facebook.com'),
	(91, 27, '_menu_item_type', 'custom'),
	(92, 27, '_menu_item_menu_item_parent', '0'),
	(93, 27, '_menu_item_object_id', '27'),
	(94, 27, '_menu_item_object', 'custom'),
	(95, 27, '_menu_item_target', ''),
	(96, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(97, 27, '_menu_item_xfn', ''),
	(98, 27, '_menu_item_url', 'http://twitter.com'),
	(100, 28, '_menu_item_type', 'custom'),
	(101, 28, '_menu_item_menu_item_parent', '0'),
	(102, 28, '_menu_item_object_id', '28'),
	(103, 28, '_menu_item_object', 'custom'),
	(104, 28, '_menu_item_target', ''),
	(105, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(106, 28, '_menu_item_xfn', ''),
	(107, 28, '_menu_item_url', 'http://pinteres.com'),
	(109, 29, '_menu_item_type', 'custom'),
	(110, 29, '_menu_item_menu_item_parent', '0'),
	(111, 29, '_menu_item_object_id', '29'),
	(112, 29, '_menu_item_object', 'custom'),
	(113, 29, '_menu_item_target', ''),
	(114, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(115, 29, '_menu_item_xfn', ''),
	(116, 29, '_menu_item_url', 'http://youtube.com'),
	(118, 30, '_menu_item_type', 'custom'),
	(119, 30, '_menu_item_menu_item_parent', '0'),
	(120, 30, '_menu_item_object_id', '30'),
	(121, 30, '_menu_item_object', 'custom'),
	(122, 30, '_menu_item_target', ''),
	(123, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(124, 30, '_menu_item_xfn', ''),
	(125, 30, '_menu_item_url', 'http://instagram.com'),
	(126, 31, '_wp_attached_file', '2019/09/transparent_pizza.gif'),
	(127, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:574;s:6:"height";i:574;s:4:"file";s:29:"2019/09/transparent_pizza.gif";s:5:"sizes";a:4:{s:11:"specialties";a:4:{s:4:"file";s:29:"transparent_pizza-574x515.gif";s:5:"width";i:574;s:6:"height";i:515;s:9:"mime-type";s:9:"image/gif";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"transparent_pizza-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";}s:6:"medium";a:4:{s:4:"file";s:29:"transparent_pizza-300x300.gif";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/gif";}s:5:"boxes";a:4:{s:4:"file";s:29:"transparent_pizza-437x291.gif";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(128, 34, '_wp_attached_file', '2019/09/featured.jpg'),
	(129, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1286;s:4:"file";s:20:"2019/09/featured.jpg";s:5:"sizes";a:6:{s:11:"specialties";a:4:{s:4:"file";s:20:"featured-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"featured-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"featured-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"featured-768x514.jpg";s:5:"width";i:768;s:6:"height";i:514;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"featured-1024x686.jpg";s:5:"width";i:1024;s:6:"height";i:686;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:20:"featured-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(130, 5, '_thumbnail_id', '34'),
	(131, 37, '_edit_last', '1'),
	(132, 37, '_edit_lock', '1569399076:1'),
	(133, 48, '_wp_attached_file', '2019/09/about_01.jpg'),
	(134, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1275;s:4:"file";s:20:"2019/09/about_01.jpg";s:5:"sizes";a:6:{s:11:"specialties";a:4:{s:4:"file";s:20:"about_01-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"about_01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"about_01-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"about_01-768x510.jpg";s:5:"width";i:768;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"about_01-1024x680.jpg";s:5:"width";i:1024;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:20:"about_01-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:8:"SLT-A55V";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"70";s:3:"iso";s:3:"320";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(135, 49, '_wp_attached_file', '2019/09/about_02.jpg'),
	(136, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1271;s:4:"file";s:20:"2019/09/about_02.jpg";s:5:"sizes";a:6:{s:11:"specialties";a:4:{s:4:"file";s:20:"about_02-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"about_02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"about_02-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"about_02-768x508.jpg";s:5:"width";i:768;s:6:"height";i:508;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"about_02-1024x678.jpg";s:5:"width";i:1024;s:6:"height";i:678;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:20:"about_02-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(137, 50, '_wp_attached_file', '2019/09/about_03.jpg'),
	(138, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1280;s:4:"file";s:20:"2019/09/about_03.jpg";s:5:"sizes";a:6:{s:11:"specialties";a:4:{s:4:"file";s:20:"about_03-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"about_03-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"about_03-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"about_03-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"about_03-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:20:"about_03-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(139, 5, '_edit_last', '1'),
	(140, 5, 'image1', '48'),
	(141, 5, '_image1', 'field_5d889c095eb5b'),
	(142, 5, 'description1', '<h3>Original Recipes</h3>\r\nMorbi scelerisque lacus justo. Vivamus facilisis mollis risus, ac eleifend lorem vulputate eu. Cras varius et ex sit amet iaculis.'),
	(143, 5, '_description1', 'field_5d889dfc40f59'),
	(144, 5, 'image2', '49'),
	(145, 5, '_image2', 'field_5d88a0c958f08'),
	(146, 5, 'description2', '<h3>Craft beer</h3>\r\nMorbi scelerisque lacus justo. Vivamus facilisis mollis risus, ac eleifend lorem vulputate eu. Cras varius et ex sit amet iaculis.'),
	(147, 5, '_description2', 'field_5d88a11ca75f4'),
	(148, 5, 'image3', '50'),
	(149, 5, '_image3', 'field_5d88a10fa75f3'),
	(150, 5, 'description3', '<h3>wood fired pizza oven</h3>\r\nMorbi scelerisque lacus justo. Vivamus facilisis mollis risus, ac eleifend lorem vulputate eu. Cras varius et ex sit amet iaculis.'),
	(151, 5, '_description3', 'field_5d88a123a75f5'),
	(152, 51, 'image1', '48'),
	(153, 51, '_image1', 'field_5d889c095eb5b'),
	(154, 51, 'description1', '<h3>Original Recipes</h3>\r\nMorbi scelerisque lacus justo. Vivamus facilisis mollis risus, ac eleifend lorem vulputate eu. Cras varius et ex sit amet iaculis.'),
	(155, 51, '_description1', 'field_5d889dfc40f59'),
	(156, 51, 'image2', '49'),
	(157, 51, '_image2', 'field_5d88a0c958f08'),
	(158, 51, 'description2', '<h3>Craft beer</h3>\r\nMorbi scelerisque lacus justo. Vivamus facilisis mollis risus, ac eleifend lorem vulputate eu. Cras varius et ex sit amet iaculis.'),
	(159, 51, '_description2', 'field_5d88a11ca75f4'),
	(160, 51, 'image3', '50'),
	(161, 51, '_image3', 'field_5d88a10fa75f3'),
	(162, 51, 'description3', '<h3>wood fired pizza oven</h3>\r\nMorbi scelerisque lacus justo. Vivamus facilisis mollis risus, ac eleifend lorem vulputate eu. Cras varius et ex sit amet iaculis.'),
	(163, 51, '_description3', 'field_5d88a123a75f5'),
	(164, 22, '_wp_page_template', 'our_menu.php'),
	(165, 22, '_thumbnail_id', '34'),
	(166, 54, '_edit_last', '1'),
	(167, 54, '_edit_lock', '1569411353:1'),
	(168, 59, '_wp_attached_file', '2019/09/pizza_01.jpg'),
	(169, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:20:"2019/09/pizza_01.jpg";s:5:"sizes";a:5:{s:11:"specialties";a:4:{s:4:"file";s:20:"pizza_01-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"pizza_01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"pizza_01-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"pizza_01-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:20:"pizza_01-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(170, 58, '_edit_last', '1'),
	(171, 58, '_edit_lock', '1569415576:1'),
	(172, 58, '_thumbnail_id', '59'),
	(173, 58, 'price', '20'),
	(174, 58, '_price', 'field_5d8b24728f624'),
	(175, 60, '_edit_last', '1'),
	(176, 60, '_edit_lock', '1569415595:1'),
	(177, 61, '_wp_attached_file', '2019/09/pizza_02.jpg'),
	(178, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:20:"2019/09/pizza_02.jpg";s:5:"sizes";a:5:{s:11:"specialties";a:4:{s:4:"file";s:20:"pizza_02-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"pizza_02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"pizza_02-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"pizza_02-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:20:"pizza_02-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(179, 60, '_thumbnail_id', '61'),
	(180, 60, 'price', '15'),
	(181, 60, '_price', 'field_5d8b24728f624'),
	(182, 63, '_wp_attached_file', '2019/09/pizza_03.jpg'),
	(183, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:589;s:4:"file";s:20:"2019/09/pizza_03.jpg";s:5:"sizes";a:5:{s:11:"specialties";a:4:{s:4:"file";s:20:"pizza_03-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"pizza_03-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"pizza_03-300x177.jpg";s:5:"width";i:300;s:6:"height";i:177;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"pizza_03-768x452.jpg";s:5:"width";i:768;s:6:"height";i:452;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:20:"pizza_03-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(184, 62, '_edit_last', '1'),
	(185, 62, '_thumbnail_id', '63'),
	(186, 62, 'price', '17'),
	(187, 62, '_price', 'field_5d8b24728f624'),
	(188, 62, '_edit_lock', '1569415916:1'),
	(189, 65, '_wp_attached_file', '2019/09/pizza_04.jpg'),
	(190, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:670;s:4:"file";s:20:"2019/09/pizza_04.jpg";s:5:"sizes";a:5:{s:11:"specialties";a:4:{s:4:"file";s:20:"pizza_04-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"pizza_04-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"pizza_04-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"pizza_04-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:20:"pizza_04-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(191, 64, '_edit_last', '1'),
	(192, 64, '_thumbnail_id', '65'),
	(193, 64, 'price', '20'),
	(194, 64, '_price', 'field_5d8b24728f624'),
	(195, 64, '_edit_lock', '1569407732:1'),
	(196, 67, '_wp_attached_file', '2019/09/pizza_05.jpg'),
	(197, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:666;s:4:"file";s:20:"2019/09/pizza_05.jpg";s:5:"sizes";a:5:{s:11:"specialties";a:4:{s:4:"file";s:20:"pizza_05-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"pizza_05-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"pizza_05-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"pizza_05-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:20:"pizza_05-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(198, 66, '_edit_last', '1'),
	(199, 66, '_thumbnail_id', '67'),
	(200, 66, 'price', '17'),
	(201, 66, '_price', 'field_5d8b24728f624'),
	(202, 66, '_edit_lock', '1569407775:1'),
	(203, 68, '_edit_last', '1'),
	(204, 68, '_edit_lock', '1569416090:1'),
	(205, 69, '_wp_attached_file', '2019/09/pizza_06.jpg'),
	(206, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:563;s:4:"file";s:20:"2019/09/pizza_06.jpg";s:5:"sizes";a:5:{s:11:"specialties";a:4:{s:4:"file";s:20:"pizza_06-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"pizza_06-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"pizza_06-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"pizza_06-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:20:"pizza_06-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(207, 68, '_thumbnail_id', '69'),
	(208, 68, 'price', '20'),
	(209, 68, '_price', 'field_5d8b24728f624'),
	(210, 70, '_edit_last', '1'),
	(211, 70, '_edit_lock', '1569407859:1'),
	(212, 71, '_wp_attached_file', '2019/09/others_01.jpg'),
	(213, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:666;s:4:"file";s:21:"2019/09/others_01.jpg";s:5:"sizes";a:5:{s:11:"specialties";a:4:{s:4:"file";s:21:"others_01-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"others_01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"others_01-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"others_01-768x511.jpg";s:5:"width";i:768;s:6:"height";i:511;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:21:"others_01-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(214, 70, '_thumbnail_id', '71'),
	(215, 70, 'price', '10'),
	(216, 70, '_price', 'field_5d8b24728f624'),
	(217, 72, '_edit_last', '1'),
	(218, 72, '_edit_lock', '1569407896:1'),
	(219, 73, '_wp_attached_file', '2019/09/others_02.jpg'),
	(220, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:21:"2019/09/others_02.jpg";s:5:"sizes";a:5:{s:11:"specialties";a:4:{s:4:"file";s:21:"others_02-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"others_02-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"others_02-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"others_02-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:21:"others_02-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(221, 72, '_thumbnail_id', '73'),
	(222, 72, 'price', '20'),
	(223, 72, '_price', 'field_5d8b24728f624'),
	(224, 74, '_edit_last', '1'),
	(225, 74, '_edit_lock', '1569407939:1'),
	(226, 75, '_wp_attached_file', '2019/09/others_03.jpg'),
	(227, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:750;s:4:"file";s:21:"2019/09/others_03.jpg";s:5:"sizes";a:5:{s:11:"specialties";a:4:{s:4:"file";s:21:"others_03-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"others_03-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"others_03-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"others_03-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:21:"others_03-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(228, 74, '_thumbnail_id', '75'),
	(229, 74, 'price', '15'),
	(230, 74, '_price', 'field_5d8b24728f624'),
	(231, 76, '_edit_last', '1'),
	(232, 76, '_edit_lock', '1569409418:1'),
	(233, 77, '_wp_attached_file', '2019/09/others_04.jpg'),
	(234, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:667;s:4:"file";s:21:"2019/09/others_04.jpg";s:5:"sizes";a:5:{s:11:"specialties";a:4:{s:4:"file";s:21:"others_04-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"others_04-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"others_04-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"others_04-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"boxes";a:4:{s:4:"file";s:21:"others_04-437x291.jpg";s:5:"width";i:437;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(235, 76, '_thumbnail_id', '77'),
	(236, 76, 'price', '15'),
	(237, 76, '_price', 'field_5d8b24728f624');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;

-- Dumping structure for table lapizeria_wp.wp_posts
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapizeria_wp.wp_posts: ~70 rows (approximately)
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
REPLACE INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(1, 1, '2019-09-17 10:28:23', '2019-09-17 10:28:23', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-09-17 10:28:23', '2019-09-17 10:28:23', '', 0, 'http://localhost:8080/lapizeria/?p=1', 0, 'post', '', 1),
	(2, 1, '2019-09-17 10:28:23', '2019-09-17 10:28:23', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost:8080/lapizeria/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-09-17 10:28:23', '2019-09-17 10:28:23', '', 0, 'http://localhost:8080/lapizeria/?page_id=2', 0, 'page', '', 0),
	(3, 1, '2019-09-17 10:28:23', '2019-09-17 10:28:23', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8080/lapizeria.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-09-17 10:28:23', '2019-09-17 10:28:23', '', 0, 'http://localhost:8080/lapizeria/?page_id=3', 0, 'page', '', 0),
	(5, 1, '2019-09-17 12:01:46', '2019-09-17 12:01:46', '<!-- wp:paragraph -->\n<p>Aliquam nibh orci, congue non nunc id, suscipit mollis quam. Vivamus eu enim justo. Curabitur dignissim, lectus facilisis pellentesque semper, sem libero congue lorem, a blandit nisi mi ac erat. Morbi a lectus quis mi congue lacinia. Pellentesque nec lectus non neque venenatis sagittis. Nam ultricies, massa ac ullamcorper faucibus, velit lectus dictum dolor, nec porta odio diam vitae turpis. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut aliquam diam quis faucibus elementum. Etiam at semper nisi. Vivamus at cursus eros. Praesent in neque dolor. Morbi viverra magna vel lectus tincidunt iaculis. Sed mattis fermentum lectus et laoreet. Curabitur nec malesuada elit.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-09-23 11:25:57', '2019-09-23 11:25:57', '', 0, 'http://localhost:8080/lapizeria/?page_id=5', 0, 'page', '', 0),
	(6, 1, '2019-09-17 12:01:46', '2019-09-17 12:01:46', '', 'About', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-17 12:01:46', '2019-09-17 12:01:46', '', 5, 'http://localhost:8080/lapizeria/index.php/2019/09/17/5-revision-v1/', 0, 'revision', '', 0),
	(7, 1, '2019-09-17 12:02:11', '2019-09-17 12:02:11', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-09-17 12:02:11', '2019-09-17 12:02:11', '', 0, 'http://localhost:8080/lapizeria/?page_id=7', 0, 'page', '', 0),
	(8, 1, '2019-09-17 12:02:11', '2019-09-17 12:02:11', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-09-17 12:02:11', '2019-09-17 12:02:11', '', 7, 'http://localhost:8080/lapizeria/index.php/2019/09/17/7-revision-v1/', 0, 'revision', '', 0),
	(9, 1, '2019-09-17 12:02:23', '2019-09-17 12:02:23', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-09-17 12:02:23', '2019-09-17 12:02:23', '', 0, 'http://localhost:8080/lapizeria/?page_id=9', 0, 'page', '', 0),
	(10, 1, '2019-09-17 12:02:23', '2019-09-17 12:02:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-09-17 12:02:23', '2019-09-17 12:02:23', '', 9, 'http://localhost:8080/lapizeria/index.php/2019/09/17/9-revision-v1/', 0, 'revision', '', 0),
	(11, 1, '2019-09-17 12:02:39', '2019-09-17 12:02:39', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-09-17 12:02:39', '2019-09-17 12:02:39', '', 0, 'http://localhost:8080/lapizeria/?page_id=11', 0, 'page', '', 0),
	(12, 1, '2019-09-17 12:02:39', '2019-09-17 12:02:39', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-09-17 12:02:39', '2019-09-17 12:02:39', '', 11, 'http://localhost:8080/lapizeria/index.php/2019/09/17/11-revision-v1/', 0, 'revision', '', 0),
	(13, 1, '2019-09-17 12:04:37', '2019-09-17 12:04:37', '', 'Galery', '', 'publish', 'closed', 'closed', '', 'galery', '', '', '2019-09-17 12:04:37', '2019-09-17 12:04:37', '', 0, 'http://localhost:8080/lapizeria/?page_id=13', 0, 'page', '', 0),
	(14, 1, '2019-09-17 12:04:37', '2019-09-17 12:04:37', '', 'Galery', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-09-17 12:04:37', '2019-09-17 12:04:37', '', 13, 'http://localhost:8080/lapizeria/index.php/2019/09/17/13-revision-v1/', 0, 'revision', '', 0),
	(16, 1, '2019-09-19 11:18:40', '2019-09-19 11:18:40', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2019-09-19 11:49:06', '2019-09-19 11:49:06', '', 0, 'http://localhost:8080/lapizeria/?p=16', 1, 'nav_menu_item', '', 0),
	(17, 1, '2019-09-19 11:18:41', '2019-09-19 11:18:41', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2019-09-19 11:49:06', '2019-09-19 11:49:06', '', 0, 'http://localhost:8080/lapizeria/?p=17', 3, 'nav_menu_item', '', 0),
	(18, 1, '2019-09-19 11:18:41', '2019-09-19 11:18:41', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2019-09-19 11:49:07', '2019-09-19 11:49:07', '', 0, 'http://localhost:8080/lapizeria/?p=18', 5, 'nav_menu_item', '', 0),
	(19, 1, '2019-09-19 11:18:41', '2019-09-19 11:18:41', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2019-09-19 11:49:06', '2019-09-19 11:49:06', '', 0, 'http://localhost:8080/lapizeria/?p=19', 4, 'nav_menu_item', '', 0),
	(22, 1, '2019-09-19 11:20:44', '2019-09-19 11:20:44', '<!-- wp:paragraph -->\n<p>Aliquam nibh orci, congue non nunc id, suscipit mollis quam. Vivamus eu enim justo. Curabitur dignissim, lectus facilisis pellentesque semper, sem libero congue lorem.</p>\n<!-- /wp:paragraph -->', 'Menu', '', 'publish', 'closed', 'closed', '', 'menu', '', '', '2019-09-25 06:25:16', '2019-09-25 06:25:16', '', 0, 'http://localhost:8080/lapizeria/?page_id=22', 0, 'page', '', 0),
	(23, 1, '2019-09-19 11:20:44', '2019-09-19 11:20:44', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-09-19 11:20:44', '2019-09-19 11:20:44', '', 22, 'http://localhost:8080/lapizeria/index.php/2019/09/19/22-revision-v1/', 0, 'revision', '', 0),
	(24, 1, '2019-09-19 11:21:08', '2019-09-19 11:21:08', '', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-19 11:21:08', '2019-09-19 11:21:08', '', 5, 'http://localhost:8080/lapizeria/index.php/2019/09/19/5-revision-v1/', 0, 'revision', '', 0),
	(25, 1, '2019-09-19 11:21:37', '2019-09-19 11:21:37', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2019-09-19 11:49:06', '2019-09-19 11:49:06', '', 0, 'http://localhost:8080/lapizeria/?p=25', 2, 'nav_menu_item', '', 0),
	(26, 1, '2019-09-19 11:59:15', '2019-09-19 11:59:15', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'faceboo', '', '', '2019-09-20 09:53:27', '2019-09-20 09:53:27', '', 0, 'http://localhost:8080/lapizeria/?p=26', 1, 'nav_menu_item', '', 0),
	(27, 1, '2019-09-19 11:59:16', '2019-09-19 11:59:16', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twiter', '', '', '2019-09-20 09:53:27', '2019-09-20 09:53:27', '', 0, 'http://localhost:8080/lapizeria/?p=27', 2, 'nav_menu_item', '', 0),
	(28, 1, '2019-09-19 11:59:16', '2019-09-19 11:59:16', '', 'Pinteres', '', 'publish', 'closed', 'closed', '', 'pinteres', '', '', '2019-09-20 09:53:28', '2019-09-20 09:53:28', '', 0, 'http://localhost:8080/lapizeria/?p=28', 3, 'nav_menu_item', '', 0),
	(29, 1, '2019-09-19 11:59:16', '2019-09-19 11:59:16', '', 'YouTube', '', 'publish', 'closed', 'closed', '', 'youtube', '', '', '2019-09-20 09:53:28', '2019-09-20 09:53:28', '', 0, 'http://localhost:8080/lapizeria/?p=29', 4, 'nav_menu_item', '', 0),
	(30, 1, '2019-09-19 11:59:16', '2019-09-19 11:59:16', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2019-09-20 09:53:28', '2019-09-20 09:53:28', '', 0, 'http://localhost:8080/lapizeria/?p=30', 5, 'nav_menu_item', '', 0),
	(31, 1, '2019-09-23 06:04:44', '2019-09-23 06:04:44', '', 'transparent_pizza', '', 'inherit', 'open', 'closed', '', 'transparent_pizza', '', '', '2019-09-23 06:04:44', '2019-09-23 06:04:44', '', 5, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/transparent_pizza.gif', 0, 'attachment', 'image/gif', 0),
	(34, 1, '2019-09-23 06:11:41', '2019-09-23 06:11:41', '', 'featured', '', 'inherit', 'open', 'closed', '', 'featured', '', '', '2019-09-23 06:11:41', '2019-09-23 06:11:41', '', 5, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/featured.jpg', 0, 'attachment', 'image/jpeg', 0),
	(35, 1, '2019-09-23 06:11:49', '2019-09-23 06:11:49', '<!-- wp:paragraph -->\n<p>Aliquam nibh orci, congue non nunc id, suscipit mollis quam. Vivamus eu enim justo. Curabitur dignissim, lectus facilisis pellentesque semper, sem libero congue lorem, a blandit nisi mi ac erat. Morbi a lectus quis mi congue lacinia. Pellentesque nec lectus non neque venenatis sagittis. Nam ultricies, massa ac ullamcorper faucibus, velit lectus dictum dolor, nec porta odio diam vitae turpis. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut aliquam diam quis faucibus elementum. Etiam at semper nisi. Vivamus at cursus eros. Praesent in neque dolor. Morbi viverra magna vel lectus tincidunt iaculis. Sed mattis fermentum lectus et laoreet. Curabitur nec malesuada elit.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-23 06:11:49', '2019-09-23 06:11:49', '', 5, 'http://localhost:8080/lapizeria/index.php/2019/09/23/5-revision-v1/', 0, 'revision', '', 0),
	(37, 1, '2019-09-23 10:22:29', '2019-09-23 10:22:29', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"5";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'About us', 'about-us', 'publish', 'closed', 'closed', '', 'group_5d889bd4d09c6', '', '', '2019-09-23 13:02:59', '2019-09-23 13:02:59', '', 0, 'http://localhost:8080/lapizeria/?post_type=acf-field-group&#038;p=37', 0, 'acf-field-group', '', 0),
	(38, 1, '2019-09-23 10:22:29', '2019-09-23 10:22:29', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'image1', 'image1', 'publish', 'closed', 'closed', '', 'field_5d889c095eb5b', '', '', '2019-09-23 13:02:59', '2019-09-23 13:02:59', '', 37, 'http://localhost:8080/lapizeria/?post_type=acf-field&#038;p=38', 1, 'acf-field', '', 0),
	(39, 1, '2019-09-23 10:28:27', '2019-09-23 10:28:27', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Description1', 'description1', 'publish', 'closed', 'closed', '', 'field_5d889dfc40f59', '', '', '2019-09-23 10:42:41', '2019-09-23 10:42:41', '', 37, 'http://localhost:8080/lapizeria/?post_type=acf-field&#038;p=39', 2, 'acf-field', '', 0),
	(41, 1, '2019-09-23 10:39:29', '2019-09-23 10:39:29', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'image2', 'image2', 'publish', 'closed', 'closed', '', 'field_5d88a0c958f08', '', '', '2019-09-23 13:02:59', '2019-09-23 13:02:59', '', 37, 'http://localhost:8080/lapizeria/?post_type=acf-field&#038;p=41', 4, 'acf-field', '', 0),
	(42, 1, '2019-09-23 10:40:49', '2019-09-23 10:40:49', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'image3', 'image3', 'publish', 'closed', 'closed', '', 'field_5d88a10fa75f3', '', '', '2019-09-23 13:02:59', '2019-09-23 13:02:59', '', 37, 'http://localhost:8080/lapizeria/?post_type=acf-field&#038;p=42', 7, 'acf-field', '', 0),
	(43, 1, '2019-09-23 10:40:49', '2019-09-23 10:40:49', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Description2', 'description2', 'publish', 'closed', 'closed', '', 'field_5d88a11ca75f4', '', '', '2019-09-23 10:42:41', '2019-09-23 10:42:41', '', 37, 'http://localhost:8080/lapizeria/?post_type=acf-field&#038;p=43', 5, 'acf-field', '', 0),
	(44, 1, '2019-09-23 10:40:49', '2019-09-23 10:40:49', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Description3', 'description3', 'publish', 'closed', 'closed', '', 'field_5d88a123a75f5', '', '', '2019-09-23 10:42:41', '2019-09-23 10:42:41', '', 37, 'http://localhost:8080/lapizeria/?post_type=acf-field&#038;p=44', 8, 'acf-field', '', 0),
	(45, 1, '2019-09-23 10:42:41', '2019-09-23 10:42:41', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Field1', 'field1', 'publish', 'closed', 'closed', '', 'field_5d88a14c630e2', '', '', '2019-09-23 10:42:41', '2019-09-23 10:42:41', '', 37, 'http://localhost:8080/lapizeria/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
	(46, 1, '2019-09-23 10:42:41', '2019-09-23 10:42:41', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Field2', 'field1_copy', 'publish', 'closed', 'closed', '', 'field_5d88a168630e3', '', '', '2019-09-23 10:42:41', '2019-09-23 10:42:41', '', 37, 'http://localhost:8080/lapizeria/?post_type=acf-field&p=46', 3, 'acf-field', '', 0),
	(47, 1, '2019-09-23 10:42:41', '2019-09-23 10:42:41', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Field3', 'field1_copy2', 'publish', 'closed', 'closed', '', 'field_5d88a18a630e4', '', '', '2019-09-23 10:42:41', '2019-09-23 10:42:41', '', 37, 'http://localhost:8080/lapizeria/?post_type=acf-field&p=47', 6, 'acf-field', '', 0),
	(48, 1, '2019-09-23 11:20:23', '2019-09-23 11:20:23', '', 'about_01', '', 'inherit', 'open', 'closed', '', 'about_01', '', '', '2019-09-23 11:20:23', '2019-09-23 11:20:23', '', 5, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/about_01.jpg', 0, 'attachment', 'image/jpeg', 0),
	(49, 1, '2019-09-23 11:20:25', '2019-09-23 11:20:25', '', 'about_02', '', 'inherit', 'open', 'closed', '', 'about_02', '', '', '2019-09-23 11:20:25', '2019-09-23 11:20:25', '', 5, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/about_02.jpg', 0, 'attachment', 'image/jpeg', 0),
	(50, 1, '2019-09-23 11:20:26', '2019-09-23 11:20:26', '', 'about_03', '', 'inherit', 'open', 'closed', '', 'about_03', '', '', '2019-09-23 11:20:26', '2019-09-23 11:20:26', '', 5, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/about_03.jpg', 0, 'attachment', 'image/jpeg', 0),
	(51, 1, '2019-09-23 11:25:57', '2019-09-23 11:25:57', '<!-- wp:paragraph -->\n<p>Aliquam nibh orci, congue non nunc id, suscipit mollis quam. Vivamus eu enim justo. Curabitur dignissim, lectus facilisis pellentesque semper, sem libero congue lorem, a blandit nisi mi ac erat. Morbi a lectus quis mi congue lacinia. Pellentesque nec lectus non neque venenatis sagittis. Nam ultricies, massa ac ullamcorper faucibus, velit lectus dictum dolor, nec porta odio diam vitae turpis. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut aliquam diam quis faucibus elementum. Etiam at semper nisi. Vivamus at cursus eros. Praesent in neque dolor. Morbi viverra magna vel lectus tincidunt iaculis. Sed mattis fermentum lectus et laoreet. Curabitur nec malesuada elit.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-09-23 11:25:57', '2019-09-23 11:25:57', '', 5, 'http://localhost:8080/lapizeria/index.php/2019/09/23/5-revision-v1/', 0, 'revision', '', 0),
	(52, 1, '2019-09-25 06:25:16', '2019-09-25 06:25:16', '<!-- wp:paragraph -->\n<p>Aliquam nibh orci, congue non nunc id, suscipit mollis quam. Vivamus eu enim justo. Curabitur dignissim, lectus facilisis pellentesque semper, sem libero congue lorem.</p>\n<!-- /wp:paragraph -->', 'Menu', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-09-25 06:25:16', '2019-09-25 06:25:16', '', 22, 'http://localhost:8080/lapizeria/index.php/2019/09/25/22-revision-v1/', 0, 'revision', '', 0),
	(53, 1, '2019-09-25 08:11:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-25 08:11:45', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/lapizeria/?post_type=specialties&p=53', 0, 'specialties', '', 0),
	(54, 1, '2019-09-25 08:26:19', '2019-09-25 08:26:19', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"specialties";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Our Specialists', 'our-specialists', 'publish', 'closed', 'closed', '', 'group_5d8b23cdf18bc', '', '', '2019-09-25 08:26:27', '2019-09-25 08:26:27', '', 0, 'http://localhost:8080/lapizeria/?post_type=acf-field-group&#038;p=54', 0, 'acf-field-group', '', 0),
	(55, 1, '2019-09-25 08:26:19', '2019-09-25 08:26:19', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:21:"Insert price for menu";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Price', 'price', 'publish', 'closed', 'closed', '', 'field_5d8b24728f624', '', '', '2019-09-25 08:26:19', '2019-09-25 08:26:19', '', 54, 'http://localhost:8080/lapizeria/?post_type=acf-field&p=55', 0, 'acf-field', '', 0),
	(57, 1, '2019-09-25 08:26:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-25 08:26:31', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/lapizeria/?post_type=specialties&p=57', 0, 'specialties', '', 0),
	(58, 1, '2019-09-25 10:36:01', '2019-09-25 10:36:01', 'Loaded with our mozzarella romano parmesan cheese blend and topped with sharp cheddar cheese.', 'Cheese', '', 'publish', 'closed', 'closed', '', 'cheese', '', '', '2019-09-25 12:48:16', '2019-09-25 12:48:16', '', 0, 'http://localhost:8080/lapizeria/?post_type=specialties&#038;p=58', 0, 'specialties', '', 0),
	(59, 1, '2019-09-25 10:35:52', '2019-09-25 10:35:52', '', 'pizza_01', '', 'inherit', 'open', 'closed', '', 'pizza_01', '', '', '2019-09-25 10:35:52', '2019-09-25 10:35:52', '', 58, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/pizza_01.jpg', 0, 'attachment', 'image/jpeg', 0),
	(60, 1, '2019-09-25 10:36:38', '2019-09-25 10:36:38', 'Generous portion of lean-ground beef, bacon, mozzarella and topped with sharp cheddar cheese.', 'Bacon', '', 'publish', 'closed', 'closed', '', 'bacon', '', '', '2019-09-25 12:46:51', '2019-09-25 12:46:51', '', 0, 'http://localhost:8080/lapizeria/?post_type=specialties&#038;p=60', 0, 'specialties', '', 0),
	(61, 1, '2019-09-25 10:36:31', '2019-09-25 10:36:31', '', 'pizza_02', '', 'inherit', 'open', 'closed', '', 'pizza_02', '', '', '2019-09-25 10:36:31', '2019-09-25 10:36:31', '', 60, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/pizza_02.jpg', 0, 'attachment', 'image/jpeg', 0),
	(62, 1, '2019-09-25 10:37:13', '2019-09-25 10:37:13', 'Mushroom, black and green olives, onion, green paper, parmesan cheese.', 'Vegetarian', '', 'publish', 'closed', 'closed', '', 'vegetarian', '', '', '2019-09-25 12:49:12', '2019-09-25 12:49:12', '', 0, 'http://localhost:8080/lapizeria/?post_type=specialties&#038;p=62', 0, 'specialties', '', 0),
	(63, 1, '2019-09-25 10:37:07', '2019-09-25 10:37:07', '', 'pizza_03', '', 'inherit', 'open', 'closed', '', 'pizza_03', '', '', '2019-09-25 10:37:07', '2019-09-25 10:37:07', '', 62, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/pizza_03.jpg', 0, 'attachment', 'image/jpeg', 0),
	(64, 1, '2019-09-25 10:37:47', '2019-09-25 10:37:47', 'Pepperoni, Italian sausage, ground beef, onion, green pepper, black olives and jalapeños.', 'Special', '', 'publish', 'closed', 'closed', '', 'special', '', '', '2019-09-25 10:37:47', '2019-09-25 10:37:47', '', 0, 'http://localhost:8080/lapizeria/?post_type=specialties&#038;p=64', 0, 'specialties', '', 0),
	(65, 1, '2019-09-25 10:37:39', '2019-09-25 10:37:39', '', 'pizza_04', '', 'inherit', 'open', 'closed', '', 'pizza_04', '', '', '2019-09-25 10:37:39', '2019-09-25 10:37:39', '', 64, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/pizza_04.jpg', 0, 'attachment', 'image/jpeg', 0),
	(66, 1, '2019-09-25 10:38:32', '2019-09-25 10:38:32', 'Spinach, onion, tomato, fresh garlic, cheese blend and topped with sharp cheddar cheese.', 'Spinach', '', 'publish', 'closed', 'closed', '', 'spinach', '', '', '2019-09-25 10:38:32', '2019-09-25 10:38:32', '', 0, 'http://localhost:8080/lapizeria/?post_type=specialties&#038;p=66', 0, 'specialties', '', 0),
	(67, 1, '2019-09-25 10:38:26', '2019-09-25 10:38:26', '', 'pizza_05', '', 'inherit', 'open', 'closed', '', 'pizza_05', '', '', '2019-09-25 10:38:26', '2019-09-25 10:38:26', '', 66, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/pizza_05.jpg', 0, 'attachment', 'image/jpeg', 0),
	(68, 1, '2019-09-25 10:39:09', '2019-09-25 10:39:09', 'Mozzarella, pepperoni, ham, Italian sausage, bacon, onions, green peppers and black olives', 'White Pizza', '', 'publish', 'closed', 'closed', '', 'white-pizza', '', '', '2019-09-25 12:54:49', '2019-09-25 12:54:49', '', 0, 'http://localhost:8080/lapizeria/?post_type=specialties&#038;p=68', 0, 'specialties', '', 0),
	(69, 1, '2019-09-25 10:39:03', '2019-09-25 10:39:03', '', 'pizza_06', '', 'inherit', 'open', 'closed', '', 'pizza_06', '', '', '2019-09-25 10:39:03', '2019-09-25 10:39:03', '', 68, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/pizza_06.jpg', 0, 'attachment', 'image/jpeg', 0),
	(70, 1, '2019-09-25 10:39:53', '2019-09-25 10:39:53', 'Served with salad and garlic bread, spaguetti with chicken or beef ground', 'Pasta', '', 'publish', 'closed', 'closed', '', 'pasta', '', '', '2019-09-25 10:39:53', '2019-09-25 10:39:53', '', 0, 'http://localhost:8080/lapizeria/?post_type=specialties&#038;p=70', 0, 'specialties', '', 0),
	(71, 1, '2019-09-25 10:39:47', '2019-09-25 10:39:47', '', 'others_01', '', 'inherit', 'open', 'closed', '', 'others_01', '', '', '2019-09-25 10:39:47', '2019-09-25 10:39:47', '', 70, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/others_01.jpg', 0, 'attachment', 'image/jpeg', 0),
	(72, 1, '2019-09-25 10:40:35', '2019-09-25 10:40:35', 'Generously stuffed, carefully folded, baked to perfection and covered with our original garlic-butter sauce', 'Calzone', '', 'publish', 'closed', 'closed', '', 'calzone', '', '', '2019-09-25 10:40:35', '2019-09-25 10:40:35', '', 0, 'http://localhost:8080/lapizeria/?post_type=specialties&#038;p=72', 0, 'specialties', '', 0),
	(73, 1, '2019-09-25 10:40:27', '2019-09-25 10:40:27', '', 'others_02', '', 'inherit', 'open', 'closed', '', 'others_02', '', '', '2019-09-25 10:40:27', '2019-09-25 10:40:27', '', 72, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/others_02.jpg', 0, 'attachment', 'image/jpeg', 0),
	(74, 1, '2019-09-25 10:41:17', '2019-09-25 10:41:17', 'Layers of sausage, meatball and our own blend of four cheeses, baked to perfection', 'Lasagna', '', 'publish', 'closed', 'closed', '', 'lasagna', '', '', '2019-09-25 10:41:17', '2019-09-25 10:41:17', '', 0, 'http://localhost:8080/lapizeria/?post_type=specialties&#038;p=74', 0, 'specialties', '', 0),
	(75, 1, '2019-09-25 10:41:11', '2019-09-25 10:41:11', '', 'others_03', '', 'inherit', 'open', 'closed', '', 'others_03', '', '', '2019-09-25 10:41:11', '2019-09-25 10:41:11', '', 74, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/others_03.jpg', 0, 'attachment', 'image/jpeg', 0),
	(76, 1, '2019-09-25 10:41:50', '2019-09-25 10:41:50', 'Lettuce, grilled chicken, grape tomatoes, shredded parmesan &amp; croutons', 'Salad', '', 'publish', 'closed', 'closed', '', 'salad', '', '', '2019-09-25 10:41:50', '2019-09-25 10:41:50', '', 0, 'http://localhost:8080/lapizeria/?post_type=specialties&#038;p=76', 0, 'specialties', '', 0),
	(77, 1, '2019-09-25 10:41:45', '2019-09-25 10:41:45', '', 'others_04', '', 'inherit', 'open', 'closed', '', 'others_04', '', '', '2019-09-25 10:41:45', '2019-09-25 10:41:45', '', 76, 'http://localhost:8080/lapizeria/wp-content/uploads/2019/09/others_04.jpg', 0, 'attachment', 'image/jpeg', 0),
	(78, 1, '2019-09-25 12:47:34', '2019-09-25 12:47:34', 'Loaded with our mozzarella romano parmesan cheese blend and topped with sharp cheddar cheese.', 'Cheese', '', 'inherit', 'closed', 'closed', '', '58-autosave-v1', '', '', '2019-09-25 12:47:34', '2019-09-25 12:47:34', '', 58, 'http://localhost:8080/lapizeria/index.php/2019/09/25/58-autosave-v1/', 0, 'revision', '', 0),
	(79, 1, '2019-09-25 12:54:46', '2019-09-25 12:54:46', 'Mozzarella, pepperoni, ham, Italian sausage, bacon, onions, green peppers and black olives', 'White Pizza', '', 'inherit', 'closed', 'closed', '', '68-autosave-v1', '', '', '2019-09-25 12:54:46', '2019-09-25 12:54:46', '', 68, 'http://localhost:8080/lapizeria/index.php/2019/09/25/68-autosave-v1/', 0, 'revision', '', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

-- Dumping structure for table lapizeria_wp.wp_termmeta
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapizeria_wp.wp_termmeta: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;

-- Dumping structure for table lapizeria_wp.wp_terms
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapizeria_wp.wp_terms: ~5 rows (approximately)
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
REPLACE INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Uncategorized', 'uncategorized', 0),
	(2, 'Header Menu', 'header-menu', 0),
	(3, 'Social Menu', 'social-menu', 0),
	(4, 'Pizzas', 'pizzas', 0),
	(5, 'Others', 'others', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;

-- Dumping structure for table lapizeria_wp.wp_term_relationships
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapizeria_wp.wp_term_relationships: ~21 rows (approximately)
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
REPLACE INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(1, 1, 0),
	(16, 2, 0),
	(17, 2, 0),
	(18, 2, 0),
	(19, 2, 0),
	(25, 2, 0),
	(26, 3, 0),
	(27, 3, 0),
	(28, 3, 0),
	(29, 3, 0),
	(30, 3, 0),
	(58, 4, 0),
	(60, 4, 0),
	(62, 4, 0),
	(64, 4, 0),
	(66, 4, 0),
	(68, 4, 0),
	(70, 5, 0),
	(72, 5, 0),
	(74, 5, 0),
	(76, 5, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;

-- Dumping structure for table lapizeria_wp.wp_term_taxonomy
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapizeria_wp.wp_term_taxonomy: ~5 rows (approximately)
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
REPLACE INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 1),
	(2, 2, 'nav_menu', '', 0, 5),
	(3, 3, 'nav_menu', '', 0, 5),
	(4, 4, 'category', '', 0, 6),
	(5, 5, 'category', '', 0, 4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;

-- Dumping structure for table lapizeria_wp.wp_usermeta
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapizeria_wp.wp_usermeta: ~23 rows (approximately)
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
REPLACE INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
	(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(13, 1, 'wp_user_level', '10'),
	(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,plugin_editor_notice'),
	(15, 1, 'show_welcome_panel', '1'),
	(16, 1, 'session_tokens', 'a:2:{s:64:"b33201879b9296f59e87aadfd5bbb1f771b7cd8f871836b292a1c861468671f4";a:4:{s:10:"expiration";i:1569391196;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36";s:5:"login";i:1569218396;}s:64:"348e9d24124f64c8e771ba700164dbf79084659059f7b607c85156a2624658ef";a:4:{s:10:"expiration";i:1569478730;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36";s:5:"login";i:1569305930;}}'),
	(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
	(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
	(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
	(20, 1, 'nav_menu_recently_edited', '3'),
	(21, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=0&editor=tinymce'),
	(22, 1, 'wp_user-settings-time', '1569415715'),
	(23, 1, 'closedpostboxes_acf-field-group', 'a:1:{i:0;s:25:"acf-field-group-locations";}'),
	(24, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:"slugdiv";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;

-- Dumping structure for table lapizeria_wp.wp_users
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lapizeria_wp.wp_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
REPLACE INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'admin', '$P$BZfjZfgpKV5dozGS17cPcd/aFMvfAR.', 'admin', 'dejozcg@yahoo.com', '', '2019-09-17 10:28:22', '', 0, 'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
