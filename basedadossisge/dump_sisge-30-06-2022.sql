-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Jun-2022 às 18:04
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `lobras`
--
CREATE DATABASE IF NOT EXISTS `lobras` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lobras`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://br.wordpress.org/', '', '2022-06-03 15:48:15', '2022-06-03 18:48:15', 'Oi, isto é um comentário.\nPara iniciar a moderar, editar e excluir comentários, visite a tela Comentários no painel.\nOs avatares dos comentaristas vêm do <a href=\"https://br.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
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
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/lobras', 'yes'),
(2, 'home', 'http://localhost/lobras', 'yes'),
(3, 'blogname', 'Lobras', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'agnaldosantos1935@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=12&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'astra', 'yes'),
(41, 'stylesheet', 'astra', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Belem', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '12', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1669834094', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"header-widget\";a:0:{}s:15:\"footer-widget-1\";a:0:{}s:15:\"footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-1\";a:0:{}s:24:\"advanced-footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-3\";a:0:{}s:24:\"advanced-footer-widget-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:10:{i:1654285697;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1654290200;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"c9059feef497c200e69cb9956a81f005\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:5;}}}}i:1654290212;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"686c8315be36c96dc00d0d7ed3656b43\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:6;}}}}i:1654290516;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"d63aca0b7e6237c7964320bd7fc95644\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:7;}}}}i:1654325297;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1654325333;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1654368496;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654368533;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1654368549;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1654283254;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(127, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:3:\"6.0\";s:12:\"last_checked\";i:1654283323;}', 'no'),
(128, '_site_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1654283582;}', 'no'),
(129, '_site_transient_timeout_theme_roots', '1654285123', 'no'),
(130, '_site_transient_theme_roots', 'a:5:{s:5:\"astra\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:8:\"woostify\";s:7:\"/themes\";}', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(134, '_transient_timeout_dash_v2_01e18dead815ce736e3b9cccfbd773a5', '1654325373', 'no'),
(135, '_transient_dash_v2_01e18dead815ce736e3b9cccfbd773a5', '<div class=\"rss-widget\"><p><strong>Erro de RSS:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10002 milliseconds</p></div><div class=\"rss-widget\"><p><strong>Erro de RSS:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10008 milliseconds</p></div>', 'no'),
(138, 'finished_updating_comment_type', '1', 'yes'),
(139, 'new_admin_email', 'agnaldosantos1935@gmail.com', 'yes'),
(144, 'current_theme', 'Astra', 'yes'),
(145, 'theme_mods_astra', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:14:\"secondary_menu\";i:0;s:11:\"footer_menu\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1654283343;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"header-widget\";a:0:{}s:15:\"footer-widget-1\";a:0:{}s:15:\"footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-1\";a:0:{}s:24:\"advanced-footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-3\";a:0:{}s:24:\"advanced-footer-widget-4\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(147, 'astra-settings', 'a:37:{s:18:\"theme-auto-version\";s:5:\"3.8.2\";s:22:\"is_theme_queue_running\";b:0;s:33:\"_astra_pb_compatibility_completed\";b:1;s:19:\"breadcrumb-position\";s:4:\"none\";s:28:\"breadcrumb-disable-home-page\";b:0;s:29:\"breadcrumb-separator-selector\";s:5:\"\\00BB\";s:24:\"footer-bg-obj-responsive\";a:3:{s:7:\"desktop\";a:7:{s:16:\"background-color\";s:7:\"#c91313\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:5:\"color\";}s:6:\"tablet\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"mobile\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}}s:25:\"content-bg-obj-responsive\";a:3:{s:7:\"desktop\";a:8:{s:16:\"background-color\";s:25:\"var(--ast-global-color-5)\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:0:\"\";s:16:\"background-media\";s:0:\"\";}s:6:\"tablet\";a:8:{s:16:\"background-color\";s:25:\"var(--ast-global-color-5)\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:0:\"\";s:16:\"background-media\";s:0:\"\";}s:6:\"mobile\";a:8:{s:16:\"background-color\";s:25:\"var(--ast-global-color-5)\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:0:\"\";s:16:\"background-media\";s:0:\"\";}}s:20:\"global-color-palette\";a:2:{s:7:\"palette\";a:9:{i:0;s:7:\"#0170B9\";i:1;s:7:\"#3a3a3a\";i:2;s:7:\"#3a3a3a\";i:3;s:7:\"#4B4F58\";i:4;s:7:\"#F5F5F5\";i:5;s:7:\"#FFFFFF\";i:6;s:7:\"#F2F5F7\";i:7;s:7:\"#424242\";i:8;s:7:\"#000000\";}s:4:\"flag\";b:1;}s:25:\"load-google-fonts-locally\";b:1;s:19:\"preload-local-fonts\";b:1;s:19:\"site-content-layout\";s:15:\"plain-container\";s:26:\"single-page-content-layout\";s:15:\"boxed-container\";s:37:\"site-layout-outside-bg-obj-responsive\";a:3:{s:7:\"desktop\";a:8:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:0:\"\";s:16:\"background-media\";s:0:\"\";}s:6:\"tablet\";a:8:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:0:\"\";s:16:\"background-media\";s:0:\"\";}s:6:\"mobile\";a:8:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:0:\"\";s:16:\"background-media\";s:0:\"\";}}s:27:\"archive-post-content-layout\";s:15:\"boxed-container\";s:16:\"body-font-family\";s:19:\"\'Karla\', sans-serif\";s:17:\"body-font-variant\";s:3:\"400\";s:14:\"font-size-body\";a:6:{s:7:\"desktop\";i:17;s:6:\"tablet\";i:17;s:6:\"mobile\";i:17;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:16:\"body-line-height\";s:0:\"\";s:20:\"headings-font-family\";s:19:\"\'Rubik\', sans-serif\";s:21:\"headings-font-variant\";s:3:\"500\";s:12:\"font-size-h1\";a:6:{s:7:\"desktop\";i:48;s:6:\"tablet\";i:40;s:6:\"mobile\";i:36;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:14:\"line-height-h1\";d:1.3;s:12:\"font-size-h2\";a:6:{s:7:\"desktop\";i:38;s:6:\"tablet\";i:32;s:6:\"mobile\";i:28;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:14:\"line-height-h2\";d:1.3;s:12:\"font-size-h3\";a:6:{s:7:\"desktop\";i:30;s:6:\"tablet\";i:26;s:6:\"mobile\";i:22;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:14:\"line-height-h3\";d:1.3;s:12:\"font-size-h4\";a:6:{s:7:\"desktop\";i:24;s:6:\"tablet\";i:20;s:6:\"mobile\";i:18;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:14:\"line-height-h4\";d:1.3;s:12:\"font-size-h5\";a:6:{s:7:\"desktop\";i:21;s:6:\"tablet\";i:17;s:6:\"mobile\";i:15;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:14:\"line-height-h5\";d:1.3;s:12:\"font-size-h6\";a:6:{s:7:\"desktop\";i:17;s:6:\"tablet\";i:15;s:6:\"mobile\";i:14;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:14:\"line-height-h6\";d:1.3;s:26:\"single-post-sidebar-layout\";s:7:\"default\";s:27:\"archive-post-sidebar-layout\";s:7:\"default\";s:23:\"footer-copyright-editor\";s:82:\"Copyright [copyright] [current_year] [site_title] | Desenvolvido por Label Systems\";s:37:\"section-footer-copyright-hide-desktop\";b:0;}', 'yes'),
(148, '_transient_timeout_astra-theme-cron-test-ok', '1654286886', 'no'),
(149, '_transient_astra-theme-cron-test-ok', '1', 'no'),
(152, 'theme_mods_woostify', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:0;s:6:\"mobile\";i:0;s:17:\"mobile_categories\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1654283790;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:6:\"footer\";a:0:{}}}}', 'yes'),
(153, 'widget_woostify_recent_post_with_thumbnail', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(154, 'elementor_disable_color_schemes', 'yes', 'yes'),
(155, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1654283791;}', 'no'),
(160, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(166, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(167, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'recently_activated', 'a:0:{}', 'yes'),
(175, '_transient_timeout_global_styles_woostify', '1654283737', 'no'),
(176, '_transient_global_styles_woostify', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--woostify-primary: #1346af;--wp--preset--color--woostify-heading: #2b2b2b;--wp--preset--color--woostify-text: #8f8f8f;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--font-size--woostify-heading-6: 18px;--wp--preset--font-size--woostify-heading-5: 26px;--wp--preset--font-size--woostify-heading-4: 28px;--wp--preset--font-size--woostify-heading-3: 30px;--wp--preset--font-size--woostify-heading-2: 36px;--wp--preset--font-size--woostify-heading-1: 48px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(177, '_transient_timeout_global_styles_svg_filters_woostify', '1654283737', 'no'),
(178, '_transient_global_styles_svg_filters_woostify', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no'),
(210, 'astra-color-palettes', 'a:3:{s:14:\"currentPalette\";s:9:\"palette_1\";s:8:\"palettes\";a:3:{s:9:\"palette_1\";a:9:{i:0;s:7:\"#0170B9\";i:1;s:7:\"#3a3a3a\";i:2;s:7:\"#3a3a3a\";i:3;s:7:\"#4B4F58\";i:4;s:7:\"#F5F5F5\";i:5;s:7:\"#FFFFFF\";i:6;s:7:\"#F2F5F7\";i:7;s:7:\"#424242\";i:8;s:7:\"#000000\";}s:9:\"palette_2\";a:9:{i:0;s:7:\"#0170B9\";i:1;s:7:\"#3a3a3a\";i:2;s:7:\"#3a3a3a\";i:3;s:7:\"#4B4F58\";i:4;s:7:\"#F5F5F5\";i:5;s:7:\"#FFFFFF\";i:6;s:7:\"#F2F5F7\";i:7;s:7:\"#424242\";i:8;s:7:\"#000000\";}s:9:\"palette_3\";a:9:{i:0;s:7:\"#0170B9\";i:1;s:7:\"#3a3a3a\";i:2;s:7:\"#3a3a3a\";i:3;s:7:\"#4B4F58\";i:4;s:7:\"#F5F5F5\";i:5;s:7:\"#FFFFFF\";i:6;s:7:\"#F2F5F7\";i:7;s:7:\"#424242\";i:8;s:7:\"#000000\";}}s:4:\"flag\";b:1;}', 'yes'),
(211, 'astra-typography-presets', 'typo-preset-05', 'yes'),
(235, '_transient_timeout_global_styles_astra', '1654285170', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(236, '_transient_global_styles_astra', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--ast-global-color-0: var(--ast-global-color-0);--wp--preset--color--ast-global-color-1: var(--ast-global-color-1);--wp--preset--color--ast-global-color-2: var(--ast-global-color-2);--wp--preset--color--ast-global-color-3: var(--ast-global-color-3);--wp--preset--color--ast-global-color-4: var(--ast-global-color-4);--wp--preset--color--ast-global-color-5: var(--ast-global-color-5);--wp--preset--color--ast-global-color-6: var(--ast-global-color-6);--wp--preset--color--ast-global-color-7: var(--ast-global-color-7);--wp--preset--color--ast-global-color-8: var(--ast-global-color-8);--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}body { margin: 0; }body{--wp--style--block-gap: 2em;}.wp-site-blocks > .alignleft { float: left; margin-right: 2em; }.wp-site-blocks > .alignright { float: right; margin-left: 2em; }.wp-site-blocks > .aligncenter { justify-content: center; margin-left: auto; margin-right: auto; }.wp-site-blocks > * { margin-block-start: 0; margin-block-end: 0; }.wp-site-blocks > * + * { margin-block-start: var( --wp--style--block-gap ); }.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-ast-global-color-0-color{color: var(--wp--preset--color--ast-global-color-0) !important;}.has-ast-global-color-1-color{color: var(--wp--preset--color--ast-global-color-1) !important;}.has-ast-global-color-2-color{color: var(--wp--preset--color--ast-global-color-2) !important;}.has-ast-global-color-3-color{color: var(--wp--preset--color--ast-global-color-3) !important;}.has-ast-global-color-4-color{color: var(--wp--preset--color--ast-global-color-4) !important;}.has-ast-global-color-5-color{color: var(--wp--preset--color--ast-global-color-5) !important;}.has-ast-global-color-6-color{color: var(--wp--preset--color--ast-global-color-6) !important;}.has-ast-global-color-7-color{color: var(--wp--preset--color--ast-global-color-7) !important;}.has-ast-global-color-8-color{color: var(--wp--preset--color--ast-global-color-8) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-ast-global-color-0-background-color{background-color: var(--wp--preset--color--ast-global-color-0) !important;}.has-ast-global-color-1-background-color{background-color: var(--wp--preset--color--ast-global-color-1) !important;}.has-ast-global-color-2-background-color{background-color: var(--wp--preset--color--ast-global-color-2) !important;}.has-ast-global-color-3-background-color{background-color: var(--wp--preset--color--ast-global-color-3) !important;}.has-ast-global-color-4-background-color{background-color: var(--wp--preset--color--ast-global-color-4) !important;}.has-ast-global-color-5-background-color{background-color: var(--wp--preset--color--ast-global-color-5) !important;}.has-ast-global-color-6-background-color{background-color: var(--wp--preset--color--ast-global-color-6) !important;}.has-ast-global-color-7-background-color{background-color: var(--wp--preset--color--ast-global-color-7) !important;}.has-ast-global-color-8-background-color{background-color: var(--wp--preset--color--ast-global-color-8) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-ast-global-color-0-border-color{border-color: var(--wp--preset--color--ast-global-color-0) !important;}.has-ast-global-color-1-border-color{border-color: var(--wp--preset--color--ast-global-color-1) !important;}.has-ast-global-color-2-border-color{border-color: var(--wp--preset--color--ast-global-color-2) !important;}.has-ast-global-color-3-border-color{border-color: var(--wp--preset--color--ast-global-color-3) !important;}.has-ast-global-color-4-border-color{border-color: var(--wp--preset--color--ast-global-color-4) !important;}.has-ast-global-color-5-border-color{border-color: var(--wp--preset--color--ast-global-color-5) !important;}.has-ast-global-color-6-border-color{border-color: var(--wp--preset--color--ast-global-color-6) !important;}.has-ast-global-color-7-border-color{border-color: var(--wp--preset--color--ast-global-color-7) !important;}.has-ast-global-color-8-border-color{border-color: var(--wp--preset--color--ast-global-color-8) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(238, '_transient_timeout_global_styles_svg_filters_astra', '1654285170', 'no'),
(239, '_transient_global_styles_svg_filters_astra', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(240, 'astra_partials_config_cache', 'a:2:{s:8:\"settings\";a:658:{s:35:\"astra-settings[button-preset-style]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[theme-button-color-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[theme-button-bg-color-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:28:\"astra-settings[button-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[button-h-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:31:\"astra-settings[button-bg-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[button-bg-h-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:53:\"astra-settings[theme-button-border-group-border-size]\";a:4:{s:7:\"default\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[theme-button-border-color-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[theme-button-border-group-border-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:56:\"astra-settings[theme-button-border-group-border-h-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:29:\"astra-settings[button-radius]\";a:4:{s:7:\"default\";i:2;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[theme-button-padding]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";i:15;s:5:\"right\";i:30;s:6:\"bottom\";i:15;s:4:\"left\";i:30;}s:6:\"tablet\";a:4:{s:3:\"top\";i:14;s:5:\"right\";i:28;s:6:\"bottom\";i:14;s:4:\"left\";i:28;}s:6:\"mobile\";a:4:{s:3:\"top\";i:12;s:5:\"right\";i:24;s:6:\"bottom\";i:12;s:4:\"left\";i:24;}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:34:\"astra-settings[site-content-width]\";a:4:{s:7:\"default\";i:1200;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:37:\"astra-settings[different-retina-logo]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[ast-header-retina-logo]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:11:\"esc_url_raw\";}s:37:\"astra-settings[different-mobile-logo]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[mobile-header-logo]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";s:11:\"esc_url_raw\";}s:48:\"astra-settings[ast-header-responsive-logo-width]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[display-site-title-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";i:1;s:6:\"tablet\";i:1;s:6:\"mobile\";i:1;}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[ast-site-title-tagline-divider]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[display-site-tagline-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";i:0;s:6:\"tablet\";i:0;s:6:\"mobile\";i:0;}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[logo-title-inline]\";a:4:{s:7:\"default\";i:1;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[site-identity-title-color-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[header-color-site-title]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[header-color-h-site-title]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[header-color-site-tagline]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[site-icon-link]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:26:\"astra-settings[blog-width]\";a:4:{s:7:\"default\";s:7:\"default\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[blog-max-width]\";a:4:{s:7:\"default\";i:1200;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[blog-post-content]\";a:4:{s:7:\"default\";s:7:\"excerpt\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[blog-post-structure]\";a:4:{s:7:\"default\";a:2:{i:0;s:5:\"image\";i:1;s:10:\"title-meta\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:25:\"astra-settings[blog-meta]\";a:4:{s:7:\"default\";a:3:{i:0;s:8:\"comments\";i:1;s:8:\"category\";i:2;s:6:\"author\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:29:\"section-blog-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[blog-single-width]\";a:4:{s:7:\"default\";s:7:\"default\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:37:\"astra-settings[blog-single-max-width]\";a:4:{s:7:\"default\";i:1200;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[blog-single-post-structure]\";a:4:{s:7:\"default\";a:2:{i:0;s:12:\"single-image\";i:1;s:17:\"single-title-meta\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:32:\"astra-settings[blog-single-meta]\";a:4:{s:7:\"default\";a:3:{i:0;s:8:\"comments\";i:1;s:8:\"category\";i:2;s:6:\"author\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:36:\"section-blog-single-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[site-sidebar-layout]\";a:4:{s:7:\"default\";s:13:\"right-sidebar\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[single-page-sidebar-layout]\";a:4:{s:7:\"default\";s:7:\"default\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[single-post-sidebar-layout]\";a:4:{s:7:\"default\";s:7:\"default\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[archive-post-sidebar-layout]\";a:4:{s:7:\"default\";s:7:\"default\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[site-sidebar-width]\";a:4:{s:7:\"default\";i:30;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[site-sidebar-width-description]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";s:0:\"\";}s:35:\"astra-settings[site-content-layout]\";a:4:{s:7:\"default\";s:15:\"plain-container\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[single-page-content-layout]\";a:4:{s:7:\"default\";s:15:\"boxed-container\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[single-post-content-layout]\";a:4:{s:7:\"default\";s:7:\"default\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[archive-post-content-layout]\";a:4:{s:7:\"default\";s:15:\"boxed-container\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:53:\"astra-settings[site-layout-outside-bg-obj-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";a:8:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:0:\"\";s:16:\"background-media\";s:0:\"\";}s:6:\"tablet\";a:8:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:0:\"\";s:16:\"background-media\";s:0:\"\";}s:6:\"mobile\";a:8:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:0:\"\";s:16:\"background-media\";s:0:\"\";}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[content-bg-obj-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";a:8:{s:16:\"background-color\";s:25:\"var(--ast-global-color-5)\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:0:\"\";s:16:\"background-media\";s:0:\"\";}s:6:\"tablet\";a:8:{s:16:\"background-color\";s:25:\"var(--ast-global-color-5)\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:0:\"\";s:16:\"background-media\";s:0:\"\";}s:6:\"mobile\";a:8:{s:16:\"background-color\";s:25:\"var(--ast-global-color-5)\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:0:\"\";s:16:\"background-media\";s:0:\"\";}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[ast-container-more-feature-description]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";s:0:\"\";}s:36:\"astra-settings[global-color-palette]\";a:4:{s:7:\"default\";a:2:{s:7:\"palette\";a:9:{i:0;s:7:\"#0170B9\";i:1;s:7:\"#3a3a3a\";i:2;s:7:\"#3a3a3a\";i:3;s:7:\"#4B4F58\";i:4;s:7:\"#F5F5F5\";i:5;s:7:\"#FFFFFF\";i:6;s:7:\"#F2F5F7\";i:7;s:7:\"#424242\";i:8;s:7:\"#000000\";}s:4:\"flag\";b:1;}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:20:\"astra-color-palettes\";a:4:{s:7:\"default\";a:3:{s:14:\"currentPalette\";s:9:\"palette_1\";s:8:\"palettes\";a:3:{s:9:\"palette_1\";a:9:{i:0;s:7:\"#0170B9\";i:1;s:7:\"#3a3a3a\";i:2;s:7:\"#3a3a3a\";i:3;s:7:\"#4B4F58\";i:4;s:7:\"#F5F5F5\";i:5;s:7:\"#FFFFFF\";i:6;s:7:\"#F2F5F7\";i:7;s:7:\"#424242\";i:8;s:7:\"#000000\";}s:9:\"palette_2\";a:9:{i:0;s:7:\"#0170B9\";i:1;s:7:\"#3a3a3a\";i:2;s:7:\"#3a3a3a\";i:3;s:7:\"#4B4F58\";i:4;s:7:\"#F5F5F5\";i:5;s:7:\"#FFFFFF\";i:6;s:7:\"#F2F5F7\";i:7;s:7:\"#424242\";i:8;s:7:\"#000000\";}s:9:\"palette_3\";a:9:{i:0;s:7:\"#0170B9\";i:1;s:7:\"#3a3a3a\";i:2;s:7:\"#3a3a3a\";i:3;s:7:\"#4B4F58\";i:4;s:7:\"#F5F5F5\";i:5;s:7:\"#FFFFFF\";i:6;s:7:\"#F2F5F7\";i:7;s:7:\"#424242\";i:8;s:7:\"#000000\";}}s:4:\"flag\";b:1;}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:27:\"astra-settings[theme-color]\";a:4:{s:7:\"default\";s:25:\"var(--ast-global-color-0)\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:26:\"astra-settings[link-color]\";a:4:{s:7:\"default\";s:25:\"var(--ast-global-color-0)\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:28:\"astra-settings[link-h-color]\";a:4:{s:7:\"default\";s:25:\"var(--ast-global-color-1)\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:26:\"astra-settings[text-color]\";a:4:{s:7:\"default\";s:25:\"var(--ast-global-color-3)\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:60:\"astra-settings[ast-blog-typography-more-feature-description]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";s:0:\"\";}s:47:\"astra-settings[font-size-archive-summary-title]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:40;s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[font-size-page-title]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:30;s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[ast-body-font-settings]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:32:\"astra-settings[body-font-family]\";a:4:{s:7:\"default\";s:19:\"\'Karla\', sans-serif\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:33:\"astra-settings[body-font-variant]\";a:4:{s:7:\"default\";s:3:\"400\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:21:\"sanitize_font_variant\";}}s:32:\"astra-settings[body-font-weight]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:35:\"astra-settings[body-text-transform]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[font-size-body]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:17;s:6:\"tablet\";i:17;s:6:\"mobile\";i:17;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:32:\"astra-settings[body-line-height]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[ast-headings-font-settings]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[headings-font-family]\";a:4:{s:7:\"default\";s:19:\"\'Rubik\', sans-serif\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:37:\"astra-settings[headings-font-variant]\";a:4:{s:7:\"default\";s:3:\"500\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:21:\"sanitize_font_variant\";}}s:36:\"astra-settings[headings-font-weight]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:39:\"astra-settings[headings-text-transform]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[headings-line-height]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[para-margin-bottom]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[underline-content-links]\";a:4:{s:7:\"default\";b:1;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[ast-heading-h1-typo]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[ast-heading-h2-typo]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[ast-heading-h3-typo]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[ast-heading-h4-typo]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[ast-heading-h5-typo]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[ast-heading-h6-typo]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[wp-blocks-global-padding]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"em\";s:11:\"tablet-unit\";s:2:\"em\";s:11:\"mobile-unit\";s:2:\"em\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:40:\"astra-settings[wp-blocks-ui-description]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";s:0:\"\";}s:30:\"astra-settings[font-family-h1]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:28:\"astra-settings[font-size-h1]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:48;s:6:\"tablet\";i:40;s:6:\"mobile\";i:36;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[font-weight-h1]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:33:\"astra-settings[text-transform-h1]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[line-height-h1]\";a:4:{s:7:\"default\";d:1.3;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[font-family-h2]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:28:\"astra-settings[font-size-h2]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:38;s:6:\"tablet\";i:32;s:6:\"mobile\";i:28;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[font-weight-h2]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:33:\"astra-settings[text-transform-h2]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[line-height-h2]\";a:4:{s:7:\"default\";d:1.3;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[font-family-h3]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:28:\"astra-settings[font-size-h3]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:30;s:6:\"tablet\";i:26;s:6:\"mobile\";i:22;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[font-weight-h3]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:33:\"astra-settings[text-transform-h3]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[line-height-h3]\";a:4:{s:7:\"default\";d:1.3;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[font-family-h4]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:28:\"astra-settings[font-size-h4]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:24;s:6:\"tablet\";i:20;s:6:\"mobile\";i:18;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[font-weight-h4]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:33:\"astra-settings[text-transform-h4]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[line-height-h4]\";a:4:{s:7:\"default\";d:1.3;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[font-family-h5]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:28:\"astra-settings[font-size-h5]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:21;s:6:\"tablet\";i:17;s:6:\"mobile\";i:15;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[font-weight-h5]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:33:\"astra-settings[text-transform-h5]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[line-height-h5]\";a:4:{s:7:\"default\";d:1.3;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[font-family-h6]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:28:\"astra-settings[font-size-h6]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:17;s:6:\"tablet\";i:15;s:6:\"mobile\";i:14;s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[font-weight-h6]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:33:\"astra-settings[text-transform-h6]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[line-height-h6]\";a:4:{s:7:\"default\";d:1.3;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[font-size-site-title]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:35;s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[font-size-site-tagline]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:15;s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:66:\"astra-settings[ast-sngle-blog-typography-more-feature-description]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";s:0:\"\";}s:37:\"astra-settings[font-size-entry-title]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:30;s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:24:\"astra-typography-presets\";a:4:{s:7:\"default\";s:14:\"typo-preset-05\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[load-google-fonts-locally]\";a:4:{s:7:\"default\";b:1;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[preload-local-fonts]\";a:4:{s:7:\"default\";b:1;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[flush-local-font-files]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";s:0:\"\";}s:40:\"astra-settings[astra-pro-section-notice]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[enable-related-posts]\";a:4:{s:7:\"default\";b:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[related-posts-section-heading]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[related-posts-title]\";a:4:{s:7:\"default\";s:13:\"Related Posts\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[releted-posts-title-alignment]\";a:4:{s:7:\"default\";s:4:\"left\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[related-posts-structure]\";a:4:{s:7:\"default\";a:2:{i:0;s:14:\"featured-image\";i:1;s:10:\"title-meta\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[related-posts-meta-structure]\";a:4:{s:7:\"default\";a:3:{i:0;s:8:\"comments\";i:1;s:8:\"category\";i:2;s:6:\"author\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[enable-related-posts-excerpt]\";a:4:{s:7:\"default\";b:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[related-posts-excerpt-count]\";a:4:{s:7:\"default\";i:25;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[related-posts-total-count]\";a:4:{s:7:\"default\";i:2;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[related-posts-grid-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:7:\"2-equal\";s:6:\"tablet\";s:7:\"2-equal\";s:6:\"mobile\";s:4:\"full\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[related-posts-query-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[related-posts-based-on]\";a:4:{s:7:\"default\";s:10:\"categories\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[related-posts-order-by]\";a:4:{s:7:\"default\";s:4:\"date\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[related-posts-order]\";a:4:{s:7:\"default\";s:3:\"asc\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[related-posts-colors-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:60:\"astra-settings[related-posts-section-title-typography-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[related-posts-title-typography-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:51:\"astra-settings[related-posts-meta-typography-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[related-posts-content-typography-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[related-posts-text-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[related-posts-link-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[related-posts-design-section-heading]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[related-posts-title-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:46:\"astra-settings[related-posts-background-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:40:\"astra-settings[related-posts-meta-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[related-posts-link-hover-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:51:\"astra-settings[related-posts-meta-link-hover-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[related-posts-title-font-family]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:45:\"astra-settings[related-posts-title-font-size]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:2:\"20\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[related-posts-title-font-weight]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:50:\"astra-settings[related-posts-title-text-transform]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[related-posts-title-line-height]\";a:4:{s:7:\"default\";s:1:\"1\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:55:\"astra-settings[related-posts-section-title-font-family]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:53:\"astra-settings[related-posts-section-title-font-size]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:2:\"30\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:55:\"astra-settings[related-posts-section-title-font-weight]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:58:\"astra-settings[related-posts-section-title-text-transform]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:55:\"astra-settings[related-posts-section-title-line-height]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[related-posts-meta-font-family]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:44:\"astra-settings[related-posts-meta-font-size]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:2:\"14\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[related-posts-meta-font-weight]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:49:\"astra-settings[related-posts-meta-text-transform]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[related-posts-meta-line-height]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[related-posts-content-font-family]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:47:\"astra-settings[related-posts-content-font-size]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[related-posts-content-font-weight]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:52:\"astra-settings[related-posts-content-text-transform]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[related-posts-content-line-height]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[transparent-header-bg-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:62:\"astra-settings[transparent-header-color-site-title-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:64:\"astra-settings[transparent-header-color-h-site-title-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[transparent-menu-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[transparent-menu-bg-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:51:\"astra-settings[transparent-menu-h-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[transparent-submenu-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:55:\"astra-settings[transparent-submenu-bg-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[transparent-submenu-h-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:65:\"astra-settings[transparent-content-section-link-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:67:\"astra-settings[transparent-content-section-link-h-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[transparent-header-enable]\";a:4:{s:7:\"default\";i:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:50:\"astra-settings[transparent-header-disable-archive]\";a:4:{s:7:\"default\";i:1;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:48:\"astra-settings[transparent-header-disable-index]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:61:\"astra-settings[transparent-header-disable-latest-posts-index]\";a:4:{s:7:\"default\";i:1;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[transparent-header-disable-page]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:48:\"astra-settings[transparent-header-disable-posts]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[transparent-header-on-devices]\";a:4:{s:7:\"default\";s:4:\"both\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[different-transparent-logo]\";a:4:{s:7:\"default\";i:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[different-transparent-logo-separator]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[transparent-header-logo]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";s:11:\"esc_url_raw\";}s:49:\"astra-settings[different-transparent-retina-logo]\";a:4:{s:7:\"default\";i:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[transparent-header-retina-logo]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";s:11:\"esc_url_raw\";}s:45:\"astra-settings[transparent-header-logo-width]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";i:150;s:6:\"tablet\";i:120;s:6:\"mobile\";i:100;}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[transparent-header-main-sep]\";a:4:{s:7:\"default\";i:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[transparent-header-main-sep-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:47:\"astra-settings[divider-sec-transparent-styling]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[transparent-header-colors]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[transparent-header-colors-menu]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[transparent-header-colors-submenu]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"section-transparent-header-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:61:\"astra-settings[transparent-header-social-text-colors-content]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:67:\"astra-settings[transparent-header-social-background-colors-content]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:53:\"astra-settings[transparent-header-social-icons-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:55:\"astra-settings[transparent-header-social-icons-h-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:56:\"astra-settings[transparent-header-social-icons-bg-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:58:\"astra-settings[transparent-header-social-icons-bg-h-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[transparent-header-html-colors-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:50:\"astra-settings[transparent-header-html-text-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:50:\"astra-settings[transparent-header-html-link-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:52:\"astra-settings[transparent-header-html-link-h-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:52:\"astra-settings[transparent-header-search-icon-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:62:\"astra-settings[transparent-header-search-box-background-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:53:\"astra-settings[transparent-header-buttons-text-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:59:\"astra-settings[transparent-header-buttons-background-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[transparent-header-button-text-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:54:\"astra-settings[transparent-header-button-text-h-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:50:\"astra-settings[transparent-header-button-bg-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:52:\"astra-settings[transparent-header-button-bg-h-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:46:\"astra-settings[transparent-account-icon-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:51:\"astra-settings[transparent-account-type-text-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:51:\"astra-settings[transparent-header-toggle-btn-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[transparent-header-toggle-btn-bg-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[transparent-header-toggle-border-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[breadcrumb-position]\";a:4:{s:7:\"default\";s:4:\"none\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[breadcrumb-disable-home-page]\";a:4:{s:7:\"default\";b:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:50:\"astra-settings[breadcrumb-disable-blog-posts-page]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[breadcrumb-disable-search]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[breadcrumb-disable-archive]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[breadcrumb-disable-single-page]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[breadcrumb-disable-single-post]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[breadcrumb-disable-singular]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[breadcrumb-disable-404-page]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[breadcrumb-alignment]\";a:4:{s:7:\"default\";s:4:\"left\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[breadcrumb-spacing]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:45:\"astra-settings[breadcrumb-separator-selector]\";a:4:{s:7:\"default\";s:5:\"\\00BB\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[breadcrumb-separator]\";a:4:{s:7:\"default\";s:5:\"\\00bb\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:35:\"section-breadcrumb-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[breadcrumb-bg-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:50:\"astra-settings[breadcrumb-active-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[breadcrumb-separator-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[section-breadcrumb-link-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:48:\"astra-settings[breadcrumb-text-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[breadcrumb-hover-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[section-breadcrumb-typo]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[breadcrumb-font-family]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:36:\"astra-settings[breadcrumb-font-size]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[breadcrumb-font-weight]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:41:\"astra-settings[breadcrumb-text-transform]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[breadcrumb-line-height]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[heading-base-color]\";a:4:{s:7:\"default\";s:25:\"var(--ast-global-color-2)\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:38:\"astra-settings[button-text-typography]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[font-family-button]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:32:\"astra-settings[font-size-button]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[font-weight-button]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:37:\"astra-settings[text-transform-button]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:37:\"astra-settings[theme-btn-line-height]\";a:4:{s:7:\"default\";i:1;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[theme-btn-letter-spacing]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"section-header-builder-layout-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[cloned-component-track]\";a:4:{s:7:\"default\";a:12:{s:13:\"header-button\";i:2;s:13:\"footer-button\";i:2;s:11:\"header-html\";i:2;s:11:\"footer-html\";i:2;s:11:\"header-menu\";i:2;s:13:\"header-widget\";i:4;s:13:\"footer-widget\";i:4;s:19:\"header-social-icons\";i:1;s:19:\"footer-social-icons\";i:1;s:14:\"header-divider\";i:0;s:14:\"footer-divider\";i:0;s:13:\"removed-items\";a:0:{}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[builder-header]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[header-desktop-items]\";a:4:{s:7:\"default\";a:4:{s:5:\"popup\";a:1:{s:13:\"popup_content\";a:1:{i:0;s:11:\"mobile-menu\";}}s:5:\"above\";a:5:{s:10:\"above_left\";a:0:{}s:17:\"above_left_center\";a:0:{}s:12:\"above_center\";a:0:{}s:18:\"above_right_center\";a:0:{}s:11:\"above_right\";a:0:{}}s:7:\"primary\";a:5:{s:12:\"primary_left\";a:1:{i:0;s:4:\"logo\";}s:19:\"primary_left_center\";a:0:{}s:14:\"primary_center\";a:0:{}s:20:\"primary_right_center\";a:0:{}s:13:\"primary_right\";a:1:{i:0;s:6:\"menu-1\";}}s:5:\"below\";a:5:{s:10:\"below_left\";a:0:{}s:17:\"below_left_center\";a:0:{}s:12:\"below_center\";a:0:{}s:18:\"below_right_center\";a:0:{}s:11:\"below_right\";a:0:{}}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[header-desktop-draggable-items]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[header-mobile-items]\";a:4:{s:7:\"default\";a:4:{s:5:\"popup\";a:1:{s:13:\"popup_content\";a:1:{i:0;s:11:\"mobile-menu\";}}s:5:\"above\";a:3:{s:10:\"above_left\";a:0:{}s:12:\"above_center\";a:0:{}s:11:\"above_right\";a:0:{}}s:7:\"primary\";a:3:{s:12:\"primary_left\";a:1:{i:0;s:4:\"logo\";}s:14:\"primary_center\";a:0:{}s:13:\"primary_right\";a:1:{i:0;s:14:\"mobile-trigger\";}}s:5:\"below\";a:3:{s:10:\"below_left\";a:0:{}s:12:\"below_center\";a:0:{}s:11:\"below_right\";a:0:{}}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[header-mobile-draggable-items]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[header-mobile-popup-items]\";a:4:{s:7:\"default\";b:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[header-transparent-link-heading]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[header-transparant-link]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[hb-header-main-layout-width]\";a:4:{s:7:\"default\";s:7:\"content\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[section-header-builder-layout-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:46:\"section-footer-builder-layout-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:30:\"astra-settings[builder-footer]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[footer-bg-obj-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";a:7:{s:16:\"background-color\";s:7:\"#c91313\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";s:15:\"background-type\";s:5:\"color\";}s:6:\"tablet\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"mobile\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[footer-bg-obj-responsive-description]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";s:0:\"\";}s:36:\"astra-settings[footer-desktop-items]\";a:4:{s:7:\"default\";a:3:{s:5:\"above\";a:5:{s:7:\"above_1\";a:0:{}s:7:\"above_2\";a:0:{}s:7:\"above_3\";a:0:{}s:7:\"above_4\";a:0:{}s:7:\"above_5\";a:0:{}}s:7:\"primary\";a:5:{s:9:\"primary_1\";a:0:{}s:9:\"primary_2\";a:0:{}s:9:\"primary_3\";a:0:{}s:9:\"primary_4\";a:0:{}s:9:\"primary_5\";a:0:{}}s:5:\"below\";a:5:{s:7:\"below_1\";a:1:{i:0;s:9:\"copyright\";}s:7:\"below_2\";a:0:{}s:7:\"below_3\";a:0:{}s:7:\"below_4\";a:0:{}s:7:\"below_5\";a:0:{}}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[footer-draggable-items]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:53:\"astra-settings[section-footer-builder-layout-padding]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:52:\"astra-settings[section-footer-builder-layout-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:45:\"section-above-header-builder-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[hba-header-height]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";i:50;s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[hba-header-separator]\";a:4:{s:7:\"default\";i:1;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[hba-header-bottom-border-color]\";a:4:{s:7:\"default\";s:7:\"#eaeaea\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:44:\"astra-settings[hba-header-bg-obj-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";a:6:{s:16:\"background-color\";s:7:\"#ffffff\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"tablet\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"mobile\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[section-above-header-builder-padding]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:51:\"astra-settings[section-above-header-builder-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:56:\"astra-settings[section-above-header-builder-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:56:\"astra-settings[section-above-header-builder-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"section-below-header-builder-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[hbb-header-height]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";i:60;s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[hbb-header-separator]\";a:4:{s:7:\"default\";i:1;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[hbb-header-bottom-border-color]\";a:4:{s:7:\"default\";s:7:\"#eaeaea\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:44:\"astra-settings[hbb-header-bg-obj-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";a:6:{s:16:\"background-color\";s:7:\"#eeeeee\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"tablet\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"mobile\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[section-below-header-builder-padding]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:51:\"astra-settings[section-below-header-builder-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:56:\"astra-settings[section-below-header-builder-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:56:\"astra-settings[section-below-header-builder-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:60:\"astra-settings[astra-sidebar-widgets-header-widget-1-margin]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:65:\"astra-settings[astra-sidebar-widgets-header-widget-1-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:65:\"astra-settings[astra-sidebar-widgets-header-widget-1-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:60:\"astra-settings[astra-sidebar-widgets-header-widget-2-margin]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:65:\"astra-settings[astra-sidebar-widgets-header-widget-2-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:65:\"astra-settings[astra-sidebar-widgets-header-widget-2-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"section-header-mobile-trigger-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[header-trigger-icon]\";a:4:{s:7:\"default\";s:4:\"menu\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[mobile-header-toggle-btn-style]\";a:4:{s:7:\"default\";s:7:\"minimal\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[mobile-header-menu-label]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[mobile-header-toggle-icon-size]\";a:4:{s:7:\"default\";i:20;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[mobile-header-toggle-btn-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:49:\"astra-settings[mobile-header-toggle-btn-bg-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:52:\"astra-settings[mobile-header-toggle-btn-border-size]\";a:4:{s:7:\"default\";a:4:{s:3:\"top\";i:1;s:5:\"right\";i:1;s:6:\"bottom\";i:1;s:4:\"left\";i:1;}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[mobile-header-toggle-border-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:50:\"astra-settings[mobile-header-toggle-border-radius]\";a:4:{s:7:\"default\";i:2;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[section-header-mobile-trigger-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:45:\"astra-settings[mobile-header-label-font-size]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"section-popup-header-builder-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[mobile-header-type]\";a:4:{s:7:\"default\";s:8:\"dropdown\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:32:\"astra-settings[off-canvas-slide]\";a:4:{s:7:\"default\";s:5:\"right\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[header-builder-menu-toggle-target]\";a:4:{s:7:\"default\";s:4:\"icon\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:50:\"astra-settings[header-offcanvas-content-alignment]\";a:4:{s:7:\"default\";s:10:\"flex-start\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:37:\"astra-settings[off-canvas-background]\";a:4:{s:7:\"default\";a:6:{s:16:\"background-color\";s:7:\"#ffffff\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:23:\"sanitize_background_obj\";}}s:38:\"astra-settings[off-canvas-close-color]\";a:4:{s:7:\"default\";s:7:\"#3a3a3a\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:40:\"astra-settings[off-canvas-inner-spacing]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[off-canvas-padding]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"section-primary-header-builder-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:32:\"astra-settings[hb-header-height]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";i:70;s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[hb-header-main-sep]\";a:4:{s:7:\"default\";i:1;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[hb-header-main-sep-color]\";a:4:{s:7:\"default\";s:7:\"#eaeaea\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:43:\"astra-settings[hb-header-bg-obj-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";a:6:{s:16:\"background-color\";s:7:\"#ffffff\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"tablet\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"mobile\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[section-primary-header-builder-padding]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:53:\"astra-settings[section-primary-header-builder-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:58:\"astra-settings[section-primary-header-builder-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:58:\"astra-settings[section-primary-header-builder-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[logo-title-settings-link]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:30:\"title_tagline-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[title_tagline-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:41:\"astra-settings[title_tagline-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[title_tagline-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"section-hb-button-1-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[header-button1-text]\";a:4:{s:7:\"default\";s:6:\"Button\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[header-button1-link-option]\";a:4:{s:7:\"default\";a:3:{s:3:\"url\";s:23:\"https://www.wpastra.com\";s:7:\"new_tab\";b:0;s:8:\"link_rel\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:13:\"sanitize_link\";}}s:47:\"astra-settings[header-button1-text-color-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:53:\"astra-settings[header-button1-background-color-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[header-button1-text-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[header-button1-text-h-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[header-button1-back-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[header-button1-back-h-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[header-button1-border-size]\";a:4:{s:7:\"default\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:65:\"astra-settings[header-button1-builder-button-border-colors-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[header-button1-border-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[header-button1-border-h-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[header-button1-border-radius]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[header-button1-text-typography]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[header-button1-font-size]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[header-button1-font-family]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:42:\"astra-settings[header-button1-font-weight]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:45:\"astra-settings[header-button1-text-transform]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[header-button1-line-height]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[header-button1-letter-spacing]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[section-hb-button-1-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[section-hb-button-1-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[section-hb-button-1-padding]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:42:\"astra-settings[section-hb-button-1-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:45:\"astra-settings[section-hb-html-1-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[section-hb-html-1-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[font-size-section-hb-html-1]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:15;s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"section-hb-html-1-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:29:\"astra-settings[header-html-1]\";a:4:{s:7:\"default\";s:22:\"Insert HTML text here.\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[header-html-1color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[header-html-1-link-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[header-html-1link-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[header-html-1link-h-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[section-hb-html-1-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:45:\"astra-settings[section-hb-html-2-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[section-hb-html-2-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[font-size-section-hb-html-2]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";i:15;s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"section-hb-html-2-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:29:\"astra-settings[header-html-2]\";a:4:{s:7:\"default\";s:22:\"Insert HTML text here.\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[header-html-2color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[header-html-2-link-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[header-html-2link-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[header-html-2link-h-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[section-hb-html-2-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:45:\"astra-settings[section-hb-menu-1-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[section-hb-menu-1-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"section-hb-menu-1-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[header-menu1-create-menu-link]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[header-menu1-menu-hover-animation]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[header-menu1-submenu-heading]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[header-menu1-submenu-width]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:56:\"astra-settings[header-menu1-submenu-container-animation]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[header-menu1-submenu-container-divider]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:48:\"astra-settings[header-menu1-submenu-item-b-size]\";a:4:{s:7:\"default\";s:1:\"1\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[header-menu1-submenu-item-b-color]\";a:4:{s:7:\"default\";s:7:\"#eaeaea\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:47:\"astra-settings[header-menu1-submenu-top-offset]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[header-menu1-submenu-border]\";a:4:{s:7:\"default\";a:4:{s:3:\"top\";i:2;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:5:\"right\";i:0;}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[header-menu1-submenu-b-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:50:\"astra-settings[header-menu1-submenu-border-radius]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:48:\"astra-settings[header-menu1-submenu-item-border]\";a:4:{s:7:\"default\";b:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[header-menu1-menu-stack-on-mobile]\";a:4:{s:7:\"default\";b:1;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[section-hb-menu-1-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:40:\"astra-settings[header-menu1-text-colors]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[header-menu1-background-colors]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[header-menu1-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[header-menu1-bg-obj-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"tablet\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"mobile\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[header-menu1-h-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:50:\"astra-settings[header-menu1-h-bg-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[header-menu1-a-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:50:\"astra-settings[header-menu1-a-bg-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:51:\"astra-settings[header-menu1-header-menu-typography]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[header-menu1-font-family]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:40:\"astra-settings[header-menu1-font-weight]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:43:\"astra-settings[header-menu1-text-transform]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[header-menu1-font-size]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[header-menu1-line-height]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[header-menu1-menu-spacing]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:45:\"astra-settings[section-hb-menu-2-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[section-hb-menu-2-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"section-hb-menu-2-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[header-menu2-create-menu-link]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[header-menu2-menu-hover-animation]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[header-menu2-submenu-heading]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[header-menu2-submenu-width]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:56:\"astra-settings[header-menu2-submenu-container-animation]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[header-menu2-submenu-container-divider]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:48:\"astra-settings[header-menu2-submenu-item-b-size]\";a:4:{s:7:\"default\";s:1:\"1\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[header-menu2-submenu-item-b-color]\";a:4:{s:7:\"default\";s:7:\"#eaeaea\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:47:\"astra-settings[header-menu2-submenu-top-offset]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[header-menu2-submenu-border]\";a:4:{s:7:\"default\";a:4:{s:3:\"top\";i:2;s:6:\"bottom\";i:0;s:4:\"left\";i:0;s:5:\"right\";i:0;}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[header-menu2-submenu-b-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:50:\"astra-settings[header-menu2-submenu-border-radius]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:48:\"astra-settings[header-menu2-submenu-item-border]\";a:4:{s:7:\"default\";b:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[header-menu2-menu-stack-on-mobile]\";a:4:{s:7:\"default\";b:1;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[section-hb-menu-2-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:40:\"astra-settings[header-menu2-text-colors]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[header-menu2-background-colors]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[header-menu2-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[header-menu2-bg-obj-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"tablet\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"mobile\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[header-menu2-h-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:50:\"astra-settings[header-menu2-h-bg-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[header-menu2-a-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:50:\"astra-settings[header-menu2-a-bg-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:51:\"astra-settings[header-menu2-header-menu-typography]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[header-menu2-font-family]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:40:\"astra-settings[header-menu2-font-weight]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:43:\"astra-settings[header-menu2-text-transform]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[header-menu2-font-size]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[header-menu2-line-height]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[header-menu2-menu-spacing]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:38:\"section-header-search-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[header-search-icon-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[header-search-icon-space]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";i:18;s:6:\"tablet\";i:18;s:6:\"mobile\";i:18;}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[section-header-search-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:49:\"astra-settings[section-header-search-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[section-header-search-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:35:\"astra-settings[header-account-tabs]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[header-account-login-heading]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[header-account-login-style]\";a:4:{s:7:\"default\";s:4:\"icon\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[header-account-logged-in-text]\";a:4:{s:7:\"default\";s:10:\"My Account\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[header-account-login-link]\";a:4:{s:7:\"default\";a:3:{s:3:\"url\";s:0:\"\";s:7:\"new_tab\";b:0;s:8:\"link_rel\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:13:\"sanitize_link\";}}s:45:\"astra-settings[header-account-logout-heading]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[header-account-logout-style]\";a:4:{s:7:\"default\";s:4:\"icon\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[header-account-logout-preview]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[header-account-logged-out-text]\";a:4:{s:7:\"default\";s:6:\"Log In\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[header-account-logout-link]\";a:4:{s:7:\"default\";a:3:{s:3:\"url\";s:36:\"http://localhost/lobras/wp-login.php\";s:7:\"new_tab\";b:0;s:8:\"link_rel\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:13:\"sanitize_link\";}}s:42:\"astra-settings[header-account-image-width]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:2:\"40\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[header-account-icon-size]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";i:18;s:6:\"tablet\";i:18;s:6:\"mobile\";i:18;}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[header-account-icon-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:46:\"astra-settings[header-account-type-text-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:37:\"astra-settings[header-account-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:48:\"astra-settings[font-size-section-header-account]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:50:\"astra-settings[section-header-account-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:50:\"astra-settings[section-header-account-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:53:\"astra-settings[section-hb-social-icons-1-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:53:\"astra-settings[section-hb-social-icons-1-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:51:\"astra-settings[font-size-section-hb-social-icons-1]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"section-hb-social-icons-1-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:37:\"astra-settings[header-social-icons-1]\";a:4:{s:7:\"default\";a:1:{s:5:\"items\";a:3:{i:0;a:8:{s:2:\"id\";s:8:\"facebook\";s:7:\"enabled\";b:1;s:6:\"source\";s:4:\"icon\";s:3:\"url\";s:0:\"\";s:5:\"color\";s:7:\"#557dbc\";s:10:\"background\";s:11:\"transparent\";s:4:\"icon\";s:8:\"facebook\";s:5:\"label\";s:8:\"Facebook\";}i:1;a:8:{s:2:\"id\";s:7:\"twitter\";s:7:\"enabled\";b:1;s:6:\"source\";s:4:\"icon\";s:3:\"url\";s:0:\"\";s:5:\"color\";s:7:\"#7acdee\";s:10:\"background\";s:11:\"transparent\";s:4:\"icon\";s:7:\"twitter\";s:5:\"label\";s:7:\"Twitter\";}i:2;a:8:{s:2:\"id\";s:9:\"instagram\";s:7:\"enabled\";b:1;s:6:\"source\";s:4:\"icon\";s:3:\"url\";s:0:\"\";s:5:\"color\";s:7:\"#8a3ab9\";s:10:\"background\";s:11:\"transparent\";s:4:\"icon\";s:9:\"instagram\";s:5:\"label\";s:9:\"Instagram\";}}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[header-social-1-label-toggle]\";a:4:{s:7:\"default\";b:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:37:\"astra-settings[header-social-1-space]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[header-social-1-bg-space]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[header-social-1-size]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";i:18;s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[header-social-1-radius]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[header-social-1-color-type]\";a:4:{s:7:\"default\";s:6:\"custom\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:48:\"astra-settings[header-social-1-icon-color-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[header-social-1-label-color-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[header-social-1-background-color-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:37:\"astra-settings[header-social-1-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[header-social-1-h-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[header-social-1-label-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[header-social-1-label-h-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[header-social-1-bg-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[header-social-1-bg-h-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:48:\"astra-settings[section-hb-social-icons-1-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:43:\"section-header-mobile-menu-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:51:\"astra-settings[header-mobile-menu-create-menu-link]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[header-mobile-menu-submenu-item-border]\";a:4:{s:7:\"default\";b:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:57:\"astra-settings[header-mobile-menu-divider-colors-divider]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[header-mobile-menu-submenu-item-b-size]\";a:4:{s:7:\"default\";s:1:\"1\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:55:\"astra-settings[header-mobile-menu-submenu-item-b-color]\";a:4:{s:7:\"default\";s:7:\"#eaeaea\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:46:\"astra-settings[header-mobile-menu-link-colors]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[header-mobile-menu-background-colors]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:51:\"astra-settings[header-mobile-menu-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[header-mobile-menu-bg-obj-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"tablet\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"mobile\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:53:\"astra-settings[header-mobile-menu-h-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:56:\"astra-settings[header-mobile-menu-h-bg-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:53:\"astra-settings[header-mobile-menu-a-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:56:\"astra-settings[header-mobile-menu-a-bg-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:57:\"astra-settings[header-mobile-menu-header-menu-typography]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[header-mobile-menu-font-family]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";s:19:\"sanitize_text_field\";}s:46:\"astra-settings[header-mobile-menu-font-weight]\";a:4:{s:7:\"default\";s:7:\"inherit\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_font_weight\";}}s:49:\"astra-settings[header-mobile-menu-text-transform]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[header-mobile-menu-font-size]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[header-mobile-menu-line-height]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[header-mobile-menu-menu-spacing]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:49:\"astra-settings[section-header-mobile-menu-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:54:\"astra-settings[section-header-mobile-menu-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[section-header-mobile-menu-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"section-above-footer-builder-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[hba-footer-column]\";a:4:{s:7:\"default\";s:1:\"2\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[hba-footer-layout]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:7:\"2-equal\";s:6:\"tablet\";s:7:\"2-equal\";s:6:\"mobile\";s:4:\"full\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[hba-footer-layout-width]\";a:4:{s:7:\"default\";s:7:\"content\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[hba-footer-height]\";a:4:{s:7:\"default\";i:60;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[hba-footer-vertical-alignment]\";a:4:{s:7:\"default\";s:10:\"flex-start\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:25:\"astra-settings[hba-stack]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:5:\"stack\";s:6:\"tablet\";s:5:\"stack\";s:6:\"mobile\";s:5:\"stack\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[hba-footer-separator]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[hba-footer-top-border-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:44:\"astra-settings[hba-footer-bg-obj-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";a:6:{s:16:\"background-color\";s:7:\"#eeeeee\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"tablet\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"mobile\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[hba-inner-spacing]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[section-above-footer-builder-padding]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:51:\"astra-settings[section-above-footer-builder-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:56:\"astra-settings[section-above-footer-builder-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:56:\"astra-settings[section-above-footer-builder-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:57:\"astra-settings[section-above-footer-builder-hide-desktop]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"section-below-footer-builder-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[hbb-footer-column]\";a:4:{s:7:\"default\";s:1:\"1\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[hbb-footer-layout]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:4:\"full\";s:6:\"tablet\";s:4:\"full\";s:6:\"mobile\";s:4:\"full\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[hbb-footer-layout-width]\";a:4:{s:7:\"default\";s:7:\"content\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[hbb-footer-height]\";a:4:{s:7:\"default\";i:80;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[hbb-footer-vertical-alignment]\";a:4:{s:7:\"default\";s:10:\"flex-start\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:25:\"astra-settings[hbb-stack]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:5:\"stack\";s:6:\"tablet\";s:5:\"stack\";s:6:\"mobile\";s:5:\"stack\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[hbb-footer-separator]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[hbb-footer-top-border-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:44:\"astra-settings[hbb-footer-bg-obj-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";a:6:{s:16:\"background-color\";s:7:\"#eeeeee\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"tablet\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"mobile\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:33:\"astra-settings[hbb-inner-spacing]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[section-below-footer-builder-padding]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:51:\"astra-settings[section-below-footer-builder-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:56:\"astra-settings[section-below-footer-builder-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:56:\"astra-settings[section-below-footer-builder-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:57:\"astra-settings[section-below-footer-builder-hide-desktop]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"section-footer-copyright-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[footer-copyright-editor]\";a:4:{s:7:\"default\";s:82:\"Copyright [copyright] [current_year] [site_title] | Desenvolvido por Label Systems\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[footer-copyright-alignment]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:6:\"center\";s:6:\"tablet\";s:6:\"center\";s:6:\"mobile\";s:6:\"center\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[footer-copyright-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:47:\"astra-settings[section-footer-copyright-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:50:\"astra-settings[font-size-section-footer-copyright]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[section-footer-copyright-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:52:\"astra-settings[section-footer-copyright-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:53:\"astra-settings[section-footer-copyright-hide-desktop]\";a:4:{s:7:\"default\";b:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"section-footer-menu-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[footer-create-menu-link]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[footer-menu-layout]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:10:\"horizontal\";s:6:\"tablet\";s:8:\"vertical\";s:6:\"mobile\";s:8:\"vertical\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:37:\"astra-settings[footer-menu-alignment]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:6:\"center\";s:6:\"tablet\";s:6:\"center\";s:6:\"mobile\";s:6:\"center\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[footer-menu-link-colors]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[footer-menu-background-colors]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[footer-menu-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[footer-menu-bg-obj-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"tablet\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"mobile\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[footer-menu-h-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[footer-menu-h-bg-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[footer-menu-a-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[footer-menu-a-bg-color-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[footer-main-menu-spacing]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:1:\"0\";s:5:\"right\";s:2:\"20\";s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:2:\"20\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:42:\"astra-settings[section-footer-menu-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:37:\"astra-settings[footer-menu-font-size]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[section-footer-menu-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"astra-settings[section-footer-menu-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:48:\"astra-settings[section-footer-menu-hide-desktop]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:53:\"astra-settings[section-fb-social-icons-1-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:53:\"astra-settings[section-fb-social-icons-1-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[section-fb-social-icons-1-hide-desktop]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:51:\"astra-settings[font-size-section-fb-social-icons-1]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"section-fb-social-icons-1-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:37:\"astra-settings[footer-social-icons-1]\";a:4:{s:7:\"default\";a:1:{s:5:\"items\";a:3:{i:0;a:8:{s:2:\"id\";s:8:\"facebook\";s:7:\"enabled\";b:1;s:6:\"source\";s:4:\"icon\";s:3:\"url\";s:0:\"\";s:5:\"color\";s:7:\"#557dbc\";s:10:\"background\";s:11:\"transparent\";s:4:\"icon\";s:8:\"facebook\";s:5:\"label\";s:8:\"Facebook\";}i:1;a:8:{s:2:\"id\";s:7:\"twitter\";s:7:\"enabled\";b:1;s:6:\"source\";s:4:\"icon\";s:3:\"url\";s:0:\"\";s:5:\"color\";s:7:\"#7acdee\";s:10:\"background\";s:11:\"transparent\";s:4:\"icon\";s:7:\"twitter\";s:5:\"label\";s:7:\"Twitter\";}i:2;a:8:{s:2:\"id\";s:9:\"instagram\";s:7:\"enabled\";b:1;s:6:\"source\";s:4:\"icon\";s:3:\"url\";s:0:\"\";s:5:\"color\";s:7:\"#8a3ab9\";s:10:\"background\";s:11:\"transparent\";s:4:\"icon\";s:9:\"instagram\";s:5:\"label\";s:9:\"Instagram\";}}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[footer-social-1-label-toggle]\";a:4:{s:7:\"default\";b:0;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:37:\"astra-settings[footer-social-1-space]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[footer-social-1-bg-space]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:36:\"astra-settings[footer-social-1-size]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";i:18;s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[footer-social-1-radius]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[footer-social-1-color-type]\";a:4:{s:7:\"default\";s:6:\"custom\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:48:\"astra-settings[footer-social-1-icon-color-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:49:\"astra-settings[footer-social-1-label-color-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[footer-social-1-background-color-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:37:\"astra-settings[footer-social-1-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[footer-social-1-h-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[footer-social-1-label-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[footer-social-1-label-h-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[footer-social-1-bg-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:42:\"astra-settings[footer-social-1-bg-h-color]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:48:\"astra-settings[section-fb-social-icons-1-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:41:\"astra-settings[footer-social-1-alignment]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:6:\"center\";s:6:\"tablet\";s:6:\"center\";s:6:\"mobile\";s:6:\"center\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:47:\"section-primary-footer-builder-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:32:\"astra-settings[hb-footer-column]\";a:4:{s:7:\"default\";s:1:\"3\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:32:\"astra-settings[hb-footer-layout]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:7:\"3-equal\";s:6:\"tablet\";s:7:\"3-equal\";s:6:\"mobile\";s:4:\"full\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:38:\"astra-settings[hb-footer-layout-width]\";a:4:{s:7:\"default\";s:7:\"content\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:44:\"astra-settings[hb-footer-vertical-alignment]\";a:4:{s:7:\"default\";s:10:\"flex-start\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:24:\"astra-settings[hb-stack]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:5:\"stack\";s:6:\"tablet\";s:5:\"stack\";s:6:\"mobile\";s:5:\"stack\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[hb-footer-main-sep]\";a:4:{s:7:\"default\";i:1;s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[hb-footer-main-sep-color]\";a:4:{s:7:\"default\";s:7:\"#e6e6e6\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:20:\"sanitize_alpha_color\";}}s:43:\"astra-settings[hb-footer-bg-obj-responsive]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";a:6:{s:16:\"background-color\";s:7:\"#f9f9f9\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"tablet\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}s:6:\"mobile\";a:6:{s:16:\"background-color\";s:0:\"\";s:16:\"background-image\";s:0:\"\";s:17:\"background-repeat\";s:6:\"repeat\";s:19:\"background-position\";s:13:\"center center\";s:15:\"background-size\";s:4:\"auto\";s:21:\"background-attachment\";s:6:\"scroll\";}}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:32:\"astra-settings[hb-inner-spacing]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:54:\"astra-settings[section-primary-footer-builder-padding]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:53:\"astra-settings[section-primary-footer-builder-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:58:\"astra-settings[section-primary-footer-builder-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:58:\"astra-settings[section-primary-footer-builder-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:59:\"astra-settings[section-primary-footer-builder-hide-desktop]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[section-fb-html-1-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[section-fb-html-1-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[section-fb-html-1-hide-desktop]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[font-size-section-fb-html-1]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"section-fb-html-1-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:29:\"astra-settings[footer-html-1]\";a:4:{s:7:\"default\";s:22:\"Insert HTML text here.\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[footer-html-1color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[footer-html-1-link-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[footer-html-1link-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[footer-html-1link-h-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[section-fb-html-1-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:39:\"astra-settings[footer-html-1-alignment]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:6:\"center\";s:6:\"tablet\";s:6:\"center\";s:6:\"mobile\";s:6:\"center\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[section-fb-html-2-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:45:\"astra-settings[section-fb-html-2-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:46:\"astra-settings[section-fb-html-2-hide-desktop]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:43:\"astra-settings[font-size-section-fb-html-2]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"section-fb-html-2-ast-context-tabs\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:7:\"refresh\";s:17:\"sanitize_callback\";b:0;}s:29:\"astra-settings[footer-html-2]\";a:4:{s:7:\"default\";s:22:\"Insert HTML text here.\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:34:\"astra-settings[footer-html-2color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[footer-html-2-link-group]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:39:\"astra-settings[footer-html-2link-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:41:\"astra-settings[footer-html-2link-h-color]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:40:\"astra-settings[section-fb-html-2-margin]\";a:4:{s:7:\"default\";a:6:{s:7:\"desktop\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:6:\"mobile\";a:4:{s:3:\"top\";s:0:\"\";s:5:\"right\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";}s:12:\"desktop-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:11:\"mobile-unit\";s:2:\"px\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:39:\"astra-settings[footer-html-2-alignment]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:6:\"center\";s:6:\"tablet\";s:6:\"center\";s:6:\"mobile\";s:6:\"center\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:60:\"astra-settings[astra-sidebar-widgets-footer-widget-1-margin]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:41:\"astra-settings[footer-widget-alignment-1]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:4:\"left\";s:6:\"tablet\";s:6:\"center\";s:6:\"mobile\";s:6:\"center\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:65:\"astra-settings[astra-sidebar-widgets-footer-widget-1-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:65:\"astra-settings[astra-sidebar-widgets-footer-widget-1-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:66:\"astra-settings[astra-sidebar-widgets-footer-widget-1-hide-desktop]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:60:\"astra-settings[astra-sidebar-widgets-footer-widget-2-margin]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:41:\"astra-settings[footer-widget-alignment-2]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:4:\"left\";s:6:\"tablet\";s:6:\"center\";s:6:\"mobile\";s:6:\"center\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:65:\"astra-settings[astra-sidebar-widgets-footer-widget-2-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:65:\"astra-settings[astra-sidebar-widgets-footer-widget-2-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:66:\"astra-settings[astra-sidebar-widgets-footer-widget-2-hide-desktop]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:60:\"astra-settings[astra-sidebar-widgets-footer-widget-3-margin]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:41:\"astra-settings[footer-widget-alignment-3]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:4:\"left\";s:6:\"tablet\";s:6:\"center\";s:6:\"mobile\";s:6:\"center\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:65:\"astra-settings[astra-sidebar-widgets-footer-widget-3-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:65:\"astra-settings[astra-sidebar-widgets-footer-widget-3-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:66:\"astra-settings[astra-sidebar-widgets-footer-widget-3-hide-desktop]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:60:\"astra-settings[astra-sidebar-widgets-footer-widget-4-margin]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";a:2:{i:0;s:26:\"Astra_Customizer_Sanitizes\";i:1;s:27:\"sanitize_responsive_spacing\";}}s:41:\"astra-settings[footer-widget-alignment-4]\";a:4:{s:7:\"default\";a:3:{s:7:\"desktop\";s:4:\"left\";s:6:\"tablet\";s:6:\"center\";s:6:\"mobile\";s:6:\"center\";}s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:65:\"astra-settings[astra-sidebar-widgets-footer-widget-4-hide-tablet]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:65:\"astra-settings[astra-sidebar-widgets-footer-widget-4-hide-mobile]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}s:66:\"astra-settings[astra-sidebar-widgets-footer-widget-4-hide-desktop]\";a:4:{s:7:\"default\";s:0:\"\";s:4:\"type\";s:6:\"option\";s:9:\"transport\";s:11:\"postMessage\";s:17:\"sanitize_callback\";b:0;}}s:8:\"partials\";a:40:{s:37:\"astra-settings[different-retina-logo]\";a:4:{s:8:\"selector\";s:14:\".site-branding\";s:15:\"render_callback\";s:35:\"Astra_Builder_Header::site_identity\";s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:38:\"astra-settings[ast-header-retina-logo]\";a:4:{s:8:\"selector\";s:14:\".site-branding\";s:15:\"render_callback\";s:35:\"Astra_Builder_Header::site_identity\";s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:37:\"astra-settings[different-mobile-logo]\";a:4:{s:8:\"selector\";s:14:\".site-branding\";s:15:\"render_callback\";s:35:\"Astra_Builder_Header::site_identity\";s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:45:\"astra-settings[display-site-title-responsive]\";a:4:{s:8:\"selector\";s:14:\".site-branding\";s:15:\"render_callback\";s:35:\"Astra_Builder_Header::site_identity\";s:18:\"containerInclusive\";b:1;s:15:\"fallbackRefresh\";b:1;}s:47:\"astra-settings[display-site-tagline-responsive]\";a:4:{s:8:\"selector\";s:14:\".site-branding\";s:15:\"render_callback\";s:35:\"Astra_Builder_Header::site_identity\";s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:33:\"astra-settings[logo-title-inline]\";a:4:{s:8:\"selector\";s:14:\".site-branding\";s:15:\"render_callback\";s:35:\"Astra_Builder_Header::site_identity\";s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:35:\"astra-settings[related-posts-title]\";a:4:{s:8:\"selector\";s:57:\".ast-related-posts-title-section .ast-related-posts-title\";s:15:\"render_callback\";a:2:{i:0;s:26:\"Astra_Related_Posts_Loader\";i:1;s:26:\"render_related_posts_title\";}s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:39:\"astra-settings[transparent-header-logo]\";a:4:{s:8:\"selector\";s:64:\".ast-replace-site-logo-transparent .site-branding .site-logo-img\";s:15:\"render_callback\";s:0:\"\";s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:35:\"astra-settings[breadcrumb-position]\";a:4:{s:8:\"selector\";s:54:\".ast-breadcrumbs-wrapper .ast-breadcrumbs .trail-items\";s:15:\"render_callback\";s:0:\"\";s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:36:\"astra-settings[header-desktop-items]\";a:4:{s:8:\"selector\";s:9:\"#masthead\";s:15:\"render_callback\";a:2:{i:0;O:20:\"Astra_Builder_Header\":0:{}i:1;s:21:\"header_builder_markup\";}s:18:\"containerInclusive\";b:1;s:15:\"fallbackRefresh\";b:1;}s:35:\"astra-settings[header-mobile-items]\";a:4:{s:8:\"selector\";s:9:\"#masthead\";s:15:\"render_callback\";a:2:{i:0;r:5214;i:1;s:21:\"header_builder_markup\";}s:18:\"containerInclusive\";b:1;s:15:\"fallbackRefresh\";b:1;}s:41:\"astra-settings[header-mobile-popup-items]\";a:4:{s:8:\"selector\";s:25:\"#ast-mobile-popup-wrapper\";s:15:\"render_callback\";a:2:{i:0;r:5214;i:1;s:12:\"mobile_popup\";}s:18:\"containerInclusive\";b:1;s:15:\"fallbackRefresh\";b:1;}s:36:\"astra-settings[footer-desktop-items]\";a:4:{s:8:\"selector\";s:12:\".site-footer\";s:15:\"render_callback\";a:2:{i:0;O:20:\"Astra_Builder_Footer\":0:{}i:1;s:13:\"footer_markup\";}s:18:\"containerInclusive\";b:1;s:15:\"fallbackRefresh\";b:1;}s:35:\"astra-settings[header-trigger-icon]\";a:4:{s:8:\"selector\";s:16:\".ast-button-wrap\";s:15:\"render_callback\";a:2:{i:0;s:27:\"Astra_Builder_UI_Controller\";i:1;s:21:\"render_mobile_trigger\";}s:18:\"containerInclusive\";s:0:\"\";s:15:\"fallbackRefresh\";b:1;}s:46:\"astra-settings[mobile-header-toggle-btn-style]\";a:4:{s:8:\"selector\";s:16:\".ast-button-wrap\";s:15:\"render_callback\";a:2:{i:0;s:27:\"Astra_Builder_UI_Controller\";i:1;s:21:\"render_mobile_trigger\";}s:18:\"containerInclusive\";s:0:\"\";s:15:\"fallbackRefresh\";b:1;}s:40:\"astra-settings[mobile-header-menu-label]\";a:4:{s:8:\"selector\";s:16:\".ast-button-wrap\";s:15:\"render_callback\";a:2:{i:0;s:27:\"Astra_Builder_UI_Controller\";i:1;s:21:\"render_mobile_trigger\";}s:18:\"containerInclusive\";s:0:\"\";s:15:\"fallbackRefresh\";b:1;}s:35:\"astra-settings[header-button1-text]\";a:4:{s:8:\"selector\";s:20:\".ast-header-button-1\";s:15:\"render_callback\";a:2:{i:0;r:5214;i:1;s:8:\"button_1\";}s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:0;}s:42:\"astra-settings[header-button1-link-option]\";a:4:{s:8:\"selector\";s:20:\".ast-header-button-1\";s:15:\"render_callback\";a:2:{i:0;r:5214;i:1;s:8:\"button_1\";}s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:29:\"astra-settings[header-html-1]\";a:4:{s:8:\"selector\";s:18:\".ast-header-html-1\";s:15:\"render_callback\";a:2:{i:0;r:5214;i:1;s:13:\"header_html_1\";}s:18:\"containerInclusive\";s:0:\"\";s:15:\"fallbackRefresh\";b:0;}s:29:\"astra-settings[header-html-2]\";a:4:{s:8:\"selector\";s:18:\".ast-header-html-2\";s:15:\"render_callback\";a:2:{i:0;r:5214;i:1;s:13:\"header_html_2\";}s:18:\"containerInclusive\";s:0:\"\";s:15:\"fallbackRefresh\";b:0;}s:42:\"astra-settings[header-account-login-style]\";a:4:{s:8:\"selector\";s:19:\".ast-header-account\";s:15:\"render_callback\";a:2:{i:0;s:27:\"Astra_Builder_UI_Controller\";i:1;s:14:\"render_account\";}s:18:\"containerInclusive\";s:0:\"\";s:15:\"fallbackRefresh\";b:1;}s:45:\"astra-settings[header-account-logged-in-text]\";a:4:{s:8:\"selector\";s:19:\".ast-header-account\";s:15:\"render_callback\";a:2:{i:0;s:27:\"Astra_Builder_UI_Controller\";i:1;s:14:\"render_account\";}s:18:\"containerInclusive\";s:0:\"\";s:15:\"fallbackRefresh\";b:1;}s:41:\"astra-settings[header-account-login-link]\";a:4:{s:8:\"selector\";s:19:\".ast-header-account\";s:15:\"render_callback\";a:2:{i:0;s:27:\"Astra_Builder_UI_Controller\";i:1;s:14:\"render_account\";}s:18:\"containerInclusive\";s:0:\"\";s:15:\"fallbackRefresh\";b:1;}s:43:\"astra-settings[header-account-logout-style]\";a:4:{s:8:\"selector\";s:19:\".ast-header-account\";s:15:\"render_callback\";a:2:{i:0;s:27:\"Astra_Builder_UI_Controller\";i:1;s:14:\"render_account\";}s:18:\"containerInclusive\";s:0:\"\";s:15:\"fallbackRefresh\";b:1;}s:45:\"astra-settings[header-account-logout-preview]\";a:4:{s:8:\"selector\";s:19:\".ast-header-account\";s:15:\"render_callback\";a:2:{i:0;s:27:\"Astra_Builder_UI_Controller\";i:1;s:14:\"render_account\";}s:18:\"containerInclusive\";s:0:\"\";s:15:\"fallbackRefresh\";b:1;}s:46:\"astra-settings[header-account-logged-out-text]\";a:4:{s:8:\"selector\";s:19:\".ast-header-account\";s:15:\"render_callback\";a:2:{i:0;s:27:\"Astra_Builder_UI_Controller\";i:1;s:14:\"render_account\";}s:18:\"containerInclusive\";s:0:\"\";s:15:\"fallbackRefresh\";b:1;}s:37:\"astra-settings[header-social-icons-1]\";a:4:{s:8:\"selector\";s:25:\".ast-header-social-1-wrap\";s:15:\"render_callback\";a:2:{i:0;r:5214;i:1;s:15:\"header_social_1\";}s:18:\"containerInclusive\";b:1;s:15:\"fallbackRefresh\";b:0;}s:44:\"astra-settings[header-social-1-label-toggle]\";a:4:{s:8:\"selector\";s:25:\".ast-header-social-1-wrap\";s:15:\"render_callback\";a:2:{i:0;r:5214;i:1;s:15:\"header_social_1\";}s:18:\"containerInclusive\";b:1;s:15:\"fallbackRefresh\";b:0;}s:33:\"astra-settings[hba-footer-column]\";a:4:{s:8:\"selector\";s:23:\".site-above-footer-wrap\";s:15:\"render_callback\";a:2:{i:0;r:5235;i:1;s:12:\"above_footer\";}s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:25:\"astra-settings[hba-stack]\";a:4:{s:8:\"selector\";s:23:\".site-above-footer-wrap\";s:15:\"render_callback\";a:2:{i:0;r:5235;i:1;s:12:\"above_footer\";}s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:33:\"astra-settings[hbb-footer-column]\";a:4:{s:8:\"selector\";s:23:\".site-below-footer-wrap\";s:15:\"render_callback\";a:2:{i:0;r:5235;i:1;s:12:\"below_footer\";}s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:25:\"astra-settings[hbb-stack]\";a:4:{s:8:\"selector\";s:23:\".site-below-footer-wrap\";s:15:\"render_callback\";a:2:{i:0;r:5235;i:1;s:12:\"below_footer\";}s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:39:\"astra-settings[footer-copyright-editor]\";a:4:{s:8:\"selector\";s:21:\".ast-footer-copyright\";s:15:\"render_callback\";a:2:{i:0;r:5235;i:1;s:16:\"footer_copyright\";}s:18:\"containerInclusive\";b:1;s:15:\"fallbackRefresh\";b:1;}s:34:\"astra-settings[footer-menu-layout]\";a:4:{s:8:\"selector\";s:59:\".footer-widget-area[data-section=\"section-footer-menu\"] nav\";s:15:\"render_callback\";a:2:{i:0;r:5235;i:1;s:11:\"footer_menu\";}s:18:\"containerInclusive\";b:1;s:15:\"fallbackRefresh\";b:1;}s:37:\"astra-settings[footer-social-icons-1]\";a:4:{s:8:\"selector\";s:25:\".ast-footer-social-1-wrap\";s:15:\"render_callback\";a:2:{i:0;r:5235;i:1;s:15:\"footer_social_1\";}s:18:\"containerInclusive\";b:1;s:15:\"fallbackRefresh\";b:0;}s:44:\"astra-settings[footer-social-1-label-toggle]\";a:4:{s:8:\"selector\";s:25:\".ast-footer-social-1-wrap\";s:15:\"render_callback\";a:2:{i:0;r:5235;i:1;s:15:\"footer_social_1\";}s:18:\"containerInclusive\";b:1;s:15:\"fallbackRefresh\";b:0;}s:32:\"astra-settings[hb-footer-column]\";a:4:{s:8:\"selector\";s:25:\".site-primary-footer-wrap\";s:15:\"render_callback\";a:2:{i:0;r:5235;i:1;s:14:\"primary_footer\";}s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:24:\"astra-settings[hb-stack]\";a:4:{s:8:\"selector\";s:25:\".site-primary-footer-wrap\";s:15:\"render_callback\";a:2:{i:0;r:5235;i:1;s:14:\"primary_footer\";}s:18:\"containerInclusive\";b:0;s:15:\"fallbackRefresh\";b:1;}s:29:\"astra-settings[footer-html-1]\";a:4:{s:8:\"selector\";s:18:\".ast-footer-html-1\";s:15:\"render_callback\";a:2:{i:0;r:5235;i:1;s:13:\"footer_html_1\";}s:18:\"containerInclusive\";s:0:\"\";s:15:\"fallbackRefresh\";b:0;}s:29:\"astra-settings[footer-html-2]\";a:4:{s:8:\"selector\";s:18:\".ast-footer-html-2\";s:15:\"render_callback\";a:2:{i:0;r:5235;i:1;s:13:\"footer_html_2\";}s:18:\"containerInclusive\";s:0:\"\";s:15:\"fallbackRefresh\";b:0;}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2022/06/astra.3.8.2.zip'),
(4, 5, '_wp_attachment_context', 'upgrader'),
(9, 8, '_menu_item_type', 'custom'),
(10, 8, '_menu_item_menu_item_parent', '0'),
(11, 8, '_menu_item_object_id', '8'),
(12, 8, '_menu_item_object', 'custom'),
(13, 8, '_menu_item_target', ''),
(14, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(15, 8, '_menu_item_xfn', ''),
(16, 8, '_menu_item_url', 'http://localhost/lobras/'),
(17, 8, '_menu_item_orphaned', '1654283450'),
(18, 9, '_wp_trash_meta_status', 'publish'),
(19, 9, '_wp_trash_meta_time', '1654283551'),
(20, 10, '_edit_lock', '1654284778:1'),
(22, 11, '_customize_changeset_uuid', '48f33507-788f-4eb4-80aa-5ed9a22f42bb'),
(24, 12, '_customize_changeset_uuid', '48f33507-788f-4eb4-80aa-5ed9a22f42bb'),
(26, 13, '_customize_changeset_uuid', '48f33507-788f-4eb4-80aa-5ed9a22f42bb'),
(28, 14, '_customize_changeset_uuid', '48f33507-788f-4eb4-80aa-5ed9a22f42bb'),
(30, 15, '_customize_changeset_uuid', '48f33507-788f-4eb4-80aa-5ed9a22f42bb'),
(31, 16, '_menu_item_type', 'custom'),
(32, 16, '_menu_item_menu_item_parent', '0'),
(33, 16, '_menu_item_object_id', '16'),
(34, 16, '_menu_item_object', 'custom'),
(35, 16, '_menu_item_target', ''),
(36, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 16, '_menu_item_xfn', ''),
(38, 16, '_menu_item_url', 'http://localhost/lobras'),
(39, 22, '_menu_item_type', 'post_type'),
(40, 22, '_menu_item_menu_item_parent', '0'),
(41, 22, '_menu_item_object_id', '11'),
(42, 22, '_menu_item_object', 'page'),
(43, 22, '_menu_item_target', ''),
(44, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 22, '_menu_item_xfn', ''),
(46, 22, '_menu_item_url', ''),
(47, 23, '_menu_item_type', 'post_type'),
(48, 23, '_menu_item_menu_item_parent', '0'),
(49, 23, '_menu_item_object_id', '12'),
(50, 23, '_menu_item_object', 'page'),
(51, 23, '_menu_item_target', ''),
(52, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 23, '_menu_item_xfn', ''),
(54, 23, '_menu_item_url', ''),
(55, 24, '_menu_item_type', 'post_type'),
(56, 24, '_menu_item_menu_item_parent', '0'),
(57, 24, '_menu_item_object_id', '13'),
(58, 24, '_menu_item_object', 'page'),
(59, 24, '_menu_item_target', ''),
(60, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(61, 24, '_menu_item_xfn', ''),
(62, 24, '_menu_item_url', ''),
(63, 25, '_menu_item_type', 'post_type'),
(64, 25, '_menu_item_menu_item_parent', '0'),
(65, 25, '_menu_item_object_id', '14'),
(66, 25, '_menu_item_object', 'page'),
(67, 25, '_menu_item_target', ''),
(68, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 25, '_menu_item_xfn', ''),
(70, 25, '_menu_item_url', ''),
(71, 26, '_menu_item_type', 'post_type'),
(72, 26, '_menu_item_menu_item_parent', '0'),
(73, 26, '_menu_item_object_id', '15'),
(74, 26, '_menu_item_object', 'page'),
(75, 26, '_menu_item_target', ''),
(76, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 26, '_menu_item_xfn', ''),
(78, 26, '_menu_item_url', ''),
(79, 10, '_wp_trash_meta_status', 'publish'),
(80, 10, '_wp_trash_meta_time', '1654284799'),
(81, 27, '_wp_trash_meta_status', 'publish'),
(82, 27, '_wp_trash_meta_time', '1654284819'),
(83, 28, '_edit_lock', '1654284903:1'),
(84, 28, '_wp_trash_meta_status', 'publish'),
(85, 28, '_wp_trash_meta_time', '1654284906'),
(86, 29, '_edit_lock', '1654284963:1'),
(87, 29, '_wp_trash_meta_status', 'publish'),
(88, 29, '_wp_trash_meta_time', '1654284983'),
(89, 30, '_edit_lock', '1654285079:1'),
(91, 31, '_customize_changeset_uuid', '96864436-b14b-404a-884a-bcbe5244e348'),
(93, 32, '_customize_changeset_uuid', '96864436-b14b-404a-884a-bcbe5244e348'),
(94, 35, '_menu_item_type', 'post_type'),
(95, 35, '_menu_item_menu_item_parent', '0'),
(96, 35, '_menu_item_object_id', '31'),
(97, 35, '_menu_item_object', 'page'),
(98, 35, '_menu_item_target', ''),
(99, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 35, '_menu_item_xfn', ''),
(101, 35, '_menu_item_url', ''),
(102, 36, '_menu_item_type', 'post_type'),
(103, 36, '_menu_item_menu_item_parent', '0'),
(104, 36, '_menu_item_object_id', '32'),
(105, 36, '_menu_item_object', 'page'),
(106, 36, '_menu_item_target', ''),
(107, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 36, '_menu_item_xfn', ''),
(109, 36, '_menu_item_url', ''),
(110, 30, '_wp_trash_meta_status', 'publish'),
(111, 30, '_wp_trash_meta_time', '1654285107'),
(112, 37, '_wp_trash_meta_status', 'publish'),
(113, 37, '_wp_trash_meta_time', '1654285179');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
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
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-06-03 15:48:15', '2022-06-03 18:48:15', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2022-06-03 15:48:15', '2022-06-03 18:48:15', '', 0, 'http://localhost/lobras/?p=1', 0, 'post', '', 1),
(2, 1, '2022-06-03 15:48:15', '2022-06-03 18:48:15', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/lobras/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2022-06-03 15:48:15', '2022-06-03 18:48:15', '', 0, 'http://localhost/lobras/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-06-03 15:48:15', '2022-06-03 18:48:15', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/lobras.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde seus dados são enviados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2022-06-03 15:48:15', '2022-06-03 18:48:15', '', 0, 'http://localhost/lobras/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-06-03 15:49:09', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-06-03 15:49:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/lobras/?p=4', 0, 'post', '', 0),
(5, 1, '2022-06-03 16:03:19', '2022-06-03 19:03:19', 'http://localhost/lobras/wp-content/uploads/2022/06/astra.3.8.2.zip', 'astra.3.8.2.zip', '', 'private', 'open', 'closed', '', 'astra-3-8-2-zip', '', '', '2022-06-03 16:03:19', '2022-06-03 19:03:19', '', 0, 'http://localhost/lobras/wp-content/uploads/2022/06/astra.3.8.2.zip', 0, 'attachment', '', 0),
(8, 1, '2022-06-03 16:10:50', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-06-03 16:10:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/lobras/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2022-06-03 16:12:31', '2022-06-03 19:12:31', '{\n    \"woostify::nav_menu_locations[primary]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:12:31\"\n    },\n    \"woostify::nav_menu_locations[mobile]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:12:31\"\n    },\n    \"woostify::nav_menu_locations[mobile_categories]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:12:31\"\n    },\n    \"nav_menu[-3321021108104861700]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:12:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9746d803-51a3-4793-b02a-63a6812eed8f', '', '', '2022-06-03 16:12:31', '2022-06-03 19:12:31', '', 0, 'http://localhost/lobras/2022/06/03/9746d803-51a3-4793-b02a-63a6812eed8f/', 0, 'customize_changeset', '', 0),
(10, 1, '2022-06-03 16:33:18', '2022-06-03 19:33:18', '{\n    \"astra-settings[breadcrumb-position]\": {\n        \"value\": \"astra_header_after\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:20:06\"\n    },\n    \"astra-settings[breadcrumb-disable-home-page]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:20:06\"\n    },\n    \"astra-settings[breadcrumb-separator-selector]\": {\n        \"value\": \"\\\\00BB\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:20:06\"\n    },\n    \"astra-settings[footer-bg-obj-responsive]\": {\n        \"value\": {\n            \"desktop\": {\n                \"background-color\": \"#c91313\",\n                \"background-image\": \"\",\n                \"background-repeat\": \"repeat\",\n                \"background-position\": \"center center\",\n                \"background-size\": \"auto\",\n                \"background-attachment\": \"scroll\",\n                \"background-type\": \"color\"\n            },\n            \"tablet\": {\n                \"background-color\": \"\",\n                \"background-image\": \"\",\n                \"background-repeat\": \"repeat\",\n                \"background-position\": \"center center\",\n                \"background-size\": \"auto\",\n                \"background-attachment\": \"scroll\"\n            },\n            \"mobile\": {\n                \"background-color\": \"\",\n                \"background-image\": \"\",\n                \"background-repeat\": \"repeat\",\n                \"background-position\": \"center center\",\n                \"background-size\": \"auto\",\n                \"background-attachment\": \"scroll\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:21:06\"\n    },\n    \"astra-settings[content-bg-obj-responsive]\": {\n        \"value\": {\n            \"desktop\": {\n                \"background-color\": \"var(--ast-global-color-5)\",\n                \"background-image\": \"\",\n                \"background-repeat\": \"repeat\",\n                \"background-position\": \"center center\",\n                \"background-size\": \"auto\",\n                \"background-attachment\": \"scroll\",\n                \"background-type\": \"\",\n                \"background-media\": \"\"\n            },\n            \"tablet\": {\n                \"background-color\": \"var(--ast-global-color-5)\",\n                \"background-image\": \"\",\n                \"background-repeat\": \"repeat\",\n                \"background-position\": \"center center\",\n                \"background-size\": \"auto\",\n                \"background-attachment\": \"scroll\",\n                \"background-type\": \"\",\n                \"background-media\": \"\"\n            },\n            \"mobile\": {\n                \"background-color\": \"var(--ast-global-color-5)\",\n                \"background-image\": \"\",\n                \"background-repeat\": \"repeat\",\n                \"background-position\": \"center center\",\n                \"background-size\": \"auto\",\n                \"background-attachment\": \"scroll\",\n                \"background-type\": \"\",\n                \"background-media\": \"\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:22:06\"\n    },\n    \"astra-settings[global-color-palette]\": {\n        \"value\": {\n            \"palette\": [\n                \"#0170B9\",\n                \"#3a3a3a\",\n                \"#3a3a3a\",\n                \"#4B4F58\",\n                \"#F5F5F5\",\n                \"#FFFFFF\",\n                \"#F2F5F7\",\n                \"#424242\",\n                \"#000000\"\n            ],\n            \"flag\": true\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:23:06\"\n    },\n    \"astra-color-palettes\": {\n        \"value\": {\n            \"currentPalette\": \"palette_1\",\n            \"palettes\": {\n                \"palette_1\": [\n                    \"#0170B9\",\n                    \"#3a3a3a\",\n                    \"#3a3a3a\",\n                    \"#4B4F58\",\n                    \"#F5F5F5\",\n                    \"#FFFFFF\",\n                    \"#F2F5F7\",\n                    \"#424242\",\n                    \"#000000\"\n                ],\n                \"palette_2\": [\n                    \"#0170B9\",\n                    \"#3a3a3a\",\n                    \"#3a3a3a\",\n                    \"#4B4F58\",\n                    \"#F5F5F5\",\n                    \"#FFFFFF\",\n                    \"#F2F5F7\",\n                    \"#424242\",\n                    \"#000000\"\n                ],\n                \"palette_3\": [\n                    \"#0170B9\",\n                    \"#3a3a3a\",\n                    \"#3a3a3a\",\n                    \"#4B4F58\",\n                    \"#F5F5F5\",\n                    \"#FFFFFF\",\n                    \"#F2F5F7\",\n                    \"#424242\",\n                    \"#000000\"\n                ]\n            },\n            \"flag\": true\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:23:06\"\n    },\n    \"astra-settings[load-google-fonts-locally]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:22:06\"\n    },\n    \"astra-settings[preload-local-fonts]\": {\n        \"value\": true,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:22:06\"\n    },\n    \"astra-settings[site-content-layout]\": {\n        \"value\": \"plain-container\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:23:06\"\n    },\n    \"astra-settings[single-page-content-layout]\": {\n        \"value\": \"boxed-container\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:23:06\"\n    },\n    \"astra-settings[site-layout-outside-bg-obj-responsive]\": {\n        \"value\": {\n            \"desktop\": {\n                \"background-color\": \"\",\n                \"background-image\": \"\",\n                \"background-repeat\": \"repeat\",\n                \"background-position\": \"center center\",\n                \"background-size\": \"auto\",\n                \"background-attachment\": \"scroll\",\n                \"background-type\": \"\",\n                \"background-media\": \"\"\n            },\n            \"tablet\": {\n                \"background-color\": \"\",\n                \"background-image\": \"\",\n                \"background-repeat\": \"repeat\",\n                \"background-position\": \"center center\",\n                \"background-size\": \"auto\",\n                \"background-attachment\": \"scroll\",\n                \"background-type\": \"\",\n                \"background-media\": \"\"\n            },\n            \"mobile\": {\n                \"background-color\": \"\",\n                \"background-image\": \"\",\n                \"background-repeat\": \"repeat\",\n                \"background-position\": \"center center\",\n                \"background-size\": \"auto\",\n                \"background-attachment\": \"scroll\",\n                \"background-type\": \"\",\n                \"background-media\": \"\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:23:06\"\n    },\n    \"astra-settings[archive-post-content-layout]\": {\n        \"value\": \"boxed-container\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[body-font-family]\": {\n        \"value\": \"\'Karla\', sans-serif\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[body-font-variant]\": {\n        \"value\": \"400\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[font-size-body]\": {\n        \"value\": {\n            \"desktop\": 17,\n            \"tablet\": 17,\n            \"mobile\": 17,\n            \"desktop-unit\": \"px\",\n            \"tablet-unit\": \"px\",\n            \"mobile-unit\": \"px\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[body-line-height]\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[headings-font-family]\": {\n        \"value\": \"\'Rubik\', sans-serif\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[headings-font-variant]\": {\n        \"value\": \"500\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[font-size-h1]\": {\n        \"value\": {\n            \"desktop\": 48,\n            \"tablet\": 40,\n            \"mobile\": 36,\n            \"desktop-unit\": \"px\",\n            \"tablet-unit\": \"px\",\n            \"mobile-unit\": \"px\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[line-height-h1]\": {\n        \"value\": 1.3,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[font-size-h2]\": {\n        \"value\": {\n            \"desktop\": 38,\n            \"tablet\": 32,\n            \"mobile\": 28,\n            \"desktop-unit\": \"px\",\n            \"tablet-unit\": \"px\",\n            \"mobile-unit\": \"px\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[line-height-h2]\": {\n        \"value\": 1.3,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[font-size-h3]\": {\n        \"value\": {\n            \"desktop\": 30,\n            \"tablet\": 26,\n            \"mobile\": 22,\n            \"desktop-unit\": \"px\",\n            \"tablet-unit\": \"px\",\n            \"mobile-unit\": \"px\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[line-height-h3]\": {\n        \"value\": 1.3,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[font-size-h4]\": {\n        \"value\": {\n            \"desktop\": 24,\n            \"tablet\": 20,\n            \"mobile\": 18,\n            \"desktop-unit\": \"px\",\n            \"tablet-unit\": \"px\",\n            \"mobile-unit\": \"px\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[line-height-h4]\": {\n        \"value\": 1.3,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[font-size-h5]\": {\n        \"value\": {\n            \"desktop\": 21,\n            \"tablet\": 17,\n            \"mobile\": 15,\n            \"desktop-unit\": \"px\",\n            \"tablet-unit\": \"px\",\n            \"mobile-unit\": \"px\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[line-height-h5]\": {\n        \"value\": 1.3,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[font-size-h6]\": {\n        \"value\": {\n            \"desktop\": 17,\n            \"tablet\": 15,\n            \"mobile\": 14,\n            \"desktop-unit\": \"px\",\n            \"tablet-unit\": \"px\",\n            \"mobile-unit\": \"px\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-settings[line-height-h6]\": {\n        \"value\": 1.3,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"astra-typography-presets\": {\n        \"value\": \"typo-preset-05\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:24:06\"\n    },\n    \"nav_menu[2]\": {\n        \"value\": {\n            \"name\": \"menu_topo\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:25:06\"\n    },\n    \"nav_menu_item[-2391936668680737000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"In\\u00edcio\",\n            \"url\": \"http://localhost/lobras\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"In\\u00edcio\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Link personalizado\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:26:04\"\n    },\n    \"nav_menu_item[-8748256432071782000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:25:06\"\n    },\n    \"nav_menu_item[-8237525272212525000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:25:06\"\n    },\n    \"nav_menu_item[-4989605110658173000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:25:06\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            11,\n            12,\n            13,\n            14,\n            15\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:32:39\"\n    },\n    \"nav_menu_item[-164135461276166140]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Todos os departamentos\",\n            \"url\": \"http://localhost/lobras/?page_id=11\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Departamentos\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:27:35\"\n    },\n    \"nav_menu_item[-8273170532323377000]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Em oferta\",\n            \"url\": \"http://localhost/lobras/?page_id=12\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Em oferta\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:26:04\"\n    },\n    \"nav_menu_item[-3818408551735343000]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Mais vendidos\",\n            \"url\": \"http://localhost/lobras/?page_id=13\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Produtos mais vendidos\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:28:38\"\n    },\n    \"astra::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:30:00\"\n    },\n    \"nav_menu_item[-2585982455344064500]\": {\n        \"value\": {\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Novidades\",\n            \"url\": \"http://localhost/lobras/?page_id=14\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Lan\\u00e7amentos\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:31:29\"\n    },\n    \"nav_menu_item[-7404172036481649000]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Contato\",\n            \"url\": \"http://localhost/lobras/?page_id=15\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contato\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:32:39\"\n    },\n    \"astra::nav_menu_locations[secondary_menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:33:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '48f33507-788f-4eb4-80aa-5ed9a22f42bb', '', '', '2022-06-03 16:33:18', '2022-06-03 19:33:18', '', 0, 'http://localhost/lobras/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Departamentos', '', 'publish', 'closed', 'closed', '', 'departamentos', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 0, 'http://localhost/lobras/?page_id=11', 0, 'page', '', 0),
(12, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Em oferta', '', 'publish', 'closed', 'closed', '', 'em-oferta', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 0, 'http://localhost/lobras/?page_id=12', 0, 'page', '', 0),
(13, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Produtos mais vendidos', '', 'publish', 'closed', 'closed', '', 'produtos-mais-vendidos', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 0, 'http://localhost/lobras/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Lançamentos', '', 'publish', 'closed', 'closed', '', 'lancamentos', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 0, 'http://localhost/lobras/?page_id=14', 0, 'page', '', 0),
(15, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 0, 'http://localhost/lobras/?page_id=15', 0, 'page', '', 0),
(16, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Início', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 0, 'http://localhost/lobras/2022/06/03/inicio/', 1, 'nav_menu_item', '', 0),
(17, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Departamentos', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 11, 'http://localhost/lobras/?p=17', 0, 'revision', '', 0),
(18, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Em oferta', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 12, 'http://localhost/lobras/?p=18', 0, 'revision', '', 0),
(19, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Produtos mais vendidos', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 13, 'http://localhost/lobras/?p=19', 0, 'revision', '', 0),
(20, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Lançamentos', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 14, 'http://localhost/lobras/?p=20', 0, 'revision', '', 0),
(21, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 15, 'http://localhost/lobras/?p=21', 0, 'revision', '', 0),
(22, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Todos os departamentos', '', 'publish', 'closed', 'closed', '', 'todos-os-departamentos', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 0, 'http://localhost/lobras/2022/06/03/todos-os-departamentos/', 2, 'nav_menu_item', '', 0),
(23, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 0, 'http://localhost/lobras/2022/06/03/23/', 3, 'nav_menu_item', '', 0),
(24, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Mais vendidos', '', 'publish', 'closed', 'closed', '', 'mais-vendidos', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 0, 'http://localhost/lobras/2022/06/03/mais-vendidos/', 4, 'nav_menu_item', '', 0),
(25, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 'Novidades', '', 'publish', 'closed', 'closed', '', 'novidades', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 0, 'http://localhost/lobras/2022/06/03/novidades/', 5, 'nav_menu_item', '', 0),
(26, 1, '2022-06-03 16:33:19', '2022-06-03 19:33:19', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2022-06-03 16:33:19', '2022-06-03 19:33:19', '', 0, 'http://localhost/lobras/2022/06/03/26/', 6, 'nav_menu_item', '', 0),
(27, 1, '2022-06-03 16:33:39', '2022-06-03 19:33:39', '{\n    \"astra-settings[breadcrumb-position]\": {\n        \"value\": \"none\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:33:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ebbc7542-87a2-45f7-ac29-9d376260a780', '', '', '2022-06-03 16:33:39', '2022-06-03 19:33:39', '', 0, 'http://localhost/lobras/2022/06/03/ebbc7542-87a2-45f7-ac29-9d376260a780/', 0, 'customize_changeset', '', 0),
(28, 1, '2022-06-03 16:35:06', '2022-06-03 19:35:06', '{\n    \"astra-settings[single-post-sidebar-layout]\": {\n        \"value\": \"default\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:35:02\"\n    },\n    \"astra-settings[archive-post-sidebar-layout]\": {\n        \"value\": \"default\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:35:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ebcbf2ec-ee7a-4f0c-9fda-eaa32b3998ed', '', '', '2022-06-03 16:35:06', '2022-06-03 19:35:06', '', 0, 'http://localhost/lobras/?p=28', 0, 'customize_changeset', '', 0),
(29, 1, '2022-06-03 16:36:23', '2022-06-03 19:36:23', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:36:03\"\n    },\n    \"page_on_front\": {\n        \"value\": \"12\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:36:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8d432106-3ed5-451f-8699-051c0df0e3ae', '', '', '2022-06-03 16:36:23', '2022-06-03 19:36:23', '', 0, 'http://localhost/lobras/?p=29', 0, 'customize_changeset', '', 0),
(30, 1, '2022-06-03 16:38:27', '2022-06-03 19:38:27', '{\n    \"astra::nav_menu_locations[secondary_menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:37:03\"\n    },\n    \"astra::nav_menu_locations[footer_menu]\": {\n        \"value\": -8793866837354430000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:37:58\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            31,\n            32\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:38:27\"\n    },\n    \"nav_menu[-8793866837354430000]\": {\n        \"value\": {\n            \"name\": \"menu_rodape\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:37:58\"\n    },\n    \"nav_menu_item[-302569033826551800]\": {\n        \"value\": {\n            \"object_id\": 31,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Seguran\\u00e7a\",\n            \"url\": \"http://localhost/lobras/?page_id=31\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Seguran\\u00e7a\",\n            \"nav_menu_term_id\": -8793866837354430000,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:37:58\"\n    },\n    \"nav_menu_item[-5025729604223969000]\": {\n        \"value\": {\n            \"object_id\": 32,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Politica de privacidade\",\n            \"url\": \"http://localhost/lobras/?page_id=32\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Politica de privacidade\",\n            \"nav_menu_term_id\": -8793866837354430000,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:38:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '96864436-b14b-404a-884a-bcbe5244e348', '', '', '2022-06-03 16:38:27', '2022-06-03 19:38:27', '', 0, 'http://localhost/lobras/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2022-06-03 16:38:27', '2022-06-03 19:38:27', '', 'Segurança', '', 'publish', 'closed', 'closed', '', 'seguranca', '', '', '2022-06-03 16:38:27', '2022-06-03 19:38:27', '', 0, 'http://localhost/lobras/?page_id=31', 0, 'page', '', 0),
(32, 1, '2022-06-03 16:38:27', '2022-06-03 19:38:27', '', 'Politica de privacidade', '', 'publish', 'closed', 'closed', '', 'politica-de-privacidade-2', '', '', '2022-06-03 16:38:27', '2022-06-03 19:38:27', '', 0, 'http://localhost/lobras/?page_id=32', 0, 'page', '', 0),
(33, 1, '2022-06-03 16:38:27', '2022-06-03 19:38:27', '', 'Segurança', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2022-06-03 16:38:27', '2022-06-03 19:38:27', '', 31, 'http://localhost/lobras/?p=33', 0, 'revision', '', 0),
(34, 1, '2022-06-03 16:38:27', '2022-06-03 19:38:27', '', 'Politica de privacidade', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2022-06-03 16:38:27', '2022-06-03 19:38:27', '', 32, 'http://localhost/lobras/?p=34', 0, 'revision', '', 0),
(35, 1, '2022-06-03 16:38:27', '2022-06-03 19:38:27', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2022-06-03 16:38:27', '2022-06-03 19:38:27', '', 0, 'http://localhost/lobras/2022/06/03/35/', 1, 'nav_menu_item', '', 0),
(36, 1, '2022-06-03 16:38:27', '2022-06-03 19:38:27', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2022-06-03 16:38:27', '2022-06-03 19:38:27', '', 0, 'http://localhost/lobras/2022/06/03/36/', 2, 'nav_menu_item', '', 0),
(37, 1, '2022-06-03 16:39:39', '2022-06-03 19:39:39', '{\n    \"astra-settings[footer-copyright-editor]\": {\n        \"value\": \"Copyright [copyright] [current_year] [site_title] | Desenvolvido por Label Systems\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:39:39\"\n    },\n    \"astra-settings[section-footer-copyright-hide-desktop]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-06-03 19:39:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4aa83b38-a1b3-4007-9c7a-06bf75ae1c98', '', '', '2022-06-03 16:39:39', '2022-06-03 19:39:39', '', 0, 'http://localhost/lobras/2022/06/03/4aa83b38-a1b3-4007-9c7a-06bf75ae1c98/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'menu_topo', 'menu_topo', 0),
(3, 'menu_rodape', 'menu_rodape', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(26, 2, 0),
(35, 3, 0),
(36, 3, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
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
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"5383e3133d7bb1d42130d6aa616f431afdc127fc0f43c5ae760ddd707a0429d2\";a:4:{s:10:\"expiration\";i:1654454932;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36\";s:5:\"login\";i:1654282132;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'welcome_box', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
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
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B9Pfs2ttr/hMSCxIlI64ZqrKaZdVZK/', 'admin', 'agnaldosantos1935@gmail.com', 'http://localhost/lobras', '2022-06-03 18:48:15', '', 0, 'admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Extraindo dados da tabela `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"siges\",\"table\":\"funcionarios\"},{\"db\":\"siges\",\"table\":\"tarefas\"},{\"db\":\"siges\",\"table\":\"migrations\"},{\"db\":\"siges\",\"table\":\"contratos\"},{\"db\":\"siges\",\"table\":\"failed_jobs\"},{\"db\":\"siges\",\"table\":\"patrimonio\"},{\"db\":\"siges\",\"table\":\"users\"},{\"db\":\"ecommerce\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-06-30 16:04:21', '{\"Console\\/Mode\":\"show\",\"lang\":\"pt\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `siges`
--
CREATE DATABASE IF NOT EXISTS `siges` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `siges`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contratos`
--

CREATE TABLE `contratos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ano` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dt_insercao` timestamp NULL DEFAULT NULL,
  `contratada` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `objeto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtvigencia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnpjcontratada` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fiscal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidadelicitacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numerolicitacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `contratos`
