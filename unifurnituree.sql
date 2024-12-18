-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 10:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unifurnituree`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_banners`
--

CREATE TABLE `about_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_publish` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_banners`
--

INSERT INTO `about_banners` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`, `is_publish`) VALUES
(1, 'Şirkətimiz haqqında', 'UniFurniture, hər zövqə və büdcəyə uyğun yüksək keyfiyyətli mebel məhsulları təqdim edən e-ticarət platformasıdır. Müasir dizaynlardan klassik üslublara qədər geniş məhsul çeşidi ilə rahat alış-veriş təcrübəsi təklif edir.', 'aboutbanner/IwW6eTQ28gibmhmDXmVLwcGsZ63cZCa2KGbcgBgN.png', '2024-12-09 13:17:01', '2024-12-09 15:11:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `about_number_subtitles`
--

CREATE TABLE `about_number_subtitles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `about_number_titles`
--

CREATE TABLE `about_number_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_publish` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `about_paralaxes`
--

CREATE TABLE `about_paralaxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_publish` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_paralaxes`
--

INSERT INTO `about_paralaxes` (`id`, `title`, `content`, `image`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Şirkətimizin yaranma tarixi', 'Şirkətimiz müştərilərə yüksək keyfiyyətli xidmət və məhsullar təqdim etmək məqsədilə 2000-ci ildə təsis edilmişdir. Qısa müddət ərzində bazarda etibarlı və müasir həllər təqdim edən lider şirkətlərdən birinə çevrilmişik.', 'aboutparalax/jG2UQqtdayOlKIt8VWd92e2BSN3ZJmCiRJAYdyDJ.png', 1, '2024-12-09 13:37:33', '2024-12-12 15:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `about_team_members`
--

CREATE TABLE `about_team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_team_members`
--

INSERT INTO `about_team_members` (`id`, `name`, `surname`, `position`, `profile`, `created_at`, `updated_at`) VALUES
(1, 'Əminə', 'Ağalarova', 'HR', 'aboutteammebers/JtCkdEeEPrV896RiXmpLkl3OGrvNEcAS33hPE3lB.png', '2024-12-09 13:41:42', '2024-12-09 13:41:42'),
(2, 'Kamil', 'Əliyev', 'Məhsul üzrə vitse-prezident', 'aboutteammebers/cswEgTiJjRJV7q6F2VdQrsGIjW0yFwW81BlQaAVi.png', '2024-12-09 13:42:45', '2024-12-09 13:42:45'),
(3, 'Fatimə', 'Qurbanlı', 'Graphic Designer', 'aboutteammebers/0BBLzFNmFHjhe1ho5BSNgyAIIKw1HexgDqgBvC0A.png', '2024-12-09 13:44:58', '2024-12-09 13:44:58'),
(4, 'Samil', 'Əliverdiyev', 'CEO', 'aboutteammebers/xTGEMHTaZX3N0eP3Qhs1RZ5zLzTaYmlLz0niMX4p.png', '2024-12-09 13:45:33', '2024-12-09 13:45:33'),
(5, 'Evelina', 'Suleymanova', 'Marketinq üzrə mütəxəssis', 'aboutteammebers/ALCOIFJagFYVvQv40eOG3bX5sbbPQ5Q9oURnXMks.png', '2024-12-09 13:46:14', '2024-12-09 13:46:14'),
(6, 'Mustafa', 'Farzandli', 'İT şöbə müdiri', 'aboutteammebers/yeNli9LMVcxxsb7LayTJg0SQDdXNo8kyQwKP42r5.png', '2024-12-09 13:48:21', '2024-12-09 13:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `about_team_titles`
--

CREATE TABLE `about_team_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_publish` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_team_titles`
--

INSERT INTO `about_team_titles` (`id`, `title`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Möhtəşəm komandamız ilə tanış olun', 1, '2024-12-09 13:40:54', '2024-12-12 15:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `baskets`
--

CREATE TABLE `baskets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baskets`
--

INSERT INTO `baskets` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2024-12-09 13:17:47', '2024-12-09 13:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `basket_products`
--

CREATE TABLE `basket_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `basket_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_color` varchar(255) NOT NULL,
  `color_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Kreslo', 'categoryBtns/WbmarfNl6MZ82ewRibvZV9LuxLLgtUv4TrwABfSv.svg', '2024-12-09 13:50:36', '2024-12-09 13:50:36'),
(2, 'Divan', 'categoryBtns/8UvtlY0crXF8oAv3krbHtH2mkR4g0Ldc6xIp6HjD.svg', '2024-12-09 13:50:58', '2024-12-09 13:50:58'),
(3, 'Masa', 'categoryBtns/pbE4dPRAQygwYJ786f9Mhlk4JTQzBuz3d2OfnrPF.svg', '2024-12-09 13:51:13', '2024-12-09 13:51:13'),
(4, 'Ofis', 'categoryBtns/2hqdajPRkPcG9WCRCu2H9wSKJFn5sxO3wfLp1MCP.svg', '2024-12-09 13:51:33', '2024-12-09 13:51:33'),
(5, 'Dolab', 'categoryBtns/6ba2cfGY4vIwUa8gSTK2KVm4A57raWCDMj6UMgSt.svg', '2024-12-09 13:52:09', '2024-12-09 13:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `charasteristics`
--

CREATE TABLE `charasteristics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `characteristic` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charasteristics`
--

INSERT INTO `charasteristics` (`id`, `product_id`, `characteristic`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tənzimlənə bilən hündürlük', '2024-12-09 16:22:51', '2024-12-09 16:22:51'),
(2, 1, 'Dönə bilən 360 dərəcə baza', '2024-12-09 16:22:51', '2024-12-09 16:22:51'),
(3, 1, 'Keyfiyyətli dəri material', '2024-12-09 16:22:51', '2024-12-09 16:22:51'),
(4, 1, 'Ergonomik dizayn', '2024-12-09 16:22:51', '2024-12-09 16:22:51'),
(5, 2, 'Təbii ağac material', '2024-12-09 16:26:59', '2024-12-09 16:26:59'),
(6, 2, 'Yumşaq və çıxarıla bilən oturacaq yastığı', '2024-12-09 16:26:59', '2024-12-09 16:26:59'),
(7, 2, 'Yüngül və dayanıqlı', '2024-12-09 16:26:59', '2024-12-09 16:26:59'),
(8, 3, 'Yumşaq məxmər parça', '2024-12-10 15:29:32', '2024-12-10 15:29:32'),
(9, 3, 'Metal ayaqlar', '2024-12-10 15:29:32', '2024-12-10 15:29:32'),
(10, 3, 'Rahat kürək dəstəyi', '2024-12-10 15:29:32', '2024-12-10 15:29:32'),
(11, 4, 'Suya və günəşə davamlı material', '2024-12-10 15:31:22', '2024-12-10 15:31:22'),
(12, 4, 'İşıqlı və asan daşınan dizayn', '2024-12-10 15:31:22', '2024-12-10 15:31:22'),
(13, 4, 'Rəng seçimi mövcuddur', '2024-12-10 15:31:22', '2024-12-10 15:31:22'),
(14, 5, 'Tənzimlənən hündürlük', '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(15, 5, 'Yumşaq oturacaq və kürək yastıqları', '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(16, 5, 'Parlaq rənglərdə mövcuddur', '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(17, 6, 'Çox funksiyalı dizayn', '2024-12-10 15:36:04', '2024-12-10 15:36:04'),
(18, 6, 'Taxta və dəri materialların qarışığı', '2024-12-10 15:36:04', '2024-12-10 15:36:04'),
(19, 6, 'Stabil konstruksiya', '2024-12-10 15:36:04', '2024-12-10 15:36:04'),
(20, 7, 'Tənzimlənə bilən hündürlük', '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(21, 7, 'Dönə bilən 360 dərəcə baza', '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(22, 7, 'Keyfiyyətli dəri material', '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(23, 7, 'Keyfiyyətli dəri material', '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(24, 8, 'Təbii ağac material', '2024-12-10 15:40:55', '2024-12-10 15:40:55'),
(25, 8, 'Yumşaq və çıxarıla bilən oturacaq yastığı', '2024-12-10 15:40:55', '2024-12-10 15:40:55'),
(26, 8, 'Yüngül və dayanıqlı', '2024-12-10 15:40:55', '2024-12-10 15:40:55'),
(27, 9, 'Yumşaq məxmər parça', '2024-12-10 15:42:35', '2024-12-10 15:42:35'),
(28, 9, 'Metal ayaqlar', '2024-12-10 15:42:35', '2024-12-10 15:42:35'),
(29, 9, 'Rahat kürək dəstəyi', '2024-12-10 15:42:35', '2024-12-10 15:42:35'),
(30, 10, 'Yüksək keyfiyyətli ağac material', '2024-12-10 15:48:07', '2024-12-10 15:48:07'),
(31, 10, 'İnteqrasiya olunmuş saxlama rəfi', '2024-12-10 15:48:07', '2024-12-10 15:48:07'),
(32, 10, 'Sadə və modern dizayn', '2024-12-10 15:48:07', '2024-12-10 15:48:07'),
(33, 11, 'Elektriklə tənzimlənən hündürlük', '2024-12-10 15:50:01', '2024-12-10 15:50:01'),
(34, 11, 'Geniş iş səthi', '2024-12-10 15:50:01', '2024-12-10 15:50:01'),
(35, 11, 'Yığcam dizayn', '2024-12-10 15:50:01', '2024-12-10 15:50:01'),
(36, 12, 'Təbii ağacdan hazırlanmışdır', '2024-12-10 15:52:14', '2024-12-10 15:52:14'),
(37, 12, 'İki geniş saxlama çekmecəsi', '2024-12-10 15:52:14', '2024-12-10 15:52:14'),
(38, 12, 'Sabit və dayanıqlı konstruksiya', '2024-12-10 15:52:14', '2024-12-10 15:52:14'),
(39, 13, 'Şüşə səth', '2024-12-10 15:54:34', '2024-12-10 15:54:34'),
(40, 13, 'Paslanmayan metal ayaqlar', '2024-12-10 15:54:34', '2024-12-10 15:54:34'),
(41, 13, 'Asan təmizlənə bilən material', '2024-12-10 15:54:34', '2024-12-10 15:54:34'),
(42, 14, 'Yumşaq və keyfiyyətli material', '2024-12-10 16:02:54', '2024-12-10 16:02:54'),
(43, 14, 'Geniş oturacaq sahəsi', '2024-12-10 16:02:54', '2024-12-10 16:02:54'),
(44, 14, 'Yığcam künc dizaynı', '2024-12-10 16:02:54', '2024-12-10 16:02:54'),
(45, 15, 'Çarpayıya çevrilmə funksiyası', '2024-12-10 16:07:01', '2024-12-10 16:07:01'),
(46, 15, 'Dayanıqlı çərçivə', '2024-12-10 16:07:01', '2024-12-10 16:07:01'),
(47, 15, 'Asan təmizlənə bilən parça', '2024-12-10 16:07:01', '2024-12-10 16:07:01'),
(48, 16, 'Təbii taxta çərçivə', '2024-12-10 16:08:46', '2024-12-10 16:08:46'),
(49, 16, 'Əl işləməli naxışlar', '2024-12-10 16:08:46', '2024-12-10 16:08:46'),
(50, 16, 'Yüksək sıxlıqlı yumşaq yastıqlar', '2024-12-10 16:08:46', '2024-12-10 16:08:46'),
(51, 17, 'Yumşaq və keyfiyyətli parça örtük', '2024-12-10 16:11:16', '2024-12-10 16:11:16'),
(52, 17, 'Metal ayaqlar', '2024-12-10 16:11:16', '2024-12-10 16:11:16'),
(53, 17, 'Kompakt ölçü', '2024-12-10 16:11:16', '2024-12-10 16:11:16'),
(54, 18, 'Parlaq və rəngarəng örtük', '2024-12-10 16:13:37', '2024-12-10 16:13:37'),
(55, 18, 'Yüngül və təhlükəsiz material', '2024-12-10 16:13:37', '2024-12-10 16:13:37'),
(56, 18, 'Asan təmizlənə bilən parça', '2024-12-10 16:13:37', '2024-12-10 16:13:37'),
(57, 19, 'Keyfiyyətli məxmər örtük', '2024-12-10 16:15:24', '2024-12-10 16:15:24'),
(58, 19, 'Geniş oturacaq və yastıqlar', '2024-12-10 16:15:24', '2024-12-10 16:15:24'),
(59, 19, 'Taxta və metal qarışığı çərçivə', '2024-12-10 16:15:24', '2024-12-10 16:15:24'),
(60, 20, 'İki qapılı', '2024-12-12 14:43:00', '2024-12-12 14:43:00'),
(61, 20, 'Metal tutacaqlar', '2024-12-12 14:43:00', '2024-12-12 14:43:00'),
(62, 20, 'Daxili rəflər və asılqan', '2024-12-12 14:43:00', '2024-12-12 14:43:00'),
(63, 21, 'Təbii taxta material', '2024-12-12 14:45:15', '2024-12-12 14:45:15'),
(64, 21, 'Əl işləməli naxışlı qapılar', '2024-12-12 14:45:15', '2024-12-12 14:45:15'),
(65, 21, 'Geniş daxili bölmələr', '2024-12-12 14:45:15', '2024-12-12 14:45:15'),
(66, 22, 'Şüşə qapılar', '2024-12-12 14:48:03', '2024-12-12 14:48:03'),
(67, 22, 'Metal çərçivə', '2024-12-12 14:48:03', '2024-12-12 14:48:03'),
(68, 22, 'Yüksək keyfiyyətli rəflər', '2024-12-12 14:48:03', '2024-12-12 14:48:03'),
(69, 23, 'Parlaq rənglərdə örtük', '2024-12-12 14:49:50', '2024-12-12 14:49:50'),
(70, 23, 'Təhlükəsiz künclər', '2024-12-12 14:49:50', '2024-12-12 14:49:50'),
(71, 23, 'Asılqan və rəflər daxildir', '2024-12-12 14:49:50', '2024-12-12 14:49:50'),
(72, 24, 'Dörd qapılı geniş dizayn', '2024-12-12 14:52:38', '2024-12-12 14:52:38'),
(73, 24, 'Paltar asmaq üçün geniş asılqan sahəsi', '2024-12-12 14:52:38', '2024-12-12 14:52:38'),
(74, 24, 'Aşağı bölmədə çəkməcələr', '2024-12-12 14:52:38', '2024-12-12 14:52:38'),
(75, 25, 'Parlaq məxmər örtük', '2024-12-12 14:54:33', '2024-12-12 14:54:33'),
(76, 25, 'LED işıqlandırma sistemi', '2024-12-12 14:54:33', '2024-12-12 14:54:33'),
(77, 25, 'Güzgülü qapılar', '2024-12-12 14:54:33', '2024-12-12 14:54:33'),
(78, 26, 'İki qapılı', '2024-12-12 14:56:11', '2024-12-12 14:56:11'),
(79, 26, 'Metal tutacaqlar', '2024-12-12 14:56:11', '2024-12-12 14:56:11'),
(80, 26, 'Daxili rəflər və asılqan', '2024-12-12 14:56:11', '2024-12-12 14:56:11'),
(81, 27, 'Təbii taxta material', '2024-12-12 14:59:17', '2024-12-12 14:59:17'),
(82, 27, '6 nəfərlik oturacaq yeri', '2024-12-12 14:59:17', '2024-12-12 14:59:17'),
(83, 27, 'Nəmə və cızılmalara qarşı qoruyucu qat', '2024-12-12 14:59:17', '2024-12-12 14:59:17'),
(84, 28, 'Temperli şüşə üst', '2024-12-12 15:01:01', '2024-12-12 15:01:01'),
(85, 28, 'Paslanmayan metal ayaqlar', '2024-12-12 15:01:01', '2024-12-12 15:01:01'),
(86, 28, 'Asan təmizlənən səth', '2024-12-12 15:01:01', '2024-12-12 15:01:01'),
(87, 29, 'Asanlıqla katlanabilən dizayn', '2024-12-12 15:02:37', '2024-12-12 15:02:37'),
(88, 29, '4 nəfərlik oturacaq yeri', '2024-12-12 15:02:37', '2024-12-12 15:02:37'),
(89, 29, 'Taxta və MDF materialdan hazırlanmış', '2024-12-12 15:02:37', '2024-12-12 15:02:37'),
(90, 30, 'İnteqrasiya olunmuş kitab rəfləri', '2024-12-12 15:04:25', '2024-12-12 15:04:25'),
(91, 30, 'Kabel idarəetmə sistemi', '2024-12-12 15:04:25', '2024-12-12 15:04:25'),
(92, 30, 'Mat laminat örtüklü səth', '2024-12-12 15:04:25', '2024-12-12 15:04:25'),
(93, 31, 'Təbii mərmər üst', '2024-12-12 15:05:50', '2024-12-12 15:05:50'),
(94, 31, 'Polad ayaqlar', '2024-12-12 15:05:50', '2024-12-12 15:05:50'),
(95, 31, 'Uzunmüddətli davamlılıq', '2024-12-12 15:05:50', '2024-12-12 15:05:50'),
(96, 32, 'Təbii taxta material', '2024-12-12 15:07:29', '2024-12-12 15:07:29'),
(97, 32, '6 nəfərlik oturacaq yeri', '2024-12-12 15:07:29', '2024-12-12 15:07:29'),
(98, 32, 'Nəmə və cızılmalara qarşı qoruyucu qat', '2024-12-12 15:07:29', '2024-12-12 15:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Ağ', 1, '2024-12-09 16:22:51', '2024-12-09 16:22:51'),
(2, 'Ağ', 2, '2024-12-09 16:26:59', '2024-12-09 16:26:59'),
(3, 'Mavi', 2, '2024-12-09 16:26:59', '2024-12-09 16:26:59'),
(4, 'Sarı', 3, '2024-12-10 15:29:32', '2024-12-10 15:29:32'),
(5, 'Ağ', 3, '2024-12-10 15:29:32', '2024-12-10 15:29:32'),
(6, 'Boz', 4, '2024-12-10 15:31:22', '2024-12-10 15:31:22'),
(7, 'Boz', 5, '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(8, 'Mavi', 5, '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(9, 'Ağ', 5, '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(10, 'Boz', 6, '2024-12-10 15:36:04', '2024-12-10 15:36:04'),
(11, 'Qəhvəyi', 7, '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(12, 'Qara', 7, '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(13, 'Qırmızı', 7, '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(14, 'Boz', 8, '2024-12-10 15:40:55', '2024-12-10 15:40:55'),
(15, 'Narıncı', 9, '2024-12-10 15:42:35', '2024-12-10 15:42:35'),
(16, 'Qəhvəyi', 10, '2024-12-10 15:48:07', '2024-12-10 15:48:07'),
(17, 'Qəhvəyi', 11, '2024-12-10 15:50:01', '2024-12-10 15:50:01'),
(18, 'Ağ', 12, '2024-12-10 15:52:14', '2024-12-10 15:52:14'),
(19, 'Ağ', 13, '2024-12-10 15:54:34', '2024-12-10 15:54:34'),
(20, 'Narıncı', 14, '2024-12-10 16:02:54', '2024-12-10 16:02:54'),
(21, 'Qəhvəyi', 14, '2024-12-10 16:02:54', '2024-12-10 16:02:54'),
(22, 'Boz', 15, '2024-12-10 16:07:01', '2024-12-10 16:07:01'),
(23, 'Ağ', 15, '2024-12-10 16:07:01', '2024-12-10 16:07:01'),
(24, 'Qara', 16, '2024-12-10 16:08:46', '2024-12-10 16:08:46'),
(25, 'Boz', 17, '2024-12-10 16:11:16', '2024-12-10 16:11:16'),
(26, 'Mavi', 17, '2024-12-10 16:11:16', '2024-12-10 16:11:16'),
(27, 'Sarı', 17, '2024-12-10 16:11:16', '2024-12-10 16:11:16'),
(28, 'Qırmızı', 18, '2024-12-10 16:13:37', '2024-12-10 16:13:37'),
(29, 'Yaşıl', 18, '2024-12-10 16:13:37', '2024-12-10 16:13:37'),
(30, 'Boz', 19, '2024-12-10 16:15:24', '2024-12-10 16:15:24'),
(31, 'Yaşıl', 20, '2024-12-12 14:43:00', '2024-12-12 14:43:00'),
(32, 'Ağ', 21, '2024-12-12 14:45:15', '2024-12-12 14:45:15'),
(33, 'Qara', 22, '2024-12-12 14:48:03', '2024-12-12 14:48:03'),
(34, 'Qəhvəyi', 22, '2024-12-12 14:48:03', '2024-12-12 14:48:03'),
(35, 'Yaşıl', 23, '2024-12-12 14:49:50', '2024-12-12 14:49:50'),
(36, 'Ağ', 24, '2024-12-12 14:52:38', '2024-12-12 14:52:38'),
(37, 'Qəhvəyi', 25, '2024-12-12 14:54:33', '2024-12-12 14:54:33'),
(38, 'Ağ', 26, '2024-12-12 14:56:11', '2024-12-12 14:56:11'),
(39, 'Qəhvəyi', 27, '2024-12-12 14:59:17', '2024-12-12 14:59:17'),
(40, 'Qəhvəyi', 28, '2024-12-12 15:01:01', '2024-12-12 15:01:01'),
(41, 'Qəhvəyi', 29, '2024-12-12 15:02:37', '2024-12-12 15:02:37'),
(42, 'Ağ', 30, '2024-12-12 15:04:25', '2024-12-12 15:04:25'),
(43, 'Qəhvəyi', 31, '2024-12-12 15:05:50', '2024-12-12 15:05:50'),
(44, 'Ağ', 32, '2024-12-12 15:07:29', '2024-12-12 15:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `color_images`
--

CREATE TABLE `color_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_images`
--

INSERT INTO `color_images` (`id`, `color_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'color_images/3oTOL5bZccIn6bUWsqqU2LcNiwQzXYcqLCvwTWhP.png', '2024-12-09 16:22:51', '2024-12-09 16:22:51'),
(2, 1, 'color_images/FlPidWlUz4bqyDIuCeVtXLMDcxs6zqyyA84CwccH.png', '2024-12-09 16:22:51', '2024-12-09 16:22:51'),
(3, 1, 'color_images/gP2pRyZt1zuvupjfYF56AHeUgduWd1fB66svxYDI.png', '2024-12-09 16:22:51', '2024-12-09 16:22:51'),
(4, 2, 'color_images/kbjnnUmQ27Z8yYAZI10IbWP6luEcvcMmIiC3NRxu.png', '2024-12-09 16:26:59', '2024-12-09 16:26:59'),
(5, 2, 'color_images/MYlCWVNEQoiBdXIz8wDKePrGimRv93nDr2BnFq0Y.jpg', '2024-12-09 16:26:59', '2024-12-09 16:26:59'),
(6, 2, 'color_images/fYC3sT0ovROFyDFUwqvdd1NxoFVJgyaIjaJ0A51k.jpg', '2024-12-09 16:26:59', '2024-12-09 16:26:59'),
(7, 3, 'color_images/6Ix12AHoQjjUvZdNnBeo1SMK5kNIfCBVbqoY1Sqm.jpg', '2024-12-09 16:27:00', '2024-12-09 16:27:00'),
(8, 3, 'color_images/t1PEoxy9QAPNjLOYygMIufar09zn5iSq74rzQiE7.jpg', '2024-12-09 16:27:00', '2024-12-09 16:27:00'),
(9, 3, 'color_images/m6Bs23xp63Pa2omf6Db4VpoQMkzFjICbADy80R7X.jpg', '2024-12-09 16:27:00', '2024-12-09 16:27:00'),
(10, 4, 'color_images/IqcpRsz1G5UyaHHArw96YOm1NIDbYuHTF5ZeuEam.png', '2024-12-10 15:29:32', '2024-12-10 15:29:32'),
(11, 4, 'color_images/YhpMZ7eo1Rwc1yyNm0V7JhZKWrJoR5zKZhMD2nhS.jpg', '2024-12-10 15:29:32', '2024-12-10 15:29:32'),
(12, 4, 'color_images/fs54Cs0wQ63AMjjYUJFDXDymP7MNM0uBUpXdHmTX.jpg', '2024-12-10 15:29:32', '2024-12-10 15:29:32'),
(13, 5, 'color_images/gSzg3VWYGVl4KKBf63s2az0a3FpB0mJedVT9vOGs.jpg', '2024-12-10 15:29:32', '2024-12-10 15:29:32'),
(14, 5, 'color_images/gY8NSMV0dDVcX3twoabCfmWsfBFt8cAKh4Q1RQ1C.jpg', '2024-12-10 15:29:32', '2024-12-10 15:29:32'),
(15, 5, 'color_images/mpinkYvwFPV3vEIhKiXstgDeEJhGGRyinHtUyGlx.jpg', '2024-12-10 15:29:32', '2024-12-10 15:29:32'),
(16, 6, 'color_images/Iln4Xhqv84vVyH9eQsLx5YTSsz4wfTlrHMc8tSiR.png', '2024-12-10 15:31:22', '2024-12-10 15:31:22'),
(17, 6, 'color_images/agqDvCyOqDzoHyghSMBmxzBN5lcL1V50FSnX5Ksk.jpg', '2024-12-10 15:31:22', '2024-12-10 15:31:22'),
(18, 6, 'color_images/2d8rNQBd9KESj2QDGsiJdpEfn0pj6Xtc6mSjC0rU.jpg', '2024-12-10 15:31:22', '2024-12-10 15:31:22'),
(19, 7, 'color_images/4Ai0szpSyqWBCmyGncwDBSdS3PIudtEXoScI3Xnb.png', '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(20, 7, 'color_images/KIeEv5RzloQMz9DomsRF89pscSj2dpgWenxOhCOj.jpg', '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(21, 7, 'color_images/tKfE2qR1xZLhUs0y6OAAYgUdb5uJ80XKQC48evrA.jpg', '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(22, 8, 'color_images/MdNbGOY2009COVaNstvjPib661cueRQzLJahqD0N.jpg', '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(23, 8, 'color_images/ECwyEBQvNCPCB6KmIcJQYUPBiaeJQELX0cTCqkUo.jpg', '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(24, 8, 'color_images/ztYElQXYFgh71HMW3L2oxri3o3woWK8HqXFa6xMd.jpg', '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(25, 9, 'color_images/5lysHVfnITXiIWoU3wlAfhuKVwfrw6l4JGGcfwAX.jpg', '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(26, 9, 'color_images/0lTBiMSRhJ5uTNq7h9aZE6dGK9GoP4Q25vD6KkGj.jpg', '2024-12-10 15:34:09', '2024-12-10 15:34:09'),
(27, 10, 'color_images/kE7ANpEl1dimavcnWNyYjCE4OdRd7Fkd1CDI05pD.png', '2024-12-10 15:36:04', '2024-12-10 15:36:04'),
(28, 10, 'color_images/2H4nhGlI6izIy57uTRunkf2DnjP5jcBn9yj01RJi.jpg', '2024-12-10 15:36:04', '2024-12-10 15:36:04'),
(29, 10, 'color_images/tDx3ZdWRVhcqlUdELcxB43U7kmGZmHJfzaWYZ32x.jpg', '2024-12-10 15:36:04', '2024-12-10 15:36:04'),
(30, 11, 'color_images/UbIXYehFntA1pe1J9sowuXZnsY5ADbxSpYwahOUK.png', '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(31, 11, 'color_images/iPDdLGGs5m1CAiLB7kbSRMVHHvkaSc7Kf8YOS3BH.jpg', '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(32, 11, 'color_images/BMKDVQrq9Ki0eXv3ZUC0rq6cr4x76rMaNihpvGwV.jpg', '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(33, 12, 'color_images/qZIBR9tdB8KMU7RL72OggNSh9SjrRs0JYRgKL6XF.jpg', '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(34, 12, 'color_images/h9AOhQyM9OCRmUYrEmwZ3JHsDlKTdFysqBeOojp3.jpg', '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(35, 13, 'color_images/mjd3cHKiPDms5etnfMuEMn3Q17dKra76D9cSnjBU.jpg', '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(36, 13, 'color_images/XGVb2OEb442zYelgCaS9n6Ns4oPKZK6VSOxFEoRF.jpg', '2024-12-10 15:38:50', '2024-12-10 15:38:50'),
(37, 14, 'color_images/fhVc74166SIbdcXobUo5NlihHdxK03KmwOH5yXJ1.jpg', '2024-12-10 15:40:55', '2024-12-10 15:40:55'),
(38, 14, 'color_images/29MMKAKEXJsGozZZcj3H6emjrJ46oJBlbIm5Kr5v.jpg', '2024-12-10 15:40:55', '2024-12-10 15:40:55'),
(39, 14, 'color_images/CW6rM9bOKS0iX071tcjJsrrBdox9lvjIVT96FAJc.jpg', '2024-12-10 15:40:55', '2024-12-10 15:40:55'),
(40, 15, 'color_images/DXS348V2gPGsgZKjYykQMNI0pEP66Vo3uIH3cTtn.jpg', '2024-12-10 15:42:35', '2024-12-10 15:42:35'),
(41, 15, 'color_images/2lpNxUlPjxMkeAdO48ZXxXWej6ulNg9pdn2VvC9u.jpg', '2024-12-10 15:42:35', '2024-12-10 15:42:35'),
(42, 16, 'color_images/UtcXsznSA7J5eGi1j6qMBxW5XlLx7XmFOA7D0zD9.png', '2024-12-10 15:48:07', '2024-12-10 15:48:07'),
(43, 16, 'color_images/NZ1UFT8WM4fpmQp7JV7ZuOAy29e25ekTNBUisJ2B.jpg', '2024-12-10 15:48:07', '2024-12-10 15:48:07'),
(44, 17, 'color_images/GrMQL0q66d102N6tOmItCZ18R6Lee602cScqOKkN.png', '2024-12-10 15:50:01', '2024-12-10 15:50:01'),
(45, 17, 'color_images/dtBGeccB1b273M3XL0gVbDMxhDw1eq6RPt7o9V8z.jpg', '2024-12-10 15:50:01', '2024-12-10 15:50:01'),
(46, 18, 'color_images/vc9vChVhmIEp4wY0xXUoRT3Svkf8GfLkvbDZzMRH.png', '2024-12-10 15:52:14', '2024-12-10 15:52:14'),
(47, 18, 'color_images/7Uo8mHMAnocd6Ac4v2EVXQqSt4SBiRweTfOJiHAY.jpg', '2024-12-10 15:52:14', '2024-12-10 15:52:14'),
(48, 18, 'color_images/EcGLdl8emkkddNrujRQLSKzcCvl4zpmnzjeEjRtw.jpg', '2024-12-10 15:52:14', '2024-12-10 15:52:14'),
(49, 19, 'color_images/MXyfwTO6kNHHbNY4UDmZ3WF5TQeD4azA6FjFUPkS.png', '2024-12-10 15:54:34', '2024-12-10 15:54:34'),
(50, 19, 'color_images/9jFaIcMP8H0A6VvjQnN8yvUkeLzDMyXjSDMXUfKR.jpg', '2024-12-10 15:54:34', '2024-12-10 15:54:34'),
(51, 19, 'color_images/lgrxQO0Ba6mOn0uObpRSM9jDWsBvF5LbudjL3qDU.jpg', '2024-12-10 15:54:34', '2024-12-10 15:54:34'),
(52, 20, 'color_images/h2wNFbnw3QzsNbuX2vPVFCRit0XP0nMMbmdI2At5.png', '2024-12-10 16:02:54', '2024-12-10 16:02:54'),
(53, 20, 'color_images/TicTeDw1fxoSK4AgMEKaOdCyCegrgYj6kQYpvgVQ.jpg', '2024-12-10 16:02:54', '2024-12-10 16:02:54'),
(54, 20, 'color_images/Ey8TS8jEoyggyGG0vgRkrPFmSlNxhlRwlhmy19rQ.jpg', '2024-12-10 16:02:54', '2024-12-10 16:02:54'),
(55, 21, 'color_images/wVGV7AAeQQ0uYY1TP3AhW5YB6vtNIBQNlY2prcrQ.jpg', '2024-12-10 16:02:54', '2024-12-10 16:02:54'),
(56, 22, 'color_images/Gp570HK9EnnRWaOVDjAhc0DVMHjjFgvGPybrKGdq.jpg', '2024-12-10 16:07:01', '2024-12-10 16:07:01'),
(57, 22, 'color_images/SqQQkDR6yWuB4UX5w5zP4yhHeQoazPqPBnFPwYqo.jpg', '2024-12-10 16:07:01', '2024-12-10 16:07:01'),
(58, 23, 'color_images/7CoEHz0hFtbNHrSYTLfvvuGpJxlGzoaBef3RDEqX.jpg', '2024-12-10 16:07:01', '2024-12-10 16:07:01'),
(59, 23, 'color_images/FfRo80gLnBfAqq1ozBPrurp4XoAKV1Rg5Dip32dO.png', '2024-12-10 16:07:01', '2024-12-10 16:07:01'),
(60, 24, 'color_images/xzswgjeSKDmmmg7zyqx73napwpMR1bW5T1eiNYdK.png', '2024-12-10 16:08:46', '2024-12-10 16:08:46'),
(61, 24, 'color_images/CN2OSQXvd6oO9WJYXUPUNNQsEgNbgqVUgK68bObR.jpg', '2024-12-10 16:08:46', '2024-12-10 16:08:46'),
(62, 24, 'color_images/WQmi0f2APZXjdGKIpfYkgcGVAPy4waqBS0QaVbej.jpg', '2024-12-10 16:08:46', '2024-12-10 16:08:46'),
(63, 25, 'color_images/fYqTh9cWhZ7SF2ZTdACpn7dXfvBzTmgtzVciwmeJ.png', '2024-12-10 16:11:16', '2024-12-10 16:11:16'),
(64, 25, 'color_images/uMdKzP33cvQSSmN50WG2RJGwZeYEHzw8O8CSjLtQ.jpg', '2024-12-10 16:11:16', '2024-12-10 16:11:16'),
(65, 26, 'color_images/IlDJdwXelyzAZwU411zcQ7XkwLfMSM8iZWiXlO19.jpg', '2024-12-10 16:11:16', '2024-12-10 16:11:16'),
(66, 26, 'color_images/xHIXSF32LfDXV6wZjUs7ANohBU71ZXeljbTMqrKd.jpg', '2024-12-10 16:11:16', '2024-12-10 16:11:16'),
(67, 27, 'color_images/HAKgRBqUCmZsHKjioc0xduo5kWcRoQtDH1RPoyOT.jpg', '2024-12-10 16:11:16', '2024-12-10 16:11:16'),
(68, 27, 'color_images/RFSbTZfBFfx2Pr1x2DNjzubPlR5iB49PYhcV8Dys.jpg', '2024-12-10 16:11:16', '2024-12-10 16:11:16'),
(69, 28, 'color_images/hPErhxkVjTvX7zXZi0wAYYRz1k3fmW6nQIL4TzOV.png', '2024-12-10 16:13:37', '2024-12-10 16:13:37'),
(70, 28, 'color_images/7kl4aNmdNaPI8HXKNS6BmO2AwqB28UGogU6d9kx9.jpg', '2024-12-10 16:13:37', '2024-12-10 16:13:37'),
(71, 29, 'color_images/2l2fxUIrxyE8mcHSLqLsS73GEdqyRvlY9NSjZoCd.jpg', '2024-12-10 16:13:37', '2024-12-10 16:13:37'),
(72, 29, 'color_images/1J0VUnLJaZadnpPG3vZevmkvlGfEZRghMnpglexg.jpg', '2024-12-10 16:13:37', '2024-12-10 16:13:37'),
(73, 30, 'color_images/4txWNmalSChOhu9yV4GwBHZG3bz3sf21JpYi9Lh0.png', '2024-12-10 16:15:24', '2024-12-10 16:15:24'),
(74, 30, 'color_images/q2AMObhfSHW3EUb0SfmpludwcF5zu8TogV4Cw7Ed.jpg', '2024-12-10 16:15:24', '2024-12-10 16:15:24'),
(75, 31, 'color_images/PxRX9o85KPxMiNn3RxAhecCjg0w5YLC10DwSoIap.jpg', '2024-12-12 14:43:00', '2024-12-12 14:43:00'),
(76, 32, 'color_images/MMS7qJg5NE8c7pXEtWr1cndn9TFVcOqvh9x36IPp.jpg', '2024-12-12 14:45:15', '2024-12-12 14:45:15'),
(77, 32, 'color_images/x9RQovZ1QkqAsrW6YWB3QuL0JHhvEelTosjtKU5X.jpg', '2024-12-12 14:45:15', '2024-12-12 14:45:15'),
(78, 32, 'color_images/QTmlpMpav522IV5MnYgimhaYdK6zF6cZmWyrHys2.jpg', '2024-12-12 14:45:15', '2024-12-12 14:45:15'),
(79, 33, 'color_images/7f6SSsQG19Ogpsj7STR1c3RYjjrcIRGuSmGqyGFD.jpg', '2024-12-12 14:48:03', '2024-12-12 14:48:03'),
(80, 33, 'color_images/ZCPWttDGOTraNFhfFGg9SCV1nKR60RIf76n5j9vT.jpg', '2024-12-12 14:48:03', '2024-12-12 14:48:03'),
(81, 33, 'color_images/FBy58aI3wKol5VkXmjA40PNxa6dq8yGGqA14UQsV.jpg', '2024-12-12 14:48:03', '2024-12-12 14:48:03'),
(82, 34, 'color_images/vSI0Sq2vyHTqXcfBx6vzhXtZ0xbBGyKspzu5unNB.jpg', '2024-12-12 14:48:03', '2024-12-12 14:48:03'),
(83, 34, 'color_images/oj7H5i9MkZ795HNHQYYBfmp1l2UygacC1b4K4xu7.jpg', '2024-12-12 14:48:03', '2024-12-12 14:48:03'),
(84, 34, 'color_images/87afefsf1BsbWVGiv7ehjJcYWgiaOTGKtb12ZlNX.jpg', '2024-12-12 14:48:03', '2024-12-12 14:48:03'),
(85, 35, 'color_images/SHNciWaCIQqSZxDm1ezq32aebJQxt7rt5bhdBdq5.jpg', '2024-12-12 14:49:50', '2024-12-12 14:49:50'),
(86, 35, 'color_images/AwPjLOghcCpi5tSeOtEP6YC9QBlbDUi4bGVNfaqj.jpg', '2024-12-12 14:49:50', '2024-12-12 14:49:50'),
(87, 35, 'color_images/3u8KRxJVxvRfKAAq0ZfM648g7ZmVmU7hWaRCXaY3.jpg', '2024-12-12 14:49:50', '2024-12-12 14:49:50'),
(88, 36, 'color_images/Z8xE6JTscVytASzhCuhKp3Y6gGdogfceq9n2rWOz.jpg', '2024-12-12 14:52:38', '2024-12-12 14:52:38'),
(89, 36, 'color_images/nqnjF40BOKEhxaBuJhqACQ7Gkn8BdeCw5R0BH4EY.jpg', '2024-12-12 14:52:38', '2024-12-12 14:52:38'),
(90, 36, 'color_images/MRgYghVF8FpK02LuzHV1S2ispxrXAFbEwPQa0zpe.jpg', '2024-12-12 14:52:38', '2024-12-12 14:52:38'),
(91, 37, 'color_images/ddJl0UPxIravlqU5JGQkmvZX6Ge8ZtLILqF3pWQK.jpg', '2024-12-12 14:54:33', '2024-12-12 14:54:33'),
(92, 37, 'color_images/Iu32HOPeP92CLc61nitGqhB3Nh1k9VKovMB52MF6.jpg', '2024-12-12 14:54:33', '2024-12-12 14:54:33'),
(93, 37, 'color_images/xSpxxFaR7OoJOlPXewDtunqWDRB2JvksrUF6VEaw.jpg', '2024-12-12 14:54:33', '2024-12-12 14:54:33'),
(94, 38, 'color_images/o3j5cqkptbNSsrr8V8X9FFk2j2eQcDmMwNdmlu2V.jpg', '2024-12-12 14:56:11', '2024-12-12 14:56:11'),
(95, 38, 'color_images/F0bk8eQIFrL1YUwBEaOVFLqSkJS8dNnd9aReMWyV.jpg', '2024-12-12 14:56:11', '2024-12-12 14:56:11'),
(96, 38, 'color_images/EZD0ZReEQeB9xTlZ8SnfYwufdHQnEQjiKHoKxeqg.jpg', '2024-12-12 14:56:11', '2024-12-12 14:56:11'),
(97, 39, 'color_images/hqiyLlKORj1VukiF7WTCOTd1BLlzNG79HuhF72T5.png', '2024-12-12 14:59:17', '2024-12-12 14:59:17'),
(98, 39, 'color_images/LWoBXCBoKwCli9iyc5bYvS7h1TBv1tAnp0veUdOU.jpg', '2024-12-12 14:59:17', '2024-12-12 14:59:17'),
(99, 40, 'color_images/FomRoPeiqcomLUnRnmF3sGZi1RQpxl4i3by9DZKf.png', '2024-12-12 15:01:01', '2024-12-12 15:01:01'),
(100, 40, 'color_images/e8pkNZOFcZSdRXvF6YLNKhHdUx1IZRjr6Tu8YuG4.jpg', '2024-12-12 15:01:01', '2024-12-12 15:01:01'),
(101, 41, 'color_images/ADqay41Fc4CnkgyFktDLrpHUFsue8meHclMoRfjy.png', '2024-12-12 15:02:37', '2024-12-12 15:02:37'),
(102, 41, 'color_images/D97BpFe5vR60ZK6B1Z6Pze7x1FWyWN6mwOY5Mje7.jpg', '2024-12-12 15:02:37', '2024-12-12 15:02:37'),
(103, 42, 'color_images/lRTQb3Q1mNk405BOq4KHB9Xz3obWSqYdGSvPbPEj.png', '2024-12-12 15:04:25', '2024-12-12 15:04:25'),
(104, 42, 'color_images/SJvmFYbaqmZhhmFAyhBCOUApY5nB0zG478p8IlBu.jpg', '2024-12-12 15:04:25', '2024-12-12 15:04:25'),
(105, 42, 'color_images/bbbSKT0yWCYsWfOt6Zm7omlrDsdGLy28ZjW2J8Oy.jpg', '2024-12-12 15:04:25', '2024-12-12 15:04:25'),
(106, 43, 'color_images/krIkmqIDmcNO4beIHgvHM8wAF0drOYTfLUPlXbeJ.png', '2024-12-12 15:05:50', '2024-12-12 15:05:50'),
(107, 43, 'color_images/3gJ80YOIwsA2kWEbcWAn06z0ECfUemTGwZljKcwx.jpg', '2024-12-12 15:05:50', '2024-12-12 15:05:50'),
(108, 44, 'color_images/a3tYKckBfpqvNP02fWJLqFYMdvJEzZQWiWcRiNmp.png', '2024-12-12 15:07:29', '2024-12-12 15:07:29'),
(109, 44, 'color_images/X2BIEA34eXP4llGQyn87g9iC3YnvfMdD3rLgQSTX.jpg', '2024-12-12 15:07:29', '2024-12-12 15:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `exellence_services`
--

CREATE TABLE `exellence_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_publish` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exellence_services`
--

INSERT INTO `exellence_services` (`id`, `title`, `content`, `image`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Xidmətin mükəmməlliyi bizim öhdəliyimizdir', 'Biz 20 ildir fəaliyyət göstərən və mebel sektoruna fokuslanmış bir şirkətik, ABŞ-da yerləşirik və müxtəlif bölgələrdə 100 filialımız var. Biz yüksək keyfiyyətli müxtəlif növ mebellər təqdim edirik, əlbəttə ki, yaxşı xidmət və digər rahatlıqlarla birlikdə', 'aboutbanner/fJ34lOgIQpeYUVL8bcZHYXelEX9LsxHaYuEpm6Sq.png', 1, '2024-12-09 14:01:49', '2024-12-12 15:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f_a_q_s`
--

CREATE TABLE `f_a_q_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `option_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_a_q_s`
--

INSERT INTO `f_a_q_s` (`id`, `question`, `option_id`, `answer`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Sifarişimi necə izləyə bilərəm?', 2, 'Hesabınıza daxil olduqdan sonra \"Sifarişlərim\" bölməsinə keçərək sifarişinizin vəziyyətini izləyə bilərsiniz. Əlavə olaraq, sifarişinizin vəziyyəti barədə e-poçt vasitəsilə məlumat alacaqsınız.', 1, '2024-12-09 15:21:48', '2024-12-09 15:21:53'),
(2, 'Hansı ödəniş metodlarını qəbul edirsiniz?', 1, 'Biz bank kartları (Visa, Mastercard), elektron ödəniş sistemləri (PayPal, Google Pay and others) vasitəsilə ödənişləri qəbul edirik.', 1, '2024-12-09 15:24:19', '2024-12-09 15:24:24'),
(3, 'Sifarişimi necə geri qaytara bilərəm?', 2, 'Geri qaytarma üçün məhsulu aldığınız tarixdən etibarən 14 gün ərzində bizimlə əlaqə saxlayın. Məhsul istifadəsiz və orijinal qablaşdırmasında olmalıdır.', 1, '2024-12-09 15:24:53', '2024-12-09 15:25:53'),
(4, 'Məhsulum zədələnmiş halda gəlib. Nə etməliyəm?', 1, 'Əgər məhsul zədələnmiş halda gəlibsə, zəhmət olmasa dərhal müştəri dəstəyi ilə əlaqə saxlayın və məhsulun şəkillərini göndərin. Probleminizi həll etmək üçün çalışacağıq.', 1, '2024-12-09 15:25:18', '2024-12-09 15:25:54'),
(5, 'Sifarişimi ləğv edə bilərəmmi?', 2, 'Sifarişiniz göndərilməmişdirsə, hesabınızdan və ya müştəri xidmətinə zəng edərək sifarişi ləğv edə bilərsiniz. Göndərildikdən sonra geri qaytarma siyasəti tətbiq edilir.', 1, '2024-12-09 15:25:46', '2024-12-09 15:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'images/Ko2daNU89DA7oWdse4atqI4s6NIOBbaReYk4hXbN.png', '2024-12-09 16:03:01', '2024-12-09 16:03:01'),
(2, 'images/mdGFwYZH0Nrch7H8PReNLNHskG8ufkaGtrr4aYnT.png', '2024-12-09 16:03:10', '2024-12-09 16:03:10'),
(3, 'images/0Dy29O2qSLlgAKQhTB73pr2QHHUD26PmGTUcO9om.png', '2024-12-09 16:03:17', '2024-12-09 16:03:17'),
(4, 'images/YLo6fKTUQexjhWjQICVW84i02qZPFN6zN2pkFJnb.png', '2024-12-09 16:03:25', '2024-12-09 16:03:25'),
(5, 'images/Ik6vRj6qfKrkq5GR6r52nurQMHvxNi7OWGXJmLQW.png', '2024-12-09 16:03:33', '2024-12-09 16:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_25_150814_create_personal_access_tokens_table', 1),
(5, '2024_10_25_171129_add_surname_field_to_users', 1),
(6, '2024_10_26_124924_add_token_role_fields_to_users_table', 1),
(7, '2024_10_28_155343_create_about_banners_table', 1),
(8, '2024_10_28_175320_create_about_paralaxes_table', 1),
(9, '2024_10_29_164359_add_publish_field_about_banners', 1),
(10, '2024_10_29_165946_create_about_team_titles_table', 1),
(11, '2024_10_29_165958_create_about_team_members_table', 1),
(12, '2024_10_29_171243_remove_team_title_id_field_from_team_members', 1),
(13, '2024_10_29_204526_add_position_field_to_team_members', 1),
(14, '2024_10_29_215505_create_about_number_titles_table', 1),
(15, '2024_10_29_215518_create_about_number_subtitles_table', 1),
(16, '2024_10_29_231113_add_is_piblish_filed_to_about_paralaxes', 1),
(17, '2024_11_02_114645_create_categories_table', 1),
(18, '2024_11_02_114804_create_types_table', 1),
(19, '2024_11_02_114919_create_charasteristics_table', 1),
(20, '2024_11_02_115040_create_products_table', 1),
(21, '2024_11_03_180655_set_default_value_is_publish_field_products', 1),
(22, '2024_11_04_144741_create_colors_table', 1),
(23, '2024_11_04_144803_create_color_images_table', 1),
(24, '2024_11_05_214203_create_product_views_table', 1),
(25, '2024_11_05_223344_add_default_value_to_count_field_product_views', 1),
(26, '2024_11_06_171943_add_id_address_field_product_views', 1),
(27, '2024_11_06_181953_create_product_ratings_table', 1),
(28, '2024_11_11_161626_create_baskets_table', 1),
(29, '2024_11_11_161647_create_basket_products_table', 1),
(30, '2024_11_11_161724_create_orders_table', 1),
(31, '2024_11_11_161740_create_order_details_table', 1),
(32, '2024_11_11_162612_create_payments_table', 1),
(33, '2024_11_12_172116_add_color_image_fields_to_basket_products', 1),
(34, '2024_11_12_213924_add_new_fields_to_users', 1),
(35, '2024_11_13_144153_create_user_addresses_table', 1),
(36, '2024_11_13_181416_remove_status_field_from_orders', 1),
(37, '2024_11_16_190430_create_galleries_table', 1),
(38, '2024_11_17_160159_add_image_field_to_categories', 1),
(39, '2024_11_17_221940_create_f_a_q_s_table', 1),
(40, '2024_11_19_144947_add_option_id_field_to_faqs', 1),
(41, '2024_11_19_145046_create_options_table', 1),
(42, '2024_11_19_174931_change_type_content_field_to_about_paralaxes', 1),
(43, '2024_11_19_212405_create_service_article_titles_table', 1),
(44, '2024_11_19_212529_create_service_articles_table', 1),
(45, '2024_11_19_213736_add_publish_field_to_service_article_titles', 1),
(46, '2024_11_20_195314_create_exellence_services_table', 1),
(47, '2024_11_20_200107_add_publish_field_to_service_exellences', 1),
(48, '2024_11_20_204514_change_content_field_of_exellence_services', 1),
(49, '2024_11_20_211721_create_promotion_sliders_table', 1),
(50, '2024_11_26_173210_add_status_field_to_orders', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ümumi', '2024-12-09 15:20:25', '2024-12-09 15:20:25'),
(2, 'Sifarişlər', '2024-12-09 15:20:35', '2024-12-09 15:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `basket_id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `basket_id`, `uid`, `address`, `payment_type`, `total`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 1, '675b3d374598f', 'Baku, Nizami rayonu', 'Google Pay', 1005, '2024-12-12 15:44:55', '2024-12-12 15:44:55', 'PENDING'),
(2, 2, 1, '675b3d9a3a18e', 'Baki seheri', 'PayPal', 920, '2024-12-12 15:46:34', '2024-12-12 15:46:34', 'PENDING'),
(3, 2, 1, '675b3dc8d0e96', 'Mingechevir', 'PayPal', 360, '2024-12-12 15:47:20', '2024-12-12 15:47:20', 'PENDING'),
(4, 2, 1, '675b3e23a0625', 'Mingechevir', 'PayPal', 360, '2024-12-12 15:48:51', '2024-12-12 15:48:51', 'PENDING'),
(5, 2, 1, '675b3f3e1bbe1', 'Mingechevir', 'Kredit kartı', 660, '2024-12-12 15:53:34', '2024-12-12 15:53:34', 'PENDING'),
(6, 2, 1, '675f1043bfc2a', 'Baki seheri', 'PayPal', 1426, '2024-12-15 13:22:11', '2024-12-15 13:28:10', 'CONFIRMED'),
(7, 2, 1, '6760976f05df3', 'Baki seheri', 'Google Pay', 1005, '2024-12-16 17:11:11', '2024-12-16 17:11:11', 'PENDING'),
(8, 2, 1, '676097ee301b7', 'Baki seheri', 'Kredit kartı', 220, '2024-12-16 17:13:18', '2024-12-16 17:13:18', 'PENDING'),
(9, 2, 1, '67609835d64c6', 'Baki seheri', 'PayPal', 603, '2024-12-16 17:14:29', '2024-12-16 17:14:29', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 5, 200.99, 1004.95, '2024-12-12 15:44:55', '2024-12-12 15:44:55'),
(2, 2, 3, 3, 220, 660, '2024-12-12 15:46:34', '2024-12-12 15:46:34'),
(3, 2, 4, 2, 130, 260, '2024-12-12 15:46:34', '2024-12-12 15:46:34'),
(4, 3, 2, 2, 180, 360, '2024-12-12 15:47:20', '2024-12-12 15:47:20'),
(5, 4, 5, 3, 90, 270, '2024-12-12 15:48:51', '2024-12-12 15:48:51'),
(6, 4, 5, 1, 90, 90, '2024-12-12 15:48:51', '2024-12-12 15:48:51'),
(7, 5, 3, 3, 220, 660, '2024-12-12 15:53:34', '2024-12-12 15:53:34'),
(8, 6, 3, 1, 220, 220, '2024-12-15 13:22:11', '2024-12-15 13:22:11'),
(9, 6, 6, 6, 200.99, 1205.94, '2024-12-15 13:22:11', '2024-12-15 13:22:11'),
(10, 7, 6, 5, 200.99, 1004.95, '2024-12-16 17:11:11', '2024-12-16 17:11:11'),
(11, 8, 3, 1, 220, 220, '2024-12-16 17:13:18', '2024-12-16 17:13:18'),
(12, 9, 6, 3, 200.99, 602.97, '2024-12-16 17:14:29', '2024-12-16 17:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'unifurniture', 'f26437eac10f91298240acecc5db073c337ac6996aa1d97012d588b4f48e22a6', '[\"*\"]', '2024-12-09 13:17:01', NULL, '2024-12-09 13:11:33', '2024-12-09 13:17:01'),
(2, 'App\\Models\\User', 2, 'unifurniture', '3551904a9cbba797f355ddcfc964b90f911ec4dd04f43d8291f9a23c958e65bb', '[\"*\"]', '2024-12-09 13:36:35', NULL, '2024-12-09 13:17:53', '2024-12-09 13:36:35'),
(3, 'App\\Models\\User', 1, 'unifurniture', 'c3053acf8b35d0d37600e4a5c80b033c11680744cbe5946ed558a9dea2e080da', '[\"*\"]', '2024-12-10 15:26:48', NULL, '2024-12-09 13:36:49', '2024-12-10 15:26:48'),
(4, 'App\\Models\\User', 1, 'unifurniture', '38133ee76c3b2ebf9ef3e04b6f14719ee9f5bd0e335ef17005e0b41f9a56aba6', '[\"*\"]', '2024-12-12 15:07:53', NULL, '2024-12-10 15:26:56', '2024-12-12 15:07:53'),
(5, 'App\\Models\\User', 2, 'unifurniture', 'e43e23b3af829b812f3f9c871c8fbe9b96b0b868dd7a00c5e076d940b4dc1e16', '[\"*\"]', '2024-12-12 15:08:42', NULL, '2024-12-12 15:08:03', '2024-12-12 15:08:42'),
(6, 'App\\Models\\User', 1, 'unifurniture', '65986c32bb265297491a9e52491cae8829cce6061ceaf636d1096cca3d16c011', '[\"*\"]', '2024-12-12 15:42:20', NULL, '2024-12-12 15:08:54', '2024-12-12 15:42:20'),
(7, 'App\\Models\\User', 2, 'unifurniture', 'ad899decb6d5721c30cb7f535f04e01c96b3b9092c94773ab5b55c60a6da565f', '[\"*\"]', '2024-12-12 15:51:08', NULL, '2024-12-12 15:42:31', '2024-12-12 15:51:08'),
(8, 'App\\Models\\User', 2, 'unifurniture', 'e7b0140b540420559cac025cba48c90f32416c3ec574ab3c050e1904390bc902', '[\"*\"]', '2024-12-15 13:16:44', NULL, '2024-12-12 15:51:16', '2024-12-15 13:16:44'),
(9, 'App\\Models\\User', 2, 'unifurniture', '1e50dbc0e6eb2819ba5353677d7b1e3c910b9cb84f528a8449f6e3dd05354832', '[\"*\"]', '2024-12-15 13:25:03', NULL, '2024-12-15 13:18:27', '2024-12-15 13:25:03'),
(10, 'App\\Models\\User', 1, 'unifurniture', '16d06fcd4f01a5312b0547a0038e43e1dd1683c9f1b24c626d45398e45c71e48', '[\"*\"]', '2024-12-15 13:28:10', NULL, '2024-12-15 13:25:12', '2024-12-15 13:28:10'),
(11, 'App\\Models\\User', 2, 'unifurniture', 'e1fec7a9b99afbd274305fab73602733c55d4033eb2b6d443a49cf8d6d747de3', '[\"*\"]', '2024-12-15 13:28:42', NULL, '2024-12-15 13:28:27', '2024-12-15 13:28:42'),
(12, 'App\\Models\\User', 1, 'unifurniture', 'ed2a32af1d56c0d50f8a21a581bde1ef24923acdc952a0e9d68768d0767c5a41', '[\"*\"]', '2024-12-15 13:37:03', NULL, '2024-12-15 13:28:52', '2024-12-15 13:37:03'),
(13, 'App\\Models\\User', 2, 'unifurniture', 'a275ae5caf4ba146f54ac4d887261e835c2ed4e165117bde9aceea8f1a453e8e', '[\"*\"]', '2024-12-15 13:41:51', NULL, '2024-12-15 13:38:36', '2024-12-15 13:41:51'),
(14, 'App\\Models\\User', 2, 'unifurniture', '6983f66b089e3f4525ed580d9743de89d66168acd32f08f6bc26a05e83e738ab', '[\"*\"]', '2024-12-16 17:17:58', NULL, '2024-12-15 13:43:24', '2024-12-16 17:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `full_title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `garranty` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `hasStock` tinyint(1) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `is_publish` tinyint(1) NOT NULL DEFAULT 0,
  `reviews` int(11) NOT NULL DEFAULT 0,
  `shipping` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `full_title`, `text`, `description`, `image`, `video`, `price`, `type_id`, `category_id`, `garranty`, `stock`, `hasStock`, `discount`, `is_publish`, `reviews`, `shipping`, `created_at`, `updated_at`) VALUES
(1, 'Komfort Ofis Kreslosu', 'Yüksək Arxalıqlı Komfort Ofis Kreslosu', 'Bu kreslo rahatlıq və funksionallığı birləşdirərək, uzunmüddətli oturma üçün idealdır. Yüksək arxalıq və yumşaq oturacaq maksimum rahatlıq təmin edir.', 'Bu kreslo rahatlıq və funksionallığı birləşdirərək, uzunmüddətli oturma üçün idealdır. Yüksək arxalıq və yumşaq oturacaq maksimum rahatlıq təmin edir.', 'products/images/xe8byWQSDD1dIw0pFsSNy6UvoqtLEc7PnC0c3qjx.png', 'products/videos/BLBE9Ljck8t6yEoDPkkeqSFoWzia8vYWoJP969DG.mp4', 250, 1, 1, 1, 12, 1, 0, 1, 0, 1, '2024-12-09 16:22:51', '2024-12-12 15:09:05'),
(2, 'Skandinaviya Dizaynlı Taxta Kreslo', 'Skandinaviya Üslubunda Minimalist Taxta Kreslo', 'Təbii taxtadan hazırlanmış bu kreslo, sadə və modern dizaynı ilə evinizə zəriflik qatacaq.', 'Təbii taxtadan hazırlanmış bu kreslo, sadə və modern dizaynı ilə evinizə zəriflik qatacaq.', 'products/images/aj2QeCMuGgPT4AtkofAwjcBa0fSjzEjDx1lZqxAM.png', 'products/videos/09ZAY8ZtacSxrRirNb5AbhRnDTmYE7Syir2BdFSz.mp4', 180, 1, 1, 1, 43, 1, 15, 1, 0, 4, '2024-12-09 16:26:59', '2024-12-12 15:47:05'),
(3, 'Lüks Yemək Kreslosu', 'Yumşaq Parçalı Lüks Yemək Kreslosu', 'Mətbəx və yemək otaqları üçün mükəmməl olan bu kreslo, rahatlıq və estetik görünüş təqdim edir.', 'Mətbəx və yemək otaqları üçün mükəmməl olan bu kreslo, rahatlıq və estetik görünüş təqdim edir.', 'products/images/SgUWq5BT6BibE89476VYByFjkm2vlU3Dt2gc72Dt.png', 'products/videos/UDWwveKSnMJJawqQdlxvLmxsGwIhu7MMBNKb002B.mp4', 220, 1, 1, 1, 760, 1, 0, 1, 0, 1, '2024-12-10 15:29:32', '2024-12-16 17:12:43'),
(4, 'Modern Açıq Hava Kreslosu', 'Modern Üslublu Suya Dayanıqlı Açıq Hava Kreslosu', 'Həyətyanı sahələr və bağçalar üçün dizayn edilmiş bu kreslo, davamlılığı və rahatlığı ilə seçilir.', 'Həyətyanı sahələr və bağçalar üçün dizayn edilmiş bu kreslo, davamlılığı və rahatlığı ilə seçilir.', 'products/images/PKS7KAF6ig9jCPi2p37VjCu79CLBE93JCD2hElsn.png', 'products/videos/qkVE2ca4KVhkHCqWfajlInb1HO4t7b6Ld0tTr3cE.mp4', 130, 1, 1, 2, 32, 1, 5, 1, 0, 1, '2024-12-10 15:31:22', '2024-12-12 15:45:52'),
(5, 'Uşaq Oyun Kreslosu', 'Ergonomik Dizaynlı Uşaq Oyun Kreslosu', 'Uşaqlar üçün təhlükəsiz və rahat olan bu kreslo, oyun və dərs vaxtını daha rahat edir.', 'Uşaqlar üçün təhlükəsiz və rahat olan bu kreslo, oyun və dərs vaxtını daha rahat edir.', 'products/images/Y0IY5gl3p8wmp6FMaZKLmuqdrLs0Up0AnQMBcjTP.png', 'products/videos/5gc2PmEz94BleXg8x3Yn6ikpY9wdIRcCcBv6Wi1Z.mp4', 90, 1, 1, 1, 227, 1, 0, 1, 0, 3, '2024-12-10 15:34:09', '2024-12-12 15:48:34'),
(6, 'Klassik Əyləşmə Kreslosu', 'Rahat Klassik Dizaynlı Əyləşmə Kreslosu', 'İstənilən otaqda rahatlıq və klassik gözəllik təmin edən bu kreslo, hər mühitə uyğun gəlir.', 'İstənilən otaqda rahatlıq və klassik gözəllik təmin edən bu kreslo, hər mühitə uyğun gəlir.', 'products/images/RDuQYOghAQISUtIQa7m8q8dRpehjf9lWKVlIKZRM.png', 'products/videos/1QqnUhqmvQrCQ08hde72WXrGF0i8ek84eQXwxQWq.mp4', 200.99, 1, 1, 1, 215, 1, 10, 1, 0, 1, '2024-12-10 15:36:04', '2024-12-16 17:14:05'),
(7, 'Komfort Ofis Kreslosu', 'Yüksək Arxalıqlı Komfort Ofis Kreslosu', 'Bu kreslo rahatlıq və funksionallığı birləşdirərək, uzunmüddətli oturma üçün idealdır. Yüksək arxalıq və yumşaq oturacaq maksimum rahatlıq təmin edir.', 'Bu kreslo rahatlıq və funksionallığı birləşdirərək, uzunmüddətli oturma üçün idealdır. Yüksək arxalıq və yumşaq oturacaq maksimum rahatlıq təmin edir.', 'products/images/GWYYHmq67ghEIw1EZaClDEHazraKbWmBoREbKYrX.png', 'products/videos/jjASJ5bXDuAX1x6zzouOL4zAFx68XY4XV0wxov5p.mp4', 349.8, 1, 1, 1, 89, 1, 0, 1, 0, 2, '2024-12-10 15:38:50', '2024-12-12 15:09:12'),
(8, 'Skandinaviya Dizaynlı Taxta Kreslo', 'Skandinaviya Üslubunda Minimalist Taxta Kreslo', 'Təbii taxtadan hazırlanmış bu kreslo, sadə və modern dizaynı ilə evinizə zəriflik qatacaq.', 'Təbii taxtadan hazırlanmış bu kreslo, sadə və modern dizaynı ilə evinizə zəriflik qatacaq.', 'products/images/hmueWDVyVLU6d3YarzlHli7mNLNWrkiSkh6aILis.png', 'products/videos/X01iQpr2pFvW62HmA9W947Lfafd4ACtYdN90p5k8.mp4', 120.7, 1, 1, 2, 69, 1, 2, 1, 0, 1, '2024-12-10 15:40:55', '2024-12-12 15:09:13'),
(9, 'Lüks Yemək Kreslosu', 'Yumşaq Parçalı Lüks Yemək Kreslosu', 'Mətbəx və yemək otaqları üçün mükəmməl olan bu kreslo, rahatlıq və estetik görünüş təqdim edir.', 'Mətbəx və yemək otaqları üçün mükəmməl olan bu kreslo, rahatlıq və estetik görünüş təqdim edir.', 'products/images/PihEMlpEzf2yeyoyzR44Gzgenf22fD9LjkhUR8N4.jpg', 'products/videos/O3EPgRUOUuU0SfiOq4z8XT7uMFGGNx90Rf9pOmio.mp4', 200, 1, 1, 1, 239, 0, 0, 1, 0, 2, '2024-12-10 15:42:35', '2024-12-12 15:09:14'),
(10, 'Minimalist Ofis Masası', 'Ağac Materialdan Hazırlanmış Minimalist Ofis Masası', 'Kiçik və orta ölçülü iş yerləri üçün mükəmməl seçimdir. Təbii materialdan hazırlanmış bu masa funksionallığı ilə fərqlənir.', 'Kiçik və orta ölçülü iş yerləri üçün mükəmməl seçimdir. Təbii materialdan hazırlanmış bu masa funksionallığı ilə fərqlənir.', 'products/images/B84aT3mPa3eT93M4QgnDs8EkYYZyBfk3wVWhTRwM.png', 'products/videos/EeVNqe4NFaxc7XTJd4L9SqX87z1HrJcRRuE3H2Pj.mp4', 350.5, 4, 4, 3, 89, 0, 30, 1, 0, 3, '2024-12-10 15:48:07', '2024-12-12 15:09:15'),
(11, 'Tənzimlənə Bilən Ofis Masası', 'Elektriklə Tənzimlənən Hündürlük Funksiyalı Ofis Masası', 'Rahat və ergonomik iş mühiti üçün nəzərdə tutulmuş bu masa, uzun iş saatlarını daha rahat edir.', 'Rahat və ergonomik iş mühiti üçün nəzərdə tutulmuş bu masa, uzun iş saatlarını daha rahat edir.', 'products/images/pnQYBv8oSEIEIq728LIqkEUzC10ADaZBhi6GQoJ9.png', 'products/videos/OQNs4eLX1OyFxgZRfoeULvyp5HzhazBNvLUPNqCi.mp4', 550, 4, 4, 1, 56, 1, 0, 1, 0, 1, '2024-12-10 15:50:01', '2024-12-12 15:09:16'),
(12, 'Klassik Taxta Ofis Masası', 'İki Çekmecəli Klassik Dizaynlı Ofis Masası', 'Ənənəvi və zərif görünüşü ilə klassik ofis masası həm ev, həm də ofis üçün uyğundur.', 'Ənənəvi və zərif görünüşü ilə klassik ofis masası həm ev, həm də ofis üçün uyğundur.', 'products/images/4dohdoiCcccRzBw7CoiJ17S0HlkofjSQs9l78v0f.png', 'products/videos/rklUpnWSur6NDVfDpDlb18wxlCO12a6D8f8o36lt.mp4', 400, 5, 4, 1, 37, 1, 3, 1, 0, 3, '2024-12-10 15:52:14', '2024-12-12 15:09:17'),
(13, 'Şüşə Səthli Ofis Masası', 'Modern Dizaynlı Şüşə və Metal Ofis Masası', 'Ofisinizdə modern və zərif bir görünüş yaratmaq üçün mükəmməl seçimdir.', 'Ofisinizdə modern və zərif bir görünüş yaratmaq üçün mükəmməl seçimdir.', 'products/images/PvS2L6IOp8lnpJPWiEA9KihLcbXbVKyQPJHedDkc.png', 'products/videos/i8gO8BNlVrf0O4w373qFb36K55gUHjUcSxJTrDW9.mp4', 300, 5, 4, 2, 24, 0, 4, 1, 0, 1, '2024-12-10 15:54:34', '2024-12-12 15:09:19'),
(14, 'Rahat Künc Divanı', 'Geniş və Rahat Künc Divanı', 'Böyük otaqlar üçün mükəmməl seçim olan bu künc divanı, ailəniz və dostlarınız üçün rahat məkan yaradır.', 'Böyük otaqlar üçün mükəmməl seçim olan bu künc divanı, ailəniz və dostlarınız üçün rahat məkan yaradır.', 'products/images/4ayVnwNsH37Xgu8blfiFLvDhdEQ5Y1raj8or3BUz.png', 'products/videos/XLBB94uTT7ogwCUakxQaeUNuQIwOBAaOBHONlVSw.mp4', 1200, 2, 2, 2, 68, 1, 30, 1, 0, 5, '2024-12-10 16:02:54', '2024-12-12 15:09:20'),
(15, 'Çəkilə Bilən Divan', 'Çarpayıya Çevrilə Bilən Praktik Divan', 'Kiçik məkanlar üçün ideal olan bu divan, həm oturma yeri, həm də çarpayı kimi istifadə edilə bilər.', 'Kiçik məkanlar üçün ideal olan bu divan, həm oturma yeri, həm də çarpayı kimi istifadə edilə bilər.', 'products/images/Xe2TKoDWk5trC2RVTz5Qjd9R1M9HDGAnEtdV33n7.png', 'products/videos/c2V7dqzf6dHo77jBL5n7MGy0SscqeR4ndWG54dEi.mp4', 800, 2, 2, 2, 67, 1, 0, 1, 0, 1, '2024-12-10 16:07:01', '2024-12-12 15:09:21'),
(16, 'Klassik Taxta Divan', 'Taxta Çərçivəli və Əl İşləməli Klassik Divan', 'Zərif və ənənəvi dizaynı ilə hər cür interyerə uyğun gəlir.', 'Zərif və ənənəvi dizaynı ilə hər cür interyerə uyğun gəlir.', 'products/images/qZ9fjkjS6RtZm6t0o8ms8YllLDNsC1S1EJsLE5Qq.png', 'products/videos/oBjUecXpi7zsyqmXjKXEoZZiNIWM7bUHjIqxcWr9.mp4', 1500, 1, 2, 1, 34, 1, 0, 1, 0, 1, '2024-12-10 16:08:46', '2024-12-12 15:09:22'),
(17, 'Modern Minimalist Divan', 'Minimalist Dizaynlı İki Oturacaqlı Divan', 'Modern və sadə interyerlər üçün nəzərdə tutulmuş bu divan, rahatlıq və stilin mükəmməl birləşməsidir.', 'Modern və sadə interyerlər üçün nəzərdə tutulmuş bu divan, rahatlıq və stilin mükəmməl birləşməsidir.', 'products/images/abDtBmyvtvsAejJh4VwGq0rerjaPmpPeEEjTcHjZ.png', 'products/videos/fI54iWXGfA1w10SDOshAlj8s5PmkCdRlbRYeM9eO.mp4', 700, 2, 2, 3, 467, 0, 5, 1, 0, 3, '2024-12-10 16:11:16', '2024-12-12 15:09:23'),
(18, 'Uşaq Divanı', 'Uşaqlar üçün Rəngarəng və Təhlükəsiz Divan', 'Uşaqların rahat oturması və oyun vaxtı üçün nəzərdə tutulmuş rəngli və təhlükəsiz dizayn.', 'Uşaqların rahat oturması və oyun vaxtı üçün nəzərdə tutulmuş rəngli və təhlükəsiz dizayn.', 'products/images/nQZw5jdesBr3uiY49NgXCBgxxC0rjRksSfeQxyC6.png', 'products/videos/RNaYIxem36jGZOqJjuNDqkoBl4PJi2hSyQ7Req2v.mp4', 300, 2, 2, 3, 345, 1, 18, 1, 0, 3, '2024-12-10 16:13:37', '2024-12-12 15:09:24'),
(19, 'Lüks Divan', 'Geniş və Lüks Yumşaq Divan', 'Zərif interyerlər üçün ideal olan bu divan, rahatlıq və dəbdəbəni bir araya gətirir.', 'Zərif interyerlər üçün ideal olan bu divan, rahatlıq və dəbdəbəni bir araya gətirir.', 'products/images/PyKSgUqflPGGXKRUou3WzQ4pw05nZR1A9ScjbTVN.png', 'products/videos/61JQYGslEjweRqMUhI7ijF29xMuOggDLy8G1DE2h.mp4', 230, 1, 2, 2, 38, 1, 0, 1, 0, 1, '2024-12-10 16:15:24', '2024-12-12 15:09:25'),
(20, 'Minimalist Geyim Dolabı', 'Modern və Minimalist Dizaynlı Geyim Dolabı', 'Sadə və funksional dizaynı ilə hər məkana uyğun olan bu geyim dolabı, paltarlarınızı səliqəli saxlamağa kömək edəcək.', 'Sadə və funksional dizaynı ilə hər məkana uyğun olan bu geyim dolabı, paltarlarınızı səliqəli saxlamağa kömək edəcək.', 'products/images/5SLMTxdxNac6f0WpkjT9Qw79AmkfaPqTXLiBxbep.jpg', 'products/videos/vzTmSTCpqobavShW7EP3o0EBrRmmD7ftHLfEjeBd.mp4', 900, 2, 5, 2, 24, 1, 33, 1, 0, 1, '2024-12-12 14:43:00', '2024-12-12 15:09:27'),
(21, 'Taxta Klassik Dolab', 'Təbii Taxtadan Hazırlanmış Klassik Geyim Dolabı', 'Ənənəvi görünüş və yüksək keyfiyyət axtaranlar üçün mükəmməl seçim.', 'Ənənəvi görünüş və yüksək keyfiyyət axtaranlar üçün mükəmməl seçim.', 'products/images/JsQ5tBsLT1O2leSWYlw6kZjN69W7DqNofoyU3WLf.jpg', 'products/videos/SSLDGbukaEDqujMC5xkifOGP3igkTEhuyns1bncA.mp4', 1500, 2, 5, 1, 567, 0, 5, 1, 0, 3, '2024-12-12 14:45:15', '2024-12-12 15:09:28'),
(22, 'Şüşəli Geyim Dolabı', 'Şüşə Qapılı və Geniş Geyim Dolabı', 'Mükəmməl interyer yaratmaq və geyimlərinizi nümayiş etdirmək üçün zərif dolab.', 'Mükəmməl interyer yaratmaq və geyimlərinizi nümayiş etdirmək üçün zərif dolab.', 'products/images/e5u4AO1QPy9dvNAFhuNWdfYu3cdH9SXNxPz7akML.jpg', 'products/videos/RiLbZo343PHrQ6TI0U2gRETQJuvClEQqjSbPtRyI.mp4', 1200, 2, 5, 3, 234, 1, 0, 1, 0, 2, '2024-12-12 14:48:03', '2024-12-12 15:09:29'),
(23, 'Uşaq Geyim Dolabı', 'Uşaqlar Üçün Əyləncəli və Rəngarəng Geyim Dolabı', 'Uşaqların geyimlərini səliqəli saxlamaq üçün nəzərdə tutulmuş rəngli və təhlükəsiz dolab.', 'Uşaqların geyimlərini səliqəli saxlamaq üçün nəzərdə tutulmuş rəngli və təhlükəsiz dolab.', 'products/images/0eg6V45955APuTYLwYH9X07pJ9tKyiis5LZjp56B.jpg', 'products/videos/7XLssvWehLcEWiKUdFLvGTkDcbjqjFL4dO6JN8HH.mp4', 600, 2, 5, 1, 34, 1, 10, 1, 0, 1, '2024-12-12 14:49:50', '2024-12-12 15:09:30'),
(24, 'Geniş Dördə Bölünən Dolab', 'Geniş və Funksional Dördə Bölünən Geyim Dolabı', 'Böyük ailələr üçün ideal olan bu dolab, geyimlərinizi və əşyalarınızı rahatlıqla saxlamağa imkan verir.', 'Böyük ailələr üçün ideal olan bu dolab, geyimlərinizi və əşyalarınızı rahatlıqla saxlamağa imkan verir.', 'products/images/lhW8MmzKLdWQ7eq8rirHA2XUc1QSZKgsZrAScdYZ.jpg', 'products/videos/DKpA0GptODQAt1dxaV0CsKPoIQRZeeoSNGYxo9fu.mp4', 2000, 2, 5, 1, 567, 1, 0, 1, 0, 1, '2024-12-12 14:52:38', '2024-12-12 15:09:31'),
(25, 'Lüks Dolab', 'Premium Dizaynlı Lüks Geyim Dolabı', 'Geniş interyerlər üçün mükəmməl uyğun gələn və həm estetik, həm də funksionallığı birləşdirən dolab.', 'Geniş interyerlər üçün mükəmməl uyğun gələn və həm estetik, həm də funksionallığı birləşdirən dolab.', 'products/images/sTZNxVHeqHoflZFgj5xltx7IckNNnWD04rxnAxfp.jpg', 'products/videos/HC1q8utgRcmryNo72H6KNYO92gB9mY4UbA9IXlJN.mp4', 300, 2, 5, 2, 978, 1, 22, 1, 0, 2, '2024-12-12 14:54:33', '2024-12-12 15:09:32'),
(26, 'Minimalist Geyim Dolabı', 'Modern və Minimalist Dizaynlı Geyim Dolabı', 'Sadə və funksional dizaynı ilə hər məkana uyğun olan bu geyim dolabı, paltarlarınızı səliqəli saxlamağa kömək edəcək.', 'Sadə və funksional dizaynı ilə hər məkana uyğun olan bu geyim dolabı, paltarlarınızı səliqəli saxlamağa kömək edəcək.', 'products/images/2eS0lVUyItggUhRJUgHxOhtlx4bxGhsXbDSCzWZt.jpg', 'products/videos/kOVQqaBI7P4d4bJrhyY8F3BNN5edOtMwmJNhbgXX.mp4', 900, 2, 5, 2, 56, 1, 0, 1, 0, 2, '2024-12-12 14:56:11', '2024-12-12 15:09:33'),
(27, 'Klassik Taxta Masa', 'Təbii Taxtadan Hazırlanmış Klassik Yemək Masası', 'Klassik üslubda hazırlanmış bu masa ailə yeməkləri üçün mükəmməl seçimdir. Təbii taxta materialı həm gözəl estetik görünüş, həm də davamlılıq təqdim edir. Geniş səthi ilə böyük ailə tədbirləri üçün rahatdır. Onun nəmə və cızılmalara qarşı qoruyucu qatı uzun illər boyu istifadəni təmin edir. Bu masa evinizdə rahatlıq və zərifliyi birləşdirəcək.', 'Klassik üslubda hazırlanmış bu masa ailə yeməkləri üçün mükəmməl seçimdir. Təbii taxta materialı həm gözəl estetik görünüş, həm də davamlılıq təqdim edir. Geniş səthi ilə böyük ailə tədbirləri üçün rahatdır. Onun nəmə və cızılmalara qarşı qoruyucu qatı uzun illər boyu istifadəni təmin edir. Bu masa evinizdə rahatlıq və zərifliyi birləşdirəcək.', 'products/images/fglOwe5wCCQIWQmUQdz4aePFBhAQqqxSS6McdnyE.png', 'products/videos/jQJuazPwoBOOlpqYLkkateCJhVbACBJVtdowBWjZ.mp4', 120, 1, 3, 1, 46, 1, 10, 1, 0, 1, '2024-12-12 14:59:17', '2024-12-12 15:09:34'),
(28, 'Şüşə Üstlü Metal Masa', 'Şüşə Üstlü və Minimalist Metal Çərçivəli Masa', 'Müasir interyer üçün nəzərdə tutulmuş şüşə üstlü bu masa zərif dizaynı və funksionallığı ilə seçilir. Temperli şüşə üstü həm təhlükəsizlik, həm də yüksək davamlılıq təmin edir. Paslanmayan metal ayaqları isə əlavə dayanıqlıq və uzunömürlülük təqdim edir. Asanlıqla təmizlənə bilən səthi onu gündəlik istifadə üçün ideal edir. Hər növ otağa uyğun minimalist və şık bir seçimdir.', 'Müasir interyer üçün nəzərdə tutulmuş şüşə üstlü bu masa zərif dizaynı və funksionallığı ilə seçilir. Temperli şüşə üstü həm təhlükəsizlik, həm də yüksək davamlılıq təmin edir. Paslanmayan metal ayaqları isə əlavə dayanıqlıq və uzunömürlülük təqdim edir. Asanlıqla təmizlənə bilən səthi onu gündəlik istifadə üçün ideal edir. Hər növ otağa uyğun minimalist və şık bir seçimdir.', 'products/images/x0oE6eKoG5swrcicXHGom4rhFn6SdyPVlxmqoncF.png', 'products/videos/AQhOkY2DFc0rK3Vx8lSUHd744cV2raD4sCCHB3Wh.mp4', 100, 1, 3, 1, 325, 0, 0, 1, 0, 2, '2024-12-12 15:01:01', '2024-12-12 15:09:35'),
(29, 'Katlanan Yemək Masası', 'Kiçik Məkana Uyğun Katlanan Yemək Masası', 'Bu masa kiçik məkanda maksimal rahatlıq təmin etmək üçün hazırlanıb. Katlanabilən mexanizmi sayəsində masanı lazım olduqda genişləndirə və ya yığışdıra bilərsiniz. O, həm yemək, həm də çoxfunksiyalı istifadə üçün idealdır. Yığcam dizaynı dar məkanlarda belə rahatlıqla yerləşir. Təbii taxta və MDF materialı isə keyfiyyət və gözəlliyi bir araya gətirir.', 'Bu masa kiçik məkanda maksimal rahatlıq təmin etmək üçün hazırlanıb. Katlanabilən mexanizmi sayəsində masanı lazım olduqda genişləndirə və ya yığışdıra bilərsiniz. O, həm yemək, həm də çoxfunksiyalı istifadə üçün idealdır. Yığcam dizaynı dar məkanlarda belə rahatlıqla yerləşir. Təbii taxta və MDF materialı isə keyfiyyət və gözəlliyi bir araya gətirir.', 'products/images/97iwgR3VA0ZAFk83qrEzkJkRo8iMyfIstoateTMv.png', 'products/videos/zl7HYca6caZPc1EU9AAvwhPGdExakdGVE3XTkvQf.mp4', 34.99, 3, 3, 1, 56, 1, 0, 1, 0, 1, '2024-12-12 15:02:37', '2024-12-12 15:09:36'),
(30, 'Modern İş Masası', 'Geniş Saxlama Bölməli Modern İş Masası', 'Geniş saxlama yerləri və modern dizaynı ilə bu masa iş yerinizdə funksionallıq təqdim edir. İnteqrasiya olunmuş kitab rəfləri iş materiallarını təşkil etməyi asanlaşdırır. Kabel idarəetmə sistemi isə texnologiyanızı səliqəli və təhlükəsiz saxlamağa imkan verir. Mat laminat örtüklü səthi isə həm estetik baxımdan gözəl, həm də asanlıqla təmizlənə biləndir. Bu masa ofis və ya evdə məhsuldarlığınızı artırmaq üçün mükəmməldir.', 'Geniş saxlama yerləri və modern dizaynı ilə bu masa iş yerinizdə funksionallıq təqdim edir. İnteqrasiya olunmuş kitab rəfləri iş materiallarını təşkil etməyi asanlaşdırır. Kabel idarəetmə sistemi isə texnologiyanızı səliqəli və təhlükəsiz saxlamağa imkan verir. Mat laminat örtüklü səthi isə həm estetik baxımdan gözəl, həm də asanlıqla təmizlənə biləndir. Bu masa ofis və ya evdə məhsuldarlığınızı artırmaq üçün mükəmməldir.', 'products/images/jpVw9DERad1Ul1L1Z55Yt7Vbgm1SyAtGluxHv0Gb.png', 'products/videos/JcnvkuqwqmnWGg9z8rhPXYQbDj8AJSxbnht3HwHr.mp4', 40, 3, 3, 2, 86, 1, 20, 1, 0, 2, '2024-12-12 15:04:25', '2024-12-12 15:09:37'),
(31, 'Mərmər Üstlü Masa', 'Mərmər Üstlü və Elegan Dizaynlı Yemək Masası', 'Lüks görünüşü və təbii materialı ilə fərqlənən mərmər üstlü bu masa evinizə eleganlıq gətirəcək. Təbii mərmər səthi yalnızca gözəl deyil, həm də yüksək davamlılığa malikdir. Polad ayaqları masaya əlavə dayanıqlıq və müasirlik qatır. Bu masa həm gündəlik istifadə, həm də xüsusi tədbirlər üçün ideal seçimdir. Lüks və zərif görünüş axtaranlar üçün unikal məhsuldur.', 'Lüks görünüşü və təbii materialı ilə fərqlənən mərmər üstlü bu masa evinizə eleganlıq gətirəcək. Təbii mərmər səthi yalnızca gözəl deyil, həm də yüksək davamlılığa malikdir. Polad ayaqları masaya əlavə dayanıqlıq və müasirlik qatır. Bu masa həm gündəlik istifadə, həm də xüsusi tədbirlər üçün ideal seçimdir. Lüks və zərif görünüş axtaranlar üçün unikal məhsuldur.', 'products/images/keYv5Lk6PWeUEno7DPbzz1InTUQZfXfdajihWOlF.png', 'products/videos/x9b1i1BI3iR5JYi4iaMzg0EmNuLsqyUQrMxcD5ly.mp4', 130, 3, 3, 1, 546, 1, 0, 1, 0, 1, '2024-12-12 15:05:50', '2024-12-12 15:09:38'),
(32, 'Klassik Taxta Masa', 'Təbii Taxtadan Hazırlanmış Klassik Yemək Masası', 'Klassik üslubda hazırlanmış bu masa ailə yeməkləri üçün mükəmməl seçimdir. Təbii taxta materialı həm gözəl estetik görünüş, həm də davamlılıq təqdim edir. Geniş səthi ilə böyük ailə tədbirləri üçün rahatdır. Onun nəmə və cızılmalara qarşı qoruyucu qatı uzun illər boyu istifadəni təmin edir. Bu masa evinizdə rahatlıq və zərifliyi birləşdirəcək.', 'Klassik üslubda hazırlanmış bu masa ailə yeməkləri üçün mükəmməl seçimdir. Təbii taxta materialı həm gözəl estetik görünüş, həm də davamlılıq təqdim edir. Geniş səthi ilə böyük ailə tədbirləri üçün rahatdır. Onun nəmə və cızılmalara qarşı qoruyucu qatı uzun illər boyu istifadəni təmin edir. Bu masa evinizdə rahatlıq və zərifliyi birləşdirəcək.', 'products/images/HxEsSENN3QKWOOqhMTthYVnGDLvYJthgJbPCwG8i.png', 'products/videos/B96wY5qzbZBJ57lfXog04byHpA3lReh7Lggx4Hnl.mp4', 45, 3, 3, 1, 23, 1, 5, 1, 0, 1, '2024-12-12 15:07:29', '2024-12-12 15:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_ratings`
--

INSERT INTO `product_ratings` (`id`, `product_id`, `user_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 25, 1, 5, '2024-12-12 15:21:07', '2024-12-12 15:21:07'),
(2, 3, 1, 4, '2024-12-12 15:32:18', '2024-12-12 15:32:18'),
(3, 4, 1, 5, '2024-12-12 15:40:08', '2024-12-12 15:40:08'),
(4, 2, 2, 5, '2024-12-12 15:47:01', '2024-12-12 15:47:01'),
(5, 5, 2, 4, '2024-12-16 16:48:02', '2024-12-16 16:48:02'),
(6, 1, 2, 5, '2024-12-16 16:48:59', '2024-12-16 16:48:59'),
(7, 9, 2, 1, '2024-12-16 16:49:25', '2024-12-16 16:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_views`
--

CREATE TABLE `product_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `viewed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_views`
--

INSERT INTO `product_views` (`id`, `product_id`, `user_id`, `count`, `viewed_at`, `created_at`, `updated_at`, `id_address`) VALUES
(1, 1, NULL, 1, '2024-12-12 15:14:13', '2024-12-12 15:14:13', '2024-12-12 15:14:13', '127.0.0.1'),
(2, 2, NULL, 1, '2024-12-12 15:20:06', '2024-12-12 15:20:06', '2024-12-12 15:20:06', '127.0.0.1'),
(3, 25, NULL, 1, '2024-12-12 15:21:00', '2024-12-12 15:21:00', '2024-12-12 15:21:00', '127.0.0.1'),
(4, 9, NULL, 1, '2024-12-12 15:22:12', '2024-12-12 15:22:12', '2024-12-12 15:22:12', '127.0.0.1'),
(5, 32, NULL, 1, '2024-12-12 15:23:24', '2024-12-12 15:23:24', '2024-12-12 15:23:24', '127.0.0.1'),
(6, 3, NULL, 1, '2024-12-12 15:32:12', '2024-12-12 15:32:12', '2024-12-12 15:32:12', '127.0.0.1'),
(7, 4, NULL, 1, '2024-12-12 15:40:06', '2024-12-12 15:40:06', '2024-12-12 15:40:06', '127.0.0.1'),
(8, 6, NULL, 1, '2024-12-12 15:43:25', '2024-12-12 15:43:25', '2024-12-12 15:43:25', '127.0.0.1'),
(9, 5, NULL, 1, '2024-12-12 15:48:24', '2024-12-12 15:48:24', '2024-12-12 15:48:24', '127.0.0.1'),
(10, 29, NULL, 1, '2024-12-15 13:19:51', '2024-12-15 13:19:51', '2024-12-15 13:19:51', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_sliders`
--

CREATE TABLE `promotion_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_publish` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion_sliders`
--

INSERT INTO `promotion_sliders` (`id`, `title`, `subtitle`, `content`, `image`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Qış Endirimi', '50%-dək endirimlərimiz mövcüddur', 'İndi alış-veriş edin və sərfəli qiymətlərlə ehtiyaclarınızı qarşılayın!', 'aboutbanner/SKsLI3cvDTe3IWTQ8wY7W8Zr49xvpqOTDP62u6Xk.png', 1, '2024-12-09 15:35:16', '2024-12-09 15:35:21'),
(2, 'Yeni İl Kampaniyası', '5%-dək endirimlər', 'Özünüzə və yaxınlarınıza unudulmaz hədiyyələr seçmək üçün ideal fürsət!', 'aboutbanner/BYRiStqqZsTJ8JNnm7SKeP1DhEEE4UxoNsuVmboh.png', 1, '2024-12-09 15:36:41', '2024-12-09 15:36:46'),
(3, 'Black Friday Təklifi', '70%-ə qədər endirim', 'Black Friday-də ən yaxşı təkliflər sizə yaxın!', 'aboutbanner/FxNLFbabSBFqLPsL9SWIEqC2pBfiz5FdEwU95SBp.png', 1, '2024-12-09 15:38:13', '2024-12-09 15:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `service_articles`
--

CREATE TABLE `service_articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `article_title_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_articles`
--

INSERT INTO `service_articles` (`id`, `title`, `content`, `article_title_id`, `created_at`, `updated_at`) VALUES
(1, 'Ətraflı Məhsul Təsvirləri və Şəkilləri', 'Məhsul səhifələrində mebelin ətraflı təsviri, ölçüləri, materialları, rəng seçimləri və yüksək keyfiyyətli şəkillər təqdim olunur.', 6, '2024-12-09 15:59:34', '2024-12-09 15:59:34'),
(2, 'Müştəri Reytinqlər', 'Alıcılar, məhsul haqqında qiymətləndirmə edə bilərlər. Bu, digər müştərilər üçün vacib məlumat mənbəyi olur.', 6, '2024-12-09 16:00:03', '2024-12-09 16:00:03'),
(3, 'Güzəştlər və Endirimlər', 'Xüsusi endirim kampaniyaları, festivallar və mövsümi təkliflər üçün müştərilərə güzəştlər təqdim edilir.', 6, '2024-12-09 16:00:19', '2024-12-09 16:00:19'),
(4, 'Evə Çatdırılma Xidməti', 'Məhsulların müştərinin ünvanına evə çatdırılması, sürətli və təhlükəsiz daşınma xidmətləri təqdim olunur.', 6, '2024-12-09 16:00:46', '2024-12-09 16:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `service_article_titles`
--

CREATE TABLE `service_article_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_publish` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_article_titles`
--

INSERT INTO `service_article_titles` (`id`, `name`, `is_publish`, `created_at`, `updated_at`) VALUES
(6, 'Sizə təklif etdiyimiz xidmətlər', 1, '2024-12-09 15:59:07', '2024-12-09 15:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Qonaq Otağı', '2024-12-09 16:04:24', '2024-12-09 16:04:24'),
(2, 'Yataq Otağı', '2024-12-09 16:04:30', '2024-12-09 16:04:30'),
(3, 'Ev Dekorasiyası', '2024-12-09 16:04:35', '2024-12-09 16:04:35'),
(4, 'Ev Ofisi', '2024-12-09 16:04:39', '2024-12-09 16:04:39'),
(5, 'Biznes Həll', '2024-12-09 16:04:51', '2024-12-09 16:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `phone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `surname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `phone`, `city`, `country`, `profile`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `surname`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', NULL, NULL, NULL, NULL, NULL, '$2y$12$3694iSGPWEl5U.uHTrgWTOOMWz6uR4Hqkjio/DeVjZ8sgoIFj97XC', NULL, '2024-12-09 13:11:23', '2024-12-09 13:11:23', 'Admin'),
(2, 'Shalala', 'shalala@gmail.com', 'user', 'null', 'Mingechevir', 'Azerbaijan', 'profile/5fmaveycezcoKPM47m4mfSGvVcmgJfnLDqriouRq.jpg', NULL, '$2y$12$vj0nszS2QurmFT5ktVYUb.4qfjv58R6amUcPIy6NLYSB1HHnb.e4W', NULL, '2024-12-09 13:17:47', '2024-12-12 15:44:12', 'Shafiyeva');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `address`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 2, 'Baki seheri', 1, '2024-12-12 15:44:28', '2024-12-15 13:21:42'),
(2, 2, 'Mingechevir', 0, '2024-12-12 15:46:19', '2024-12-15 13:21:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_banners`
--
ALTER TABLE `about_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_number_subtitles`
--
ALTER TABLE `about_number_subtitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_number_titles`
--
ALTER TABLE `about_number_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_paralaxes`
--
ALTER TABLE `about_paralaxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_team_members`
--
ALTER TABLE `about_team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_team_titles`
--
ALTER TABLE `about_team_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baskets`
--
ALTER TABLE `baskets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basket_products`
--
ALTER TABLE `basket_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `charasteristics`
--
ALTER TABLE `charasteristics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_images`
--
ALTER TABLE `color_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exellence_services`
--
ALTER TABLE `exellence_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_views`
--
ALTER TABLE `product_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_sliders`
--
ALTER TABLE `promotion_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_articles`
--
ALTER TABLE `service_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_article_titles`
--
ALTER TABLE `service_article_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_banners`
--
ALTER TABLE `about_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_number_subtitles`
--
ALTER TABLE `about_number_subtitles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `about_number_titles`
--
ALTER TABLE `about_number_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `about_paralaxes`
--
ALTER TABLE `about_paralaxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_team_members`
--
ALTER TABLE `about_team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `about_team_titles`
--
ALTER TABLE `about_team_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `baskets`
--
ALTER TABLE `baskets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basket_products`
--
ALTER TABLE `basket_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `charasteristics`
--
ALTER TABLE `charasteristics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `color_images`
--
ALTER TABLE `color_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `exellence_services`
--
ALTER TABLE `exellence_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_views`
--
ALTER TABLE `product_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `promotion_sliders`
--
ALTER TABLE `promotion_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_articles`
--
ALTER TABLE `service_articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_article_titles`
--
ALTER TABLE `service_article_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
