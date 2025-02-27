-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2025 at 01:33 PM
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
-- Database: `astudio`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('text','date','number','select') NOT NULL DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'beatae', 'text', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(2, 'repellat', 'date', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(3, 'autem', 'select', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(4, 'laborum', 'select', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(5, 'tenetur', 'number', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(6, 'qui', 'select', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(7, 'ut', 'select', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(8, 'repellat', 'text', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(9, 'mollitia', 'text', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(10, 'illo', 'date', '2025-02-27 09:09:25', '2025-02-27 09:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `entity_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 'eius', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(2, 5, 2, 'et', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(3, 3, 5, 'asperiores', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(4, 4, 4, 'blanditiis', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(5, 4, 5, 'ab', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(6, 4, 5, 'in', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(7, 5, 3, 'rerum', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(8, 1, 3, 'sunt', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(9, 1, 5, 'odit', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(10, 4, 4, 'officia', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(11, 3, 3, 'soluta', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(12, 5, 2, 'eaque', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(13, 3, 4, 'cumque', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(14, 5, 5, 'autem', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(15, 2, 2, 'a', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(16, 5, 2, 'quia', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(17, 1, 5, 'consectetur', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(18, 5, 1, 'ducimus', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(19, 3, 2, 'cumque', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(20, 3, 2, 'ullam', '2025-02-27 09:09:25', '2025-02-27 09:09:25');

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
(14, '2025_02_27_105343_create_oauth_auth_codes_table', 1),
(15, '2025_02_27_105344_create_oauth_access_tokens_table', 1),
(16, '2025_02_27_105345_create_oauth_refresh_tokens_table', 1),
(17, '2025_02_27_105346_create_oauth_clients_table', 1),
(18, '2025_02_27_105347_create_oauth_personal_access_clients_table', 1),
(19, '2025_02_27_105643_create_users_table', 2),
(20, '2025_02_27_105644_create_projects_table', 2),
(21, '2025_02_27_105644_create_timesheets_table', 2),
(22, '2025_02_27_110306_create_sessions_table', 3),
(23, '2025_02_27_112141_create_project_user_table', 4),
(26, '2025_02_27_112508_create_attributes_table', 5),
(27, '2025_02_27_112531_create_attribute_values_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2dbaaa3aa3a5b5245322ca592b668ddba8189200cc437259094402bb8fc6cfd023a246877ace87e7', 1, 1, 'MyApp', '[]', 0, '2025-02-27 08:03:22', '2025-02-27 08:03:22', '2026-02-27 11:03:22'),
('9b91f4beefcdb3244312d351c7add6821f2c494575d63dcebc2c00a2af69871773e6dc463f55cd87', 52, 1, 'authToken', '[]', 0, '2025-02-27 09:32:18', '2025-02-27 09:32:18', '2026-02-27 12:32:18'),
('b7cd5747a8bb18398f7ce8c773673b4af3752fb30fa48857ad68ae2e2e5a7def14389c0ce241dd04', 52, 1, 'authToken', '[]', 0, '2025-02-27 09:32:52', '2025-02-27 09:32:52', '2026-02-27 12:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'PAoLB8rtJNL8EjkYGu9ohg5OaqvOHTzBBxOlCaWQ', NULL, 'http://localhost', 1, 0, 0, '2025-02-27 07:53:52', '2025-02-27 07:53:52'),
(2, NULL, 'Laravel Password Grant Client', 'AG5B29sflOC7JnQaMtUNcZT9SJmNhpGRmubxEvyp', 'users', 'http://localhost', 0, 1, 0, '2025-02-27 07:53:52', '2025-02-27 07:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-02-27 07:53:52', '2025-02-27 07:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Et molestiae vel aut dolorem.', 'active', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(2, 'Expedita consequatur dolor atque in vel dolor et.', 'inactive', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(3, 'Beatae libero placeat aut officia animi similique autem.', 'active', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(4, 'Error exercitationem earum assumenda quis eos dolorum.', 'inactive', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(5, 'Aliquam qui quo qui at.', 'inactive', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(11, 'Nostrum voluptas temporibus quam.', 'inactive', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(12, 'Nemo officia nam distinctio rerum dolorem.', 'active', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(13, 'Soluta ullam facere quidem dolor culpa.', 'inactive', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(14, 'Quia distinctio ut autem molestiae beatae id earum.', 'active', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(15, 'Aut beatae est deleniti et.', 'inactive', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(16, 'Ut rerum nostrum quo occaecati ea deleniti non.', 'active', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(17, 'Earum culpa alias blanditiis fuga iure tempore praesentium.', 'inactive', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(18, 'Quia provident omnis tenetur odit.', 'active', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(19, 'Aliquam explicabo aut saepe.', 'active', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(20, 'Deleniti et est minus repellat nemo expedita.', 'active', '2025-02-27 09:09:25', '2025-02-27 09:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `project_user`
--

CREATE TABLE `project_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_user`
--

INSERT INTO `project_user` (`id`, `user_id`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, NULL, NULL),
(2, 8, 1, NULL, NULL),
(3, 2, 2, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 4, 3, NULL, NULL),
(7, 37, 3, NULL, NULL),
(8, 47, 3, NULL, NULL),
(9, 44, 4, NULL, NULL),
(10, 7, 5, NULL, NULL),
(11, 9, 5, NULL, NULL),
(12, 41, 5, NULL, NULL),
(13, 9, 11, NULL, NULL),
(14, 43, 11, NULL, NULL),
(15, 46, 11, NULL, NULL),
(16, 5, 12, NULL, NULL),
(17, 33, 12, NULL, NULL),
(18, 39, 12, NULL, NULL),
(19, 6, 13, NULL, NULL),
(20, 39, 13, NULL, NULL),
(21, 41, 13, NULL, NULL),
(22, 2, 14, NULL, NULL),
(23, 38, 14, NULL, NULL),
(24, 2, 15, NULL, NULL),
(25, 9, 15, NULL, NULL),
(26, 45, 15, NULL, NULL),
(27, 40, 16, NULL, NULL),
(28, 45, 16, NULL, NULL),
(29, 47, 16, NULL, NULL),
(30, 5, 17, NULL, NULL),
(31, 49, 17, NULL, NULL),
(32, 5, 18, NULL, NULL),
(33, 7, 18, NULL, NULL),
(34, 40, 18, NULL, NULL),
(35, 8, 19, NULL, NULL),
(36, 35, 20, NULL, NULL),
(37, 40, 20, NULL, NULL),
(38, 48, 20, NULL, NULL);

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
-- Table structure for table `timesheets`
--

CREATE TABLE `timesheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `hours` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timesheets`
--

INSERT INTO `timesheets` (`id`, `task_name`, `date`, `hours`, `user_id`, `project_id`, `created_at`, `updated_at`) VALUES
(3, 'Voluptatibus modi error omnis.', '2016-01-18', 4, 6, 1, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(4, 'Distinctio consequatur qui repellendus.', '2023-12-07', 1, 10, 4, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(5, 'Ut praesentium occaecati accusantium.', '2011-05-04', 4, 4, 1, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(6, 'Perspiciatis saepe labore ut.', '2003-07-24', 1, 10, 3, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(7, 'Enim ut sed.', '2005-10-05', 8, 4, 4, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(8, 'Dicta illum quia voluptas.', '2004-12-23', 3, 7, 1, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(9, 'Maxime modi magni.', '2010-11-13', 6, 9, 1, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(10, 'Cum inventore cupiditate dignissimos nisi.', '2013-06-12', 4, 7, 4, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(11, 'Voluptatem nulla esse.', '2010-04-30', 4, 10, 3, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(12, 'Tempora odio recusandae.', '1980-12-21', 7, 8, 5, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(13, 'Aspernatur itaque facilis qui.', '1986-12-15', 1, 6, 1, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(14, 'Est omnis hic.', '2012-04-20', 5, 2, 5, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(15, 'Voluptas et nemo.', '1970-03-17', 6, 1, 2, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(16, 'Laudantium ea est nobis maxime.', '1970-06-29', 2, 5, 1, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(17, 'Et reiciendis dolor id.', '1975-10-27', 4, 7, 4, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(18, 'Rerum excepturi aut incidunt et.', '2000-11-11', 3, 10, 5, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(19, 'Id tempore qui.', '2024-09-22', 5, 7, 5, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(20, 'Quia perspiciatis quis.', '2000-03-01', 6, 1, 4, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(21, 'Eum rerum aliquam sit.', '1985-09-25', 8, 1, 3, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(22, 'Incidunt est sequi.', '2011-05-16', 5, 10, 5, '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(23, 'Nam non fuga non.', '2001-12-27', 7, 5, 1, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(24, 'Maxime eum ex accusamus.', '2020-09-16', 7, 5, 2, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(25, 'Quibusdam distinctio doloremque occaecati.', '1998-10-06', 3, 10, 2, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(26, 'Quibusdam similique numquam qui.', '2014-12-26', 4, 8, 3, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(27, 'Quia modi ut.', '2011-07-20', 2, 8, 3, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(28, 'Fugiat provident provident omnis.', '2009-01-06', 5, 6, 1, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(29, 'Facere corrupti qui quam.', '1991-06-17', 8, 8, 2, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(30, 'Natus enim.', '1999-11-05', 5, 7, 3, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(31, 'Ut iste quam.', '1978-07-05', 2, 9, 4, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(32, 'Labore consectetur molestiae.', '1984-01-07', 7, 4, 5, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(33, 'Perspiciatis reiciendis sit porro.', '1992-05-04', 8, 4, 1, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(34, 'Est sint iure.', '2020-05-17', 3, 10, 5, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(35, 'Quisquam animi repellat.', '1989-07-02', 3, 3, 2, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(36, 'Aut dignissimos beatae quod odit.', '1999-06-09', 7, 4, 1, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(37, 'Inventore id vel.', '2016-01-03', 6, 3, 5, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(38, 'Doloribus voluptatum et aspernatur aut.', '2017-05-31', 2, 8, 4, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(39, 'Assumenda fugiat libero.', '1986-04-20', 1, 7, 4, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(40, 'Et non eveniet et.', '1970-06-07', 4, 2, 4, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(41, 'Rerum inventore consequuntur.', '2015-10-13', 1, 2, 5, '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(42, 'Et sit non.', '1975-09-12', 7, 7, 1, '2025-02-27 09:09:25', '2025-02-27 09:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Nannie', 'Smitham', 'bruen.casey@example.net', '$2y$12$B178MTAHdm0KwEyIOjNlhea6X3czfoH/DD2lzc6JFxkEQ2hR70rU2', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(2, 'Chandler', 'Senger', 'glabadie@example.org', '$2y$12$LguLk0/R8bWc2HvC0Cr6x.KgoUgeW7/PLYx0nq2Wlfj4c5rutfaVS', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(3, 'Lamar', 'Murazik', 'rodrick96@example.net', '$2y$12$Td4Egwecsk/pjjfOt12Vje7W.ENrv0.wk4H8hGOHhzGpvNi5q/HHi', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(4, 'Lera', 'Hyatt', 'ptrantow@example.com', '$2y$12$W43c8kaOu8BilkQZAQ/VdersALzw07fRPBHs/VHTy27mjbn3bZhIm', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(5, 'Marlen', 'Herman', 'dbecker@example.net', '$2y$12$8gWyoNvqx6Djsl.cQx.lm.vAhyFSy.7O3R/63auuDe42R.it/Ahgm', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(6, 'Brenna', 'Douglas', 'wiegand.evan@example.org', '$2y$12$e1ojDVUWWbV5s51OfZjX1eUzfkyAcEcXiYtHxbCjciHhEpj3PU.dS', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(7, 'Gabe', 'Schuppe', 'twila97@example.org', '$2y$12$4m7YDcdkSadMoaloPFwz3.fQNt1/e0oHPApeCXCBR4jsN/QD2mT0i', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(8, 'Jacklyn', 'Hagenes', 'leannon.leora@example.com', '$2y$12$6VHYK3gNt2yPiczGsuzB2ernKbEvfZrkercrzKCcP52Mdt3IdEf5K', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(9, 'Charles', 'Gleason', 'malika02@example.net', '$2y$12$FHdZQN0bNR3aHvlcNzLaB.h7aa/P7PH142Kvqxy4btc1lmxST0CLm', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(10, 'Chloe', 'Kling', 'jlittel@example.com', '$2y$12$r8DLUQUQfjna6N/LFcDDnuaW2.OPzux/MdrDZ8VIWkytwfkKNiPOW', '2025-02-27 09:03:27', '2025-02-27 09:03:27'),
(32, 'Agustina', 'Dicki', 'jack91@example.net', '$2y$12$QjoKkPHepH4Vv5idS.WSve6a/Dq6lBcaVLECTKAaeUZYjbhPAsPh6', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(33, 'Arielle', 'Larson', 'domenico.wisoky@example.com', '$2y$12$7wppzjSRIX.qlxHcO2igj.XlJCgk3Zzcc3uRymz/6zy7VfoLKyOAa', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(34, 'Leone', 'Runolfsson', 'era.paucek@example.com', '$2y$12$Y8GIVjMtcWHE.AxvGXy2QeMnxrOEiBfiQXBlw2W4dSSBTjEIf6kmK', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(35, 'Brendan', 'Rolfson', 'filomena.harber@example.net', '$2y$12$rw70OmhlO6uUmti4M9r2RO.30CQVEXj3lNfTbf9fjc420NI2UMMki', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(36, 'Millie', 'Swaniawski', 'flatley.luigi@example.net', '$2y$12$ICiAVkT6fnT9ylzFHjt0beeMo85VN6XUus1lvvBz.pDAENZKLHh22', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(37, 'Brett', 'McClure', 'xsanford@example.org', '$2y$12$jyClrKoUa6J7hrw2XOzr6eWFxzb/RvNt5OtPx8DBVcx6uID8nzLBa', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(38, 'Lula', 'Carter', 'dejon57@example.org', '$2y$12$IURsNbjp7.Bru6OBaw62GORA0fsv.vcRSykiewbz4ZyTJlgeERrYO', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(39, 'Talia', 'Dare', 'wyatt.hegmann@example.org', '$2y$12$YZpJ./ftnUcC1qfV5aLu5u5zzpsfZ0i3zF4mLS0EhK2mEYVuHa7s.', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(40, 'Shayna', 'Hodkiewicz', 'macy79@example.org', '$2y$12$woiJ5dMtcf3B2ALYHoL3LOAmVALpGYbiTr.U2XpBafBNCN7szzrIq', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(41, 'Ella', 'Collier', 'bernardo66@example.com', '$2y$12$zD1gmHN7y0KJZKfqHSzhYObPA9A8z56DjZYj/D1gJf.knVuuTfviq', '2025-02-27 09:04:49', '2025-02-27 09:04:49'),
(42, 'Fae', 'Larkin', 'tremblay.beau@example.com', '$2y$12$BQNlJPW.mNJ5wWVoh2xjfu0FRdQ915a.BZnAGsVjDeY1bN9ImcecO', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(43, 'Estefania', 'Swaniawski', 'kristina11@example.com', '$2y$12$UwFZrtma9xdtVXaxcsj7SOwIOImQFJGW4gf5rF5hZ/yF50v2Vo872', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(44, 'Arch', 'Rutherford', 'zoie.kutch@example.org', '$2y$12$u0LX6giAScNWDxQb4u3z8eANKGcH4D56KjmkY0s3y9ZoHKQSoKmH6', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(45, 'Marcos', 'Kerluke', 'aurelia40@example.com', '$2y$12$q/NWW.Pj15EL7cDUEjwJ.OLtOYawUx2uwSj5L5zkatSppAm9GdO1W', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(46, 'Aniya', 'Rutherford', 'paula.aufderhar@example.org', '$2y$12$iZhdb5KmnjP2HfR42.IGleOedg.DuCdHoxWG25y4URSArWE9Qrwz.', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(47, 'Leonel', 'Kuphal', 'rae.schaefer@example.org', '$2y$12$yO1hA0qhf4kBzui5wi2li.5LndumyCC.kh8nMLYut9X21d/E5nX6m', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(48, 'Samantha', 'Stroman', 'ilindgren@example.org', '$2y$12$c1Oo2HFj0mxt0c6ApWsS7uCm3v45um4rg.JUyV8MiPTkvgN72eRh.', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(49, 'Ocie', 'Heaney', 'williamson.ottilie@example.com', '$2y$12$4P/b8cTtVkANWFEXp7PXXeo/6uP4NJAt.S9LBN8bPVfbJMuiCq6QK', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(50, 'Shanna', 'Ferry', 'lonny60@example.net', '$2y$12$Xn.g9NjAII3PVFjxo9vTFuqCCZy4dP1tgEXLV0mkxl.FqtVZX2cyS', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(51, 'Katelyn', 'Schroeder', 'odell17@example.com', '$2y$12$8rKxZoVGZfLuLsBXMhyGHuLcYeTCGtpEVUyF/2DCA99LNfnxj93ze', '2025-02-27 09:09:25', '2025-02-27 09:09:25'),
(52, 'Test', 'Email', 'test@example.com', '$2y$12$zCmWHWaFTUiTe11O1NCd1O2HxqLsGwjP19nmywAGQ5nH4DbTLwxpS', '2025-02-27 09:32:18', '2025-02-27 09:32:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_user`
--
ALTER TABLE `project_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_user_user_id_foreign` (`user_id`),
  ADD KEY `project_user_project_id_foreign` (`project_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timesheets_user_id_foreign` (`user_id`),
  ADD KEY `timesheets_project_id_foreign` (`project_id`);

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
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `project_user`
--
ALTER TABLE `project_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_user`
--
ALTER TABLE `project_user`
  ADD CONSTRAINT `project_user_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD CONSTRAINT `timesheets_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `timesheets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
