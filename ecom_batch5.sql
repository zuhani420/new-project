-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 03:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_batch5`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'SONY', 'Sony  is a Japanese multinational corporation in Minato, Tokyo, Japan.', 'brand-images/673459.png', 1, '2023-01-18 16:06:46', '2023-01-18 16:20:32'),
(4, 'MENS WORLD', 'Mens World is marching toward a wholly modern approach to fashion', 'brand-images/Logo-3.png.webp', 1, '2023-01-18 16:22:19', '2023-01-18 16:22:40'),
(5, 'Aarong', 'Aarong is a Bangladeshi department stores specializing in handicrafts.', 'brand-images/download.png', 1, '2023-01-18 16:27:11', '2023-01-18 16:35:00'),
(6, 'OnePlus', 'Explore the latest version of OnePlus Phones, Wearables, Audios.', 'brand-images/OnePlus-New-Logo-2.webp', 1, '2023-01-18 16:28:59', '2023-01-18 16:28:59'),
(7, 'ZINQ Technologies', 'The idea behind the new Zinq IT that would represent to the world.', 'brand-images/images.png', 1, '2023-01-18 16:32:03', '2023-01-18 16:32:03'),
(8, 'Adidas', 'A collection where you are sure to find amazing articles.', 'brand-images/Adidas_Logo.svg.webp', 1, '2023-01-18 16:34:04', '2023-01-18 16:34:04'),
(9, 'Reebok', 'Reebok International Limited is an American fitness', 'brand-images/551064.png', 1, '2023-01-18 16:36:17', '2023-01-18 16:36:17'),
(10, 'Tiffany & Co', 'Tiffany & Co. is a luxury jewelry and specialty retailer,', 'brand-images/Tiffany-Co-logo.png', 1, '2023-01-18 16:39:00', '2023-01-18 16:39:00'),
(11, 'Cartier', 'Cartier International SNC, or simply Cartier, is a French luxury good', 'brand-images/1200px-Cartier_logo.svg.png', 1, '2023-01-18 16:40:27', '2023-01-18 16:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Men\'s Fashion', 'men\'s-clothing', 'category-images/icons8-short-sleeve-shirt-32.png', 1, '2023-01-18 14:48:03', '2023-01-18 14:48:03'),
(7, 'Women\'s Fashion', 'Women\'s Clothing', 'category-images/icons8-wedding-dress-50.png', 1, '2023-01-18 14:52:45', '2023-01-18 15:11:55'),
(8, 'Electronic Devices', 'Deferent Electronic Devices', 'category-images/icons8-multiple-devices-50.png', 1, '2023-01-18 14:56:06', '2023-01-18 14:56:06'),
(9, 'Electronic Accessories', 'Electronic Accessories', 'category-images/usb.png', 1, '2023-01-18 15:02:04', '2023-01-18 15:02:04'),
(10, 'Sports & Outdoor', 'Sports & Outdoor', 'category-images/sports.png', 1, '2023-01-18 15:03:52', '2023-01-18 15:03:52'),
(11, 'Jewelry & Accessories', 'Jewelry & Accessories', 'category-images/icons8-necklace-64.png', 1, '2023-01-18 15:04:54', '2023-01-18 16:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `image`, `nid`, `dob`, `blood_group`, `address`, `status`, `created_at`, `updated_at`, `password`) VALUES
(1, 'Habibur Rahman', 'habib2498922@gmail.com', '01711805110', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26 08:17:09', '2023-01-26 08:17:09', '$2y$10$JNyAEhjuawxKXEwcM7SR7.kNZY1XyH3eerAhXU7ta0ZWFh7FJkXqm'),
(4, 'Rakib HAsan', 'hasan@gmail.com', '112233', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 06:56:58', '2023-01-29 06:56:58', '$2y$10$ueuq87z4Yg7TE68mcLsrEOH6DI/GSbsVQFVZgiRiVi0HpNcIdCbdC'),
(5, 'Sumon Khan', 'khan@gmail.com', '123123', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 07:09:27', '2023-01-29 07:09:27', '$2y$10$0p2RP.RKEHpPTh1aWyE/COpl4LEJkZaKmuTl6aB2wjbxLYbLHFhBK'),
(6, 'Eliad Khan', 'elias@gmail.com', '01715456123', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 07:40:25', '2023-01-29 07:40:25', '$2y$10$BMykd8SR8ZZS9R6DhlrYF.NdN83wH7Rm5GeTHChfkdU9jD9KgX5Gm'),
(7, 'Riyad HAsan', 'riyad@gmail.com', '115599', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-31 07:04:50', '2023-01-31 07:04:50', '$2y$10$c7AaDov.t/5H0.YfSf/B7eAOLtA1XQoKuOa2cvu6F8BZqJ3XFTDju');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_01_08_123700_create_sessions_table', 1),
(7, '2023_01_12_122431_create_categories_table', 2),
(8, '2023_01_15_124054_create_sub_categories_table', 3),
(9, '2023_01_15_140036_create_brands_table', 4),
(10, '2023_01_15_141911_create_units_table', 5),
(11, '2023_01_17_132036_create_products_table', 6),
(12, '2023_01_17_132055_create_other_images_table', 6),
(19, '2023_01_26_134407_create_orders_table', 7),
(20, '2023_01_26_134415_create_order_details_table', 7),
(21, '2023_01_26_134424_create_customers_table', 7),
(22, '2023_01_26_135822_create_password_colum', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `tax_total` int(11) NOT NULL,
  `shipping_total` int(11) NOT NULL,
  `order_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_timestamp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `delivery_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `delivery_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_timestamp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_timestamp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_total`, `tax_total`, `shipping_total`, `order_date`, `order_timestamp`, `order_status`, `delivery_address`, `delivery_status`, `delivery_date`, `delivery_timestamp`, `payment_method`, `payment_status`, `payment_date`, `payment_timestamp`, `currency`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3145, 345, 500, '2023-01-26', '1674691200', 'Pending', '71 Outer Circular Rd, Mouchaq, Dhaka 1219', 'Pending', NULL, NULL, '1', 'Pending', NULL, NULL, NULL, NULL, '2023-01-26 08:17:09', '2023-01-26 08:17:09'),
(2, 4, 1535, 135, 500, '2023-01-29', '1674950400', 'Pending', 'Mirpur-100', 'Pending', NULL, NULL, '1', 'Pending', NULL, NULL, NULL, NULL, '2023-01-29 06:56:58', '2023-01-29 06:56:58'),
(3, 5, 960, 60, 500, '2023-01-29', '1674950400', 'Pending', 'Uttra-120', 'Pending', NULL, NULL, '1', 'Pending', NULL, NULL, NULL, NULL, '2023-01-29 07:09:27', '2023-01-29 07:09:27'),
(4, 1, 3030, 330, 500, '2023-01-29', '1674950400', 'Pending', 'Dhaka', 'Pending', NULL, NULL, '1', 'Pending', NULL, NULL, NULL, NULL, '2023-01-29 08:13:00', '2023-01-29 08:13:00'),
(5, 6, 4525, 525, 500, '2023-01-31', '1675123200', 'Pending', 'DhK', 'Pending', NULL, NULL, '1', 'Pending', NULL, NULL, NULL, NULL, '2023-01-31 06:29:36', '2023-01-31 06:29:36'),
(6, 7, 2800, 300, 500, '2023-01-31', '1675123200', 'Pending', 'Savar', 'Pending', NULL, NULL, '1', 'Pending', NULL, NULL, NULL, NULL, '2023-01-31 07:04:51', '2023-01-31 07:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Balack Color Printed Stylish Cotton Full Sleeve T-Shirt For Men - Genji', 300, 2, '2023-01-26 08:17:09', '2023-01-26 08:17:09'),
(2, 1, 4, 'Exclusive Designer Hand Print Half Silk Saree for women', 1700, 1, '2023-01-26 08:17:09', '2023-01-26 08:17:09'),
(3, 2, 3, 'Balack Color Printed Stylish Cotton Full Sleeve T-Shirt For Men - Genji', 300, 3, '2023-01-29 06:56:58', '2023-01-29 06:56:58'),
(4, 3, 6, 'Airbag Shockproof Silicone Soft Case For Samsung Galaxy', 400, 1, '2023-01-29 07:09:27', '2023-01-29 07:09:27'),
(5, 4, 2, 'New Formal Short', 2200, 1, '2023-01-29 08:13:00', '2023-01-29 08:13:00'),
(6, 5, 4, 'Exclusive Designer Hand Print Half Silk Saree for women', 1700, 1, '2023-01-31 06:29:36', '2023-01-31 06:29:36'),
(7, 5, 7, 'ADIDAS Genuine Leather Knit Fashion Men Sneakers Breathable Sock Chunky Shoes Trainers', 1800, 1, '2023-01-31 06:29:36', '2023-01-31 06:29:36'),
(8, 6, 8, 'Serenity Day Six Claw D Color Wedding Bridal Jewelry', 2000, 1, '2023-01-31 07:04:51', '2023-01-31 07:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `other_images`
--

CREATE TABLE `other_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_images`
--

INSERT INTO `other_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'product-other-images/13473.webp', '2023-01-17 08:20:18', '2023-01-17 08:20:18'),
(2, 1, 'product-other-images/18572.jpg', '2023-01-17 08:20:18', '2023-01-17 08:20:18'),
(3, 1, 'product-other-images/44957.jpg', '2023-01-17 08:20:18', '2023-01-17 08:20:18'),
(4, 1, 'product-other-images/39506.jpg', '2023-01-17 08:20:18', '2023-01-17 08:20:18'),
(5, 2, 'product-other-images/38227.webp', '2023-01-17 08:22:20', '2023-01-17 08:22:20'),
(6, 2, 'product-other-images/39633.jpg', '2023-01-17 08:22:21', '2023-01-17 08:22:21'),
(7, 2, 'product-other-images/45785.jpg', '2023-01-17 08:22:21', '2023-01-17 08:22:21'),
(8, 2, 'product-other-images/24893.jpg', '2023-01-17 08:22:21', '2023-01-17 08:22:21'),
(9, 3, 'product-other-images/24473.jpg', '2023-01-18 17:19:48', '2023-01-18 17:19:48'),
(10, 3, 'product-other-images/46818.jpg', '2023-01-18 17:19:48', '2023-01-18 17:19:48'),
(11, 3, 'product-other-images/40554.jpg', '2023-01-18 17:19:48', '2023-01-18 17:19:48'),
(12, 4, 'product-other-images/20952.webp', '2023-01-18 17:29:44', '2023-01-18 17:29:44'),
(13, 4, 'product-other-images/40971.webp', '2023-01-18 17:29:44', '2023-01-18 17:29:44'),
(14, 4, 'product-other-images/23909.webp', '2023-01-18 17:29:44', '2023-01-18 17:29:44'),
(15, 5, 'product-other-images/36876.webp', '2023-01-18 17:36:47', '2023-01-18 17:36:47'),
(16, 5, 'product-other-images/36893.webp', '2023-01-18 17:36:47', '2023-01-18 17:36:47'),
(17, 6, 'product-other-images/45198.webp', '2023-01-18 17:41:05', '2023-01-18 17:41:05'),
(18, 6, 'product-other-images/26813.webp', '2023-01-18 17:41:06', '2023-01-18 17:41:06'),
(19, 6, 'product-other-images/40258.webp', '2023-01-18 17:41:06', '2023-01-18 17:41:06'),
(23, 8, 'product-other-images/19752.webp', '2023-01-18 17:58:05', '2023-01-18 17:58:05'),
(24, 8, 'product-other-images/29623.webp', '2023-01-18 17:58:06', '2023-01-18 17:58:06'),
(25, 7, 'product-other-images/14810.webp', '2023-01-19 08:22:45', '2023-01-19 08:22:45'),
(26, 7, 'product-other-images/32602.jpg', '2023-01-19 08:22:45', '2023-01-19 08:22:45'),
(27, 7, 'product-other-images/44995.jpg', '2023-01-19 08:22:45', '2023-01-19 08:22:45'),
(28, 7, 'product-other-images/24633.jpg', '2023-01-19 08:22:45', '2023-01-19 08:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `regular_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `featured_count` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `stock_amount`, `regular_price`, `selling_price`, `short_description`, `long_description`, `image`, `status`, `hit_count`, `featured_count`, `created_at`, `updated_at`) VALUES
(1, 8, 8, 3, 1, 'New Sony Mobile', 'NSM123', 50, 50000, 45000, 'sdfckjhsdfkjhsadbv', '<p>cnvkjdfnvlkjdfglkg</p>', 'product-images/1673965218.jpg', 1, 0, 0, '2023-01-17 08:20:18', '2023-01-22 07:07:22'),
(2, 6, 4, 4, 1, 'New Formal Short', 'NFS334', 99, 2500, 2200, 'Short fdescroptekpo', '<p>sdfsad fds fsadf asdf asdf sadf</p>', 'product-images/1673965340.jpg', 1, 0, 0, '2023-01-17 08:22:20', '2023-01-29 08:13:00'),
(3, 6, 4, 5, 1, 'Balack Color Printed Stylish Cotton Full Sleeve T-Shirt For Men - Genji', '151428341_BD-1078558841', 500, 450, 300, 'Balack Color Printed Stylish Cotton Full Sleeve T-Shirt For Men - Genji.', '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Balack Color Printed Stylish Cotton Full Sleeve T-Shirt For Men - Genji</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: T-shirt</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material: Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Style: Casual</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">Update Bazar BD is an established clothing and accessories whole-sale and retail chain and value fashion house in Bangladesh that specializes in affordable quality apparel. Panjabi,Graphic tees, polo shirts, formal and casual shirts, denims, chinos, shorts, ladies and children wear, lingerie, accessories, leather bags and footwear - if it\'s a fashion staple must-have, we\'ll carry it!</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><strong style=\"margin: 0px; padding: 0px; font-weight: bold;\">Size Description</strong></p><table style=\"margin: 0px; padding: 0px; width: 950px; border: 1px solid rgb(170, 170, 170);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">SIZE</p></td></tr></tbody></table><table style=\"margin: 0px; padding: 0px; width: 950px; border: 1px solid rgb(170, 170, 170);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">Chest size by inch</p></td></tr></tbody></table><table style=\"margin: 0px; padding: 0px; width: 950px; border: 1px solid rgb(170, 170, 170);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">Length size by inch</p></td></tr></tbody></table><table style=\"margin: 0px; padding: 0px; width: 950px; border: 1px solid rgb(170, 170, 170);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">M</p></td></tr></tbody></table><table style=\"margin: 0px; padding: 0px; width: 950px; border: 1px solid rgb(170, 170, 170);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">38</p></td></tr></tbody></table><table style=\"margin: 0px; padding: 0px; width: 950px; border: 1px solid rgb(170, 170, 170);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">28</p></td></tr></tbody></table><table style=\"margin: 0px; padding: 0px; width: 950px; border: 1px solid rgb(170, 170, 170);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">L</p></td></tr></tbody></table><table style=\"margin: 0px; padding: 0px; width: 950px; border: 1px solid rgb(170, 170, 170);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">40</p></td></tr></tbody></table><table style=\"margin: 0px; padding: 0px; width: 950px; border: 1px solid rgb(170, 170, 170);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">29</p></td></tr></tbody></table><table style=\"margin: 0px; padding: 0px; width: 950px; border: 1px solid rgb(170, 170, 170);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">XL</p></td></tr></tbody></table><table style=\"margin: 0px; padding: 0px; width: 950px; border: 1px solid rgb(170, 170, 170);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">42</p></td></tr></tbody></table><table style=\"margin: 0px; padding: 0px; width: 950px; border: 1px solid rgb(170, 170, 170);\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">30</p></td></tr></tbody></table></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;\">Specifications of Balack Color Printed Stylish Cotton Full Sleeve T-Shirt For Men - Genji</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i3.28b5jqtjjqtjN8\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.28b5jqtjjqtjN8\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">151428341_BD-1078558841</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Main Material</span><div class=\"html-content key-value\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.28b5jqtjjqtjN8\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Cotton</div></li></ul></div></div></div></div>', 'product-images/1674083987.webp', 1, 0, 0, '2023-01-18 17:19:48', '2023-01-18 17:19:48'),
(4, 7, 18, 5, 1, 'Exclusive Designer Hand Print Half Silk Saree for women', '270610398_BD-1242296870', 699, 2000, 1700, 'Exclusive Designer Hand Print Half Silk Saree for women', '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Exclusive Designer Hand Print Half Silk Saree for women</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: Saree</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fashionable and Attractive Design</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: 100% Same as a picture</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color Details : Silk Hand print</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material: Half Silk Saree</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Work Details: Hand Print</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Saree: 12 / 13 hat Saree</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><li style=\"margin: 0px; padding: 0px;\">Exclusive Designer Hand Print Half Silk Saree for women</li></ul><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; font-size: 14px;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\">Product details of Exclusive Designer Hand Print Half Silk Saree for women</span></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><li style=\"margin: 0px; padding: 0px;\">Product Type: Saree</li><li style=\"margin: 0px; padding: 0px;\">Fashionable and Attractive Design</li><li style=\"margin: 0px; padding: 0px;\">Color: 100% Same as a picture</li><li style=\"margin: 0px; padding: 0px;\">Color Details : Silk Hand print</li><li style=\"margin: 0px; padding: 0px;\">Main Material: Half Silk Saree</li><li data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.6650AJGtAJGtIg\" style=\"margin: 0px; padding: 0px;\">Work Details: Hand Print</li><li data-spm-anchor-id=\"a2a0e.pdp.product_detail.i3.6650AJGtAJGtIg\" style=\"margin: 0px; padding: 0px;\">Saree: 12 / 13 hat Saree</li></ul></div></div></div>', 'product-images/1674084584.webp', 1, 0, 0, '2023-01-18 17:29:44', '2023-01-31 06:29:36');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `stock_amount`, `regular_price`, `selling_price`, `short_description`, `long_description`, `image`, `status`, `hit_count`, `featured_count`, `created_at`, `updated_at`) VALUES
(5, 8, 8, 6, 1, 'OnePlus', '9R', 200, 55000, 50000, '1Will my mobile phone work with a certain mobile carrier or i am traveling to another country and want to make sure your phone works there?\r\n\r\nhttp:willmyphonework.net  can help you find the answer', '<p class=\"MsoNormal\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: inherit; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 10.5pt; font-family: 宋体;\">For All Dear friend, Pls read me before you make order.</span></p><p class=\"MsoNormal\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: inherit; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun;\"><br></p><p class=\"MsoNormal\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: inherit; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 10.5pt; font-family: 宋体;\">1.I need pay for customs duty?</span></p><p class=\"MsoNormal\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: inherit; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 10.5pt; font-family: 宋体;\">Because Different countries have different tax policies. You may be charged custom duties and taxes for something purchased online. Buyers are responsible for custom taxes, our saling price does not include any custom taxes.</span></p><p class=\"MsoNormal\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: inherit; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 10.5pt; font-family: 宋体;\">2.Please open the parcel in post officer\'s presence,If the parcel damaged or empty(stolen),please ask the post office to provide official document,</span></p><p class=\"MsoNormal\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: inherit; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 10.5pt; font-family: 宋体;\">especially the claim request paper</span></p><p class=\"MsoNormal\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: inherit; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 10.5pt; font-family: 宋体;\">3. About the product: if the cellphone you received have any problem,please contact us at first and don\'t FEEDBACK on your order,we will provide the best service help you to solve the problem.</span></p><p class=\"MsoNormal\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; line-height: inherit; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun;\"><span style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; word-break: break-word; font-size: 10.5pt; font-family: 宋体;\">Notice:If customer place the order,we think that the customer comply with all the agreement default.So please read the agreement clearly before you buy our phones.&nbsp;</span></p><p><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun; font-size: 14px;\"></p><table width=\"728\" height=\"925\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun; font-size: 14px; width: 546.02pt;\"><colgroup style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><col width=\"167\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><col width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><col width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"></colgroup><tbody style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et2\" width=\"167\" height=\"114\" rowspan=\"6\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 125.25pt; height: 85.5pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">NETWORK</p></td><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/network-bands.php3\" title=\"https://www.gsmarena.com/network-bands.php3\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Technology</a></p></td><td class=\"et4\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/oneplus_9r-10807.php\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">GSM / HSPA / LTE / 5G</a></p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/network-bands.php3\" title=\"https://www.gsmarena.com/network-bands.php3\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">2G bands</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">GSM 850 / 900 / 1800 / 1900 - SIM 1 &amp; SIM 2</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/network-bands.php3\" title=\"https://www.gsmarena.com/network-bands.php3\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">3G bands</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">HSDPA 800 / 850 / 900 / 1700(AWS) / 1800 / 1900 / 2100</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/network-bands.php3\" title=\"https://www.gsmarena.com/network-bands.php3\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">4G bands</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">1, 2, 3, 4, 5, 7, 8, 12, 17, 18, 19, 20, 26, 34, 38, 39, 40, 41, 46</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/network-bands.php3\" title=\"https://www.gsmarena.com/network-bands.php3\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">5G bands</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">78 SA/NSA</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=3g\" title=\"https://www.gsmarena.com/glossary.php3?term=3g\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Speed</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">HSPA 42.2/5.76 Mbps, LTE-A (CA) Cat18 1200/200 Mbps, 5G</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et2\" width=\"167\" height=\"38\" rowspan=\"2\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 125.25pt; height: 28.5pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">LAUNCH</p></td><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\" title=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Announced</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">2021, March 23</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\" title=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Status</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Available. Released 2021, April 14</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et2\" width=\"167\" height=\"93\" rowspan=\"4\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 125.25pt; height: 69.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">BODY</p></td><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/oneplus_9r-10807.php\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Dimensions</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">161 x 74.1 x 8.4 mm (6.34 x 2.92 x 0.33 in)</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/oneplus_9r-10807.php\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Weight</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">189 g (6.67 oz)</p></td></tr><tr height=\"36\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\" title=\"https://www.gsmarena.com/glossary.php3?term=build\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Build</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Glass front (Gorilla Glass 5), glass back (Gorilla Glass 5), aluminum frame</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\" title=\"https://www.gsmarena.com/glossary.php3?term=sim\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">SIM</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Dual SIM (Nano-SIM, dual stand-by)</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et2\" width=\"167\" height=\"95\" rowspan=\"5\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 125.25pt; height: 71.25pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">DISPLAY</p></td><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\" title=\"https://www.gsmarena.com/glossary.php3?term=display-type\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Type</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Fluid AMOLED, 120Hz, HDR10+</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/oneplus_9r-10807.php\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Size</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">6.55 inches, 103.6 cm2 (~86.8% screen-to-body ratio)</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\" title=\"https://www.gsmarena.com/glossary.php3?term=resolution\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Resolution</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">1080 x 2400 pixels, 20:9 ratio (~402 ppi density)</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=screen-protection\" title=\"https://www.gsmarena.com/glossary.php3?term=screen-protection\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Protection</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Corning Gorilla Glass 5</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et6\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Always-on display</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et2\" width=\"167\" height=\"93\" rowspan=\"4\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 125.25pt; height: 69.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">PLATFORM</p></td><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=os\" title=\"https://www.gsmarena.com/glossary.php3?term=os\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">OS</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Android 11, OxygenOS 11.2.4.4</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\" title=\"https://www.gsmarena.com/glossary.php3?term=chipset\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Chipset</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Qualcomm SM8250-AC Snapdragon 870 5G (7 nm)</p></td></tr><tr height=\"36\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\" title=\"https://www.gsmarena.com/glossary.php3?term=cpu\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">CPU</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Octa-core (1x3.2 GHz Kryo 585 &amp; 3x2.42 GHz Kryo 585 &amp; 4x1.80 GHz Kryo 585)</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\" title=\"https://www.gsmarena.com/glossary.php3?term=gpu\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">GPU</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Adreno 650</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et2\" width=\"167\" height=\"57\" rowspan=\"3\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 125.25pt; height: 42.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">MEMORY</p></td><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\" title=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Card slot</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">No</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\" title=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Internal</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">128GB 8GB RAM, 256GB 8GB RAM, 256GB 12GB RAM</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et6\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">UFS 3.1</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et2\" width=\"167\" height=\"114\" rowspan=\"6\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 125.25pt; height: 85.5pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">MAIN CAMERA</p></td><td class=\"et3\" width=\"125\" rowspan=\"4\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\" title=\"https://www.gsmarena.com/glossary.php3?term=camera\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Quad</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">48 MP, f/1.7, 26mm (wide), 1/2.0\", 0.8µm, PDAF, OIS</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">16 MP, f/2.2, 14mm, 123˚ (ultrawide), 1/3.6\", 1.0µm</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">5 MP, f/2.4, (macro)</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">2 MP, f/2.4, (monochrome)</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\" title=\"https://www.gsmarena.com/glossary.php3?term=camera\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Features</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Dual-LED flash, HDR, panorama</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\" title=\"https://www.gsmarena.com/glossary.php3?term=camera\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Video</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">4K@30/60fps, 1080p@30/60/240fps, Auto HDR, gyro-EIS</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et2\" width=\"167\" height=\"57\" rowspan=\"3\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 125.25pt; height: 42.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">SELFIE CAMERA</p></td><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\" title=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Single</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">16 MP, f/2.4, (wide), 1/3.06\", 1.0µm</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\" title=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Features</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Auto-HDR</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\" title=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Video</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">1080p@30fps, gyro-EIS</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et2\" width=\"167\" height=\"38\" rowspan=\"2\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 125.25pt; height: 28.5pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">SOUND</p></td><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=loudspeaker\" title=\"https://www.gsmarena.com/glossary.php3?term=loudspeaker\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Loudspeaker</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Yes, with stereo speakers</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=audio-jack\" title=\"https://www.gsmarena.com/glossary.php3?term=audio-jack\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">3.5mm jack</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">No</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et2\" width=\"167\" height=\"114\" rowspan=\"6\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 125.25pt; height: 85.5pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">COMMS</p></td><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\" title=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">WLAN</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, DLNA, hotspot</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\" title=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Bluetooth</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">5.1, A2DP, LE, aptX HD</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gps\" title=\"https://www.gsmarena.com/glossary.php3?term=gps\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">GPS</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Yes, with dual-band A-GPS, GLONASS, BDS, GALILEO</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=nfc\" title=\"https://www.gsmarena.com/glossary.php3?term=nfc\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">NFC</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Yes</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=fm-radio\" title=\"https://www.gsmarena.com/glossary.php3?term=fm-radio\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Radio</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">No</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=usb\" title=\"https://www.gsmarena.com/glossary.php3?term=usb\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">USB</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">USB Type-C 3.1, USB On-The-Go</p></td></tr><tr height=\"36\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et2\" width=\"167\" height=\"36\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 125.25pt; height: 27pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">FEATURES</p></td><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\" title=\"https://www.gsmarena.com/glossary.php3?term=sensors\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Sensors</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Fingerprint (under display, optical), accelerometer, gyro, proximity, compass</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et2\" width=\"167\" height=\"38\" rowspan=\"2\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 125.25pt; height: 28.5pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">BATTERY</p></td><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types\" title=\"https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Type</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Li-Po 4500 mAh, non-removable</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=battery-charging\" title=\"https://www.gsmarena.com/glossary.php3?term=battery-charging\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Charging</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Fast charging 65W, 1-100% in 39 min (advertised)</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et2\" width=\"167\" height=\"38\" rowspan=\"2\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 125.25pt; height: 28.5pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">MISC</p></td><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\" title=\"https://www.gsmarena.com/glossary.php3?term=build\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Colors</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">Carbon Black, Lake Blue</p></td></tr><tr height=\"19\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><td class=\"et3\" width=\"125\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 93.75pt;\"><p style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=models\" title=\"https://www.gsmarena.com/glossary.php3?term=models\" target=\"_self\" class=\"\" style=\"-webkit-tap-highlight-color: transparent; outline-style: none; outline-width: initial; cursor: pointer; transition: color 0.3s ease 0s; touch-action: manipulation; color: rgb(46, 156, 195); margin: 0px; padding: 0px;\">Models</a></p></td><td class=\"et5\" width=\"436\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; width: 327pt;\"><p data-spm-anchor-id=\"a2g0o.detail.1000023.i0.693316b9vVgvYS\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-left: 0px; line-height: inherit; padding: 0px;\">LE2101, LE2100</p></td></tr></tbody></table>', 'product-images/1674085006.webp', 1, 0, 0, '2023-01-18 17:36:47', '2023-01-18 17:36:47');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `stock_amount`, `regular_price`, `selling_price`, `short_description`, `long_description`, `image`, `status`, `hit_count`, `featured_count`, `created_at`, `updated_at`) VALUES
(6, 9, 12, 7, 1, 'Airbag Shockproof Silicone Soft Case For Samsung Galaxy', 'JP2-023', 999, 500, 400, 'Airbag Shockproof Silicone Soft Case For Samsung Galaxy A73 A53 A33 A13 A72 A52 A32 A22 A12 A71 A51 A31 A70 A50 Clear Case Cover', '<div class=\"detailmodule_text\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun; font-size: 14px;\"><p class=\"detail-desc-decorate-title\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 12px; margin-left: 0px; font-size: 20px; line-height: 28px; font-weight: 900; padding: 0px; font-family: OpenSans; white-space: pre-wrap; color: rgb(0, 0, 0);\"><span style=\"background-color: transparent;\">Highlights</span><br></p></div><div class=\"detailmodule_text\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun; font-size: 14px;\"><p class=\"detail-desc-decorate-content\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 12px; margin-left: 0px; line-height: 20px; padding: 0px; font-family: OpenSans; white-space: pre-wrap; color: rgb(0, 0, 0);\">1. Upgrade the airbag design, enhance the shock resistance, and give the phone stronger protection<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">2. High quality silicone material, highly clear and not yellowing, keep the original beauty of the phone<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">3. Soft and flexible, easy to install and remove, no scratches and deformation<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">4. Thinner and lighter, no new burden on the phone<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">5. Raised air pockets and edges protect the camera and screen from wear and tear<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">6. Manufactured according to the real phone, the holes are precisely positioned and perfectly aligned</p></div><div class=\"detailmodule_text\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun; font-size: 14px;\"><p class=\"detail-desc-decorate-title\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 12px; margin-left: 0px; font-size: 20px; line-height: 28px; font-weight: 900; padding: 0px; font-family: OpenSans; white-space: pre-wrap; color: rgb(0, 0, 0);\">Welcome to Jaspever！</p><p class=\"detail-desc-decorate-content\" data-spm-anchor-id=\"a2g0o.detail.1000023.i0.5dc46146uizBZr\" style=\"-webkit-tap-highlight-color: transparent; outline: 0px; margin-right: 0px; margin-bottom: 12px; margin-left: 0px; line-height: 20px; padding: 0px; font-family: OpenSans; white-space: pre-wrap; color: rgb(0, 0, 0);\">In order to ensure the perfect transaction, please pay attention to the following points.<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">1. Please confirm your phone model before ordering, or you can contact us to confirm. Avoid ordering errors.<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">2. Please fill in the detailed shipping address, phone number and zip code. Avoid delivery failure.<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">3. We have different monitors, and some products have the problem of chromatic aberration, but we guarantee the same style. We will always improve this issue.<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">Negative feedback does not solve any problems. We have been improving the quality of service, please join us to solve!<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">1. we have staff services, please find us in the order details or on the store home page.<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">2. A reissue or a full refund is a service we will always have.<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">Tips: Do not click \"Confirm Receipt\" until you have received the item.<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">Wish you a happy shopping, youth forever, and a smooth career.</p></div>', 'product-images/1674085265.webp', 1, 0, 0, '2023-01-18 17:41:05', '2023-01-29 07:09:27'),
(7, 10, 15, 8, 11, 'ADIDAS Genuine Leather Knit Fashion Men Sneakers Breathable Sock Chunky Shoes Trainers', '249673031_BD-1196025100', 299, 2000, 1800, 'ADIDAS Genuine Leather Knit Fashion Men Sneakers Breathable Sock Chunky Shoes Trainers', '<h2 class=\"pdp-mod-section-title outer-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Men\'s Sneakers Converse 2022 Running Casual Lace-up Shoes Winter and Summer Men\'s Shoes</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Upper Material: Synthetic</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Feature: Hard-Wearing, Massage, Breathable, Anti-Odor, Sweat-Absorbant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Closure Type: Lace-Up</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Outsole Material: Rubber</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Lining Material: Mesh</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Season: Summer and Winter</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;\">Specifications of Men\'s Sneakers Converse 2022 Running Casual Lace-up Shoes Winter and Summer Men\'s Shoes</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.397fAzgwAzgwHz\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">249673031_BD-1196025100</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Main Material</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Rubber</div></li></ul></div><div class=\"box-content\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.397fAzgwAzgwHz\" style=\"margin: 28px 0px 0px; padding: 0px;\"><span class=\"key-title\" style=\"margin: 0px; padding: 0px; display: table-cell; width: 140px; color: rgb(117, 117, 117); word-break: break-word;\">What’s in the box</span><div class=\"html-content box-content-html\" style=\"margin: 0px; padding: 0px 0px 0px 18px; word-break: break-word; display: table-cell;\">Men\'s Sneakers Converse 2022 Running Casual Lace-up Shoes Winter and Summer Men\'s Shoes</div></div></div></div></div>', 'product-images/1674138181.png', 1, 0, 0, '2023-01-18 17:52:24', '2023-01-31 06:29:36'),
(8, 11, 16, 10, 1, 'Serenity Day Six Claw D Color Wedding Bridal Jewelry', 'US2023', 2999, 2500, 2000, 'Serenity Day Six Claw D Color 1/2/3/5/10 Carat Moissanite Pendant Necklace Women S925 Silver Plate Pt950 Wedding Bridal Jewelry', '<div data-spm-anchor-id=\"a2g0o.detail.1000023.i1.3285264f2AwevK\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 10px auto 0px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun; font-size: 14px; display: inline-block; max-width: 100%;\">Serenity Day Six Claw D Color 1/2/3/5/10 Carat Moissanite Pendant Necklace Women S925 Silver Plate Pt950 Wedding Bridal Jewelry<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\"><br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">Mental: 925 Silver + Moissanite<br style=\"-webkit-tap-highlight-color: transparent; outline: 0px;\">Weight: 6.75g</div><div id=\"offer-template-0\" align=\"center\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, Roboto, Arial, Helvetica, sans-serif, SimSun; font-size: 14px; text-align: center;\"><div align=\"left\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; text-align: left;\">Carat : 1ct-6.5mm 2ct-8mm 3ct-9mm 5ct-11mm &nbsp;10ct-14mm</div><div style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px;\"><div style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px;\"><div id=\"offer-template-0\" align=\"center\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px;\"><div style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px;\"><div style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px;\"><div id=\"offer-template-0\" align=\"center\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px;\"><div align=\"left\" data-spm-anchor-id=\"a2g0o.detail.1000023.i2.3285264f2AwevK\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; text-align: left;\">Style : D Color VVS1 Pendant Necklace</div><div align=\"left\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; text-align: left;\"></div></div></div></div></div></div></div><div align=\"left\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; text-align: left;\">Main Stone : Moissanite</div><div align=\"left\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; text-align: left;\"></div><div align=\"left\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; text-align: left;\">Pass Diamond Test : Only Moissanite Stone</div><div align=\"left\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; text-align: left;\">GRA Certificte : Yes</div><div align=\"left\" data-spm-anchor-id=\"a2g0o.detail.1000023.i3.3285264f2AwevK\" style=\"box-sizing: content-box; -webkit-tap-highlight-color: transparent; outline: 0px; margin: 0px; padding: 0px; text-align: left;\">Grde : VVS1 D Color Package:velvet bag and gift box</div></div>', 'product-images/1674086285.webp', 1, 0, 0, '2023-01-18 17:58:05', '2023-01-31 07:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('QTJ1fJJe4jI0B9FZxCFa2Xq4yu15qJ8obxplMqQG', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoidzl2RTAzQjhUMGFBbGJEUFh2S1pkM3luUTM4Ym52OVphUDhlNkY1QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaDUvcHVibGljL2FkbWluL29yZGVyLWludm9pY2UvNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MjY6IjR5VGxUREt1M29KT2Z6RF9jYXJ0X2l0ZW1zIjtPOjMyOiJEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTozOntpOjg7TzozMjoiRGFycnlsZGVjb2RlXENhcnRcSXRlbUNvbGxlY3Rpb24iOjM6e3M6ODoiACoAaXRlbXMiO2E6Njp7czoyOiJpZCI7aTo4O3M6NDoibmFtZSI7czo1MjoiU2VyZW5pdHkgRGF5IFNpeCBDbGF3IEQgQ29sb3IgV2VkZGluZyBCcmlkYWwgSmV3ZWxyeSI7czo1OiJwcmljZSI7aToyMDAwO3M6ODoicXVhbnRpdHkiO3M6MToiMSI7czoxMDoiYXR0cmlidXRlcyI7Tzo0MToiRGFycnlsZGVjb2RlXENhcnRcSXRlbUF0dHJpYnV0ZUNvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Mzp7czo1OiJpbWFnZSI7czozMDoicHJvZHVjdC1pbWFnZXMvMTY3NDA4NjI4NS53ZWJwIjtzOjg6ImNhdGVnb3J5IjtzOjIxOiJKZXdlbHJ5ICYgQWNjZXNzb3JpZXMiO3M6NToiYnJhbmQiO3M6MTI6IlRpZmZhbnkgJiBDbyI7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czoxMDoiY29uZGl0aW9ucyI7YTowOnt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDtzOjk6IgAqAGNvbmZpZyI7YTo2OntzOjE0OiJmb3JtYXRfbnVtYmVycyI7YjowO3M6ODoiZGVjaW1hbHMiO2k6MDtzOjk6ImRlY19wb2ludCI7czoxOiIuIjtzOjEzOiJ0aG91c2FuZHNfc2VwIjtzOjE6IiwiO3M6Nzoic3RvcmFnZSI7TjtzOjY6ImV2ZW50cyI7Tjt9fWk6NDtPOjMyOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQ29sbGVjdGlvbiI6Mzp7czo4OiIAKgBpdGVtcyI7YTo2OntzOjI6ImlkIjtpOjQ7czo0OiJuYW1lIjtzOjU1OiJFeGNsdXNpdmUgRGVzaWduZXIgSGFuZCBQcmludCBIYWxmIFNpbGsgU2FyZWUgZm9yIHdvbWVuIjtzOjU6InByaWNlIjtpOjE3MDA7czo4OiJxdWFudGl0eSI7czoxOiIxIjtzOjEwOiJhdHRyaWJ1dGVzIjtPOjQxOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQXR0cmlidXRlQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTozOntzOjU6ImltYWdlIjtzOjMwOiJwcm9kdWN0LWltYWdlcy8xNjc0MDg0NTg0LndlYnAiO3M6ODoiY2F0ZWdvcnkiO3M6MTU6IldvbWVuJ3MgRmFzaGlvbiI7czo1OiJicmFuZCI7czo2OiJBYXJvbmciO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6MTA6ImNvbmRpdGlvbnMiO2E6MDp7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7czo5OiIAKgBjb25maWciO2E6Njp7czoxNDoiZm9ybWF0X251bWJlcnMiO2I6MDtzOjg6ImRlY2ltYWxzIjtpOjA7czo5OiJkZWNfcG9pbnQiO3M6MToiLiI7czoxMzoidGhvdXNhbmRzX3NlcCI7czoxOiIsIjtzOjc6InN0b3JhZ2UiO047czo2OiJldmVudHMiO047fX1pOjY7TzozMjoiRGFycnlsZGVjb2RlXENhcnRcSXRlbUNvbGxlY3Rpb24iOjM6e3M6ODoiACoAaXRlbXMiO2E6Njp7czoyOiJpZCI7aTo2O3M6NDoibmFtZSI7czo1NToiQWlyYmFnIFNob2NrcHJvb2YgU2lsaWNvbmUgU29mdCBDYXNlIEZvciBTYW1zdW5nIEdhbGF4eSI7czo1OiJwcmljZSI7aTo0MDA7czo4OiJxdWFudGl0eSI7czoxOiIxIjtzOjEwOiJhdHRyaWJ1dGVzIjtPOjQxOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQXR0cmlidXRlQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTozOntzOjU6ImltYWdlIjtzOjMwOiJwcm9kdWN0LWltYWdlcy8xNjc0MDg1MjY1LndlYnAiO3M6ODoiY2F0ZWdvcnkiO3M6MjI6IkVsZWN0cm9uaWMgQWNjZXNzb3JpZXMiO3M6NToiYnJhbmQiO3M6MTc6IlpJTlEgVGVjaG5vbG9naWVzIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjEwOiJjb25kaXRpb25zIjthOjA6e319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO3M6OToiACoAY29uZmlnIjthOjY6e3M6MTQ6ImZvcm1hdF9udW1iZXJzIjtiOjA7czo4OiJkZWNpbWFscyI7aTowO3M6OToiZGVjX3BvaW50IjtzOjE6Ii4iO3M6MTM6InRob3VzYW5kc19zZXAiO3M6MToiLCI7czo3OiJzdG9yYWdlIjtOO3M6NjoiZXZlbnRzIjtOO319fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czoxMToib3JkZXJfdG90YWwiO2Q6NTIxNTtzOjk6InRheF90b3RhbCI7ZDo2MTU7czoxNDoic2hpcHBpbmdfdG90YWwiO2k6NTAwO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkdUNCLkhSZG5JbHEwNXJiSzc0b3lPdXpjSDZ1OWlnYk5OVTd1N3VrN2NKdllPdGVlelNFTXUiO30=', 1675174818);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 6, 'Men\'s T-Shirt', 'T-Shirt', 'sub-category-images/tshirt.png', 1, '2023-01-18 15:14:28', '2023-01-18 15:14:28'),
(5, 7, 'Women\'s T-Shirt', 'Women\'s T-Shirt', 'sub-category-images/icons8-womens-t-shirt-80.png', 1, '2023-01-18 15:16:00', '2023-01-18 15:16:00'),
(6, 6, 'Casual Pants', 'Pants for men', 'sub-category-images/trousers.png', 1, '2023-01-18 15:19:46', '2023-01-18 15:19:46'),
(7, 7, 'Skirt', 'Skirts for women', 'sub-category-images/skirt.png', 1, '2023-01-18 15:21:28', '2023-01-18 15:21:28'),
(8, 8, 'smartphone', 'smartphone', 'sub-category-images/mobile-phone.png', 1, '2023-01-18 15:33:14', '2023-01-18 15:33:14'),
(9, 8, 'iPhones', 'iPhones', 'sub-category-images/smartphone-iphone.png', 1, '2023-01-18 15:34:23', '2023-01-18 15:34:23'),
(10, 8, 'Computer PC', 'Computer PC', 'sub-category-images/monitor.png', 1, '2023-01-18 15:35:59', '2023-01-18 15:35:59'),
(11, 8, 'Televisions', 'Televisions', 'sub-category-images/television.png', 1, '2023-01-18 15:37:37', '2023-01-18 15:37:37'),
(12, 9, 'Mobile Accessories', 'Mobile Accessories', 'sub-category-images/2004488.png', 1, '2023-01-18 15:47:18', '2023-01-18 15:47:18'),
(13, 9, 'Computer Accessories', 'Computer Accessories', 'sub-category-images/5882225.png', 1, '2023-01-18 15:49:24', '2023-01-18 15:49:24'),
(14, 10, 'Fitness Accessories', 'Fitness Accessories', 'sub-category-images/8645846.png', 1, '2023-01-18 15:52:00', '2023-01-18 15:52:00'),
(15, 10, 'sports shoes for men', 'sports shoes for men', 'sub-category-images/2615478.png', 1, '2023-01-18 15:53:12', '2023-01-18 17:45:27'),
(16, 11, 'Necklaces & Pendants', 'Necklaces & Pendants', 'sub-category-images/necklace.png', 1, '2023-01-18 16:02:06', '2023-01-18 16:02:06'),
(17, 11, 'Bracelets & Bangles', 'Bracelets & Bangles', 'sub-category-images/icons8-bangles-50.png', 1, '2023-01-18 16:04:00', '2023-01-18 16:04:00'),
(18, 7, 'Sarees', 'Sarees for women', 'sub-category-images/4172657.png', 1, '2023-01-18 17:25:20', '2023-01-18 17:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pices', 'PIS', 'Pices', 1, '2023-01-17 06:21:07', '2023-01-18 17:00:22'),
(3, 'Box', 'BX', 'A unit of a box.', 1, '2023-01-18 16:43:42', '2023-01-18 16:43:42'),
(4, 'Batch', '5B', 'A full Batch', 1, '2023-01-18 16:49:24', '2023-01-18 16:49:24'),
(5, 'Carton', 'CT', 'Carton', 1, '2023-01-18 16:50:32', '2023-01-18 16:50:32'),
(6, 'Liter', 'LTR', 'LTR', 1, '2023-01-18 16:52:00', '2023-01-18 16:53:02'),
(7, 'Kilogram', 'KGM', 'A unit of mass equal to one thousand grams.', 1, '2023-01-18 16:53:54', '2023-01-18 16:53:54'),
(8, 'Meter', 'MTR', 'The meter is the basic unit of length in the International System of Units', 1, '2023-01-18 16:55:24', '2023-01-18 16:55:24'),
(9, 'Packet', 'PA', 'Packet', 1, '2023-01-18 16:57:09', '2023-01-18 16:57:09'),
(10, 'Pound', 'LBR', 'The international avoirdupois pound of exactly 0.45359237 kilogram.', 1, '2023-01-18 16:58:25', '2023-01-18 16:58:25'),
(11, 'Set', 'SET', 'A number of objects grouped together.', 1, '2023-01-18 17:03:33', '2023-01-18 17:03:33');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@admin.com', NULL, '$2y$10$uCB.HRdnIlq05rbK74oyOuzcH6u9igbNNU7u7uk7cJvYOteezSEMu', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-08 06:55:46', '2023-01-08 06:55:46'),
(2, 'Prof. Salma Corkery II', 'bhowe@example.net', '2023-01-08 07:06:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '1kcSqA0cVk6ZdJLH1fyOIknX4318Sp81B0RIsyqUOTuXuTSUPkF08LQU6m8X', NULL, NULL, '2023-01-08 07:06:52', '2023-01-08 07:06:52'),
(3, 'Chance Beer MD', 'kayli.schuster@example.com', '2023-01-08 07:06:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'RfwTs3u8yF', NULL, NULL, '2023-01-08 07:06:52', '2023-01-08 07:06:52'),
(4, 'Dr. Kellen Bogan IV', 'joany.wisoky@example.net', '2023-01-08 07:06:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'mabrHYBKRJ', NULL, NULL, '2023-01-08 07:06:52', '2023-01-08 07:06:52'),
(5, 'Prof. Litzy Hickle', 'aquitzon@example.net', '2023-01-08 07:06:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'NUnTQN0KoM', NULL, NULL, '2023-01-08 07:06:52', '2023-01-08 07:06:52'),
(6, 'Xavier Bailey', 'reynolds.calista@example.net', '2023-01-08 07:06:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'VVIksKETJS', NULL, NULL, '2023-01-08 07:06:52', '2023-01-08 07:06:52'),
(7, 'Dr. Elliot Baumbach DVM', 'runolfsson.gregorio@example.net', '2023-01-08 07:06:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'cJN22snhxF', NULL, NULL, '2023-01-08 07:06:52', '2023-01-08 07:06:52'),
(8, 'Miss Lily Hilpert V', 'margaret.turner@example.net', '2023-01-08 07:06:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '7fhCB8vUow', NULL, NULL, '2023-01-08 07:06:52', '2023-01-08 07:06:52'),
(9, 'Virginie Rau', 'dquigley@example.com', '2023-01-08 07:06:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Vm89cunAqn', NULL, NULL, '2023-01-08 07:06:52', '2023-01-08 07:06:52'),
(10, 'Andreane Okuneva', 'wgleichner@example.com', '2023-01-08 07:06:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'VnFHJuOU4T', NULL, NULL, '2023-01-08 07:06:52', '2023-01-08 07:06:52'),
(11, 'Nina McDermott PhD', 'gina.robel@example.net', '2023-01-08 07:06:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xAgH7WpST1', NULL, NULL, '2023-01-08 07:06:52', '2023-01-08 07:06:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `customers_nid_unique` (`nid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `other_images`
--
ALTER TABLE `other_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
