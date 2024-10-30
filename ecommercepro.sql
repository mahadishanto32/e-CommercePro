-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2024 at 01:24 PM
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
-- Database: `ecommercepro`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `price`, `quantity`, `image`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(57, 'Customer', 'customer@gmail.com', '012345678900', 'Dhaka', 'Women\'s Dress', '75', '1', '1715201361.png', '5', '4', '2024-05-13 02:09:07', '2024-05-13 02:09:07'),
(72, 'Mahadi Hasan Shanto', 'mahadishanto32@gmail.com', '01688375373', 'Khilgaon', 'Shirt', '70', '1', '1715200928.png', '1', '13', '2024-05-18 01:40:03', '2024-05-18 01:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(2, 'Laptop', '2024-05-08 06:53:48', '2024-05-08 06:53:48'),
(4, 'Mobile', '2024-05-08 07:01:59', '2024-05-08 07:01:59'),
(6, 'Shirt', '2024-05-08 12:11:31', '2024-05-08 12:11:31'),
(7, 'Ladies', '2024-05-08 14:45:18', '2024-05-08 14:45:18'),
(8, 'GENTS', '2024-05-08 14:45:43', '2024-05-08 14:45:43'),
(9, 'watch', '2024-05-12 00:08:01', '2024-05-12 00:08:01'),
(10, 'Car', '2024-05-12 00:55:15', '2024-05-12 00:55:15'),
(11, 'Bike', '2024-05-12 10:27:14', '2024-05-12 10:27:14'),
(12, 'cycle', '2024-05-13 01:53:55', '2024-05-13 01:53:55'),
(13, 'TV', '2024-05-14 01:17:38', '2024-05-14 01:17:38'),
(14, 'Smart Phone', '2024-05-14 01:18:29', '2024-05-14 01:18:29'),
(15, 'Power bank', '2024-05-14 01:18:56', '2024-05-14 01:18:56'),
(16, 'Fan', '2024-05-14 01:19:15', '2024-05-14 01:19:15'),
(17, 'Bag', '2024-05-14 01:19:22', '2024-05-14 01:19:22'),
(18, 'Shoe', '2024-05-14 01:19:34', '2024-05-14 01:19:34'),
(19, 'Air Conditioner', '2024-05-14 01:20:07', '2024-05-14 01:20:07'),
(20, 'iphone 15 pro max', '2024-05-14 01:21:17', '2024-05-14 01:21:17'),
(21, 'Wallet', '2024-05-14 01:21:32', '2024-05-14 01:21:32'),
(22, 'Ladies Shoe', '2024-05-14 01:21:53', '2024-05-14 01:21:53'),
(23, 'Baby Product', '2024-05-14 01:22:10', '2024-05-14 01:22:10'),
(24, 'Oven', '2024-05-14 01:22:19', '2024-05-14 01:22:19'),
(25, 'Luxury Wall Clock', '2024-05-14 01:22:45', '2024-05-14 01:22:45'),
(26, 'Blender', '2024-05-14 01:22:57', '2024-05-14 01:22:57'),
(27, 'Mixer Grinder', '2024-05-14 01:23:15', '2024-05-14 01:23:15'),
(28, 'Rice Cooker', '2024-05-14 01:23:31', '2024-05-14 01:23:31'),
(29, 'Glass Set', '2024-05-14 01:23:44', '2024-05-14 01:23:44'),
(30, 'Freezer', '2024-05-14 01:25:10', '2024-05-14 01:25:10'),
(31, 'Trolley', '2024-05-14 01:25:35', '2024-05-14 01:25:35'),
(32, 'Kids T-Shirt', '2024-05-14 01:26:03', '2024-05-14 01:26:03'),
(33, 'Kids Dress', '2024-05-14 01:26:37', '2024-05-14 01:26:37'),
(34, 'iPhone', '2024-05-14 02:02:25', '2024-05-14 02:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '0123456789', 'Nice product.', '2024-05-11 11:37:21', '2024-05-11 11:37:21'),
(2, 'shornali', 'shornali190174@diit.edu.bd', '1234567788', 'Messagefhgghgfhgbjhbhkkbj', '2024-05-12 00:13:18', '2024-05-12 00:13:18'),
(3, 'Sirat', 'customer@gmail.com', '123456678', '10 pieces product need', '2024-05-12 01:04:23', '2024-05-12 01:04:23'),
(4, 'Sumaiya', 'sumaiya190173@diit.edu.bd', '12345678789', 'Thanks...', '2024-05-15 09:04:41', '2024-05-15 09:04:41'),
(5, 'shornali Akter', 'shornali190174@diit.edu.bd', '1223456788', 'Thanks.....', '2024-10-16 23:50:29', '2024-10-16 23:50:29');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_05_07_195409_create_sessions_table', 1),
(7, '2024_05_08_123027_create_categories_table', 2),
(8, '2024_05_08_131409_create_products_table', 3),
(9, '2024_05_09_150210_create_carts_table', 4),
(10, '2024_05_09_191122_create_orders_table', 5),
(11, '2024_05_10_114436_create_notifications_table', 6),
(12, '2024_05_10_190348_create_contacts_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Womens\'s Dress', '1', '68', '1715201197.png', '3', 'Paid', 'Delivered', '2024-05-11 09:50:16', '2024-05-11 09:52:21'),
(2, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Women\'s Dress', '1', '70', '1715201284.png', '4', 'Paid', 'Delivered', '2024-05-11 09:50:16', '2024-05-11 09:52:27'),
(3, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Women\'s Dress', '1', '58', '1715201476.png', '6', 'Paid', 'Delivered', '2024-05-11 09:50:16', '2024-05-11 09:52:32'),
(4, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Women\'s Dress', '1', '90', '1715374528.png', '9', 'Paid', 'Delivered', '2024-05-11 09:51:04', '2024-05-11 09:52:46'),
(5, 'user', 'user@gmail.com', '12345678945', 'Dhaka', '1', 'Shirt', '1', '70', '1715200928.png', '1', 'Paid', 'Delivered', '2024-05-11 09:51:43', '2024-05-12 00:32:43'),
(6, 'user', 'user@gmail.com', '12345678945', 'Dhaka', '1', 'Shirt', '1', '75', '1715201004.png', '2', 'Paid', 'Delivered', '2024-05-11 09:51:43', '2024-05-12 00:33:20'),
(7, 'Customer', 'customer@gmail.com', '012345678900', 'Dhaka', '4', 'Shirt', '2', '140', '1715200928.png', '1', 'Paid', 'Delivered', '2024-05-11 09:59:54', '2024-05-11 10:01:06'),
(8, 'kamrul', 'kamrul190161@diit.edu.bd', '012345678900', 'Dhaka', '9', 'Shirt', '4', '280', '1715200928.png', '1', 'Paid', 'Delivered', '2024-05-11 11:29:43', '2024-05-11 11:32:17'),
(9, 'user', 'user@gmail.com', '12345678945', 'Dhaka', '1', 'Shirt', '1', '75', '1715201004.png', '2', 'cash on delivery', 'canceled order', '2024-05-11 11:39:10', '2024-05-11 11:39:22'),
(10, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'Men\'s Shirt', '6', '420', '1715201625.png', '8', 'Paid', 'Delivered', '2024-05-11 23:56:32', '2024-05-11 23:57:14'),
(11, 'user', 'user@gmail.com', '12345678945', 'Dhaka', '1', 'Womens\'s Dress', '1', '68', '1715201197.png', '3', 'Paid', 'Delivered', '2024-05-12 00:38:08', '2024-05-12 01:15:34'),
(12, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'watch', '1', '500', '1715494126.jpg', '11', 'Paid', 'Delivered', '2024-05-12 00:59:18', '2024-05-12 00:59:46'),
(13, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'New Car', '1', '4990', '1715497054.jpg', '12', 'Paid', 'Delivered', '2024-05-12 01:01:05', '2024-05-12 01:02:57'),
(14, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'Shirt', '1', '75', '1715201004.png', '2', 'Paid', 'Delivered', '2024-05-12 10:18:28', '2024-05-12 10:19:16'),
(15, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'Women\'s Dress', '2', '140', '1715201284.png', '4', 'Paid', 'Delivered', '2024-05-13 00:04:53', '2024-05-13 00:05:54'),
(16, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'cycle', '1', '1000', '1715586949.jpg', '14', 'Paid', 'Delivered', '2024-05-13 01:58:32', '2024-05-13 01:59:23'),
(17, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'Women\'s Dress', '1', '75', '1715201361.png', '5', 'Paid', 'Delivered', '2024-05-13 02:16:27', '2024-05-14 02:11:39'),
(18, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'Shirt', '1', '70', '1715200928.png', '1', 'Paid', 'Delivered', '2024-05-13 02:22:47', '2024-05-13 02:23:20'),
(19, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Shirt', '1', '70', '1715200928.png', '1', 'Paid', 'Delivered', '2024-05-13 02:24:24', '2024-05-13 02:24:40'),
(20, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Sony TV', '1', '950', '1715672141.jpg', '16', 'Paid', 'Delivered', '2024-05-14 02:10:08', '2024-05-14 02:11:29'),
(21, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'Pink Apple watch', '1', '1090', '1715784206.jpg', '59', 'Paid', 'Delivered', '2024-05-15 08:47:12', '2024-05-15 08:48:09'),
(22, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Pink Apple watch', '1', '1090', '1715784206.jpg', '59', 'Paid', 'Delivered', '2024-05-15 08:49:10', '2024-05-15 08:51:03'),
(23, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'Toyota CHR', '1', '40000', '1715777285.jpg', '36', 'Paid', 'Delivered', '2024-05-15 08:55:18', '2024-05-15 08:57:36'),
(24, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Leather Bag', '1', '50', '1715673192.jpg', '20', 'Paid', 'Delivered', '2024-05-15 09:01:40', '2024-05-15 09:02:10'),
(25, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'iPhone 14 pro max', '1', '1099', '1715673890.jpg', '24', 'Paid', 'Delivered', '2024-05-15 09:28:51', '2024-05-15 09:30:09'),
(26, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Shirt', '1', '75', '1715201004.png', '2', 'Paid', 'Delivered', '2024-05-15 09:32:39', '2024-05-15 09:33:02'),
(27, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Shirt', '1', '75', '1715201004.png', '2', 'cash on delivery', 'canceled order', '2024-05-15 09:35:15', '2024-10-16 23:31:59'),
(28, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Shirt', '1', '75', '1715201004.png', '2', 'cash on delivery', 'canceled order', '2024-05-18 14:33:14', '2024-10-16 23:32:08'),
(29, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Touch Smart Watch', '1', '600', '1715784297.jpg', '61', 'Paid', 'Delivered', '2024-05-19 02:47:09', '2024-05-19 02:47:31'),
(30, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'Shirt', '1', '75', '1715201004.png', '2', 'Paid', 'canceled order', '2024-05-20 01:51:48', '2024-10-15 10:10:55'),
(31, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'Shirt', '1', '70', '1715200928.png', '1', 'Paid', 'Delivered', '2024-05-20 01:51:48', '2024-10-16 23:43:46'),
(32, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'Shirt', '1', '75', '1715201004.png', '2', 'Paid', 'canceled order', '2024-05-20 01:51:48', '2024-10-15 10:11:03'),
(33, 'admin', 'admin@gmail.com', '1234567896', 'Adabor', '2', 'Women\'s Dress', '1', '90', '1715374528.png', '9', 'Paid', 'Delivered', '2024-10-15 10:16:37', '2024-10-15 10:18:48'),
(34, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Shirt', '1', '75', '1715201004.png', '2', 'Paid', 'canceled order', '2024-10-15 10:24:25', '2024-10-16 23:31:51'),
(35, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Watch', '1', '550', '1715494126.jpg', '11', 'Paid', 'processing', '2024-10-15 10:24:25', '2024-10-15 10:24:25'),
(36, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Shirt', '1', '75', '1715201004.png', '2', 'cash on delivery', 'canceled order', '2024-10-16 23:31:27', '2024-10-16 23:32:18'),
(37, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '12345678900', 'Dhaka', '8', 'Sony TV', '1', '900', '1715775650.jpg', '30', 'Paid', 'processing', '2024-10-16 23:47:49', '2024-10-16 23:47:49');

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `category`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', 'Cotton Fabric', '1715200928.png', 'Shirt', '50', '75', '70', '2024-05-08 14:42:08', '2024-05-09 08:33:07'),
(2, 'Shirt', 'Indian Cotton Fabric', '1715201004.png', 'Shirt', '10', '80', '75', '2024-05-08 14:43:24', '2024-05-10 14:53:23'),
(3, 'Women\'s Dress', 'Silk Comfortable', '1715201197.png', 'Ladies', '15', '68', NULL, '2024-05-08 14:46:37', '2024-05-15 06:51:53'),
(4, 'Women\'s Dress', 'Original Indian', '1715201284.png', 'Ladies', '30', '70', NULL, '2024-05-08 14:48:05', '2024-05-08 14:48:05'),
(5, 'Women\'s Dress', 'Soft and comfortable silk', '1715201361.png', 'Ladies', '50', '75', NULL, '2024-05-08 14:49:21', '2024-05-08 14:49:21'),
(6, 'Women\'s Dress', 'Indian Bottic Cloth', '1715201476.png', 'Ladies', '25', '58', NULL, '2024-05-08 14:51:16', '2024-05-08 14:51:46'),
(7, 'Men\'s Shirt', 'Bangladeshi Fabric', '1715201590.png', 'GENTS', '40', '68', NULL, '2024-05-08 14:53:10', '2024-05-08 14:53:10'),
(8, 'Men\'s Shirt', 'Indian Fabric', '1715201625.png', 'GENTS', '50', '70', NULL, '2024-05-08 14:53:45', '2024-05-08 14:53:45'),
(9, 'Women\'s Dress', 'Very attractive product', '1715374528.png', 'Ladies', '10', '90', NULL, '2024-05-10 14:55:28', '2024-05-10 14:55:28'),
(10, 'Shirt', 'Full sleve', '1715374591.png', 'Shirt', '5', '50', '30', '2024-05-10 14:56:31', '2024-05-15 07:29:23'),
(11, 'Watch', 'comfortable', '1715494126.jpg', 'watch', '6', '550', NULL, '2024-05-12 00:08:46', '2024-05-15 06:49:17'),
(13, 'R15', 'Nice bike', '1715531735.jpg', 'Bike', '10', '6000', NULL, '2024-05-12 10:35:35', '2024-05-15 05:51:00'),
(14, 'Cycle', 'nice cycle', '1715586949.jpg', 'cycle', '20', '300', NULL, '2024-05-13 01:55:49', '2024-05-15 08:10:12'),
(15, 'hp Pavilion 14', 'Nice Laptop', '1715671881.jpg', 'Laptop', '15', '800', NULL, '2024-05-14 01:31:21', '2024-05-14 01:31:21'),
(18, 'Shoes', 'Nice', '1715672610.jpg', 'Shoe', '30', '90', NULL, '2024-05-14 01:43:30', '2024-05-14 01:43:30'),
(19, 'Black & White Shoes', 'Nice shoe', '1715672730.jpg', 'Shoe', '25', '150', NULL, '2024-05-14 01:45:30', '2024-05-15 07:55:58'),
(20, 'Leather Bag', 'Nice & Qualityful bag', '1715673192.jpg', 'Bag', '20', '70', '50', '2024-05-14 01:53:12', '2024-05-15 07:30:15'),
(21, 'Arctic Hunter Bag', 'nice  product', '1715673304.jpg', 'Bag', '25', '30', NULL, '2024-05-14 01:55:04', '2024-05-14 01:55:04'),
(22, 'Soft Bag', 'Very Nice Bag', '1715673364.jpg', 'Bag', '15', '50', NULL, '2024-05-14 01:56:04', '2024-05-14 01:56:04'),
(23, 'iPhone 13 pro', 'nice', '1715673816.jpg', 'iPhone', '15', '800', NULL, '2024-05-14 02:03:36', '2024-05-14 02:03:36'),
(24, 'iPhone 14 pro max', 'nice', '1715673890.jpg', 'iPhone', '20', '1099', NULL, '2024-05-14 02:04:50', '2024-05-15 05:55:53'),
(26, 'iPhone 15', 'Pink colour', '1715774439.jpg', 'iPhone', '10', '900', NULL, '2024-05-15 06:00:39', '2024-05-15 06:00:39'),
(27, 'iPhone 15 Pro Max', 'update version', '1715774938.jpg', 'iPhone', '20', '1499', NULL, '2024-05-15 06:01:57', '2024-05-15 06:08:58'),
(28, 'Panasonic TV', 'Android Version 55\'\'', '1715775544.jpg', 'TV', '15', '1100', NULL, '2024-05-15 06:19:04', '2024-05-15 06:22:51'),
(29, 'Samsung TV', 'Android Version 55\'\'', '1715775593.jpg', 'TV', '15', '990', NULL, '2024-05-15 06:19:53', '2024-05-15 06:23:17'),
(30, 'Sony TV', 'Android Version 55\'\'', '1715775650.jpg', 'TV', '20', '900', NULL, '2024-05-15 06:20:50', '2024-05-15 06:20:50'),
(31, 'LG TV', 'Android Version 55\'\'', '1715775714.jpg', 'TV', '20', '700', NULL, '2024-05-15 06:21:54', '2024-05-15 06:21:54'),
(32, 'Mercedes-Benz', 'Nice Car', '1715776913.jpg', 'Car', '5', '90000', NULL, '2024-05-15 06:41:53', '2024-05-15 06:41:53'),
(33, 'BMW 7 Series', 'Nice Car', '1715777006.jpg', 'Car', '2', '200000', NULL, '2024-05-15 06:43:26', '2024-05-15 06:43:26'),
(34, 'Audi', 'Nice Car', '1715777188.jpg', 'Car', '10', '400000', NULL, '2024-05-15 06:46:28', '2024-05-15 06:46:28'),
(35, 'Nissan X - Trail', 'Nice Car', '1715777248.jpg', 'Car', '20', '80000', NULL, '2024-05-15 06:47:28', '2024-05-15 06:47:28'),
(36, 'Toyota CHR', 'Nice Car', '1715777285.jpg', 'Car', '25', '40000', NULL, '2024-05-15 06:48:05', '2024-05-15 06:48:05'),
(37, 'Nissan', 'Nice Car', '1715777619.jpg', 'Car', '15', '50000', NULL, '2024-05-15 06:53:39', '2024-05-15 06:53:39'),
(38, 'BMW Car', 'Nice Car', '1715777675.jpg', 'Car', '10', '300000', NULL, '2024-05-15 06:54:35', '2024-05-15 06:54:35'),
(39, 'Ladies Shoe\'s', 'Comfortable', '1715780470.jpg', 'Ladies Shoe', '10', '80', NULL, '2024-05-15 07:41:10', '2024-05-15 07:42:09'),
(40, 'High Heels', 'nice', '1715780604.jpg', 'Ladies Shoe', '10', '90', NULL, '2024-05-15 07:43:24', '2024-05-15 07:43:24'),
(41, 'New High Heels', 'Nice shoe', '1715780682.jpg', 'Ladies Shoe', '10', '100', NULL, '2024-05-15 07:44:42', '2024-05-15 07:44:42'),
(42, 'Flat shoes', 'Nice shoe', '1715780732.jpg', 'Ladies Shoe', '20', '50', NULL, '2024-05-15 07:45:32', '2024-05-15 07:45:32'),
(43, 'Summer Flat Shoes', 'Nice shoes', '1715780816.jpg', 'Ladies Shoe', '20', '40', NULL, '2024-05-15 07:46:56', '2024-05-15 07:46:56'),
(44, 'Shoes', 'Nice shoe', '1715781163.jpg', 'GENTS', '20', '90', NULL, '2024-05-15 07:52:43', '2024-05-15 07:52:43'),
(45, 'Black & White Shoes', 'Nice shoe', '1715781260.jpg', 'GENTS', '20', '150', '120', '2024-05-15 07:54:20', '2024-05-15 07:54:20'),
(46, 'Gucci Loafers', 'Nice shoe', '1715781919.jpg', 'Shoe', '10', '150', NULL, '2024-05-15 08:05:19', '2024-05-15 08:05:19'),
(47, 'Gucci', 'Nice shoe', '1715781958.jpg', 'Shoe', '10', '200', NULL, '2024-05-15 08:05:58', '2024-05-15 08:05:58'),
(48, 'Gucci Shoes', 'Nice shoe', '1715782043.jpg', 'Shoe', '10', '250', NULL, '2024-05-15 08:07:23', '2024-05-15 08:07:23'),
(49, 'Leather Gucci', 'Nice shoe', '1715782098.jpg', 'Shoe', '20', '500', NULL, '2024-05-15 08:08:18', '2024-05-15 08:08:18'),
(50, 'Red Teddy Bear', 'Nice, soft & comfortable', '1715782867.jpg', 'Baby Product', '10', '100', NULL, '2024-05-15 08:21:07', '2024-05-15 08:21:07'),
(51, 'Pink Teddy', 'Nice, soft & comfortable', '1715782951.jpg', 'Baby Product', '20', '120', NULL, '2024-05-15 08:22:31', '2024-05-15 08:22:31'),
(52, 'Pink Dress Teddy', 'Nice, soft & comfortable', '1715783048.jpg', 'Baby Product', '20', '150', NULL, '2024-05-15 08:24:08', '2024-05-15 08:24:08'),
(53, 'Teddy', 'Nice, soft & comfortable', '1715783086.jpg', 'Baby Product', '20', '100', NULL, '2024-05-15 08:24:46', '2024-05-15 08:24:46'),
(54, 'Smell Teddy', 'Nice, soft & comfortable', '1715783237.jpg', 'Baby Product', '10', '50', NULL, '2024-05-15 08:25:32', '2024-05-15 08:27:17'),
(55, 'Power Bank', 'Nice Product, 10000mAh', '1715783531.png', 'Power bank', '20', '90', NULL, '2024-05-15 08:32:11', '2024-05-15 08:32:11'),
(56, 'Power Bank 20000mAh', NULL, '1715783608.jpg', 'Power bank', '20', '120', NULL, '2024-05-15 08:33:28', '2024-05-15 08:33:28'),
(57, 'Power Bank', '50000mAh', '1715783658.jpg', 'Power bank', '15', '200', NULL, '2024-05-15 08:34:18', '2024-05-15 08:34:18'),
(58, 'Apple Watch', 'nice', '1715784131.jpg', 'watch', '10', '990', NULL, '2024-05-15 08:42:11', '2024-05-15 08:42:11'),
(59, 'Pink Apple watch', 'Nice', '1715784206.jpg', 'watch', '5', '1090', NULL, '2024-05-15 08:43:26', '2024-05-15 08:43:26'),
(60, 'Smart Watch', 'nice', '1715784246.jpg', 'watch', '20', '500', NULL, '2024-05-15 08:44:06', '2024-05-15 08:44:06'),
(61, 'Touch Smart Watch', 'Nice Watch', '1715784297.jpg', 'watch', '20', '600', NULL, '2024-05-15 08:44:57', '2024-05-15 08:44:57'),
(62, 'Kids Dress', 'Nice, soft & comfortable', '1729143788.jpg', 'Kids Dress', '15', '10', NULL, '2024-10-16 23:43:08', '2024-10-16 23:43:08');

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('YLBPsXH254Qf1pRVnHLHisEHNJgkG1E6vY11wuWL', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMllMV1ZwVHBZMkJYM3lBRE5tMmc0dlpTTlpKSU9qN3c2QmF3NFdqdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjg7fQ==', 1729144930);

-- --------------------------------------------------------

--
-- Table structure for table `sslorder`
--

CREATE TABLE `sslorder` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `addresss` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `addresss`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '0', '12345678945', 'Dhaka', '2024-05-08 10:44:03', '$2y$10$kW2oR7H9xkU.88q3BP0oU.sDCY.7jKqukZn1MTBSzgbb7I4xuLIky', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-07 14:15:17', '2024-05-07 14:15:17'),
(2, 'admin', 'admin@gmail.com', '1', '1234567896', 'Adabor', '2024-05-08 10:44:44', '$2y$10$95BwC4kCnEumoaWlBb6fD.dcDcTx79cLmcIGgPXbjovOk.e1JmBqC', NULL, NULL, NULL, 'VdngneTWwZSrDNC2turAa9Jf7yp8Bdv2ReE56WtCeI7qzwNDrkWzYnHfgVnP', NULL, NULL, '2024-05-07 14:16:20', '2024-05-07 14:16:20'),
(4, 'Customer', 'customer@gmail.com', '0', '012345678900', 'Dhaka', '2024-05-09 10:45:03', '$2y$10$o4OYoaDz56pxqEFKA0Iw1eY1N9RkiGjBdcUD1VqReRGsHwywVFqry', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-09 11:16:25', '2024-05-09 11:16:25'),
(8, 'Sumaiya Akter', 'sumaiya190173@diit.edu.bd', '0', '12345678900', 'Dhaka', '2024-05-11 09:49:07', '$2y$10$VE735eFvdf7JJ3dUviLGj.Cv9Ry//1uE.5m77KO6J9bzmP946xvw2', NULL, NULL, NULL, 'N2kpkNRLK9z5Qq9j92s0xOU7SFnZFuh7Uwpenci14EPklzXtsyChqfziNxNe', NULL, NULL, '2024-05-11 09:46:54', '2024-05-11 09:49:07'),
(9, 'kamrul', 'kamrul190161@diit.edu.bd', '0', '012345678900', 'Dhaka', '2024-05-11 11:27:58', '$2y$10$qn7MjnlhIzUozrbb17OuwOrTWMw7DaQmmqm9sgzzuSlmEOonu2EOu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-11 11:27:00', '2024-05-11 11:27:58'),
(11, 'Shornali', 'shornali190174@diit.edu.bd', '0', '0123456789', 'Dhaka', '2024-05-12 00:50:52', '$2y$10$DJmBLWJW4RDxN/2P9ljmy.qRHiTBqkpTlyOinvQ9rGINY83UbdTgy', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-12 00:44:19', '2024-05-12 00:50:52'),
(12, 'Sirat', 'shornali10june@gmail.com', '0', '12345678908', 'Dhaka', NULL, '$2y$10$VZfXYJZtentbJdLls3zcc.eQ.C2vBhdiH5yUH.rF4Zhi7Jq16E9qS', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-13 00:15:20', '2024-05-13 00:15:20'),
(13, 'Mahadi Hasan Shanto', 'mahadishanto32@gmail.com', '0', '01688375373', 'Khilgaon', '2024-05-18 05:07:32', '$2y$10$WDDOiAZwZe/HDxYgmYj3NeRsYdes/XOA4epKSaFbOXFARZDC94dAG', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-18 01:38:43', '2024-05-18 05:07:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sslorder`
--
ALTER TABLE `sslorder`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `sslorder`
--
ALTER TABLE `sslorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
