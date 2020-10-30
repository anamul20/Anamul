-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 07, 2020 alle 10:18
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practice`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
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
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_03_27_030527_create_admin_table', 1),
(4, '2020_03_29_021314_create_catagory_table', 2),
(5, '2020_03_31_192527_create_blog_table', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_level` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `email_address`, `admin_password`, `mobile_number`, `access_level`, `created_at`, `updated_at`) VALUES
(1, 'Anamul hoque', 'anamul.h20@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', '01732389538', 1, NULL, NULL),
(2, 'niahu', 'anamulhoque2075@gmail.com', '3d2172418ce305c7d16d4b05597c6a59', '3512564014', 2, '2020-03-28 05:33:22', '2020-03-28 05:33:22');

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blog_id` int(10) UNSIGNED NOT NULL,
  `catagory_id` int(11) NOT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bloauthor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `catagory_id`, `blog_title`, `bloauthor_name`, `blog_short_description`, `blog_long_description`, `blog_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 5, 'VA Familiar With WooCommerce Needed 30+ Hrs. Per Week', 'Anamul hoque', 'VA Familiar With WooCommerce Needed 30+ Hrs. Per Week', 'VA Familiar With WooCommerce Needed 30+ Hrs. Per Week', NULL, 0, '2020-04-01 19:19:34', '2020-04-02 19:19:34'),
(2, 11, 'VA Familiar With WooCommerce Needed 30+ Hrs. Per Week', 'Anamul hoque', 'With WooCommerce Needed 30+ Hrs. Per WeekVA Familiar With WooCommerce Needed 30+ Hrs. Per WeekVA Familiar With WooCommerce Needed 30+ Hrs. Per Week', 'With WooCommerce Needed 30+ Hrs. Per WeekWith WooCommerce Needed 30+ Hrs. Per WeekVA Familiar With WooCommerce Needed 30+ Hrs. Per WeekVA Familiar With WooCommerce Needed 30+ Hrs. Per Week', 'blog_image/ItlET8LtO6g3opzNwPKK.jpg', 1, '2020-04-01 19:20:06', '2020-04-02 19:20:06'),
(3, 5, 'VA Familiar With WooC vbhvgcfgvhjgvf', 'Anamul hoque', 'With WooCommerce Needed 30+ Hrsk vbgncv', 'With WooCommerce Needed 30+ Hrs. Per WeekWith WooCommercebngc', 'blog_image/ZQfUhBpFuo2xqh4RK0wc.jpg', 1, NULL, NULL),
(4, 11, 'VA Familiar', 'Anamul hoque', 'With WooCommerce Needed 30+ Hrs. Per Week', 'With WooCommerce Needed 30+ Hrs. Per Week', 'blog_image/o5SNZ6dpDM7MCgSR5Bcs.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_catagory`
--

CREATE TABLE `tbl_catagory` (
  `catagory_id` int(10) UNSIGNED NOT NULL,
  `catagory_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catagory_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL COMMENT '	publication_status =1 published and 	publication_status =0 unpublished',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `tbl_catagory`
--

INSERT INTO `tbl_catagory` (`catagory_id`, `catagory_name`, `catagory_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(5, 'anamul', '1732389538', 1, '2020-03-29 02:50:15', NULL),
(6, 'oqueui', '01710980923', 0, '2020-03-29 02:50:33', NULL),
(7, 'rakib', '012296314200', 0, '2020-03-29 02:50:53', NULL),
(11, 'radia', 'f a ff asf jhh hlhkl', 1, '2020-03-31 01:34:51', NULL),
(12, 'radidfgdfg', 'radidfgdfg', 1, '2020-03-31 15:41:53', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
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
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indici per le tabelle `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indici per le tabelle `tbl_catagory`
--
ALTER TABLE `tbl_catagory`
  ADD PRIMARY KEY (`catagory_id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `tbl_catagory`
--
ALTER TABLE `tbl_catagory`
  MODIFY `catagory_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
