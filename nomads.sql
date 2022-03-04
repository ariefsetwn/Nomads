-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2022 at 07:59 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'assets/gallery/f9ql7XbNtu5LaNe2wY3YDbXS0VuGwu6kvmukcHMP.jpg', NULL, '2022-02-09 21:57:30', '2022-02-09 21:57:30'),
(2, 3, 'assets/gallery/xRadHWwyzFfjge4yIJqJanKI0kOkFQbrrUTJhl7L.jpg', NULL, '2022-02-09 21:58:04', '2022-02-09 22:15:31'),
(3, 4, 'assets/gallery/BNLf0eUed2sW854Ni8o2bkcSMrj2z7oVzCURIaMS.jpg', NULL, '2022-02-10 08:35:08', '2022-02-10 08:35:08'),
(4, 5, 'assets/gallery/WNKsXKwEueYmiJCD2XHuHkhkrik8dEbEVEAsnSaE.jpg', NULL, '2022-02-10 08:35:45', '2022-02-10 08:35:45'),
(5, 5, 'assets/gallery/60TzhYlZLP8JbnB70BVZYh74WapQtz6GXy5nvPly.jpg', NULL, '2022-02-10 23:26:06', '2022-02-10 23:26:06');

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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2022_02_04_063008_create_travel_packages_table', 1),
(14, '2022_02_04_063355_create_galleries_table', 1),
(15, '2022_02_04_065821_create_transactions_table', 1),
(16, '2022_02_04_070139_create_transaction_details_table', 1),
(17, '2022_02_04_070550_add_roles_field_to_users_table', 1),
(18, '2022_02_07_063219_add_username_field_to_users_table', 1);

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
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 4, 3, 0, 3212, 'IN_CART', NULL, '2022-02-10 21:37:20', '2022-02-10 21:37:20'),
(2, 4, 3, 0, 3212, 'IN_CART', '2022-02-10 23:25:29', '2022-02-10 21:39:16', '2022-02-10 23:25:29'),
(3, 4, 3, 0, 3212, 'IN_CART', '2022-02-10 23:25:27', '2022-02-10 21:40:40', '2022-02-10 23:25:27'),
(4, 4, 3, 0, 3212, 'PENDING', NULL, '2022-02-10 21:44:44', '2022-02-10 23:25:38'),
(5, 4, 3, 0, 3212, 'IN_CART', '2022-02-10 23:25:23', '2022-02-10 21:45:17', '2022-02-10 23:25:23'),
(6, 5, 3, 0, 43232, 'FAILED', NULL, '2022-02-10 23:16:25', '2022-02-11 00:32:54'),
(7, 5, 3, 0, 43232, 'SUCCESS', NULL, '2022-02-10 23:17:43', '2022-02-11 00:25:12'),
(8, 5, 3, 0, 43232, 'IN_CART', '2022-02-10 23:25:21', '2022-02-10 23:18:52', '2022-02-10 23:25:21'),
(9, 5, 2, 0, 43232, 'SUCCESS', NULL, '2022-02-10 23:27:58', '2022-02-11 00:23:28'),
(10, 5, 2, 0, 43232, 'IN_CART', NULL, '2022-02-10 23:28:51', '2022-02-10 23:28:51'),
(11, 5, 2, 190, 86654, 'PENDING', NULL, '2022-02-10 23:29:20', '2022-02-11 00:17:28'),
(12, 4, 4, 190, 6614, 'PENDING', NULL, '2022-02-11 00:29:44', '2022-02-11 00:31:12'),
(13, 2, 5, 190, 4856, 'SUCCESS', NULL, '2022-02-24 21:21:13', '2022-02-24 21:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'rezkyvan', 'ID', 0, '2027-02-11', NULL, '2022-02-10 21:37:20', '2022-02-10 21:37:20'),
(2, 2, 'rezkyvan', 'ID', 0, '2027-02-11', NULL, '2022-02-10 21:39:16', '2022-02-10 21:39:16'),
(3, 3, 'rezkyvan', 'ID', 0, '2027-02-11', NULL, '2022-02-10 21:40:41', '2022-02-10 21:40:41'),
(4, 4, 'rezkyvan', 'ID', 0, '2027-02-11', NULL, '2022-02-10 21:44:44', '2022-02-10 21:44:44'),
(5, 5, 'rezkyvan', 'ID', 0, '2027-02-11', NULL, '2022-02-10 21:45:17', '2022-02-10 21:45:17'),
(6, 6, 'rezkyvan', 'ID', 0, '2027-02-11', NULL, '2022-02-10 23:16:25', '2022-02-10 23:16:25'),
(7, 7, 'rezkyvan', 'ID', 0, '2027-02-11', NULL, '2022-02-10 23:17:43', '2022-02-10 23:17:43'),
(8, 8, 'rezkyvan', 'ID', 0, '2027-02-11', NULL, '2022-02-10 23:18:52', '2022-02-10 23:18:52'),
(9, 9, 'sopiramda', 'ID', 0, '2027-02-11', NULL, '2022-02-10 23:27:58', '2022-02-10 23:27:58'),
(10, 10, 'sopiramda', 'ID', 0, '2027-02-11', NULL, '2022-02-10 23:28:51', '2022-02-10 23:28:51'),
(11, 11, 'sopiramda', 'ID', 0, '2027-02-11', NULL, '2022-02-10 23:29:20', '2022-02-10 23:29:20'),
(12, 11, 'rezkyvan', 'CN', 1, '2022-02-21', '2022-02-11 00:13:58', '2022-02-10 23:53:48', '2022-02-11 00:13:58'),
(13, 11, 'rezkyvan', 'CN', 1, '2021-08-19', '2022-02-11 00:16:34', '2022-02-11 00:14:57', '2022-02-11 00:16:34'),
(14, 11, 'rezkyvan', 'CN', 1, '2022-02-21', NULL, '2022-02-11 00:16:47', '2022-02-11 00:16:47'),
(15, 12, 'alfredo', 'ID', 0, '2027-02-11', NULL, '2022-02-11 00:29:44', '2022-02-11 00:29:44'),
(16, 12, 'rezkyvan', 'ID', 1, '2022-02-20', NULL, '2022-02-11 00:31:08', '2022-02-11 00:31:08'),
(17, 13, 'jonathan11', 'ID', 0, '2027-02-25', NULL, '2022-02-24 21:21:13', '2022-02-24 21:21:13'),
(18, 13, 'rezkyvan', 'CN', 1, '2022-02-15', NULL, '2022-02-24 21:21:29', '2022-02-24 21:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'coba aja dulu', 'coba-aja-dulu', 'jakarta', 'sfsf', 'lompat', 'indonesia', 'nasi padang', '2022-02-17', '2d', 'open trip', 323232, '2022-02-08 22:15:47', '2022-02-08 21:00:34', '2022-02-08 22:15:47'),
(2, 'Nusa Peninda', 'nusa-peninda', 'jogja', 'Nusa Penida is an island southeast of Indonesia’s island Bali and a district of Klungkung Regency that includes the neighbouring small island of Nusa Lembongan. The Badung Strait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum altitude of 524 metres. It is drier than the nearby island of Bali.\r\n\r\nBali and a district of Klungkung Regency that includes the neighbouring small island of Nusa Lembongan. The Badung Strait separates the island and Bali.', 'lompat', 'indonesia', 'rendang', '2021-11-09', '2d', 'open trip', 2333, NULL, '2022-02-08 22:10:53', '2022-02-10 08:32:52'),
(3, 'Dubai', 'dubai', 'abu dabi', 'Nusa Penida is an island southeast of Indonesia’s island Bali and a district of Klungkung Regency that includes the neighbouring small island of Nusa Lembongan. The Badung Strait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum altitude of 524 metres. It is drier than the nearby island of Bali.\r\n\r\nBali and a district of Klungkung Regency that includes the neighbouring small island of Nusa Lembongan. The Badung Strait separates the island and Bali.', 'lompat', 'arab', 'nasi padang', '2022-02-01', '10d', 'open trip', 20000, NULL, '2022-02-09 21:23:19', '2022-02-10 08:33:01'),
(4, 'Bali', 'bali', 'indonesia', 'Nusa Penida is an island southeast of Indonesia’s island Bali and a district of Klungkung Regency that includes the neighbouring small island of Nusa Lembongan. The Badung Strait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum altitude of 524 metres. It is drier than the nearby island of Bali.\r\n\r\nBali and a district of Klungkung Regency that includes the neighbouring small island of Nusa Lembongan. The Badung Strait separates the island and Bali.', 'lompat', 'indonesia', 'nasi padang', '2022-02-14', '2d', 'open trip', 3212, NULL, '2022-02-10 08:32:43', '2022-02-10 08:32:43'),
(5, 'Bromo', 'bromo', 'indonesia', 'Nusa Penida is an island southeast of Indonesia’s island Bali and a district of Klungkung Regency that includes the neighbouring small island of Nusa Lembongan. The Badung Strait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum altitude of 524 metres. It is drier than the nearby island of Bali.\r\n\r\nBali and a district of Klungkung Regency that includes the neighbouring small island of Nusa Lembongan. The Badung Strait separates the island and Bali.', 'lari maraton', 'indonesia', 'sate', '2022-02-06', '10d', 'open trip', 43232, NULL, '2022-02-10 08:33:42', '2022-02-10 08:33:42');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'arief', 'ariefsetwn@gmail.com', NULL, '$2y$10$Bx3RnOKFxBsDrjU4Z4LTT.wrIgyq.7nDLddNzsRIgDTYB5iiO6.Pq', NULL, '2022-02-08 20:57:59', '2022-02-08 20:57:59', 'ADMIN', 'ariefset'),
(2, 'sopi', 'sopi@gmail.com', NULL, '$2y$10$/z1dx.Kz.z55VqBl0tK8T.F14UlRnfaweHUhheoGRfVKyI3EUS1ti', NULL, '2022-02-08 22:11:38', '2022-02-08 22:11:38', 'USER', 'sopiramda'),
(3, 'rezky', 'iki@gmail.com', NULL, '$2y$10$nHFHSwIC97AF5w8KpjxlM.cAFcIrseLlEXztHkWDF.uG1haCs8y4y', NULL, '2022-02-10 21:28:23', '2022-02-10 21:28:23', 'USER', 'rezkyvan'),
(4, 'edo', 'edo@gmail.com', NULL, '$2y$10$kRhRnjlyCoD1ayDD8kCfXeUj0y3nmIA130Tg5jbxeY.FF4T/nFhJy', NULL, '2022-02-11 00:27:49', '2022-02-11 00:27:49', 'USER', 'alfredo'),
(5, 'jonathan', 'jonathankeane19@gmail.com', NULL, '$2y$10$jZoZlg98PE8nR/BC2lUxxuPhiFwpl4002HvDnkFfjoxz.atAwQSIm', NULL, '2022-02-24 21:20:44', '2022-02-24 21:20:44', 'USER', 'jonathan11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
