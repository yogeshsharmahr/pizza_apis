-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 06:39 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fortify`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
(1, 'electronics', 'Electronics', '2021-06-17 23:44:11', '2021-06-17 23:44:11'),
(2, 'jewelery', 'jewelery', '2021-06-17 23:44:37', '2021-06-17 23:44:37'),
(3, 'mens-clothing', 'men\'s clothing', '2021-06-17 23:44:53', '2021-06-17 23:44:53'),
(4, 'womens-clothing', 'women\'s clothing', '2021-06-17 23:45:09', '2021-06-17 23:45:09'),
(5, 'kids', 'Kids', '2021-06-17 23:45:32', '2021-06-17 23:45:32'),
(6, 'home-appliances', 'home appliances', '2021-06-17 23:46:01', '2021-06-17 23:46:01'),
(7, 'auto-mobile', 'Auto mobile', '2021-06-17 23:48:37', '2021-06-17 23:48:37'),
(8, 'kitchen-appliances', 'kitchen appliances', '2021-06-17 23:49:42', '2021-06-17 23:49:42'),
(9, 'auto-mobile', 'Auto mobile', '2021-06-18 00:59:22', '2021-06-18 00:59:22');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_18_041101_create_categories_table', 1),
(5, '2021_06_18_041123_create_products_table', 1),
(6, '2021_06_18_052254_create_product_images_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `category_id`, `title`, `quantity`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Rain Jacket Women Windbreaker Striped Climbing Raincoats', '100', 10.25, 'Lightweight perfet for trip or casual wear---Long sleeve with hooded, adjustable drawstring waist design. Button and zipper front closure raincoat, fully stripes Lined and The Raincoat has 2 side pockets are a good size to hold all kinds of things, it covers the hips, and the hood is generous but doesn\'t overdo it.Attached Cotton Lined Hood with Adjustable Drawstrings give it a real styled look.', '2021-06-18 00:18:00', '2021-06-18 00:18:00'),
(2, 1, 4, 'BIYLACLESEN Women\'s 3-in-1 Snowboard Jacket Winter Coats', '100', 599, 'Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in cold weather. Zippered Pockets: 2 Zippered Hand Pockets, 2 Zippered Pockets on Chest (enough to keep cards or keys)and 1 Hidden Pocket Inside.Zippered Hand Pockets and Hidden Pocket keep your things secure. Humanized Design: Adjustable and Detachable Hood and Adjustable cuff to prevent the wind and water,for a comfortable fit. 3 in 1 Detachable Design provide more convenience, you can separate the coat and inner as needed, or wear it together. It is suitable for different season and help you adapt to different climates', '2021-06-18 00:21:38', '2021-06-18 00:21:38'),
(3, 1, 4, 'Lock and Love Women\'s Removable Hooded Faux Leather Moto Biker Jacket', '100', 799, '100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides, HAND WASH ONLY / DO NOT BLEACH / LINE DRY / DO NOT IRON', '2021-06-18 00:22:33', '2021-06-18 00:22:33'),
(4, 1, 4, 'MBJ Women\'s Solid Short Sleeve Boat Neck V', '100', 459, '95% RAYON 5% SPANDEX, Made in USA or Imported, Do Not Bleach, Lightweight fabric with great stretch for comfort, Ribbed on sleeves and neckline / Double stitching on bottom hem', '2021-06-18 00:23:18', '2021-06-18 00:23:18'),
(5, 1, 4, 'Opna Women\'s Short Sleeve Moisture', '100', 424, '100% Polyester, Machine wash, 100% cationic polyester interlock, Machine Wash & Pre Shrunk for a Great Fit, Lightweight, roomy and highly breathable with moisture wicking fabric which helps to keep moisture away, Soft Lightweight Fabric with comfortable V-neck collar and a slimmer fit, delivers a sleek, more feminine silhouette and Added Comfort', '2021-06-18 00:24:11', '2021-06-18 00:24:11'),
(6, 1, 4, 'DANVOUY Womens T Shirt Casual Cotton Short', '100', 868, '95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print,V-Neck,Fashion Tees, The fabric is soft and has some stretch., Occasion: Casual/Office/Beach/School/Home/Street. Season: Spring,Summer,Autumn,Winter.', '2021-06-18 00:25:08', '2021-06-18 00:25:08'),
(7, 1, 4, 'Solid Daily Wear Poly Georgette Saree  (Grey)', '100', 479, '95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print,V-Neck,Fashion Tees, The fabric is soft and has some stretch., Occasion: Casual/Office/Beach/School/Home/Street. Season: Spring,Summer,Autumn,Winter.', '2021-06-18 00:31:18', '2021-06-18 00:31:18'),
(8, 1, 4, 'Embroidered Fashion Lycra Blend Saree  (Maroon, Black)', '100', 659, 'great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.', '2021-06-18 00:33:39', '2021-06-18 00:33:39'),
(9, 1, 4, 'Embroidered Banarasi Net, Velvet Saree  (White, Blue)', '100', 968, 'great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.', '2021-06-18 00:43:12', '2021-06-18 00:43:12'),
(10, 1, 4, 'Self Design Kanjivaram Poly Silk Saree  (Maroon)', '100', 1120, 'outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.', '2021-06-18 00:44:13', '2021-06-18 00:44:13'),
(11, 1, 4, 'Self Design Bollywood Georgette Saree  (Dark Blue, Light Blue)', '100', 675, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:46:11', '2021-06-18 00:46:11'),
(12, 1, 4, 'Women Printed Rayon Straight Kurta  (Dark Blue)', '100', 471, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:47:35', '2021-06-18 00:47:35'),
(13, 1, 4, 'Printed Daily Wear Art Silk Saree  (Pink)', '100', 563, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:48:52', '2021-06-18 00:48:52'),
(14, 1, 4, 'Striped Bollywood Cotton Silk Saree  (Multicolor)', '100', 399, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:49:38', '2021-06-18 00:49:38'),
(15, 1, 4, 'Printed, Embellished Fashion Lycra Blend Saree  (Maroon)', '100', 598, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:50:05', '2021-06-18 00:50:05'),
(16, 1, 4, 'Crepe Geometric Print, Printed Salwar Suit Material  (Unstitched)', '100', 1025, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:51:19', '2021-06-18 00:51:19'),
(17, 1, 4, 'Self Design Bollywood Poly Georgette Saree  (Black, Grey)', '100', 629, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:51:58', '2021-06-18 00:51:58'),
(18, 1, 4, 'Crepe Solid, Floral Print, Checkered, Printed Salwar Suit Material  (Unstitched)', '100', 569, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:52:57', '2021-06-18 00:52:57'),
(19, 1, 4, 'Floral Print Daily Wear Georgette Saree  (Pack of 2, Multicolor)', '100', 434, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:53:31', '2021-06-18 00:53:31'),
(20, 1, 4, 'Floral Print Daily Wear Art Silk Saree  (Grey)', '100', 100, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:54:25', '2021-06-18 00:54:25'),
(21, 1, 3, 'Men Slim Fit Striped Casual Shirt', '100', 369, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:55:45', '2021-06-18 00:55:45'),
(22, 1, 3, 'Striped Men Round Neck Black, Light Green T-Shirt', '100', 453, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:56:18', '2021-06-18 00:56:18'),
(23, 1, 3, 'Polyester Floral Print Shirt Fabric  (Unstitched)', '100', 569, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:56:42', '2021-06-18 00:56:42'),
(24, 1, 3, 'Cotton Polyester Blend Floral Print Shirt Fabric  (Unstitched)', '100', 432, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:57:22', '2021-06-18 00:57:22'),
(25, 1, 3, 'Cotton Polyester Blend Printed Shirt Fabric  (Unstitched)', '100', 435, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:57:45', '2021-06-18 00:57:45'),
(26, 1, 3, 'Color Block Men Round Neck Black T-Shirt', '100', 524, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:58:08', '2021-06-18 00:58:08'),
(27, 1, 3, 'Men Slim Fit Printed Casual Shirt', '100', 524, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:58:42', '2021-06-18 00:58:42'),
(28, 1, 3, 'Men Slim Fit Printed Casual Shirt', '100', 524, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:58:50', '2021-06-18 00:58:50'),
(29, 1, 3, 'Men Slim Fit Printed Casual Shirt', '100', 524, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:58:57', '2021-06-18 00:58:57'),
(30, 1, 3, 'Men Slim Fit Printed Casual Shirt', '100', 524, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:59:05', '2021-06-18 00:59:05'),
(31, 1, 3, 'Men Slim Fit Printed Casual Shirt', '100', 524, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:59:11', '2021-06-18 00:59:11'),
(32, 1, 3, 'Men Slim Fit Printed Casual Shirt', '100', 524, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:59:16', '2021-06-18 00:59:16'),
(33, 1, 3, 'Men Slim Fit Printed Casual Shirt', '100', 524, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:59:26', '2021-06-18 00:59:26'),
(34, 1, 3, 'Men Slim Fit Printed Casual Shirt', '100', 524, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:59:33', '2021-06-18 00:59:33'),
(35, 1, 3, 'Men Slim Fit Printed Casual Shirt', '100', 524, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 00:59:53', '2021-06-18 00:59:53'),
(36, 1, 3, 'Men Slim Fit Printed Casual Shirt', '100', 524, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 01:00:00', '2021-06-18 01:00:00'),
(37, 1, 3, 'Men Slim Fit Printed Casual Shirt', '100', 524, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 01:00:11', '2021-06-18 01:00:11'),
(38, 1, 3, 'Men Slim Fit Printed Casual Shirt', '100', 524, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,', '2021-06-18 01:00:33', '2021-06-18 01:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '16239952806451.jpg', '2021-06-18 00:18:00', '2021-06-18 00:18:00'),
(2, 2, '16239954982765.jpg', '2021-06-18 00:21:38', '2021-06-18 00:21:38'),
(3, 3, '16239955538956.jpg', '2021-06-18 00:22:33', '2021-06-18 00:22:33'),
(4, 4, '16239955983761.jpg', '2021-06-18 00:23:18', '2021-06-18 00:23:18'),
(5, 5, '16239956511453.jpg', '2021-06-18 00:24:11', '2021-06-18 00:24:11'),
(6, 6, '16239957088094.jpg', '2021-06-18 00:25:08', '2021-06-18 00:25:08'),
(7, 7, '16239960786297.jpg', '2021-06-18 00:31:18', '2021-06-18 00:31:18'),
(8, 8, '16239962194061.jpg', '2021-06-18 00:33:40', '2021-06-18 00:33:40'),
(9, 9, '16239967924430.jpg', '2021-06-18 00:43:12', '2021-06-18 00:43:12'),
(10, 10, '1623996853333.jpg', '2021-06-18 00:44:13', '2021-06-18 00:44:13'),
(11, 11, '16239969715030.jpg', '2021-06-18 00:46:11', '2021-06-18 00:46:11'),
(12, 12, '16239970552251.jpg', '2021-06-18 00:47:35', '2021-06-18 00:47:35'),
(13, 13, '16239971327130.jpg', '2021-06-18 00:48:52', '2021-06-18 00:48:52'),
(14, 14, '16239971786404.jpg', '2021-06-18 00:49:38', '2021-06-18 00:49:38'),
(15, 16, '16239972793875.jpg', '2021-06-18 00:51:19', '2021-06-18 00:51:19'),
(16, 17, '16239973185667.jpg', '2021-06-18 00:51:58', '2021-06-18 00:51:58'),
(17, 18, '16239973779696.jpg', '2021-06-18 00:52:57', '2021-06-18 00:52:57'),
(18, 19, '16239974117095.jpg', '2021-06-18 00:53:31', '2021-06-18 00:53:31'),
(19, 20, '16239974654661.jpg', '2021-06-18 00:54:25', '2021-06-18 00:54:25'),
(20, 21, '16239975455612.jpg', '2021-06-18 00:55:45', '2021-06-18 00:55:45'),
(21, 22, '16239975789305.jpg', '2021-06-18 00:56:18', '2021-06-18 00:56:18'),
(22, 23, '16239976026068.jpg', '2021-06-18 00:56:42', '2021-06-18 00:56:42'),
(23, 24, '1623997642988.jpg', '2021-06-18 00:57:22', '2021-06-18 00:57:22'),
(24, 25, '16239976651073.jpg', '2021-06-18 00:57:45', '2021-06-18 00:57:45'),
(25, 26, '16239976882149.jpg', '2021-06-18 00:58:08', '2021-06-18 00:58:08'),
(26, 27, '16239977222992.jpg', '2021-06-18 00:58:42', '2021-06-18 00:58:42'),
(27, 28, '16239977306394.jpg', '2021-06-18 00:58:50', '2021-06-18 00:58:50'),
(28, 29, '16239977374779.jpg', '2021-06-18 00:58:57', '2021-06-18 00:58:57'),
(29, 30, '16239977457316.jpg', '2021-06-18 00:59:05', '2021-06-18 00:59:05'),
(30, 31, '16239977515875.jpg', '2021-06-18 00:59:11', '2021-06-18 00:59:11'),
(31, 32, '16239977568097.jpg', '2021-06-18 00:59:16', '2021-06-18 00:59:16'),
(32, 33, '16239977666786.jpg', '2021-06-18 00:59:26', '2021-06-18 00:59:26'),
(33, 34, '16239977733277.jpg', '2021-06-18 00:59:33', '2021-06-18 00:59:33'),
(34, 35, '16239977932945.jpg', '2021-06-18 00:59:53', '2021-06-18 00:59:53'),
(35, 36, '16239978007330.jpg', '2021-06-18 01:00:00', '2021-06-18 01:00:00'),
(36, 37, '16239978116951.jpg', '2021-06-18 01:00:11', '2021-06-18 01:00:11'),
(37, 38, '16239978335657.jpg', '2021-06-18 01:00:33', '2021-06-18 01:00:33'),
(38, 15, '16239971786404.jpg', '2021-06-18 00:49:38', '2021-06-18 00:49:38');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yogesh', 'yogesh@gmil.com', NULL, '', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
