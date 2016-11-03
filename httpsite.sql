-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 03 Novembre 2016 à 10:23
-- Version du serveur :  10.1.16-MariaDB
-- Version de PHP :  7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `houmty`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_commentmeta`
--

CREATE TABLE `wp_2_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_comments`
--

CREATE TABLE `wp_2_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_2_comments`
--

INSERT INTO `wp_2_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'http://klivin-pc/houmty/', '', '2016-10-30 13:11:37', '2016-10-30 12:11:37', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 10, 'msbenbakh', 'msbenbakh@gmail.com', '', '127.0.0.1', '2016-10-31 19:16:21', '2016-10-31 19:16:21', 'teste commentaire', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_links`
--

CREATE TABLE `wp_2_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_newsletter`
--

CREATE TABLE `wp_2_newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `surname` varchar(100) NOT NULL DEFAULT '',
  `sex` char(1) NOT NULL DEFAULT 'n',
  `status` char(1) NOT NULL DEFAULT 'S',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(50) NOT NULL DEFAULT '',
  `feed` tinyint(4) NOT NULL DEFAULT '0',
  `feed_time` bigint(20) NOT NULL DEFAULT '0',
  `country` varchar(4) NOT NULL DEFAULT '',
  `list_1` tinyint(4) NOT NULL DEFAULT '0',
  `list_2` tinyint(4) NOT NULL DEFAULT '0',
  `list_3` tinyint(4) NOT NULL DEFAULT '0',
  `list_4` tinyint(4) NOT NULL DEFAULT '0',
  `list_5` tinyint(4) NOT NULL DEFAULT '0',
  `list_6` tinyint(4) NOT NULL DEFAULT '0',
  `list_7` tinyint(4) NOT NULL DEFAULT '0',
  `list_8` tinyint(4) NOT NULL DEFAULT '0',
  `list_9` tinyint(4) NOT NULL DEFAULT '0',
  `list_10` tinyint(4) NOT NULL DEFAULT '0',
  `list_11` tinyint(4) NOT NULL DEFAULT '0',
  `list_12` tinyint(4) NOT NULL DEFAULT '0',
  `list_13` tinyint(4) NOT NULL DEFAULT '0',
  `list_14` tinyint(4) NOT NULL DEFAULT '0',
  `list_15` tinyint(4) NOT NULL DEFAULT '0',
  `list_16` tinyint(4) NOT NULL DEFAULT '0',
  `list_17` tinyint(4) NOT NULL DEFAULT '0',
  `list_18` tinyint(4) NOT NULL DEFAULT '0',
  `list_19` tinyint(4) NOT NULL DEFAULT '0',
  `list_20` tinyint(4) NOT NULL DEFAULT '0',
  `profile_1` varchar(255) NOT NULL DEFAULT '',
  `profile_2` varchar(255) NOT NULL DEFAULT '',
  `profile_3` varchar(255) NOT NULL DEFAULT '',
  `profile_4` varchar(255) NOT NULL DEFAULT '',
  `profile_5` varchar(255) NOT NULL DEFAULT '',
  `profile_6` varchar(255) NOT NULL DEFAULT '',
  `profile_7` varchar(255) NOT NULL DEFAULT '',
  `profile_8` varchar(255) NOT NULL DEFAULT '',
  `profile_9` varchar(255) NOT NULL DEFAULT '',
  `profile_10` varchar(255) NOT NULL DEFAULT '',
  `profile_11` varchar(255) NOT NULL DEFAULT '',
  `profile_12` varchar(255) NOT NULL DEFAULT '',
  `profile_13` varchar(255) NOT NULL DEFAULT '',
  `profile_14` varchar(255) NOT NULL DEFAULT '',
  `profile_15` varchar(255) NOT NULL DEFAULT '',
  `profile_16` varchar(255) NOT NULL DEFAULT '',
  `profile_17` varchar(255) NOT NULL DEFAULT '',
  `profile_18` varchar(255) NOT NULL DEFAULT '',
  `profile_19` varchar(255) NOT NULL DEFAULT '',
  `profile_20` varchar(255) NOT NULL DEFAULT '',
  `referrer` varchar(50) NOT NULL DEFAULT '',
  `http_referer` varchar(255) NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT '0',
  `flow` tinyint(4) NOT NULL DEFAULT '0',
  `unsub_email_id` int(11) NOT NULL DEFAULT '0',
  `unsub_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_2_newsletter`
--

INSERT INTO `wp_2_newsletter` (`id`, `email`, `name`, `surname`, `sex`, `status`, `created`, `token`, `feed`, `feed_time`, `country`, `list_1`, `list_2`, `list_3`, `list_4`, `list_5`, `list_6`, `list_7`, `list_8`, `list_9`, `list_10`, `list_11`, `list_12`, `list_13`, `list_14`, `list_15`, `list_16`, `list_17`, `list_18`, `list_19`, `list_20`, `profile_1`, `profile_2`, `profile_3`, `profile_4`, `profile_5`, `profile_6`, `profile_7`, `profile_8`, `profile_9`, `profile_10`, `profile_11`, `profile_12`, `profile_13`, `profile_14`, `profile_15`, `profile_16`, `profile_17`, `profile_18`, `profile_19`, `profile_20`, `referrer`, `http_referer`, `wp_user_id`, `ip`, `test`, `flow`, `unsub_email_id`, `unsub_time`) VALUES
(1, 'm.s.benbakh@gmail.com', '', '', 'n', 'S', '2016-10-30 20:23:28', '90dbc315ab', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'widget', 'http://klivin-pc/houmty/ar/2016/10/30/%d9%85%d9%81%d8%a7%d9%88%d8%b6%d8%a7%d8%aa-%d9%85%d8%b1%d8%a7%d9%83%d8%b4-%d9%84%d8%aa%d8%ba%d9%8a%d8%b1-%d8%a7%d9%84%d9%85%d9%86%d8%a7%d8%ae-%d9%85%d9%87%d9%85%d8%a9-%d9%84%d9%84%d9%85%d9%86%d8%b7/', 0, '127.0.0.1', 0, 0, 0, 0),
(2, 'benbakhayoub@gmail.com', '', '', 'n', 'S', '2016-10-30 20:23:45', '89336e0604', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'widget', 'http://klivin-pc/houmty/ar/newsletter/?nm=confirmation&nk=1-90dbc315ab', 0, '127.0.0.1', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_newsletter_emails`
--

CREATE TABLE `wp_2_newsletter_emails` (
  `id` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `message_text` longtext COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','sending','sent','paused') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT '0',
  `last_id` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `send_on` int(11) NOT NULL DEFAULT '0',
  `track` tinyint(4) NOT NULL DEFAULT '0',
  `editor` tinyint(4) NOT NULL DEFAULT '0',
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` longtext COLLATE utf8mb4_unicode_ci,
  `preferences` longtext COLLATE utf8mb4_unicode_ci,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `token` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `open_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `click_count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_newsletter_sent`
--

CREATE TABLE `wp_2_newsletter_sent` (
  `email_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `open` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `error` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_newsletter_stats`
--

CREATE TABLE `wp_2_newsletter_stats` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_id` int(11) NOT NULL DEFAULT '0',
  `link_id` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `anchor` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_options`
--

CREATE TABLE `wp_2_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_2_options`
--

INSERT INTO `wp_2_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.houmty.com', 'yes'),
(2, 'home', 'http://www.houmty.com', 'yes'),
(3, 'blogname', 'حومتي', 'yes'),
(4, 'blogdescription', 'مجلة البيئة', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'msbenbakh@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:40:"custom-user-profile-photo/3five_cupp.php";i:1;s:21:"newsletter/plugin.php";i:2;s:51:"wordpress-popular-posts/wordpress-popular-posts.php";i:3;s:21:"wp-polls/wp-polls.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '1', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'jarida', 'yes'),
(41, 'stylesheet', 'jarida', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:3;a:4:{s:5:"title";s:14:"الأقسام";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Africa/Casablanca', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_2_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:12:"manage_polls";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:11:{s:24:"third-footer-widget-area";a:1:{i:0;s:22:"authors-posts-widget-2";}s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:5:{i:0;s:17:"facebook-widget-2";i:1;s:18:"newsletterwidget-2";i:2;s:19:"posts-list-widget-2";i:3;s:14:"polls-widget-3";i:4;s:5:"wpp-3";}s:26:"narrow-primary-widget-area";a:3:{i:0;s:17:"news-pic-widget-3";i:1;s:12:"categories-3";i:2;s:11:"tag_cloud-2";}s:28:"homepage-normal-widget-area1";a:0:{}s:28:"homepage-normal-widget-area2";a:0:{}s:28:"homepage-narrow-widget-area1";a:0:{}s:28:"homepage-narrow-widget-area2";a:0:{}s:24:"first-footer-widget-area";a:1:{i:0;s:20:"author_post_widget-4";}s:25:"second-footer-widget-area";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(98, 'WPLANG', 'ar', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:2:{i:2;a:2:{s:5:"title";s:23:"كلمات دلالية";s:8:"taxonomy";s:8:"post_tag";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:5:{i:1478164921;a:1:{s:10:"newsletter";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"newsletter";s:4:"args";a:0:{}s:8:"interval";i:300;}}}i:1478175106;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1478175142;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1478188975;a:1:{s:10:"polls_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(105, '_transient_timeout_feed_66a70e9599b658d5cc038e8074597e7c', '1477872707', 'no');
INSERT INTO `wp_2_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(106, '_transient_feed_66a70e9599b658d5cc038e8074597e7c', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:4:"WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:16:"https://wpfr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:31:"Site officiel de la communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 30 Oct 2016 12:02:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"Un nouveau site pour WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/5e8SDCecxmc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:44:"https://wpfr.net/nouveau-site-wpfr/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 15 Sep 2016 07:59:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1566674";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1538:"Après plus de quatre mois de chantier, nous sommes fiers de vous présenter le nouveau site WPFR ! Nous l’avions annoncé en mai, le site de l’association était en cours de refonte, l’ancien étant dépassé tant en termes d’aspect que de fonctionnalités. Une quinzaine de bénévoles ont répondu à notre appel pour travailler avec nous sur ce projet. Cette entreprise a aujourd’hui porté<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5e8SDCecxmc:fbo_cDZLcxU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5e8SDCecxmc:fbo_cDZLcxU:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/5e8SDCecxmc" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wpfr.net/nouveau-site-wpfr/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"29";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:35:"https://wpfr.net/nouveau-site-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Des nouvelles de WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/gVGKhQeZUVA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 May 2016 13:09:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562931";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1491:"Le 21 décembre dernier nous avions le plaisir de vous faire partager des informations à propos du renouveau de l&#8217;association WordPress Francophone. Ces derniers mois ont été l&#8217;occasion de tout remettre à plat et nous souhaitions vous donner des nouvelles sur les différents chantiers en cours. C&#8217;est également le moment de faire appel à la<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=gVGKhQeZUVA:imN45c6OHhM:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=gVGKhQeZUVA:imN45c6OHhM:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/gVGKhQeZUVA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:32:"https://wpfr.net/nouvelles-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"En route vers le nouveau site !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/F12flxi-44w/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/volontaires-chantiers-site-forum/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Jun 2016 13:07:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562923";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1445:"Lors de l’article du 23 mai, nous avons proposé à celles et ceux qui le souhaitaient de participer à la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont répondu à notre appel, nous les en remercions ! Les participants ont reçu les indications pour nous rejoindre sur le slack de<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=F12flxi-44w:0Fe3pnVtRWg:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=F12flxi-44w:0Fe3pnVtRWg:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/F12flxi-44w" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wpfr.net/volontaires-chantiers-site-forum/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wpfr.net/volontaires-chantiers-site-forum/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"Rencontre avec Jenny Beaumont à propos des WordCamp Europe 2016 et 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/2XGXo5--k90/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 30 Jun 2016 13:05:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562840";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1471:"Bonjour Jenny, rappelles-nous qui tu es en quelques mots et plus précisément quelle est ton implication au sein de la communauté WordPress ? Je travaille dans et autour du web depuis 1998, époque qui coincide avec mon arrivée en France (des États-unis). J’avais commencé par monter une agence de création de sites avec deux collègues,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=2XGXo5--k90:Fz7KeESl4Oc:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=2XGXo5--k90:Fz7KeESl4Oc:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/2XGXo5--k90" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/rencontre-jenny-beaumont-wordcamp-europe/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Un logo pour l’association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/cEo2U8QD2SE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 06 Jul 2016 12:52:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562643";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Bonjour à tous ! C&#8217;est l&#8217;heure des vacances pour certains et le moment de vous donner des nouvelles de l&#8217;évolution des chantiers de l&#8217;association. Le mois dernier nous avions constitué des groupes de travail pour s&#8217;attaquer à la refonte du site. Lors des premiers échanges, nous avons relevé que l&#8217;association WPFR n&#8217;avait pas de logo<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=cEo2U8QD2SE:zhkFqo_n7HU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=cEo2U8QD2SE:zhkFqo_n7HU:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/cEo2U8QD2SE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wpfr.net/logo-lassociation-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress, Yahoo et les autres …";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/yJpv_mr9BZQ/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wpfr.net/wordpress-yahoo-et-les-autres/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Dec 2005 13:00:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Blogosphere";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Brèves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://www.wordpress-fr.net/?p=59";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1483:"Yahoo qui propose désormais un service d&#8217;hébergement, s&#8217;est associé à WordPress pour compléter son offre. En effet Yahoo propose WordPress comme outils de Blog. N&#8217;ayant pas pu tester ce service je vous renvoie sur les pages qui lui sont consacrées. Sur le site officiel de WordPress. sur le site de Yahoo Small Business. Par ailleurs<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=yJpv_mr9BZQ:DkMH2ZCYPhw:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=yJpv_mr9BZQ:DkMH2ZCYPhw:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/yJpv_mr9BZQ" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Damino";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/wordpress-yahoo-et-les-autres/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpfr.net/wordpress-yahoo-et-les-autres/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"WP2 naitra dans un monde moins Libre ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/z7HUvGWmQxI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Dec 2005 11:26:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:72:"http://www.wordpress-fr.net/2005/wp2-naitra-dans-un-monde-moins-libre-6/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1471:"La blogosphère bruisse d&#8217;une rumeur persistante : WP2 va sortir dans quelques jours (la semaine à venir). Je sais que le très actif BenKenobi (retrouvez le sur le forum) à déjà pas mal fait le tour de la question que cette deuxième version en détaillant les nouvelles fonctionnalités. Nous écrira t-il quelquechose de plus épais<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=z7HUvGWmQxI:CpDM9SVjI4o:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=z7HUvGWmQxI:CpDM9SVjI4o:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/z7HUvGWmQxI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Amaury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"WordPress chez les Helvètes, et en Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/6aodNwnlWuE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 22 Nov 2005 14:13:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Blogosphere";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Brèves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://www.wordpress-fr.net/?p=47";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Ce n&#8217;est pas sans une émotion toute lacrymale que j&#8217;écris ce petit billet, pour vous annoncer deux excellentes nouvelles. Tout d&#8217;abord, la blogosphère wordpressienne francophone (à lire très vite) s&#8217;est agrandie récemment, sous la forme de WordPress.ch, qui a reçu sa première fessée, et donc poussé son premier et rassurant cri de nouveau né, pas<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=6aodNwnlWuE:KYNsvfSW7ZA:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=6aodNwnlWuE:KYNsvfSW7ZA:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/6aodNwnlWuE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Xavier Borderie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"14";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress 2 BETA 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/0QLk4sv5hgg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpfr.net/wordpress-2-beta-1/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 19 Nov 2005 08:42:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:52:"http://www.wordpress-fr.net/2005/wordpress-2-beta-1/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1204:"La version BETA 1 de WordPress 2 vient d&#8217;être lâchée dans la nature Essayez la et dites nous ce que vous en pensez. Si vous avez un compte WP.com vous n&#8217;allez pas être dépaysé. Via Lunacy Unleashed<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=0QLk4sv5hgg:etBDZeDC8Rw:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=0QLk4sv5hgg:etBDZeDC8Rw:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/0QLk4sv5hgg" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Amaury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:41:"https://wpfr.net/wordpress-2-beta-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:36:"https://wpfr.net/wordpress-2-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"Damned (un truc&amp;astuce en passant)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/-y9nIySAPJA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:33:"https://wpfr.net/damned/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Nov 2005 15:45:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:7:"Thèmes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"http://www.wordpress-fr.net/2005/damned/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1426:"Un de mes neveux (10 ans) : Qu&#8217;est ce que tu fais ? Moi : Tu te souviens hier quand je t&#8217;ai expliqué comment marchait wordpress, les plugins, les thèmes etc..? Lui : oui Moi : Hé bien là je cherche un plugin efficace qui, une fois activé, coupe l&#8217;accès au blog avec un message<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=-y9nIySAPJA:i0gS7ORRsa8:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=-y9nIySAPJA:i0gS7ORRsa8:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/-y9nIySAPJA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Amaury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wpfr.net/damned/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"10";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:24:"https://wpfr.net/damned/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:39:"//www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:99:"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:10:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"BnroFX1umT1wDWo7YvNy36cKtNs";s:13:"last-modified";s:29:"Sun, 30 Oct 2016 12:03:14 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Sun, 30 Oct 2016 12:11:47 GMT";s:7:"expires";s:29:"Sun, 30 Oct 2016 12:11:47 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";}}s:5:"build";s:14:"20130911030210";}', 'no'),
(107, '_transient_timeout_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1477872708', 'no'),
(108, '_transient_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1477829508', 'no'),
(109, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1477872708', 'no');
INSERT INTO `wp_2_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(110, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:5:"\n		\n	";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:79:"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Planète WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:17:"https://wpfr.net/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Toute l’actualité de WordPress en français !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:8:{i:0;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"Vérifier l’accessibilité d’un thème WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/BxssKyCkAk0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:65:"http://www.seomix.fr/verifier-laccessibilite-dun-theme-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Oct 2016 04:00:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1721:"\n		        Apprenez à tester de A à Z l''accessibilité de votre thème et de votre site WordPress, pour un site ergonomique et performant pour vos utilisateurs.Accédez à l''article original : Vérifier l&rsquo;accessibilité d&rsquo;un thème WordPress.\n    Voici le début du contenu : Au moment de choisir un thème, une foule d&rsquo;options s&rsquo;offre à nous. Des thèmes payants, gratuits, sur le répertoire officiel WordPress ou sur des plateformes commerciales, voire même chez de petits éditeurs indépendants. Généralement nous avons accès à un site de démonstration, qui ressemble le plus souvent à un étalage de fonctionnalités. Alors nous parcourons la démonstration, observons l&rsquo;aspect graphique et les capacités de mise en forme, étudions les fonctionnalités exotiques et leur coïncidence avec les besoins du projet à venir. Il est rare de vérifier l&rsquo;accessibilité à ce moment là, et c&rsquo;est pourtant la meilleure occasion de s&rsquo;épargner du travail en aval — si tant est que l&rsquo;accessibilité vous préoccupe un tant soit peu. Par ailleurs si vous désirez découvrir ce domaine, comprendre les erreurs visibles sur ces démonstrations est une excellente méthode pour vous familiariser avec les erreurs courantes et les pièges à éviter. C&rsquo;est pourquoi je vous invite chaleureusement à tester l&rsquo;accessibilité des démonstrations de thème. Je vous explique le pourquoi du comment dans quelques secondes, bougez pas. Pourquoi, pour qui ? Définition Pour faire simple, l&rsquo;accessibilité web consiste à gommer tous les obstacles qui pourraient se dresser entre un internaute et le contenu qu&rsquo;il consulte. Et [...]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"SeoMix";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2079:"<div><img class="webfeedsFeaturedVisual" src="http://www.seomix.fr/wp-content/uploads/2016/10/tenon-500x300.png" /></div>Apprenez à tester de A à Z l''accessibilité de votre thème et de votre site WordPress, pour un site ergonomique et performant pour vos utilisateurs.<p><strong>Accédez à l''article original :</strong> <a href="http://www.seomix.fr/verifier-laccessibilite-dun-theme-wordpress/">Vérifier l&rsquo;accessibilité d&rsquo;un thème WordPress</a>.</p>\n    <p><strong>Voici le début du contenu :</strong> <p>Au moment de choisir un thème, une foule d&rsquo;options s&rsquo;offre à nous. Des thèmes payants, gratuits, sur le répertoire officiel WordPress ou sur des plateformes commerciales, voire même chez de petits éditeurs indépendants. Généralement nous avons accès à un site de démonstration, qui ressemble le plus souvent à un étalage de fonctionnalités. Alors nous parcourons la démonstration, observons l&rsquo;aspect graphique et les capacités de mise en forme, étudions les fonctionnalités exotiques et leur coïncidence avec les besoins du projet à venir.</p> <p>Il est rare de vérifier l&rsquo;accessibilité à ce moment là, et c&rsquo;est pourtant la meilleure occasion de s&rsquo;épargner du travail en aval — si tant est que l&rsquo;accessibilité vous préoccupe un tant soit peu. Par ailleurs si vous désirez découvrir ce domaine, comprendre les erreurs visibles sur ces démonstrations est une excellente méthode pour vous familiariser avec les erreurs courantes et les pièges à éviter.</p> <p>C&rsquo;est pourquoi je vous invite chaleureusement à tester l&rsquo;accessibilité des démonstrations de thème. Je vous explique le pourquoi du comment dans quelques secondes, bougez pas.</p> <h2>Pourquoi, pour qui ? Définition</h2> <p>Pour faire simple, l&rsquo;accessibilité web consiste à gommer tous les obstacles qui pourraient se dresser entre un internaute et le contenu qu&rsquo;il consulte. Et [...]</p><hr /><img src="http://feeds.feedburner.com/~r/wpfr/~4/BxssKyCkAk0" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:65:"http://www.seomix.fr/verifier-laccessibilite-dun-theme-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:44:"Étendre les liens en JavaScript (ou en CSS)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/2sFnZWJdW_k/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wabeo.fr/etendre-liens-javascript/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 26 Oct 2016 06:30:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:257:"\n		        Cette astuce de développent permet de déplacer le lien d’un élément sur l’un de ses parents, en JavaScript, conciliant ainsi optimisation SEO et ergonomie.\n\nVoir Étendre les liens en JavaScript (ou en CSS) directement sur Wabeo		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Wabeo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:462:"<p>Cette astuce de développent permet de déplacer le lien d’un élément sur l’un de ses parents, en JavaScript, conciliant ainsi optimisation SEO et ergonomie.</p>\n<hr />\nVoir <a rel="nofollow" href="https://wabeo.fr/etendre-liens-javascript/">Étendre les liens en JavaScript (ou en CSS)</a> directement sur <a rel="nofollow" href="https://wabeo.fr">Wabeo</a></p><img src="http://feeds.feedburner.com/~r/wpfr/~4/2sFnZWJdW_k" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wabeo.fr/etendre-liens-javascript/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"SecuPress : le grand test !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/Va0fS23bzEw/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"http://www.geekpress.fr/secupress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 25 Oct 2016 15:00:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:448:"\n		        La sécurité d&#8217;un site est l&#8217;un des sujets chaud du moment. Après de nombreuses vagues de piratages qui ont fait la une depuis 2014, les créateurs de sites sont devenus plus sensibles à la sécurité de leurs sites. Je vous présente en détails la toute nouvelle extension SecuPress, par les créateurs de WP Rocket, et je [&#8230;]\nCet article SecuPress : le grand test ! est apparu en premier sur GeekPress.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Geekpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:649:"<p>La sécurité d&#8217;un site est l&#8217;un des sujets chaud du moment. Après de nombreuses vagues de piratages qui ont fait la une depuis 2014, les créateurs de sites sont devenus plus sensibles à la sécurité de leurs sites. Je vous présente en détails la toute nouvelle extension SecuPress, par les créateurs de WP Rocket, et je [&#8230;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/secupress/">SecuPress : le grand test !</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr">GeekPress</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/Va0fS23bzEw" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:34:"http://www.geekpress.fr/secupress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"3 façons d’utiliser Advanced Custom Fields pour WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/hA5Mi7zcW8w/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wpformation.com/advanced-custom-fields-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 24 Oct 2016 07:30:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:582:"\n		        Le plugin Advanced Custom Fields est un puissant outil gratuit et intuitif qui permet de rajouter des champs spéciaux et récurrents à vos posts WordPress. Selon le thème de votre blog ou de votre site, vous pourriez avoir besoin de ces fameux champs qui rendront votre WordPress totalement unique... Généralement "réservé aux développeurs", je vous [&#8230;]\n\n\n3 façons d&rsquo;utiliser Advanced Custom Fields pour WordPress est un article de WP Formation\nFormation WordPress &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1333:"<p><img width="950" height="587" src="https://wpformation.com/wp-content/uploads/2016/10/acf-wordpress.jpg" class="attachment-Large size-Large wp-post-image" alt="acf-wordpress" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />Le plugin Advanced Custom Fields est un puissant outil gratuit et intuitif qui permet de rajouter des champs spéciaux et récurrents à vos posts WordPress. Selon le thème de votre blog ou de votre site, vous pourriez avoir besoin de ces fameux champs qui rendront votre WordPress totalement unique... Généralement "réservé aux développeurs", je vous [&#8230;]</p>\n<p>\n<hr>\n<a rel="nofollow" href="https://wpformation.com/advanced-custom-fields-wordpress/">3 façons d&rsquo;utiliser Advanced Custom Fields pour WordPress</a> est un article de <a title="Formation WordPress Ecommerce" href="https://wpformation.com">WP Formation</a></p>\n<p><a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="https://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous à la newsletter</a> !<br />\n<hr><img src="http://feeds.feedburner.com/~r/wpfr/~4/hA5Mi7zcW8w" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wpformation.com/advanced-custom-fields-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:80:"Timber : Une approche vue / controller dans vos thèmes pour un code plus propre";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/MUcXAJR0eY0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.geekpress.fr/timber/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 24 Oct 2016 07:00:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:478:"\n		        Si toi aussi tu aimes WordPress, mais que tu en as marre de mélanger PHP et HTML dans tes templates de thèmes, que la loop à force c&#8217;est finalement pas si super, alors j&#8217;ai une solution pour toi qui devrais te plaire à base d&#8217;approche vue / controller et de templating via twig Les développeurs [&#8230;]\nCet article Timber : Une approche vue / controller dans vos thèmes pour un code plus propre est apparu en premier sur GeekPress.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Geekpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:676:"<p>Si toi aussi tu aimes WordPress, mais que tu en as marre de mélanger PHP et HTML dans tes templates de thèmes, que la loop à force c&#8217;est finalement pas si super, alors j&#8217;ai une solution pour toi qui devrais te plaire à base d&#8217;approche vue / controller et de templating via twig Les développeurs [&#8230;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/timber/">Timber : Une approche vue / controller dans vos thèmes pour un code plus propre</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr">GeekPress</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/MUcXAJR0eY0" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:31:"http://www.geekpress.fr/timber/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"BigDump ou comment importer des bases de données MySQL volumineuses";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/AABAQFnqFD4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wpchannel.com/bigdump-importer-bases-donnees-mysql-volumineuses/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 24 Oct 2016 06:50:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:385:"\n		        L&#8217;importation de base de données MySQL via phpMyAdmin est une opération impossible pour des bases volumineuses de plusieurs centaines de Mo ou Go. En effet, la limitation d&#8217;envoi ne dépasse rarement les 128 Mo et vous risqueriez d&#8217;envoyer des fichiers corrompus en procédant ainsi. La solution tient dans une archive de 12 Ko et se [&#8230;]\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Channel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:674:"<img width="450" height="300" src="https://wpchannel.com/images/2016/10/code-space-450x300.jpg" class="attachment-large size-large wp-post-image" alt="code-space" style="margin: auto;margin-bottom: 5px" /><p>L&#8217;importation de base de données MySQL via phpMyAdmin est une opération impossible pour des bases volumineuses de plusieurs centaines de Mo ou Go. En effet, la limitation d&#8217;envoi ne dépasse rarement les 128 Mo et vous risqueriez d&#8217;envoyer des fichiers corrompus en procédant ainsi. La solution tient dans une archive de 12 Ko et se [&#8230;]</p>\n<p></p><img src="http://feeds.feedburner.com/~r/wpfr/~4/AABAQFnqFD4" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wpchannel.com/bigdump-importer-bases-donnees-mysql-volumineuses/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"Gravity Forms – L’ultime Plugin WordPress pour créer des Formulaires";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/eDxwWEPByS8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:38:"http://www.geekeries.fr/gravity-forms/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 22 Oct 2016 21:13:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:384:"\n		        \nUn formulaire de contact est indispensable sur un site dès lors que l''on propose des biens, des services ou des produits. La création de A à Z d''un formulaire de contact peut être facile si l''on s''y connaît un peu en code.\nCet article Gravity Forms &#8211; L&rsquo;ultime Plugin WordPress pour créer des Formulaires est apparu en premier sur Geekeries.fr.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Geekeries";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:726:"<figure><img src=''http://www.geekeries.fr/wp-content/medias/2016/10/fig-22-10-2016_20-16-18.jpg'' class=''webfeedsFeaturedVisual''></figure>\n<p>Un formulaire de contact est indispensable sur un site dès lors que l''on propose des biens, des services ou des produits. La création de A à Z d''un formulaire de contact peut être facile si l''on s''y connaît un peu en code.</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekeries.fr/gravity-forms/">Gravity Forms &#8211; L&rsquo;ultime Plugin WordPress pour créer des Formulaires</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekeries.fr">Geekeries.fr</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/eDxwWEPByS8" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:38:"http://www.geekeries.fr/gravity-forms/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"Utiliser composer sur un projet WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/yOAWtIipQqc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:43:"http://www.geekpress.fr/composer-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Oct 2016 07:30:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:495:"\n		        Il arrive fréquemment que nous ayons besoin d&#8217;une librairie externe pour effectuer un développement. La réaction habituelle est de télécharger cette librairie et de l&#8217;inclure à la main dans notre projet. Or, il existe un gestionnaire de paquet en PHP qui se nomme Composer sortie en 2012. Découvrons comment s&#8217;en servir ! Pourquoi utiliser composer [&#8230;]\nCet article Utiliser composer sur un projet WordPress est apparu en premier sur GeekPress.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Geekpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:705:"<p>Il arrive fréquemment que nous ayons besoin d&#8217;une librairie externe pour effectuer un développement. La réaction habituelle est de télécharger cette librairie et de l&#8217;inclure à la main dans notre projet. Or, il existe un gestionnaire de paquet en PHP qui se nomme Composer sortie en 2012. Découvrons comment s&#8217;en servir ! Pourquoi utiliser composer [&#8230;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/composer-wordpress/">Utiliser composer sur un projet WordPress</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr">GeekPress</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/yOAWtIipQqc" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:43:"http://www.geekpress.fr/composer-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:32:"http://feeds.feedburner.com/wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:4:"wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"AGHWWwjHG7Ejn9kyxtwIrLn0x3U";s:13:"last-modified";s:29:"Sun, 30 Oct 2016 11:54:38 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Sun, 30 Oct 2016 12:11:48 GMT";s:7:"expires";s:29:"Sun, 30 Oct 2016 12:11:48 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:37:"quic=":443"; ma=2592000; v="36,35,34"";}}s:5:"build";s:14:"20130911030210";}', 'no'),
(111, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1477872709', 'no'),
(112, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1477829509', 'no'),
(113, '_transient_timeout_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '1477872709', 'no'),
(114, '_transient_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/WordpressFrancophone/~3/5e8SDCecxmc/''>Un nouveau site pour WordPress Francophone</a> <span class="rss-date">15 septembre 2016</span><div class="rssSummary">Après plus de quatre mois de chantier, nous sommes fiers de vous présenter le nouveau site WPFR ! Nous l’avions annoncé en mai, le site de l’association était en cours de refonte, l’ancien étant dépassé tant en termes d’aspect que de fonctionnalités. Une quinzaine de bénévoles ont répondu à notre appel pour travailler avec nous sur ce projet. Cette entreprise a aujourd’hui portéLire [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/wpfr/~3/BxssKyCkAk0/''>Vérifier l’accessibilité d’un thème WordPress</a></li><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/wpfr/~3/2sFnZWJdW_k/''>Étendre les liens en JavaScript (ou en CSS)</a></li><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/wpfr/~3/Va0fS23bzEw/''>SecuPress : le grand test !</a></li></ul></div>', 'no'),
(115, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1477829510;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(116, 'current_theme', 'Jarida (shared on themelot.net)', 'yes'),
(117, 'theme_mods_jarida', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:8:"top-menu";i:10;s:7:"primary";i:9;}}', 'yes'),
(118, 'theme_switched', '', 'yes'),
(119, 'tie_cat_1', 'a:5:{s:11:"cat_sidebar";b:0;s:10:"cat_slider";b:0;s:9:"cat_color";b:0;s:14:"cat_background";b:0;s:19:"cat_background_full";b:0;}', 'yes'),
(120, 'tie_options', 'a:66:{s:12:"theme_layout";s:5:"boxed";s:11:"columns_num";s:2:"3c";s:11:"time_format";s:6:"modern";s:11:"breadcrumbs";s:4:"true";s:21:"breadcrumbs_delimiter";s:4:"&gt;";s:12:"logo_setting";s:4:"logo";s:4:"logo";s:70:"http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/11/logo.png";s:18:"logo_retina_height";s:2:"30";s:8:"top_left";s:9:"head_menu";s:9:"stick_nav";s:4:"true";s:14:"breaking_title";s:21:"آخر الأخبار";s:15:"breaking_effect";s:4:"fade";s:14:"breaking_speed";s:4:"1312";s:13:"breaking_time";s:4:"2281";s:7:"on_home";s:6:"latest";s:13:"box_meta_date";s:4:"true";s:17:"box_meta_comments";s:4:"true";s:14:"box_meta_views";s:4:"true";s:6:"social";a:3:{s:8:"facebook";s:19:"http://facebook.com";s:7:"twitter";s:18:"http://twitter.com";s:11:"google_plus";s:16:"http://google.fr";}s:6:"slider";s:4:"true";s:11:"slider_type";s:5:"flexi";s:14:"slider_caption";s:4:"true";s:21:"slider_caption_length";s:3:"100";s:21:"elastic_slider_effect";s:6:"center";s:19:"flexi_slider_effect";s:4:"fade";s:13:"slider_number";s:2:"10";s:12:"slider_query";s:8:"category";s:8:"post_nav";s:4:"true";s:13:"post_og_cards";s:4:"true";s:17:"reading_indicator";s:4:"true";s:11:"post_author";s:4:"true";s:9:"post_cats";s:4:"true";s:10:"share_post";s:4:"true";s:11:"share_tweet";s:4:"true";s:14:"share_facebook";s:4:"true";s:12:"share_google";s:4:"true";s:15:"share_pinterest";s:4:"true";s:7:"related";s:4:"true";s:13:"related_title";s:22:"من نفس القسم";s:14:"related_number";s:1:"3";s:13:"related_query";s:8:"category";s:10:"check_also";s:4:"true";s:19:"check_also_position";s:5:"right";s:17:"check_also_number";s:1:"1";s:16:"check_also_query";s:3:"tag";s:18:"comment_validation";s:4:"true";s:10:"footer_top";s:4:"true";s:14:"footer_widgets";s:9:"footer-2c";s:9:"banner_bg";s:4:"true";s:13:"banner_bg_url";s:9:"google.fr";s:14:"banner_top_img";s:112:"http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/1454669_10202609752228672_1658157913_n-300x188.jpg";s:14:"banner_top_url";s:9:"google.fr";s:14:"banner_top_tab";s:4:"true";s:17:"banner_bottom_img";s:112:"http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/1454669_10202609752228672_1658157913_n-300x188.jpg";s:11:"sidebar_pos";s:5:"nleft";s:13:"arc_meta_date";s:4:"true";s:17:"arc_meta_comments";s:4:"true";s:14:"arc_meta_views";s:4:"true";s:18:"disable_responsive";s:4:"true";s:25:"disable_gallery_shortcode";s:4:"true";s:15:"background_type";s:6:"custom";s:10:"background";a:1:{s:3:"img";s:80:"http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/11/SlidercampVE-1.png";}s:12:"global_color";s:7:"#1a9929";s:17:"topbar_background";s:7:"#294885";s:17:"header_background";a:1:{s:3:"img";s:78:"http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/11/final-header.png";}s:21:"nav_links_color_hover";s:7:"#1a9929";}', 'yes'),
(121, 'tie_active', '2', 'yes'),
(122, 'widget_author_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(123, 'widget_author_post_widget', 'a:3:{i:3;a:2:{s:11:"no_of_posts";s:1:"5";s:7:"see_all";s:4:"true";}i:4;a:2:{s:11:"no_of_posts";s:1:"5";s:7:"see_all";s:4:"true";}s:12:"_multiwidget";i:1;}', 'yes'),
(124, 'widget_author-custom-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(125, 'widget_facebook-widget', 'a:2:{i:2;a:2:{s:5:"title";s:38:"تجدوننا على الفيسبوك";s:8:"page_url";s:38:"https://www.facebook.com/arabhardware/";}s:12:"_multiwidget";i:1;}', 'yes'),
(126, 'widget_google-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(127, 'widget_youtube-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(128, 'widget_widget_tabs', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(129, 'widget_latest-tweets-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(130, 'widget_flickr_photos-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(131, 'widget_ads125-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(132, 'widget_ads120_90-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(133, 'widget_ads120_60-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(134, 'widget_ads120_600-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(135, 'widget_ads120_240-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(136, 'widget_ads160_600-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(137, 'widget_ads300_600-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(138, 'widget_ads250_250-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'widget_ads300_100-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(140, 'widget_ads300_250-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(141, 'widget_video-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(142, 'widget_posts-list-widget', 'a:2:{i:2;a:4:{s:16:"posts_list_title";s:21:"آخر الأخبار";s:11:"no_of_posts";s:1:"5";s:11:"posts_order";s:6:"latest";s:5:"thumb";s:4:"true";}s:12:"_multiwidget";i:1;}', 'yes'),
(143, 'widget_categort-posts-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(144, 'widget_authors-posts-widget', 'a:2:{i:2;a:4:{s:15:"cat_posts_title";s:22:"Articles de cet auteur";s:11:"no_of_posts";s:1:"5";s:7:"cats_id";s:1:"1";s:5:"thumb";s:4:"true";}s:12:"_multiwidget";i:1;}', 'yes'),
(145, 'widget_news-pic-widget', 'a:2:{i:3;a:4:{s:14:"news_pic_title";s:18:"صوت و صورة";s:11:"no_of_posts";s:2:"20";s:7:"cats_id";s:2:"11";s:11:"posts_order";s:6:"latest";}s:12:"_multiwidget";i:1;}', 'yes'),
(146, 'widget_comments_avatar-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(147, 'widget_text-html-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(148, 'widget_social', 'a:3:{s:12:"_multiwidget";i:1;i:3;a:4:{s:5:"title";s:35:"الشبكات الإجتماعية";s:10:"icons_size";s:2:"24";s:7:"tran_bg";s:0:"";s:6:"newtap";s:0:"";}i:4;a:0:{}}', 'yes'),
(149, 'widget_search-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(150, 'widget_author-bio-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(151, 'widget_counter-widget', 'a:2:{i:2;a:14:{s:10:"new_window";s:4:"true";s:8:"facebook";s:12:"facebook.com";s:3:"rss";s:0:"";s:7:"twitter";s:0:"";s:7:"youtube";s:6:"klivin";s:11:"youtube_api";s:0:"";s:5:"vimeo";s:0:"";s:8:"dribbble";s:0:"";s:10:"soundcloud";s:0:"";s:14:"soundcloud_api";s:0:"";s:7:"behance";s:0:"";s:11:"behance_api";s:0:"";s:9:"instagram";s:0:"";s:13:"instagram_api";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(152, 'widget_login-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'widget_widget-feedburner', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(154, 'widget_review-widget', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(155, 'widget_tie-slider-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(156, 'widget_tie-soundcloud-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(157, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"400";s:6:"height";s:3:"400";s:4:"crop";i:1;}', 'yes'),
(158, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(159, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:4:"crop";i:1;}', 'yes'),
(165, 'post_count', '5', 'yes'),
(177, '_transient_timeout_plugin_slugs', '1477945825', 'no'),
(178, '_transient_plugin_slugs', 'a:15:{i:0;s:19:"akismet/akismet.php";i:1;s:21:"attachments/index.php";i:2;s:31:"bee-layer-slider/bee-slider.php";i:3;s:31:"constellation/constellation.php";i:4;s:36:"contact-form-7/wp-contact-form-7.php";i:5;s:40:"custom-user-profile-photo/3five_cupp.php";i:6;s:9:"hello.php";i:7;s:27:"LayerSlider/layerslider.php";i:8;s:21:"newsletter/plugin.php";i:9;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:10;s:23:"revslider/revslider.php";i:11;s:25:"rtl-tester/rtl-tester.php";i:12;s:51:"wordpress-popular-posts/wordpress-popular-posts.php";i:13;s:21:"wp-polls/wp-polls.php";i:14;s:53:"js-composer-qtranslate-x/js-composer-qtranslate-x.php";}', 'no'),
(179, 'recently_activated', 'a:1:{s:25:"rtl-tester/rtl-tester.php";i:1477858070;}', 'yes'),
(180, 'poll_template_voteheader', '<p style="text-align: center;"><strong>%POLL_QUESTION%</strong></p><div id="polls-%POLL_ID%-ans" class="wp-polls-ans"><ul class="wp-polls-ul">', 'yes'),
(181, 'poll_template_votebody', '<li><input type="%POLL_CHECKBOX_RADIO%" id="poll-answer-%POLL_ANSWER_ID%" name="poll_%POLL_ID%" value="%POLL_ANSWER_ID%" /> <label for="poll-answer-%POLL_ANSWER_ID%">%POLL_ANSWER%</label></li>', 'yes'),
(182, 'poll_template_votefooter', '</ul><p style="text-align: center;"><input type="button" name="vote" value="   Vote   " class="Buttons" onclick="poll_vote(%POLL_ID%);" /></p><p style="text-align: center;"><a href="#ViewPollResults" onclick="poll_result(%POLL_ID%); return false;" title="View Results Of This Poll">View Results</a></p></div>', 'yes'),
(183, 'poll_template_resultheader', '<p style="text-align: center;"><strong>%POLL_QUESTION%</strong></p><div id="polls-%POLL_ID%-ans" class="wp-polls-ans"><ul class="wp-polls-ul">', 'yes'),
(184, 'poll_template_resultbody', '<li>%POLL_ANSWER% <small>(%POLL_ANSWER_PERCENTAGE%%, %POLL_ANSWER_VOTES% Votes)</small><div class="pollbar" style="width: %POLL_ANSWER_IMAGEWIDTH%%;" title="%POLL_ANSWER_TEXT% (%POLL_ANSWER_PERCENTAGE%% | %POLL_ANSWER_VOTES% Votes)"></div></li>', 'yes'),
(185, 'poll_template_resultbody2', '<li><strong><i>%POLL_ANSWER% <small>(%POLL_ANSWER_PERCENTAGE%%, %POLL_ANSWER_VOTES% Votes)</small></i></strong><div class="pollbar" style="width: %POLL_ANSWER_IMAGEWIDTH%%;" title="You Have Voted For This Choice - %POLL_ANSWER_TEXT% (%POLL_ANSWER_PERCENTAGE%% | %POLL_ANSWER_VOTES% Votes)"></div></li>', 'yes'),
(186, 'poll_template_resultfooter', '</ul><p style="text-align: center;">Total Voters: <strong>%POLL_TOTALVOTERS%</strong></p></div>', 'yes'),
(187, 'poll_template_resultfooter2', '</ul><p style="text-align: center;">Total Voters: <strong>%POLL_TOTALVOTERS%</strong></p><p style="text-align: center;"><a href="#VotePoll" onclick="poll_booth(%POLL_ID%); return false;" title="Vote For This Poll">Vote</a></p></div>', 'yes'),
(188, 'poll_template_disable', 'Sorry, there are no polls available at the moment.', 'yes'),
(189, 'poll_template_error', 'An error has occurred when processing your poll.', 'yes'),
(190, 'poll_currentpoll', '0', 'yes'),
(191, 'poll_latestpoll', '1', 'yes'),
(192, 'poll_archive_perpage', '5', 'yes'),
(193, 'poll_ans_sortby', 'polla_aid', 'yes'),
(194, 'poll_ans_sortorder', 'asc', 'yes'),
(195, 'poll_ans_result_sortby', 'polla_votes', 'yes'),
(196, 'poll_ans_result_sortorder', 'desc', 'yes'),
(197, 'poll_logging_method', '3', 'yes'),
(198, 'poll_allowtovote', '2', 'yes'),
(199, 'poll_archive_url', 'http://klivin-pc/houmty/ar/pollsarchive', 'yes'),
(200, 'poll_bar', 'a:4:{s:5:"style";s:7:"default";s:10:"background";s:6:"d8e1eb";s:6:"border";s:6:"c8c8c8";s:6:"height";i:8;}', 'yes'),
(201, 'poll_close', '1', 'yes'),
(202, 'poll_ajax_style', 'a:2:{s:7:"loading";i:1;s:6:"fading";i:1;}', 'yes'),
(203, 'poll_template_pollarchivelink', '<ul><li><a href="%POLL_ARCHIVE_URL%">Polls Archive</a></li></ul>', 'yes'),
(204, 'poll_archive_displaypoll', '2', 'yes'),
(205, 'poll_template_pollarchiveheader', '', 'yes'),
(206, 'poll_template_pollarchivefooter', '<p>Start Date: %POLL_START_DATE%<br />End Date: %POLL_END_DATE%</p>', 'yes'),
(207, 'poll_cookielog_expiry', '0', 'yes'),
(208, 'poll_template_pollarchivepagingheader', '', 'yes'),
(209, 'poll_template_pollarchivepagingfooter', '', 'yes'),
(210, 'widget_wpp', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:15:{s:5:"title";s:23:"الأكثر زيارة";s:5:"limit";s:2:"10";s:5:"range";s:6:"weekly";s:8:"order_by";s:3:"avg";s:9:"post_type";s:9:"post,page";s:9:"freshness";b:0;s:3:"pid";s:0:"";s:3:"cat";s:0:"";s:6:"author";s:0:"";s:13:"shorten_title";a:3:{s:5:"words";s:1:"0";s:6:"active";b:0;s:6:"length";s:2:"25";}s:12:"post-excerpt";a:4:{s:11:"keep_format";b:0;s:5:"words";s:1:"0";s:6:"active";b:0;s:6:"length";s:2:"55";}s:9:"thumbnail";a:5:{s:6:"active";b:0;s:5:"width";s:2:"15";s:6:"height";s:2:"15";s:5:"build";s:6:"manual";s:4:"crop";b:1;}s:6:"rating";b:0;s:9:"stats_tag";a:5:{s:13:"comment_count";b:0;s:5:"views";b:0;s:6:"author";b:0;s:4:"date";a:2:{s:6:"active";b:0;s:6:"format";s:6:"F j, Y";}s:8:"category";b:0;}s:6:"markup";a:6:{s:11:"custom_html";b:0;s:9:"wpp-start";s:37:"&lt;ul class=&quot;wpp-list&quot;&gt;";s:7:"wpp-end";s:11:"&lt;/ul&gt;";s:9:"post-html";s:44:"&lt;li&gt;{thumb} {title} {stats}&lt;/li&gt;";s:11:"title-start";s:0:"";s:9:"title-end";s:0:"";}}}', 'yes'),
(211, 'widget_polls-widget', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:3:{s:5:"title";s:5:"Polls";s:7:"poll_id";i:1;s:19:"display_pollarchive";i:1;}}', 'yes'),
(215, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(218, 'new_admin_email', 'msbenbakh@gmail.com', 'yes'),
(235, 'newsletter_logger_secret', '83b5853f', 'yes'),
(236, 'newsletter_dismissed', 'a:1:{s:6:"wpmail";i:1;}', 'yes'),
(237, 'newsletter_main', 'a:11:{s:11:"return_path";s:20:"msbenbakh@outlook.fr";s:8:"reply_to";s:20:"msbenbakh@outlook.fr";s:12:"sender_email";s:20:"msbenbakh@outlook.fr";s:11:"sender_name";s:10:"حومتي";s:6:"editor";s:1:"0";s:13:"scheduler_max";s:3:"100";s:9:"phpmailer";s:1:"0";s:7:"api_key";s:10:"d2adced04d";s:12:"contract_key";s:0:"";s:3:"css";s:0:"";s:25:"content_transfer_encoding";s:0:"";}', 'yes'),
(238, 'newsletter_extension_versions', 'a:18:{i:0;O:8:"stdClass":2:{s:2:"id";s:2:"23";s:7:"version";s:5:"2.0.0";}i:1;O:8:"stdClass":2:{s:2:"id";s:2:"48";s:7:"version";s:5:"4.0.4";}i:2;O:8:"stdClass":2:{s:2:"id";s:2:"50";s:7:"version";s:5:"4.0.4";}i:3;O:8:"stdClass":2:{s:2:"id";s:2:"49";s:7:"version";s:5:"4.0.0";}i:4;O:8:"stdClass":2:{s:2:"id";s:2:"51";s:7:"version";s:5:"4.0.5";}i:5;O:8:"stdClass":2:{s:2:"id";s:2:"52";s:7:"version";s:5:"4.0.1";}i:6;O:8:"stdClass":2:{s:2:"id";s:2:"53";s:7:"version";s:5:"2.2.0";}i:7;O:8:"stdClass":2:{s:2:"id";s:2:"58";s:7:"version";s:5:"4.0.0";}i:8;O:8:"stdClass":2:{s:2:"id";s:2:"54";s:7:"version";s:5:"4.0.1";}i:9;O:8:"stdClass":2:{s:2:"id";s:2:"55";s:7:"version";s:5:"2.2.2";}i:10;O:8:"stdClass":2:{s:2:"id";s:2:"56";s:7:"version";s:5:"2.2.0";}i:11;O:8:"stdClass":2:{s:2:"id";s:2:"59";s:7:"version";s:5:"2.0.0";}i:12;O:8:"stdClass":2:{s:2:"id";s:2:"60";s:7:"version";s:5:"1.0.8";}i:13;O:8:"stdClass":2:{s:2:"id";s:2:"61";s:7:"version";s:5:"4.0.2";}i:14;O:8:"stdClass":2:{s:2:"id";s:2:"62";s:7:"version";s:5:"4.0.5";}i:15;O:8:"stdClass":2:{s:2:"id";s:2:"63";s:7:"version";s:5:"1.0.1";}i:16;O:8:"stdClass":2:{s:2:"id";s:2:"64";s:7:"version";s:9:"2.0.0 pro";}i:17;O:8:"stdClass":2:{s:2:"id";s:2:"65";s:7:"version";s:5:"4.0.0";}}', 'no'),
(239, 'newsletter_main_smtp', 'a:7:{s:7:"enabled";i:0;s:4:"host";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:4:"port";i:25;s:6:"secure";s:0:"";s:12:"ssl_insecure";i:0;}', 'yes'),
(240, 'newsletter_main_version', '1.2.9', 'yes'),
(241, 'newsletter', 'a:28:{s:14:"noconfirmation";s:1:"0";s:12:"profile_text";s:290:"<p>Change your subscription preferences to get what you are most interested in.</p>\r\n<p>If you change your email address, a confirmation email will be sent to activate it.</p>\r\n<p>{profile_form}</p>\r\n<p>To cancel your subscription, <a href="{unsubscription_confirm_url}">click here</a>.</p>";s:21:"profile_email_changed";s:123:"Your email has been changed, an activation email has been sent. Please follow the instructions to activate the new address.";s:13:"profile_error";s:147:"Your email is not valid or already in use by another subscriber or another generic error has been found. Check your data or contact the site owner.";s:10:"error_text";s:173:"<p>This subscription can''t be completed, sorry. The email address is blocked or already subscribed. You should contact the owner to unlock that email address. Thank you.</p>";s:18:"subscribe_wp_users";i:0;s:17:"subscription_text";s:26:"<p>{subscription_form}</p>";s:17:"confirmation_text";s:267:"<p>You have successfully subscribed to the newsletter. You''ll receive a confirmation email in few minutes. Please follow the link in it to confirm your subscription. If the email takes more than 15 minutes to appear in your mailbox, please check your spam folder.</p>";s:20:"confirmation_subject";s:53:"Please confirm subscription - {blog_title} newsletter";s:21:"confirmation_tracking";s:0:"";s:20:"confirmation_message";s:428:"<p>Hi {name},</p>\r\n<p>A newsletter subscription request for this email address was received. Please confirm it by <a href="{subscription_confirm_url}"><strong>clicking here</strong></a>. If you cannot click the link, please use the following link:</p>\r\n<p>{subscription_confirm_url}</p>\r\n<p>If you did not make this subscription request, just ignore this message.</p>\r\n<p>Thank you!<br /> <a href="{blog_url}">{blog_url}</a></p>";s:14:"confirmed_text";s:62:"<p>Your subscription has been confirmed! Thank you {name}!</p>";s:17:"confirmed_subject";s:22:"Welcome aboard, {name}";s:17:"confirmed_message";s:280:"<p>This message confirms your subscription to the {blog_title} newsletter.</p>\r\n<p>Thank you!<br /> <a href="{blog_url}">{blog_url}</a></p>\r\n<p>To unsubscribe, <a href="{unsubscription_url}">click here</a>. To change subscriber options, <a href="{profile_url}">click here</a>.</p>";s:18:"confirmed_tracking";s:0:"";s:19:"unsubscription_text";s:111:"<p>Please confirm that you want to unsubscribe by <a href=''{unsubscription_confirm_url}''>clicking here</a>.</p>";s:25:"unsubscription_error_text";s:118:"<p>The subscriber was not found, it probably has already been removed. No further actions are required. Thank you.</p>";s:17:"unsubscribed_text";s:53:"<p>Your subscription has been deleted. Thank you.</p>";s:20:"unsubscribed_subject";s:8:"Goodbye!";s:20:"unsubscribed_message";s:195:"<p>This message confirms that you have unsubscribed from the {blog_title} newsletter.</p>\n<p>You''re welcome to sign up again anytime.</p>\n<p>Thank you!<br>\n<a href=''{blog_url}''>{blog_url}</a></p>";s:3:"url";s:38:"http://klivin-pc/houmty/ar/newsletter/";s:6:"notify";s:1:"0";s:12:"notify_email";s:0:"";s:16:"confirmation_url";s:0:"";s:13:"confirmed_url";s:0:"";s:18:"confirmed_disabled";s:1:"0";s:11:"profile_url";s:0:"";s:13:"profile_saved";s:0:"";}', 'yes');
INSERT INTO `wp_2_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(242, 'newsletter_profile', 'a:202:{s:5:"email";s:5:"Email";s:11:"email_error";s:24:"The email is not correct";s:4:"name";s:4:"Name";s:10:"name_error";s:23:"The name is not correct";s:11:"name_status";i:0;s:10:"name_rules";i:0;s:7:"surname";s:9:"Last name";s:13:"surname_error";s:28:"The last name is not correct";s:14:"surname_status";i:0;s:3:"sex";s:3:"I''m";s:7:"privacy";s:51:"Subscribing I accept the privacy rules of this site";s:13:"privacy_error";s:37:"You must accept the privacy statement";s:14:"privacy_status";i:0;s:11:"privacy_url";s:0:"";s:9:"subscribe";s:9:"Subscribe";s:4:"save";s:4:"Save";s:12:"title_female";s:4:"Mrs.";s:10:"title_male";s:3:"Mr.";s:10:"title_none";s:4:"Dear";s:8:"sex_male";s:3:"Man";s:10:"sex_female";s:5:"Woman";s:8:"sex_none";s:4:"None";s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;s:16:"profile_1_status";i:0;s:9:"profile_1";s:0:"";s:14:"profile_1_type";s:4:"text";s:21:"profile_1_placeholder";s:0:"";s:15:"profile_1_rules";i:0;s:17:"profile_1_options";s:0:"";s:16:"profile_2_status";i:0;s:9:"profile_2";s:0:"";s:14:"profile_2_type";s:4:"text";s:21:"profile_2_placeholder";s:0:"";s:15:"profile_2_rules";i:0;s:17:"profile_2_options";s:0:"";s:16:"profile_3_status";i:0;s:9:"profile_3";s:0:"";s:14:"profile_3_type";s:4:"text";s:21:"profile_3_placeholder";s:0:"";s:15:"profile_3_rules";i:0;s:17:"profile_3_options";s:0:"";s:16:"profile_4_status";i:0;s:9:"profile_4";s:0:"";s:14:"profile_4_type";s:4:"text";s:21:"profile_4_placeholder";s:0:"";s:15:"profile_4_rules";i:0;s:17:"profile_4_options";s:0:"";s:16:"profile_5_status";i:0;s:9:"profile_5";s:0:"";s:14:"profile_5_type";s:4:"text";s:21:"profile_5_placeholder";s:0:"";s:15:"profile_5_rules";i:0;s:17:"profile_5_options";s:0:"";s:16:"profile_6_status";i:0;s:9:"profile_6";s:0:"";s:14:"profile_6_type";s:4:"text";s:21:"profile_6_placeholder";s:0:"";s:15:"profile_6_rules";i:0;s:17:"profile_6_options";s:0:"";s:16:"profile_7_status";i:0;s:9:"profile_7";s:0:"";s:14:"profile_7_type";s:4:"text";s:21:"profile_7_placeholder";s:0:"";s:15:"profile_7_rules";i:0;s:17:"profile_7_options";s:0:"";s:16:"profile_8_status";i:0;s:9:"profile_8";s:0:"";s:14:"profile_8_type";s:4:"text";s:21:"profile_8_placeholder";s:0:"";s:15:"profile_8_rules";i:0;s:17:"profile_8_options";s:0:"";s:16:"profile_9_status";i:0;s:9:"profile_9";s:0:"";s:14:"profile_9_type";s:4:"text";s:21:"profile_9_placeholder";s:0:"";s:15:"profile_9_rules";i:0;s:17:"profile_9_options";s:0:"";s:17:"profile_10_status";i:0;s:10:"profile_10";s:0:"";s:15:"profile_10_type";s:4:"text";s:22:"profile_10_placeholder";s:0:"";s:16:"profile_10_rules";i:0;s:18:"profile_10_options";s:0:"";s:17:"profile_11_status";i:0;s:10:"profile_11";s:0:"";s:15:"profile_11_type";s:4:"text";s:22:"profile_11_placeholder";s:0:"";s:16:"profile_11_rules";i:0;s:18:"profile_11_options";s:0:"";s:17:"profile_12_status";i:0;s:10:"profile_12";s:0:"";s:15:"profile_12_type";s:4:"text";s:22:"profile_12_placeholder";s:0:"";s:16:"profile_12_rules";i:0;s:18:"profile_12_options";s:0:"";s:17:"profile_13_status";i:0;s:10:"profile_13";s:0:"";s:15:"profile_13_type";s:4:"text";s:22:"profile_13_placeholder";s:0:"";s:16:"profile_13_rules";i:0;s:18:"profile_13_options";s:0:"";s:17:"profile_14_status";i:0;s:10:"profile_14";s:0:"";s:15:"profile_14_type";s:4:"text";s:22:"profile_14_placeholder";s:0:"";s:16:"profile_14_rules";i:0;s:18:"profile_14_options";s:0:"";s:17:"profile_15_status";i:0;s:10:"profile_15";s:0:"";s:15:"profile_15_type";s:4:"text";s:22:"profile_15_placeholder";s:0:"";s:16:"profile_15_rules";i:0;s:18:"profile_15_options";s:0:"";s:17:"profile_16_status";i:0;s:10:"profile_16";s:0:"";s:15:"profile_16_type";s:4:"text";s:22:"profile_16_placeholder";s:0:"";s:16:"profile_16_rules";i:0;s:18:"profile_16_options";s:0:"";s:17:"profile_17_status";i:0;s:10:"profile_17";s:0:"";s:15:"profile_17_type";s:4:"text";s:22:"profile_17_placeholder";s:0:"";s:16:"profile_17_rules";i:0;s:18:"profile_17_options";s:0:"";s:17:"profile_18_status";i:0;s:10:"profile_18";s:0:"";s:15:"profile_18_type";s:4:"text";s:22:"profile_18_placeholder";s:0:"";s:16:"profile_18_rules";i:0;s:18:"profile_18_options";s:0:"";s:17:"profile_19_status";i:0;s:10:"profile_19";s:0:"";s:15:"profile_19_type";s:4:"text";s:22:"profile_19_placeholder";s:0:"";s:16:"profile_19_rules";i:0;s:18:"profile_19_options";s:0:"";s:17:"profile_20_status";i:0;s:10:"profile_20";s:0:"";s:15:"profile_20_type";s:4:"text";s:22:"profile_20_placeholder";s:0:"";s:16:"profile_20_rules";i:0;s:18:"profile_20_options";s:0:"";}', 'yes'),
(243, 'newsletter_subscription_lists', 'a:60:{s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;}', 'yes'),
(244, 'newsletter_subscription_template', 'a:2:{s:7:"enabled";i:0;s:8:"template";s:1829:"<!DOCTYPE html>\n<html>\n    <head>\n        <!-- General styles, not used by all email clients -->\n        <style type="text/css" media="all">\n            a {\n                text-decoration: none;\n                color: #0088cc;\n            }\n        </style>\n    </head>\n    \n    <!-- KEEP THE TAMPLE SIMPLE: THOSE ARE SERVICE MESSAGES. -->\n    <body style="margin: 0;">\n        <!-- Top title with dark background #333, font color #fff, font size 32px -->\n        <table style="background-color: #333; width: 100%; color: #fff; font-size: 32px">\n            <tr>\n                <td style="padding: 25px; text-align: center">\n                    {blog_title}\n                </td>\n            </tr>\n        </table>\n\n        <!-- Main table 100% wide with background color #eee -->    \n        <table style="background-color: #eee; width: 100%;">\n            <tr>\n                <td align="center"  style="padding: 25px;">\n\n                    <!-- Content table with backgdound color #fff, width 500px -->\n                    <table style="background-color: #fff; width: 500px; border: 1px solid #ddd;">\n                        <tr>\n                            <td style="padding: 25px; font-size: 16px; font-family: sans-serif">\n                                <!-- The {message} tag is replaced with one of confirmation, welcome or goodbye messages -->\n                                <!-- Messages content can be configured on Newsletter List Building panels --> \n\n                                {message}\n                                \n                                <!-- Signature if not already added to single messages (surround with <p>) -->\n\n                            </td>\n                        </tr>\n                    </table>\n\n                </td>\n            </tr>\n        </table>\n\n    </body>\n</html>";}', 'no'),
(245, 'newsletter_subscription_version', '2.0.2', 'yes'),
(246, 'newsletter_emails', 'a:1:{s:5:"theme";s:7:"default";}', 'yes'),
(247, 'newsletter_emails_theme_default', 'a:0:{}', 'no'),
(248, 'newsletter_emails_version', '1.1.5', 'yes'),
(249, 'newsletter_users', 'a:0:{}', 'yes'),
(251, 'newsletter_users_version', '1.0.6', 'yes'),
(252, 'newsletter_statistics', 'a:1:{s:3:"key";s:32:"4300b76492d1570c843a1bf55bb0e760";}', 'yes'),
(253, 'newsletter_statistics_version', '1.1.6', 'yes'),
(255, 'newsletter_lock', 'a:4:{s:3:"ids";s:0:"";s:3:"url";s:0:"";s:7:"message";s:89:"<p>Subscribe to our newsletter and get access to the full article.</p>[subscription_form]";s:7:"enabled";i:0;}', 'yes'),
(256, 'newsletter_lock_version', '1.0.3', 'yes'),
(258, 'newsletter_wp', 'a:5:{s:15:"subscribe_label";s:24:"Subscribe our newsletter";s:9:"subscribe";i:0;s:12:"confirmation";i:0;s:7:"welcome";i:0;s:6:"delete";i:0;}', 'yes'),
(259, 'newsletter_wp_version', '1.0.1', 'yes'),
(261, 'widget_newsletterwidget', 'a:2:{i:2;a:2:{s:5:"title";s:16:"الإشتراك";s:4:"text";s:19:"{subscription_form}";}s:12:"_multiwidget";i:1;}', 'yes'),
(263, 'newsletter_diagnostic_cron_calls', 'a:64:{i:0;i:1477858632;i:1;i:1477858929;i:2;i:1477859235;i:3;i:1477859549;i:4;i:1477859650;i:5;i:1477859664;i:6;i:1477859822;i:7;i:1477859841;i:8;i:1477859950;i:9;i:1477860160;i:10;i:1477860457;i:11;i:1477860825;i:12;i:1477894534;i:13;i:1477894643;i:14;i:1477894923;i:15;i:1477895262;i:16;i:1477895536;i:17;i:1477895822;i:18;i:1477895971;i:19;i:1477896413;i:20;i:1477896475;i:21;i:1477896785;i:22;i:1477897033;i:23;i:1477897396;i:24;i:1477897662;i:25;i:1477897928;i:26;i:1477897955;i:27;i:1477898258;i:28;i:1477898561;i:29;i:1477898922;i:30;i:1477899162;i:31;i:1477899852;i:32;i:1477900094;i:33;i:1477919827;i:34;i:1477939226;i:35;i:1477939385;i:36;i:1477939626;i:37;i:1477939928;i:38;i:1477940222;i:39;i:1477940611;i:40;i:1477940871;i:41;i:1477941174;i:42;i:1477941537;i:43;i:1477941779;i:44;i:1477942423;i:45;i:1477943058;i:46;i:1477943236;i:47;i:1477943523;i:48;i:1478111004;i:49;i:1478111234;i:50;i:1478111521;i:51;i:1478111912;i:52;i:1478112123;i:53;i:1478112462;i:54;i:1478112773;i:55;i:1478113075;i:56;i:1478113325;i:57;i:1478113636;i:58;i:1478113957;i:59;i:1478114243;i:60;i:1478114606;i:61;i:1478114847;i:62;i:1478115210;i:63;i:1478164701;}', 'no'),
(322, 'category_children', 'a:1:{i:12;a:3:{i:0;i:13;i:1;i:15;i:2;i:16;}}', 'yes'),
(324, 'newsletter_diagnostic_cron_data', 'a:3:{s:4:"mean";d:4781.328125;s:3:"max";i:167481;s:3:"min";i:14;}', 'no'),
(366, '_transient_timeout_dash_3fdf72be783280e3f45c13bb152a64e5', '1478207955', 'no'),
(367, '_transient_dash_3fdf72be783280e3f45c13bb152a64e5', '<div class="rss-widget"><p><strong>خطأ RSS</strong>: WP HTTP Error: cURL error 6: Couldn''t resolve host ''wordpress.org''</p></div><div class="rss-widget"><p><strong>خطأ RSS</strong>: WP HTTP Error: cURL error 6: Couldn''t resolve host ''planet.wordpress.org''</p></div>', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_pollsa`
--

CREATE TABLE `wp_2_pollsa` (
  `polla_aid` int(10) NOT NULL,
  `polla_qid` int(10) NOT NULL DEFAULT '0',
  `polla_answers` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `polla_votes` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_2_pollsa`
--

INSERT INTO `wp_2_pollsa` (`polla_aid`, `polla_qid`, `polla_answers`, `polla_votes`) VALUES
(1, 1, 'Good', 1),
(2, 1, 'Excellent', 0),
(3, 1, 'Bad', 0),
(4, 1, 'Can Be Improved', 0),
(5, 1, 'No Comments', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_pollsip`
--

CREATE TABLE `wp_2_pollsip` (
  `pollip_id` int(10) NOT NULL,
  `pollip_qid` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pollip_aid` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pollip_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pollip_host` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pollip_timestamp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollip_user` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pollip_userid` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_2_pollsip`
--

INSERT INTO `wp_2_pollsip` (`pollip_id`, `pollip_qid`, `pollip_aid`, `pollip_ip`, `pollip_host`, `pollip_timestamp`, `pollip_user`, `pollip_userid`) VALUES
(1, '1', '1', '127.0.0.1', 'localhost', '1477847179', 'msbenbakh', 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_pollsq`
--

CREATE TABLE `wp_2_pollsq` (
  `pollq_id` int(10) NOT NULL,
  `pollq_question` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `pollq_timestamp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pollq_totalvotes` int(10) NOT NULL DEFAULT '0',
  `pollq_active` tinyint(1) NOT NULL DEFAULT '1',
  `pollq_expiry` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pollq_multiple` tinyint(3) NOT NULL DEFAULT '0',
  `pollq_totalvoters` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_2_pollsq`
--

INSERT INTO `wp_2_pollsq` (`pollq_id`, `pollq_question`, `pollq_timestamp`, `pollq_totalvotes`, `pollq_active`, `pollq_expiry`, `pollq_multiple`, `pollq_totalvoters`) VALUES
(1, 'How Is My Site?', '1477846972', 1, 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_popularpostsdata`
--

CREATE TABLE `wp_2_popularpostsdata` (
  `postid` bigint(20) NOT NULL,
  `day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_viewed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pageviews` bigint(20) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_2_popularpostsdata`
--

INSERT INTO `wp_2_popularpostsdata` (`postid`, `day`, `last_viewed`, `pageviews`) VALUES
(4, '2016-10-30 20:40:37', '2016-10-31 18:43:07', 3),
(6, '2016-10-30 17:23:41', '2016-10-30 20:36:03', 5),
(8, '2016-10-30 17:24:09', '2016-10-30 20:40:26', 8),
(10, '2016-10-30 17:27:27', '2016-10-31 19:36:17', 14),
(27, '2016-10-30 20:36:08', '2016-10-31 19:15:02', 9),
(29, '2016-10-30 20:23:29', '2016-10-30 20:23:46', 2);

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_popularpostssummary`
--

CREATE TABLE `wp_2_popularpostssummary` (
  `ID` bigint(20) NOT NULL,
  `postid` bigint(20) NOT NULL,
  `pageviews` bigint(20) NOT NULL DEFAULT '1',
  `view_date` date NOT NULL DEFAULT '0000-00-00',
  `last_viewed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_2_popularpostssummary`
--

INSERT INTO `wp_2_popularpostssummary` (`ID`, `postid`, `pageviews`, `view_date`, `last_viewed`) VALUES
(1, 6, 5, '2016-10-30', '2016-10-30 20:36:03'),
(2, 8, 8, '2016-10-30', '2016-10-30 20:40:26'),
(3, 10, 8, '2016-10-30', '2016-10-30 20:35:35'),
(8, 29, 2, '2016-10-30', '2016-10-30 20:23:46'),
(19, 27, 3, '2016-10-30', '2016-10-30 20:38:03'),
(27, 4, 1, '2016-10-30', '2016-10-30 20:40:37'),
(28, 27, 6, '2016-10-31', '2016-10-31 19:15:02'),
(29, 10, 6, '2016-10-31', '2016-10-31 19:36:17'),
(30, 4, 2, '2016-10-31', '2016-10-31 18:43:07');

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_postmeta`
--

CREATE TABLE `wp_2_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_2_postmeta`
--

INSERT INTO `wp_2_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_lock', '1477897830:1'),
(3, 4, '_edit_last', '1'),
(6, 4, 'tie_sidebar_pos', 'default'),
(7, 4, 'tie_review_style', 'stars'),
(8, 6, '_edit_lock', '1477859763:1'),
(9, 6, '_edit_last', '1'),
(12, 6, 'tie_sidebar_pos', 'default'),
(13, 6, 'tie_review_style', 'stars'),
(14, 8, '_edit_lock', '1477859811:1'),
(15, 8, '_edit_last', '1'),
(18, 8, 'tie_sidebar_pos', 'default'),
(19, 8, 'tie_review_style', 'stars'),
(20, 10, '_edit_lock', '1477836305:1'),
(21, 10, '_edit_last', '1'),
(24, 10, 'tie_sidebar_pos', 'default'),
(25, 10, 'tie_review_style', 'stars'),
(28, 14, '_wp_attached_file', '2016/10/cover-houmty.jpg'),
(29, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:780;s:6:"height";i:468;s:4:"file";s:24:"2016/10/cover-houmty.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"cover-houmty-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"cover-houmty-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"cover-houmty-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-small";a:4:{s:4:"file";s:22:"cover-houmty-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-large";a:4:{s:4:"file";s:24:"cover-houmty-300x160.jpg";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:6:"slider";a:4:{s:4:"file";s:24:"cover-houmty-620x330.jpg";s:5:"width";i:620;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(32, 4, '_thumbnail_id', '14'),
(37, 18, '_wp_attached_file', '2016/10/COP22-Marrakech-2016-740x431.png'),
(38, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:740;s:6:"height";i:431;s:4:"file";s:40:"2016/10/COP22-Marrakech-2016-740x431.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"COP22-Marrakech-2016-740x431-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:40:"COP22-Marrakech-2016-740x431-300x175.png";s:5:"width";i:300;s:6:"height";i:175;s:9:"mime-type";s:9:"image/png";}s:9:"tie-small";a:4:{s:4:"file";s:38:"COP22-Marrakech-2016-740x431-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}s:9:"tie-large";a:4:{s:4:"file";s:40:"COP22-Marrakech-2016-740x431-300x160.png";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:9:"image/png";}s:6:"slider";a:4:{s:4:"file";s:40:"COP22-Marrakech-2016-740x431-620x330.png";s:5:"width";i:620;s:6:"height";i:330;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(39, 10, '_thumbnail_id', '18'),
(87, 24, '_menu_item_type', 'custom'),
(88, 24, '_menu_item_menu_item_parent', '0'),
(89, 24, '_menu_item_object_id', '24'),
(90, 24, '_menu_item_object', 'custom'),
(91, 24, '_menu_item_target', ''),
(92, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(93, 24, '_menu_item_xfn', ''),
(94, 24, '_menu_item_url', 'http://google.fr'),
(96, 25, '_menu_item_type', 'custom'),
(97, 25, '_menu_item_menu_item_parent', '0'),
(98, 25, '_menu_item_object_id', '25'),
(99, 25, '_menu_item_object', 'custom'),
(100, 25, '_menu_item_target', ''),
(101, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(102, 25, '_menu_item_xfn', ''),
(103, 25, '_menu_item_url', 'http://facebook.com'),
(105, 1, '_wp_trash_meta_status', 'publish'),
(106, 1, '_wp_trash_meta_time', '1477844296'),
(107, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(108, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(110, 8, 'tie_views', '8'),
(111, 6, 'tie_views', '4'),
(115, 10, 'tie_views', '11'),
(118, 27, '_edit_lock', '1477897787:1'),
(119, 27, '_edit_last', '1'),
(122, 27, 'tie_sidebar_pos', 'default'),
(123, 27, 'tie_review_style', 'stars'),
(140, 27, 'tie_views', '7'),
(141, 4, 'tie_views', '1'),
(142, 30, '_wp_attached_file', '2016/10/523590_4924308509205_592727850_n.jpg'),
(143, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:806;s:4:"file";s:44:"2016/10/523590_4924308509205_592727850_n.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"523590_4924308509205_592727850_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"523590_4924308509205_592727850_n-300x269.jpg";s:5:"width";i:300;s:6:"height";i:269;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"523590_4924308509205_592727850_n-768x688.jpg";s:5:"width";i:768;s:6:"height";i:688;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-small";a:4:{s:4:"file";s:42:"523590_4924308509205_592727850_n-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-large";a:4:{s:4:"file";s:44:"523590_4924308509205_592727850_n-300x160.jpg";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:6:"slider";a:4:{s:4:"file";s:44:"523590_4924308509205_592727850_n-620x330.jpg";s:5:"width";i:620;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(144, 31, '_wp_attached_file', '2016/10/tumblr_m7dgawg5v11qhymeq.jpg'),
(145, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:333;s:4:"file";s:36:"2016/10/tumblr_m7dgawg5v11qhymeq.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"tumblr_m7dgawg5v11qhymeq-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"tumblr_m7dgawg5v11qhymeq-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-small";a:4:{s:4:"file";s:34:"tumblr_m7dgawg5v11qhymeq-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-large";a:4:{s:4:"file";s:36:"tumblr_m7dgawg5v11qhymeq-300x160.jpg";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:6:"slider";a:4:{s:4:"file";s:36:"tumblr_m7dgawg5v11qhymeq-400x330.jpg";s:5:"width";i:400;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(148, 6, '_thumbnail_id', '31'),
(151, 27, '_thumbnail_id', '18'),
(154, 33, '_wp_attached_file', '2016/10/ghaza-water-1024x682.jpg'),
(155, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:682;s:4:"file";s:32:"2016/10/ghaza-water-1024x682.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"ghaza-water-1024x682-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"ghaza-water-1024x682-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"ghaza-water-1024x682-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"ghaza-water-1024x682-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-small";a:4:{s:4:"file";s:30:"ghaza-water-1024x682-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-large";a:4:{s:4:"file";s:32:"ghaza-water-1024x682-300x160.jpg";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:6:"slider";a:4:{s:4:"file";s:32:"ghaza-water-1024x682-620x330.jpg";s:5:"width";i:620;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(156, 8, '_thumbnail_id', '33'),
(157, 35, '_wp_attached_file', '2016/10/1454669_10202609752228672_1658157913_n.jpg'),
(158, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:600;s:4:"file";s:50:"2016/10/1454669_10202609752228672_1658157913_n.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"1454669_10202609752228672_1658157913_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:50:"1454669_10202609752228672_1658157913_n-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:50:"1454669_10202609752228672_1658157913_n-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-small";a:4:{s:4:"file";s:48:"1454669_10202609752228672_1658157913_n-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-large";a:4:{s:4:"file";s:50:"1454669_10202609752228672_1658157913_n-300x160.jpg";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:6:"slider";a:4:{s:4:"file";s:50:"1454669_10202609752228672_1658157913_n-620x330.jpg";s:5:"width";i:620;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(163, 39, '_edit_lock', '1477898417:1'),
(164, 39, '_edit_last', '1'),
(165, 39, '_wp_trash_meta_status', 'draft'),
(166, 39, '_wp_trash_meta_time', '1477898425'),
(167, 39, '_wp_desired_post_slug', ''),
(168, 40, '_edit_lock', '1477939882:1'),
(169, 41, '_menu_item_type', 'taxonomy'),
(170, 41, '_menu_item_menu_item_parent', '0'),
(171, 41, '_menu_item_object_id', '12'),
(172, 41, '_menu_item_object', 'category'),
(173, 41, '_menu_item_target', ''),
(174, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(175, 41, '_menu_item_xfn', ''),
(176, 41, '_menu_item_url', ''),
(205, 45, '_edit_lock', '1477943643:1'),
(206, 47, '_menu_item_type', 'taxonomy'),
(207, 47, '_menu_item_menu_item_parent', '41'),
(208, 47, '_menu_item_object_id', '16'),
(209, 47, '_menu_item_object', 'category'),
(210, 47, '_menu_item_target', ''),
(211, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(212, 47, '_menu_item_xfn', ''),
(213, 47, '_menu_item_url', ''),
(215, 48, '_menu_item_type', 'taxonomy'),
(216, 48, '_menu_item_menu_item_parent', '41'),
(217, 48, '_menu_item_object_id', '13'),
(218, 48, '_menu_item_object', 'category'),
(219, 48, '_menu_item_target', ''),
(220, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(221, 48, '_menu_item_xfn', ''),
(222, 48, '_menu_item_url', ''),
(224, 49, '_menu_item_type', 'taxonomy'),
(225, 49, '_menu_item_menu_item_parent', '41'),
(226, 49, '_menu_item_object_id', '15'),
(227, 49, '_menu_item_object', 'category'),
(228, 49, '_menu_item_target', ''),
(229, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(230, 49, '_menu_item_xfn', ''),
(231, 49, '_menu_item_url', ''),
(233, 50, '_menu_item_type', 'taxonomy'),
(234, 50, '_menu_item_menu_item_parent', '0'),
(235, 50, '_menu_item_object_id', '20'),
(236, 50, '_menu_item_object', 'category'),
(237, 50, '_menu_item_target', ''),
(238, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(239, 50, '_menu_item_xfn', ''),
(240, 50, '_menu_item_url', ''),
(242, 51, '_menu_item_type', 'taxonomy'),
(243, 51, '_menu_item_menu_item_parent', '0'),
(244, 51, '_menu_item_object_id', '18'),
(245, 51, '_menu_item_object', 'category'),
(246, 51, '_menu_item_target', ''),
(247, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(248, 51, '_menu_item_xfn', ''),
(249, 51, '_menu_item_url', ''),
(251, 52, '_menu_item_type', 'taxonomy'),
(252, 52, '_menu_item_menu_item_parent', '0'),
(253, 52, '_menu_item_object_id', '19'),
(254, 52, '_menu_item_object', 'category'),
(255, 52, '_menu_item_target', ''),
(256, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(257, 52, '_menu_item_xfn', ''),
(258, 52, '_menu_item_url', ''),
(260, 53, '_menu_item_type', 'taxonomy'),
(261, 53, '_menu_item_menu_item_parent', '0'),
(262, 53, '_menu_item_object_id', '22'),
(263, 53, '_menu_item_object', 'category'),
(264, 53, '_menu_item_target', ''),
(265, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(266, 53, '_menu_item_xfn', ''),
(267, 53, '_menu_item_url', ''),
(278, 55, '_menu_item_type', 'taxonomy'),
(279, 55, '_menu_item_menu_item_parent', '0'),
(280, 55, '_menu_item_object_id', '23'),
(281, 55, '_menu_item_object', 'category'),
(282, 55, '_menu_item_target', ''),
(283, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(284, 55, '_menu_item_xfn', ''),
(285, 55, '_menu_item_url', ''),
(287, 56, '_menu_item_type', 'taxonomy'),
(288, 56, '_menu_item_menu_item_parent', '0'),
(289, 56, '_menu_item_object_id', '17'),
(290, 56, '_menu_item_object', 'category'),
(291, 56, '_menu_item_target', ''),
(292, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(293, 56, '_menu_item_xfn', ''),
(294, 56, '_menu_item_url', ''),
(296, 57, '_menu_item_type', 'taxonomy'),
(297, 57, '_menu_item_menu_item_parent', '0'),
(298, 57, '_menu_item_object_id', '21'),
(299, 57, '_menu_item_object', 'category'),
(300, 57, '_menu_item_target', ''),
(301, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(302, 57, '_menu_item_xfn', ''),
(303, 57, '_menu_item_url', ''),
(305, 58, '_menu_item_type', 'taxonomy'),
(306, 58, '_menu_item_menu_item_parent', '0'),
(307, 58, '_menu_item_object_id', '11'),
(308, 58, '_menu_item_object', 'category'),
(309, 58, '_menu_item_target', ''),
(310, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(311, 58, '_menu_item_xfn', ''),
(312, 58, '_menu_item_url', ''),
(323, 60, '_menu_item_type', 'taxonomy'),
(324, 60, '_menu_item_menu_item_parent', '0'),
(325, 60, '_menu_item_object_id', '24'),
(326, 60, '_menu_item_object', 'category'),
(327, 60, '_menu_item_target', ''),
(328, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(329, 60, '_menu_item_xfn', ''),
(330, 60, '_menu_item_url', ''),
(341, 62, '_wp_attached_file', '2016/11/SlidercampVE.png'),
(342, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:450;s:4:"file";s:24:"2016/11/SlidercampVE.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"SlidercampVE-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"SlidercampVE-300x135.png";s:5:"width";i:300;s:6:"height";i:135;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:24:"SlidercampVE-768x346.png";s:5:"width";i:768;s:6:"height";i:346;s:9:"mime-type";s:9:"image/png";}s:9:"tie-small";a:4:{s:4:"file";s:22:"SlidercampVE-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}s:9:"tie-large";a:4:{s:4:"file";s:24:"SlidercampVE-300x160.png";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:9:"image/png";}s:6:"slider";a:4:{s:4:"file";s:24:"SlidercampVE-620x330.png";s:5:"width";i:620;s:6:"height";i:330;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(343, 63, '_wp_attached_file', '2016/11/COP22-marrakech-2016-e1470241519445.jpg'),
(344, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:465;s:4:"file";s:47:"2016/11/COP22-marrakech-2016-e1470241519445.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"COP22-marrakech-2016-e1470241519445-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:47:"COP22-marrakech-2016-e1470241519445-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-small";a:4:{s:4:"file";s:45:"COP22-marrakech-2016-e1470241519445-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-large";a:4:{s:4:"file";s:47:"COP22-marrakech-2016-e1470241519445-300x160.jpg";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:6:"slider";a:4:{s:4:"file";s:47:"COP22-marrakech-2016-e1470241519445-620x330.jpg";s:5:"width";i:620;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(345, 64, '_wp_attached_file', '2016/11/image-pour-houmty-logo.jpg'),
(346, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:900;s:4:"file";s:34:"2016/11/image-pour-houmty-logo.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"image-pour-houmty-logo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"image-pour-houmty-logo-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"image-pour-houmty-logo-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"image-pour-houmty-logo-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-small";a:4:{s:4:"file";s:32:"image-pour-houmty-logo-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-large";a:4:{s:4:"file";s:34:"image-pour-houmty-logo-300x160.jpg";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:6:"slider";a:4:{s:4:"file";s:34:"image-pour-houmty-logo-620x330.jpg";s:5:"width";i:620;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:10:"NIKON D810";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1452867454";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:8:"0.003125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(347, 65, '_wp_attached_file', '2016/11/SlidercampVE-1.png'),
(348, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:450;s:4:"file";s:26:"2016/11/SlidercampVE-1.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"SlidercampVE-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"SlidercampVE-1-300x135.png";s:5:"width";i:300;s:6:"height";i:135;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"SlidercampVE-1-768x346.png";s:5:"width";i:768;s:6:"height";i:346;s:9:"mime-type";s:9:"image/png";}s:9:"tie-small";a:4:{s:4:"file";s:24:"SlidercampVE-1-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}s:9:"tie-large";a:4:{s:4:"file";s:26:"SlidercampVE-1-300x160.png";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:9:"image/png";}s:6:"slider";a:4:{s:4:"file";s:26:"SlidercampVE-1-620x330.png";s:5:"width";i:620;s:6:"height";i:330;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(349, 66, '_wp_attached_file', '2016/11/téléchargement.jpg'),
(350, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:270;s:6:"height";i:187;s:4:"file";s:28:"2016/11/téléchargement.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"téléchargement-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-small";a:4:{s:4:"file";s:26:"téléchargement-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-large";a:4:{s:4:"file";s:28:"téléchargement-270x160.jpg";s:5:"width";i:270;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(351, 67, '_wp_attached_file', '2016/11/header.png'),
(352, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:187;s:4:"file";s:18:"2016/11/header.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"header-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"header-300x52.png";s:5:"width";i:300;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:18:"header-768x133.png";s:5:"width";i:768;s:6:"height";i:133;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:19:"header-1024x177.png";s:5:"width";i:1024;s:6:"height";i:177;s:9:"mime-type";s:9:"image/png";}s:9:"tie-small";a:4:{s:4:"file";s:16:"header-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}s:9:"tie-large";a:4:{s:4:"file";s:18:"header-300x160.png";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:9:"image/png";}s:6:"slider";a:4:{s:4:"file";s:18:"header-620x187.png";s:5:"width";i:620;s:6:"height";i:187;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(353, 68, '_wp_attached_file', '2016/11/final-header.png'),
(354, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1170;s:6:"height";i:187;s:4:"file";s:24:"2016/11/final-header.png";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"final-header-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"final-header-300x48.png";s:5:"width";i:300;s:6:"height";i:48;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:24:"final-header-768x123.png";s:5:"width";i:768;s:6:"height";i:123;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"final-header-1024x164.png";s:5:"width";i:1024;s:6:"height";i:164;s:9:"mime-type";s:9:"image/png";}s:9:"tie-small";a:4:{s:4:"file";s:22:"final-header-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}s:9:"tie-large";a:4:{s:4:"file";s:24:"final-header-300x160.png";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:9:"image/png";}s:6:"slider";a:4:{s:4:"file";s:24:"final-header-620x187.png";s:5:"width";i:620;s:6:"height";i:187;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(355, 69, '_edit_lock', '1478113297:1'),
(356, 69, '_edit_last', '1'),
(357, 69, '_wp_page_template', 'default'),
(358, 69, 'tie_sidebar_pos', 'default'),
(359, 69, 'tie_review_style', 'stars'),
(360, 69, 'tie_review_criteria', 'a:10:{i:1;a:2:{s:4:"name";s:0:"";s:5:"score";s:1:"0";}i:2;a:2:{s:4:"name";s:0:"";s:5:"score";s:1:"0";}i:3;a:2:{s:4:"name";s:0:"";s:5:"score";s:1:"0";}i:4;a:2:{s:4:"name";s:0:"";s:5:"score";s:1:"0";}i:5;a:2:{s:4:"name";s:0:"";s:5:"score";s:1:"0";}i:6;a:2:{s:4:"name";s:0:"";s:5:"score";s:1:"0";}i:7;a:2:{s:4:"name";s:0:"";s:5:"score";s:1:"0";}i:8;a:2:{s:4:"name";s:0:"";s:5:"score";s:1:"0";}i:9;a:2:{s:4:"name";s:0:"";s:5:"score";s:1:"0";}i:10;a:2:{s:4:"name";s:0:"";s:5:"score";s:1:"0";}}'),
(361, 69, 'tie_review_score', NULL),
(362, 71, '_wp_attached_file', '2016/11/logo1.png'),
(363, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:270;s:6:"height";i:170;s:4:"file";s:17:"2016/11/logo1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"logo1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:9:"tie-small";a:4:{s:4:"file";s:15:"logo1-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}s:9:"tie-large";a:4:{s:4:"file";s:17:"logo1-270x160.png";s:5:"width";i:270;s:6:"height";i:160;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(364, 72, '_wp_attached_file', '2016/11/logo-e1478114751972.png'),
(365, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:216;s:6:"height";i:120;s:4:"file";s:31:"2016/11/logo-e1478114751972.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:9:"tie-small";a:4:{s:4:"file";s:14:"logo-70x70.png";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(366, 72, '_wp_attachment_backup_sizes', 'a:1:{s:9:"full-orig";a:3:{s:5:"width";i:270;s:6:"height";i:150;s:4:"file";s:8:"logo.png";}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_posts`
--

CREATE TABLE `wp_2_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_2_posts`
--

INSERT INTO `wp_2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-10-30 13:11:37', '2016-10-30 12:11:37', 'Bienvenue sur <a href="http://klivin-pc/houmty/">Sites houmty</a>. Vous lisez votre premier article. Modifiez-le ou supprimez-le, puis commencez à publier&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2016-10-30 17:18:16', '2016-10-30 16:18:16', '', 0, 'http://klivin-pc/houmty/ar/?p=1', 0, 'post', '', 1),
(2, 1, '2016-10-30 13:11:37', '2016-10-30 12:11:37', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://klivin-pc/houmty/ar/wp-admin/">Tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2016-10-30 13:11:37', '2016-10-30 12:11:37', '', 0, 'http://klivin-pc/houmty/ar/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-10-30 13:11:46', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-30 13:11:46', '0000-00-00 00:00:00', '', 0, 'http://klivin-pc/houmty/ar/?p=3', 0, 'post', '', 0),
(4, 1, '2016-10-30 13:15:31', '2016-10-30 12:15:31', '<p style="text-align: right;"><img class="alignnone wp-image-14" src="http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/cover-houmty-300x180.jpg" alt="cover-houmty" width="458" height="275" /></p>\r\n<p style="text-align: right;"> يشكل تغير المناخ أحد أكبر المخاطر على السياحة، التي تعتبر من أهم القطاعات الاقتصادية وأسرعها نمواً، وهي تولد 9 في المئة من الناتج المحلي الإجمالي العالمي وتوفر وظيفة واحدة من كل 11 وظيفة. وفي حين يلحق سوء الإدارة الضرر بالمواقع السياحية، فإن تغير المناخ يضاعف خطر خسارة الميزات التي تجعل هذه المواقع وجهات جذابة للسياح.</p>\r\n\r\n<div dir="RTL" style="text-align: right;">«التراث العالمي والسياحة في مناخ متغير» تقرير صدر حديثاً عن منظمة اليونسكو وبرنامج الأمم المتحدة للبيئة و«اتحاد العلماء المهتمين» في الولايات المتحدة. وهو يدرج 31 موقعاً للتراث العالمي الطبيعي والثقافي في 29 بلداً، تتعرض لتأثيرات ارتفاع درجات الحرارة وذوبان الكتل الجليدية وارتفاع مستويات البحار وابيضاض الشعاب المرجانية واشتداد الأحداث المناخية وتفاقم موجات الجفاف واستطالة مواسم حرائق الغابات. ويوثق التأثيرات المناخية في مواقع سياحية شهيرة، مثل مدينة البندقية في إيطاليا وستونهنج في بريطانيا وجزر غلاباغوس في الإكوادور ومدينة قرطاجنة في كولومبيا ومتنزه شيريتوكو الوطني في اليابان.</div>\r\n<div dir="RTL" style="text-align: right;">ويتناول التقرير ثلاثة مواقع للتراث العالمي في المنطقة العربية، هي وادي قاديشا وغابة «أرز الرب» في لبنان، ووادي رم في الأردن، وقصور وادان وولاتة وتيشيت في موريتانيا، واصفاً مزاياها وعارضاً المخاطر التي تواجهها من تأثيرات تغير المناخ.</div>\r\n<div dir="RTL" style="text-align: right;"></div>\r\n<!--more-->\r\n<div dir="RTL" style="text-align: right;"><b>وادي قاديشا وغابة الأرز في لبنان</b></div>\r\n<div dir="RTL" style="text-align: right;">يعتبر وادي قاديشا في شمال لبنان نموذجاً لمواقع عاشت فيها مجتمعات منذ القدم ومارست طقوساً في نسيج بيئتها الطبيعية. أولئك الذين أقاموا هناك في الأديرة والمناسك الكثيرة، التي يعود بعضها إلى نحو ألفي سنة، أرادوا التقرب من الخالق في أحضان طبيعة نائية وعرة، من منحدرات شاهقة وشبكات كهوف طبيعية اتّخذوها ملاذات لهم.</div>\r\n<div dir="RTL" style="text-align: right;">لكن تغير المناخ والنشاط السياحي يزيدان الضغط على المعيشة التقليدية والنظم الإيكولوجية في وادي قاديشا. وتنحصر غابة الأرز الشهيرة عالمياً ضمن بقعة صغيرة لا تتعدى مساحتها هكتارين وتعرف بغابة أرز الرب. وهي تضم أقدم وأكبر أشجار الأرز المعروفة، فمن نحو 375 شجرة متبقية، يفوق عمر اثنتين 3000 سنة، فيما يزيد عمر عشر أشجار على 1000 سنة، ومنها أربع يزيد عمرها على 1500 سنة. والغابة قريبة من بلدة بشري، التي تعتبر من مراكز التزلج الرئيسية في لبنان، على منحدر جبلي تعرّت أرضه بفعل الرعي الجائر لقطعان الماعز.</div>\r\n<div dir="RTL" style="text-align: right;">السياحة عنصر هام في الاقتصاد اللبناني. وعلى رغم أن الاضطراب السياسي أدى إلى انخفاض كبير في عدد السياح منذ الذروة التي سجلها عام 2009، فقد ساهمت السياحة في 25 في المئة من الناتج المحلي الإجمالي للبلاد عام 2012. وفي العام 2000، زار الغابة أكثر من 200 ألف سائح أي 20 في المئة من زوار لبنان ذلك العام.</div>\r\n<div dir="RTL" style="text-align: right;">لأرز لبنان (<span dir="LTR">Cedrus libani</span>) قيمة روحية منذ القدم، وقد ورد ذكره 103 مرات في العهدين القديم والجديد، بما في ذلك المزمور 104:16 الذي جاء فيه أن «الرب زرعه، وهو الذي يرويه». والأهمية الروحية لأرز وادي قاديشا تمتد أبعد كثيراً من المجتمعات المحلية. فقد استخدم خشبه في بناء المعابد في أنحاء المشرق، بما في ذلك هيكل سليمان في القدس الذي بني في القرن العاشر قبل الميلاد.</div>\r\n<div dir="RTL" style="text-align: right;">وخشب الأرز مرادف أيضاً لطموحات الفينيقيين القدماء الكبيرة في بناء السفن وركوب البحار. وهو مطلوب منذ نحو 5000 سنة في منطقة البحر المتوسط لمتانته وديمومته. وقد أقبل الأقدمون على استخدامه كمادة بناء، مما جعل غاباته الكبيرة في لبنان تتلاشى بحلول القرن السادس، وفق مصادر تاريخية تعود إلى زمن الإمبراطور البيزنطي جوستنيان الأول (482 ـ 565م). واستمرت غاباته في التقلص على مرّ القرون، ولم يبق حالياً  إلا 5 في المئة من مساحتها الأصلية.</div>\r\n<div dir="RTL" style="text-align: right;">ومن المتوقع أن يستمر انخفاض أعداد أشجار الأرز نتيجة تغير المناخ. والتوقعات مبنية على التحليل الجيني ودراسة حبوب اللقاح التي تلقي الضوء على حقبات سابقة من التغير المناخي الكبير، مثل فترة الانتقال من العصر «بين الجليدي» الأخير إلى العصر الجليدي الأخير قبل نحو 15 ألف عام، ومن العصر الجليدي الأخير إلى عصر الهولوسين المبكر قبل نحو 12 ألف عام.</div>\r\n<div dir="RTL" style="text-align: right;">يتوقع الباحثون أن يؤدي تغير المناخ إلى حصر تجمعات الأرز اللبناني في ثلاثة ملاذات فقط بحلول سنة 2100، نتيجة ارتفاع درجات الحرارة والإجهاد المائي الناجم عن انخفاض الرطوبة في منطقة البحر المتوسط. وفي حين تستطيع التجمعات النباتية الأخرى التكيف مع تغير المناخ بالزحف إلى ارتفاعات أعلى، فإن غالبية غابات الأرز في لبنان معزولة أصلاً على قمم الجبال أو قربها، فلا مكان أعلى للانتقال إليه. لكن غابة «أرز الرب» في وادي قاديشا استثناء لهذه القاعدة، وهي إحدى ثلاث غابات أرز يتوافر لها موئل أعلى لانتقال محتمل، مما يجعل حمايتها أكثر إلحاحاً.</div>\r\n<div dir="RTL" style="text-align: right;">يتوقع أن تتغير المنطقة المناخية الحيوية لغابة أرز الرب، ما يؤثر في توزعها وتركيبة أنواعها. وقد ازدادت هجمات الحشرات، يؤججها ازدياد الجفاف والقحل، فباتت تؤثر بالفعل على غابتي الأرز في تنورين والشوف، وتهدد بالانتشار إلى أرز الرب.</div>\r\n<div dir="RTL" style="text-align: right;">هناك حالياً في لبنان أكثر من 12 غابة أرز تقع على ارتفاعات تتراوح بين 1100 متر و1925 متراً على السفوح الغربية لسلسلة جبال لبنان، ويحتل معظمها مساحة تقل عن 100 هكتار. وهي مناطق ذات تنوع بيولوجي كبير تؤوي أنواعاً نباتية مستوطنة ومهددة بالزوال. وأرز لبنان مدرج كنوع سريع التأثر على القائمة الحمراء للاتحاد الدولي لحماية الطبيعة (<span dir="LTR">IUCN</span>).</div>\r\n<div dir="RTL" style="text-align: right;"></div>\r\n<div dir="RTL" style="text-align: right;"><b>وادي رم تحفة الأردن الصحراوية</b></div>\r\n<div dir="RTL" style="text-align: right;">وادي رم موقع صحراوي مميز في جنوب الأردن، يزخر بالممرات الضيقة والأجراف العالية والكهوف والقناطر الطبيعية والمشاهد الخلابة. وقد أُدرج على قائمة اليونسكو كموقع للتراث العالمي لقيمته الطبيعية والثقافية.</div>\r\n<div dir="RTL" style="text-align: right;">تبلغ مساحة وادي رم نحو 300 كيلومتر مربع، ويحوي أكثر من 45 ألف منحوتة ونقش صخري يعود تاريخها إلى 12 ألف سنة خلت، ما يساعد في الإضاءة على نشوء المجتمعات الرعوية وتطور الأبجدية. وهو ملاذ هام للأحياء البرية الصحراوية، بما فيها الصقر الأسخم والوعل العربي والمها العربي الذي أعيد توطينه. وكثير من نباتاته مصادر هامة للغذاء وعلف الماشية والأدوية للبدو المحليين. لكن السياحة غير المنظمة، بما في ذلك قيادة المركبات خارج الطرق، ومواقع التخييم غير الشرعية، والتجول من دون أدلاء، والكتابة على الصخور، وتأثر الثقافة المحلية بأكثر من 300 ألف سائح يزورون هذه المنطقة النائية سنوياً، تلقي جميعاً بثقلها على وادي رم.</div>\r\n<div dir="RTL" style="text-align: right;">ومن المتوقع أن يزيد تغير المناخ في هذه المشاكل. فارتفاع الحرارة وازدياد الجفاف سيؤديان إلى تفاقم الاجهاد المائي، وسوف يشكلان خطراً بشكل خاص على الأنواع الحية المحصورة في الأماكن الجبلية العالية في وادي رم. وهناك حاجة ملحة إلى بحوث مفصلة حول سيناريوهات تغير المناخ في الوادي.</div>\r\n<div dir="RTL" style="text-align: right;"></div>\r\n<div dir="RTL" style="text-align: right;"><b>المدن القديمة في موريتانيا</b></div>\r\n<div dir="RTL" style="text-align: right;">«قصور» وادان وشنقيط وتيشيت وولاته مدن قديمة في موريتانيا كانت مراكز تجارية وثقافية هامة على طرق القوافل عبر الصحراء الأفريقية الكبرى في العصور الوسطى. وهي ضمن مواقع التراث العالمي لدى  منظمة اليونسكو.</div>\r\n<div dir="RTL" style="text-align: right;">اشتهرت شنقيط بمسجدها ذي المئذنة المربعة التي بنيت بحجارة من دون ملاط. وتعتبر سابع المدن المقدسة في الإسلام. وهي، مثل القصور الأخرى، مقصد تاريخي للزوار الذين يجلبون دخلاً حيوياً للسكان المحليين.</div>\r\n<div dir="RTL" style="text-align: right;">السياحة في موريتانيا متخلفة جداً، وزاد في مشاكلها خلال السنوات الأخيرة القلق على أمن المسافرين. وقصور موريتانيا، التي كانت في الماضي مراكز للثقافة البدوية والإسلامية في شمال أفريقيا، يتهددها حالياً زحف الصحراء.</div>\r\n<div dir="RTL" style="text-align: right;">شوارع وساحات شنقيط، التي عرفت بمكتبتها القديمة الغنية بالكتب والمخطوطات الإسلامية، تختنق بالرمال إذ تزحف الكثبان داخل المدينة. وقد يتلف الرمل والحر الشديد الأبنية القديمة، وتهدد العواصف المطرية الهوجاء العمارة الطينية وتزيد تآكل التربة.</div>\r\n<div dir="RTL" style="text-align: right;">ويفاقم التصحر في منطقة «الساحل» المشكلة، ومن أسبابه الرعي الجائر وإزالة الغابات والتوسع الحضري، إضافة إلى موجات الجفاف الحاد الطويلة الأمد والهطول الغزير حين تمطر، ما يزيد الضغوط الحالية والنزاعات على الموارد الطبيعية.</div>', 'ثلاثة مواقع عربية للتراث العالمي مهددة مناخياً', '', 'publish', 'open', 'open', '', '%d8%ab%d9%84%d8%a7%d8%ab%d8%a9-%d9%85%d9%88%d8%a7%d9%82%d8%b9-%d8%b9%d8%b1%d8%a8%d9%8a%d8%a9-%d9%84%d9%84%d8%aa%d8%b1%d8%a7%d8%ab-%d8%a7%d9%84%d8%b9%d8%a7%d9%84%d9%85%d9%8a-%d9%85%d9%87%d8%af%d8%af', '', '', '2016-10-31 07:12:33', '2016-10-31 07:12:33', '', 0, 'http://klivin-pc/houmty/ar/?p=4', 0, 'post', '', 0),
(5, 1, '2016-10-30 13:15:31', '2016-10-30 12:15:31', '<img class="alignright" src="http://www.afedmag.com/uploaded/images/HomeImages_07718e38-5dc8-40ce-8b92-06968deb8c59_.png" />\r\n<table class=" alignright" border="0" width="610" cellspacing="0" cellpadding="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td valign="bottom">\r\n<table border="0" width="610" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td align="right" height="35">\r\n<table border="0" width="610" cellspacing="0" cellpadding="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td valign="middle">\r\n<table border="0" width="610" cellspacing="0" cellpadding="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="text14" align="right" valign="top" height="160">\r\n<div>\r\n<div> يشكل تغير المناخ أحد أكبر المخاطر على السياحة، التي تعتبر من أهم القطاعات الاقتصادية وأسرعها نمواً، وهي تولد 9 في المئة من الناتج المحلي الإجمالي العالمي وتوفر وظيفة واحدة من كل 11 وظيفة. وفي حين يلحق سوء الإدارة الضرر بالمواقع السياحية، فإن تغير المناخ يضاعف خطر خسارة الميزات التي تجعل هذه المواقع وجهات جذابة للسياح.</div>\r\n<div dir="RTL">«التراث العالمي والسياحة في مناخ متغير» تقرير صدر حديثاً عن منظمة اليونسكو وبرنامج الأمم المتحدة للبيئة و«اتحاد العلماء المهتمين» في الولايات المتحدة. وهو يدرج 31 موقعاً للتراث العالمي الطبيعي والثقافي في 29 بلداً، تتعرض لتأثيرات ارتفاع درجات الحرارة وذوبان الكتل الجليدية وارتفاع مستويات البحار وابيضاض الشعاب المرجانية واشتداد الأحداث المناخية وتفاقم موجات الجفاف واستطالة مواسم حرائق الغابات. ويوثق التأثيرات المناخية في مواقع سياحية شهيرة، مثل مدينة البندقية في إيطاليا وستونهنج في بريطانيا وجزر غلاباغوس في الإكوادور ومدينة قرطاجنة في كولومبيا ومتنزه شيريتوكو الوطني في اليابان.</div>\r\n<div dir="RTL">ويتناول التقرير ثلاثة مواقع للتراث العالمي في المنطقة العربية، هي وادي قاديشا وغابة «أرز الرب» في لبنان، ووادي رم في الأردن، وقصور وادان وولاتة وتيشيت في موريتانيا، واصفاً مزاياها وعارضاً المخاطر التي تواجهها من تأثيرات تغير المناخ.</div>\r\n<div dir="RTL"></div>\r\n<div dir="RTL"><b>وادي قاديشا وغابة الأرز في لبنان</b></div>\r\n<div dir="RTL">يعتبر وادي قاديشا في شمال لبنان نموذجاً لمواقع عاشت فيها مجتمعات منذ القدم ومارست طقوساً في نسيج بيئتها الطبيعية. أولئك الذين أقاموا هناك في الأديرة والمناسك الكثيرة، التي يعود بعضها إلى نحو ألفي سنة، أرادوا التقرب من الخالق في أحضان طبيعة نائية وعرة، من منحدرات شاهقة وشبكات كهوف طبيعية اتّخذوها ملاذات لهم.</div>\r\n<div dir="RTL">لكن تغير المناخ والنشاط السياحي يزيدان الضغط على المعيشة التقليدية والنظم الإيكولوجية في وادي قاديشا. وتنحصر غابة الأرز الشهيرة عالمياً ضمن بقعة صغيرة لا تتعدى مساحتها هكتارين وتعرف بغابة أرز الرب. وهي تضم أقدم وأكبر أشجار الأرز المعروفة، فمن نحو 375 شجرة متبقية، يفوق عمر اثنتين 3000 سنة، فيما يزيد عمر عشر أشجار على 1000 سنة، ومنها أربع يزيد عمرها على 1500 سنة. والغابة قريبة من بلدة بشري، التي تعتبر من مراكز التزلج الرئيسية في لبنان، على منحدر جبلي تعرّت أرضه بفعل الرعي الجائر لقطعان الماعز.</div>\r\n<div dir="RTL">السياحة عنصر هام في الاقتصاد اللبناني. وعلى رغم أن الاضطراب السياسي أدى إلى انخفاض كبير في عدد السياح منذ الذروة التي سجلها عام 2009، فقد ساهمت السياحة في 25 في المئة من الناتج المحلي الإجمالي للبلاد عام 2012. وفي العام 2000، زار الغابة أكثر من 200 ألف سائح أي 20 في المئة من زوار لبنان ذلك العام.</div>\r\n<div dir="RTL">لأرز لبنان (<span dir="LTR">Cedrus libani</span>) قيمة روحية منذ القدم، وقد ورد ذكره 103 مرات في العهدين القديم والجديد، بما في ذلك المزمور 104:16 الذي جاء فيه أن «الرب زرعه، وهو الذي يرويه». والأهمية الروحية لأرز وادي قاديشا تمتد أبعد كثيراً من المجتمعات المحلية. فقد استخدم خشبه في بناء المعابد في أنحاء المشرق، بما في ذلك هيكل سليمان في القدس الذي بني في القرن العاشر قبل الميلاد.</div>\r\n<div dir="RTL">وخشب الأرز مرادف أيضاً لطموحات الفينيقيين القدماء الكبيرة في بناء السفن وركوب البحار. وهو مطلوب منذ نحو 5000 سنة في منطقة البحر المتوسط لمتانته وديمومته. وقد أقبل الأقدمون على استخدامه كمادة بناء، مما جعل غاباته الكبيرة في لبنان تتلاشى بحلول القرن السادس، وفق مصادر تاريخية تعود إلى زمن الإمبراطور البيزنطي جوستنيان الأول (482 ـ 565م). واستمرت غاباته في التقلص على مرّ القرون، ولم يبق حالياً  إلا 5 في المئة من مساحتها الأصلية.</div>\r\n<div dir="RTL">ومن المتوقع أن يستمر انخفاض أعداد أشجار الأرز نتيجة تغير المناخ. والتوقعات مبنية على التحليل الجيني ودراسة حبوب اللقاح التي تلقي الضوء على حقبات سابقة من التغير المناخي الكبير، مثل فترة الانتقال من العصر «بين الجليدي» الأخير إلى العصر الجليدي الأخير قبل نحو 15 ألف عام، ومن العصر الجليدي الأخير إلى عصر الهولوسين المبكر قبل نحو 12 ألف عام.</div>\r\n<div dir="RTL">يتوقع الباحثون أن يؤدي تغير المناخ إلى حصر تجمعات الأرز اللبناني في ثلاثة ملاذات فقط بحلول سنة 2100، نتيجة ارتفاع درجات الحرارة والإجهاد المائي الناجم عن انخفاض الرطوبة في منطقة البحر المتوسط. وفي حين تستطيع التجمعات النباتية الأخرى التكيف مع تغير المناخ بالزحف إلى ارتفاعات أعلى، فإن غالبية غابات الأرز في لبنان معزولة أصلاً على قمم الجبال أو قربها، فلا مكان أعلى للانتقال إليه. لكن غابة «أرز الرب» في وادي قاديشا استثناء لهذه القاعدة، وهي إحدى ثلاث غابات أرز يتوافر لها موئل أعلى لانتقال محتمل، مما يجعل حمايتها أكثر إلحاحاً.</div>\r\n<div dir="RTL">يتوقع أن تتغير المنطقة المناخية الحيوية لغابة أرز الرب، ما يؤثر في توزعها وتركيبة أنواعها. وقد ازدادت هجمات الحشرات، يؤججها ازدياد الجفاف والقحل، فباتت تؤثر بالفعل على غابتي الأرز في تنورين والشوف، وتهدد بالانتشار إلى أرز الرب.</div>\r\n<div dir="RTL">هناك حالياً في لبنان أكثر من 12 غابة أرز تقع على ارتفاعات تتراوح بين 1100 متر و1925 متراً على السفوح الغربية لسلسلة جبال لبنان، ويحتل معظمها مساحة تقل عن 100 هكتار. وهي مناطق ذات تنوع بيولوجي كبير تؤوي أنواعاً نباتية مستوطنة ومهددة بالزوال. وأرز لبنان مدرج كنوع سريع التأثر على القائمة الحمراء للاتحاد الدولي لحماية الطبيعة (<span dir="LTR">IUCN</span>).</div>\r\n<div dir="RTL"></div>\r\n<div dir="RTL"><b>وادي رم تحفة الأردن الصحراوية</b></div>\r\n<div dir="RTL">وادي رم موقع صحراوي مميز في جنوب الأردن، يزخر بالممرات الضيقة والأجراف العالية والكهوف والقناطر الطبيعية والمشاهد الخلابة. وقد أُدرج على قائمة اليونسكو كموقع للتراث العالمي لقيمته الطبيعية والثقافية.</div>\r\n<div dir="RTL">تبلغ مساحة وادي رم نحو 300 كيلومتر مربع، ويحوي أكثر من 45 ألف منحوتة ونقش صخري يعود تاريخها إلى 12 ألف سنة خلت، ما يساعد في الإضاءة على نشوء المجتمعات الرعوية وتطور الأبجدية. وهو ملاذ هام للأحياء البرية الصحراوية، بما فيها الصقر الأسخم والوعل العربي والمها العربي الذي أعيد توطينه. وكثير من نباتاته مصادر هامة للغذاء وعلف الماشية والأدوية للبدو المحليين. لكن السياحة غير المنظمة، بما في ذلك قيادة المركبات خارج الطرق، ومواقع التخييم غير الشرعية، والتجول من دون أدلاء، والكتابة على الصخور، وتأثر الثقافة المحلية بأكثر من 300 ألف سائح يزورون هذه المنطقة النائية سنوياً، تلقي جميعاً بثقلها على وادي رم.</div>\r\n<div dir="RTL">ومن المتوقع أن يزيد تغير المناخ في هذه المشاكل. فارتفاع الحرارة وازدياد الجفاف سيؤديان إلى تفاقم الاجهاد المائي، وسوف يشكلان خطراً بشكل خاص على الأنواع الحية المحصورة في الأماكن الجبلية العالية في وادي رم. وهناك حاجة ملحة إلى بحوث مفصلة حول سيناريوهات تغير المناخ في الوادي.</div>\r\n<div dir="RTL"></div>\r\n<div dir="RTL"><b>المدن القديمة في موريتانيا</b></div>\r\n<div dir="RTL">«قصور» وادان وشنقيط وتيشيت وولاته مدن قديمة في موريتانيا كانت مراكز تجارية وثقافية هامة على طرق القوافل عبر الصحراء الأفريقية الكبرى في العصور الوسطى. وهي ضمن مواقع التراث العالمي لدى  منظمة اليونسكو.</div>\r\n<div dir="RTL">اشتهرت شنقيط بمسجدها ذي المئذنة المربعة التي بنيت بحجارة من دون ملاط. وتعتبر سابع المدن المقدسة في الإسلام. وهي، مثل القصور الأخرى، مقصد تاريخي للزوار الذين يجلبون دخلاً حيوياً للسكان المحليين.</div>\r\n<div dir="RTL">السياحة في موريتانيا متخلفة جداً، وزاد في مشاكلها خلال السنوات الأخيرة القلق على أمن المسافرين. وقصور موريتانيا، التي كانت في الماضي مراكز للثقافة البدوية والإسلامية في شمال أفريقيا، يتهددها حالياً زحف الصحراء.</div>\r\n<div dir="RTL">شوارع وساحات شنقيط، التي عرفت بمكتبتها القديمة الغنية بالكتب والمخطوطات الإسلامية، تختنق بالرمال إذ تزحف الكثبان داخل المدينة. وقد يتلف الرمل والحر الشديد الأبنية القديمة، وتهدد العواصف المطرية الهوجاء العمارة الطينية وتزيد تآكل التربة.</div>\r\n<div dir="RTL" style="text-align: right;">ويفاقم التصحر في منطقة «الساحل» المشكلة، ومن أسبابه الرعي الجائر وإزالة الغابات والتوسع الحضري، إضافة إلى موجات الجفاف الحاد الطويلة الأمد والهطول الغزير حين تمطر، ما يزيد الضغوط الحالية والنزاعات على الموارد الطبيعية.</div>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'ثلاثة مواقع عربية للتراث العالمي مهددة مناخياً', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-10-30 13:15:31', '2016-10-30 12:15:31', '', 4, 'http://klivin-pc/houmty/ar/2016/10/30/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2016-10-30 13:16:50', '2016-10-30 12:16:50', '<p style="text-align: right;"><img class="alignnone size-medium wp-image-31" src="http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/tumblr_m7dgawg5v11qhymeq-300x250.jpg" alt="tumblr_m7dgawg5v11qhymeq" width="300" height="250" /></p>\r\n<p style="text-align: right;"><strong>للمرة الأولى تستطلع وسيلة إعلامية عربية الأوضاع في جنوب السودان بعد انفصاله عن الشمال. عدد أيار (مايو) من مجلة “البيئة والتنمية” يعرض لتحقيق ميداني عن الأوضاع البيئية والاجتماعية في أحدث دولة في العالم ووقائع التنافس على الموارد، خصوصاً النفطية والمائية، ودورها في تأجيج النزاعات الداخلية والصراعات بين الشمال والجنوب.</strong></p>\r\n<p style="text-align: right;"><strong>وفي العدد تقرير عن الأنهار العربية التي تصب في نهر الأردن وسياسة الاحتلال الاسرائيلي في الهيمنة على مجاريها والنزاع الحاصل على مياهها. ويضيء تحقيق شائق على السدود التي تبنيها تركيا على الأنهار الداخلية العابرة للحدود، والتي يتعدى أذاها السكان المحليين إلى الدول المجاورة.</strong></p>\r\n<p style="text-align: right;"><strong>ويتضمن كتاب الطبيعة في العدد تحقيقين، الأول عن غابة بُرَع المحمية التي هي ذاكرة اليمن السعيد، والثاني عن كنوز مغمورة تختزنها كهوف المكسيك المائية. ومن المواضيع الأخرى: مبنى أخضر في عمّان لمنظمة الصحة العالمية، سموم في ثياب ماركات شهيرة، النفايات الالكترونية في الأردن، العيش من القمامة في تونس، مظلات عملاقة تظلل حجاج المسجد النبوي، سوق الطيب في وسط بيروت، رسوم صخرية من العصر الحجري في المغرب، الكوارث المناخية تحرك وكالات الغوث، فضلاً عن الأبواب الثابتة، رسائل، البيئة في شهر، عالم العلوم، سوق البيئة، سيارات خضراء، نشاطات مدرسية، المفكرة البيئية. ويتضمن العدد ملحقاً عن نشاطات المنتدى العربي للبيئة والتنمية.</strong></p>\r\n<p style="text-align: right;"><strong>وفي افتتاحية العدد بعنوان “العرب على أبواب ريّو”، يتناول نجيب صعب قمة ريو +20 التي سيكون شعارها “الاقتصاد الأخضر”، معتبراً أنها تتيح فرصة لاستخدام هذا الشعار لتحقيق تنمية مستدامة، مطالباً الدول العربية بأن تلعب دوراً ايجابياً في صنع القرار وتبتعد عن التشكيك والعرقلة، “لأن الاقتصاد الأخضر ليس مجرد خيار للمنطقة العربية، بل هو التزام بتأمين مسار صحيح نحو تنمية مستدامة”.</strong></p>', 'حرب على الموارد', '', 'publish', 'open', 'open', '', '%d8%ad%d8%b1%d8%a8-%d8%b9%d9%84%d9%89-%d8%a7%d9%84%d9%85%d9%88%d8%a7%d8%b1%d8%af', '', '', '2016-10-30 20:34:23', '2016-10-30 20:34:23', '', 0, 'http://klivin-pc/houmty/ar/?p=6', 0, 'post', '', 0),
(7, 1, '2016-10-30 13:16:50', '2016-10-30 12:16:50', '<p style="text-align: right;"><strong>للمرة الأولى تستطلع وسيلة إعلامية عربية الأوضاع في جنوب السودان بعد انفصاله عن الشمال. عدد أيار (مايو) من مجلة “البيئة والتنمية” يعرض لتحقيق ميداني عن الأوضاع البيئية والاجتماعية في أحدث دولة في العالم ووقائع التنافس على الموارد، خصوصاً النفطية والمائية، ودورها في تأجيج النزاعات الداخلية والصراعات بين الشمال والجنوب.</strong></p>\r\n<p style="text-align: right;"><strong>وفي العدد تقرير عن الأنهار العربية التي تصب في نهر الأردن وسياسة الاحتلال الاسرائيلي في الهيمنة على مجاريها والنزاع الحاصل على مياهها. ويضيء تحقيق شائق على السدود التي تبنيها تركيا على الأنهار الداخلية العابرة للحدود، والتي يتعدى أذاها السكان المحليين إلى الدول المجاورة.</strong></p>\r\n<p style="text-align: right;"><strong>ويتضمن كتاب الطبيعة في العدد تحقيقين، الأول عن غابة بُرَع المحمية التي هي ذاكرة اليمن السعيد، والثاني عن كنوز مغمورة تختزنها كهوف المكسيك المائية. ومن المواضيع الأخرى: مبنى أخضر في عمّان لمنظمة الصحة العالمية، سموم في ثياب ماركات شهيرة، النفايات الالكترونية في الأردن، العيش من القمامة في تونس، مظلات عملاقة تظلل حجاج المسجد النبوي، سوق الطيب في وسط بيروت، رسوم صخرية من العصر الحجري في المغرب، الكوارث المناخية تحرك وكالات الغوث، فضلاً عن الأبواب الثابتة، رسائل، البيئة في شهر، عالم العلوم، سوق البيئة، سيارات خضراء، نشاطات مدرسية، المفكرة البيئية. ويتضمن العدد ملحقاً عن نشاطات المنتدى العربي للبيئة والتنمية.</strong></p>\r\n<p style="text-align: right;"><strong>وفي افتتاحية العدد بعنوان “العرب على أبواب ريّو”، يتناول نجيب صعب قمة ريو +20 التي سيكون شعارها “الاقتصاد الأخضر”، معتبراً أنها تتيح فرصة لاستخدام هذا الشعار لتحقيق تنمية مستدامة، مطالباً الدول العربية بأن تلعب دوراً ايجابياً في صنع القرار وتبتعد عن التشكيك والعرقلة، “لأن الاقتصاد الأخضر ليس مجرد خيار للمنطقة العربية، بل هو التزام بتأمين مسار صحيح نحو تنمية مستدامة”.</strong></p>', 'حرب على الموارد', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-10-30 13:16:50', '2016-10-30 12:16:50', '', 6, 'http://klivin-pc/houmty/ar/2016/10/30/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-10-30 13:19:40', '2016-10-30 12:19:40', '<p style="text-align: right;"><strong>بدأ تنفيذ مشروع إنشاء محطة لتحلية مياه البحر في مدينة غزة. وسيتم في المرحلة الأولى بناء خزان مياه في منطقة الشيخ رضوان شمال القطاع سعته 5000 متر مكعب، يتوقع انجازه في آذار (مارس) 2016. وتم تأمين التمويل اللازم لإنشاء خط النقل، من الحكومة الكويتية بكلفة تصل إلى 60 مليون دولار. والمساعي مستمرة في البحث عن تمويل المراحل الأخرى لإنشاء المحطة وتشغيلها.</strong></p>\r\n<p style="text-align: right;"><strong> وسوف تنتج المحطة 10,000 متر مكعب من المياه المحلاة يومياً، تُخلط بمياه آبار البلدية في الخزان وتوزع على السكان.</strong></p>\r\n\r\n<div id="attachment_6309" class="wp-caption aligncenter" style="text-align: right; width: 652px;">\r\n\r\n<a href="http://marocenv.com/wp-content/uploads/2015/07/ghaza-water.jpg"><img class="wp-image-6309" src="http://marocenv.com/wp-content/uploads/2015/07/ghaza-water.jpg" sizes="(max-width: 543px) 100vw, 543px" srcset="http://marocenv.com/wp-content/uploads/2015/07/ghaza-water.jpg 1728w, http://marocenv.com/wp-content/uploads/2015/07/ghaza-water-300x200.jpg 300w, http://marocenv.com/wp-content/uploads/2015/07/ghaza-water-1024x682.jpg 1024w, http://marocenv.com/wp-content/uploads/2015/07/ghaza-water-150x100.jpg 150w" alt="ghaza water" width="642" height="428" /></a>\r\n<p class="wp-caption-text">صهريج لمياه الشرب ترسله منظمة خيرية بشكل دوري لتزويد خزانات عامة في أحياء غزة الفقيرة</p>\r\n\r\n</div>\r\n<p style="text-align: right;"><strong>ووصف مدير عام مصلحة مياه بلديات الساحل المهندس منذر شبلاق مشروع محطة التحلية بالإنجاز الكبير، موضحاً أنها ستشكل مصدراً هاماً للمياه الصالحة للاستخدام لأكثر من 250 ألف نسمة في مدينة غزة. وأضاف أن أهمية المشروع تنطلق من معاناة سكان المدينة من شح المياه وشدة ملوحتها، كما سيساهم في المحافظة على مياه الخزان الجوفي والتخفيف من حدة أزمة المياه التي تتفاقم مع تزايد عدد السكان.</strong></p>\r\n<p style="text-align: right;"><strong> </strong><strong>جدير بالذكر أنه، بسبب النقص الحاد في معالجة مياه الصرف الصحي في قطاع غزة، يتم ضخ نحو 90 ألف متر مكعب يومياً من مياه الصرف غير المعالجة أو المعالجة جزئياً إلى البحر في مناطق مختلفة من شاطىء القطاع. وترشح كمية مماثلة عبر التربة وصولاً إلى الحوض المائي الجوفي من خلال أكثر من 30 ألف حفرة امتصاصية. وهذا مصدر كبير لتلوث مياه البحر والمياه الجوفية.</strong></p>\r\n<p style="text-align: right;"><strong> </strong><strong>وذكر تقرير للأمم المتحدة قبل أشهر أن قطاع غزة، الذي يقطنه أكثر من مليون و750 ألف نسمة، يواجه أزمة مياه متفاقمة قد تجعله غير صالح للعيش خلال سنوات معدودة. وأضاف أن المياه الجوفية، التي تعد المصدر الوحيد الصالح للشرب في القطاع، ستكون غير قابلة للاستخدام سنة 2016.</strong></p>\r\n<p style="text-align: right;"><strong> </strong><strong>وبحسب الجهاز المركزي للإحصاء الفلسطيني، فإن «أكثر من 95 في المئة من مياه قطاع غزة لا تنطبق عليها معايير منظمة الصحة العالمية لمياه الشرب. ولا تزيد حصة الفرد من المياه على 90 ليتراً يومياً للاستعمالات الشخصية والمنزلية، أي أقل من الحد الأدنى الذي توصي به منظمة الصحة العالمية وهو 100 ليتر يومياً للفرد».</strong></p>\r\n<p style="text-align: right;"><strong>وكان مسؤول تنسيق المشاريع في سلطة المياه الفلسطينية مروان البردويل أعلن عام 2014 أن تباطؤ تنفيذ مشاريع تحلية المياه في قطاع غزة «سيقود إلى كارثة شاملة». فثمة عقبات تتعلق بنقص التمويل من الجهات المانحة، وأزمة الطاقة المتفاقمة، وإغلاق معابر قطاع غزة، ومنع إسرائيل إدخال مواد البناء والمعدات اللازمة، فضلاً عن استمرار الانقسام الداخلي بين الضفة الغربية وقطاع غزة ما يشوش على التنسيق لتنفيذ المشاريع.</strong></p>\r\n<p style="text-align: right;"><strong> وأشار البردويل إلى أن الضخ بكميات هائلة على مدار العشرين عاماً الماضية استنزف المياه الجوفية في غزة، ما أدى إلى اندفاع مياه البحر نحو الخزان الجوفي، فازدادت ملوحته إلى حد جعله غير صالح للاستخدام البشري. وأضاف: «الخزان الجوفي ملوث لدرجة أننا لو أخذنا معايير منظمة الصحة العالمية فهو ملوث بخمسة أضعافها نتيجة تسرب الأملاح الزائدة ونسبة النيترات في المياه».</strong></p>\r\n<p style="text-align: right;"><strong> وقد أجرت سلطة المياه الفلسطينية دراسات بشأن الحلول البديلة لهذه الأزمة. وخلصت إلى أن الخيار المتاح والأكثر ديمومة في قطاع غزة الساحلي هو اللجوء إلى تحلية مياه البحر. وذلك على مرحلتين: الأولى بالاتفاق على إنشاء ثلاث محطات صغيرة للتحلية كحل عاجل، في دير البلح ورفح ـ خان يونس ومدينة غزة، بحيث تخلط المياه المحلاة مع جزء من المياه الجوفية بغرض الوصول إلى نوعية مياه تتلاءم مع معايير منظمة الصحة العالمية. وفي المدى البعيد يتم إنشاء محطة تحلية مركزية تخدم إجمالي قطاع غزة بكلفة تصل إلى 455 مليون دولار.</strong></p>\r\n<p style="text-align: right;"><strong> وهذا يرفع حصة الفرد من المياه إلى 120 ليتراً يومياً ويحد من تلوث الخزان الجوفي واستنزافه.</strong></p>', 'غزة تشرب مياه البحر', '', 'publish', 'open', 'open', '', '%d8%ba%d8%b2%d8%a9-%d8%aa%d8%b4%d8%b1%d8%a8-%d9%85%d9%8a%d8%a7%d9%87-%d8%a7%d9%84%d8%a8%d8%ad%d8%b1', '', '', '2016-10-30 20:39:08', '2016-10-30 20:39:08', '', 0, 'http://klivin-pc/houmty/ar/?p=8', 0, 'post', '', 0),
(9, 1, '2016-10-30 13:19:40', '2016-10-30 12:19:40', '<p style="text-align: right;"><strong>بدأ تنفيذ مشروع إنشاء محطة لتحلية مياه البحر في مدينة غزة. وسيتم في المرحلة الأولى بناء خزان مياه في منطقة الشيخ رضوان شمال القطاع سعته 5000 متر مكعب، يتوقع انجازه في آذار (مارس) 2016. وتم تأمين التمويل اللازم لإنشاء خط النقل، من الحكومة الكويتية بكلفة تصل إلى 60 مليون دولار. والمساعي مستمرة في البحث عن تمويل المراحل الأخرى لإنشاء المحطة وتشغيلها.</strong></p>\r\n<p style="text-align: right;"><strong> وسوف تنتج المحطة 10,000 متر مكعب من المياه المحلاة يومياً، تُخلط بمياه آبار البلدية في الخزان وتوزع على السكان.</strong></p>\r\n\r\n<div id="attachment_6309" class="wp-caption aligncenter" style="text-align: right; width: 652px;"><a href="http://marocenv.com/wp-content/uploads/2015/07/ghaza-water.jpg"><img class="wp-image-6309" src="http://marocenv.com/wp-content/uploads/2015/07/ghaza-water.jpg" sizes="(max-width: 543px) 100vw, 543px" srcset="http://marocenv.com/wp-content/uploads/2015/07/ghaza-water.jpg 1728w, http://marocenv.com/wp-content/uploads/2015/07/ghaza-water-300x200.jpg 300w, http://marocenv.com/wp-content/uploads/2015/07/ghaza-water-1024x682.jpg 1024w, http://marocenv.com/wp-content/uploads/2015/07/ghaza-water-150x100.jpg 150w" alt="ghaza water" width="642" height="428" /></a>\r\n<p class="wp-caption-text">صهريج لمياه الشرب ترسله منظمة خيرية بشكل دوري لتزويد خزانات عامة في أحياء غزة الفقيرة</p>\r\n\r\n</div>\r\n<p style="text-align: right;"><strong>ووصف مدير عام مصلحة مياه بلديات الساحل المهندس منذر شبلاق مشروع محطة التحلية بالإنجاز الكبير، موضحاً أنها ستشكل مصدراً هاماً للمياه الصالحة للاستخدام لأكثر من 250 ألف نسمة في مدينة غزة. وأضاف أن أهمية المشروع تنطلق من معاناة سكان المدينة من شح المياه وشدة ملوحتها، كما سيساهم في المحافظة على مياه الخزان الجوفي والتخفيف من حدة أزمة المياه التي تتفاقم مع تزايد عدد السكان.</strong></p>\r\n<p style="text-align: right;"><strong> </strong><strong>جدير بالذكر أنه، بسبب النقص الحاد في معالجة مياه الصرف الصحي في قطاع غزة، يتم ضخ نحو 90 ألف متر مكعب يومياً من مياه الصرف غير المعالجة أو المعالجة جزئياً إلى البحر في مناطق مختلفة من شاطىء القطاع. وترشح كمية مماثلة عبر التربة وصولاً إلى الحوض المائي الجوفي من خلال أكثر من 30 ألف حفرة امتصاصية. وهذا مصدر كبير لتلوث مياه البحر والمياه الجوفية.</strong></p>\r\n<p style="text-align: right;"><strong> </strong><strong>وذكر تقرير للأمم المتحدة قبل أشهر أن قطاع غزة، الذي يقطنه أكثر من مليون و750 ألف نسمة، يواجه أزمة مياه متفاقمة قد تجعله غير صالح للعيش خلال سنوات معدودة. وأضاف أن المياه الجوفية، التي تعد المصدر الوحيد الصالح للشرب في القطاع، ستكون غير قابلة للاستخدام سنة 2016.</strong></p>\r\n<p style="text-align: right;"><strong> </strong><strong>وبحسب الجهاز المركزي للإحصاء الفلسطيني، فإن «أكثر من 95 في المئة من مياه قطاع غزة لا تنطبق عليها معايير منظمة الصحة العالمية لمياه الشرب. ولا تزيد حصة الفرد من المياه على 90 ليتراً يومياً للاستعمالات الشخصية والمنزلية، أي أقل من الحد الأدنى الذي توصي به منظمة الصحة العالمية وهو 100 ليتر يومياً للفرد».</strong></p>\r\n<p style="text-align: right;"><strong>وكان مسؤول تنسيق المشاريع في سلطة المياه الفلسطينية مروان البردويل أعلن عام 2014 أن تباطؤ تنفيذ مشاريع تحلية المياه في قطاع غزة «سيقود إلى كارثة شاملة». فثمة عقبات تتعلق بنقص التمويل من الجهات المانحة، وأزمة الطاقة المتفاقمة، وإغلاق معابر قطاع غزة، ومنع إسرائيل إدخال مواد البناء والمعدات اللازمة، فضلاً عن استمرار الانقسام الداخلي بين الضفة الغربية وقطاع غزة ما يشوش على التنسيق لتنفيذ المشاريع.</strong></p>\r\n<p style="text-align: right;"><strong> وأشار البردويل إلى أن الضخ بكميات هائلة على مدار العشرين عاماً الماضية استنزف المياه الجوفية في غزة، ما أدى إلى اندفاع مياه البحر نحو الخزان الجوفي، فازدادت ملوحته إلى حد جعله غير صالح للاستخدام البشري. وأضاف: «الخزان الجوفي ملوث لدرجة أننا لو أخذنا معايير منظمة الصحة العالمية فهو ملوث بخمسة أضعافها نتيجة تسرب الأملاح الزائدة ونسبة النيترات في المياه».</strong></p>\r\n<p style="text-align: right;"><strong> وقد أجرت سلطة المياه الفلسطينية دراسات بشأن الحلول البديلة لهذه الأزمة. وخلصت إلى أن الخيار المتاح والأكثر ديمومة في قطاع غزة الساحلي هو اللجوء إلى تحلية مياه البحر. وذلك على مرحلتين: الأولى بالاتفاق على إنشاء ثلاث محطات صغيرة للتحلية كحل عاجل، في دير البلح ورفح ـ خان يونس ومدينة غزة، بحيث تخلط المياه المحلاة مع جزء من المياه الجوفية بغرض الوصول إلى نوعية مياه تتلاءم مع معايير منظمة الصحة العالمية. وفي المدى البعيد يتم إنشاء محطة تحلية مركزية تخدم إجمالي قطاع غزة بكلفة تصل إلى 455 مليون دولار.</strong></p>\r\n<p style="text-align: right;"><strong> وهذا يرفع حصة الفرد من المياه إلى 120 ليتراً يومياً ويحد من تلوث الخزان الجوفي واستنزافه.</strong></p>', 'غزة تشرب مياه البحر', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-10-30 13:19:40', '2016-10-30 12:19:40', '', 8, 'http://klivin-pc/houmty/ar/2016/10/30/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-10-30 13:21:32', '2016-10-30 12:21:32', '<p style="text-align: right;"><img src="http://www.lerelais.ma/wp-content/uploads/COP22-Marrakech-2016-740x431.png" alt="Résultat de recherche d''images pour &quot;marrakech cop 22&quot;" /></p>\r\n<p style="text-align: right;">في ديسمبر 2015 دخلت إتفاقية باريس الموقعة في إطار الإتفاقية الإطارية للأمم المتحدة بشأن تغير المناخ حيز التنفيذ وذلك وقت قياسي بالمقارنة بغيرها من الاتفاقيات. فإعتبارا من الحادي عشر من أكتوبر 2016، صادق 76 طرف (دولة) علي إتفاقية باريس، ففي حين يلزم 55 طرف فقط للتصديق على الإتفاقية لتدخل حيز التنفيذ. فأيضاً تم إستيفاء الشرط الاخر وهو يجب أن الأطراف الـ 55 تمثل 55 في المائة على الأقل من مجموع إنبعاثات غازات الدفيئة، فالأرقام الحالية توضح أن النسبة وصلت إلي 60 في المئة.</p>\r\n<p style="text-align: right;">وسيتم تنفيذ تنفيذ إتفاق باريس وفقاً للمساهمات المقررة على الصعيد الوطني (INDCs) والتي قدمتها البلدان قبل المفاوضات في باريس. ويُلزم إتفاق باريس الدول للحفاظ على إرتفاع درجة حرارة الأرض أقل من 2 درجة مئوية مقارنة بمستويات ما قبل الثورة الصناعية، ومحاولة الحد من إرتفاع درجات الحرارة عن 1.5 درجة، وضمان الوصول بالانبعاثات الي الصفر في النصف الثاني من هذا القرن.</p>\r\n<p style="text-align: right;">إن إتفاقية باريس هي الآن حقيقة واقعة ويجب على جميع الدول العربية التصديق عليها للاستفادة من آلياتها، وفرص التمويل المتاحة، والزخم العالمي لمحاربة تغير المناخ. وبالإضافة إلى ذلك، تتيح الإتفاقية فرص عمل جديدة في مختلف الصناعات منخفضة الكربون والتقنيات النظيفة.</p>\r\n<p style="text-align: right;"><strong>مراكش تستضيف مؤتمر الأطراف الثاني والعشرون</strong></p>\r\n<p style="text-align: right;">العالم العربي يمكن أن تلعب دوراً محورياً في تحقيق إتفاق باريس علي أرض الواقع تزامناً مع جولة المفاوضات لمؤتمر الأطراف 22 (COP 22) والمقرر عقدها في مراكش، المغرب في نوفمبر 2016. ومراكش يمكن أن تكون أول نقطة تحول إيجابية، عالمياً وإقليمياً، من أجل تنفيذ إتفاق باريس مع العديد القرارات والسياسات والاستراتيجيات المتوقعة لتحقيق أهداف الاتفاقية على أرض الواقع.</p>\r\n<p style="text-align: right;">من ناحية، يواجه العالم العربي تحديات متزايدة مثل الصراعات المسلحة، والبطالة، وندرة المياه، والتوترات الاجتماعية. من جهة أخرى، فإن المنطقة لديها الكثير من الموارد الطبيعية (الطاقة الشمسية هي مثال واضح)، ومجتمع شاب، فضلا عن العمالة الرخيصة التي تشير إلى إمكانية تحقيق التنمية المستدامة بصورة كبيرة في المنطقة.</p>\r\n<p style="text-align: right;">ان إجمالي الانبعاثات في العالم العربي حوالي 4٪ من اجمالي الانبعاثات العالمية مع أكبر ثلاث دول عربية منتجة للانبعاثات الغازية وهي المملكة العربية السعودية (0.8 في المئة)، الإمارات العربية المتحدة (0.53 في المئة)، ومصر (0.52 في المئة). وحتى تاريخه، وقد وقعت ثمانية عشر دولة عربية من أصل إثنان وعشرون دولة عربية إتفاقية باريس، حيث لم توقع بعد المملكة العربية السعودية والعراق وجزر القمر وسوريا، ولكن لم يصادق علي الاتفاقية الا أربع دول عربية فقط وهي الإمارات العربية المتحدة، فلسطين، المغرب، والجزائر.</p>\r\n<p style="text-align: right;"><strong>أهمية </strong><strong>COP</strong><strong> 22 للمنطقة العربية\r\n</strong>مؤتمر الأطراف 22 في مراكش مهم للمنطقة العربية حيث سيناقش عدداً من القضايا الرئيسية التي تهم المنطقة. بناء القدرات، على سبيل المثال، هي قضية رئيسية بالنسبة للمنطقة العربية. ففي الواقع، فإن المنطقة العربية بحاجة لبناء القدرات على وجه السرعة، وبالتالي، يمكن أن تعمل مع غيرها من البلدان النامية ولا سيما في مجال بناء القدرات لمجالات تمويل التكيف، وأيضا لتنفيذ المساهمات المقررة على الصعيد الوطني فضلاً عن مبادرات تخفيف آثار تغير المناخ.</p>\r\n<p style="text-align: right;"><strong>التمويل\r\n</strong>من المفترض أن تقدم البلدان المتقدمة 100 مليار دولار سنويا لتمويل المناخ بحلول عام 2020. واحدة من القضايا الرئيسية في مؤتمر الأطراف بمراكش 22 هي الإتفاق علي خارطة الطريق واضحة لهذه 100 مليار دولار. والسياسات والمشاريع الطموحة في المنطقة العربية حالياً من شأنها أن تساعد في الحد من غازات الاحتباس الحراري دون أن يؤثر ذلك سلباً على التنمية الاجتماعية. وبالتالي، فإن التمويل هو القضية المركزية للمنطقة لتنفيذ هذه السياسات والمشاريع.</p>\r\n<p style="text-align: right;">وبالإضافة إلى ذلك، يجب على العالم العربي أن يسعى لنقل التكنولوجيا والتمويل خلال محادثات المناخ في مراكش. فتملك تكنولوجيا صديقة للبيئة، نظيفة ومنخفضة الإنبعاثات في مختلف القطاعات ستمكن من سلاسة التحول نحو الاقتصاد الأخضر منحفض الكربون والذي يجذب إستثمارات جديدة ويخلق فرص عمل خضراء. وعلى المدى الطويل، هذا سيكون خياراً أفضل ومستدام في المنطقة العربية التي بصفة عامة يعتمد إقتصادها بشكل رئيسي على عائدات الوقود الأحفوري.</p>\r\n<p style="text-align: right;"><strong>مفاوضات مراكش وأجندة 2030</strong></p>\r\n<p style="text-align: right;">في الواقع، فأي مدقق للنظر سيدرك أن إتفاقية باريس ليست حول تغير المناخ فقط؛ بل إنها ستغيير من مسار التنمية في جميع أنحاء العالم. وسوف تؤثر تقريباً علي جميع قطاعات الإقتصاد العالمي من الطاقة، والنقل، والزراعة وحتي نمط الحياة والإجراءات والخيارات من الأفراد في شتي بقاع الارض.</p>\r\n<p style="text-align: right;">وبالتالي، فمن المتوقع أن السياسات الوطنية لتغير المناخ في مختلف القطاعات من شأنها أن تساعد ليس فقط في تحقيق الهدف السابع للتنمية المستدامة (SDG 7) “اتخاذ إجراءات عاجلة لمكافحة تغير المناخ وآثاره”، ولكن أيضاً تحقيق تقريباً كافة أهداف التنمية المستدامة السبعة عشر SDGs 17 بالاجندة 2030 للتنمية المستدامة وخصوصاً عندما يتم دمج الإعتبارات المناخية والخطط منخفضة الكربون في التخطيط الوطني بذكاء.</p>\r\n<p style="text-align: right;">ليس هناك شك في أن جولة مفاوضات مراكش لتغير المناخ ستسلط الضوء على المنطقة العربية خاصة فيما يتعلق بخطط تخفيض و/أو إزالة الكربون من اقتصاداتها، كما تمثل هذه الجولة فرصة للمنطقة لعرض المشاريع الخضراء المختلفة، وخاصة في مجال الطاقة المتجددة الطاقة. كما ستلعب دوراً أساسياً في رفع مستوى الوعي، خاصة في أوساط الشباب في العالم العربي، حول آثار تغير المناخ على المنطقة العربية، وكذلك على أهمية إتخاذ إجراءات شاملة وسريعة لمكافحة تغير المناخ. إن مؤتمر الأطراف 22 بمراكش هو فرصة جيدة للمنطقة، وينبغي أن تبذل الدول العربية كل جهد ممكن لضمان نجاح مؤتمر مراكش وكذلك الاستفادة منه.</p>', 'مفاوضات مراكش لتغير المناخ مهمة للمنطقة العربية', '', 'publish', 'open', 'open', '', '%d9%85%d9%81%d8%a7%d9%88%d8%b6%d8%a7%d8%aa-%d9%85%d8%b1%d8%a7%d9%83%d8%b4-%d9%84%d8%aa%d8%ba%d9%8a%d8%b1-%d8%a7%d9%84%d9%85%d9%86%d8%a7%d8%ae-%d9%85%d9%87%d9%85%d8%a9-%d9%84%d9%84%d9%85%d9%86%d8%b7', '', '', '2016-10-30 14:03:15', '2016-10-30 13:03:15', '', 0, 'http://klivin-pc/houmty/ar/?p=10', 0, 'post', '', 1),
(11, 1, '2016-10-30 13:21:32', '2016-10-30 12:21:32', '<p style="text-align: right;">في ديسمبر 2015 دخلت إتفاقية باريس الموقعة في إطار الإتفاقية الإطارية للأمم المتحدة بشأن تغير المناخ حيز التنفيذ وذلك وقت قياسي بالمقارنة بغيرها من الاتفاقيات. فإعتبارا من الحادي عشر من أكتوبر 2016، صادق 76 طرف (دولة) علي إتفاقية باريس، ففي حين يلزم 55 طرف فقط للتصديق على الإتفاقية لتدخل حيز التنفيذ. فأيضاً تم إستيفاء الشرط الاخر وهو يجب أن الأطراف الـ 55 تمثل 55 في المائة على الأقل من مجموع إنبعاثات غازات الدفيئة، فالأرقام الحالية توضح أن النسبة وصلت إلي 60 في المئة.</p>\r\n<p style="text-align: right;">وسيتم تنفيذ تنفيذ إتفاق باريس وفقاً للمساهمات المقررة على الصعيد الوطني (INDCs) والتي قدمتها البلدان قبل المفاوضات في باريس. ويُلزم إتفاق باريس الدول للحفاظ على إرتفاع درجة حرارة الأرض أقل من 2 درجة مئوية مقارنة بمستويات ما قبل الثورة الصناعية، ومحاولة الحد من إرتفاع درجات الحرارة عن 1.5 درجة، وضمان الوصول بالانبعاثات الي الصفر في النصف الثاني من هذا القرن.</p>\r\n<p style="text-align: right;">إن إتفاقية باريس هي الآن حقيقة واقعة ويجب على جميع الدول العربية التصديق عليها للاستفادة من آلياتها، وفرص التمويل المتاحة، والزخم العالمي لمحاربة تغير المناخ. وبالإضافة إلى ذلك، تتيح الإتفاقية فرص عمل جديدة في مختلف الصناعات منخفضة الكربون والتقنيات النظيفة.</p>\r\n<p style="text-align: right;"><strong>مراكش تستضيف مؤتمر الأطراف الثاني والعشرون</strong></p>\r\n<p style="text-align: right;">العالم العربي يمكن أن تلعب دوراً محورياً في تحقيق إتفاق باريس علي أرض الواقع تزامناً مع جولة المفاوضات لمؤتمر الأطراف 22 (COP 22) والمقرر عقدها في مراكش، المغرب في نوفمبر 2016. ومراكش يمكن أن تكون أول نقطة تحول إيجابية، عالمياً وإقليمياً، من أجل تنفيذ إتفاق باريس مع العديد القرارات والسياسات والاستراتيجيات المتوقعة لتحقيق أهداف الاتفاقية على أرض الواقع.</p>\r\n<p style="text-align: right;">من ناحية، يواجه العالم العربي تحديات متزايدة مثل الصراعات المسلحة، والبطالة، وندرة المياه، والتوترات الاجتماعية. من جهة أخرى، فإن المنطقة لديها الكثير من الموارد الطبيعية (الطاقة الشمسية هي مثال واضح)، ومجتمع شاب، فضلا عن العمالة الرخيصة التي تشير إلى إمكانية تحقيق التنمية المستدامة بصورة كبيرة في المنطقة.</p>\r\n<p style="text-align: right;">ان إجمالي الانبعاثات في العالم العربي حوالي 4٪ من اجمالي الانبعاثات العالمية مع أكبر ثلاث دول عربية منتجة للانبعاثات الغازية وهي المملكة العربية السعودية (0.8 في المئة)، الإمارات العربية المتحدة (0.53 في المئة)، ومصر (0.52 في المئة). وحتى تاريخه، وقد وقعت ثمانية عشر دولة عربية من أصل إثنان وعشرون دولة عربية إتفاقية باريس، حيث لم توقع بعد المملكة العربية السعودية والعراق وجزر القمر وسوريا، ولكن لم يصادق علي الاتفاقية الا أربع دول عربية فقط وهي الإمارات العربية المتحدة، فلسطين، المغرب، والجزائر.</p>\r\n<p style="text-align: right;"><strong>أهمية </strong><strong>COP</strong><strong> 22 للمنطقة العربية\r\n</strong>مؤتمر الأطراف 22 في مراكش مهم للمنطقة العربية حيث سيناقش عدداً من القضايا الرئيسية التي تهم المنطقة. بناء القدرات، على سبيل المثال، هي قضية رئيسية بالنسبة للمنطقة العربية. ففي الواقع، فإن المنطقة العربية بحاجة لبناء القدرات على وجه السرعة، وبالتالي، يمكن أن تعمل مع غيرها من البلدان النامية ولا سيما في مجال بناء القدرات لمجالات تمويل التكيف، وأيضا لتنفيذ المساهمات المقررة على الصعيد الوطني فضلاً عن مبادرات تخفيف آثار تغير المناخ.</p>\r\n<p style="text-align: right;"><strong>التمويل\r\n</strong>من المفترض أن تقدم البلدان المتقدمة 100 مليار دولار سنويا لتمويل المناخ بحلول عام 2020. واحدة من القضايا الرئيسية في مؤتمر الأطراف بمراكش 22 هي الإتفاق علي خارطة الطريق واضحة لهذه 100 مليار دولار. والسياسات والمشاريع الطموحة في المنطقة العربية حالياً من شأنها أن تساعد في الحد من غازات الاحتباس الحراري دون أن يؤثر ذلك سلباً على التنمية الاجتماعية. وبالتالي، فإن التمويل هو القضية المركزية للمنطقة لتنفيذ هذه السياسات والمشاريع.</p>\r\n<p style="text-align: right;">وبالإضافة إلى ذلك، يجب على العالم العربي أن يسعى لنقل التكنولوجيا والتمويل خلال محادثات المناخ في مراكش. فتملك تكنولوجيا صديقة للبيئة، نظيفة ومنخفضة الإنبعاثات في مختلف القطاعات ستمكن من سلاسة التحول نحو الاقتصاد الأخضر منحفض الكربون والذي يجذب إستثمارات جديدة ويخلق فرص عمل خضراء. وعلى المدى الطويل، هذا سيكون خياراً أفضل ومستدام في المنطقة العربية التي بصفة عامة يعتمد إقتصادها بشكل رئيسي على عائدات الوقود الأحفوري.</p>\r\n<p style="text-align: right;"><strong>مفاوضات مراكش وأجندة 2030</strong></p>\r\n<p style="text-align: right;">في الواقع، فأي مدقق للنظر سيدرك أن إتفاقية باريس ليست حول تغير المناخ فقط؛ بل إنها ستغيير من مسار التنمية في جميع أنحاء العالم. وسوف تؤثر تقريباً علي جميع قطاعات الإقتصاد العالمي من الطاقة، والنقل، والزراعة وحتي نمط الحياة والإجراءات والخيارات من الأفراد في شتي بقاع الارض.</p>\r\n<p style="text-align: right;">وبالتالي، فمن المتوقع أن السياسات الوطنية لتغير المناخ في مختلف القطاعات من شأنها أن تساعد ليس فقط في تحقيق الهدف السابع للتنمية المستدامة (SDG 7) “اتخاذ إجراءات عاجلة لمكافحة تغير المناخ وآثاره”، ولكن أيضاً تحقيق تقريباً كافة أهداف التنمية المستدامة السبعة عشر SDGs 17 بالاجندة 2030 للتنمية المستدامة وخصوصاً عندما يتم دمج الإعتبارات المناخية والخطط منخفضة الكربون في التخطيط الوطني بذكاء.</p>\r\n<p style="text-align: right;">ليس هناك شك في أن جولة مفاوضات مراكش لتغير المناخ ستسلط الضوء على المنطقة العربية خاصة فيما يتعلق بخطط تخفيض و/أو إزالة الكربون من اقتصاداتها، كما تمثل هذه الجولة فرصة للمنطقة لعرض المشاريع الخضراء المختلفة، وخاصة في مجال الطاقة المتجددة الطاقة. كما ستلعب دوراً أساسياً في رفع مستوى الوعي، خاصة في أوساط الشباب في العالم العربي، حول آثار تغير المناخ على المنطقة العربية، وكذلك على أهمية إتخاذ إجراءات شاملة وسريعة لمكافحة تغير المناخ. إن مؤتمر الأطراف 22 بمراكش هو فرصة جيدة للمنطقة، وينبغي أن تبذل الدول العربية كل جهد ممكن لضمان نجاح مؤتمر مراكش وكذلك الاستفادة منه.</p>', 'مفاوضات مراكش لتغير المناخ مهمة للمنطقة العربية', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-10-30 13:21:32', '2016-10-30 12:21:32', '', 10, 'http://klivin-pc/houmty/ar/2016/10/30/10-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(12, 1, '2016-10-30 13:33:33', '2016-10-30 12:33:33', ' يشكل تغير المناخ أحد أكبر المخاطر على السياحة، التي تعتبر من أهم القطاعات الاقتصادية وأسرعها نمواً، وهي تولد 9 في المئة من الناتج المحلي الإجمالي العالمي وتوفر وظيفة واحدة من كل 11 وظيفة. وفي حين يلحق سوء الإدارة الضرر بالمواقع السياحية، فإن تغير المناخ يضاعف خطر خسارة الميزات التي تجعل هذه المواقع وجهات جذابة للسياح.\r\n<div dir="RTL">«التراث العالمي والسياحة في مناخ متغير» تقرير صدر حديثاً عن منظمة اليونسكو وبرنامج الأمم المتحدة للبيئة و«اتحاد العلماء المهتمين» في الولايات المتحدة. وهو يدرج 31 موقعاً للتراث العالمي الطبيعي والثقافي في 29 بلداً، تتعرض لتأثيرات ارتفاع درجات الحرارة وذوبان الكتل الجليدية وارتفاع مستويات البحار وابيضاض الشعاب المرجانية واشتداد الأحداث المناخية وتفاقم موجات الجفاف واستطالة مواسم حرائق الغابات. ويوثق التأثيرات المناخية في مواقع سياحية شهيرة، مثل مدينة البندقية في إيطاليا وستونهنج في بريطانيا وجزر غلاباغوس في الإكوادور ومدينة قرطاجنة في كولومبيا ومتنزه شيريتوكو الوطني في اليابان.</div>\r\n<div dir="RTL">ويتناول التقرير ثلاثة مواقع للتراث العالمي في المنطقة العربية، هي وادي قاديشا وغابة «أرز الرب» في لبنان، ووادي رم في الأردن، وقصور وادان وولاتة وتيشيت في موريتانيا، واصفاً مزاياها وعارضاً المخاطر التي تواجهها من تأثيرات تغير المناخ.</div>\r\n<div dir="RTL"></div>\r\n<div dir="RTL"><b>وادي قاديشا وغابة الأرز في لبنان</b></div>\r\n<div dir="RTL">يعتبر وادي قاديشا في شمال لبنان نموذجاً لمواقع عاشت فيها مجتمعات منذ القدم ومارست طقوساً في نسيج بيئتها الطبيعية. أولئك الذين أقاموا هناك في الأديرة والمناسك الكثيرة، التي يعود بعضها إلى نحو ألفي سنة، أرادوا التقرب من الخالق في أحضان طبيعة نائية وعرة، من منحدرات شاهقة وشبكات كهوف طبيعية اتّخذوها ملاذات لهم.</div>\r\n<div dir="RTL">لكن تغير المناخ والنشاط السياحي يزيدان الضغط على المعيشة التقليدية والنظم الإيكولوجية في وادي قاديشا. وتنحصر غابة الأرز الشهيرة عالمياً ضمن بقعة صغيرة لا تتعدى مساحتها هكتارين وتعرف بغابة أرز الرب. وهي تضم أقدم وأكبر أشجار الأرز المعروفة، فمن نحو 375 شجرة متبقية، يفوق عمر اثنتين 3000 سنة، فيما يزيد عمر عشر أشجار على 1000 سنة، ومنها أربع يزيد عمرها على 1500 سنة. والغابة قريبة من بلدة بشري، التي تعتبر من مراكز التزلج الرئيسية في لبنان، على منحدر جبلي تعرّت أرضه بفعل الرعي الجائر لقطعان الماعز.</div>\r\n<div dir="RTL">السياحة عنصر هام في الاقتصاد اللبناني. وعلى رغم أن الاضطراب السياسي أدى إلى انخفاض كبير في عدد السياح منذ الذروة التي سجلها عام 2009، فقد ساهمت السياحة في 25 في المئة من الناتج المحلي الإجمالي للبلاد عام 2012. وفي العام 2000، زار الغابة أكثر من 200 ألف سائح أي 20 في المئة من زوار لبنان ذلك العام.</div>\r\n<div dir="RTL">لأرز لبنان (<span dir="LTR">Cedrus libani</span>) قيمة روحية منذ القدم، وقد ورد ذكره 103 مرات في العهدين القديم والجديد، بما في ذلك المزمور 104:16 الذي جاء فيه أن «الرب زرعه، وهو الذي يرويه». والأهمية الروحية لأرز وادي قاديشا تمتد أبعد كثيراً من المجتمعات المحلية. فقد استخدم خشبه في بناء المعابد في أنحاء المشرق، بما في ذلك هيكل سليمان في القدس الذي بني في القرن العاشر قبل الميلاد.</div>\r\n<div dir="RTL">وخشب الأرز مرادف أيضاً لطموحات الفينيقيين القدماء الكبيرة في بناء السفن وركوب البحار. وهو مطلوب منذ نحو 5000 سنة في منطقة البحر المتوسط لمتانته وديمومته. وقد أقبل الأقدمون على استخدامه كمادة بناء، مما جعل غاباته الكبيرة في لبنان تتلاشى بحلول القرن السادس، وفق مصادر تاريخية تعود إلى زمن الإمبراطور البيزنطي جوستنيان الأول (482 ـ 565م). واستمرت غاباته في التقلص على مرّ القرون، ولم يبق حالياً  إلا 5 في المئة من مساحتها الأصلية.</div>\r\n<div dir="RTL">ومن المتوقع أن يستمر انخفاض أعداد أشجار الأرز نتيجة تغير المناخ. والتوقعات مبنية على التحليل الجيني ودراسة حبوب اللقاح التي تلقي الضوء على حقبات سابقة من التغير المناخي الكبير، مثل فترة الانتقال من العصر «بين الجليدي» الأخير إلى العصر الجليدي الأخير قبل نحو 15 ألف عام، ومن العصر الجليدي الأخير إلى عصر الهولوسين المبكر قبل نحو 12 ألف عام.</div>\r\n<div dir="RTL">يتوقع الباحثون أن يؤدي تغير المناخ إلى حصر تجمعات الأرز اللبناني في ثلاثة ملاذات فقط بحلول سنة 2100، نتيجة ارتفاع درجات الحرارة والإجهاد المائي الناجم عن انخفاض الرطوبة في منطقة البحر المتوسط. وفي حين تستطيع التجمعات النباتية الأخرى التكيف مع تغير المناخ بالزحف إلى ارتفاعات أعلى، فإن غالبية غابات الأرز في لبنان معزولة أصلاً على قمم الجبال أو قربها، فلا مكان أعلى للانتقال إليه. لكن غابة «أرز الرب» في وادي قاديشا استثناء لهذه القاعدة، وهي إحدى ثلاث غابات أرز يتوافر لها موئل أعلى لانتقال محتمل، مما يجعل حمايتها أكثر إلحاحاً.</div>\r\n<div dir="RTL">يتوقع أن تتغير المنطقة المناخية الحيوية لغابة أرز الرب، ما يؤثر في توزعها وتركيبة أنواعها. وقد ازدادت هجمات الحشرات، يؤججها ازدياد الجفاف والقحل، فباتت تؤثر بالفعل على غابتي الأرز في تنورين والشوف، وتهدد بالانتشار إلى أرز الرب.</div>\r\n<div dir="RTL">هناك حالياً في لبنان أكثر من 12 غابة أرز تقع على ارتفاعات تتراوح بين 1100 متر و1925 متراً على السفوح الغربية لسلسلة جبال لبنان، ويحتل معظمها مساحة تقل عن 100 هكتار. وهي مناطق ذات تنوع بيولوجي كبير تؤوي أنواعاً نباتية مستوطنة ومهددة بالزوال. وأرز لبنان مدرج كنوع سريع التأثر على القائمة الحمراء للاتحاد الدولي لحماية الطبيعة (<span dir="LTR">IUCN</span>).</div>\r\n<div dir="RTL"></div>\r\n<div dir="RTL"><b>وادي رم تحفة الأردن الصحراوية</b></div>\r\n<div dir="RTL">وادي رم موقع صحراوي مميز في جنوب الأردن، يزخر بالممرات الضيقة والأجراف العالية والكهوف والقناطر الطبيعية والمشاهد الخلابة. وقد أُدرج على قائمة اليونسكو كموقع للتراث العالمي لقيمته الطبيعية والثقافية.</div>\r\n<div dir="RTL">تبلغ مساحة وادي رم نحو 300 كيلومتر مربع، ويحوي أكثر من 45 ألف منحوتة ونقش صخري يعود تاريخها إلى 12 ألف سنة خلت، ما يساعد في الإضاءة على نشوء المجتمعات الرعوية وتطور الأبجدية. وهو ملاذ هام للأحياء البرية الصحراوية، بما فيها الصقر الأسخم والوعل العربي والمها العربي الذي أعيد توطينه. وكثير من نباتاته مصادر هامة للغذاء وعلف الماشية والأدوية للبدو المحليين. لكن السياحة غير المنظمة، بما في ذلك قيادة المركبات خارج الطرق، ومواقع التخييم غير الشرعية، والتجول من دون أدلاء، والكتابة على الصخور، وتأثر الثقافة المحلية بأكثر من 300 ألف سائح يزورون هذه المنطقة النائية سنوياً، تلقي جميعاً بثقلها على وادي رم.</div>\r\n<div dir="RTL">ومن المتوقع أن يزيد تغير المناخ في هذه المشاكل. فارتفاع الحرارة وازدياد الجفاف سيؤديان إلى تفاقم الاجهاد المائي، وسوف يشكلان خطراً بشكل خاص على الأنواع الحية المحصورة في الأماكن الجبلية العالية في وادي رم. وهناك حاجة ملحة إلى بحوث مفصلة حول سيناريوهات تغير المناخ في الوادي.</div>\r\n<div dir="RTL"></div>\r\n<div dir="RTL"><b>المدن القديمة في موريتانيا</b></div>\r\n<div dir="RTL">«قصور» وادان وشنقيط وتيشيت وولاته مدن قديمة في موريتانيا كانت مراكز تجارية وثقافية هامة على طرق القوافل عبر الصحراء الأفريقية الكبرى في العصور الوسطى. وهي ضمن مواقع التراث العالمي لدى  منظمة اليونسكو.</div>\r\n<div dir="RTL">اشتهرت شنقيط بمسجدها ذي المئذنة المربعة التي بنيت بحجارة من دون ملاط. وتعتبر سابع المدن المقدسة في الإسلام. وهي، مثل القصور الأخرى، مقصد تاريخي للزوار الذين يجلبون دخلاً حيوياً للسكان المحليين.</div>\r\n<div dir="RTL">السياحة في موريتانيا متخلفة جداً، وزاد في مشاكلها خلال السنوات الأخيرة القلق على أمن المسافرين. وقصور موريتانيا، التي كانت في الماضي مراكز للثقافة البدوية والإسلامية في شمال أفريقيا، يتهددها حالياً زحف الصحراء.</div>\r\n<div dir="RTL">شوارع وساحات شنقيط، التي عرفت بمكتبتها القديمة الغنية بالكتب والمخطوطات الإسلامية، تختنق بالرمال إذ تزحف الكثبان داخل المدينة. وقد يتلف الرمل والحر الشديد الأبنية القديمة، وتهدد العواصف المطرية الهوجاء العمارة الطينية وتزيد تآكل التربة.</div>\r\n<div dir="RTL" style="text-align: right;">ويفاقم التصحر في منطقة «الساحل» المشكلة، ومن أسبابه الرعي الجائر وإزالة الغابات والتوسع الحضري، إضافة إلى موجات الجفاف الحاد الطويلة الأمد والهطول الغزير حين تمطر، ما يزيد الضغوط الحالية والنزاعات على الموارد الطبيعية.</div>\r\n', 'ثلاثة مواقع عربية للتراث العالمي مهددة مناخياً', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-10-30 13:33:33', '2016-10-30 12:33:33', '', 4, 'http://klivin-pc/houmty/ar/2016/10/30/4-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-10-30 13:37:23', '2016-10-30 12:37:23', '<p style="text-align: right;"></p>\n<p style="text-align: right;"> يشكل تغير المناخ أحد أكبر المخاطر على السياحة، التي تعتبر من أهم القطاعات الاقتصادية وأسرعها نمواً، وهي تولد 9 في المئة من الناتج المحلي الإجمالي العالمي وتوفر وظيفة واحدة من كل 11 وظيفة. وفي حين يلحق سوء الإدارة الضرر بالمواقع السياحية، فإن تغير المناخ يضاعف خطر خسارة الميزات التي تجعل هذه المواقع وجهات جذابة للسياح.</p>\n\n<div dir="RTL" style="text-align: right;">«التراث العالمي والسياحة في مناخ متغير» تقرير صدر حديثاً عن منظمة اليونسكو وبرنامج الأمم المتحدة للبيئة و«اتحاد العلماء المهتمين» في الولايات المتحدة. وهو يدرج 31 موقعاً للتراث العالمي الطبيعي والثقافي في 29 بلداً، تتعرض لتأثيرات ارتفاع درجات الحرارة وذوبان الكتل الجليدية وارتفاع مستويات البحار وابيضاض الشعاب المرجانية واشتداد الأحداث المناخية وتفاقم موجات الجفاف واستطالة مواسم حرائق الغابات. ويوثق التأثيرات المناخية في مواقع سياحية شهيرة، مثل مدينة البندقية في إيطاليا وستونهنج في بريطانيا وجزر غلاباغوس في الإكوادور ومدينة قرطاجنة في كولومبيا ومتنزه شيريتوكو الوطني في اليابان.</div>\n<div dir="RTL" style="text-align: right;">ويتناول التقرير ثلاثة مواقع للتراث العالمي في المنطقة العربية، هي وادي قاديشا وغابة «أرز الرب» في لبنان، ووادي رم في الأردن، وقصور وادان وولاتة وتيشيت في موريتانيا، واصفاً مزاياها وعارضاً المخاطر التي تواجهها من تأثيرات تغير المناخ.</div>\n<div dir="RTL" style="text-align: right;"></div>\n<div dir="RTL" style="text-align: right;"><b>وادي قاديشا وغابة الأرز في لبنان</b></div>\n<div dir="RTL" style="text-align: right;">يعتبر وادي قاديشا في شمال لبنان نموذجاً لمواقع عاشت فيها مجتمعات منذ القدم ومارست طقوساً في نسيج بيئتها الطبيعية. أولئك الذين أقاموا هناك في الأديرة والمناسك الكثيرة، التي يعود بعضها إلى نحو ألفي سنة، أرادوا التقرب من الخالق في أحضان طبيعة نائية وعرة، من منحدرات شاهقة وشبكات كهوف طبيعية اتّخذوها ملاذات لهم.</div>\n<div dir="RTL" style="text-align: right;">لكن تغير المناخ والنشاط السياحي يزيدان الضغط على المعيشة التقليدية والنظم الإيكولوجية في وادي قاديشا. وتنحصر غابة الأرز الشهيرة عالمياً ضمن بقعة صغيرة لا تتعدى مساحتها هكتارين وتعرف بغابة أرز الرب. وهي تضم أقدم وأكبر أشجار الأرز المعروفة، فمن نحو 375 شجرة متبقية، يفوق عمر اثنتين 3000 سنة، فيما يزيد عمر عشر أشجار على 1000 سنة، ومنها أربع يزيد عمرها على 1500 سنة. والغابة قريبة من بلدة بشري، التي تعتبر من مراكز التزلج الرئيسية في لبنان، على منحدر جبلي تعرّت أرضه بفعل الرعي الجائر لقطعان الماعز.</div>\n<div dir="RTL" style="text-align: right;">السياحة عنصر هام في الاقتصاد اللبناني. وعلى رغم أن الاضطراب السياسي أدى إلى انخفاض كبير في عدد السياح منذ الذروة التي سجلها عام 2009، فقد ساهمت السياحة في 25 في المئة من الناتج المحلي الإجمالي للبلاد عام 2012. وفي العام 2000، زار الغابة أكثر من 200 ألف سائح أي 20 في المئة من زوار لبنان ذلك العام.</div>\n<div dir="RTL" style="text-align: right;">لأرز لبنان (<span dir="LTR">Cedrus libani</span>) قيمة روحية منذ القدم، وقد ورد ذكره 103 مرات في العهدين القديم والجديد، بما في ذلك المزمور 104:16 الذي جاء فيه أن «الرب زرعه، وهو الذي يرويه». والأهمية الروحية لأرز وادي قاديشا تمتد أبعد كثيراً من المجتمعات المحلية. فقد استخدم خشبه في بناء المعابد في أنحاء المشرق، بما في ذلك هيكل سليمان في القدس الذي بني في القرن العاشر قبل الميلاد.</div>\n<div dir="RTL" style="text-align: right;">وخشب الأرز مرادف أيضاً لطموحات الفينيقيين القدماء الكبيرة في بناء السفن وركوب البحار. وهو مطلوب منذ نحو 5000 سنة في منطقة البحر المتوسط لمتانته وديمومته. وقد أقبل الأقدمون على استخدامه كمادة بناء، مما جعل غاباته الكبيرة في لبنان تتلاشى بحلول القرن السادس، وفق مصادر تاريخية تعود إلى زمن الإمبراطور البيزنطي جوستنيان الأول (482 ـ 565م). واستمرت غاباته في التقلص على مرّ القرون، ولم يبق حالياً  إلا 5 في المئة من مساحتها الأصلية.</div>\n<div dir="RTL" style="text-align: right;">ومن المتوقع أن يستمر انخفاض أعداد أشجار الأرز نتيجة تغير المناخ. والتوقعات مبنية على التحليل الجيني ودراسة حبوب اللقاح التي تلقي الضوء على حقبات سابقة من التغير المناخي الكبير، مثل فترة الانتقال من العصر «بين الجليدي» الأخير إلى العصر الجليدي الأخير قبل نحو 15 ألف عام، ومن العصر الجليدي الأخير إلى عصر الهولوسين المبكر قبل نحو 12 ألف عام.</div>\n<div dir="RTL" style="text-align: right;">يتوقع الباحثون أن يؤدي تغير المناخ إلى حصر تجمعات الأرز اللبناني في ثلاثة ملاذات فقط بحلول سنة 2100، نتيجة ارتفاع درجات الحرارة والإجهاد المائي الناجم عن انخفاض الرطوبة في منطقة البحر المتوسط. وفي حين تستطيع التجمعات النباتية الأخرى التكيف مع تغير المناخ بالزحف إلى ارتفاعات أعلى، فإن غالبية غابات الأرز في لبنان معزولة أصلاً على قمم الجبال أو قربها، فلا مكان أعلى للانتقال إليه. لكن غابة «أرز الرب» في وادي قاديشا استثناء لهذه القاعدة، وهي إحدى ثلاث غابات أرز يتوافر لها موئل أعلى لانتقال محتمل، مما يجعل حمايتها أكثر إلحاحاً.</div>\n<div dir="RTL" style="text-align: right;">يتوقع أن تتغير المنطقة المناخية الحيوية لغابة أرز الرب، ما يؤثر في توزعها وتركيبة أنواعها. وقد ازدادت هجمات الحشرات، يؤججها ازدياد الجفاف والقحل، فباتت تؤثر بالفعل على غابتي الأرز في تنورين والشوف، وتهدد بالانتشار إلى أرز الرب.</div>\n<div dir="RTL" style="text-align: right;">هناك حالياً في لبنان أكثر من 12 غابة أرز تقع على ارتفاعات تتراوح بين 1100 متر و1925 متراً على السفوح الغربية لسلسلة جبال لبنان، ويحتل معظمها مساحة تقل عن 100 هكتار. وهي مناطق ذات تنوع بيولوجي كبير تؤوي أنواعاً نباتية مستوطنة ومهددة بالزوال. وأرز لبنان مدرج كنوع سريع التأثر على القائمة الحمراء للاتحاد الدولي لحماية الطبيعة (<span dir="LTR">IUCN</span>).</div>\n<div dir="RTL" style="text-align: right;"></div>\n<div dir="RTL" style="text-align: right;"><b>وادي رم تحفة الأردن الصحراوية</b></div>\n<div dir="RTL" style="text-align: right;">وادي رم موقع صحراوي مميز في جنوب الأردن، يزخر بالممرات الضيقة والأجراف العالية والكهوف والقناطر الطبيعية والمشاهد الخلابة. وقد أُدرج على قائمة اليونسكو كموقع للتراث العالمي لقيمته الطبيعية والثقافية.</div>\n<div dir="RTL" style="text-align: right;">تبلغ مساحة وادي رم نحو 300 كيلومتر مربع، ويحوي أكثر من 45 ألف منحوتة ونقش صخري يعود تاريخها إلى 12 ألف سنة خلت، ما يساعد في الإضاءة على نشوء المجتمعات الرعوية وتطور الأبجدية. وهو ملاذ هام للأحياء البرية الصحراوية، بما فيها الصقر الأسخم والوعل العربي والمها العربي الذي أعيد توطينه. وكثير من نباتاته مصادر هامة للغذاء وعلف الماشية والأدوية للبدو المحليين. لكن السياحة غير المنظمة، بما في ذلك قيادة المركبات خارج الطرق، ومواقع التخييم غير الشرعية، والتجول من دون أدلاء، والكتابة على الصخور، وتأثر الثقافة المحلية بأكثر من 300 ألف سائح يزورون هذه المنطقة النائية سنوياً، تلقي جميعاً بثقلها على وادي رم.</div>\n<div dir="RTL" style="text-align: right;">ومن المتوقع أن يزيد تغير المناخ في هذه المشاكل. فارتفاع الحرارة وازدياد الجفاف سيؤديان إلى تفاقم الاجهاد المائي، وسوف يشكلان خطراً بشكل خاص على الأنواع الحية المحصورة في الأماكن الجبلية العالية في وادي رم. وهناك حاجة ملحة إلى بحوث مفصلة حول سيناريوهات تغير المناخ في الوادي.</div>\n<div dir="RTL" style="text-align: right;"></div>\n<div dir="RTL" style="text-align: right;"><b>المدن القديمة في موريتانيا</b></div>\n<div dir="RTL" style="text-align: right;">«قصور» وادان وشنقيط وتيشيت وولاته مدن قديمة في موريتانيا كانت مراكز تجارية وثقافية هامة على طرق القوافل عبر الصحراء الأفريقية الكبرى في العصور الوسطى. وهي ضمن مواقع التراث العالمي لدى  منظمة اليونسكو.</div>\n<div dir="RTL" style="text-align: right;">اشتهرت شنقيط بمسجدها ذي المئذنة المربعة التي بنيت بحجارة من دون ملاط. وتعتبر سابع المدن المقدسة في الإسلام. وهي، مثل القصور الأخرى، مقصد تاريخي للزوار الذين يجلبون دخلاً حيوياً للسكان المحليين.</div>\n<div dir="RTL" style="text-align: right;">السياحة في موريتانيا متخلفة جداً، وزاد في مشاكلها خلال السنوات الأخيرة القلق على أمن المسافرين. وقصور موريتانيا، التي كانت في الماضي مراكز للثقافة البدوية والإسلامية في شمال أفريقيا، يتهددها حالياً زحف الصحراء.</div>\n<div dir="RTL" style="text-align: right;">شوارع وساحات شنقيط، التي عرفت بمكتبتها القديمة الغنية بالكتب والمخطوطات الإسلامية، تختنق بالرمال إذ تزحف الكثبان داخل المدينة. وقد يتلف الرمل والحر الشديد الأبنية القديمة، وتهدد العواصف المطرية الهوجاء العمارة الطينية وتزيد تآكل التربة.</div>\n<div dir="RTL" style="text-align: right;">ويفاقم التصحر في منطقة «الساحل» المشكلة، ومن أسبابه الرعي الجائر وإزالة الغابات والتوسع الحضري، إضافة إلى موجات الجفاف الحاد الطويلة الأمد والهطول الغزير حين تمطر، ما يزيد الضغوط الحالية والنزاعات على الموارد الطبيعية.</div>', 'ثلاثة مواقع عربية للتراث العالمي مهددة مناخياً', '', 'inherit', 'closed', 'closed', '', '4-autosave-v1', '', '', '2016-10-30 13:37:23', '2016-10-30 12:37:23', '', 4, 'http://klivin-pc/houmty/ar/2016/10/30/4-autosave-v1/', 0, 'revision', '', 0),
(14, 1, '2016-10-30 13:38:49', '2016-10-30 12:38:49', '', 'cover-houmty', '', 'inherit', 'open', 'closed', '', 'cover-houmty', '', '', '2016-10-30 13:38:49', '2016-10-30 12:38:49', '', 4, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/cover-houmty.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2016-10-30 13:38:59', '2016-10-30 12:38:59', '<p style="text-align: right;"><img class="alignnone  wp-image-14" src="http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/cover-houmty-300x180.jpg" alt="cover-houmty" width="458" height="275" /></p>\r\n<p style="text-align: right;"> يشكل تغير المناخ أحد أكبر المخاطر على السياحة، التي تعتبر من أهم القطاعات الاقتصادية وأسرعها نمواً، وهي تولد 9 في المئة من الناتج المحلي الإجمالي العالمي وتوفر وظيفة واحدة من كل 11 وظيفة. وفي حين يلحق سوء الإدارة الضرر بالمواقع السياحية، فإن تغير المناخ يضاعف خطر خسارة الميزات التي تجعل هذه المواقع وجهات جذابة للسياح.</p>\r\n\r\n<div dir="RTL" style="text-align: right;">«التراث العالمي والسياحة في مناخ متغير» تقرير صدر حديثاً عن منظمة اليونسكو وبرنامج الأمم المتحدة للبيئة و«اتحاد العلماء المهتمين» في الولايات المتحدة. وهو يدرج 31 موقعاً للتراث العالمي الطبيعي والثقافي في 29 بلداً، تتعرض لتأثيرات ارتفاع درجات الحرارة وذوبان الكتل الجليدية وارتفاع مستويات البحار وابيضاض الشعاب المرجانية واشتداد الأحداث المناخية وتفاقم موجات الجفاف واستطالة مواسم حرائق الغابات. ويوثق التأثيرات المناخية في مواقع سياحية شهيرة، مثل مدينة البندقية في إيطاليا وستونهنج في بريطانيا وجزر غلاباغوس في الإكوادور ومدينة قرطاجنة في كولومبيا ومتنزه شيريتوكو الوطني في اليابان.</div>\r\n<div dir="RTL" style="text-align: right;">ويتناول التقرير ثلاثة مواقع للتراث العالمي في المنطقة العربية، هي وادي قاديشا وغابة «أرز الرب» في لبنان، ووادي رم في الأردن، وقصور وادان وولاتة وتيشيت في موريتانيا، واصفاً مزاياها وعارضاً المخاطر التي تواجهها من تأثيرات تغير المناخ.</div>\r\n<div dir="RTL" style="text-align: right;"></div>\r\n<div dir="RTL" style="text-align: right;"><b>وادي قاديشا وغابة الأرز في لبنان</b></div>\r\n<div dir="RTL" style="text-align: right;">يعتبر وادي قاديشا في شمال لبنان نموذجاً لمواقع عاشت فيها مجتمعات منذ القدم ومارست طقوساً في نسيج بيئتها الطبيعية. أولئك الذين أقاموا هناك في الأديرة والمناسك الكثيرة، التي يعود بعضها إلى نحو ألفي سنة، أرادوا التقرب من الخالق في أحضان طبيعة نائية وعرة، من منحدرات شاهقة وشبكات كهوف طبيعية اتّخذوها ملاذات لهم.</div>\r\n<div dir="RTL" style="text-align: right;">لكن تغير المناخ والنشاط السياحي يزيدان الضغط على المعيشة التقليدية والنظم الإيكولوجية في وادي قاديشا. وتنحصر غابة الأرز الشهيرة عالمياً ضمن بقعة صغيرة لا تتعدى مساحتها هكتارين وتعرف بغابة أرز الرب. وهي تضم أقدم وأكبر أشجار الأرز المعروفة، فمن نحو 375 شجرة متبقية، يفوق عمر اثنتين 3000 سنة، فيما يزيد عمر عشر أشجار على 1000 سنة، ومنها أربع يزيد عمرها على 1500 سنة. والغابة قريبة من بلدة بشري، التي تعتبر من مراكز التزلج الرئيسية في لبنان، على منحدر جبلي تعرّت أرضه بفعل الرعي الجائر لقطعان الماعز.</div>\r\n<div dir="RTL" style="text-align: right;">السياحة عنصر هام في الاقتصاد اللبناني. وعلى رغم أن الاضطراب السياسي أدى إلى انخفاض كبير في عدد السياح منذ الذروة التي سجلها عام 2009، فقد ساهمت السياحة في 25 في المئة من الناتج المحلي الإجمالي للبلاد عام 2012. وفي العام 2000، زار الغابة أكثر من 200 ألف سائح أي 20 في المئة من زوار لبنان ذلك العام.</div>\r\n<div dir="RTL" style="text-align: right;">لأرز لبنان (<span dir="LTR">Cedrus libani</span>) قيمة روحية منذ القدم، وقد ورد ذكره 103 مرات في العهدين القديم والجديد، بما في ذلك المزمور 104:16 الذي جاء فيه أن «الرب زرعه، وهو الذي يرويه». والأهمية الروحية لأرز وادي قاديشا تمتد أبعد كثيراً من المجتمعات المحلية. فقد استخدم خشبه في بناء المعابد في أنحاء المشرق، بما في ذلك هيكل سليمان في القدس الذي بني في القرن العاشر قبل الميلاد.</div>\r\n<div dir="RTL" style="text-align: right;">وخشب الأرز مرادف أيضاً لطموحات الفينيقيين القدماء الكبيرة في بناء السفن وركوب البحار. وهو مطلوب منذ نحو 5000 سنة في منطقة البحر المتوسط لمتانته وديمومته. وقد أقبل الأقدمون على استخدامه كمادة بناء، مما جعل غاباته الكبيرة في لبنان تتلاشى بحلول القرن السادس، وفق مصادر تاريخية تعود إلى زمن الإمبراطور البيزنطي جوستنيان الأول (482 ـ 565م). واستمرت غاباته في التقلص على مرّ القرون، ولم يبق حالياً  إلا 5 في المئة من مساحتها الأصلية.</div>\r\n<div dir="RTL" style="text-align: right;">ومن المتوقع أن يستمر انخفاض أعداد أشجار الأرز نتيجة تغير المناخ. والتوقعات مبنية على التحليل الجيني ودراسة حبوب اللقاح التي تلقي الضوء على حقبات سابقة من التغير المناخي الكبير، مثل فترة الانتقال من العصر «بين الجليدي» الأخير إلى العصر الجليدي الأخير قبل نحو 15 ألف عام، ومن العصر الجليدي الأخير إلى عصر الهولوسين المبكر قبل نحو 12 ألف عام.</div>\r\n<div dir="RTL" style="text-align: right;">يتوقع الباحثون أن يؤدي تغير المناخ إلى حصر تجمعات الأرز اللبناني في ثلاثة ملاذات فقط بحلول سنة 2100، نتيجة ارتفاع درجات الحرارة والإجهاد المائي الناجم عن انخفاض الرطوبة في منطقة البحر المتوسط. وفي حين تستطيع التجمعات النباتية الأخرى التكيف مع تغير المناخ بالزحف إلى ارتفاعات أعلى، فإن غالبية غابات الأرز في لبنان معزولة أصلاً على قمم الجبال أو قربها، فلا مكان أعلى للانتقال إليه. لكن غابة «أرز الرب» في وادي قاديشا استثناء لهذه القاعدة، وهي إحدى ثلاث غابات أرز يتوافر لها موئل أعلى لانتقال محتمل، مما يجعل حمايتها أكثر إلحاحاً.</div>\r\n<div dir="RTL" style="text-align: right;">يتوقع أن تتغير المنطقة المناخية الحيوية لغابة أرز الرب، ما يؤثر في توزعها وتركيبة أنواعها. وقد ازدادت هجمات الحشرات، يؤججها ازدياد الجفاف والقحل، فباتت تؤثر بالفعل على غابتي الأرز في تنورين والشوف، وتهدد بالانتشار إلى أرز الرب.</div>\r\n<div dir="RTL" style="text-align: right;">هناك حالياً في لبنان أكثر من 12 غابة أرز تقع على ارتفاعات تتراوح بين 1100 متر و1925 متراً على السفوح الغربية لسلسلة جبال لبنان، ويحتل معظمها مساحة تقل عن 100 هكتار. وهي مناطق ذات تنوع بيولوجي كبير تؤوي أنواعاً نباتية مستوطنة ومهددة بالزوال. وأرز لبنان مدرج كنوع سريع التأثر على القائمة الحمراء للاتحاد الدولي لحماية الطبيعة (<span dir="LTR">IUCN</span>).</div>\r\n<div dir="RTL" style="text-align: right;"></div>\r\n<div dir="RTL" style="text-align: right;"><b>وادي رم تحفة الأردن الصحراوية</b></div>\r\n<div dir="RTL" style="text-align: right;">وادي رم موقع صحراوي مميز في جنوب الأردن، يزخر بالممرات الضيقة والأجراف العالية والكهوف والقناطر الطبيعية والمشاهد الخلابة. وقد أُدرج على قائمة اليونسكو كموقع للتراث العالمي لقيمته الطبيعية والثقافية.</div>\r\n<div dir="RTL" style="text-align: right;">تبلغ مساحة وادي رم نحو 300 كيلومتر مربع، ويحوي أكثر من 45 ألف منحوتة ونقش صخري يعود تاريخها إلى 12 ألف سنة خلت، ما يساعد في الإضاءة على نشوء المجتمعات الرعوية وتطور الأبجدية. وهو ملاذ هام للأحياء البرية الصحراوية، بما فيها الصقر الأسخم والوعل العربي والمها العربي الذي أعيد توطينه. وكثير من نباتاته مصادر هامة للغذاء وعلف الماشية والأدوية للبدو المحليين. لكن السياحة غير المنظمة، بما في ذلك قيادة المركبات خارج الطرق، ومواقع التخييم غير الشرعية، والتجول من دون أدلاء، والكتابة على الصخور، وتأثر الثقافة المحلية بأكثر من 300 ألف سائح يزورون هذه المنطقة النائية سنوياً، تلقي جميعاً بثقلها على وادي رم.</div>\r\n<div dir="RTL" style="text-align: right;">ومن المتوقع أن يزيد تغير المناخ في هذه المشاكل. فارتفاع الحرارة وازدياد الجفاف سيؤديان إلى تفاقم الاجهاد المائي، وسوف يشكلان خطراً بشكل خاص على الأنواع الحية المحصورة في الأماكن الجبلية العالية في وادي رم. وهناك حاجة ملحة إلى بحوث مفصلة حول سيناريوهات تغير المناخ في الوادي.</div>\r\n<div dir="RTL" style="text-align: right;"></div>\r\n<div dir="RTL" style="text-align: right;"><b>المدن القديمة في موريتانيا</b></div>\r\n<div dir="RTL" style="text-align: right;">«قصور» وادان وشنقيط وتيشيت وولاته مدن قديمة في موريتانيا كانت مراكز تجارية وثقافية هامة على طرق القوافل عبر الصحراء الأفريقية الكبرى في العصور الوسطى. وهي ضمن مواقع التراث العالمي لدى  منظمة اليونسكو.</div>\r\n<div dir="RTL" style="text-align: right;">اشتهرت شنقيط بمسجدها ذي المئذنة المربعة التي بنيت بحجارة من دون ملاط. وتعتبر سابع المدن المقدسة في الإسلام. وهي، مثل القصور الأخرى، مقصد تاريخي للزوار الذين يجلبون دخلاً حيوياً للسكان المحليين.</div>\r\n<div dir="RTL" style="text-align: right;">السياحة في موريتانيا متخلفة جداً، وزاد في مشاكلها خلال السنوات الأخيرة القلق على أمن المسافرين. وقصور موريتانيا، التي كانت في الماضي مراكز للثقافة البدوية والإسلامية في شمال أفريقيا، يتهددها حالياً زحف الصحراء.</div>\r\n<div dir="RTL" style="text-align: right;">شوارع وساحات شنقيط، التي عرفت بمكتبتها القديمة الغنية بالكتب والمخطوطات الإسلامية، تختنق بالرمال إذ تزحف الكثبان داخل المدينة. وقد يتلف الرمل والحر الشديد الأبنية القديمة، وتهدد العواصف المطرية الهوجاء العمارة الطينية وتزيد تآكل التربة.</div>\r\n<div dir="RTL" style="text-align: right;">ويفاقم التصحر في منطقة «الساحل» المشكلة، ومن أسبابه الرعي الجائر وإزالة الغابات والتوسع الحضري، إضافة إلى موجات الجفاف الحاد الطويلة الأمد والهطول الغزير حين تمطر، ما يزيد الضغوط الحالية والنزاعات على الموارد الطبيعية.</div>', 'ثلاثة مواقع عربية للتراث العالمي مهددة مناخياً', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-10-30 13:38:59', '2016-10-30 12:38:59', '', 4, 'http://klivin-pc/houmty/ar/2016/10/30/4-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-10-30 14:02:29', '2016-10-30 13:02:29', '<p style="text-align: right;"><img src="http://www.lerelais.ma/wp-content/uploads/COP22-Marrakech-2016-740x431.png" alt="Résultat de recherche d''images pour &quot;marrakech cop 22&quot;" /></p>\n<p style="text-align: right;">في ديسمبر 2015 دخلت إتفاقية باريس الموقعة في إطار الإتفاقية الإطارية للأمم المتحدة بشأن تغير المناخ حيز التنفيذ وذلك وقت قياسي بالمقارنة بغيرها من الاتفاقيات. فإعتبارا من الحادي عشر من أكتوبر 2016، صادق 76 طرف (دولة) علي إتفاقية باريس، ففي حين يلزم 55 طرف فقط للتصديق على الإتفاقية لتدخل حيز التنفيذ. فأيضاً تم إستيفاء الشرط الاخر وهو يجب أن الأطراف الـ 55 تمثل 55 في المائة على الأقل من مجموع إنبعاثات غازات الدفيئة، فالأرقام الحالية توضح أن النسبة وصلت إلي 60 في المئة.</p>\n<p style="text-align: right;">وسيتم تنفيذ تنفيذ إتفاق باريس وفقاً للمساهمات المقررة على الصعيد الوطني (INDCs) والتي قدمتها البلدان قبل المفاوضات في باريس. ويُلزم إتفاق باريس الدول للحفاظ على إرتفاع درجة حرارة الأرض أقل من 2 درجة مئوية مقارنة بمستويات ما قبل الثورة الصناعية، ومحاولة الحد من إرتفاع درجات الحرارة عن 1.5 درجة، وضمان الوصول بالانبعاثات الي الصفر في النصف الثاني من هذا القرن.</p>\n<p style="text-align: right;">إن إتفاقية باريس هي الآن حقيقة واقعة ويجب على جميع الدول العربية التصديق عليها للاستفادة من آلياتها، وفرص التمويل المتاحة، والزخم العالمي لمحاربة تغير المناخ. وبالإضافة إلى ذلك، تتيح الإتفاقية فرص عمل جديدة في مختلف الصناعات منخفضة الكربون والتقنيات النظيفة.</p>\n<p style="text-align: right;"><strong>مراكش تستضيف مؤتمر الأطراف الثاني والعشرون</strong></p>\n<p style="text-align: right;">العالم العربي يمكن أن تلعب دوراً محورياً في تحقيق إتفاق باريس علي أرض الواقع تزامناً مع جولة المفاوضات لمؤتمر الأطراف 22 (COP 22) والمقرر عقدها في مراكش، المغرب في نوفمبر 2016. ومراكش يمكن أن تكون أول نقطة تحول إيجابية، عالمياً وإقليمياً، من أجل تنفيذ إتفاق باريس مع العديد القرارات والسياسات والاستراتيجيات المتوقعة لتحقيق أهداف الاتفاقية على أرض الواقع.</p>\n<p style="text-align: right;">من ناحية، يواجه العالم العربي تحديات متزايدة مثل الصراعات المسلحة، والبطالة، وندرة المياه، والتوترات الاجتماعية. من جهة أخرى، فإن المنطقة لديها الكثير من الموارد الطبيعية (الطاقة الشمسية هي مثال واضح)، ومجتمع شاب، فضلا عن العمالة الرخيصة التي تشير إلى إمكانية تحقيق التنمية المستدامة بصورة كبيرة في المنطقة.</p>\n<p style="text-align: right;">ان إجمالي الانبعاثات في العالم العربي حوالي 4٪ من اجمالي الانبعاثات العالمية مع أكبر ثلاث دول عربية منتجة للانبعاثات الغازية وهي المملكة العربية السعودية (0.8 في المئة)، الإمارات العربية المتحدة (0.53 في المئة)، ومصر (0.52 في المئة). وحتى تاريخه، وقد وقعت ثمانية عشر دولة عربية من أصل إثنان وعشرون دولة عربية إتفاقية باريس، حيث لم توقع بعد المملكة العربية السعودية والعراق وجزر القمر وسوريا، ولكن لم يصادق علي الاتفاقية الا أربع دول عربية فقط وهي الإمارات العربية المتحدة، فلسطين، المغرب، والجزائر.</p>\n<p style="text-align: right;"><strong>أهمية </strong><strong>COP</strong><strong> 22 للمنطقة العربية\n</strong>مؤتمر الأطراف 22 في مراكش مهم للمنطقة العربية حيث سيناقش عدداً من القضايا الرئيسية التي تهم المنطقة. بناء القدرات، على سبيل المثال، هي قضية رئيسية بالنسبة للمنطقة العربية. ففي الواقع، فإن المنطقة العربية بحاجة لبناء القدرات على وجه السرعة، وبالتالي، يمكن أن تعمل مع غيرها من البلدان النامية ولا سيما في مجال بناء القدرات لمجالات تمويل التكيف، وأيضا لتنفيذ المساهمات المقررة على الصعيد الوطني فضلاً عن مبادرات تخفيف آثار تغير المناخ.</p>\n<p style="text-align: right;"><strong>التمويل\n</strong>من المفترض أن تقدم البلدان المتقدمة 100 مليار دولار سنويا لتمويل المناخ بحلول عام 2020. واحدة من القضايا الرئيسية في مؤتمر الأطراف بمراكش 22 هي الإتفاق علي خارطة الطريق واضحة لهذه 100 مليار دولار. والسياسات والمشاريع الطموحة في المنطقة العربية حالياً من شأنها أن تساعد في الحد من غازات الاحتباس الحراري دون أن يؤثر ذلك سلباً على التنمية الاجتماعية. وبالتالي، فإن التمويل هو القضية المركزية للمنطقة لتنفيذ هذه السياسات والمشاريع.</p>\n<p style="text-align: right;">وبالإضافة إلى ذلك، يجب على العالم العربي أن يسعى لنقل التكنولوجيا والتمويل خلال محادثات المناخ في مراكش. فتملك تكنولوجيا صديقة للبيئة، نظيفة ومنخفضة الإنبعاثات في مختلف القطاعات ستمكن من سلاسة التحول نحو الاقتصاد الأخضر منحفض الكربون والذي يجذب إستثمارات جديدة ويخلق فرص عمل خضراء. وعلى المدى الطويل، هذا سيكون خياراً أفضل ومستدام في المنطقة العربية التي بصفة عامة يعتمد إقتصادها بشكل رئيسي على عائدات الوقود الأحفوري.</p>\n<p style="text-align: right;"><strong>مفاوضات مراكش وأجندة 2030</strong></p>\n<p style="text-align: right;">في الواقع، فأي مدقق للنظر سيدرك أن إتفاقية باريس ليست حول تغير المناخ فقط؛ بل إنها ستغيير من مسار التنمية في جميع أنحاء العالم. وسوف تؤثر تقريباً علي جميع قطاعات الإقتصاد العالمي من الطاقة، والنقل، والزراعة وحتي نمط الحياة والإجراءات والخيارات من الأفراد في شتي بقاع الارض.</p>\n<p style="text-align: right;">وبالتالي، فمن المتوقع أن السياسات الوطنية لتغير المناخ في مختلف القطاعات من شأنها أن تساعد ليس فقط في تحقيق الهدف السابع للتنمية المستدامة (SDG 7) “اتخاذ إجراءات عاجلة لمكافحة تغير المناخ وآثاره”، ولكن أيضاً تحقيق تقريباً كافة أهداف التنمية المستدامة السبعة عشر SDGs 17 بالاجندة 2030 للتنمية المستدامة وخصوصاً عندما يتم دمج الإعتبارات المناخية والخطط منخفضة الكربون في التخطيط الوطني بذكاء.</p>\n<p style="text-align: right;">ليس هناك شك في أن جولة مفاوضات مراكش لتغير المناخ ستسلط الضوء على المنطقة العربية خاصة فيما يتعلق بخطط تخفيض و/أو إزالة الكربون من اقتصاداتها، كما تمثل هذه الجولة فرصة للمنطقة لعرض المشاريع الخضراء المختلفة، وخاصة في مجال الطاقة المتجددة الطاقة. كما ستلعب دوراً أساسياً في رفع مستوى الوعي، خاصة في أوساط الشباب في العالم العربي، حول آثار تغير المناخ على المنطقة العربية، وكذلك على أهمية إتخاذ إجراءات شاملة وسريعة لمكافحة تغير المناخ. إن مؤتمر الأطراف 22 بمراكش هو فرصة جيدة للمنطقة، وينبغي أن تبذل الدول العربية كل جهد ممكن لضمان نجاح مؤتمر مراكش وكذلك الاستفادة منه.</p>', 'مفاوضات مراكش لتغير المناخ مهمة للمنطقة العربية', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2016-10-30 14:02:29', '2016-10-30 13:02:29', '', 10, 'http://klivin-pc/houmty/ar/2016/10/30/10-autosave-v1/', 0, 'revision', '', 0),
(17, 1, '2016-10-30 14:02:32', '2016-10-30 13:02:32', '<p style="text-align: right;"><img src="http://www.lerelais.ma/wp-content/uploads/COP22-Marrakech-2016-740x431.png" alt="Résultat de recherche d''images pour &quot;marrakech cop 22&quot;" /></p>\r\n<p style="text-align: right;">في ديسمبر 2015 دخلت إتفاقية باريس الموقعة في إطار الإتفاقية الإطارية للأمم المتحدة بشأن تغير المناخ حيز التنفيذ وذلك وقت قياسي بالمقارنة بغيرها من الاتفاقيات. فإعتبارا من الحادي عشر من أكتوبر 2016، صادق 76 طرف (دولة) علي إتفاقية باريس، ففي حين يلزم 55 طرف فقط للتصديق على الإتفاقية لتدخل حيز التنفيذ. فأيضاً تم إستيفاء الشرط الاخر وهو يجب أن الأطراف الـ 55 تمثل 55 في المائة على الأقل من مجموع إنبعاثات غازات الدفيئة، فالأرقام الحالية توضح أن النسبة وصلت إلي 60 في المئة.</p>\r\n<p style="text-align: right;">وسيتم تنفيذ تنفيذ إتفاق باريس وفقاً للمساهمات المقررة على الصعيد الوطني (INDCs) والتي قدمتها البلدان قبل المفاوضات في باريس. ويُلزم إتفاق باريس الدول للحفاظ على إرتفاع درجة حرارة الأرض أقل من 2 درجة مئوية مقارنة بمستويات ما قبل الثورة الصناعية، ومحاولة الحد من إرتفاع درجات الحرارة عن 1.5 درجة، وضمان الوصول بالانبعاثات الي الصفر في النصف الثاني من هذا القرن.</p>\r\n<p style="text-align: right;">إن إتفاقية باريس هي الآن حقيقة واقعة ويجب على جميع الدول العربية التصديق عليها للاستفادة من آلياتها، وفرص التمويل المتاحة، والزخم العالمي لمحاربة تغير المناخ. وبالإضافة إلى ذلك، تتيح الإتفاقية فرص عمل جديدة في مختلف الصناعات منخفضة الكربون والتقنيات النظيفة.</p>\r\n<p style="text-align: right;"><strong>مراكش تستضيف مؤتمر الأطراف الثاني والعشرون</strong></p>\r\n<p style="text-align: right;">العالم العربي يمكن أن تلعب دوراً محورياً في تحقيق إتفاق باريس علي أرض الواقع تزامناً مع جولة المفاوضات لمؤتمر الأطراف 22 (COP 22) والمقرر عقدها في مراكش، المغرب في نوفمبر 2016. ومراكش يمكن أن تكون أول نقطة تحول إيجابية، عالمياً وإقليمياً، من أجل تنفيذ إتفاق باريس مع العديد القرارات والسياسات والاستراتيجيات المتوقعة لتحقيق أهداف الاتفاقية على أرض الواقع.</p>\r\n<p style="text-align: right;">من ناحية، يواجه العالم العربي تحديات متزايدة مثل الصراعات المسلحة، والبطالة، وندرة المياه، والتوترات الاجتماعية. من جهة أخرى، فإن المنطقة لديها الكثير من الموارد الطبيعية (الطاقة الشمسية هي مثال واضح)، ومجتمع شاب، فضلا عن العمالة الرخيصة التي تشير إلى إمكانية تحقيق التنمية المستدامة بصورة كبيرة في المنطقة.</p>\r\n<p style="text-align: right;">ان إجمالي الانبعاثات في العالم العربي حوالي 4٪ من اجمالي الانبعاثات العالمية مع أكبر ثلاث دول عربية منتجة للانبعاثات الغازية وهي المملكة العربية السعودية (0.8 في المئة)، الإمارات العربية المتحدة (0.53 في المئة)، ومصر (0.52 في المئة). وحتى تاريخه، وقد وقعت ثمانية عشر دولة عربية من أصل إثنان وعشرون دولة عربية إتفاقية باريس، حيث لم توقع بعد المملكة العربية السعودية والعراق وجزر القمر وسوريا، ولكن لم يصادق علي الاتفاقية الا أربع دول عربية فقط وهي الإمارات العربية المتحدة، فلسطين، المغرب، والجزائر.</p>\r\n<p style="text-align: right;"><strong>أهمية </strong><strong>COP</strong><strong> 22 للمنطقة العربية\r\n</strong>مؤتمر الأطراف 22 في مراكش مهم للمنطقة العربية حيث سيناقش عدداً من القضايا الرئيسية التي تهم المنطقة. بناء القدرات، على سبيل المثال، هي قضية رئيسية بالنسبة للمنطقة العربية. ففي الواقع، فإن المنطقة العربية بحاجة لبناء القدرات على وجه السرعة، وبالتالي، يمكن أن تعمل مع غيرها من البلدان النامية ولا سيما في مجال بناء القدرات لمجالات تمويل التكيف، وأيضا لتنفيذ المساهمات المقررة على الصعيد الوطني فضلاً عن مبادرات تخفيف آثار تغير المناخ.</p>\r\n<p style="text-align: right;"><strong>التمويل\r\n</strong>من المفترض أن تقدم البلدان المتقدمة 100 مليار دولار سنويا لتمويل المناخ بحلول عام 2020. واحدة من القضايا الرئيسية في مؤتمر الأطراف بمراكش 22 هي الإتفاق علي خارطة الطريق واضحة لهذه 100 مليار دولار. والسياسات والمشاريع الطموحة في المنطقة العربية حالياً من شأنها أن تساعد في الحد من غازات الاحتباس الحراري دون أن يؤثر ذلك سلباً على التنمية الاجتماعية. وبالتالي، فإن التمويل هو القضية المركزية للمنطقة لتنفيذ هذه السياسات والمشاريع.</p>\r\n<p style="text-align: right;">وبالإضافة إلى ذلك، يجب على العالم العربي أن يسعى لنقل التكنولوجيا والتمويل خلال محادثات المناخ في مراكش. فتملك تكنولوجيا صديقة للبيئة، نظيفة ومنخفضة الإنبعاثات في مختلف القطاعات ستمكن من سلاسة التحول نحو الاقتصاد الأخضر منحفض الكربون والذي يجذب إستثمارات جديدة ويخلق فرص عمل خضراء. وعلى المدى الطويل، هذا سيكون خياراً أفضل ومستدام في المنطقة العربية التي بصفة عامة يعتمد إقتصادها بشكل رئيسي على عائدات الوقود الأحفوري.</p>\r\n<p style="text-align: right;"><strong>مفاوضات مراكش وأجندة 2030</strong></p>\r\n<p style="text-align: right;">في الواقع، فأي مدقق للنظر سيدرك أن إتفاقية باريس ليست حول تغير المناخ فقط؛ بل إنها ستغيير من مسار التنمية في جميع أنحاء العالم. وسوف تؤثر تقريباً علي جميع قطاعات الإقتصاد العالمي من الطاقة، والنقل، والزراعة وحتي نمط الحياة والإجراءات والخيارات من الأفراد في شتي بقاع الارض.</p>\r\n<p style="text-align: right;">وبالتالي، فمن المتوقع أن السياسات الوطنية لتغير المناخ في مختلف القطاعات من شأنها أن تساعد ليس فقط في تحقيق الهدف السابع للتنمية المستدامة (SDG 7) “اتخاذ إجراءات عاجلة لمكافحة تغير المناخ وآثاره”، ولكن أيضاً تحقيق تقريباً كافة أهداف التنمية المستدامة السبعة عشر SDGs 17 بالاجندة 2030 للتنمية المستدامة وخصوصاً عندما يتم دمج الإعتبارات المناخية والخطط منخفضة الكربون في التخطيط الوطني بذكاء.</p>\r\n<p style="text-align: right;">ليس هناك شك في أن جولة مفاوضات مراكش لتغير المناخ ستسلط الضوء على المنطقة العربية خاصة فيما يتعلق بخطط تخفيض و/أو إزالة الكربون من اقتصاداتها، كما تمثل هذه الجولة فرصة للمنطقة لعرض المشاريع الخضراء المختلفة، وخاصة في مجال الطاقة المتجددة الطاقة. كما ستلعب دوراً أساسياً في رفع مستوى الوعي، خاصة في أوساط الشباب في العالم العربي، حول آثار تغير المناخ على المنطقة العربية، وكذلك على أهمية إتخاذ إجراءات شاملة وسريعة لمكافحة تغير المناخ. إن مؤتمر الأطراف 22 بمراكش هو فرصة جيدة للمنطقة، وينبغي أن تبذل الدول العربية كل جهد ممكن لضمان نجاح مؤتمر مراكش وكذلك الاستفادة منه.</p>', 'مفاوضات مراكش لتغير المناخ مهمة للمنطقة العربية', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-10-30 14:02:32', '2016-10-30 13:02:32', '', 10, 'http://klivin-pc/houmty/ar/2016/10/30/10-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2016-10-30 14:03:10', '2016-10-30 13:03:10', '', 'cop22-marrakech-2016-740x431', '', 'inherit', 'open', 'closed', '', 'cop22-marrakech-2016-740x431', '', '', '2016-10-30 14:03:10', '2016-10-30 13:03:10', '', 10, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/COP22-Marrakech-2016-740x431.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2016-10-30 17:16:31', '2016-10-30 16:16:31', '', 'google', '', 'publish', 'closed', 'closed', '', 'google', '', '', '2016-10-30 17:16:31', '2016-10-30 16:16:31', '', 0, 'http://klivin-pc/houmty/ar/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2016-10-30 17:16:32', '2016-10-30 16:16:32', '', 'فيسبوك', '', 'publish', 'closed', 'closed', '', '%d9%81%d9%8a%d8%b3%d8%a8%d9%88%d9%83', '', '', '2016-10-30 17:16:32', '2016-10-30 16:16:32', '', 0, 'http://klivin-pc/houmty/ar/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2016-10-30 17:18:16', '2016-10-30 16:18:16', 'Bienvenue sur <a href="http://klivin-pc/houmty/">Sites houmty</a>. Vous lisez votre premier article. Modifiez-le ou supprimez-le, puis commencez à publier&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-10-30 17:18:16', '2016-10-30 16:18:16', '', 1, 'http://klivin-pc/houmty/ar/2016/10/30/1-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2016-10-30 17:31:23', '2016-10-30 16:31:23', '<iframe src="https://www.youtube.com/embed/b-1L6MKysGs" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\r\n<p style="text-align: left;">Edit this file and place the following configuration. Edit the text highlighted in red according to your environment. In the <code>server_name</code> line, you should add all three (or more) of your multisite domains, and the wildcard subdomain for the first domain.</p>', 'استعدادات مراكش لاحتضان القمة العالمية للمناخ', '', 'publish', 'open', 'open', '', '%d8%a7%d8%b3%d8%aa%d8%b9%d8%af%d8%a7%d8%af%d8%a7%d8%aa-%d9%85%d8%b1%d8%a7%d9%83%d8%b4-%d9%84%d8%a7%d8%ad%d8%aa%d8%b6%d8%a7%d9%86-%d8%a7%d9%84%d9%82%d9%85%d8%a9-%d8%a7%d9%84%d8%b9%d8%a7%d9%84%d9%85', '', '', '2016-10-31 06:39:30', '2016-10-31 06:39:30', '', 0, 'http://klivin-pc/houmty/ar/?p=27', 0, 'post', '', 0),
(28, 1, '2016-10-30 17:31:23', '2016-10-30 16:31:23', '<iframe src="https://www.youtube.com/embed/b-1L6MKysGs" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>', 'استعدادات مراكش لاحتضان القمة العالمية للمناخ', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-10-30 17:31:23', '2016-10-30 16:31:23', '', 27, 'http://klivin-pc/houmty/ar/2016/10/30/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2016-10-30 20:20:34', '2016-10-30 20:20:34', '[newsletter]', 'Newsletter', '', 'publish', 'closed', 'closed', '', 'newsletter', '', '', '2016-10-30 20:20:34', '2016-10-30 20:20:34', '', 0, 'http://klivin-pc/houmty/ar/newsletter/', 0, 'page', '', 0),
(30, 1, '2016-10-30 20:31:19', '2016-10-30 20:31:19', '', '523590_4924308509205_592727850_n', '', 'inherit', 'open', 'closed', '', '523590_4924308509205_592727850_n', '', '', '2016-10-30 20:31:19', '2016-10-30 20:31:19', '', 0, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/523590_4924308509205_592727850_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2016-10-30 20:34:01', '2016-10-30 20:34:01', '', 'tumblr_m7dgawg5v11qhymeq', '', 'inherit', 'open', 'closed', '', 'tumblr_m7dgawg5v11qhymeq', '', '', '2016-10-30 20:34:01', '2016-10-30 20:34:01', '', 6, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/tumblr_m7dgawg5v11qhymeq.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2016-10-30 20:34:09', '2016-10-30 20:34:09', '<p style="text-align: right;"><img class="alignnone size-medium wp-image-31" src="http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/tumblr_m7dgawg5v11qhymeq-300x250.jpg" alt="tumblr_m7dgawg5v11qhymeq" width="300" height="250" /></p>\r\n<p style="text-align: right;"><strong>للمرة الأولى تستطلع وسيلة إعلامية عربية الأوضاع في جنوب السودان بعد انفصاله عن الشمال. عدد أيار (مايو) من مجلة “البيئة والتنمية” يعرض لتحقيق ميداني عن الأوضاع البيئية والاجتماعية في أحدث دولة في العالم ووقائع التنافس على الموارد، خصوصاً النفطية والمائية، ودورها في تأجيج النزاعات الداخلية والصراعات بين الشمال والجنوب.</strong></p>\r\n<p style="text-align: right;"><strong>وفي العدد تقرير عن الأنهار العربية التي تصب في نهر الأردن وسياسة الاحتلال الاسرائيلي في الهيمنة على مجاريها والنزاع الحاصل على مياهها. ويضيء تحقيق شائق على السدود التي تبنيها تركيا على الأنهار الداخلية العابرة للحدود، والتي يتعدى أذاها السكان المحليين إلى الدول المجاورة.</strong></p>\r\n<p style="text-align: right;"><strong>ويتضمن كتاب الطبيعة في العدد تحقيقين، الأول عن غابة بُرَع المحمية التي هي ذاكرة اليمن السعيد، والثاني عن كنوز مغمورة تختزنها كهوف المكسيك المائية. ومن المواضيع الأخرى: مبنى أخضر في عمّان لمنظمة الصحة العالمية، سموم في ثياب ماركات شهيرة، النفايات الالكترونية في الأردن، العيش من القمامة في تونس، مظلات عملاقة تظلل حجاج المسجد النبوي، سوق الطيب في وسط بيروت، رسوم صخرية من العصر الحجري في المغرب، الكوارث المناخية تحرك وكالات الغوث، فضلاً عن الأبواب الثابتة، رسائل، البيئة في شهر، عالم العلوم، سوق البيئة، سيارات خضراء، نشاطات مدرسية، المفكرة البيئية. ويتضمن العدد ملحقاً عن نشاطات المنتدى العربي للبيئة والتنمية.</strong></p>\r\n<p style="text-align: right;"><strong>وفي افتتاحية العدد بعنوان “العرب على أبواب ريّو”، يتناول نجيب صعب قمة ريو +20 التي سيكون شعارها “الاقتصاد الأخضر”، معتبراً أنها تتيح فرصة لاستخدام هذا الشعار لتحقيق تنمية مستدامة، مطالباً الدول العربية بأن تلعب دوراً ايجابياً في صنع القرار وتبتعد عن التشكيك والعرقلة، “لأن الاقتصاد الأخضر ليس مجرد خيار للمنطقة العربية، بل هو التزام بتأمين مسار صحيح نحو تنمية مستدامة”.</strong></p>', 'حرب على الموارد', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-10-30 20:34:09', '2016-10-30 20:34:09', '', 6, 'http://klivin-pc/houmty/ar/2016/10/30/6-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2016-10-30 20:39:01', '2016-10-30 20:39:01', '', 'ghaza-water-1024x682', '', 'inherit', 'open', 'closed', '', 'ghaza-water-1024x682', '', '', '2016-10-30 20:39:01', '2016-10-30 20:39:01', '', 8, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/ghaza-water-1024x682.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2016-10-30 20:39:08', '2016-10-30 20:39:08', '<p style="text-align: right;"><strong>بدأ تنفيذ مشروع إنشاء محطة لتحلية مياه البحر في مدينة غزة. وسيتم في المرحلة الأولى بناء خزان مياه في منطقة الشيخ رضوان شمال القطاع سعته 5000 متر مكعب، يتوقع انجازه في آذار (مارس) 2016. وتم تأمين التمويل اللازم لإنشاء خط النقل، من الحكومة الكويتية بكلفة تصل إلى 60 مليون دولار. والمساعي مستمرة في البحث عن تمويل المراحل الأخرى لإنشاء المحطة وتشغيلها.</strong></p>\r\n<p style="text-align: right;"><strong> وسوف تنتج المحطة 10,000 متر مكعب من المياه المحلاة يومياً، تُخلط بمياه آبار البلدية في الخزان وتوزع على السكان.</strong></p>\r\n\r\n<div id="attachment_6309" class="wp-caption aligncenter" style="text-align: right; width: 652px;">\r\n\r\n<a href="http://marocenv.com/wp-content/uploads/2015/07/ghaza-water.jpg"><img class="wp-image-6309" src="http://marocenv.com/wp-content/uploads/2015/07/ghaza-water.jpg" sizes="(max-width: 543px) 100vw, 543px" srcset="http://marocenv.com/wp-content/uploads/2015/07/ghaza-water.jpg 1728w, http://marocenv.com/wp-content/uploads/2015/07/ghaza-water-300x200.jpg 300w, http://marocenv.com/wp-content/uploads/2015/07/ghaza-water-1024x682.jpg 1024w, http://marocenv.com/wp-content/uploads/2015/07/ghaza-water-150x100.jpg 150w" alt="ghaza water" width="642" height="428" /></a>\r\n<p class="wp-caption-text">صهريج لمياه الشرب ترسله منظمة خيرية بشكل دوري لتزويد خزانات عامة في أحياء غزة الفقيرة</p>\r\n\r\n</div>\r\n<p style="text-align: right;"><strong>ووصف مدير عام مصلحة مياه بلديات الساحل المهندس منذر شبلاق مشروع محطة التحلية بالإنجاز الكبير، موضحاً أنها ستشكل مصدراً هاماً للمياه الصالحة للاستخدام لأكثر من 250 ألف نسمة في مدينة غزة. وأضاف أن أهمية المشروع تنطلق من معاناة سكان المدينة من شح المياه وشدة ملوحتها، كما سيساهم في المحافظة على مياه الخزان الجوفي والتخفيف من حدة أزمة المياه التي تتفاقم مع تزايد عدد السكان.</strong></p>\r\n<p style="text-align: right;"><strong> </strong><strong>جدير بالذكر أنه، بسبب النقص الحاد في معالجة مياه الصرف الصحي في قطاع غزة، يتم ضخ نحو 90 ألف متر مكعب يومياً من مياه الصرف غير المعالجة أو المعالجة جزئياً إلى البحر في مناطق مختلفة من شاطىء القطاع. وترشح كمية مماثلة عبر التربة وصولاً إلى الحوض المائي الجوفي من خلال أكثر من 30 ألف حفرة امتصاصية. وهذا مصدر كبير لتلوث مياه البحر والمياه الجوفية.</strong></p>\r\n<p style="text-align: right;"><strong> </strong><strong>وذكر تقرير للأمم المتحدة قبل أشهر أن قطاع غزة، الذي يقطنه أكثر من مليون و750 ألف نسمة، يواجه أزمة مياه متفاقمة قد تجعله غير صالح للعيش خلال سنوات معدودة. وأضاف أن المياه الجوفية، التي تعد المصدر الوحيد الصالح للشرب في القطاع، ستكون غير قابلة للاستخدام سنة 2016.</strong></p>\r\n<p style="text-align: right;"><strong> </strong><strong>وبحسب الجهاز المركزي للإحصاء الفلسطيني، فإن «أكثر من 95 في المئة من مياه قطاع غزة لا تنطبق عليها معايير منظمة الصحة العالمية لمياه الشرب. ولا تزيد حصة الفرد من المياه على 90 ليتراً يومياً للاستعمالات الشخصية والمنزلية، أي أقل من الحد الأدنى الذي توصي به منظمة الصحة العالمية وهو 100 ليتر يومياً للفرد».</strong></p>\r\n<p style="text-align: right;"><strong>وكان مسؤول تنسيق المشاريع في سلطة المياه الفلسطينية مروان البردويل أعلن عام 2014 أن تباطؤ تنفيذ مشاريع تحلية المياه في قطاع غزة «سيقود إلى كارثة شاملة». فثمة عقبات تتعلق بنقص التمويل من الجهات المانحة، وأزمة الطاقة المتفاقمة، وإغلاق معابر قطاع غزة، ومنع إسرائيل إدخال مواد البناء والمعدات اللازمة، فضلاً عن استمرار الانقسام الداخلي بين الضفة الغربية وقطاع غزة ما يشوش على التنسيق لتنفيذ المشاريع.</strong></p>\r\n<p style="text-align: right;"><strong> وأشار البردويل إلى أن الضخ بكميات هائلة على مدار العشرين عاماً الماضية استنزف المياه الجوفية في غزة، ما أدى إلى اندفاع مياه البحر نحو الخزان الجوفي، فازدادت ملوحته إلى حد جعله غير صالح للاستخدام البشري. وأضاف: «الخزان الجوفي ملوث لدرجة أننا لو أخذنا معايير منظمة الصحة العالمية فهو ملوث بخمسة أضعافها نتيجة تسرب الأملاح الزائدة ونسبة النيترات في المياه».</strong></p>\r\n<p style="text-align: right;"><strong> وقد أجرت سلطة المياه الفلسطينية دراسات بشأن الحلول البديلة لهذه الأزمة. وخلصت إلى أن الخيار المتاح والأكثر ديمومة في قطاع غزة الساحلي هو اللجوء إلى تحلية مياه البحر. وذلك على مرحلتين: الأولى بالاتفاق على إنشاء ثلاث محطات صغيرة للتحلية كحل عاجل، في دير البلح ورفح ـ خان يونس ومدينة غزة، بحيث تخلط المياه المحلاة مع جزء من المياه الجوفية بغرض الوصول إلى نوعية مياه تتلاءم مع معايير منظمة الصحة العالمية. وفي المدى البعيد يتم إنشاء محطة تحلية مركزية تخدم إجمالي قطاع غزة بكلفة تصل إلى 455 مليون دولار.</strong></p>\r\n<p style="text-align: right;"><strong> وهذا يرفع حصة الفرد من المياه إلى 120 ليتراً يومياً ويحد من تلوث الخزان الجوفي واستنزافه.</strong></p>', 'غزة تشرب مياه البحر', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-10-30 20:39:08', '2016-10-30 20:39:08', '', 8, 'http://klivin-pc/houmty/ar/2016/10/30/8-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2016-10-31 06:21:17', '2016-10-31 06:21:17', '', '1454669_10202609752228672_1658157913_n', '', 'inherit', 'open', 'closed', '', '1454669_10202609752228672_1658157913_n', '', '', '2016-10-31 06:21:17', '2016-10-31 06:21:17', '', 0, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/1454669_10202609752228672_1658157913_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2016-10-31 06:39:24', '2016-10-31 06:39:24', '<iframe src="https://www.youtube.com/embed/b-1L6MKysGs" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\n<p style="text-align: left;">Edit this file and place the following configuration. Edit the text highlighted in red according to your environment. In the <code>server_name</code> line, you should add all three (or more) of your multisite domains, and the wildcard subdomain for the first domain.</p>', 'استعدادات مراكش لاحتضان القمة العالمية للمناخ', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2016-10-31 06:39:24', '2016-10-31 06:39:24', '', 27, 'http://klivin-pc/houmty/ar/2016/10/31/27-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_2_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(37, 1, '2016-10-31 06:39:30', '2016-10-31 06:39:30', '<iframe src="https://www.youtube.com/embed/b-1L6MKysGs" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\r\n<p style="text-align: left;">Edit this file and place the following configuration. Edit the text highlighted in red according to your environment. In the <code>server_name</code> line, you should add all three (or more) of your multisite domains, and the wildcard subdomain for the first domain.</p>', 'استعدادات مراكش لاحتضان القمة العالمية للمناخ', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-10-31 06:39:30', '2016-10-31 06:39:30', '', 27, 'http://klivin-pc/houmty/ar/2016/10/31/27-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-10-31 07:12:33', '2016-10-31 07:12:33', '<p style="text-align: right;"><img class="alignnone wp-image-14" src="http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/cover-houmty-300x180.jpg" alt="cover-houmty" width="458" height="275" /></p>\r\n<p style="text-align: right;"> يشكل تغير المناخ أحد أكبر المخاطر على السياحة، التي تعتبر من أهم القطاعات الاقتصادية وأسرعها نمواً، وهي تولد 9 في المئة من الناتج المحلي الإجمالي العالمي وتوفر وظيفة واحدة من كل 11 وظيفة. وفي حين يلحق سوء الإدارة الضرر بالمواقع السياحية، فإن تغير المناخ يضاعف خطر خسارة الميزات التي تجعل هذه المواقع وجهات جذابة للسياح.</p>\r\n\r\n<div dir="RTL" style="text-align: right;">«التراث العالمي والسياحة في مناخ متغير» تقرير صدر حديثاً عن منظمة اليونسكو وبرنامج الأمم المتحدة للبيئة و«اتحاد العلماء المهتمين» في الولايات المتحدة. وهو يدرج 31 موقعاً للتراث العالمي الطبيعي والثقافي في 29 بلداً، تتعرض لتأثيرات ارتفاع درجات الحرارة وذوبان الكتل الجليدية وارتفاع مستويات البحار وابيضاض الشعاب المرجانية واشتداد الأحداث المناخية وتفاقم موجات الجفاف واستطالة مواسم حرائق الغابات. ويوثق التأثيرات المناخية في مواقع سياحية شهيرة، مثل مدينة البندقية في إيطاليا وستونهنج في بريطانيا وجزر غلاباغوس في الإكوادور ومدينة قرطاجنة في كولومبيا ومتنزه شيريتوكو الوطني في اليابان.</div>\r\n<div dir="RTL" style="text-align: right;">ويتناول التقرير ثلاثة مواقع للتراث العالمي في المنطقة العربية، هي وادي قاديشا وغابة «أرز الرب» في لبنان، ووادي رم في الأردن، وقصور وادان وولاتة وتيشيت في موريتانيا، واصفاً مزاياها وعارضاً المخاطر التي تواجهها من تأثيرات تغير المناخ.</div>\r\n<div dir="RTL" style="text-align: right;"></div>\r\n<!--more-->\r\n<div dir="RTL" style="text-align: right;"><b>وادي قاديشا وغابة الأرز في لبنان</b></div>\r\n<div dir="RTL" style="text-align: right;">يعتبر وادي قاديشا في شمال لبنان نموذجاً لمواقع عاشت فيها مجتمعات منذ القدم ومارست طقوساً في نسيج بيئتها الطبيعية. أولئك الذين أقاموا هناك في الأديرة والمناسك الكثيرة، التي يعود بعضها إلى نحو ألفي سنة، أرادوا التقرب من الخالق في أحضان طبيعة نائية وعرة، من منحدرات شاهقة وشبكات كهوف طبيعية اتّخذوها ملاذات لهم.</div>\r\n<div dir="RTL" style="text-align: right;">لكن تغير المناخ والنشاط السياحي يزيدان الضغط على المعيشة التقليدية والنظم الإيكولوجية في وادي قاديشا. وتنحصر غابة الأرز الشهيرة عالمياً ضمن بقعة صغيرة لا تتعدى مساحتها هكتارين وتعرف بغابة أرز الرب. وهي تضم أقدم وأكبر أشجار الأرز المعروفة، فمن نحو 375 شجرة متبقية، يفوق عمر اثنتين 3000 سنة، فيما يزيد عمر عشر أشجار على 1000 سنة، ومنها أربع يزيد عمرها على 1500 سنة. والغابة قريبة من بلدة بشري، التي تعتبر من مراكز التزلج الرئيسية في لبنان، على منحدر جبلي تعرّت أرضه بفعل الرعي الجائر لقطعان الماعز.</div>\r\n<div dir="RTL" style="text-align: right;">السياحة عنصر هام في الاقتصاد اللبناني. وعلى رغم أن الاضطراب السياسي أدى إلى انخفاض كبير في عدد السياح منذ الذروة التي سجلها عام 2009، فقد ساهمت السياحة في 25 في المئة من الناتج المحلي الإجمالي للبلاد عام 2012. وفي العام 2000، زار الغابة أكثر من 200 ألف سائح أي 20 في المئة من زوار لبنان ذلك العام.</div>\r\n<div dir="RTL" style="text-align: right;">لأرز لبنان (<span dir="LTR">Cedrus libani</span>) قيمة روحية منذ القدم، وقد ورد ذكره 103 مرات في العهدين القديم والجديد، بما في ذلك المزمور 104:16 الذي جاء فيه أن «الرب زرعه، وهو الذي يرويه». والأهمية الروحية لأرز وادي قاديشا تمتد أبعد كثيراً من المجتمعات المحلية. فقد استخدم خشبه في بناء المعابد في أنحاء المشرق، بما في ذلك هيكل سليمان في القدس الذي بني في القرن العاشر قبل الميلاد.</div>\r\n<div dir="RTL" style="text-align: right;">وخشب الأرز مرادف أيضاً لطموحات الفينيقيين القدماء الكبيرة في بناء السفن وركوب البحار. وهو مطلوب منذ نحو 5000 سنة في منطقة البحر المتوسط لمتانته وديمومته. وقد أقبل الأقدمون على استخدامه كمادة بناء، مما جعل غاباته الكبيرة في لبنان تتلاشى بحلول القرن السادس، وفق مصادر تاريخية تعود إلى زمن الإمبراطور البيزنطي جوستنيان الأول (482 ـ 565م). واستمرت غاباته في التقلص على مرّ القرون، ولم يبق حالياً  إلا 5 في المئة من مساحتها الأصلية.</div>\r\n<div dir="RTL" style="text-align: right;">ومن المتوقع أن يستمر انخفاض أعداد أشجار الأرز نتيجة تغير المناخ. والتوقعات مبنية على التحليل الجيني ودراسة حبوب اللقاح التي تلقي الضوء على حقبات سابقة من التغير المناخي الكبير، مثل فترة الانتقال من العصر «بين الجليدي» الأخير إلى العصر الجليدي الأخير قبل نحو 15 ألف عام، ومن العصر الجليدي الأخير إلى عصر الهولوسين المبكر قبل نحو 12 ألف عام.</div>\r\n<div dir="RTL" style="text-align: right;">يتوقع الباحثون أن يؤدي تغير المناخ إلى حصر تجمعات الأرز اللبناني في ثلاثة ملاذات فقط بحلول سنة 2100، نتيجة ارتفاع درجات الحرارة والإجهاد المائي الناجم عن انخفاض الرطوبة في منطقة البحر المتوسط. وفي حين تستطيع التجمعات النباتية الأخرى التكيف مع تغير المناخ بالزحف إلى ارتفاعات أعلى، فإن غالبية غابات الأرز في لبنان معزولة أصلاً على قمم الجبال أو قربها، فلا مكان أعلى للانتقال إليه. لكن غابة «أرز الرب» في وادي قاديشا استثناء لهذه القاعدة، وهي إحدى ثلاث غابات أرز يتوافر لها موئل أعلى لانتقال محتمل، مما يجعل حمايتها أكثر إلحاحاً.</div>\r\n<div dir="RTL" style="text-align: right;">يتوقع أن تتغير المنطقة المناخية الحيوية لغابة أرز الرب، ما يؤثر في توزعها وتركيبة أنواعها. وقد ازدادت هجمات الحشرات، يؤججها ازدياد الجفاف والقحل، فباتت تؤثر بالفعل على غابتي الأرز في تنورين والشوف، وتهدد بالانتشار إلى أرز الرب.</div>\r\n<div dir="RTL" style="text-align: right;">هناك حالياً في لبنان أكثر من 12 غابة أرز تقع على ارتفاعات تتراوح بين 1100 متر و1925 متراً على السفوح الغربية لسلسلة جبال لبنان، ويحتل معظمها مساحة تقل عن 100 هكتار. وهي مناطق ذات تنوع بيولوجي كبير تؤوي أنواعاً نباتية مستوطنة ومهددة بالزوال. وأرز لبنان مدرج كنوع سريع التأثر على القائمة الحمراء للاتحاد الدولي لحماية الطبيعة (<span dir="LTR">IUCN</span>).</div>\r\n<div dir="RTL" style="text-align: right;"></div>\r\n<div dir="RTL" style="text-align: right;"><b>وادي رم تحفة الأردن الصحراوية</b></div>\r\n<div dir="RTL" style="text-align: right;">وادي رم موقع صحراوي مميز في جنوب الأردن، يزخر بالممرات الضيقة والأجراف العالية والكهوف والقناطر الطبيعية والمشاهد الخلابة. وقد أُدرج على قائمة اليونسكو كموقع للتراث العالمي لقيمته الطبيعية والثقافية.</div>\r\n<div dir="RTL" style="text-align: right;">تبلغ مساحة وادي رم نحو 300 كيلومتر مربع، ويحوي أكثر من 45 ألف منحوتة ونقش صخري يعود تاريخها إلى 12 ألف سنة خلت، ما يساعد في الإضاءة على نشوء المجتمعات الرعوية وتطور الأبجدية. وهو ملاذ هام للأحياء البرية الصحراوية، بما فيها الصقر الأسخم والوعل العربي والمها العربي الذي أعيد توطينه. وكثير من نباتاته مصادر هامة للغذاء وعلف الماشية والأدوية للبدو المحليين. لكن السياحة غير المنظمة، بما في ذلك قيادة المركبات خارج الطرق، ومواقع التخييم غير الشرعية، والتجول من دون أدلاء، والكتابة على الصخور، وتأثر الثقافة المحلية بأكثر من 300 ألف سائح يزورون هذه المنطقة النائية سنوياً، تلقي جميعاً بثقلها على وادي رم.</div>\r\n<div dir="RTL" style="text-align: right;">ومن المتوقع أن يزيد تغير المناخ في هذه المشاكل. فارتفاع الحرارة وازدياد الجفاف سيؤديان إلى تفاقم الاجهاد المائي، وسوف يشكلان خطراً بشكل خاص على الأنواع الحية المحصورة في الأماكن الجبلية العالية في وادي رم. وهناك حاجة ملحة إلى بحوث مفصلة حول سيناريوهات تغير المناخ في الوادي.</div>\r\n<div dir="RTL" style="text-align: right;"></div>\r\n<div dir="RTL" style="text-align: right;"><b>المدن القديمة في موريتانيا</b></div>\r\n<div dir="RTL" style="text-align: right;">«قصور» وادان وشنقيط وتيشيت وولاته مدن قديمة في موريتانيا كانت مراكز تجارية وثقافية هامة على طرق القوافل عبر الصحراء الأفريقية الكبرى في العصور الوسطى. وهي ضمن مواقع التراث العالمي لدى  منظمة اليونسكو.</div>\r\n<div dir="RTL" style="text-align: right;">اشتهرت شنقيط بمسجدها ذي المئذنة المربعة التي بنيت بحجارة من دون ملاط. وتعتبر سابع المدن المقدسة في الإسلام. وهي، مثل القصور الأخرى، مقصد تاريخي للزوار الذين يجلبون دخلاً حيوياً للسكان المحليين.</div>\r\n<div dir="RTL" style="text-align: right;">السياحة في موريتانيا متخلفة جداً، وزاد في مشاكلها خلال السنوات الأخيرة القلق على أمن المسافرين. وقصور موريتانيا، التي كانت في الماضي مراكز للثقافة البدوية والإسلامية في شمال أفريقيا، يتهددها حالياً زحف الصحراء.</div>\r\n<div dir="RTL" style="text-align: right;">شوارع وساحات شنقيط، التي عرفت بمكتبتها القديمة الغنية بالكتب والمخطوطات الإسلامية، تختنق بالرمال إذ تزحف الكثبان داخل المدينة. وقد يتلف الرمل والحر الشديد الأبنية القديمة، وتهدد العواصف المطرية الهوجاء العمارة الطينية وتزيد تآكل التربة.</div>\r\n<div dir="RTL" style="text-align: right;">ويفاقم التصحر في منطقة «الساحل» المشكلة، ومن أسبابه الرعي الجائر وإزالة الغابات والتوسع الحضري، إضافة إلى موجات الجفاف الحاد الطويلة الأمد والهطول الغزير حين تمطر، ما يزيد الضغوط الحالية والنزاعات على الموارد الطبيعية.</div>', 'ثلاثة مواقع عربية للتراث العالمي مهددة مناخياً', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-10-31 07:12:33', '2016-10-31 07:12:33', '', 4, 'http://klivin-pc/houmty/ar/2016/10/31/4-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2016-10-31 07:20:03', '2016-10-31 07:20:03', '', 'choosen', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2016-10-31 07:20:25', '2016-10-31 07:20:25', '', 0, 'http://klivin-pc/houmty/ar/?post_type=tie_slider&#038;p=39', 0, 'tie_slider', '', 0),
(40, 1, '2016-10-31 18:50:20', '0000-00-00 00:00:00', '', 'مسودة تلقائية', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-31 18:50:20', '0000-00-00 00:00:00', '', 0, 'http://klivin-pc/houmty/ar/?p=40', 0, 'post', '', 0),
(41, 1, '2016-10-31 18:56:57', '2016-10-31 18:56:57', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2016-11-02 18:33:29', '2016-11-02 18:33:29', '', 0, 'http://klivin-pc/houmty/ar/?p=41', 1, 'nav_menu_item', '', 0),
(45, 1, '2016-10-31 19:44:29', '0000-00-00 00:00:00', '', 'مسودة تلقائية', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-31 19:44:29', '0000-00-00 00:00:00', '', 0, 'http://klivin-pc/houmty/ar/?p=45', 0, 'post', '', 0),
(46, 1, '2016-11-02 18:25:05', '0000-00-00 00:00:00', '', 'مسودة تلقائية', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-11-02 18:25:05', '0000-00-00 00:00:00', '', 0, 'http://klivin-pc/houmty/ar/?p=46', 0, 'post', '', 0),
(47, 1, '2016-11-02 18:32:02', '2016-11-02 18:32:02', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2016-11-02 18:33:29', '2016-11-02 18:33:29', '', 12, 'http://klivin-pc/houmty/ar/?p=47', 2, 'nav_menu_item', '', 0),
(48, 1, '2016-11-02 18:32:03', '2016-11-02 18:32:03', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2016-11-02 18:33:29', '2016-11-02 18:33:29', '', 12, 'http://klivin-pc/houmty/ar/?p=48', 4, 'nav_menu_item', '', 0),
(49, 1, '2016-11-02 18:32:02', '2016-11-02 18:32:02', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2016-11-02 18:33:29', '2016-11-02 18:33:29', '', 12, 'http://klivin-pc/houmty/ar/?p=49', 3, 'nav_menu_item', '', 0),
(50, 1, '2016-11-02 18:32:39', '2016-11-02 18:32:39', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2016-11-02 18:33:29', '2016-11-02 18:33:29', '', 0, 'http://klivin-pc/houmty/ar/?p=50', 5, 'nav_menu_item', '', 0),
(51, 1, '2016-11-02 18:32:39', '2016-11-02 18:32:39', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2016-11-02 18:33:29', '2016-11-02 18:33:29', '', 0, 'http://klivin-pc/houmty/ar/?p=51', 6, 'nav_menu_item', '', 0),
(52, 1, '2016-11-02 18:32:40', '2016-11-02 18:32:40', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2016-11-02 18:33:30', '2016-11-02 18:33:30', '', 0, 'http://klivin-pc/houmty/ar/?p=52', 7, 'nav_menu_item', '', 0),
(53, 1, '2016-11-02 18:32:40', '2016-11-02 18:32:40', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2016-11-02 18:33:30', '2016-11-02 18:33:30', '', 0, 'http://klivin-pc/houmty/ar/?p=53', 8, 'nav_menu_item', '', 0),
(55, 1, '2016-11-02 18:32:40', '2016-11-02 18:32:40', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2016-11-02 18:33:30', '2016-11-02 18:33:30', '', 0, 'http://klivin-pc/houmty/ar/?p=55', 9, 'nav_menu_item', '', 0),
(56, 1, '2016-11-02 18:32:41', '2016-11-02 18:32:41', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2016-11-02 18:33:30', '2016-11-02 18:33:30', '', 0, 'http://klivin-pc/houmty/ar/?p=56', 10, 'nav_menu_item', '', 0),
(57, 1, '2016-11-02 18:32:41', '2016-11-02 18:32:41', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2016-11-02 18:33:30', '2016-11-02 18:33:30', '', 0, 'http://klivin-pc/houmty/ar/?p=57', 11, 'nav_menu_item', '', 0),
(58, 1, '2016-11-02 18:32:42', '2016-11-02 18:32:42', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2016-11-02 18:33:30', '2016-11-02 18:33:30', '', 0, 'http://klivin-pc/houmty/ar/?p=58', 13, 'nav_menu_item', '', 0),
(60, 1, '2016-11-02 18:32:42', '2016-11-02 18:32:42', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2016-11-02 18:33:30', '2016-11-02 18:33:30', '', 0, 'http://klivin-pc/houmty/ar/?p=60', 12, 'nav_menu_item', '', 0),
(62, 1, '2016-11-02 18:39:32', '2016-11-02 18:39:32', '', 'slidercampve', '', 'inherit', 'open', 'closed', '', 'slidercampve', '', '', '2016-11-02 18:39:32', '2016-11-02 18:39:32', '', 0, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/11/SlidercampVE.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2016-11-02 18:39:53', '2016-11-02 18:39:53', '', 'cop22-marrakech-2016-e1470241519445', '', 'inherit', 'open', 'closed', '', 'cop22-marrakech-2016-e1470241519445', '', '', '2016-11-02 18:39:53', '2016-11-02 18:39:53', '', 0, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/11/COP22-marrakech-2016-e1470241519445.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2016-11-02 18:39:53', '2016-11-02 18:39:53', '', 'image-pour-houmty-logo', '', 'inherit', 'open', 'closed', '', 'image-pour-houmty-logo', '', '', '2016-11-02 18:39:53', '2016-11-02 18:39:53', '', 0, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/11/image-pour-houmty-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2016-11-02 18:39:55', '2016-11-02 18:39:55', '', 'slidercampve', '', 'inherit', 'open', 'closed', '', 'slidercampve-2', '', '', '2016-11-02 18:39:55', '2016-11-02 18:39:55', '', 0, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/11/SlidercampVE-1.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2016-11-02 18:39:56', '2016-11-02 18:39:56', '', 'telechargement', '', 'inherit', 'open', 'closed', '', 'telechargement', '', '', '2016-11-02 18:39:56', '2016-11-02 18:39:56', '', 0, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/11/téléchargement.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2016-11-02 18:53:06', '2016-11-02 18:53:06', '', 'header', '', 'inherit', 'open', 'closed', '', 'header', '', '', '2016-11-02 18:53:06', '2016-11-02 18:53:06', '', 0, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/11/header.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2016-11-02 19:01:28', '2016-11-02 19:01:28', '', 'final-header', '', 'inherit', 'open', 'closed', '', 'final-header', '', '', '2016-11-02 19:01:28', '2016-11-02 19:01:28', '', 0, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/11/final-header.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2016-11-02 19:03:35', '2016-11-02 19:03:35', 'مجلة إلكترونية تهتم بأخبار وشؤون البيئة والتنمية وتضم أخباراً يومية ومقالات مختارة من وسائل الإعلام، ودراسات وقضايا تتعلق بالتغيرات المناخية والتقنيات الخضراء (الصديقة للبيئة) والطاقات المتجددة، وترصد نشاطات الجمعيات الأهلية والمؤسسات الحكومية العاملة على حماية البيئة، كما تسعى لتقديم مواد تعليمية تفاعلية لرفع الوعي لدى الجمهور بأهمية البيئة كوسط يجب المحافظة عليه وحمايته من الكوارث.', 'من نحن', '', 'publish', 'closed', 'closed', '', '%d9%85%d9%86-%d9%86%d8%ad%d9%86', '', '', '2016-11-02 19:03:35', '2016-11-02 19:03:35', '', 0, 'http://klivin-pc/houmty/ar/?page_id=69', 0, 'page', '', 0),
(70, 1, '2016-11-02 19:03:35', '2016-11-02 19:03:35', 'مجلة إلكترونية تهتم بأخبار وشؤون البيئة والتنمية وتضم أخباراً يومية ومقالات مختارة من وسائل الإعلام، ودراسات وقضايا تتعلق بالتغيرات المناخية والتقنيات الخضراء (الصديقة للبيئة) والطاقات المتجددة، وترصد نشاطات الجمعيات الأهلية والمؤسسات الحكومية العاملة على حماية البيئة، كما تسعى لتقديم مواد تعليمية تفاعلية لرفع الوعي لدى الجمهور بأهمية البيئة كوسط يجب المحافظة عليه وحمايته من الكوارث.', 'من نحن', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-11-02 19:03:35', '2016-11-02 19:03:35', '', 69, 'http://klivin-pc/houmty/ar/2016/11/02/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2016-11-02 19:16:32', '2016-11-02 19:16:32', '', 'logo1', '', 'inherit', 'open', 'closed', '', 'logo1', '', '', '2016-11-02 19:16:32', '2016-11-02 19:16:32', '', 0, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/11/logo1.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2016-11-02 19:24:05', '2016-11-02 19:24:05', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2016-11-02 19:24:05', '2016-11-02 19:24:05', '', 0, 'http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/11/logo.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_termmeta`
--

CREATE TABLE `wp_2_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_terms`
--

CREATE TABLE `wp_2_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_2_terms`
--

INSERT INTO `wp_2_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(7, 'الماء', '%d8%a7%d9%84%d9%85%d8%a7%d8%a1', 0),
(8, 'تحلية البحر', '%d8%aa%d8%ad%d9%84%d9%8a%d8%a9-%d8%a7%d9%84%d8%a8%d8%ad%d8%b1', 0),
(9, 'categories', 'categories', 0),
(10, 'pages', 'pages', 0),
(11, 'صوت و صورة', '%d8%b5%d9%88%d8%aa-%d9%88-%d8%b5%d9%88%d8%b1%d8%a9', 0),
(12, 'الأخبار', '%d8%a7%d9%84%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1', 0),
(13, 'محلية', '%d9%85%d8%ad%d9%84%d9%8a%d8%a9', 0),
(15, 'وطنية', '%d9%88%d8%b7%d9%86%d9%8a%d8%a9-%d8%a7%d9%84%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1', 0),
(16, 'دولية', '%d8%af%d9%88%d9%84%d9%8a%d8%a9', 0),
(17, 'تغير المناخ', '%d8%aa%d8%ba%d9%8a%d8%b1-%d8%a7%d9%84%d9%85%d9%86%d8%a7%d8%ae', 0),
(18, 'التلوث البيئي', '%d8%a7%d9%84%d8%aa%d9%84%d9%88%d8%ab-%d8%a7%d9%84%d8%a8%d9%8a%d8%a6%d9%8a', 0),
(19, 'الصحة و التغذية', '%d8%a7%d9%84%d8%b5%d8%ad%d8%a9-%d9%88-%d8%a7%d9%84%d8%aa%d8%ba%d8%b0%d9%8a%d8%a9', 0),
(20, 'الأحياء', '%d8%a7%d9%84%d8%a3%d8%ad%d9%8a%d8%a7%d8%a1', 0),
(21, 'تقنيات خضراء', '%d8%aa%d9%82%d9%86%d9%8a%d8%a7%d8%aa-%d8%ae%d8%b6%d8%b1%d8%a7%d8%a1', 0),
(22, 'الطاقة', '%d8%a7%d9%84%d8%b7%d8%a7%d9%82%d8%a9', 0),
(23, 'المياه', '%d8%a7%d9%84%d9%85%d9%8a%d8%a7%d9%87', 0),
(24, 'كوارث', '%d9%83%d9%88%d8%a7%d8%b1%d8%ab', 0),
(25, 'في العمق', '%d9%81%d9%8a-%d8%a7%d9%84%d8%b9%d9%85%d9%82', 0),
(26, 'نشاطات', '%d9%86%d8%b4%d8%a7%d8%b7%d8%a7%d8%aa', 0),
(27, 'المفكرة', '%d8%a7%d9%84%d9%85%d9%81%d9%83%d8%b1%d8%a9', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_term_relationships`
--

CREATE TABLE `wp_2_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_2_term_relationships`
--

INSERT INTO `wp_2_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 1, 0),
(6, 1, 0),
(8, 1, 0),
(8, 7, 0),
(8, 8, 0),
(10, 1, 0),
(24, 10, 0),
(25, 10, 0),
(27, 11, 0),
(41, 9, 0),
(47, 9, 0),
(48, 9, 0),
(49, 9, 0),
(50, 9, 0),
(51, 9, 0),
(52, 9, 0),
(53, 9, 0),
(55, 9, 0),
(56, 9, 0),
(57, 9, 0),
(58, 9, 0),
(60, 9, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_2_term_taxonomy`
--

CREATE TABLE `wp_2_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_2_term_taxonomy`
--

INSERT INTO `wp_2_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'nav_menu', '', 0, 13),
(10, 10, 'nav_menu', '', 0, 2),
(11, 11, 'category', '', 0, 1),
(12, 12, 'category', '', 0, 0),
(13, 13, 'category', '', 12, 0),
(15, 15, 'category', '', 12, 0),
(16, 16, 'category', '', 12, 0),
(17, 17, 'category', '', 0, 0),
(18, 18, 'category', '', 0, 0),
(19, 19, 'category', '', 0, 0),
(20, 20, 'category', '', 0, 0),
(21, 21, 'category', '', 0, 0),
(22, 22, 'category', '', 0, 0),
(23, 23, 'category', '', 0, 0),
(24, 24, 'category', '', 0, 0),
(25, 25, 'category', '', 0, 0),
(26, 26, 'category', '', 0, 0),
(27, 27, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_blogs`
--

CREATE TABLE `wp_blogs` (
  `blog_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT '1',
  `archived` tinyint(2) NOT NULL DEFAULT '0',
  `mature` tinyint(2) NOT NULL DEFAULT '0',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_blogs`
--

INSERT INTO `wp_blogs` (`blog_id`, `site_id`, `domain`, `path`, `registered`, `last_updated`, `public`, `archived`, `mature`, `spam`, `deleted`, `lang_id`) VALUES
(1, 1, 'klivin-pc', '/houmty/', '2016-10-30 13:07:11', '0000-00-00 00:00:00', 1, 0, 0, 0, 0, 0),
(2, 1, 'www.houmty.com', '/', '2016-10-30 13:11:24', '2016-11-03 09:22:43', 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_blog_versions`
--

CREATE TABLE `wp_blog_versions` (
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `db_version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-10-30 13:06:07', '2016-10-30 12:06:07', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_newsletter`
--

CREATE TABLE `wp_newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `surname` varchar(100) NOT NULL DEFAULT '',
  `sex` char(1) NOT NULL DEFAULT 'n',
  `status` char(1) NOT NULL DEFAULT 'S',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(50) NOT NULL DEFAULT '',
  `feed` tinyint(4) NOT NULL DEFAULT '0',
  `feed_time` bigint(20) NOT NULL DEFAULT '0',
  `country` varchar(4) NOT NULL DEFAULT '',
  `list_1` tinyint(4) NOT NULL DEFAULT '0',
  `list_2` tinyint(4) NOT NULL DEFAULT '0',
  `list_3` tinyint(4) NOT NULL DEFAULT '0',
  `list_4` tinyint(4) NOT NULL DEFAULT '0',
  `list_5` tinyint(4) NOT NULL DEFAULT '0',
  `list_6` tinyint(4) NOT NULL DEFAULT '0',
  `list_7` tinyint(4) NOT NULL DEFAULT '0',
  `list_8` tinyint(4) NOT NULL DEFAULT '0',
  `list_9` tinyint(4) NOT NULL DEFAULT '0',
  `list_10` tinyint(4) NOT NULL DEFAULT '0',
  `list_11` tinyint(4) NOT NULL DEFAULT '0',
  `list_12` tinyint(4) NOT NULL DEFAULT '0',
  `list_13` tinyint(4) NOT NULL DEFAULT '0',
  `list_14` tinyint(4) NOT NULL DEFAULT '0',
  `list_15` tinyint(4) NOT NULL DEFAULT '0',
  `list_16` tinyint(4) NOT NULL DEFAULT '0',
  `list_17` tinyint(4) NOT NULL DEFAULT '0',
  `list_18` tinyint(4) NOT NULL DEFAULT '0',
  `list_19` tinyint(4) NOT NULL DEFAULT '0',
  `list_20` tinyint(4) NOT NULL DEFAULT '0',
  `profile_1` varchar(255) NOT NULL DEFAULT '',
  `profile_2` varchar(255) NOT NULL DEFAULT '',
  `profile_3` varchar(255) NOT NULL DEFAULT '',
  `profile_4` varchar(255) NOT NULL DEFAULT '',
  `profile_5` varchar(255) NOT NULL DEFAULT '',
  `profile_6` varchar(255) NOT NULL DEFAULT '',
  `profile_7` varchar(255) NOT NULL DEFAULT '',
  `profile_8` varchar(255) NOT NULL DEFAULT '',
  `profile_9` varchar(255) NOT NULL DEFAULT '',
  `profile_10` varchar(255) NOT NULL DEFAULT '',
  `profile_11` varchar(255) NOT NULL DEFAULT '',
  `profile_12` varchar(255) NOT NULL DEFAULT '',
  `profile_13` varchar(255) NOT NULL DEFAULT '',
  `profile_14` varchar(255) NOT NULL DEFAULT '',
  `profile_15` varchar(255) NOT NULL DEFAULT '',
  `profile_16` varchar(255) NOT NULL DEFAULT '',
  `profile_17` varchar(255) NOT NULL DEFAULT '',
  `profile_18` varchar(255) NOT NULL DEFAULT '',
  `profile_19` varchar(255) NOT NULL DEFAULT '',
  `profile_20` varchar(255) NOT NULL DEFAULT '',
  `referrer` varchar(50) NOT NULL DEFAULT '',
  `http_referer` varchar(255) NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT '0',
  `flow` tinyint(4) NOT NULL DEFAULT '0',
  `unsub_email_id` int(11) NOT NULL DEFAULT '0',
  `unsub_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_newsletter_emails`
--

CREATE TABLE `wp_newsletter_emails` (
  `id` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `message_text` longtext COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','sending','sent','paused') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT '0',
  `last_id` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `send_on` int(11) NOT NULL DEFAULT '0',
  `track` tinyint(4) NOT NULL DEFAULT '0',
  `editor` tinyint(4) NOT NULL DEFAULT '0',
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` longtext COLLATE utf8mb4_unicode_ci,
  `preferences` longtext COLLATE utf8mb4_unicode_ci,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `token` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `open_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `click_count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_newsletter_sent`
--

CREATE TABLE `wp_newsletter_sent` (
  `email_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `open` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `error` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `wp_newsletter_stats`
--

CREATE TABLE `wp_newsletter_stats` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_id` int(11) NOT NULL DEFAULT '0',
  `link_id` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `anchor` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://klivin-pc/houmty', 'yes'),
(2, 'home', 'http://klivin-pc/houmty', 'yes'),
(3, 'blogname', 'houmty', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'msbenbakh@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/blog/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:106:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:52:"blog/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:47:"blog/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:28:"blog/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:40:"blog/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:22:"blog/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:49:"blog/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:44:"blog/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:25:"blog/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:37:"blog/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:19:"blog/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:50:"blog/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:45:"blog/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:26:"blog/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:38:"blog/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:20:"blog/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:39:"blog/slider/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"blog/slider/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"blog/slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"blog/slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"blog/slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"blog/slider/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"blog/slider/([^/]+)/embed/?$";s:43:"index.php?tie_slider=$matches[1]&embed=true";s:32:"blog/slider/([^/]+)/trackback/?$";s:37:"index.php?tie_slider=$matches[1]&tb=1";s:40:"blog/slider/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?tie_slider=$matches[1]&paged=$matches[2]";s:47:"blog/slider/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?tie_slider=$matches[1]&cpage=$matches[2]";s:36:"blog/slider/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?tie_slider=$matches[1]&page=$matches[2]";s:28:"blog/slider/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"blog/slider/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"blog/slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"blog/slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"blog/slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"blog/slider/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:16:".*wp-signup.php$";s:21:"index.php?signup=true";s:18:".*wp-activate.php$";s:23:"index.php?activate=true";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:52:"blog/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:47:"blog/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:28:"blog/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:40:"blog/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:22:"blog/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:74:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:69:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:50:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:62:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:44:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:61:"blog/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:56:"blog/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:37:"blog/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:49:"blog/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:31:"blog/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:48:"blog/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:43:"blog/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:24:"blog/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:36:"blog/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:18:"blog/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:63:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:73:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:93:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:88:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:88:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:69:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:58:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:62:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:82:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:77:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:70:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:77:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:66:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:52:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:62:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:82:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:77:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:77:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:58:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:69:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:56:"blog/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:43:"blog/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:21:"attachments/index.php";i:1;s:40:"custom-user-profile-photo/3five_cupp.php";i:2;s:21:"newsletter/plugin.php";i:3;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:4;s:51:"wordpress-popular-posts/wordpress-popular-posts.php";i:5;s:21:"wp-polls/wp-polls.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'jarida', 'yes'),
(41, 'stylesheet', 'jarida', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:3;a:4:{s:5:"title";s:11:"Catégories";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:12:"manage_polls";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'fr_FR', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:10:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:5:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";}s:26:"narrow-primary-widget-area";a:3:{i:0;s:17:"news-pic-widget-3";i:1;s:12:"categories-3";i:2;s:11:"tag_cloud-2";}s:28:"homepage-normal-widget-area1";a:0:{}s:28:"homepage-normal-widget-area2";a:0:{}s:28:"homepage-narrow-widget-area1";a:0:{}s:28:"homepage-narrow-widget-area2";a:0:{}s:24:"first-footer-widget-area";a:0:{}s:25:"second-footer-widget-area";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:2:{i:2;a:2:{s:5:"title";s:10:"Mots Clés";s:8:"taxonomy";s:8:"post_tag";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:8:{i:1478165001;a:1:{s:10:"newsletter";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"newsletter";s:4:"args";a:0:{}s:8:"interval";i:300;}}}i:1478165058;a:1:{s:10:"newsletter";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"newsletter";s:4:"args";a:0:{}s:8:"interval";i:300;}}}i:1478174769;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1478174816;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1478174902;a:1:{s:21:"update_network_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1478198631;a:1:{s:10:"polls_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1478242326;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(108, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.6.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.6.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1477829175;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(110, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1477829183;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.2.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'no'),
(111, '_site_transient_timeout_theme_roots', '1477830977', 'no'),
(112, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(113, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1477829186;s:7:"checked";a:3:{s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(114, '_site_transient_timeout_browser_e98787bd8e728c47faf5d26e5d6c4cb5', '1478433979', 'no'),
(115, '_site_transient_browser_e98787bd8e728c47faf5d26e5d6c4cb5', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"53.0.2785.143";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(116, 'can_compress_scripts', '1', 'no'),
(135, 'new_admin_email', 'msbenbakh@gmail.com', 'yes'),
(139, '_transient_twentysixteen_categories', '1', 'yes'),
(143, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1477896138;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(144, 'current_theme', 'Jarida (shared on themelot.net)', 'yes'),
(145, 'theme_mods_jarida', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:8:"top-menu";i:5;s:7:"primary";i:6;}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(147, 'tie_cat_1', 'a:5:{s:11:"cat_sidebar";b:0;s:10:"cat_slider";b:0;s:9:"cat_color";b:0;s:14:"cat_background";b:0;s:19:"cat_background_full";b:0;}', 'yes'),
(148, 'tie_options', 'a:65:{s:12:"theme_layout";s:5:"boxed";s:11:"columns_num";s:2:"3c";s:11:"time_format";s:6:"modern";s:11:"breadcrumbs";s:4:"true";s:21:"breadcrumbs_delimiter";s:8:"&amp;gt;";s:12:"logo_setting";s:5:"title";s:8:"top_left";s:9:"head_menu";s:9:"stick_nav";s:4:"true";s:14:"breaking_title";s:21:"آخر الأخبار";s:15:"breaking_effect";s:4:"fade";s:14:"breaking_speed";s:4:"1312";s:13:"breaking_time";s:4:"2281";s:7:"on_home";s:6:"latest";s:13:"box_meta_date";s:4:"true";s:17:"box_meta_comments";s:4:"true";s:14:"box_meta_views";s:4:"true";s:6:"social";a:3:{s:8:"facebook";s:19:"http://facebook.com";s:7:"twitter";s:18:"http://twitter.com";s:11:"google_plus";s:16:"http://google.fr";}s:6:"slider";s:4:"true";s:11:"slider_type";s:5:"flexi";s:14:"slider_caption";s:4:"true";s:21:"slider_caption_length";s:3:"100";s:21:"elastic_slider_effect";s:6:"center";s:19:"flexi_slider_effect";s:4:"fade";s:13:"slider_number";s:2:"10";s:12:"slider_query";s:8:"category";s:8:"post_nav";s:4:"true";s:13:"post_og_cards";s:4:"true";s:17:"reading_indicator";s:4:"true";s:11:"post_author";s:4:"true";s:9:"post_cats";s:4:"true";s:10:"post_views";s:4:"true";s:10:"share_post";s:4:"true";s:11:"share_tweet";s:4:"true";s:14:"share_facebook";s:4:"true";s:12:"share_google";s:4:"true";s:15:"share_pinterest";s:4:"true";s:7:"related";s:4:"true";s:13:"related_title";s:22:"من نفس القسم";s:14:"related_number";s:1:"3";s:13:"related_query";s:8:"category";s:10:"check_also";s:4:"true";s:19:"check_also_position";s:5:"right";s:17:"check_also_number";s:1:"1";s:16:"check_also_query";s:3:"tag";s:18:"comment_validation";s:4:"true";s:10:"footer_top";s:4:"true";s:14:"footer_widgets";s:9:"footer-2c";s:9:"banner_bg";s:4:"true";s:13:"banner_bg_url";s:9:"google.fr";s:14:"banner_top_img";s:112:"http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/1454669_10202609752228672_1658157913_n-300x188.jpg";s:14:"banner_top_url";s:9:"google.fr";s:14:"banner_top_tab";s:4:"true";s:17:"banner_bottom_img";s:112:"http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/1454669_10202609752228672_1658157913_n-300x188.jpg";s:11:"sidebar_pos";s:6:"nright";s:13:"arc_meta_date";s:4:"true";s:17:"arc_meta_comments";s:4:"true";s:14:"arc_meta_views";s:4:"true";s:18:"disable_responsive";s:4:"true";s:25:"disable_gallery_shortcode";s:4:"true";s:15:"background_type";s:6:"custom";s:10:"background";a:1:{s:3:"img";s:78:"http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/cover-houmty.jpg";}s:12:"global_color";s:7:"#1a9929";s:17:"topbar_background";s:7:"#294885";s:17:"header_background";a:1:{s:3:"img";s:78:"http://klivin-pc/houmty/ar/wp-content/uploads/sites/2/2016/10/cover-houmty.jpg";}s:21:"nav_links_color_hover";s:7:"#1a9929";}', 'yes'),
(149, 'tie_active', '2', 'yes'),
(150, 'widget_author_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(151, 'widget_author_post_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(152, 'widget_author-custom-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'widget_facebook-widget', 'a:2:{i:2;a:2:{s:5:"title";s:27:"Retrouvez-nous sur Facebook";s:8:"page_url";s:38:"https://www.facebook.com/arabhardware/";}s:12:"_multiwidget";i:1;}', 'yes'),
(154, 'widget_google-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(155, 'widget_youtube-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(156, 'widget_widget_tabs', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(157, 'widget_latest-tweets-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(158, 'widget_flickr_photos-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(159, 'widget_ads125-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(160, 'widget_ads120_90-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(161, 'widget_ads120_60-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(162, 'widget_ads120_600-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(163, 'widget_ads120_240-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(164, 'widget_ads160_600-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(165, 'widget_ads300_600-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(166, 'widget_ads250_250-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(167, 'widget_ads300_100-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(168, 'widget_ads300_250-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(169, 'widget_video-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(170, 'widget_posts-list-widget', 'a:2:{i:2;a:4:{s:16:"posts_list_title";s:17:"Articles récents";s:11:"no_of_posts";s:1:"5";s:11:"posts_order";s:6:"latest";s:5:"thumb";s:4:"true";}s:12:"_multiwidget";i:1;}', 'yes'),
(171, 'widget_categort-posts-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(172, 'widget_authors-posts-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(173, 'widget_news-pic-widget', 'a:3:{i:2;a:4:{s:14:"news_pic_title";s:6:"Videos";s:11:"no_of_posts";s:2:"20";s:7:"cats_id";s:1:"1";s:11:"posts_order";s:6:"latest";}i:3;a:4:{s:14:"news_pic_title";s:14:"Actu en images";s:11:"no_of_posts";s:2:"20";s:7:"cats_id";s:1:"2";s:11:"posts_order";s:6:"latest";}s:12:"_multiwidget";i:1;}', 'yes'),
(174, 'widget_comments_avatar-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(175, 'widget_text-html-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(176, 'widget_social', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(177, 'widget_search-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(178, 'widget_author-bio-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(179, 'widget_counter-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(180, 'widget_login-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(181, 'widget_widget-feedburner', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(182, 'widget_review-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(183, 'widget_tie-slider-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(184, 'widget_tie-soundcloud-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(185, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"400";s:6:"height";s:3:"400";s:4:"crop";i:1;}', 'yes'),
(186, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(187, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:4:"crop";i:1;}', 'yes'),
(188, 'recently_activated', 'a:0:{}', 'yes'),
(189, 'newsletter_logger_secret', '9722656e', 'yes'),
(190, 'newsletter_dismissed', 'a:1:{s:6:"wpmail";i:1;}', 'yes'),
(191, 'newsletter_main', 'a:8:{s:11:"return_path";s:0:"";s:8:"reply_to";s:0:"";s:12:"sender_email";s:20:"newsletter@klivin-pc";s:11:"sender_name";s:6:"houmty";s:6:"editor";i:0;s:13:"scheduler_max";i:100;s:9:"phpmailer";i:0;s:7:"api_key";s:10:"dee74e76b5";}', 'yes'),
(192, 'newsletter_extension_versions', 'a:0:{}', 'no'),
(193, 'newsletter_main_smtp', 'a:7:{s:7:"enabled";i:0;s:4:"host";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:4:"port";i:25;s:6:"secure";s:0:"";s:12:"ssl_insecure";i:0;}', 'yes'),
(194, 'newsletter_main_version', '1.2.9', 'yes'),
(195, 'newsletter', 'a:19:{s:14:"noconfirmation";i:0;s:12:"profile_text";s:301:"<p>Change your subscription preferences to get what you are most interested in.</p>\n    <p>If you change your email address, a confirmation email will be sent to activate it.</p>\n    </p>\n    {profile_form}\n    <p>To cancel your subscription, <a href=''{unsubscription_confirm_url}''>click here</a>.</p>";s:21:"profile_email_changed";s:123:"Your email has been changed, an activation email has been sent. Please follow the instructions to activate the new address.";s:13:"profile_error";s:147:"Your email is not valid or already in use by another subscriber or another generic error has been found. Check your data or contact the site owner.";s:10:"error_text";s:173:"<p>This subscription can''t be completed, sorry. The email address is blocked or already subscribed. You should contact the owner to unlock that email address. Thank you.</p>";s:17:"subscription_text";s:19:"{subscription_form}";s:17:"confirmation_text";s:267:"<p>You have successfully subscribed to the newsletter. You''ll\nreceive a confirmation email in few minutes. Please follow the\nlink in it to confirm your subscription. If the email takes\nmore than 15 minutes to appear in your mailbox, please check\nyour spam folder.</p>";s:20:"confirmation_subject";s:53:"Please confirm subscription - {blog_title} newsletter";s:21:"confirmation_tracking";s:0:"";s:20:"confirmation_message";s:424:"<p>Hi {name},</p>\n<p>A newsletter subscription request for this email address was\nreceived. Please confirm it by <a href="{subscription_confirm_url}"><strong>clicking here</strong></a>. If you cannot\nclick the link, please use the following link:</p>\n\n<p>{subscription_confirm_url}</p>\n\n<p>If you did not make this subscription request, just ignore this\nmessage.</p>\n<p>Thank you!<br>\n<a href=''{blog_url}''>{blog_url}</a></p>";s:14:"confirmed_text";s:62:"<p>Your subscription has been confirmed! Thank you {name}!</p>";s:17:"confirmed_subject";s:22:"Welcome aboard, {name}";s:17:"confirmed_message";s:277:"<p>This message confirms your subscription to the {blog_title} newsletter.</p>\n<p>Thank you!<br>\n<a href=''{blog_url}''>{blog_url}</a></p>\n<p>To unsubscribe, <a href=''{unsubscription_url}''>click here</a>.  To change subscriber options,\n<a href=''{profile_url}''>click here</a>.</p>";s:18:"confirmed_tracking";s:0:"";s:19:"unsubscription_text";s:111:"<p>Please confirm that you want to unsubscribe by <a href=''{unsubscription_confirm_url}''>clicking here</a>.</p>";s:25:"unsubscription_error_text";s:118:"<p>The subscriber was not found, it probably has already been removed. No further actions are required. Thank you.</p>";s:17:"unsubscribed_text";s:53:"<p>Your subscription has been deleted. Thank you.</p>";s:20:"unsubscribed_subject";s:8:"Goodbye!";s:20:"unsubscribed_message";s:195:"<p>This message confirms that you have unsubscribed from the {blog_title} newsletter.</p>\n<p>You''re welcome to sign up again anytime.</p>\n<p>Thank you!<br>\n<a href=''{blog_url}''>{blog_url}</a></p>";}', 'yes'),
(196, 'newsletter_profile', 'a:202:{s:5:"email";s:5:"Email";s:11:"email_error";s:24:"The email is not correct";s:4:"name";s:4:"Name";s:10:"name_error";s:23:"The name is not correct";s:11:"name_status";i:0;s:10:"name_rules";i:0;s:7:"surname";s:9:"Last name";s:13:"surname_error";s:28:"The last name is not correct";s:14:"surname_status";i:0;s:3:"sex";s:3:"I''m";s:7:"privacy";s:51:"Subscribing I accept the privacy rules of this site";s:13:"privacy_error";s:37:"You must accept the privacy statement";s:14:"privacy_status";i:0;s:11:"privacy_url";s:0:"";s:9:"subscribe";s:9:"Subscribe";s:4:"save";s:4:"Save";s:12:"title_female";s:4:"Mrs.";s:10:"title_male";s:3:"Mr.";s:10:"title_none";s:4:"Dear";s:8:"sex_male";s:3:"Man";s:10:"sex_female";s:5:"Woman";s:8:"sex_none";s:4:"None";s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;s:16:"profile_1_status";i:0;s:9:"profile_1";s:0:"";s:14:"profile_1_type";s:4:"text";s:21:"profile_1_placeholder";s:0:"";s:15:"profile_1_rules";i:0;s:17:"profile_1_options";s:0:"";s:16:"profile_2_status";i:0;s:9:"profile_2";s:0:"";s:14:"profile_2_type";s:4:"text";s:21:"profile_2_placeholder";s:0:"";s:15:"profile_2_rules";i:0;s:17:"profile_2_options";s:0:"";s:16:"profile_3_status";i:0;s:9:"profile_3";s:0:"";s:14:"profile_3_type";s:4:"text";s:21:"profile_3_placeholder";s:0:"";s:15:"profile_3_rules";i:0;s:17:"profile_3_options";s:0:"";s:16:"profile_4_status";i:0;s:9:"profile_4";s:0:"";s:14:"profile_4_type";s:4:"text";s:21:"profile_4_placeholder";s:0:"";s:15:"profile_4_rules";i:0;s:17:"profile_4_options";s:0:"";s:16:"profile_5_status";i:0;s:9:"profile_5";s:0:"";s:14:"profile_5_type";s:4:"text";s:21:"profile_5_placeholder";s:0:"";s:15:"profile_5_rules";i:0;s:17:"profile_5_options";s:0:"";s:16:"profile_6_status";i:0;s:9:"profile_6";s:0:"";s:14:"profile_6_type";s:4:"text";s:21:"profile_6_placeholder";s:0:"";s:15:"profile_6_rules";i:0;s:17:"profile_6_options";s:0:"";s:16:"profile_7_status";i:0;s:9:"profile_7";s:0:"";s:14:"profile_7_type";s:4:"text";s:21:"profile_7_placeholder";s:0:"";s:15:"profile_7_rules";i:0;s:17:"profile_7_options";s:0:"";s:16:"profile_8_status";i:0;s:9:"profile_8";s:0:"";s:14:"profile_8_type";s:4:"text";s:21:"profile_8_placeholder";s:0:"";s:15:"profile_8_rules";i:0;s:17:"profile_8_options";s:0:"";s:16:"profile_9_status";i:0;s:9:"profile_9";s:0:"";s:14:"profile_9_type";s:4:"text";s:21:"profile_9_placeholder";s:0:"";s:15:"profile_9_rules";i:0;s:17:"profile_9_options";s:0:"";s:17:"profile_10_status";i:0;s:10:"profile_10";s:0:"";s:15:"profile_10_type";s:4:"text";s:22:"profile_10_placeholder";s:0:"";s:16:"profile_10_rules";i:0;s:18:"profile_10_options";s:0:"";s:17:"profile_11_status";i:0;s:10:"profile_11";s:0:"";s:15:"profile_11_type";s:4:"text";s:22:"profile_11_placeholder";s:0:"";s:16:"profile_11_rules";i:0;s:18:"profile_11_options";s:0:"";s:17:"profile_12_status";i:0;s:10:"profile_12";s:0:"";s:15:"profile_12_type";s:4:"text";s:22:"profile_12_placeholder";s:0:"";s:16:"profile_12_rules";i:0;s:18:"profile_12_options";s:0:"";s:17:"profile_13_status";i:0;s:10:"profile_13";s:0:"";s:15:"profile_13_type";s:4:"text";s:22:"profile_13_placeholder";s:0:"";s:16:"profile_13_rules";i:0;s:18:"profile_13_options";s:0:"";s:17:"profile_14_status";i:0;s:10:"profile_14";s:0:"";s:15:"profile_14_type";s:4:"text";s:22:"profile_14_placeholder";s:0:"";s:16:"profile_14_rules";i:0;s:18:"profile_14_options";s:0:"";s:17:"profile_15_status";i:0;s:10:"profile_15";s:0:"";s:15:"profile_15_type";s:4:"text";s:22:"profile_15_placeholder";s:0:"";s:16:"profile_15_rules";i:0;s:18:"profile_15_options";s:0:"";s:17:"profile_16_status";i:0;s:10:"profile_16";s:0:"";s:15:"profile_16_type";s:4:"text";s:22:"profile_16_placeholder";s:0:"";s:16:"profile_16_rules";i:0;s:18:"profile_16_options";s:0:"";s:17:"profile_17_status";i:0;s:10:"profile_17";s:0:"";s:15:"profile_17_type";s:4:"text";s:22:"profile_17_placeholder";s:0:"";s:16:"profile_17_rules";i:0;s:18:"profile_17_options";s:0:"";s:17:"profile_18_status";i:0;s:10:"profile_18";s:0:"";s:15:"profile_18_type";s:4:"text";s:22:"profile_18_placeholder";s:0:"";s:16:"profile_18_rules";i:0;s:18:"profile_18_options";s:0:"";s:17:"profile_19_status";i:0;s:10:"profile_19";s:0:"";s:15:"profile_19_type";s:4:"text";s:22:"profile_19_placeholder";s:0:"";s:16:"profile_19_rules";i:0;s:18:"profile_19_options";s:0:"";s:17:"profile_20_status";i:0;s:10:"profile_20";s:0:"";s:15:"profile_20_type";s:4:"text";s:22:"profile_20_placeholder";s:0:"";s:16:"profile_20_rules";i:0;s:18:"profile_20_options";s:0:"";}', 'yes'),
(197, 'newsletter_subscription_lists', 'a:60:{s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;}', 'yes'),
(198, 'newsletter_subscription_template', 'a:2:{s:7:"enabled";i:0;s:8:"template";s:1829:"<!DOCTYPE html>\n<html>\n    <head>\n        <!-- General styles, not used by all email clients -->\n        <style type="text/css" media="all">\n            a {\n                text-decoration: none;\n                color: #0088cc;\n            }\n        </style>\n    </head>\n    \n    <!-- KEEP THE TAMPLE SIMPLE: THOSE ARE SERVICE MESSAGES. -->\n    <body style="margin: 0;">\n        <!-- Top title with dark background #333, font color #fff, font size 32px -->\n        <table style="background-color: #333; width: 100%; color: #fff; font-size: 32px">\n            <tr>\n                <td style="padding: 25px; text-align: center">\n                    {blog_title}\n                </td>\n            </tr>\n        </table>\n\n        <!-- Main table 100% wide with background color #eee -->    \n        <table style="background-color: #eee; width: 100%;">\n            <tr>\n                <td align="center"  style="padding: 25px;">\n\n                    <!-- Content table with backgdound color #fff, width 500px -->\n                    <table style="background-color: #fff; width: 500px; border: 1px solid #ddd;">\n                        <tr>\n                            <td style="padding: 25px; font-size: 16px; font-family: sans-serif">\n                                <!-- The {message} tag is replaced with one of confirmation, welcome or goodbye messages -->\n                                <!-- Messages content can be configured on Newsletter List Building panels --> \n\n                                {message}\n                                \n                                <!-- Signature if not already added to single messages (surround with <p>) -->\n\n                            </td>\n                        </tr>\n                    </table>\n\n                </td>\n            </tr>\n        </table>\n\n    </body>\n</html>";}', 'no'),
(199, 'newsletter_subscription_version', '2.0.2', 'yes'),
(200, 'newsletter_emails', 'a:1:{s:5:"theme";s:7:"default";}', 'yes'),
(201, 'newsletter_emails_theme_default', 'a:0:{}', 'no'),
(202, 'newsletter_emails_version', '1.1.5', 'yes'),
(203, 'newsletter_users', 'a:0:{}', 'yes'),
(205, 'newsletter_users_version', '1.0.6', 'yes'),
(206, 'newsletter_statistics', 'a:1:{s:3:"key";s:32:"ed240920b5e7c78d676844752ec265ba";}', 'yes'),
(207, 'newsletter_statistics_version', '1.1.6', 'yes'),
(208, 'newsletter_lock', 'a:4:{s:3:"ids";s:0:"";s:3:"url";s:0:"";s:7:"message";s:89:"<p>Subscribe to our newsletter and get access to the full article.</p>[subscription_form]";s:7:"enabled";i:0;}', 'yes'),
(209, 'newsletter_lock_version', '1.0.3', 'yes'),
(210, 'newsletter_wp', 'a:5:{s:15:"subscribe_label";s:24:"Subscribe our newsletter";s:9:"subscribe";i:0;s:12:"confirmation";i:0;s:7:"welcome";i:0;s:6:"delete";i:0;}', 'yes'),
(211, 'newsletter_wp_version', '1.0.1', 'yes'),
(212, 'poll_template_voteheader', '<p style="text-align: center;"><strong>%POLL_QUESTION%</strong></p><div id="polls-%POLL_ID%-ans" class="wp-polls-ans"><ul class="wp-polls-ul">', 'yes'),
(213, 'poll_template_votebody', '<li><input type="%POLL_CHECKBOX_RADIO%" id="poll-answer-%POLL_ANSWER_ID%" name="poll_%POLL_ID%" value="%POLL_ANSWER_ID%" /> <label for="poll-answer-%POLL_ANSWER_ID%">%POLL_ANSWER%</label></li>', 'yes'),
(214, 'poll_template_votefooter', '</ul><p style="text-align: center;"><input type="button" name="vote" value="   Vote   " class="Buttons" onclick="poll_vote(%POLL_ID%);" /></p><p style="text-align: center;"><a href="#ViewPollResults" onclick="poll_result(%POLL_ID%); return false;" title="View Results Of This Poll">View Results</a></p></div>', 'yes'),
(215, 'poll_template_resultheader', '<p style="text-align: center;"><strong>%POLL_QUESTION%</strong></p><div id="polls-%POLL_ID%-ans" class="wp-polls-ans"><ul class="wp-polls-ul">', 'yes'),
(216, 'poll_template_resultbody', '<li>%POLL_ANSWER% <small>(%POLL_ANSWER_PERCENTAGE%%, %POLL_ANSWER_VOTES% Votes)</small><div class="pollbar" style="width: %POLL_ANSWER_IMAGEWIDTH%%;" title="%POLL_ANSWER_TEXT% (%POLL_ANSWER_PERCENTAGE%% | %POLL_ANSWER_VOTES% Votes)"></div></li>', 'yes'),
(217, 'poll_template_resultbody2', '<li><strong><i>%POLL_ANSWER% <small>(%POLL_ANSWER_PERCENTAGE%%, %POLL_ANSWER_VOTES% Votes)</small></i></strong><div class="pollbar" style="width: %POLL_ANSWER_IMAGEWIDTH%%;" title="You Have Voted For This Choice - %POLL_ANSWER_TEXT% (%POLL_ANSWER_PERCENTAGE%% | %POLL_ANSWER_VOTES% Votes)"></div></li>', 'yes'),
(218, 'poll_template_resultfooter', '</ul><p style="text-align: center;">Total Voters: <strong>%POLL_TOTALVOTERS%</strong></p></div>', 'yes'),
(219, 'poll_template_resultfooter2', '</ul><p style="text-align: center;">Total Voters: <strong>%POLL_TOTALVOTERS%</strong></p><p style="text-align: center;"><a href="#VotePoll" onclick="poll_booth(%POLL_ID%); return false;" title="Vote For This Poll">Vote</a></p></div>', 'yes'),
(220, 'poll_template_disable', 'Sorry, there are no polls available at the moment.', 'yes'),
(221, 'poll_template_error', 'An error has occurred when processing your poll.', 'yes'),
(222, 'poll_currentpoll', '0', 'yes'),
(223, 'poll_latestpoll', '1', 'yes'),
(224, 'poll_archive_perpage', '5', 'yes'),
(225, 'poll_ans_sortby', 'polla_aid', 'yes'),
(226, 'poll_ans_sortorder', 'asc', 'yes'),
(227, 'poll_ans_result_sortby', 'polla_votes', 'yes'),
(228, 'poll_ans_result_sortorder', 'desc', 'yes'),
(229, 'poll_logging_method', '3', 'yes'),
(230, 'poll_allowtovote', '2', 'yes'),
(231, 'poll_archive_url', 'http://klivin-pc/houmty/pollsarchive', 'yes'),
(232, 'poll_bar', 'a:4:{s:5:"style";s:7:"default";s:10:"background";s:6:"d8e1eb";s:6:"border";s:6:"c8c8c8";s:6:"height";i:8;}', 'yes'),
(233, 'poll_close', '1', 'yes'),
(234, 'poll_ajax_style', 'a:2:{s:7:"loading";i:1;s:6:"fading";i:1;}', 'yes'),
(235, 'poll_template_pollarchivelink', '<ul><li><a href="%POLL_ARCHIVE_URL%">Polls Archive</a></li></ul>', 'yes'),
(236, 'poll_archive_displaypoll', '2', 'yes'),
(237, 'poll_template_pollarchiveheader', '', 'yes'),
(238, 'poll_template_pollarchivefooter', '<p>Start Date: %POLL_START_DATE%<br />End Date: %POLL_END_DATE%</p>', 'yes'),
(239, 'poll_cookielog_expiry', '0', 'yes'),
(240, 'poll_template_pollarchivepagingheader', '', 'yes'),
(241, 'poll_template_pollarchivepagingfooter', '', 'yes'),
(242, 'widget_polls-widget', 'a:2:{i:2;a:3:{s:5:"title";s:5:"Polls";s:7:"poll_id";i:1;s:19:"display_pollarchive";i:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(244, 'newsletter_diagnostic_cron_calls', 'a:34:{i:0;i:1477896229;i:1;i:1477896236;i:2;i:1477896263;i:3;i:1477896506;i:4;i:1477896571;i:5;i:1477896733;i:6;i:1477896808;i:7;i:1477896869;i:8;i:1477897108;i:9;i:1477897165;i:10;i:1477897403;i:11;i:1477897523;i:12;i:1477897763;i:13;i:1477898003;i:14;i:1477898123;i:15;i:1477898363;i:16;i:1477898603;i:17;i:1477898723;i:18;i:1477898963;i:19;i:1477899203;i:20;i:1477899322;i:21;i:1477899562;i:22;i:1477899802;i:23;i:1477899922;i:24;i:1477900148;i:25;i:1477919820;i:26;i:1477939211;i:27;i:1477940895;i:28;i:1477940916;i:29;i:1477941179;i:30;i:1477943607;i:31;i:1478111020;i:32;i:1478164706;i:33;i:1478164877;}', 'no'),
(245, 'widget_newsletterwidget', 'a:2:{i:2;a:2:{s:5:"title";s:11:"Newsletters";s:4:"text";s:19:"{subscription_form}";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(246, 'widget_wpp', 'a:2:{i:2;a:15:{s:5:"title";s:18:"Les plus consulté";s:5:"limit";s:2:"10";s:5:"range";s:5:"daily";s:8:"order_by";s:3:"avg";s:9:"post_type";s:9:"post,page";s:9:"freshness";b:0;s:3:"pid";s:0:"";s:3:"cat";s:0:"";s:6:"author";s:0:"";s:13:"shorten_title";a:3:{s:5:"words";s:1:"0";s:6:"active";b:0;s:6:"length";s:2:"25";}s:12:"post-excerpt";a:4:{s:11:"keep_format";b:0;s:5:"words";s:1:"0";s:6:"active";b:0;s:6:"length";s:2:"55";}s:9:"thumbnail";a:5:{s:6:"active";b:0;s:5:"width";s:2:"15";s:6:"height";s:2:"15";s:5:"build";s:6:"manual";s:4:"crop";b:1;}s:6:"rating";b:0;s:9:"stats_tag";a:5:{s:13:"comment_count";b:0;s:5:"views";b:1;s:6:"author";b:0;s:4:"date";a:2:{s:6:"active";b:0;s:6:"format";s:6:"F j, Y";}s:8:"category";b:0;}s:6:"markup";a:6:{s:11:"custom_html";b:0;s:9:"wpp-start";s:37:"&lt;ul class=&quot;wpp-list&quot;&gt;";s:7:"wpp-end";s:11:"&lt;/ul&gt;";s:9:"post-html";s:44:"&lt;li&gt;{thumb} {title} {stats}&lt;/li&gt;";s:11:"title-start";s:0:"";s:9:"title-end";s:0:"";}}s:12:"_multiwidget";i:1;}', 'yes'),
(263, 'category_children', 'a:0:{}', 'yes'),
(270, 'post_count', '1', 'yes'),
(271, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(283, '_transient_timeout_feed_66a70e9599b658d5cc038e8074597e7c', '1478207914', 'no'),
(284, '_transient_feed_66a70e9599b658d5cc038e8074597e7c', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:4:"WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:16:"https://wpfr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:31:"Site officiel de la communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 03 Nov 2016 09:03:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"Un nouveau site pour WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/5e8SDCecxmc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:44:"https://wpfr.net/nouveau-site-wpfr/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 15 Sep 2016 07:59:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1566674";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1538:"Après plus de quatre mois de chantier, nous sommes fiers de vous présenter le nouveau site WPFR ! Nous l’avions annoncé en mai, le site de l’association était en cours de refonte, l’ancien étant dépassé tant en termes d’aspect que de fonctionnalités. Une quinzaine de bénévoles ont répondu à notre appel pour travailler avec nous sur ce projet. Cette entreprise a aujourd’hui porté<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5e8SDCecxmc:fbo_cDZLcxU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=5e8SDCecxmc:fbo_cDZLcxU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=5e8SDCecxmc:fbo_cDZLcxU:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/5e8SDCecxmc" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wpfr.net/nouveau-site-wpfr/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"29";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:35:"https://wpfr.net/nouveau-site-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Des nouvelles de WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/gVGKhQeZUVA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 May 2016 13:09:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562931";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1491:"Le 21 décembre dernier nous avions le plaisir de vous faire partager des informations à propos du renouveau de l&#8217;association WordPress Francophone. Ces derniers mois ont été l&#8217;occasion de tout remettre à plat et nous souhaitions vous donner des nouvelles sur les différents chantiers en cours. C&#8217;est également le moment de faire appel à la<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=gVGKhQeZUVA:imN45c6OHhM:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=gVGKhQeZUVA:imN45c6OHhM:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=gVGKhQeZUVA:imN45c6OHhM:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/gVGKhQeZUVA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:32:"https://wpfr.net/nouvelles-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"En route vers le nouveau site !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/F12flxi-44w/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/volontaires-chantiers-site-forum/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Jun 2016 13:07:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562923";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1445:"Lors de l’article du 23 mai, nous avons proposé à celles et ceux qui le souhaitaient de participer à la refonte du site et du forum de wordpress-fr.net. Une quinzaine de volontaires ont répondu à notre appel, nous les en remercions ! Les participants ont reçu les indications pour nous rejoindre sur le slack de<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=F12flxi-44w:0Fe3pnVtRWg:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=F12flxi-44w:0Fe3pnVtRWg:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=F12flxi-44w:0Fe3pnVtRWg:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/F12flxi-44w" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wpfr.net/volontaires-chantiers-site-forum/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wpfr.net/volontaires-chantiers-site-forum/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"Rencontre avec Jenny Beaumont à propos des WordCamp Europe 2016 et 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/2XGXo5--k90/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 30 Jun 2016 13:05:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562840";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1471:"Bonjour Jenny, rappelles-nous qui tu es en quelques mots et plus précisément quelle est ton implication au sein de la communauté WordPress ? Je travaille dans et autour du web depuis 1998, époque qui coincide avec mon arrivée en France (des États-unis). J’avais commencé par monter une agence de création de sites avec deux collègues,<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=2XGXo5--k90:Fz7KeESl4Oc:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=2XGXo5--k90:Fz7KeESl4Oc:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=2XGXo5--k90:Fz7KeESl4Oc:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/2XGXo5--k90" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/rencontre-jenny-beaumont-wordcamp-europe/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Un logo pour l’association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/cEo2U8QD2SE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 06 Jul 2016 12:52:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:26:"http://wpfr.net/?p=1562643";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Bonjour à tous ! C&#8217;est l&#8217;heure des vacances pour certains et le moment de vous donner des nouvelles de l&#8217;évolution des chantiers de l&#8217;association. Le mois dernier nous avions constitué des groupes de travail pour s&#8217;attaquer à la refonte du site. Lors des premiers échanges, nous avons relevé que l&#8217;association WPFR n&#8217;avait pas de logo<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=cEo2U8QD2SE:zhkFqo_n7HU:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=cEo2U8QD2SE:zhkFqo_n7HU:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=cEo2U8QD2SE:zhkFqo_n7HU:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/cEo2U8QD2SE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Willy Bahuaud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wpfr.net/logo-lassociation-wpfr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress, Yahoo et les autres …";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/yJpv_mr9BZQ/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wpfr.net/wordpress-yahoo-et-les-autres/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Dec 2005 13:00:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Blogosphere";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Brèves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://www.wordpress-fr.net/?p=59";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1483:"Yahoo qui propose désormais un service d&#8217;hébergement, s&#8217;est associé à WordPress pour compléter son offre. En effet Yahoo propose WordPress comme outils de Blog. N&#8217;ayant pas pu tester ce service je vous renvoie sur les pages qui lui sont consacrées. Sur le site officiel de WordPress. sur le site de Yahoo Small Business. Par ailleurs<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=yJpv_mr9BZQ:DkMH2ZCYPhw:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=yJpv_mr9BZQ:DkMH2ZCYPhw:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=yJpv_mr9BZQ:DkMH2ZCYPhw:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/yJpv_mr9BZQ" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Damino";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/wordpress-yahoo-et-les-autres/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:47:"https://wpfr.net/wordpress-yahoo-et-les-autres/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"WP2 naitra dans un monde moins Libre ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/z7HUvGWmQxI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Dec 2005 11:26:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:72:"http://www.wordpress-fr.net/2005/wp2-naitra-dans-un-monde-moins-libre-6/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1471:"La blogosphère bruisse d&#8217;une rumeur persistante : WP2 va sortir dans quelques jours (la semaine à venir). Je sais que le très actif BenKenobi (retrouvez le sur le forum) à déjà pas mal fait le tour de la question que cette deuxième version en détaillant les nouvelles fonctionnalités. Nous écrira t-il quelquechose de plus épais<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=z7HUvGWmQxI:CpDM9SVjI4o:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=z7HUvGWmQxI:CpDM9SVjI4o:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=z7HUvGWmQxI:CpDM9SVjI4o:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/z7HUvGWmQxI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Amaury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wpfr.net/wp2-naitra-dans-un-monde-moins-libre-6/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"WordPress chez les Helvètes, et en Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/6aodNwnlWuE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 22 Nov 2005 14:13:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Blogosphere";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Brèves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://www.wordpress-fr.net/?p=47";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Ce n&#8217;est pas sans une émotion toute lacrymale que j&#8217;écris ce petit billet, pour vous annoncer deux excellentes nouvelles. Tout d&#8217;abord, la blogosphère wordpressienne francophone (à lire très vite) s&#8217;est agrandie récemment, sous la forme de WordPress.ch, qui a reçu sa première fessée, et donc poussé son premier et rassurant cri de nouveau né, pas<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=6aodNwnlWuE:KYNsvfSW7ZA:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=6aodNwnlWuE:KYNsvfSW7ZA:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=6aodNwnlWuE:KYNsvfSW7ZA:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/6aodNwnlWuE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Xavier Borderie";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"14";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/wordpress-chez-les-helvetes-et-en-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress 2 BETA 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/0QLk4sv5hgg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpfr.net/wordpress-2-beta-1/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 19 Nov 2005 08:42:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:52:"http://www.wordpress-fr.net/2005/wordpress-2-beta-1/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1204:"La version BETA 1 de WordPress 2 vient d&#8217;être lâchée dans la nature Essayez la et dites nous ce que vous en pensez. Si vous avez un compte WP.com vous n&#8217;allez pas être dépaysé. Via Lunacy Unleashed<div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=0QLk4sv5hgg:etBDZeDC8Rw:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=0QLk4sv5hgg:etBDZeDC8Rw:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=0QLk4sv5hgg:etBDZeDC8Rw:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/0QLk4sv5hgg" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Amaury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:41:"https://wpfr.net/wordpress-2-beta-1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:36:"https://wpfr.net/wordpress-2-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"Damned (un truc&amp;astuce en passant)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/-y9nIySAPJA/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:33:"https://wpfr.net/damned/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Nov 2005 15:45:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:7:"Thèmes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"http://www.wordpress-fr.net/2005/damned/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1426:"Un de mes neveux (10 ans) : Qu&#8217;est ce que tu fais ? Moi : Tu te souviens hier quand je t&#8217;ai expliqué comment marchait wordpress, les plugins, les thèmes etc..? Lui : oui Moi : Hé bien là je cherche un plugin efficace qui, une fois activé, coupe l&#8217;accès au blog avec un message<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=-y9nIySAPJA:i0gS7ORRsa8:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=-y9nIySAPJA:i0gS7ORRsa8:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=-y9nIySAPJA:i0gS7ORRsa8:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/-y9nIySAPJA" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Amaury";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wpfr.net/damned/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"10";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:24:"https://wpfr.net/damned/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:39:"//www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:99:"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:10:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"5MhNbF2xjRaQm4dF3dqVtN31vwQ";s:13:"last-modified";s:29:"Thu, 03 Nov 2016 09:08:11 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Thu, 03 Nov 2016 09:18:33 GMT";s:7:"expires";s:29:"Thu, 03 Nov 2016 09:18:33 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";}}s:5:"build";s:14:"20130911030210";}', 'no'),
(285, '_transient_timeout_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1478207914', 'no'),
(286, '_transient_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1478164714', 'no'),
(287, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1478207915', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(288, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:5:"\n		\n	";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:79:"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Planète WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:17:"https://wpfr.net/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Toute l’actualité de WordPress en français !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:8:{i:0;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"Supprimer les liens de spam dans les commentaires";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/y018BQHpbU8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wabeo.fr/supprimer-liens-spam-commentaires/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 02 Nov 2016 11:16:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:281:"\n		        Cette astuce de code permet de supprimer automatiquement les liens contenus dans les commentaires selon la longueur du message et de l’âge de l’article sur lequel il est posté.\n\nVoir Supprimer les liens de spam dans les commentaires directement sur Wabeo		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Wabeo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:495:"<p>Cette astuce de code permet de supprimer automatiquement les liens contenus dans les commentaires selon la longueur du message et de l’âge de l’article sur lequel il est posté.</p>\n<hr />\nVoir <a rel="nofollow" href="https://wabeo.fr/supprimer-liens-spam-commentaires/">Supprimer les liens de spam dans les commentaires</a> directement sur <a rel="nofollow" href="https://wabeo.fr">Wabeo</a></p><img src="http://feeds.feedburner.com/~r/wpfr/~4/y018BQHpbU8" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wabeo.fr/supprimer-liens-spam-commentaires/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"10 plugins WordPress pour corriger ses « erreurs du débutant »";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/AqVGGVC_Jwc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wpformation.com/10-plugins-wordpress-erreurs-debutant/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 31 Oct 2016 08:30:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:567:"\n		        Que celui qui n''a jamais fait d''erreurs sur son blog ou son site WordPress lève la main ! En effet, WordPress étant un CMS très intuitif, il est devenu facile de créer son propre site... Après un certain temps, il est possible que vous vous rendiez compte que vous avez commis quelques "erreurs du débutant". Alors [&#8230;]\n\n\n10 plugins WordPress pour corriger ses &laquo;&nbsp;erreurs du débutant&nbsp;&raquo; est un article de WP Formation\nFormation WordPress &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1350:"<p><img width="1000" height="625" src="https://wpformation.com/wp-content/uploads/2016/10/image-a-la-une-erreurs.jpg" class="attachment-Large size-Large wp-post-image" alt="WordPress erreurs du débutant" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />Que celui qui n''a jamais fait d''erreurs sur son blog ou son site WordPress lève la main ! En effet, WordPress étant un CMS très intuitif, il est devenu facile de créer son propre site... Après un certain temps, il est possible que vous vous rendiez compte que vous avez commis quelques "erreurs du débutant". Alors [&#8230;]</p>\n<p>\n<hr>\n<a rel="nofollow" href="https://wpformation.com/10-plugins-wordpress-erreurs-debutant/">10 plugins WordPress pour corriger ses &laquo;&nbsp;erreurs du débutant&nbsp;&raquo;</a> est un article de <a title="Formation WordPress Ecommerce" href="https://wpformation.com">WP Formation</a></p>\n<p><a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a> &amp; <a href="https://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous à la newsletter</a> !<br />\n<hr><img src="http://feeds.feedburner.com/~r/wpfr/~4/AqVGGVC_Jwc" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wpformation.com/10-plugins-wordpress-erreurs-debutant/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:84:"Éditer vos métadonnées Facebook avec l’extension Social by RealFaviconGenerator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/iMPYyX6TuV4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpchannel.com/editeur-de-metadonnees-facebook/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 31 Oct 2016 08:00:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:446:"\n		        Pour bon nombre de sites, le partage sur les réseaux sociaux et la viralité qui s&#8217;ensuit sont des facteurs importants. Préparer une page pour son partage sur Facebook est simple, voir complètement automatisé. Mais la préparer correctement, voilà une toute autre histoire. Le partage selon Facebook Lorsqu&#8217;un visiteur clique sur le sacro-saint bouton Partager, pas de problème, Facebook fait [&#8230;]\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Channel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:757:"<img width="452" height="300" src="https://wpchannel.com/images/2016/10/facebook-social-media-452x300.png" class="attachment-large size-large wp-post-image" alt="facebook-social-media" style="margin: auto;margin-bottom: 5px" /><p>Pour bon nombre de sites, le partage sur les réseaux sociaux et la viralité qui s&#8217;ensuit sont des facteurs importants. Préparer une page pour son partage sur Facebook est simple, voir complètement automatisé. Mais la préparer correctement, voilà une toute autre histoire. Le partage selon Facebook Lorsqu&#8217;un visiteur clique sur le sacro-saint bouton Partager, pas de problème, Facebook fait [&#8230;]</p>\n<p></p><img src="http://feeds.feedburner.com/~r/wpfr/~4/iMPYyX6TuV4" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpchannel.com/editeur-de-metadonnees-facebook/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:44:"Importer vos données Prismic vers WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/CwMFdBeJ_OM/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:49:"http://www.geekpress.fr/import-prismic-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 31 Oct 2016 07:30:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:502:"\n		        Prismic.io est un CMS moderne plein de promesses. Un de mes clients a souhaité revenir sur WordPress et avait donc besoin d&#8217;importer les données de l&#8217;un vers l&#8217;autre. Je partage mon script d&#8217;import avec vous aujourd&#8217;hui. Avant de commencer, je précise que je n&#8217;ai pas fait ce script sous forme plugin WordPress, car je n&#8217;ai pas eu [&#8230;]\nCet article Importer vos données Prismic vers WordPress est apparu en premier sur GeekPress.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Geekpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:718:"<p>Prismic.io est un CMS moderne plein de promesses. Un de mes clients a souhaité revenir sur WordPress et avait donc besoin d&#8217;importer les données de l&#8217;un vers l&#8217;autre. Je partage mon script d&#8217;import avec vous aujourd&#8217;hui. Avant de commencer, je précise que je n&#8217;ai pas fait ce script sous forme plugin WordPress, car je n&#8217;ai pas eu [&#8230;]</p>\n<p>Cet article <a rel="nofollow" href="http://www.geekpress.fr/import-prismic-wordpress/">Importer vos données Prismic vers WordPress</a> est apparu en premier sur <a rel="nofollow" href="http://www.geekpress.fr">GeekPress</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/CwMFdBeJ_OM" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:49:"http://www.geekpress.fr/import-prismic-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"Changer l’heure de son site WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/TiIIwmd6bL8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:53:"https://dfarnier.fr/changer-lheure-de-site-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 30 Oct 2016 07:54:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:592:"\n		        A chaque site WordPress est associée une heure locale. Cette heure est celle utilisée, par exemple, pour planifier la publication d&#8217;un article. Si l&#8217;heure n&#8217;est pas la bonne, c&#8217;est que le réglage du site s&#8217;appuie sur l&#8217;heure universelle (UTC) et non le nom de votre ville. Une simple modification de paramétrage va régler durablement le &#8230; Suite de l''article Changer l&#8217;heure de son site WordPress ...\nCet article Changer l&rsquo;heure de son site WordPress est apparu en premier sur Créer et gérer son site WordPress.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Daniel Farnier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:934:"<p>A chaque site WordPress est associée une heure locale. Cette heure est celle utilisée, par exemple, pour planifier la publication d&#8217;un article. Si l&#8217;heure n&#8217;est pas la bonne, c&#8217;est que le réglage du site s&#8217;appuie sur l&#8217;heure universelle (UTC) et non le nom de votre ville. Une simple modification de paramétrage va régler durablement le &#8230; <a href="https://dfarnier.fr/changer-lheure-de-site-wordpress/" class="more-link">Suite de l''article <span class="screen-reader-text">Changer l&#8217;heure de son site WordPress</span> ...</a></p>\n<p>Cet article <a rel="nofollow" href="https://dfarnier.fr/changer-lheure-de-site-wordpress/">Changer l&rsquo;heure de son site WordPress</a> est apparu en premier sur <a rel="nofollow" href="https://dfarnier.fr">Créer et gérer son site WordPress</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/TiIIwmd6bL8" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:53:"https://dfarnier.fr/changer-lheure-de-site-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"Vérifier l’accessibilité d’un thème WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/BxssKyCkAk0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:65:"http://www.seomix.fr/verifier-laccessibilite-dun-theme-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Oct 2016 04:00:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1721:"\n		        Apprenez à tester de A à Z l''accessibilité de votre thème et de votre site WordPress, pour un site ergonomique et performant pour vos utilisateurs.Accédez à l''article original : Vérifier l&rsquo;accessibilité d&rsquo;un thème WordPress.\n    Voici le début du contenu : Au moment de choisir un thème, une foule d&rsquo;options s&rsquo;offre à nous. Des thèmes payants, gratuits, sur le répertoire officiel WordPress ou sur des plateformes commerciales, voire même chez de petits éditeurs indépendants. Généralement nous avons accès à un site de démonstration, qui ressemble le plus souvent à un étalage de fonctionnalités. Alors nous parcourons la démonstration, observons l&rsquo;aspect graphique et les capacités de mise en forme, étudions les fonctionnalités exotiques et leur coïncidence avec les besoins du projet à venir. Il est rare de vérifier l&rsquo;accessibilité à ce moment là, et c&rsquo;est pourtant la meilleure occasion de s&rsquo;épargner du travail en aval — si tant est que l&rsquo;accessibilité vous préoccupe un tant soit peu. Par ailleurs si vous désirez découvrir ce domaine, comprendre les erreurs visibles sur ces démonstrations est une excellente méthode pour vous familiariser avec les erreurs courantes et les pièges à éviter. C&rsquo;est pourquoi je vous invite chaleureusement à tester l&rsquo;accessibilité des démonstrations de thème. Je vous explique le pourquoi du comment dans quelques secondes, bougez pas. Pourquoi, pour qui ? Définition Pour faire simple, l&rsquo;accessibilité web consiste à gommer tous les obstacles qui pourraient se dresser entre un internaute et le contenu qu&rsquo;il consulte. Et [...]		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"SeoMix";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2079:"<div><img class="webfeedsFeaturedVisual" src="http://www.seomix.fr/wp-content/uploads/2016/10/tenon-500x300.png" /></div>Apprenez à tester de A à Z l''accessibilité de votre thème et de votre site WordPress, pour un site ergonomique et performant pour vos utilisateurs.<p><strong>Accédez à l''article original :</strong> <a href="http://www.seomix.fr/verifier-laccessibilite-dun-theme-wordpress/">Vérifier l&rsquo;accessibilité d&rsquo;un thème WordPress</a>.</p>\n    <p><strong>Voici le début du contenu :</strong> <p>Au moment de choisir un thème, une foule d&rsquo;options s&rsquo;offre à nous. Des thèmes payants, gratuits, sur le répertoire officiel WordPress ou sur des plateformes commerciales, voire même chez de petits éditeurs indépendants. Généralement nous avons accès à un site de démonstration, qui ressemble le plus souvent à un étalage de fonctionnalités. Alors nous parcourons la démonstration, observons l&rsquo;aspect graphique et les capacités de mise en forme, étudions les fonctionnalités exotiques et leur coïncidence avec les besoins du projet à venir.</p> <p>Il est rare de vérifier l&rsquo;accessibilité à ce moment là, et c&rsquo;est pourtant la meilleure occasion de s&rsquo;épargner du travail en aval — si tant est que l&rsquo;accessibilité vous préoccupe un tant soit peu. Par ailleurs si vous désirez découvrir ce domaine, comprendre les erreurs visibles sur ces démonstrations est une excellente méthode pour vous familiariser avec les erreurs courantes et les pièges à éviter.</p> <p>C&rsquo;est pourquoi je vous invite chaleureusement à tester l&rsquo;accessibilité des démonstrations de thème. Je vous explique le pourquoi du comment dans quelques secondes, bougez pas.</p> <h2>Pourquoi, pour qui ? Définition</h2> <p>Pour faire simple, l&rsquo;accessibilité web consiste à gommer tous les obstacles qui pourraient se dresser entre un internaute et le contenu qu&rsquo;il consulte. Et [...]</p><hr /><img src="http://feeds.feedburner.com/~r/wpfr/~4/BxssKyCkAk0" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:65:"http://www.seomix.fr/verifier-laccessibilite-dun-theme-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Post Lock";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/CyBgRwlnfgE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:53:"http://www.echodesplugins.li-an.fr/plugins/post-lock/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 26 Oct 2016 14:53:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"\n		        Bloquer la publication des billets pour ne rien oublier		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:29:"L''écho des plugins WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:146:"Bloquer la publication des billets pour ne rien oublier<img src="http://feeds.feedburner.com/~r/wpfr/~4/CyBgRwlnfgE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:53:"http://www.echodesplugins.li-an.fr/plugins/post-lock/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:44:"Étendre les liens en JavaScript (ou en CSS)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/2sFnZWJdW_k/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wabeo.fr/etendre-liens-javascript/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 26 Oct 2016 06:30:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:257:"\n		        Cette astuce de développent permet de déplacer le lien d’un élément sur l’un de ses parents, en JavaScript, conciliant ainsi optimisation SEO et ergonomie.\n\nVoir Étendre les liens en JavaScript (ou en CSS) directement sur Wabeo		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Wabeo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:462:"<p>Cette astuce de développent permet de déplacer le lien d’un élément sur l’un de ses parents, en JavaScript, conciliant ainsi optimisation SEO et ergonomie.</p>\n<hr />\nVoir <a rel="nofollow" href="https://wabeo.fr/etendre-liens-javascript/">Étendre les liens en JavaScript (ou en CSS)</a> directement sur <a rel="nofollow" href="https://wabeo.fr">Wabeo</a></p><img src="http://feeds.feedburner.com/~r/wpfr/~4/2sFnZWJdW_k" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wabeo.fr/etendre-liens-javascript/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:32:"http://feeds.feedburner.com/wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:4:"wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"uhka9ySQA8UfrPqEiO9xzS0JcEw";s:13:"last-modified";s:29:"Thu, 03 Nov 2016 09:12:37 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Thu, 03 Nov 2016 09:18:33 GMT";s:7:"expires";s:29:"Thu, 03 Nov 2016 09:18:33 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:37:"quic=":443"; ma=2592000; v="36,35,34"";}}s:5:"build";s:14:"20130911030210";}', 'no'),
(289, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1478207915', 'no'),
(290, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1478164715', 'no'),
(291, '_transient_timeout_plugin_slugs', '1478251126', 'no'),
(292, '_transient_plugin_slugs', 'a:15:{i:0;s:19:"akismet/akismet.php";i:1;s:21:"attachments/index.php";i:2;s:31:"bee-layer-slider/bee-slider.php";i:3;s:31:"constellation/constellation.php";i:4;s:36:"contact-form-7/wp-contact-form-7.php";i:5;s:40:"custom-user-profile-photo/3five_cupp.php";i:6;s:9:"hello.php";i:7;s:27:"LayerSlider/layerslider.php";i:8;s:21:"newsletter/plugin.php";i:9;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:10;s:23:"revslider/revslider.php";i:11;s:25:"rtl-tester/rtl-tester.php";i:12;s:51:"wordpress-popular-posts/wordpress-popular-posts.php";i:13;s:21:"wp-polls/wp-polls.php";i:14;s:53:"js-composer-qtranslate-x/js-composer-qtranslate-x.php";}', 'no'),
(293, '_transient_timeout_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '1478207926', 'no'),
(294, '_transient_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/WordpressFrancophone/~3/5e8SDCecxmc/''>Un nouveau site pour WordPress Francophone</a> <span class="rss-date">15 septembre 2016</span><div class="rssSummary">Après plus de quatre mois de chantier, nous sommes fiers de vous présenter le nouveau site WPFR ! Nous l’avions annoncé en mai, le site de l’association était en cours de refonte, l’ancien étant dépassé tant en termes d’aspect que de fonctionnalités. Une quinzaine de bénévoles ont répondu à notre appel pour travailler avec nous sur ce projet. Cette entreprise a aujourd’hui portéLire [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/wpfr/~3/y018BQHpbU8/''>Supprimer les liens de spam dans les commentaires</a></li><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/wpfr/~3/AqVGGVC_Jwc/''>10 plugins WordPress pour corriger ses « erreurs du débutant »</a></li><li><a class=''rsswidget'' href=''http://feedproxy.google.com/~r/wpfr/~3/iMPYyX6TuV4/''>Éditer vos métadonnées Facebook avec l’extension Social by RealFaviconGenerator</a></li></ul></div><div class="rss-widget"><ul></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_pollsa`
--

CREATE TABLE `wp_pollsa` (
  `polla_aid` int(10) NOT NULL,
  `polla_qid` int(10) NOT NULL DEFAULT '0',
  `polla_answers` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `polla_votes` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_pollsa`
--

INSERT INTO `wp_pollsa` (`polla_aid`, `polla_qid`, `polla_answers`, `polla_votes`) VALUES
(1, 1, 'Good', 0),
(2, 1, 'Excellent', 0),
(3, 1, 'Bad', 0),
(4, 1, 'Can Be Improved', 0),
(5, 1, 'No Comments', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_pollsip`
--

CREATE TABLE `wp_pollsip` (
  `pollip_id` int(10) NOT NULL,
  `pollip_qid` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pollip_aid` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pollip_ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pollip_host` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pollip_timestamp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollip_user` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pollip_userid` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pollsq`
--

CREATE TABLE `wp_pollsq` (
  `pollq_id` int(10) NOT NULL,
  `pollq_question` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `pollq_timestamp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pollq_totalvotes` int(10) NOT NULL DEFAULT '0',
  `pollq_active` tinyint(1) NOT NULL DEFAULT '1',
  `pollq_expiry` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pollq_multiple` tinyint(3) NOT NULL DEFAULT '0',
  `pollq_totalvoters` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_pollsq`
--

INSERT INTO `wp_pollsq` (`pollq_id`, `pollq_question`, `pollq_timestamp`, `pollq_totalvotes`, `pollq_active`, `pollq_expiry`, `pollq_multiple`, `pollq_totalvoters`) VALUES
(1, 'How Is My Site?', '1477899823', 0, 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_popularpostsdata`
--

CREATE TABLE `wp_popularpostsdata` (
  `postid` bigint(20) NOT NULL,
  `day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_viewed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pageviews` bigint(20) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_popularpostssummary`
--

CREATE TABLE `wp_popularpostssummary` (
  `ID` bigint(20) NOT NULL,
  `postid` bigint(20) NOT NULL,
  `pageviews` bigint(20) NOT NULL DEFAULT '1',
  `view_date` date NOT NULL DEFAULT '0000-00-00',
  `last_viewed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(3, 4, '_wp_attached_file', '2016/10/523590_4924308509205_592727850_n.jpg'),
(4, 4, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:806;s:4:"file";s:44:"2016/10/523590_4924308509205_592727850_n.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"523590_4924308509205_592727850_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"523590_4924308509205_592727850_n-300x269.jpg";s:5:"width";i:300;s:6:"height";i:269;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"523590_4924308509205_592727850_n-768x688.jpg";s:5:"width";i:768;s:6:"height";i:688;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-small";a:4:{s:4:"file";s:42:"523590_4924308509205_592727850_n-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-large";a:4:{s:4:"file";s:44:"523590_4924308509205_592727850_n-300x160.jpg";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:6:"slider";a:4:{s:4:"file";s:44:"523590_4924308509205_592727850_n-620x330.jpg";s:5:"width";i:620;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(5, 5, '_edit_lock', '1477896743:1'),
(7, 6, '_menu_item_type', 'taxonomy'),
(8, 6, '_menu_item_menu_item_parent', '0'),
(9, 6, '_menu_item_object_id', '4'),
(10, 6, '_menu_item_object', 'category'),
(11, 6, '_menu_item_target', ''),
(12, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(13, 6, '_menu_item_xfn', ''),
(14, 6, '_menu_item_url', ''),
(16, 7, '_menu_item_type', 'taxonomy'),
(17, 7, '_menu_item_menu_item_parent', '0'),
(18, 7, '_menu_item_object_id', '3'),
(19, 7, '_menu_item_object', 'category'),
(20, 7, '_menu_item_target', ''),
(21, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(22, 7, '_menu_item_xfn', ''),
(23, 7, '_menu_item_url', ''),
(25, 8, '_menu_item_type', 'taxonomy'),
(26, 8, '_menu_item_menu_item_parent', '0'),
(27, 8, '_menu_item_object_id', '2'),
(28, 8, '_menu_item_object', 'category'),
(29, 8, '_menu_item_target', ''),
(30, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(31, 8, '_menu_item_xfn', ''),
(32, 8, '_menu_item_url', ''),
(34, 9, '_menu_item_type', 'custom'),
(35, 9, '_menu_item_menu_item_parent', '0'),
(36, 9, '_menu_item_object_id', '9'),
(37, 9, '_menu_item_object', 'custom'),
(38, 9, '_menu_item_target', ''),
(39, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(40, 9, '_menu_item_xfn', ''),
(41, 9, '_menu_item_url', 'http://google.fr'),
(43, 10, '_menu_item_type', 'custom'),
(44, 10, '_menu_item_menu_item_parent', '0'),
(45, 10, '_menu_item_object_id', '10'),
(46, 10, '_menu_item_object', 'custom'),
(47, 10, '_menu_item_target', ''),
(48, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(49, 10, '_menu_item_xfn', ''),
(50, 10, '_menu_item_url', 'http://facebook.com'),
(52, 11, '_menu_item_type', 'custom'),
(53, 11, '_menu_item_menu_item_parent', '0'),
(54, 11, '_menu_item_object_id', '11'),
(55, 11, '_menu_item_object', 'custom'),
(56, 11, '_menu_item_target', ''),
(57, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 11, '_menu_item_xfn', ''),
(59, 11, '_menu_item_url', 'http://ar.houmty.com'),
(62, 12, '_wp_attached_file', '2016/10/WP_20150806_19_41_45_Pro.jpg'),
(63, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1456;s:6:"height";i:2592;s:4:"file";s:36:"2016/10/WP_20150806_19_41_45_Pro.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"WP_20150806_19_41_45_Pro-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"WP_20150806_19_41_45_Pro-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"WP_20150806_19_41_45_Pro-768x1367.jpg";s:5:"width";i:768;s:6:"height";i:1367;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"WP_20150806_19_41_45_Pro-575x1024.jpg";s:5:"width";i:575;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-small";a:4:{s:4:"file";s:34:"WP_20150806_19_41_45_Pro-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}s:9:"tie-large";a:4:{s:4:"file";s:36:"WP_20150806_19_41_45_Pro-300x160.jpg";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:6:"slider";a:4:{s:4:"file";s:36:"WP_20150806_19_41_45_Pro-620x330.jpg";s:5:"width";i:620;s:6:"height";i:330;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.4";s:6:"credit";s:0:"";s:6:"camera";s:9:"Lumia 520";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1438890105";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:7:"0.00221";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(64, 12, '_edit_lock', '1477896993:1'),
(67, 14, '_edit_lock', '1477900042:2'),
(72, 1, 'tie_views', '0');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-10-30 13:06:07', '2016-10-30 12:06:07', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2016-10-30 13:06:07', '2016-10-30 12:06:07', '', 0, 'http://klivin-pc/houmty/?p=1', 0, 'post', '', 1),
(2, 1, '2016-10-30 13:06:07', '2016-10-30 12:06:07', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://klivin-pc/houmty/wp-admin/">Tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2016-10-30 13:06:07', '2016-10-30 12:06:07', '', 0, 'http://klivin-pc/houmty/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-10-30 13:06:20', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-30 13:06:20', '0000-00-00 00:00:00', '', 0, 'http://klivin-pc/houmty/?p=3', 0, 'post', '', 0),
(4, 1, '2016-10-31 07:45:51', '2016-10-31 06:45:51', '', '523590_4924308509205_592727850_n', '', 'inherit', 'open', 'closed', '', '523590_4924308509205_592727850_n', '', '', '2016-10-31 07:45:51', '2016-10-31 06:45:51', '', 0, 'http://klivin-pc/houmty/wp-content/uploads/2016/10/523590_4924308509205_592727850_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2016-10-31 07:52:07', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-31 07:52:07', '0000-00-00 00:00:00', '', 0, 'http://klivin-pc/houmty/?p=5', 0, 'post', '', 0),
(6, 1, '2016-10-31 07:54:56', '2016-10-31 06:54:56', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2016-10-31 07:54:56', '2016-10-31 06:54:56', '', 0, 'http://klivin-pc/houmty/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2016-10-31 07:54:56', '2016-10-31 06:54:56', ' ', '', '', 'publish', 'closed', 'closed', '', '7', '', '', '2016-10-31 07:54:56', '2016-10-31 06:54:56', '', 0, 'http://klivin-pc/houmty/?p=7', 2, 'nav_menu_item', '', 0),
(8, 1, '2016-10-31 07:54:57', '2016-10-31 06:54:57', ' ', '', '', 'publish', 'closed', 'closed', '', '8', '', '', '2016-10-31 07:54:57', '2016-10-31 06:54:57', '', 0, 'http://klivin-pc/houmty/?p=8', 3, 'nav_menu_item', '', 0),
(9, 1, '2016-10-31 07:56:00', '2016-10-31 06:56:00', '', 'google', '', 'publish', 'closed', 'closed', '', 'google', '', '', '2016-10-31 07:56:00', '2016-10-31 06:56:00', '', 0, 'http://klivin-pc/houmty/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2016-10-31 07:56:01', '2016-10-31 06:56:01', '', 'facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2016-10-31 07:56:01', '2016-10-31 06:56:01', '', 0, 'http://klivin-pc/houmty/?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2016-10-31 07:56:01', '2016-10-31 06:56:01', '', 'العربية', '', 'publish', 'closed', 'closed', '', '%d8%a7%d9%84%d8%b9%d8%b1%d8%a8%d9%8a%d8%a9', '', '', '2016-10-31 07:56:01', '2016-10-31 06:56:01', '', 0, 'http://klivin-pc/houmty/?p=11', 3, 'nav_menu_item', '', 0),
(12, 1, '2016-10-31 07:58:29', '2016-10-31 06:58:29', '', 'wp_20150806_19_41_45_pro', '', 'inherit', 'open', 'closed', '', 'wp_20150806_19_41_45_pro', '', '', '2016-10-31 07:58:29', '2016-10-31 06:58:29', '', 0, 'http://klivin-pc/houmty/wp-content/uploads/2016/10/WP_20150806_19_41_45_Pro.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 2, '2016-10-31 08:02:22', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-31 08:02:22', '0000-00-00 00:00:00', '', 0, 'http://klivin-pc/houmty/?p=13', 0, 'post', '', 0),
(14, 2, '2016-10-31 08:02:36', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-31 08:02:36', '0000-00-00 00:00:00', '', 0, 'http://klivin-pc/houmty/?p=14', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_registration_log`
--

CREATE TABLE `wp_registration_log` (
  `ID` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `IP` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_registration_log`
--

INSERT INTO `wp_registration_log` (`ID`, `email`, `IP`, `blog_id`, `date_registered`) VALUES
(1, 'msbenbakh@gmail.com', '127.0.0.1', 2, '2016-10-30 13:11:39');

-- --------------------------------------------------------

--
-- Structure de la table `wp_signups`
--

CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_site`
--

CREATE TABLE `wp_site` (
  `id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_site`
--

INSERT INTO `wp_site` (`id`, `domain`, `path`) VALUES
(1, 'klivin-pc', '/houmty/');

-- --------------------------------------------------------

--
-- Structure de la table `wp_sitemeta`
--

CREATE TABLE `wp_sitemeta` (
  `meta_id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_sitemeta`
--

INSERT INTO `wp_sitemeta` (`meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'site_name', 'Sites houmty'),
(2, 1, 'admin_email', 'msbenbakh@gmail.com'),
(3, 1, 'admin_user_id', '1'),
(4, 1, 'registration', 'none'),
(5, 1, 'upload_filetypes', 'jpg jpeg png gif mov avi mpg 3gp 3g2 midi mid pdf doc ppt odt pptx docx pps ppsx xls xlsx key mp3 ogg wma m4a wav mp4 m4v webm ogv wmv flv'),
(6, 1, 'blog_upload_space', '100'),
(7, 1, 'fileupload_maxk', '1500'),
(8, 1, 'site_admins', 'a:1:{i:0;s:9:"msbenbakh";}'),
(9, 1, 'allowedthemes', 'a:2:{s:13:"twentysixteen";b:1;s:6:"jarida";b:1;}'),
(10, 1, 'illegal_names', 'a:9:{i:0;s:3:"www";i:1;s:3:"web";i:2;s:4:"root";i:3;s:5:"admin";i:4;s:4:"main";i:5;s:6:"invite";i:6;s:13:"administrator";i:7;s:5:"files";i:8;s:4:"blog";}'),
(11, 1, 'wpmu_upgrade_site', '37965'),
(12, 1, 'welcome_email', 'Cher/chère USERNAME,\n\nVotre nouveau site SITE_NAME a été bien créé à l’adresse :\nBLOG_URL\n\nVous pouvez vous connecter au compte administrateur avec les informations suivantes :\nIdentifiant : USERNAME\nMot de passe : PASSWORD\nConnectez-vous ici : BLOG_URLwp-login.php\n\nNous espérons que vous apprécierez votre nouveau site. Merci !\n\n--L’équipe de SITE_NAME'),
(13, 1, 'first_post', 'Bienvenue sur %s. Vous lisez votre premier article. Modifiez-le ou supprimez-le, puis commencez à publier&nbsp;!'),
(14, 1, 'siteurl', 'http://klivin-pc/houmty/'),
(15, 1, 'add_new_users', '0'),
(16, 1, 'upload_space_check_disabled', '1'),
(17, 1, 'subdomain_install', '0'),
(18, 1, 'global_terms_enabled', '0'),
(19, 1, 'ms_files_rewriting', '0'),
(20, 1, 'initial_db_version', '37965'),
(21, 1, 'active_sitewide_plugins', 'a:0:{}'),
(22, 1, 'WPLANG', 'fr_FR'),
(28, 1, '_site_transient_timeout_browser_e98787bd8e728c47faf5d26e5d6c4cb5', '1478434103'),
(29, 1, '_site_transient_browser_e98787bd8e728c47faf5d26e5d6c4cb5', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"53.0.2785.143";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}'),
(30, 1, 'user_count', '2'),
(31, 1, 'blog_count', '2'),
(32, 1, 'can_compress_scripts', '1'),
(35, 1, 'wpp_settings_config', 'a:2:{s:5:"stats";a:4:{s:8:"order_by";s:5:"views";s:5:"limit";i:10;s:9:"post_type";s:9:"post,page";s:9:"freshness";b:0;}s:5:"tools";a:7:{s:4:"ajax";b:0;s:3:"css";b:1;s:4:"link";a:1:{s:6:"target";s:5:"_self";}s:9:"thumbnail";a:5:{s:6:"source";s:8:"featured";s:5:"field";s:0:"";s:6:"resize";b:0;s:7:"default";s:0:"";s:10:"responsive";b:0;}s:3:"log";a:3:{s:5:"level";i:1;s:5:"limit";i:0;s:13:"expires_after";i:180;}s:5:"cache";a:2:{s:6:"active";b:0;s:8:"interval";a:2:{s:4:"time";s:4:"hour";s:5:"value";i:1;}}s:8:"sampling";a:2:{s:6:"active";b:0;s:4:"rate";i:100;}}}'),
(36, 1, 'wpp_ver', '3.3.4'),
(41, 1, 'wpp_rand', 'bec6de4c8878c66fadb92c818f5c7471'),
(44, 1, 'registrationnotification', 'yes'),
(45, 1, 'welcome_user_email', 'Cher/chère USERNAME,\n\nVotre nouveau compte a été créé.\n\nVous pouvez vous connecter avec les informations suivantes :\nIdentifiant : USERNAME\nMot de passe : PASSWORD\nLOGINLINK\n\nMerci !\n\n--L’équipe de SITE_NAME'),
(65, 1, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":11:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.6.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.6.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:9:"dismissed";b:0;}}s:12:"last_checked";i:1478164886;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-02 11:49:52";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fr_FR.zip";s:10:"autoupdate";b:1;}}}'),
(66, 1, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1478164886;s:7:"checked";a:4:{s:6:"jarida";s:5:"2.3.2";s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}'),
(67, 1, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1478164886;s:8:"response";a:0:{}s:12:"translations";a:2:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"contact-form-7";s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-10-27 14:09:07";s:7:"package";s:81:"https://downloads.wordpress.org/translation/plugin/contact-form-7/4.5.1/fr_FR.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:21:"regenerate-thumbnails";s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"2.2.6";s:7:"updated";s:19:"2016-03-02 09:10:39";s:7:"package";s:88:"https://downloads.wordpress.org/translation/plugin/regenerate-thumbnails/2.2.6/fr_FR.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:12:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.2.zip";}s:21:"attachments/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"11086";s:4:"slug";s:11:"attachments";s:6:"plugin";s:21:"attachments/index.php";s:11:"new_version";s:5:"3.5.7";s:3:"url";s:42:"https://wordpress.org/plugins/attachments/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/attachments.3.5.7.zip";}s:31:"bee-layer-slider/bee-slider.php";O:8:"stdClass":7:{s:2:"id";s:5:"76507";s:4:"slug";s:16:"bee-layer-slider";s:6:"plugin";s:31:"bee-layer-slider/bee-slider.php";s:11:"new_version";s:3:"1.1";s:3:"url";s:47:"https://wordpress.org/plugins/bee-layer-slider/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/bee-layer-slider.zip";s:14:"upgrade_notice";s:81:"Admin Javascript bugs fixed.Kindly update.This more important to work on back end";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.5.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.5.1.zip";}s:40:"custom-user-profile-photo/3five_cupp.php";O:8:"stdClass":7:{s:2:"id";s:5:"45161";s:4:"slug";s:25:"custom-user-profile-photo";s:6:"plugin";s:40:"custom-user-profile-photo/3five_cupp.php";s:11:"new_version";s:5:"0.5.1";s:3:"url";s:56:"https://wordpress.org/plugins/custom-user-profile-photo/";s:7:"package";s:74:"https://downloads.wordpress.org/plugin/custom-user-profile-photo.0.5.1.zip";s:14:"upgrade_notice";s:39:"Fixed issue with update_user_attribute.";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:21:"newsletter/plugin.php";O:8:"stdClass":6:{s:2:"id";s:4:"8171";s:4:"slug";s:10:"newsletter";s:6:"plugin";s:21:"newsletter/plugin.php";s:11:"new_version";s:5:"4.6.8";s:3:"url";s:41:"https://wordpress.org/plugins/newsletter/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/newsletter.4.6.8.zip";}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":6:{s:2:"id";s:4:"4437";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"2.2.6";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";}s:25:"rtl-tester/rtl-tester.php";O:8:"stdClass":6:{s:2:"id";s:5:"14576";s:4:"slug";s:10:"rtl-tester";s:6:"plugin";s:25:"rtl-tester/rtl-tester.php";s:11:"new_version";s:3:"1.1";s:3:"url";s:41:"https://wordpress.org/plugins/rtl-tester/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/rtl-tester.1.1.zip";}s:51:"wordpress-popular-posts/wordpress-popular-posts.php";O:8:"stdClass":7:{s:2:"id";s:4:"5377";s:4:"slug";s:23:"wordpress-popular-posts";s:6:"plugin";s:51:"wordpress-popular-posts/wordpress-popular-posts.php";s:11:"new_version";s:5:"3.3.4";s:3:"url";s:54:"https://wordpress.org/plugins/wordpress-popular-posts/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/wordpress-popular-posts.3.3.4.zip";s:14:"upgrade_notice";s:101:"If you&#039;re using a caching plugin, clearing its cache before upgrading to v.3.3.4 is recommended.";}s:21:"wp-polls/wp-polls.php";O:8:"stdClass":6:{s:2:"id";s:3:"368";s:4:"slug";s:8:"wp-polls";s:6:"plugin";s:21:"wp-polls/wp-polls.php";s:11:"new_version";s:6:"2.73.1";s:3:"url";s:39:"https://wordpress.org/plugins/wp-polls/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/wp-polls.2.73.1.zip";}s:53:"js-composer-qtranslate-x/js-composer-qtranslate-x.php";O:8:"stdClass":6:{s:2:"id";s:5:"59536";s:4:"slug";s:24:"js-composer-qtranslate-x";s:6:"plugin";s:53:"js-composer-qtranslate-x/js-composer-qtranslate-x.php";s:11:"new_version";s:3:"1.0";s:3:"url";s:55:"https://wordpress.org/plugins/js-composer-qtranslate-x/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/js-composer-qtranslate-x.1.0.zip";}}}'),
(72, 1, '_site_transient_timeout_theme_roots', '1478166511'),
(73, 1, '_site_transient_theme_roots', 'a:5:{s:6:"jarida";s:7:"/themes";s:10:"jaridav232";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'videos', 'videos', 0),
(3, 'National', 'national', 0),
(4, 'International', 'international', 0),
(5, 'pages', 'pages', 0),
(6, 'categories', 'categories', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 6, 0),
(7, 6, 0),
(8, 6, 0),
(9, 5, 0),
(10, 5, 0),
(11, 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'nav_menu', '', 0, 3),
(6, 6, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'msbenbakh'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'tie_rate_theme'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"f762e2cbb221a6e2591fafa469e16aab71914b8cc7c7314ab593524ae335f7b8";a:4:{s:10:"expiration";i:1479038776;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1477829176;}s:64:"089b21407b50efbd275b25092bcdcb30e03eb86dca22fa02529600834769b35b";a:4:{s:10:"expiration";i:1479038896;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1477829296;}s:64:"aeff2ec87bac2d827c98a714ea57e1216f638089e4dc5a916b84828ffaf7c3ce";a:4:{s:10:"expiration";i:1479320624;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1478111024;}}'),
(15, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o&editor=tinymce&imgsize=thumbnail'),
(16, 1, 'wp_user-settings-time', '1478164708'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'source_domain', 'klivin-pc'),
(19, 1, 'primary_blog', '2'),
(20, 1, 'wp_2_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(21, 1, 'wp_2_user_level', '10'),
(22, 1, 'wp_2_user-settings', 'libraryContent=browse&mfold=o&editor=tinymce&imgsize=thumbnail'),
(23, 1, 'wp_2_user-settings-time', '1478164749'),
(24, 1, 'wp_2_dashboard_quick_press_last_post_id', '3'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(27, 1, 'nav_menu_recently_edited', '9'),
(28, 1, 'rtladminbar', 'ltr'),
(29, 1, 'cupp_meta', ''),
(30, 1, 'cupp_upload_meta', 'http://klivin-pc/houmty/wp-content/uploads/2016/10/523590_4924308509205_592727850_n.jpg'),
(31, 1, 'cupp_upload_edit_meta', '/wp-admin/post.php?post=4&action=edit&image-editor'),
(32, 1, 'author_widget_content', ''),
(33, 1, 'google', ''),
(34, 1, 'pinterest', ''),
(35, 1, 'twitter', ''),
(36, 1, 'facebook', ''),
(37, 1, 'linkedin', ''),
(38, 1, 'flickr', ''),
(39, 1, 'youtube', ''),
(40, 1, 'instagram', ''),
(41, 1, 'behance', ''),
(42, 2, 'nickname', 'redacteur'),
(43, 2, 'first_name', 'Amine'),
(44, 2, 'last_name', 'Mohamed'),
(45, 2, 'description', ''),
(46, 2, 'rich_editing', 'true'),
(47, 2, 'comment_shortcuts', 'false'),
(48, 2, 'admin_color', 'fresh'),
(49, 2, 'use_ssl', '0'),
(50, 2, 'show_admin_bar_front', 'true'),
(53, 2, 'dismissed_wp_pointers', ''),
(54, 2, 'cupp_meta', ''),
(55, 2, 'cupp_upload_meta', 'http://klivin-pc/houmty/wp-content/uploads/2016/10/WP_20150806_19_41_45_Pro.jpg'),
(56, 2, 'cupp_upload_edit_meta', 'http://klivin-pc/houmty/wp-admin/post.php?post=12&action=edit&image-editor'),
(57, 2, 'author_widget_content', ''),
(58, 2, 'google', ''),
(59, 2, 'pinterest', ''),
(60, 2, 'twitter', ''),
(61, 2, 'facebook', ''),
(62, 2, 'linkedin', ''),
(63, 2, 'flickr', ''),
(64, 2, 'youtube', ''),
(65, 2, 'instagram', ''),
(66, 2, 'behance', ''),
(68, 2, 'primary_blog', '1'),
(69, 2, 'source_domain', 'klivin-pc'),
(70, 2, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(71, 2, 'wp_user_level', '2'),
(72, 2, 'wp_dashboard_quick_press_last_post_id', '13');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `spam`, `deleted`) VALUES
(1, 'msbenbakh', '$P$BR3gYnKQee9xzaxgMJuzRmWd8X.s4K.', 'msbenbakh', 'msbenbakh@gmail.com', '', '2016-10-30 12:06:07', '', 0, 'msbenbakh', 0, 0),
(2, 'redacteur', '$P$BZdIKrbskDCeTmG7Exsapjwvc4Bfn20', 'redacteur', 'redacteur@gmail.com', '', '2016-10-31 06:57:03', '1477897024:$P$B7YwXyTzv5pafq5pl5HGc85vSWAGGv/', 0, 'redacteur', 0, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_2_commentmeta`
--
ALTER TABLE `wp_2_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_2_comments`
--
ALTER TABLE `wp_2_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_2_links`
--
ALTER TABLE `wp_2_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_2_newsletter`
--
ALTER TABLE `wp_2_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `wp_2_newsletter_emails`
--
ALTER TABLE `wp_2_newsletter_emails`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_2_newsletter_sent`
--
ALTER TABLE `wp_2_newsletter_sent`
  ADD PRIMARY KEY (`email_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Index pour la table `wp_2_newsletter_stats`
--
ALTER TABLE `wp_2_newsletter_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `wp_2_options`
--
ALTER TABLE `wp_2_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_2_pollsa`
--
ALTER TABLE `wp_2_pollsa`
  ADD PRIMARY KEY (`polla_aid`);

--
-- Index pour la table `wp_2_pollsip`
--
ALTER TABLE `wp_2_pollsip`
  ADD PRIMARY KEY (`pollip_id`),
  ADD KEY `pollip_ip` (`pollip_ip`),
  ADD KEY `pollip_qid` (`pollip_qid`),
  ADD KEY `pollip_ip_qid_aid` (`pollip_ip`,`pollip_qid`,`pollip_aid`);

--
-- Index pour la table `wp_2_pollsq`
--
ALTER TABLE `wp_2_pollsq`
  ADD PRIMARY KEY (`pollq_id`);

--
-- Index pour la table `wp_2_popularpostsdata`
--
ALTER TABLE `wp_2_popularpostsdata`
  ADD PRIMARY KEY (`postid`);

--
-- Index pour la table `wp_2_popularpostssummary`
--
ALTER TABLE `wp_2_popularpostssummary`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_date` (`postid`,`view_date`),
  ADD KEY `postid` (`postid`),
  ADD KEY `view_date` (`view_date`),
  ADD KEY `last_viewed` (`last_viewed`);

--
-- Index pour la table `wp_2_postmeta`
--
ALTER TABLE `wp_2_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_2_posts`
--
ALTER TABLE `wp_2_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_2_termmeta`
--
ALTER TABLE `wp_2_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_2_terms`
--
ALTER TABLE `wp_2_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_2_term_relationships`
--
ALTER TABLE `wp_2_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_2_term_taxonomy`
--
ALTER TABLE `wp_2_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_blogs`
--
ALTER TABLE `wp_blogs`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `domain` (`domain`(50),`path`(5)),
  ADD KEY `lang_id` (`lang_id`);

--
-- Index pour la table `wp_blog_versions`
--
ALTER TABLE `wp_blog_versions`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `db_version` (`db_version`);

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_newsletter_sent`
--
ALTER TABLE `wp_newsletter_sent`
  ADD PRIMARY KEY (`email_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Index pour la table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_pollsa`
--
ALTER TABLE `wp_pollsa`
  ADD PRIMARY KEY (`polla_aid`);

--
-- Index pour la table `wp_pollsip`
--
ALTER TABLE `wp_pollsip`
  ADD PRIMARY KEY (`pollip_id`),
  ADD KEY `pollip_ip` (`pollip_ip`),
  ADD KEY `pollip_qid` (`pollip_qid`),
  ADD KEY `pollip_ip_qid_aid` (`pollip_ip`,`pollip_qid`,`pollip_aid`);

--
-- Index pour la table `wp_pollsq`
--
ALTER TABLE `wp_pollsq`
  ADD PRIMARY KEY (`pollq_id`);

--
-- Index pour la table `wp_popularpostsdata`
--
ALTER TABLE `wp_popularpostsdata`
  ADD PRIMARY KEY (`postid`);

--
-- Index pour la table `wp_popularpostssummary`
--
ALTER TABLE `wp_popularpostssummary`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_date` (`postid`,`view_date`),
  ADD KEY `postid` (`postid`),
  ADD KEY `view_date` (`view_date`),
  ADD KEY `last_viewed` (`last_viewed`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_registration_log`
--
ALTER TABLE `wp_registration_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IP` (`IP`);

--
-- Index pour la table `wp_signups`
--
ALTER TABLE `wp_signups`
  ADD PRIMARY KEY (`signup_id`),
  ADD KEY `activation_key` (`activation_key`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_login_email` (`user_login`,`user_email`),
  ADD KEY `domain_path` (`domain`(140),`path`(51));

--
-- Index pour la table `wp_site`
--
ALTER TABLE `wp_site`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domain` (`domain`(140),`path`(51));

--
-- Index pour la table `wp_sitemeta`
--
ALTER TABLE `wp_sitemeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `site_id` (`site_id`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_2_commentmeta`
--
ALTER TABLE `wp_2_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_2_comments`
--
ALTER TABLE `wp_2_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_2_links`
--
ALTER TABLE `wp_2_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_2_newsletter`
--
ALTER TABLE `wp_2_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_2_newsletter_emails`
--
ALTER TABLE `wp_2_newsletter_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_2_newsletter_stats`
--
ALTER TABLE `wp_2_newsletter_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_2_options`
--
ALTER TABLE `wp_2_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;
--
-- AUTO_INCREMENT pour la table `wp_2_pollsa`
--
ALTER TABLE `wp_2_pollsa`
  MODIFY `polla_aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `wp_2_pollsip`
--
ALTER TABLE `wp_2_pollsip`
  MODIFY `pollip_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_2_pollsq`
--
ALTER TABLE `wp_2_pollsq`
  MODIFY `pollq_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_2_popularpostssummary`
--
ALTER TABLE `wp_2_popularpostssummary`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `wp_2_postmeta`
--
ALTER TABLE `wp_2_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;
--
-- AUTO_INCREMENT pour la table `wp_2_posts`
--
ALTER TABLE `wp_2_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT pour la table `wp_2_termmeta`
--
ALTER TABLE `wp_2_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_2_terms`
--
ALTER TABLE `wp_2_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `wp_2_term_taxonomy`
--
ALTER TABLE `wp_2_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `wp_blogs`
--
ALTER TABLE `wp_blogs`
  MODIFY `blog_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;
--
-- AUTO_INCREMENT pour la table `wp_pollsa`
--
ALTER TABLE `wp_pollsa`
  MODIFY `polla_aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `wp_pollsip`
--
ALTER TABLE `wp_pollsip`
  MODIFY `pollip_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_pollsq`
--
ALTER TABLE `wp_pollsq`
  MODIFY `pollq_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_popularpostssummary`
--
ALTER TABLE `wp_popularpostssummary`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `wp_registration_log`
--
ALTER TABLE `wp_registration_log`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_signups`
--
ALTER TABLE `wp_signups`
  MODIFY `signup_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_site`
--
ALTER TABLE `wp_site`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_sitemeta`
--
ALTER TABLE `wp_sitemeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