--

INSERT INTO `contratos` (`id`, `numero`, `ano`, `dt_insercao`, `contratada`, `objeto`, `dtvigencia`, `cnpjcontratada`, `fiscal`, `modalidadelicitacao`, `numerolicitacao`, `created_at`, `updated_at`) VALUES
(1, '122', '2019', '2022-06-22 19:32:08', 'MONTREAL INFORMÁTICA ', 'AQUISIÇÃO DE SERVIÇOS DE ORGANIZAÇÃO E DIGITALIZAÇÃO DE DOCUMENTOS', '02/12/2022', '46.125.125/0011-22', 'MARCOS PONTES', 'PREGÃO ELETRÔNICO', '12/2018', '2022-06-22 19:32:08', '2022-06-22 19:32:08'),
(2, '72', '1930', '2006-11-26 09:39:01', 'Imperdiet Ornare In LLP', 'tristique senectus et netus et', 'Jan 9, 1970', '18104777671', 'Juliet Ellison', 'Niedersachsen', '3363', NULL, NULL),
(3, '47', '1990', '2008-11-11 21:25:11', 'Non Magna Nam PC', 'Proin', 'Jul 13, 2005', '96593099019', 'Dahlia Byers', 'Valle d\'Aosta', '5676', NULL, NULL),
(4, '3', '1945', '1977-10-26 19:59:17', 'Lorem Luctus Corporation', 'Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam', 'May 16, 2018', '95876962016', 'Anastasia Bonner', 'Styria', '3952', NULL, NULL),
(5, '63', '1985', '2003-09-25 12:15:44', 'Rhoncus LLC', 'metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse', 'May 14, 1978', '97148353466', 'Arsenio Hanson', 'Gorontalo', '5387', NULL, NULL),
(6, '6', '1931', '1980-03-09 10:38:11', 'Consectetuer Ipsum Nunc Ltd', 'adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus', 'Jun 23, 1979', '27824163632', 'Kevyn Mcguire', 'Opolskie', '1021', NULL, NULL),
(7, '72', '1930', '2006-11-26 09:39:01', 'Imperdiet Ornare In LLP', 'tristique senectus et netus et', 'Jan 9, 1970', '18104777671', 'Juliet Ellison', 'Niedersachsen', '3363', NULL, NULL),
(8, '47', '1990', '2008-11-11 21:25:11', 'Non Magna Nam PC', 'Proin', 'Jul 13, 2005', '96593099019', 'Dahlia Byers', 'Valle d\'Aosta', '5676', NULL, NULL),
(9, '3', '1945', '1977-10-26 19:59:17', 'Lorem Luctus Corporation', 'Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam', 'May 16, 2018', '95876962016', 'Anastasia Bonner', 'Styria', '3952', NULL, NULL),
(10, '63', '1985', '2003-09-25 12:15:44', 'Rhoncus LLC', 'metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse', 'May 14, 1978', '97148353466', 'Arsenio Hanson', 'Gorontalo', '5387', NULL, NULL),
(11, '6', '1931', '1980-03-09 10:38:11', 'Consectetuer Ipsum Nunc Ltd', 'adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus', 'Jun 23, 1979', '27824163632', 'Kevyn Mcguire', 'Opolskie', '1021', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `diariase_passagens`
--

CREATE TABLE `diariase_passagens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numeroprd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ano` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtinclusao` timestamp NULL DEFAULT NULL,
  `favorecido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itnerario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtpartida` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtchegada` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtnascimento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dt_insercao` timestamp NULL DEFAULT NULL,
  `rg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matricula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtadmissao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtdemissao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `dtnascimento`, `dt_insercao`, `rg`, `cpf`, `matricula`, `cargo`, `setor`, `dtadmissao`, `dtdemissao`, `created_at`, `updated_at`) VALUES
