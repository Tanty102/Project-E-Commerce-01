-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2023 at 03:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `newimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `image`, `is_popular`, `newimage`) VALUES
(2, 'facere ratione', 'facere-ratione', '2023-03-12 11:37:48', '2023-03-12 11:37:48', '', 0, NULL),
(3, 'saepe maxime', 'saepe-maxime', '2023-03-12 11:37:48', '2023-03-12 11:37:48', '', 0, NULL),
(4, 'quasi qui', 'quasi-qui', '2023-03-12 11:37:48', '2023-03-12 11:37:48', '', 0, NULL),
(6, 'explicabo enim', 'explicabo-enim', '2023-03-12 11:37:48', '2023-03-12 11:37:48', '', 0, NULL),
(8, 'Mới', 'moi', '2023-03-21 07:44:57', '2023-03-21 07:44:57', '1679409897.jpg', 1, NULL),
(9, 'Gatsby01', 'gatsby01', '2023-03-21 07:47:20', '2023-03-21 07:47:20', '1679410040.jpg', 1, NULL),
(10, 'GUIBY', 'guiby', '2023-03-21 07:47:49', '2023-03-21 07:47:49', '1679410069.jpg', 1, NULL),
(11, 'Produc-1', 'produc-1', '2023-03-21 07:48:56', '2023-03-21 07:48:56', '1679410136.jpg', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `top_title`, `title`, `sub_title`, `offer`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Tấn Tỵ', 'DH19TIN03', '192103', 'Project DATN', 'http://127.0.0.1:8000/shop', '1679250139.png', 1, '2023-03-19 11:22:19', '2023-03-19 11:22:19'),
(2, 'nguyễn tấn tỵ', 'dh19tin03', '192103', 'DNTN', 'http://127.0.0.1:8000/shop', '1679250188.png', 1, '2023-03-19 11:23:08', '2023-03-19 11:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_12_174008_create_categories_table', 2),
(6, '2023_03_12_174034_create_products_table', 2),
(7, '2023_03_18_144035_create_home_sliders_table', 3),
(8, '2023_03_19_164340_add_image_and_is_popular_column_to_categories_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'eos assumenda quis corrupti aut nisi', 'eos-assumenda-quis-corrupti-aut-nisi', 'Voluptas dicta et voluptatem beatae ut ab. Fuga qui et itaque adipisci earum. Numquam dolores quis iusto nam rerum. Vitae aliquam laboriosam sequi animi dolore in.', 'Dicta eligendi sit veniam minima consequatur rem. Quia ea doloremque amet vero nobis ut possimus quia. Amet et consequuntur alias veniam. Qui voluptatum dolore veniam est. Quidem occaecati quasi doloremque ad eos error tempore. Qui excepturi neque deleniti eum dolorem. Repudiandae est inventore neque itaque deleniti temporibus id quod.', '398.00', NULL, 'PRD475', 'instock', 0, 26, 'product-13.jpg', NULL, 2, '2023-03-12 11:44:25', '2023-03-12 11:44:25'),
(3, 'soluta optio sit voluptates voluptatum unde', 'soluta-optio-sit-voluptates-voluptatum-unde', 'Architecto odit illo non veniam et in. Vel sed assumenda sed ut. Maxime odit tempora eum. Magni modi sint sequi amet in. Ipsam quas voluptate laborum.', 'Est maiores minus et eius rem libero voluptatem. Incidunt autem dolores rem eius omnis molestiae. Iusto quaerat id perspiciatis mollitia eius facilis. Fugiat ut exercitationem qui et omnis porro consequatur. Possimus iusto magni neque eius suscipit fuga et. Laboriosam accusantium maxime omnis. Voluptates natus assumenda a et.', '344.00', NULL, 'PRD415', 'instock', 0, 22, 'product-15.jpg', NULL, 3, '2023-03-12 11:44:25', '2023-03-12 11:44:25'),
(5, 'perspiciatis facere optio et commodi animi', 'perspiciatis-facere-optio-et-commodi-animi', 'Mollitia quis debitis accusamus impedit repudiandae. Optio nihil non sint et repudiandae reprehenderit. Dignissimos suscipit rerum quo esse assumenda.', 'Sit aut sint molestias consectetur consectetur. Fuga autem eveniet dicta et. Dolore quod dolore aliquid quisquam est rem officia. Harum ut quia similique aut. Ex assumenda tempora sunt temporibus dolorem eligendi ea totam. Facilis ut voluptatem ut praesentium. Nostrum rerum vero enim voluptas eius facere. Dolor ratione quis sed eveniet. Iure architecto ad nihil accusamus. Numquam saepe omnis voluptas hic ut consequatur eveniet. Nisi quis vel qui ad ut. Sed est natus perferendis ipsum.', '397.00', NULL, 'PRD357', 'instock', 0, 40, 'product-9.jpg', NULL, 4, '2023-03-12 11:44:25', '2023-03-12 11:44:25'),
(9, 'molestiae assumenda exercitationem quo qui voluptatum', 'molestiae-assumenda-exercitationem-quo-qui-voluptatum', 'Est maxime sit veritatis cumque ut. Beatae eveniet impedit ea dolores et sequi. Ad quo similique natus in velit commodi. Vel consequuntur laboriosam illum placeat.', 'Hic quisquam consequatur rem esse itaque magni velit similique. Autem qui error optio sint. Veritatis quis laboriosam reiciendis voluptas. Nam molestiae velit enim accusamus modi ipsum. Eius earum alias ut ex repellat. Quis amet ut perspiciatis id. Soluta quae aut aliquid reiciendis. Hic dolores cupiditate quia voluptatem autem distinctio. Eaque voluptas vel numquam deleniti qui qui est. Distinctio maxime reiciendis qui in. Inventore et rerum culpa minus blanditiis ut.', '299.00', NULL, 'PRD103', 'instock', 0, 15, 'product-5.jpg', NULL, 2, '2023-03-12 11:44:25', '2023-03-12 11:44:25'),
(10, 'temporibus et adipisci quam a sunt', 'temporibus-et-adipisci-quam-a-sunt', 'Omnis eum voluptatem ab id facere sapiente. Ut sint dolor optio inventore odio deserunt commodi magni. Earum soluta quas quaerat. Dolorum nesciunt repellendus ea velit aut.', 'Voluptates nemo sit ducimus. Porro commodi eos aut dolorem amet. Ipsa beatae veniam voluptatem et. Est ducimus error tenetur a pariatur ratione alias. Perspiciatis nostrum eaque ipsa porro dignissimos maxime assumenda doloribus. Dicta vel non officia rerum minus est non corrupti. Voluptates recusandae quo nesciunt. Ut dicta neque rerum tempore. Sunt velit omnis nisi qui nihil distinctio corrupti. Cupiditate aut ut ad dicta. Dolor labore aut sed ullam officia aut.', '238.00', NULL, 'PRD308', 'instock', 0, 49, 'product-11.jpg', NULL, 2, '2023-03-12 11:44:25', '2023-03-12 11:44:25'),
(11, 'facilis quo cum consequatur dignissimos laborum', 'facilis-quo-cum-consequatur-dignissimos-laborum', 'Ducimus quo velit nihil necessitatibus in qui iusto. Ut itaque voluptatem debitis fuga quae voluptatibus.', 'Doloremque atque odio dolorem inventore nam labore saepe. Ipsa laboriosam quasi eos ut. Fuga pariatur dolor expedita rerum voluptatem. Quasi velit molestiae alias sed quam delectus. Est in reprehenderit delectus aut ad laborum. Consectetur illo ratione reiciendis qui. Similique alias magni voluptatem fugiat nam inventore velit fugit. Porro sunt ad molestias illo voluptatem totam.', '203.00', NULL, 'PRD485', 'instock', 0, 27, 'product-16.jpg', NULL, 3, '2023-03-12 11:44:25', '2023-03-12 11:44:25'),
(12, 'voluptatem id sit sunt illo dolorem', 'voluptatem-id-sit-sunt-illo-dolorem', 'Officia laboriosam pariatur cum sint hic officiis. Praesentium a cum libero omnis. Dolores consequatur atque eaque qui sint impedit.', 'Deleniti aut odio quae nam placeat suscipit. Sit odit sed unde cupiditate magni. Est hic ut velit fugit nostrum vel libero. Voluptate et aliquam dolorum sint rerum harum nam pariatur. Id saepe rem dolores doloribus dolorum. Ratione dolore soluta rerum explicabo ea omnis. Perspiciatis facere dolorem aliquid nam assumenda sed. Dolorem eligendi aut doloremque dolore aspernatur. Iure earum velit sunt. Itaque vel sed quia.', '59.00', NULL, 'PRD150', 'instock', 0, 49, 'product-9.jpg', NULL, 3, '2023-03-12 11:44:25', '2023-03-12 11:44:25'),
(13, 'minus ipsam iusto ipsum voluptas non', 'minus-ipsam-iusto-ipsum-voluptas-non', 'Omnis veniam aut ea tempore ex quae iusto quos. Voluptas aut quo necessitatibus. Eos at sunt deserunt adipisci dolorem quis suscipit. Ut assumenda corrupti necessitatibus ab minus.', 'Quaerat aperiam consequatur sunt sequi reiciendis non at. At cupiditate eum qui sit aut qui. Sunt ab ipsa hic est placeat enim dolorem ab. Odio quae reiciendis a omnis consequatur esse. Illo aliquid ipsum placeat at odio velit. Hic aliquid ullam autem voluptates tenetur libero. Quia inventore qui molestiae rerum. Consequatur sequi iste assumenda nobis dignissimos ipsum. Ea esse fugiat sunt at ducimus. Ut tenetur qui numquam enim distinctio aut. Delectus quos ad deserunt expedita sed sed.', '251.00', NULL, 'PRD192', 'instock', 0, 20, 'product-9.jpg', NULL, 2, '2023-03-12 11:44:25', '2023-03-12 11:44:25'),
(15, 'modi fuga necessitatibus sed in id', 'modi-fuga-necessitatibus-sed-in-id', 'Autem iusto optio est. Cumque voluptatem aut cum accusantium. Magnam officia assumenda autem enim adipisci distinctio blanditiis.', 'Enim ipsam nemo repudiandae ut expedita assumenda. Occaecati quia sit in maiores voluptas beatae incidunt ut. Quis perspiciatis libero veniam natus sit ut molestiae. Mollitia pariatur aut nemo quos. Consequatur et ea voluptatem cumque perferendis quia. Perspiciatis tempora qui consectetur aspernatur ut. Repudiandae iusto culpa veniam eveniet voluptate aliquam aperiam sunt. Et ab quia adipisci qui ut molestiae qui. Totam ab dicta accusamus. Iusto reprehenderit tenetur ut exercitationem.', '252.00', NULL, 'PRD491', 'instock', 0, 32, 'product-6.jpg', NULL, 4, '2023-03-12 11:44:25', '2023-03-12 11:44:25'),
(17, 'et cumque cum aliquam et architecto', 'et-cumque-cum-aliquam-et-architecto', 'Omnis in eos dolor repellendus dignissimos. Cum aperiam deleniti reprehenderit doloribus ut.', 'Voluptatem ut nulla repellendus rem eius voluptates est. Quidem itaque odit suscipit ab culpa enim in et. Optio eum ea perspiciatis minima rerum sint. Natus corrupti delectus at. Dolores fuga praesentium pariatur voluptatem consequatur iste in optio. Iste ab laborum nesciunt aliquam perferendis voluptas. Esse nihil ipsa quos vero officiis molestias. Ab sit quidem voluptatum iure quidem consectetur aut tenetur.', '295.00', NULL, 'PRD261', 'instock', 0, 46, 'product-8.jpg', NULL, 4, '2023-03-12 11:47:11', '2023-03-12 11:47:11'),
(19, 'rerum est consequatur minima totam enim', 'rerum-est-consequatur-minima-totam-enim', 'Cumque enim qui asperiores voluptas quaerat qui. Odio sit alias sequi ut quaerat ipsum aliquam modi. Omnis libero ut temporibus.', 'Veniam accusamus odio voluptatem et. Ducimus eaque autem quas ex veniam est amet. Iure facere optio nisi doloribus soluta eaque ut. Aut ut quasi modi voluptatem aperiam aliquid ut. Id qui deleniti omnis consequatur odio sint. Rerum ut ut id tempora. Laudantium omnis iusto accusantium hic quae. Impedit alias ea blanditiis ut eum.', '332.00', '290.00', 'PRD489', 'instock', 1, 25, 'product-11.jpg', NULL, 4, '2023-03-12 11:47:11', '2023-03-21 07:50:15'),
(21, 'non ex eius repellendus quod porro', 'non-ex-eius-repellendus-quod-porro', 'Aut nostrum quae ut repellat placeat. Nam distinctio enim animi doloribus esse laboriosam. Porro ad quae aperiam voluptatum voluptatum est. Quia aliquid placeat aliquid in.', 'Quis nisi sapiente rerum quo. Reprehenderit nobis tenetur dignissimos sed illo dignissimos. Nemo corrupti dolorem tempora consequatur. Incidunt sit labore eligendi ullam dolor excepturi commodi harum. Qui aspernatur saepe assumenda non et. Suscipit sed asperiores vero voluptatum. Non culpa laboriosam rerum ut architecto aliquam. Et qui eligendi soluta officiis laborum exercitationem. Ipsum quod modi repudiandae. Deserunt a rem aut qui et corporis. Et ut aut labore ea. Dolor esse labore sed.', '408.00', NULL, 'PRD214', 'instock', 0, 49, 'product-3.jpg', NULL, 4, '2023-03-12 11:47:11', '2023-03-12 11:47:11'),
(22, 'pariatur quidem et nobis sit aliquam', 'pariatur-quidem-et-nobis-sit-aliquam', 'Eaque sequi fuga eum rerum. Beatae quas nihil et in nulla. Nobis soluta ab quos debitis hic explicabo.', 'Laboriosam saepe mollitia magni aliquid perferendis. Magnam omnis minus ipsa deleniti aperiam qui. Soluta blanditiis asperiores quis. Dicta odio omnis voluptate maiores atque molestiae error. Numquam nostrum dicta in reprehenderit. Mollitia accusamus quidem similique doloremque et itaque. Est cumque tempora eos ab. Quibusdam excepturi dignissimos delectus explicabo vel. Fugit facilis labore aliquid perferendis hic voluptatibus.', '310.00', '260.00', 'PRD468', 'instock', 1, 28, 'product-9.jpg', NULL, 2, '2023-03-12 11:47:11', '2023-03-21 07:50:41'),
(23, 'rem modi a nesciunt dolorem voluptatibus', 'rem-modi-a-nesciunt-dolorem-voluptatibus', 'Facilis voluptas temporibus non perspiciatis corporis. Sed sit beatae error et fuga. Quia earum ut impedit deleniti autem et. Perferendis consequuntur cum eum aut ea rerum assumenda quas.', 'Temporibus et est vel et. Tempora temporibus eos eligendi porro dolorem. Repudiandae voluptatem facilis delectus reiciendis perferendis ut at. Officia maiores eos dolorum consectetur est reiciendis. Ipsum ea consequatur quis quia. At magnam cupiditate voluptatem rerum placeat culpa dicta. Aliquam quasi occaecati aut earum.', '415.00', NULL, 'PRD270', 'instock', 0, 23, 'product-4.jpg', NULL, 3, '2023-03-12 11:47:11', '2023-03-12 11:47:11'),
(24, 'dolor et vitae itaque consequatur sed', 'dolor-et-vitae-itaque-consequatur-sed', 'Suscipit nesciunt explicabo consequatur eos tempora. Quam natus nemo a eos voluptates consequatur. Recusandae optio deserunt omnis et voluptatem neque et.', 'Repellat omnis labore enim. Doloribus adipisci nostrum repellendus. Sed ea non quidem est iste sed culpa. Fuga quaerat facilis laboriosam assumenda. Nemo voluptatibus culpa assumenda nisi est qui et. Pariatur et non quia quo nobis aut quia. Nihil voluptas et omnis autem molestiae autem aut fugiat. Nesciunt rerum at sequi sed aut neque et qui. Quibusdam delectus ut aliquam tempore. Ullam consequatur quia ut cum. Rerum ea occaecati est aperiam optio dolorum.', '349.00', NULL, 'PRD153', 'instock', 0, 20, 'product-1.jpg', NULL, 3, '2023-03-12 11:47:11', '2023-03-12 11:47:11'),
(25, 'ut qui ut rerum exercitationem totam', 'ut-qui-ut-rerum-exercitationem-totam', 'Consequatur sint aliquam deserunt ut et voluptatem quia. Sint aperiam omnis impedit ipsam. Aut cumque id eos voluptatem nobis sint.', 'Quasi impedit sint eveniet qui eligendi sunt autem. Esse ullam ea quo porro dolorum id placeat. Fugiat sunt perspiciatis dolorum qui dolores aut. Ab itaque non corporis ipsa. Praesentium tenetur maiores veniam qui. Blanditiis sed aperiam sint sapiente voluptatum tempore minus. Dignissimos aut qui atque mollitia eius sunt. Velit alias dolor suscipit voluptatem. Culpa reprehenderit vel minima. Fuga blanditiis earum quasi. Et voluptatibus incidunt molestiae sed in.', '186.00', NULL, 'PRD361', 'instock', 0, 16, 'product-12.jpg', NULL, 3, '2023-03-12 11:47:11', '2023-03-12 11:47:11'),
(27, 'soluta cum unde qui natus praesentium', 'soluta-cum-unde-qui-natus-praesentium', 'Ut sunt vero minus et. Iure dolorem aut voluptatem neque. Et suscipit quia autem impedit qui. Quisquam alias rerum nemo et. Et vel aut quia voluptatum quos.', 'Amet corrupti ullam numquam ex ducimus. Et quis assumenda omnis voluptate aliquid. Repudiandae earum aut tempora illum facere. Ut facere vel numquam quo quis nulla aspernatur. Ut deleniti natus ipsum nihil placeat. Adipisci sed et illum quaerat omnis assumenda corporis eligendi. Nihil atque velit corrupti velit. Sint inventore quis iste hic officia. Et vitae voluptatem recusandae ut. Quo nostrum cumque rerum est similique commodi sed. Id aliquam maxime pariatur sit.', '220.00', NULL, 'PRD121', 'instock', 0, 40, 'product-1.jpg', NULL, 3, '2023-03-12 11:47:11', '2023-03-12 11:47:11'),
(32, 'accusamus aliquam expedita aut deserunt quo', 'accusamus-aliquam-expedita-aut-deserunt-quo', 'Natus perferendis iure ut facere omnis dolor. Aut porro qui sunt neque. Est et aliquam ut quam ut. Tempora ut exercitationem delectus non atque adipisci quod. Placeat id vero sequi voluptates facere.', 'Sunt ea maxime labore magnam. Rem omnis quod atque quisquam. Temporibus sapiente natus sequi asperiores deserunt numquam enim. Vero illum incidunt quis minus. Ducimus enim temporibus ipsa. Blanditiis eum eum deserunt sit. Sequi provident quis non. Qui temporibus necessitatibus optio accusamus sunt ut. Inventore officiis quia aut laborum ratione. Enim fuga non quis nam exercitationem occaecati quia.', '183.00', NULL, 'PRD466', 'instock', 0, 16, 'product-16.jpg', NULL, 2, '2023-03-12 11:47:11', '2023-03-12 11:47:11'),
(34, 'facere molestiae facilis necessitatibus vel similique', 'facere-molestiae-facilis-necessitatibus-vel-similique', 'Deleniti iure enim nam libero maxime hic. Suscipit occaecati optio dolorum. Velit est et dolorem exercitationem ducimus non fuga.', 'Sapiente quisquam molestias quibusdam hic est. Quam alias omnis voluptates magnam eaque qui. Accusamus minima consequatur voluptas. Quia nobis tenetur iusto quo molestiae est. Animi facilis laborum quam soluta debitis voluptate. Dolorem distinctio inventore soluta rerum commodi molestiae. Est magnam minus vel et. Est vitae impedit repellat. Ipsam in perferendis quod eligendi dolorem voluptatem. Sed nam rerum et mollitia. Ipsam et veniam et sint omnis voluptatem.', '164.00', '290.00', 'PRD279', 'instock', 1, 49, 'product-13.jpg', NULL, 2, '2023-03-12 11:49:05', '2023-03-19 09:12:46'),
(35, 'ducimus omnis ut harum similique nisi', 'ducimus-omnis-ut-harum-similique-nisi', 'Aut voluptatem quidem qui ratione consequatur. Alias eos eos nihil aut similique sequi ducimus. Dolor autem qui corrupti reprehenderit laudantium eum. Quod ut nemo est velit.', 'Sunt quia beatae maxime quam impedit. Sunt neque quo aliquid. Vero officia dolorem rerum illo asperiores ratione qui. At libero dolorem non quasi iste voluptas. Velit atque error pariatur ex molestias occaecati consequuntur. Rerum quidem excepturi est. Magni omnis libero ut alias. Dolor quidem consectetur nihil. Animi aliquam in deleniti voluptatem autem.', '485.00', NULL, 'PRD337', 'instock', 0, 50, 'product-1.jpg', NULL, 2, '2023-03-12 11:49:05', '2023-03-12 11:49:05'),
(36, 'et vel ut voluptatem voluptatem sed', 'et-vel-ut-voluptatem-voluptatem-sed', 'Vel accusantium atque voluptatum. Voluptates amet voluptate non et. Sequi dicta consequatur consequatur fuga amet. Modi non ducimus ut dignissimos. Illo voluptates quia dolor culpa itaque dolore sit.', 'Iusto maiores modi reprehenderit at quam qui. Temporibus est omnis magni officiis dolores in et. Neque et aut minus. Sit aut ut dignissimos fugit rerum qui fugit. Alias ex est velit aut. Expedita et deserunt laboriosam iste sit ea modi magnam. Natus perspiciatis nostrum accusantium provident ad excepturi. Laborum dignissimos aut voluptates et voluptas aut.', '184.00', '290.00', 'PRD224', 'instock', 1, 38, 'product-3.jpg', NULL, 3, '2023-03-12 11:49:05', '2023-03-19 09:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for Normal Users',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tanty102', 'admin@gmail.com', NULL, '$2y$10$M7PA3WVvCAnsUXzwmhBImOUDo1e3pexOkHkMuPFqzn9s/xWQ0JFPi', 'ADM', NULL, '2023-03-12 05:44:52', '2023-03-12 05:44:52'),
(2, 'Quỳnh Như', 'nguyenthiquynhnhu132@gmail.com', NULL, '$2y$10$ykd6l2NatFSSNM98mWU3jO1agvyePQKNSSRQbT0Uv841n3723kOLS', 'USR', NULL, '2023-03-12 05:46:17', '2023-03-12 05:46:17'),
(3, 'Nguyễn Văn A', 'nguyentanty1245367@gmail.com', NULL, '$2y$10$h2t42zPWzkO7bsN1ST5PiO6/QVNcqZsuWrSQrgIZs8u0ZmQDzxoyC', 'USR', NULL, '2023-03-12 10:34:02', '2023-03-12 10:34:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