(1, 'Ralph Mason', 'Aug 24, 1970', NULL, '1604679427', '46742842169', '305348', 'Integer In PC', 'Lacinia At Iaculis Corporation', '10/01/1990', '10/07/2021', NULL, NULL),
(2, 'Hedley Wagner', 'Sep 7, 1969', NULL, '7112750107', '32955619256', '616639', 'Sagittis LLC', 'Sem Institute', '02/04/1999', '12/20/2022', NULL, NULL),
(3, 'Melodie Hooper', 'Mar 30, 1972', NULL, '327467431', '52102883466', '639775', 'Ullamcorper Eu Inc.', 'Integer Limited', '09/04/2012', '11/24/2022', NULL, NULL),
(4, 'Hasad Nunez', 'Jan 28, 2000', NULL, '2075237684', '90209260201', '145319', 'Eu Eleifend Nec LLP', 'Phasellus Associates', '12/31/1992', '09/19/2022', NULL, NULL),
(5, 'Jocelyn Potter', 'Sep 23, 2022', NULL, '9263626114', '28014041680', '972879', 'Etiam Bibendum Ltd', 'Lorem Tristique Corporation', '06/27/1991', '08/02/2021', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_22_184137_create_table_contratos', 2),
(6, '2022_06_24_160914_create_funcionario', 3),
(7, '2022_06_28_125356_create_patrimonio', 4),
(8, '2022_06_28_144604_create_diariase_passagens_table', 5),
(9, '2022_06_28_151106_patrimonios', 6),
(11, '2022_06_30_141935_tarefas', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `patrimonios`
--

CREATE TABLE `patrimonios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomeobjeto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rpnum` timestamp NULL DEFAULT NULL,
  `modelo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtaquicao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadodeconservacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `depreciacaoanual` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cores` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tamanho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tarefas`
--

CREATE TABLE `tarefas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dtcriacao` timestamp NULL DEFAULT NULL,
  `dtinicio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previsaofim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ultimainsercao` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tarefas`
--

INSERT INTO `tarefas` (`id`, `nome`, `dtcriacao`, `dtinicio`, `previsaofim`, `metas`, `designado`, `status`, `ultimainsercao`, `created_at`, `updated_at`) VALUES
(1, 'Sit Amet Inc.', '0000-00-00 00:00:00', '05/30/1920', 'Dec 23, 2001', 'Nam nulla magna, malesuada vel, convallis in, cursus et,', 'Linda Park', '#f94643', '0000-00-00 00:00:00', NULL, NULL),
(2, 'Vestibulum Ltd', '0000-00-00 00:00:00', '01/21/1973', 'Jan 22, 1965', 'ac turpis egestas. Aliquam fringilla cursus', 'Ahmed Bridges', '#e09c2f', '0000-00-00 00:00:00', NULL, NULL),
(3, 'Cras Dolor Dolor Associates', '0000-00-00 00:00:00', '05/26/2011', 'Feb 2, 1957', 'tincidunt.', 'Elton Baker', '#5fd8e8', '0000-00-00 00:00:00', NULL, NULL),
(4, 'Natoque Penatibus Inc.', '0000-00-00 00:00:00', '01/24/1961', 'Mar 10, 1955', 'Nulla semper tellus id nunc interdum feugiat. Sed nec', 'Kaseem Leon', '#ed9978', '0000-00-00 00:00:00', NULL, NULL),
(5, 'Nec Mauris PC', '0000-00-00 00:00:00', '06/24/1915', 'Aug 3, 2010', 'et, euismod', 'Linda Conway', '#5ffc11', '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'admin@gmail.com', NULL, '$2y$10$JZjPJbIlnJ/z9.87cthrauNjaeuEFDOdJkhNTlTJflajQ9qYlh9/m', NULL, '2022-06-22 17:36:50', '2022-06-22 17:36:50');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `diariase_passagens`
--
ALTER TABLE `diariase_passagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `patrimonios`
--
ALTER TABLE `patrimonios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `tarefas`
--
ALTER TABLE `tarefas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contratos`
--
ALTER TABLE `contratos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `diariase_passagens`
--
ALTER TABLE `diariase_passagens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `patrimonios`
--
ALTER TABLE `patrimonios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tarefas`
--
ALTER TABLE `tarefas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
