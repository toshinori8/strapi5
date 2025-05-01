-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql33.mydevil.net
-- Generation Time: Dec 11, 2024 at 09:42 AM
-- Wersja serwera: 8.0.39
-- Wersja PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m1178_stream404a`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(7, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2023-08-22 22:43:37.814000', '2023-08-22 22:43:37.814000', NULL, NULL),
(8, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-08-22 22:43:37.818000', '2023-08-22 22:43:37.818000', NULL, NULL),
(9, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-08-22 22:43:37.823000', '2023-08-22 22:43:37.823000', NULL, NULL),
(10, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2023-08-22 22:43:37.827000', '2023-08-22 22:43:37.827000', NULL, NULL),
(11, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-08-22 22:43:37.832000', '2023-08-22 22:43:37.832000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-08-22 22:43:37.836000', '2023-08-22 22:43:37.836000', NULL, NULL),
(13, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2023-08-22 22:43:37.871000', '2023-08-22 22:43:37.871000', NULL, NULL),
(14, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2023-08-22 22:43:37.879000', '2023-08-22 22:43:37.879000', NULL, NULL),
(15, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2023-08-22 22:43:37.885000', '2023-08-22 22:43:37.885000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2023-08-22 22:43:37.890000', '2023-08-22 22:43:37.890000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2023-08-22 22:43:37.895000', '2023-08-22 22:43:37.895000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2023-08-22 22:43:37.901000', '2023-08-22 22:43:37.901000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2023-08-22 22:43:37.905000', '2023-08-22 22:43:37.905000', NULL, NULL),
(20, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2023-08-22 22:43:37.910000', '2023-08-22 22:43:37.910000', NULL, NULL),
(21, 'plugin::email.settings.read', NULL, '{}', '[]', '2023-08-22 22:43:37.915000', '2023-08-22 22:43:37.915000', NULL, NULL),
(22, 'plugin::upload.read', NULL, '{}', '[]', '2023-08-22 22:43:37.920000', '2023-08-22 22:43:37.920000', NULL, NULL),
(23, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-08-22 22:43:37.925000', '2023-08-22 22:43:37.925000', NULL, NULL),
(24, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-08-22 22:43:37.930000', '2023-08-22 22:43:37.930000', NULL, NULL),
(25, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-08-22 22:43:37.935000', '2023-08-22 22:43:37.935000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-08-22 22:43:37.940000', '2023-08-22 22:43:37.940000', NULL, NULL),
(27, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-08-22 22:43:37.944000', '2023-08-22 22:43:37.944000', NULL, NULL),
(28, 'plugin::upload.settings.read', NULL, '{}', '[]', '2023-08-22 22:43:37.947000', '2023-08-22 22:43:37.947000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2023-08-22 22:43:37.951000', '2023-08-22 22:43:37.951000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2023-08-22 22:43:37.954000', '2023-08-22 22:43:37.954000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2023-08-22 22:43:37.958000', '2023-08-22 22:43:37.958000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2023-08-22 22:43:37.962000', '2023-08-22 22:43:37.962000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2023-08-22 22:43:37.966000', '2023-08-22 22:43:37.966000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2023-08-22 22:43:37.970000', '2023-08-22 22:43:37.970000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2023-08-22 22:43:37.975000', '2023-08-22 22:43:37.975000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2023-08-22 22:43:37.979000', '2023-08-22 22:43:37.979000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2023-08-22 22:43:37.983000', '2023-08-22 22:43:37.983000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2023-08-22 22:43:37.988000', '2023-08-22 22:43:37.988000', NULL, NULL),
(39, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2023-08-22 22:43:37.992000', '2023-08-22 22:43:37.992000', NULL, NULL),
(40, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2023-08-22 22:43:37.997000', '2023-08-22 22:43:37.997000', NULL, NULL),
(41, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2023-08-22 22:43:38.001000', '2023-08-22 22:43:38.001000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2023-08-22 22:43:38.005000', '2023-08-22 22:43:38.005000', NULL, NULL),
(43, 'admin::marketplace.read', NULL, '{}', '[]', '2023-08-22 22:43:38.010000', '2023-08-22 22:43:38.010000', NULL, NULL),
(44, 'admin::webhooks.create', NULL, '{}', '[]', '2023-08-22 22:43:38.014000', '2023-08-22 22:43:38.014000', NULL, NULL),
(45, 'admin::webhooks.read', NULL, '{}', '[]', '2023-08-22 22:43:38.019000', '2023-08-22 22:43:38.019000', NULL, NULL),
(46, 'admin::webhooks.update', NULL, '{}', '[]', '2023-08-22 22:43:38.023000', '2023-08-22 22:43:38.023000', NULL, NULL),
(47, 'admin::webhooks.delete', NULL, '{}', '[]', '2023-08-22 22:43:38.027000', '2023-08-22 22:43:38.027000', NULL, NULL),
(48, 'admin::users.create', NULL, '{}', '[]', '2023-08-22 22:43:38.034000', '2023-08-22 22:43:38.034000', NULL, NULL),
(49, 'admin::users.read', NULL, '{}', '[]', '2023-08-22 22:43:38.039000', '2023-08-22 22:43:38.039000', NULL, NULL),
(50, 'admin::users.update', NULL, '{}', '[]', '2023-08-22 22:43:38.044000', '2023-08-22 22:43:38.044000', NULL, NULL),
(51, 'admin::users.delete', NULL, '{}', '[]', '2023-08-22 22:43:38.048000', '2023-08-22 22:43:38.048000', NULL, NULL),
(52, 'admin::roles.create', NULL, '{}', '[]', '2023-08-22 22:43:38.053000', '2023-08-22 22:43:38.053000', NULL, NULL),
(53, 'admin::roles.read', NULL, '{}', '[]', '2023-08-22 22:43:38.057000', '2023-08-22 22:43:38.057000', NULL, NULL),
(54, 'admin::roles.update', NULL, '{}', '[]', '2023-08-22 22:43:38.065000', '2023-08-22 22:43:38.065000', NULL, NULL),
(55, 'admin::roles.delete', NULL, '{}', '[]', '2023-08-22 22:43:38.070000', '2023-08-22 22:43:38.070000', NULL, NULL),
(56, 'admin::api-tokens.access', NULL, '{}', '[]', '2023-08-22 22:43:38.074000', '2023-08-22 22:43:38.074000', NULL, NULL),
(57, 'admin::api-tokens.create', NULL, '{}', '[]', '2023-08-22 22:43:38.077000', '2023-08-22 22:43:38.077000', NULL, NULL),
(58, 'admin::api-tokens.read', NULL, '{}', '[]', '2023-08-22 22:43:38.080000', '2023-08-22 22:43:38.080000', NULL, NULL),
(59, 'admin::api-tokens.update', NULL, '{}', '[]', '2023-08-22 22:43:38.083000', '2023-08-22 22:43:38.083000', NULL, NULL),
(60, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2023-08-22 22:43:38.087000', '2023-08-22 22:43:38.087000', NULL, NULL),
(61, 'admin::api-tokens.delete', NULL, '{}', '[]', '2023-08-22 22:43:38.090000', '2023-08-22 22:43:38.090000', NULL, NULL),
(62, 'admin::project-settings.update', NULL, '{}', '[]', '2023-08-22 22:43:38.093000', '2023-08-22 22:43:38.093000', NULL, NULL),
(63, 'admin::project-settings.read', NULL, '{}', '[]', '2023-08-22 22:43:38.097000', '2023-08-22 22:43:38.097000', NULL, NULL),
(64, 'admin::transfer.tokens.access', NULL, '{}', '[]', '2023-08-22 22:43:38.102000', '2023-08-22 22:43:38.102000', NULL, NULL),
(65, 'admin::transfer.tokens.create', NULL, '{}', '[]', '2023-08-22 22:43:38.105000', '2023-08-22 22:43:38.105000', NULL, NULL),
(66, 'admin::transfer.tokens.read', NULL, '{}', '[]', '2023-08-22 22:43:38.108000', '2023-08-22 22:43:38.108000', NULL, NULL),
(67, 'admin::transfer.tokens.update', NULL, '{}', '[]', '2023-08-22 22:43:38.112000', '2023-08-22 22:43:38.112000', NULL, NULL),
(68, 'admin::transfer.tokens.regenerate', NULL, '{}', '[]', '2023-08-22 22:43:38.116000', '2023-08-22 22:43:38.116000', NULL, NULL),
(69, 'admin::transfer.tokens.delete', NULL, '{}', '[]', '2023-08-22 22:43:38.120000', '2023-08-22 22:43:38.120000', NULL, NULL),
(70, 'plugin::config-sync.settings.read', NULL, '{}', '[]', '2023-08-22 23:28:00.684000', '2023-08-22 23:28:00.684000', NULL, NULL),
(71, 'plugin::config-sync.menu-link', NULL, '{}', '[]', '2023-08-22 23:28:00.895000', '2023-08-22 23:28:00.895000', NULL, NULL),
(75, 'plugin::content-manager.explorer.create', 'api::tag.tag', '{\"fields\": [\"tag_name\", \"portfolios\"]}', '[]', '2023-08-23 16:53:58.181000', '2023-08-23 16:53:58.181000', NULL, NULL),
(79, 'plugin::content-manager.explorer.read', 'api::tag.tag', '{\"fields\": [\"tag_name\", \"portfolios\"]}', '[]', '2023-08-23 16:53:59.063000', '2023-08-23 16:53:59.063000', NULL, NULL),
(83, 'plugin::content-manager.explorer.update', 'api::tag.tag', '{\"fields\": [\"tag_name\", \"portfolios\"]}', '[]', '2023-08-23 16:53:59.991000', '2023-08-23 16:53:59.991000', NULL, NULL),
(85, 'plugin::content-manager.explorer.delete', 'api::portfolio.portfolio', '{}', '[]', '2023-08-23 16:54:00.431000', '2023-08-23 16:54:00.431000', NULL, NULL),
(87, 'plugin::content-manager.explorer.delete', 'api::tag.tag', '{}', '[]', '2023-08-23 16:54:00.877000', '2023-08-23 16:54:00.877000', NULL, NULL),
(89, 'plugin::content-manager.explorer.publish', 'api::portfolio.portfolio', '{}', '[]', '2023-08-23 16:54:01.290000', '2023-08-23 16:54:01.290000', NULL, NULL),
(91, 'plugin::content-manager.explorer.publish', 'api::tag.tag', '{}', '[]', '2023-08-23 16:54:01.707000', '2023-08-23 16:54:01.707000', NULL, NULL),
(92, 'plugin::documentation.read', NULL, '{}', '[]', '2023-08-23 18:07:01.452000', '2023-08-23 18:07:01.452000', NULL, NULL),
(93, 'plugin::documentation.settings.update', NULL, '{}', '[]', '2023-08-23 18:07:01.682000', '2023-08-23 18:07:01.682000', NULL, NULL),
(94, 'plugin::documentation.settings.regenerate', NULL, '{}', '[]', '2023-08-23 18:07:01.902000', '2023-08-23 18:07:01.902000', NULL, NULL),
(95, 'plugin::documentation.settings.read', NULL, '{}', '[]', '2023-08-23 18:07:02.148000', '2023-08-23 18:07:02.148000', NULL, NULL),
(96, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2023-08-23 18:09:57.963000', '2023-08-23 18:09:57.963000', NULL, NULL),
(97, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2023-08-23 18:09:58.239000', '2023-08-23 18:09:58.239000', NULL, NULL),
(98, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2023-08-23 18:09:58.462000', '2023-08-23 18:09:58.462000', NULL, NULL),
(99, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2023-08-23 18:09:58.686000', '2023-08-23 18:09:58.686000', NULL, NULL),
(108, 'plugin::content-manager.explorer.delete', 'api::portfolio.portfolio', '{}', '[]', '2023-08-23 18:10:00.743000', '2023-08-23 18:10:00.743000', NULL, NULL),
(109, 'plugin::content-manager.explorer.publish', 'api::portfolio.portfolio', '{}', '[]', '2023-08-23 18:10:01.017000', '2023-08-23 18:10:01.017000', NULL, NULL),
(115, 'plugin::content-manager.explorer.create', 'api::tag.tag', '{\"fields\": [\"tag_name\", \"portfolios\"]}', '[]', '2023-08-23 18:10:02.382000', '2023-08-23 18:10:02.382000', NULL, NULL),
(116, 'plugin::content-manager.explorer.read', 'api::tag.tag', '{\"fields\": [\"tag_name\", \"portfolios\"]}', '[]', '2023-08-23 18:10:02.596000', '2023-08-23 18:10:02.596000', NULL, NULL),
(117, 'plugin::content-manager.explorer.update', 'api::tag.tag', '{\"fields\": [\"tag_name\", \"portfolios\"]}', '[]', '2023-08-23 18:10:02.810000', '2023-08-23 18:10:02.810000', NULL, NULL),
(118, 'plugin::content-manager.explorer.delete', 'api::tag.tag', '{}', '[]', '2023-08-23 18:10:03.024000', '2023-08-23 18:10:03.024000', NULL, NULL),
(119, 'plugin::content-manager.explorer.publish', 'api::tag.tag', '{}', '[]', '2023-08-23 18:10:03.253000', '2023-08-23 18:10:03.253000', NULL, NULL),
(120, 'admin::webhooks.create', NULL, '{}', '[]', '2023-08-24 18:48:41.063000', '2023-08-24 18:48:41.063000', NULL, NULL),
(121, 'admin::webhooks.read', NULL, '{}', '[]', '2023-08-24 18:48:41.071000', '2023-08-24 18:48:41.071000', NULL, NULL),
(122, 'admin::webhooks.update', NULL, '{}', '[]', '2023-08-24 18:48:41.074000', '2023-08-24 18:48:41.074000', NULL, NULL),
(123, 'admin::webhooks.delete', NULL, '{}', '[]', '2023-08-24 18:48:41.079000', '2023-08-24 18:48:41.079000', NULL, NULL),
(124, 'admin::project-settings.update', NULL, '{}', '[]', '2023-08-24 18:48:41.083000', '2023-08-24 18:48:41.083000', NULL, NULL),
(125, 'admin::project-settings.read', NULL, '{}', '[]', '2023-08-24 18:48:41.087000', '2023-08-24 18:48:41.087000', NULL, NULL),
(132, 'plugin::content-manager.explorer.create', 'api::portfolio.portfolio', '{\"fields\": [\"title\", \"miniatura\", \"opis\", \"subtitle\", \"kategoria\", \"tags\", \"slug\", \"content\", \"Laptop_Tablet_Mobile\"]}', '[]', '2023-08-25 15:30:35.284000', '2023-08-25 15:30:35.284000', NULL, NULL),
(133, 'plugin::content-manager.explorer.read', 'api::portfolio.portfolio', '{\"fields\": [\"title\", \"miniatura\", \"opis\", \"subtitle\", \"kategoria\", \"tags\", \"slug\", \"content\", \"Laptop_Tablet_Mobile\"]}', '[]', '2023-08-25 15:30:35.528000', '2023-08-25 15:30:35.528000', NULL, NULL),
(134, 'plugin::content-manager.explorer.update', 'api::portfolio.portfolio', '{\"fields\": [\"title\", \"miniatura\", \"opis\", \"subtitle\", \"kategoria\", \"tags\", \"slug\", \"content\", \"Laptop_Tablet_Mobile\"]}', '[]', '2023-08-25 15:30:35.759000', '2023-08-25 15:30:35.759000', NULL, NULL),
(135, 'plugin::content-manager.explorer.create', 'api::portfolio.portfolio', '{\"fields\": [\"title\", \"miniatura\", \"opis\", \"subtitle\", \"kategoria\", \"tags\", \"slug\", \"content\", \"Laptop_Tablet_Mobile\"]}', '[]', '2023-08-25 17:17:18.305000', '2023-08-25 17:17:18.305000', NULL, NULL),
(136, 'plugin::content-manager.explorer.read', 'api::portfolio.portfolio', '{\"fields\": [\"title\", \"miniatura\", \"opis\", \"subtitle\", \"kategoria\", \"tags\", \"slug\", \"content\", \"Laptop_Tablet_Mobile\"]}', '[]', '2023-08-25 17:17:18.309000', '2023-08-25 17:17:18.309000', NULL, NULL),
(137, 'plugin::content-manager.explorer.update', 'api::portfolio.portfolio', '{\"fields\": [\"title\", \"miniatura\", \"opis\", \"subtitle\", \"kategoria\", \"tags\", \"slug\", \"content\", \"Laptop_Tablet_Mobile\"]}', '[]', '2023-08-25 17:17:18.312000', '2023-08-25 17:17:18.312000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(13, 13, 1, 1),
(14, 14, 1, 2),
(15, 15, 1, 3),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(70, 70, 1, 58),
(71, 71, 1, 59),
(75, 75, 1, 63),
(79, 79, 1, 67),
(83, 83, 1, 71),
(85, 85, 1, 73),
(87, 87, 1, 75),
(89, 89, 1, 77),
(91, 91, 1, 79),
(92, 92, 1, 80),
(93, 93, 1, 81),
(94, 94, 1, 82),
(95, 95, 1, 83),
(96, 96, 4, 1),
(97, 97, 4, 2),
(98, 98, 4, 3),
(99, 99, 4, 4),
(108, 108, 4, 13),
(109, 109, 4, 14),
(115, 115, 4, 20),
(116, 116, 4, 21),
(117, 117, 4, 22),
(118, 118, 4, 23),
(119, 119, 4, 24),
(120, 120, 4, 25),
(121, 121, 4, 26),
(122, 122, 4, 27),
(123, 123, 4, 28),
(124, 124, 4, 29),
(125, 125, 4, 30),
(132, 132, 1, 84),
(133, 133, 1, 85),
(134, 134, 1, 86),
(135, 135, 4, 31),
(136, 136, 4, 32),
(137, 137, 4, 33);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-08-22 22:43:37.767000', '2023-08-22 22:43:37.767000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-08-22 22:43:37.777000', '2023-08-22 22:43:37.777000', NULL, NULL),
(4, 'Public', 'public-llnxkutj', 'Created August 23rd, 2023', '2023-08-23 18:09:57.511000', '2023-08-25 18:25:30.856000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Zbigniew', 'Karski', NULL, 'zbigniew.karski@gmail.com', '$2a$10$zd9FmQBwjpOIGWkLFmBw4.VvzJ/zOraxszG1U69cGri3QwCkxC9Sa', NULL, NULL, 1, 0, NULL, '2023-08-22 22:56:53.093000', '2023-08-23 18:10:32.248000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 4, 2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `files`
--

CREATE TABLE `files` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(2, 'e46 moduły touring.jpeg', NULL, NULL, 800, 602, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_e46_moduly_touring_13d8edcdc0.jpeg\", \"hash\": \"small_e46_moduly_touring_13d8edcdc0\", \"mime\": \"image/jpeg\", \"name\": \"small_e46 moduły touring.jpeg\", \"path\": null, \"size\": 49.2, \"width\": 500, \"height\": 376}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_e46_moduly_touring_13d8edcdc0.jpeg\", \"hash\": \"medium_e46_moduly_touring_13d8edcdc0\", \"mime\": \"image/jpeg\", \"name\": \"medium_e46 moduły touring.jpeg\", \"path\": null, \"size\": 92.39, \"width\": 750, \"height\": 564}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_e46_moduly_touring_13d8edcdc0.jpeg\", \"hash\": \"thumbnail_e46_moduly_touring_13d8edcdc0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_e46 moduły touring.jpeg\", \"path\": null, \"size\": 10.82, \"width\": 207, \"height\": 156}}', 'e46_moduly_touring_13d8edcdc0', '.jpeg', 'image/jpeg', 95.20, '/uploads/e46_moduly_touring_13d8edcdc0.jpeg', NULL, 'local', NULL, '/', '2023-08-23 20:26:32.583000', '2023-08-23 20:26:32.583000', 1, 1),
(3, 'As_Printers_67222a6558.jpg', NULL, NULL, 1314, 1710, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_As_Printers_67222a6558_95bc80531b.jpg\", \"hash\": \"large_As_Printers_67222a6558_95bc80531b\", \"mime\": \"image/jpeg\", \"name\": \"large_As_Printers_67222a6558.jpg\", \"path\": null, \"size\": 23.69, \"width\": 768, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_As_Printers_67222a6558_95bc80531b.jpg\", \"hash\": \"small_As_Printers_67222a6558_95bc80531b\", \"mime\": \"image/jpeg\", \"name\": \"small_As_Printers_67222a6558.jpg\", \"path\": null, \"size\": 9.29, \"width\": 384, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_As_Printers_67222a6558_95bc80531b.jpg\", \"hash\": \"medium_As_Printers_67222a6558_95bc80531b\", \"mime\": \"image/jpeg\", \"name\": \"medium_As_Printers_67222a6558.jpg\", \"path\": null, \"size\": 16.15, \"width\": 576, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_As_Printers_67222a6558_95bc80531b.jpg\", \"hash\": \"thumbnail_As_Printers_67222a6558_95bc80531b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_As_Printers_67222a6558.jpg\", \"path\": null, \"size\": 2.04, \"width\": 120, \"height\": 156}}', 'As_Printers_67222a6558_95bc80531b', '.jpg', 'image/jpeg', 46.53, '/uploads/As_Printers_67222a6558_95bc80531b.jpg', NULL, 'local', NULL, '/', '2023-08-23 20:28:26.871000', '2023-08-23 20:28:26.871000', 1, 1),
(4, 'aronia_0c492bb2af.jpg', NULL, NULL, 428, 449, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_aronia_0c492bb2af_b2d0893dd3.jpg\", \"hash\": \"thumbnail_aronia_0c492bb2af_b2d0893dd3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_aronia_0c492bb2af.jpg\", \"path\": null, \"size\": 8.78, \"width\": 149, \"height\": 156}}', 'aronia_0c492bb2af_b2d0893dd3', '.jpg', 'image/jpeg', 44.38, '/uploads/aronia_0c492bb2af_b2d0893dd3.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:02.992000', '2023-08-23 21:42:02.992000', 1, 1),
(5, 'aronia_361bbd5121.jpg', NULL, NULL, 500, 771, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_aronia_361bbd5121_cc162d2f12.jpg\", \"hash\": \"small_aronia_361bbd5121_cc162d2f12\", \"mime\": \"image/jpeg\", \"name\": \"small_aronia_361bbd5121.jpg\", \"path\": null, \"size\": 45.47, \"width\": 324, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_aronia_361bbd5121_cc162d2f12.jpg\", \"hash\": \"medium_aronia_361bbd5121_cc162d2f12\", \"mime\": \"image/jpeg\", \"name\": \"medium_aronia_361bbd5121.jpg\", \"path\": null, \"size\": 84.51, \"width\": 486, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_aronia_361bbd5121_cc162d2f12.jpg\", \"hash\": \"thumbnail_aronia_361bbd5121_cc162d2f12\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_aronia_361bbd5121.jpg\", \"path\": null, \"size\": 6.53, \"width\": 101, \"height\": 156}}', 'aronia_361bbd5121_cc162d2f12', '.jpg', 'image/jpeg', 74.63, '/uploads/aronia_361bbd5121_cc162d2f12.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:03.144000', '2023-08-23 21:42:03.144000', 1, 1),
(6, 'b2r_3089756b81.jpeg', NULL, NULL, 1287, 797, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_b2r_3089756b81_040280b350.jpeg\", \"hash\": \"large_b2r_3089756b81_040280b350\", \"mime\": \"image/jpeg\", \"name\": \"large_b2r_3089756b81.jpeg\", \"path\": null, \"size\": 70.99, \"width\": 1000, \"height\": 619}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_b2r_3089756b81_040280b350.jpeg\", \"hash\": \"small_b2r_3089756b81_040280b350\", \"mime\": \"image/jpeg\", \"name\": \"small_b2r_3089756b81.jpeg\", \"path\": null, \"size\": 24.27, \"width\": 500, \"height\": 310}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_b2r_3089756b81_040280b350.jpeg\", \"hash\": \"medium_b2r_3089756b81_040280b350\", \"mime\": \"image/jpeg\", \"name\": \"medium_b2r_3089756b81.jpeg\", \"path\": null, \"size\": 45.1, \"width\": 750, \"height\": 464}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_b2r_3089756b81_040280b350.jpeg\", \"hash\": \"thumbnail_b2r_3089756b81_040280b350\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_b2r_3089756b81.jpeg\", \"path\": null, \"size\": 7.53, \"width\": 245, \"height\": 152}}', 'b2r_3089756b81_040280b350', '.jpeg', 'image/jpeg', 105.08, '/uploads/b2r_3089756b81_040280b350.jpeg', NULL, 'local', NULL, '/', '2023-08-23 21:42:03.300000', '2023-08-23 21:42:48.630000', 1, 1),
(7, 'b2r2_1024x747_3997b9d117.jpeg', NULL, NULL, 1024, 747, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_b2r2_1024x747_3997b9d117_7c11d80676.jpeg\", \"hash\": \"large_b2r2_1024x747_3997b9d117_7c11d80676\", \"mime\": \"image/jpeg\", \"name\": \"large_b2r2_1024x747_3997b9d117.jpeg\", \"path\": null, \"size\": 144.07, \"width\": 1000, \"height\": 729}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_b2r2_1024x747_3997b9d117_7c11d80676.jpeg\", \"hash\": \"small_b2r2_1024x747_3997b9d117_7c11d80676\", \"mime\": \"image/jpeg\", \"name\": \"small_b2r2_1024x747_3997b9d117.jpeg\", \"path\": null, \"size\": 44.25, \"width\": 500, \"height\": 365}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_b2r2_1024x747_3997b9d117_7c11d80676.jpeg\", \"hash\": \"medium_b2r2_1024x747_3997b9d117_7c11d80676\", \"mime\": \"image/jpeg\", \"name\": \"medium_b2r2_1024x747_3997b9d117.jpeg\", \"path\": null, \"size\": 90.34, \"width\": 750, \"height\": 547}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_b2r2_1024x747_3997b9d117_7c11d80676.jpeg\", \"hash\": \"thumbnail_b2r2_1024x747_3997b9d117_7c11d80676\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_b2r2_1024x747_3997b9d117.jpeg\", \"path\": null, \"size\": 9.45, \"width\": 214, \"height\": 156}}', 'b2r2_1024x747_3997b9d117_7c11d80676', '.jpeg', 'image/jpeg', 150.37, '/uploads/b2r2_1024x747_3997b9d117_7c11d80676.jpeg', NULL, 'local', NULL, '/', '2023-08-23 21:42:03.321000', '2023-08-23 21:42:03.321000', 1, 1),
(8, 'autawieliczka_1703254cd8.png', NULL, NULL, 1067, 894, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_autawieliczka_1703254cd8_286b772303.png\", \"hash\": \"large_autawieliczka_1703254cd8_286b772303\", \"mime\": \"image/png\", \"name\": \"large_autawieliczka_1703254cd8.png\", \"path\": null, \"size\": 587.4, \"width\": 1000, \"height\": 838}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_autawieliczka_1703254cd8_286b772303.png\", \"hash\": \"small_autawieliczka_1703254cd8_286b772303\", \"mime\": \"image/png\", \"name\": \"small_autawieliczka_1703254cd8.png\", \"path\": null, \"size\": 162.36, \"width\": 500, \"height\": 419}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_autawieliczka_1703254cd8_286b772303.png\", \"hash\": \"medium_autawieliczka_1703254cd8_286b772303\", \"mime\": \"image/png\", \"name\": \"medium_autawieliczka_1703254cd8.png\", \"path\": null, \"size\": 344.17, \"width\": 750, \"height\": 628}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_autawieliczka_1703254cd8_286b772303.png\", \"hash\": \"thumbnail_autawieliczka_1703254cd8_286b772303\", \"mime\": \"image/png\", \"name\": \"thumbnail_autawieliczka_1703254cd8.png\", \"path\": null, \"size\": 29.77, \"width\": 186, \"height\": 156}}', 'autawieliczka_1703254cd8_286b772303', '.png', 'image/png', 119.78, '/uploads/autawieliczka_1703254cd8_286b772303.png', NULL, 'local', NULL, '/', '2023-08-23 21:42:03.854000', '2023-08-23 21:42:03.854000', 1, 1),
(9, 'autawieliczka2_9e1cefd4cd.png', NULL, NULL, 1024, 873, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_autawieliczka2_9e1cefd4cd_0f2fccb181.png\", \"hash\": \"large_autawieliczka2_9e1cefd4cd_0f2fccb181\", \"mime\": \"image/png\", \"name\": \"large_autawieliczka2_9e1cefd4cd.png\", \"path\": null, \"size\": 642.39, \"width\": 1000, \"height\": 853}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_autawieliczka2_9e1cefd4cd_0f2fccb181.png\", \"hash\": \"small_autawieliczka2_9e1cefd4cd_0f2fccb181\", \"mime\": \"image/png\", \"name\": \"small_autawieliczka2_9e1cefd4cd.png\", \"path\": null, \"size\": 183.3, \"width\": 500, \"height\": 426}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_autawieliczka2_9e1cefd4cd_0f2fccb181.png\", \"hash\": \"medium_autawieliczka2_9e1cefd4cd_0f2fccb181\", \"mime\": \"image/png\", \"name\": \"medium_autawieliczka2_9e1cefd4cd.png\", \"path\": null, \"size\": 393.97, \"width\": 750, \"height\": 639}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_autawieliczka2_9e1cefd4cd_0f2fccb181.png\", \"hash\": \"thumbnail_autawieliczka2_9e1cefd4cd_0f2fccb181\", \"mime\": \"image/png\", \"name\": \"thumbnail_autawieliczka2_9e1cefd4cd.png\", \"path\": null, \"size\": 33.35, \"width\": 183, \"height\": 156}}', 'autawieliczka2_9e1cefd4cd_0f2fccb181', '.png', 'image/png', 154.81, '/uploads/autawieliczka2_9e1cefd4cd_0f2fccb181.png', NULL, 'local', NULL, '/', '2023-08-23 21:42:04.424000', '2023-08-23 21:42:04.424000', 1, 1),
(10, 'back2roots_1_strapchair_36c4e70a33.jpg', NULL, NULL, 1879, 1070, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_back2roots_1_strapchair_36c4e70a33_0416dec4b6.jpg\", \"hash\": \"large_back2roots_1_strapchair_36c4e70a33_0416dec4b6\", \"mime\": \"image/jpeg\", \"name\": \"large_back2roots_1_strapchair_36c4e70a33.jpg\", \"path\": null, \"size\": 88.66, \"width\": 1000, \"height\": 569}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_back2roots_1_strapchair_36c4e70a33_0416dec4b6.jpg\", \"hash\": \"small_back2roots_1_strapchair_36c4e70a33_0416dec4b6\", \"mime\": \"image/jpeg\", \"name\": \"small_back2roots_1_strapchair_36c4e70a33.jpg\", \"path\": null, \"size\": 24.84, \"width\": 500, \"height\": 285}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_back2roots_1_strapchair_36c4e70a33_0416dec4b6.jpg\", \"hash\": \"medium_back2roots_1_strapchair_36c4e70a33_0416dec4b6\", \"mime\": \"image/jpeg\", \"name\": \"medium_back2roots_1_strapchair_36c4e70a33.jpg\", \"path\": null, \"size\": 53.16, \"width\": 750, \"height\": 427}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_back2roots_1_strapchair_36c4e70a33_0416dec4b6.jpg\", \"hash\": \"thumbnail_back2roots_1_strapchair_36c4e70a33_0416dec4b6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_back2roots_1_strapchair_36c4e70a33.jpg\", \"path\": null, \"size\": 6.71, \"width\": 245, \"height\": 139}}', 'back2roots_1_strapchair_36c4e70a33_0416dec4b6', '.jpg', 'image/jpeg', 250.23, '/uploads/back2roots_1_strapchair_36c4e70a33_0416dec4b6.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:04.722000', '2023-08-23 21:42:04.722000', 1, 1),
(11, 'back2roots_bolt_table_4046be5b15.jpg', NULL, NULL, 1879, 1070, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_back2roots_bolt_table_4046be5b15_dd5850a512.jpg\", \"hash\": \"large_back2roots_bolt_table_4046be5b15_dd5850a512\", \"mime\": \"image/jpeg\", \"name\": \"large_back2roots_bolt_table_4046be5b15.jpg\", \"path\": null, \"size\": 79.4, \"width\": 1000, \"height\": 569}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_back2roots_bolt_table_4046be5b15_dd5850a512.jpg\", \"hash\": \"small_back2roots_bolt_table_4046be5b15_dd5850a512\", \"mime\": \"image/jpeg\", \"name\": \"small_back2roots_bolt_table_4046be5b15.jpg\", \"path\": null, \"size\": 24.05, \"width\": 500, \"height\": 285}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_back2roots_bolt_table_4046be5b15_dd5850a512.jpg\", \"hash\": \"medium_back2roots_bolt_table_4046be5b15_dd5850a512\", \"mime\": \"image/jpeg\", \"name\": \"medium_back2roots_bolt_table_4046be5b15.jpg\", \"path\": null, \"size\": 48.35, \"width\": 750, \"height\": 427}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_back2roots_bolt_table_4046be5b15_dd5850a512.jpg\", \"hash\": \"thumbnail_back2roots_bolt_table_4046be5b15_dd5850a512\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_back2roots_bolt_table_4046be5b15.jpg\", \"path\": null, \"size\": 7.37, \"width\": 245, \"height\": 139}}', 'back2roots_bolt_table_4046be5b15_dd5850a512', '.jpg', 'image/jpeg', 228.97, '/uploads/back2roots_bolt_table_4046be5b15_dd5850a512.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:05.054000', '2023-08-23 21:42:05.054000', 1, 1),
(12, 'back2roots_strapchair_083e5ede85.jpg', NULL, NULL, 1879, 1070, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_back2roots_strapchair_083e5ede85_2e59b5b2ac.jpg\", \"hash\": \"large_back2roots_strapchair_083e5ede85_2e59b5b2ac\", \"mime\": \"image/jpeg\", \"name\": \"large_back2roots_strapchair_083e5ede85.jpg\", \"path\": null, \"size\": 61.83, \"width\": 1000, \"height\": 569}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_back2roots_strapchair_083e5ede85_2e59b5b2ac.jpg\", \"hash\": \"small_back2roots_strapchair_083e5ede85_2e59b5b2ac\", \"mime\": \"image/jpeg\", \"name\": \"small_back2roots_strapchair_083e5ede85.jpg\", \"path\": null, \"size\": 20.16, \"width\": 500, \"height\": 285}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_back2roots_strapchair_083e5ede85_2e59b5b2ac.jpg\", \"hash\": \"medium_back2roots_strapchair_083e5ede85_2e59b5b2ac\", \"mime\": \"image/jpeg\", \"name\": \"medium_back2roots_strapchair_083e5ede85.jpg\", \"path\": null, \"size\": 39.18, \"width\": 750, \"height\": 427}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_back2roots_strapchair_083e5ede85_2e59b5b2ac.jpg\", \"hash\": \"thumbnail_back2roots_strapchair_083e5ede85_2e59b5b2ac\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_back2roots_strapchair_083e5ede85.jpg\", \"path\": null, \"size\": 6.41, \"width\": 245, \"height\": 139}}', 'back2roots_strapchair_083e5ede85_2e59b5b2ac', '.jpg', 'image/jpeg', 161.39, '/uploads/back2roots_strapchair_083e5ede85_2e59b5b2ac.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:05.665000', '2023-08-23 21:42:05.665000', 1, 1),
(13, 'back2roots_strapchair_19_02_42_a9bf027738.jpg', NULL, NULL, 1879, 1080, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_back2roots_strapchair_19_02_42_a9bf027738_948daed310.jpg\", \"hash\": \"large_back2roots_strapchair_19_02_42_a9bf027738_948daed310\", \"mime\": \"image/jpeg\", \"name\": \"large_back2roots_strapchair_19_02_42_a9bf027738.jpg\", \"path\": null, \"size\": 86.56, \"width\": 1000, \"height\": 575}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_back2roots_strapchair_19_02_42_a9bf027738_948daed310.jpg\", \"hash\": \"small_back2roots_strapchair_19_02_42_a9bf027738_948daed310\", \"mime\": \"image/jpeg\", \"name\": \"small_back2roots_strapchair_19_02_42_a9bf027738.jpg\", \"path\": null, \"size\": 25.21, \"width\": 500, \"height\": 288}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_back2roots_strapchair_19_02_42_a9bf027738_948daed310.jpg\", \"hash\": \"medium_back2roots_strapchair_19_02_42_a9bf027738_948daed310\", \"mime\": \"image/jpeg\", \"name\": \"medium_back2roots_strapchair_19_02_42_a9bf027738.jpg\", \"path\": null, \"size\": 52.56, \"width\": 750, \"height\": 431}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_back2roots_strapchair_19_02_42_a9bf027738_948daed310.jpg\", \"hash\": \"thumbnail_back2roots_strapchair_19_02_42_a9bf027738_948daed310\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_back2roots_strapchair_19_02_42_a9bf027738.jpg\", \"path\": null, \"size\": 7.06, \"width\": 245, \"height\": 141}}', 'back2roots_strapchair_19_02_42_a9bf027738_948daed310', '.jpg', 'image/jpeg', 238.52, '/uploads/back2roots_strapchair_19_02_42_a9bf027738_948daed310.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:05.638000', '2023-08-23 21:42:05.638000', 1, 1),
(14, 'back2roots_bolt_table_de89661339.jpg', NULL, NULL, 1879, 1070, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_back2roots_bolt_table_de89661339_46630ec7cd.jpg\", \"hash\": \"large_back2roots_bolt_table_de89661339_46630ec7cd\", \"mime\": \"image/jpeg\", \"name\": \"large_back2roots_bolt_table_de89661339.jpg\", \"path\": null, \"size\": 111.61, \"width\": 1000, \"height\": 569}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_back2roots_bolt_table_de89661339_46630ec7cd.jpg\", \"hash\": \"small_back2roots_bolt_table_de89661339_46630ec7cd\", \"mime\": \"image/jpeg\", \"name\": \"small_back2roots_bolt_table_de89661339.jpg\", \"path\": null, \"size\": 30.9, \"width\": 500, \"height\": 285}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_back2roots_bolt_table_de89661339_46630ec7cd.jpg\", \"hash\": \"medium_back2roots_bolt_table_de89661339_46630ec7cd\", \"mime\": \"image/jpeg\", \"name\": \"medium_back2roots_bolt_table_de89661339.jpg\", \"path\": null, \"size\": 66.08, \"width\": 750, \"height\": 427}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_back2roots_bolt_table_de89661339_46630ec7cd.jpg\", \"hash\": \"thumbnail_back2roots_bolt_table_de89661339_46630ec7cd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_back2roots_bolt_table_de89661339.jpg\", \"path\": null, \"size\": 8.5, \"width\": 245, \"height\": 139}}', 'back2roots_bolt_table_de89661339_46630ec7cd', '.jpg', 'image/jpeg', 322.01, '/uploads/back2roots_bolt_table_de89661339_46630ec7cd.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:05.660000', '2023-08-23 21:42:05.660000', 1, 1),
(15, 'banner_140x380_902c957ee5.jpg', NULL, NULL, 1200, 442, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_banner_140x380_902c957ee5_2d81218b52.jpg\", \"hash\": \"large_banner_140x380_902c957ee5_2d81218b52\", \"mime\": \"image/jpeg\", \"name\": \"large_banner_140x380_902c957ee5.jpg\", \"path\": null, \"size\": 88.16, \"width\": 1000, \"height\": 368}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_banner_140x380_902c957ee5_2d81218b52.jpg\", \"hash\": \"small_banner_140x380_902c957ee5_2d81218b52\", \"mime\": \"image/jpeg\", \"name\": \"small_banner_140x380_902c957ee5.jpg\", \"path\": null, \"size\": 29.87, \"width\": 500, \"height\": 184}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_banner_140x380_902c957ee5_2d81218b52.jpg\", \"hash\": \"medium_banner_140x380_902c957ee5_2d81218b52\", \"mime\": \"image/jpeg\", \"name\": \"medium_banner_140x380_902c957ee5.jpg\", \"path\": null, \"size\": 57.93, \"width\": 750, \"height\": 276}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_banner_140x380_902c957ee5_2d81218b52.jpg\", \"hash\": \"thumbnail_banner_140x380_902c957ee5_2d81218b52\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_banner_140x380_902c957ee5.jpg\", \"path\": null, \"size\": 9.27, \"width\": 245, \"height\": 90}}', 'banner_140x380_902c957ee5_2d81218b52', '.jpg', 'image/jpeg', 112.34, '/uploads/banner_140x380_902c957ee5_2d81218b52.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:05.860000', '2023-08-23 21:42:05.860000', 1, 1),
(16, 'benica_logo_cbb0df8698.jpg', NULL, NULL, 800, 804, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_benica_logo_cbb0df8698_5e67e1912a.jpg\", \"hash\": \"small_benica_logo_cbb0df8698_5e67e1912a\", \"mime\": \"image/jpeg\", \"name\": \"small_benica_logo_cbb0df8698.jpg\", \"path\": null, \"size\": 40.53, \"width\": 498, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_benica_logo_cbb0df8698_5e67e1912a.jpg\", \"hash\": \"medium_benica_logo_cbb0df8698_5e67e1912a\", \"mime\": \"image/jpeg\", \"name\": \"medium_benica_logo_cbb0df8698.jpg\", \"path\": null, \"size\": 68.27, \"width\": 746, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_benica_logo_cbb0df8698_5e67e1912a.jpg\", \"hash\": \"thumbnail_benica_logo_cbb0df8698_5e67e1912a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_benica_logo_cbb0df8698.jpg\", \"path\": null, \"size\": 7.05, \"width\": 155, \"height\": 156}}', 'benica_logo_cbb0df8698_5e67e1912a', '.jpg', 'image/jpeg', 69.69, '/uploads/benica_logo_cbb0df8698_5e67e1912a.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:06.064000', '2023-08-23 21:58:00.389000', 1, 1),
(17, 'Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68.jpg', NULL, NULL, 1773, 1141, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68_36e855081d.jpg\", \"hash\": \"large_Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68_36e855081d\", \"mime\": \"image/jpeg\", \"name\": \"large_Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68.jpg\", \"path\": null, \"size\": 81.74, \"width\": 1000, \"height\": 644}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68_36e855081d.jpg\", \"hash\": \"small_Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68_36e855081d\", \"mime\": \"image/jpeg\", \"name\": \"small_Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68.jpg\", \"path\": null, \"size\": 24.03, \"width\": 500, \"height\": 322}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68_36e855081d.jpg\", \"hash\": \"medium_Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68_36e855081d\", \"mime\": \"image/jpeg\", \"name\": \"medium_Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68.jpg\", \"path\": null, \"size\": 49.39, \"width\": 750, \"height\": 483}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68_36e855081d.jpg\", \"hash\": \"thumbnail_Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68_36e855081d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68.jpg\", \"path\": null, \"size\": 7, \"width\": 242, \"height\": 156}}', 'Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68_36e855081d', '.jpg', 'image/jpeg', 197.80, '/uploads/Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68_36e855081d.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:06.513000', '2023-08-23 21:42:06.513000', 1, 1),
(18, 'bil_elementy_433fd05886.jpeg', NULL, NULL, 280, 679, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_bil_elementy_433fd05886_fbdcca9da6.jpeg\", \"hash\": \"small_bil_elementy_433fd05886_fbdcca9da6\", \"mime\": \"image/jpeg\", \"name\": \"small_bil_elementy_433fd05886.jpeg\", \"path\": null, \"size\": 18.77, \"width\": 206, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_bil_elementy_433fd05886_fbdcca9da6.jpeg\", \"hash\": \"thumbnail_bil_elementy_433fd05886_fbdcca9da6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bil_elementy_433fd05886.jpeg\", \"path\": null, \"size\": 2.97, \"width\": 64, \"height\": 156}}', 'bil_elementy_433fd05886_fbdcca9da6', '.jpeg', 'image/jpeg', 28.42, '/uploads/bil_elementy_433fd05886_fbdcca9da6.jpeg', NULL, 'local', NULL, '/', '2023-08-23 21:42:06.648000', '2023-08-23 21:42:06.648000', 1, 1),
(19, 'Bil_beskidzka_izba_lekarska_19_32_54_4c8ee0c65e.jpg', NULL, NULL, 362, 681, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Bil_beskidzka_izba_lekarska_19_32_54_4c8ee0c65e_1ff78b2a0f.jpg\", \"hash\": \"small_Bil_beskidzka_izba_lekarska_19_32_54_4c8ee0c65e_1ff78b2a0f\", \"mime\": \"image/jpeg\", \"name\": \"small_Bil_beskidzka_izba_lekarska_19_32_54_4c8ee0c65e.jpg\", \"path\": null, \"size\": 19.58, \"width\": 266, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Bil_beskidzka_izba_lekarska_19_32_54_4c8ee0c65e_1ff78b2a0f.jpg\", \"hash\": \"thumbnail_Bil_beskidzka_izba_lekarska_19_32_54_4c8ee0c65e_1ff78b2a0f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Bil_beskidzka_izba_lekarska_19_32_54_4c8ee0c65e.jpg\", \"path\": null, \"size\": 3.02, \"width\": 83, \"height\": 156}}', 'Bil_beskidzka_izba_lekarska_19_32_54_4c8ee0c65e_1ff78b2a0f', '.jpg', 'image/jpeg', 28.25, '/uploads/Bil_beskidzka_izba_lekarska_19_32_54_4c8ee0c65e_1ff78b2a0f.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:06.658000', '2023-08-23 21:42:06.658000', 1, 1),
(20, 'bilboard_seve_1024x377_f49db818a6.jpg', NULL, NULL, 1024, 377, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_bilboard_seve_1024x377_f49db818a6_eac1338ee4.jpg\", \"hash\": \"large_bilboard_seve_1024x377_f49db818a6_eac1338ee4\", \"mime\": \"image/jpeg\", \"name\": \"large_bilboard_seve_1024x377_f49db818a6.jpg\", \"path\": null, \"size\": 65.97, \"width\": 1000, \"height\": 368}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bilboard_seve_1024x377_f49db818a6_eac1338ee4.jpg\", \"hash\": \"small_bilboard_seve_1024x377_f49db818a6_eac1338ee4\", \"mime\": \"image/jpeg\", \"name\": \"small_bilboard_seve_1024x377_f49db818a6.jpg\", \"path\": null, \"size\": 25.16, \"width\": 500, \"height\": 184}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_bilboard_seve_1024x377_f49db818a6_eac1338ee4.jpg\", \"hash\": \"medium_bilboard_seve_1024x377_f49db818a6_eac1338ee4\", \"mime\": \"image/jpeg\", \"name\": \"medium_bilboard_seve_1024x377_f49db818a6.jpg\", \"path\": null, \"size\": 45.39, \"width\": 750, \"height\": 276}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bilboard_seve_1024x377_f49db818a6_eac1338ee4.jpg\", \"hash\": \"thumbnail_bilboard_seve_1024x377_f49db818a6_eac1338ee4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bilboard_seve_1024x377_f49db818a6.jpg\", \"path\": null, \"size\": 8.11, \"width\": 245, \"height\": 90}}', 'bilboard_seve_1024x377_f49db818a6_eac1338ee4', '.jpg', 'image/jpeg', 66.03, '/uploads/bilboard_seve_1024x377_f49db818a6_eac1338ee4.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:06.898000', '2023-08-23 21:54:42.850000', 1, 1),
(21, 'bilbielsko_83d69203f3.jpeg', NULL, NULL, 1237, 952, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_bilbielsko_83d69203f3_0bbd1feb85.jpeg\", \"hash\": \"large_bilbielsko_83d69203f3_0bbd1feb85\", \"mime\": \"image/jpeg\", \"name\": \"large_bilbielsko_83d69203f3.jpeg\", \"path\": null, \"size\": 136.33, \"width\": 1000, \"height\": 770}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_bilbielsko_83d69203f3_0bbd1feb85.jpeg\", \"hash\": \"small_bilbielsko_83d69203f3_0bbd1feb85\", \"mime\": \"image/jpeg\", \"name\": \"small_bilbielsko_83d69203f3.jpeg\", \"path\": null, \"size\": 43.2, \"width\": 500, \"height\": 385}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_bilbielsko_83d69203f3_0bbd1feb85.jpeg\", \"hash\": \"medium_bilbielsko_83d69203f3_0bbd1feb85\", \"mime\": \"image/jpeg\", \"name\": \"medium_bilbielsko_83d69203f3.jpeg\", \"path\": null, \"size\": 86.33, \"width\": 750, \"height\": 577}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_bilbielsko_83d69203f3_0bbd1feb85.jpeg\", \"hash\": \"thumbnail_bilbielsko_83d69203f3_0bbd1feb85\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bilbielsko_83d69203f3.jpeg\", \"path\": null, \"size\": 8.98, \"width\": 203, \"height\": 156}}', 'bilbielsko_83d69203f3_0bbd1feb85', '.jpeg', 'image/jpeg', 186.28, '/uploads/bilbielsko_83d69203f3_0bbd1feb85.jpeg', NULL, 'local', NULL, '/', '2023-08-23 21:42:06.930000', '2023-08-23 21:42:06.930000', 1, 1),
(22, 'bisico_catalog_5b092716ef.jpg', NULL, NULL, 595, 842, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bisico_catalog_5b092716ef_a324f5d452.jpg\", \"hash\": \"small_bisico_catalog_5b092716ef_a324f5d452\", \"mime\": \"image/jpeg\", \"name\": \"small_bisico_catalog_5b092716ef.jpg\", \"path\": null, \"size\": 29.42, \"width\": 353, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_bisico_catalog_5b092716ef_a324f5d452.jpg\", \"hash\": \"medium_bisico_catalog_5b092716ef_a324f5d452\", \"mime\": \"image/jpeg\", \"name\": \"medium_bisico_catalog_5b092716ef.jpg\", \"path\": null, \"size\": 54.06, \"width\": 530, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bisico_catalog_5b092716ef_a324f5d452.jpg\", \"hash\": \"thumbnail_bisico_catalog_5b092716ef_a324f5d452\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bisico_catalog_5b092716ef.jpg\", \"path\": null, \"size\": 5.14, \"width\": 110, \"height\": 156}}', 'bisico_catalog_5b092716ef_a324f5d452', '.jpg', 'image/jpeg', 65.02, '/uploads/bisico_catalog_5b092716ef_a324f5d452.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:07.088000', '2023-08-23 21:42:07.088000', 1, 1),
(23, 'bisico_catalog_81a2427ca8.jpg', NULL, NULL, 494, 580, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bisico_catalog_81a2427ca8_a8008bf136.jpg\", \"hash\": \"small_bisico_catalog_81a2427ca8_a8008bf136\", \"mime\": \"image/jpeg\", \"name\": \"small_bisico_catalog_81a2427ca8.jpg\", \"path\": null, \"size\": 24.31, \"width\": 426, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bisico_catalog_81a2427ca8_a8008bf136.jpg\", \"hash\": \"thumbnail_bisico_catalog_81a2427ca8_a8008bf136\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bisico_catalog_81a2427ca8.jpg\", \"path\": null, \"size\": 4.67, \"width\": 133, \"height\": 156}}', 'bisico_catalog_81a2427ca8_a8008bf136', '.jpg', 'image/jpeg', 29.48, '/uploads/bisico_catalog_81a2427ca8_a8008bf136.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:07.515000', '2023-08-23 21:42:07.515000', 1, 1),
(24, 'bisico_catalog1_95d28d8e7d.jpg', NULL, NULL, 1239, 1754, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_bisico_catalog1_95d28d8e7d_ba502a04e2.jpg\", \"hash\": \"large_bisico_catalog1_95d28d8e7d_ba502a04e2\", \"mime\": \"image/jpeg\", \"name\": \"large_bisico_catalog1_95d28d8e7d.jpg\", \"path\": null, \"size\": 12.48, \"width\": 706, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bisico_catalog1_95d28d8e7d_ba502a04e2.jpg\", \"hash\": \"small_bisico_catalog1_95d28d8e7d_ba502a04e2\", \"mime\": \"image/jpeg\", \"name\": \"small_bisico_catalog1_95d28d8e7d.jpg\", \"path\": null, \"size\": 4.59, \"width\": 353, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_bisico_catalog1_95d28d8e7d_ba502a04e2.jpg\", \"hash\": \"medium_bisico_catalog1_95d28d8e7d_ba502a04e2\", \"mime\": \"image/jpeg\", \"name\": \"medium_bisico_catalog1_95d28d8e7d.jpg\", \"path\": null, \"size\": 8.13, \"width\": 530, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bisico_catalog1_95d28d8e7d_ba502a04e2.jpg\", \"hash\": \"thumbnail_bisico_catalog1_95d28d8e7d_ba502a04e2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bisico_catalog1_95d28d8e7d.jpg\", \"path\": null, \"size\": 0.97, \"width\": 110, \"height\": 156}}', 'bisico_catalog1_95d28d8e7d_ba502a04e2', '.jpg', 'image/jpeg', 29.58, '/uploads/bisico_catalog1_95d28d8e7d_ba502a04e2.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:07.817000', '2023-08-23 21:42:07.817000', 1, 1),
(25, 'bisico_catalog2_b56315e0b4.jpg', NULL, NULL, 1239, 1754, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_bisico_catalog2_b56315e0b4_92b92f2503.jpg\", \"hash\": \"large_bisico_catalog2_b56315e0b4_92b92f2503\", \"mime\": \"image/jpeg\", \"name\": \"large_bisico_catalog2_b56315e0b4.jpg\", \"path\": null, \"size\": 58.27, \"width\": 706, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bisico_catalog2_b56315e0b4_92b92f2503.jpg\", \"hash\": \"small_bisico_catalog2_b56315e0b4_92b92f2503\", \"mime\": \"image/jpeg\", \"name\": \"small_bisico_catalog2_b56315e0b4.jpg\", \"path\": null, \"size\": 19.96, \"width\": 353, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_bisico_catalog2_b56315e0b4_92b92f2503.jpg\", \"hash\": \"medium_bisico_catalog2_b56315e0b4_92b92f2503\", \"mime\": \"image/jpeg\", \"name\": \"medium_bisico_catalog2_b56315e0b4.jpg\", \"path\": null, \"size\": 37.27, \"width\": 530, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bisico_catalog2_b56315e0b4_92b92f2503.jpg\", \"hash\": \"thumbnail_bisico_catalog2_b56315e0b4_92b92f2503\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bisico_catalog2_b56315e0b4.jpg\", \"path\": null, \"size\": 3.26, \"width\": 110, \"height\": 156}}', 'bisico_catalog2_b56315e0b4_92b92f2503', '.jpg', 'image/jpeg', 137.81, '/uploads/bisico_catalog2_b56315e0b4_92b92f2503.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:07.867000', '2023-08-23 21:42:07.867000', 1, 1),
(26, 'bisico_catalog5_9f494a5a5a.jpg', NULL, NULL, 1239, 1754, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_bisico_catalog5_9f494a5a5a_c866ae6e73.jpg\", \"hash\": \"large_bisico_catalog5_9f494a5a5a_c866ae6e73\", \"mime\": \"image/jpeg\", \"name\": \"large_bisico_catalog5_9f494a5a5a.jpg\", \"path\": null, \"size\": 31.55, \"width\": 706, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bisico_catalog5_9f494a5a5a_c866ae6e73.jpg\", \"hash\": \"small_bisico_catalog5_9f494a5a5a_c866ae6e73\", \"mime\": \"image/jpeg\", \"name\": \"small_bisico_catalog5_9f494a5a5a.jpg\", \"path\": null, \"size\": 11.72, \"width\": 353, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_bisico_catalog5_9f494a5a5a_c866ae6e73.jpg\", \"hash\": \"medium_bisico_catalog5_9f494a5a5a_c866ae6e73\", \"mime\": \"image/jpeg\", \"name\": \"medium_bisico_catalog5_9f494a5a5a.jpg\", \"path\": null, \"size\": 20.56, \"width\": 530, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bisico_catalog5_9f494a5a5a_c866ae6e73.jpg\", \"hash\": \"thumbnail_bisico_catalog5_9f494a5a5a_c866ae6e73\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bisico_catalog5_9f494a5a5a.jpg\", \"path\": null, \"size\": 2.03, \"width\": 110, \"height\": 156}}', 'bisico_catalog5_9f494a5a5a_c866ae6e73', '.jpg', 'image/jpeg', 75.50, '/uploads/bisico_catalog5_9f494a5a5a_c866ae6e73.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:08.043000', '2023-08-23 21:42:08.043000', 1, 1),
(27, 'bisico_catalog6_c678755a8a.jpg', NULL, NULL, 1239, 1754, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_bisico_catalog6_c678755a8a_57039fbb00.jpg\", \"hash\": \"large_bisico_catalog6_c678755a8a_57039fbb00\", \"mime\": \"image/jpeg\", \"name\": \"large_bisico_catalog6_c678755a8a.jpg\", \"path\": null, \"size\": 27.21, \"width\": 706, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bisico_catalog6_c678755a8a_57039fbb00.jpg\", \"hash\": \"small_bisico_catalog6_c678755a8a_57039fbb00\", \"mime\": \"image/jpeg\", \"name\": \"small_bisico_catalog6_c678755a8a.jpg\", \"path\": null, \"size\": 10.38, \"width\": 353, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_bisico_catalog6_c678755a8a_57039fbb00.jpg\", \"hash\": \"medium_bisico_catalog6_c678755a8a_57039fbb00\", \"mime\": \"image/jpeg\", \"name\": \"medium_bisico_catalog6_c678755a8a.jpg\", \"path\": null, \"size\": 18.09, \"width\": 530, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bisico_catalog6_c678755a8a_57039fbb00.jpg\", \"hash\": \"thumbnail_bisico_catalog6_c678755a8a_57039fbb00\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bisico_catalog6_c678755a8a.jpg\", \"path\": null, \"size\": 1.96, \"width\": 110, \"height\": 156}}', 'bisico_catalog6_c678755a8a_57039fbb00', '.jpg', 'image/jpeg', 59.06, '/uploads/bisico_catalog6_c678755a8a_57039fbb00.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:08.477000', '2023-08-23 21:42:08.477000', 1, 1),
(28, 'bisico_catalog4_ff79e313f4.jpg', NULL, NULL, 1239, 1754, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_bisico_catalog4_ff79e313f4_134a53dcdd.jpg\", \"hash\": \"large_bisico_catalog4_ff79e313f4_134a53dcdd\", \"mime\": \"image/jpeg\", \"name\": \"large_bisico_catalog4_ff79e313f4.jpg\", \"path\": null, \"size\": 66.08, \"width\": 706, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bisico_catalog4_ff79e313f4_134a53dcdd.jpg\", \"hash\": \"small_bisico_catalog4_ff79e313f4_134a53dcdd\", \"mime\": \"image/jpeg\", \"name\": \"small_bisico_catalog4_ff79e313f4.jpg\", \"path\": null, \"size\": 21.62, \"width\": 353, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_bisico_catalog4_ff79e313f4_134a53dcdd.jpg\", \"hash\": \"medium_bisico_catalog4_ff79e313f4_134a53dcdd\", \"mime\": \"image/jpeg\", \"name\": \"medium_bisico_catalog4_ff79e313f4.jpg\", \"path\": null, \"size\": 43.26, \"width\": 530, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bisico_catalog4_ff79e313f4_134a53dcdd.jpg\", \"hash\": \"thumbnail_bisico_catalog4_ff79e313f4_134a53dcdd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bisico_catalog4_ff79e313f4.jpg\", \"path\": null, \"size\": 3.32, \"width\": 110, \"height\": 156}}', 'bisico_catalog4_ff79e313f4_134a53dcdd', '.jpg', 'image/jpeg', 147.63, '/uploads/bisico_catalog4_ff79e313f4_134a53dcdd.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:08.511000', '2023-08-23 21:42:08.511000', 1, 1),
(29, 'damian_opusel_wizytowka1_14c94c526e.jpg', NULL, NULL, 894, 761, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_damian_opusel_wizytowka1_14c94c526e_c29a6bff9a.jpg\", \"hash\": \"small_damian_opusel_wizytowka1_14c94c526e_c29a6bff9a\", \"mime\": \"image/jpeg\", \"name\": \"small_damian_opusel_wizytowka1_14c94c526e.jpg\", \"path\": null, \"size\": 14.2, \"width\": 500, \"height\": 426}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_damian_opusel_wizytowka1_14c94c526e_c29a6bff9a.jpg\", \"hash\": \"medium_damian_opusel_wizytowka1_14c94c526e_c29a6bff9a\", \"mime\": \"image/jpeg\", \"name\": \"medium_damian_opusel_wizytowka1_14c94c526e.jpg\", \"path\": null, \"size\": 25.18, \"width\": 750, \"height\": 638}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_damian_opusel_wizytowka1_14c94c526e_c29a6bff9a.jpg\", \"hash\": \"thumbnail_damian_opusel_wizytowka1_14c94c526e_c29a6bff9a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_damian_opusel_wizytowka1_14c94c526e.jpg\", \"path\": null, \"size\": 3.21, \"width\": 184, \"height\": 156}}', 'damian_opusel_wizytowka1_14c94c526e_c29a6bff9a', '.jpg', 'image/jpeg', 33.16, '/uploads/damian_opusel_wizytowka1_14c94c526e_c29a6bff9a.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:08.900000', '2023-08-23 21:42:08.900000', 1, 1),
(30, 'e46_moduly_touring_13d8edcdc0.jpeg', NULL, NULL, 800, 602, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_e46_moduly_touring_13d8edcdc0_303328674f.jpeg\", \"hash\": \"small_e46_moduly_touring_13d8edcdc0_303328674f\", \"mime\": \"image/jpeg\", \"name\": \"small_e46_moduly_touring_13d8edcdc0.jpeg\", \"path\": null, \"size\": 49.2, \"width\": 500, \"height\": 376}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_e46_moduly_touring_13d8edcdc0_303328674f.jpeg\", \"hash\": \"medium_e46_moduly_touring_13d8edcdc0_303328674f\", \"mime\": \"image/jpeg\", \"name\": \"medium_e46_moduly_touring_13d8edcdc0.jpeg\", \"path\": null, \"size\": 92.39, \"width\": 750, \"height\": 564}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_e46_moduly_touring_13d8edcdc0_303328674f.jpeg\", \"hash\": \"thumbnail_e46_moduly_touring_13d8edcdc0_303328674f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_e46_moduly_touring_13d8edcdc0.jpeg\", \"path\": null, \"size\": 10.82, \"width\": 207, \"height\": 156}}', 'e46_moduly_touring_13d8edcdc0_303328674f', '.jpeg', 'image/jpeg', 95.20, '/uploads/e46_moduly_touring_13d8edcdc0_303328674f.jpeg', NULL, 'local', NULL, '/', '2023-08-23 21:42:09.126000', '2023-08-23 21:42:09.126000', 1, 1),
(31, 'edytor_ebay_allegro_szablon_it_Empire_54580dd0f8.jpg', NULL, NULL, 619, 362, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_edytor_ebay_allegro_szablon_it_Empire_54580dd0f8_71857bba5d.jpg\", \"hash\": \"small_edytor_ebay_allegro_szablon_it_Empire_54580dd0f8_71857bba5d\", \"mime\": \"image/jpeg\", \"name\": \"small_edytor_ebay_allegro_szablon_it_Empire_54580dd0f8.jpg\", \"path\": null, \"size\": 13.33, \"width\": 500, \"height\": 292}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_edytor_ebay_allegro_szablon_it_Empire_54580dd0f8_71857bba5d.jpg\", \"hash\": \"thumbnail_edytor_ebay_allegro_szablon_it_Empire_54580dd0f8_71857bba5d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_edytor_ebay_allegro_szablon_it_Empire_54580dd0f8.jpg\", \"path\": null, \"size\": 5.04, \"width\": 245, \"height\": 143}}', 'edytor_ebay_allegro_szablon_it_Empire_54580dd0f8_71857bba5d', '.jpg', 'image/jpeg', 17.00, '/uploads/edytor_ebay_allegro_szablon_it_Empire_54580dd0f8_71857bba5d.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:09.196000', '2023-08-23 21:42:09.196000', 1, 1),
(32, 'elektrolabs2_519x1024_20331bc849.jpeg', NULL, NULL, 519, 1024, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_elektrolabs2_519x1024_20331bc849_89e901d429.jpeg\", \"hash\": \"large_elektrolabs2_519x1024_20331bc849_89e901d429\", \"mime\": \"image/jpeg\", \"name\": \"large_elektrolabs2_519x1024_20331bc849.jpeg\", \"path\": null, \"size\": 85.06, \"width\": 507, \"height\": 1000}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_elektrolabs2_519x1024_20331bc849_89e901d429.jpeg\", \"hash\": \"small_elektrolabs2_519x1024_20331bc849_89e901d429\", \"mime\": \"image/jpeg\", \"name\": \"small_elektrolabs2_519x1024_20331bc849.jpeg\", \"path\": null, \"size\": 29.55, \"width\": 253, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_elektrolabs2_519x1024_20331bc849_89e901d429.jpeg\", \"hash\": \"medium_elektrolabs2_519x1024_20331bc849_89e901d429\", \"mime\": \"image/jpeg\", \"name\": \"medium_elektrolabs2_519x1024_20331bc849.jpeg\", \"path\": null, \"size\": 55.17, \"width\": 380, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_elektrolabs2_519x1024_20331bc849_89e901d429.jpeg\", \"hash\": \"thumbnail_elektrolabs2_519x1024_20331bc849_89e901d429\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_elektrolabs2_519x1024_20331bc849.jpeg\", \"path\": null, \"size\": 4.58, \"width\": 79, \"height\": 156}}', 'elektrolabs2_519x1024_20331bc849_89e901d429', '.jpeg', 'image/jpeg', 88.49, '/uploads/elektrolabs2_519x1024_20331bc849_89e901d429.jpeg', NULL, 'local', NULL, '/', '2023-08-23 21:42:09.565000', '2023-08-23 21:42:09.565000', 1, 1),
(33, 'elektrolabs_dce4310586.jpeg', NULL, NULL, 1042, 708, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_elektrolabs_dce4310586_b8abd20943.jpeg\", \"hash\": \"large_elektrolabs_dce4310586_b8abd20943\", \"mime\": \"image/jpeg\", \"name\": \"large_elektrolabs_dce4310586.jpeg\", \"path\": null, \"size\": 81.32, \"width\": 1000, \"height\": 679}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_elektrolabs_dce4310586_b8abd20943.jpeg\", \"hash\": \"small_elektrolabs_dce4310586_b8abd20943\", \"mime\": \"image/jpeg\", \"name\": \"small_elektrolabs_dce4310586.jpeg\", \"path\": null, \"size\": 30.87, \"width\": 500, \"height\": 340}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_elektrolabs_dce4310586_b8abd20943.jpeg\", \"hash\": \"medium_elektrolabs_dce4310586_b8abd20943\", \"mime\": \"image/jpeg\", \"name\": \"medium_elektrolabs_dce4310586.jpeg\", \"path\": null, \"size\": 54.18, \"width\": 750, \"height\": 510}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_elektrolabs_dce4310586_b8abd20943.jpeg\", \"hash\": \"thumbnail_elektrolabs_dce4310586_b8abd20943\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_elektrolabs_dce4310586.jpeg\", \"path\": null, \"size\": 9.4, \"width\": 230, \"height\": 156}}', 'elektrolabs_dce4310586_b8abd20943', '.jpeg', 'image/jpeg', 86.54, '/uploads/elektrolabs_dce4310586_b8abd20943.jpeg', NULL, 'local', NULL, '/', '2023-08-23 21:42:10.610000', '2023-08-23 21:42:10.610000', 1, 1),
(34, 'FJ_site_portfolio_nextjs_925402f839.jpg', NULL, NULL, 1200, 3967, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_FJ_site_portfolio_nextjs_925402f839_74b33237aa.jpg\", \"hash\": \"large_FJ_site_portfolio_nextjs_925402f839_74b33237aa\", \"mime\": \"image/jpeg\", \"name\": \"large_FJ_site_portfolio_nextjs_925402f839.jpg\", \"path\": null, \"size\": 39.22, \"width\": 303, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_FJ_site_portfolio_nextjs_925402f839_74b33237aa.jpg\", \"hash\": \"small_FJ_site_portfolio_nextjs_925402f839_74b33237aa\", \"mime\": \"image/jpeg\", \"name\": \"small_FJ_site_portfolio_nextjs_925402f839.jpg\", \"path\": null, \"size\": 12.01, \"width\": 151, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_FJ_site_portfolio_nextjs_925402f839_74b33237aa.jpg\", \"hash\": \"medium_FJ_site_portfolio_nextjs_925402f839_74b33237aa\", \"mime\": \"image/jpeg\", \"name\": \"medium_FJ_site_portfolio_nextjs_925402f839.jpg\", \"path\": null, \"size\": 23.5, \"width\": 227, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_FJ_site_portfolio_nextjs_925402f839_74b33237aa.jpg\", \"hash\": \"thumbnail_FJ_site_portfolio_nextjs_925402f839_74b33237aa\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_FJ_site_portfolio_nextjs_925402f839.jpg\", \"path\": null, \"size\": 1.95, \"width\": 47, \"height\": 156}}', 'FJ_site_portfolio_nextjs_925402f839_74b33237aa', '.jpg', 'image/jpeg', 402.70, '/uploads/FJ_site_portfolio_nextjs_925402f839_74b33237aa.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:11.101000', '2023-08-23 21:42:11.101000', 1, 1),
(35, 'FJ_site_portfolio_nextjs_5e535ac809.jpg', NULL, NULL, 1200, 3967, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_FJ_site_portfolio_nextjs_5e535ac809_e1521ea68a.jpg\", \"hash\": \"large_FJ_site_portfolio_nextjs_5e535ac809_e1521ea68a\", \"mime\": \"image/jpeg\", \"name\": \"large_FJ_site_portfolio_nextjs_5e535ac809.jpg\", \"path\": null, \"size\": 39.24, \"width\": 303, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_FJ_site_portfolio_nextjs_5e535ac809_e1521ea68a.jpg\", \"hash\": \"small_FJ_site_portfolio_nextjs_5e535ac809_e1521ea68a\", \"mime\": \"image/jpeg\", \"name\": \"small_FJ_site_portfolio_nextjs_5e535ac809.jpg\", \"path\": null, \"size\": 12.01, \"width\": 151, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_FJ_site_portfolio_nextjs_5e535ac809_e1521ea68a.jpg\", \"hash\": \"medium_FJ_site_portfolio_nextjs_5e535ac809_e1521ea68a\", \"mime\": \"image/jpeg\", \"name\": \"medium_FJ_site_portfolio_nextjs_5e535ac809.jpg\", \"path\": null, \"size\": 23.48, \"width\": 227, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_FJ_site_portfolio_nextjs_5e535ac809_e1521ea68a.jpg\", \"hash\": \"thumbnail_FJ_site_portfolio_nextjs_5e535ac809_e1521ea68a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_FJ_site_portfolio_nextjs_5e535ac809.jpg\", \"path\": null, \"size\": 1.95, \"width\": 47, \"height\": 156}}', 'FJ_site_portfolio_nextjs_5e535ac809_e1521ea68a', '.jpg', 'image/jpeg', 413.78, '/uploads/FJ_site_portfolio_nextjs_5e535ac809_e1521ea68a.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:11.283000', '2023-08-23 21:42:11.283000', 1, 1),
(36, 'FJ_site_portfolio_nextjs_miniatura_5770eb9890.jpg', NULL, NULL, 800, 578, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_FJ_site_portfolio_nextjs_miniatura_5770eb9890_298ae1b3fb.jpg\", \"hash\": \"small_FJ_site_portfolio_nextjs_miniatura_5770eb9890_298ae1b3fb\", \"mime\": \"image/jpeg\", \"name\": \"small_FJ_site_portfolio_nextjs_miniatura_5770eb9890.jpg\", \"path\": null, \"size\": 33.03, \"width\": 500, \"height\": 361}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_FJ_site_portfolio_nextjs_miniatura_5770eb9890_298ae1b3fb.jpg\", \"hash\": \"medium_FJ_site_portfolio_nextjs_miniatura_5770eb9890_298ae1b3fb\", \"mime\": \"image/jpeg\", \"name\": \"medium_FJ_site_portfolio_nextjs_miniatura_5770eb9890.jpg\", \"path\": null, \"size\": 66.03, \"width\": 750, \"height\": 542}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_FJ_site_portfolio_nextjs_miniatura_5770eb9890_298ae1b3fb.jpg\", \"hash\": \"thumbnail_FJ_site_portfolio_nextjs_miniatura_5770eb9890_298ae1b3fb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_FJ_site_portfolio_nextjs_miniatura_5770eb9890.jpg\", \"path\": null, \"size\": 7.55, \"width\": 216, \"height\": 156}}', 'FJ_site_portfolio_nextjs_miniatura_5770eb9890_298ae1b3fb', '.jpg', 'image/jpeg', 75.56, '/uploads/FJ_site_portfolio_nextjs_miniatura_5770eb9890_298ae1b3fb.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:11.600000', '2023-08-23 21:42:11.600000', 1, 1);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(37, 'growbox_template2_a4e517ca3f.jpeg', NULL, NULL, 1000, 893, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_growbox_template2_a4e517ca3f_b4bf9927c4.jpeg\", \"hash\": \"small_growbox_template2_a4e517ca3f_b4bf9927c4\", \"mime\": \"image/jpeg\", \"name\": \"small_growbox_template2_a4e517ca3f.jpeg\", \"path\": null, \"size\": 47.96, \"width\": 500, \"height\": 447}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_growbox_template2_a4e517ca3f_b4bf9927c4.jpeg\", \"hash\": \"medium_growbox_template2_a4e517ca3f_b4bf9927c4\", \"mime\": \"image/jpeg\", \"name\": \"medium_growbox_template2_a4e517ca3f.jpeg\", \"path\": null, \"size\": 96.68, \"width\": 750, \"height\": 670}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_growbox_template2_a4e517ca3f_b4bf9927c4.jpeg\", \"hash\": \"thumbnail_growbox_template2_a4e517ca3f_b4bf9927c4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_growbox_template2_a4e517ca3f.jpeg\", \"path\": null, \"size\": 8.26, \"width\": 175, \"height\": 156}}', 'growbox_template2_a4e517ca3f_b4bf9927c4', '.jpeg', 'image/jpeg', 146.28, '/uploads/growbox_template2_a4e517ca3f_b4bf9927c4.jpeg', NULL, 'local', NULL, '/', '2023-08-23 21:42:12.298000', '2023-08-23 21:42:12.298000', 1, 1),
(38, 'kameleon_7a2bdf0aa9.jpeg', NULL, NULL, 1000, 771, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_kameleon_7a2bdf0aa9_5452cbe7ed.jpeg\", \"hash\": \"small_kameleon_7a2bdf0aa9_5452cbe7ed\", \"mime\": \"image/jpeg\", \"name\": \"small_kameleon_7a2bdf0aa9.jpeg\", \"path\": null, \"size\": 33.43, \"width\": 500, \"height\": 386}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_kameleon_7a2bdf0aa9_5452cbe7ed.jpeg\", \"hash\": \"medium_kameleon_7a2bdf0aa9_5452cbe7ed\", \"mime\": \"image/jpeg\", \"name\": \"medium_kameleon_7a2bdf0aa9.jpeg\", \"path\": null, \"size\": 62.16, \"width\": 750, \"height\": 578}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_kameleon_7a2bdf0aa9_5452cbe7ed.jpeg\", \"hash\": \"thumbnail_kameleon_7a2bdf0aa9_5452cbe7ed\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_kameleon_7a2bdf0aa9.jpeg\", \"path\": null, \"size\": 7.65, \"width\": 203, \"height\": 156}}', 'kameleon_7a2bdf0aa9_5452cbe7ed', '.jpeg', 'image/jpeg', 95.44, '/uploads/kameleon_7a2bdf0aa9_5452cbe7ed.jpeg', NULL, 'local', NULL, '/', '2023-08-23 21:42:12.510000', '2023-08-23 21:42:12.510000', 1, 1),
(39, 'koszulki_931d594edd.jpg', NULL, NULL, 400, 404, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_koszulki_931d594edd_9198f0ae70.jpg\", \"hash\": \"thumbnail_koszulki_931d594edd_9198f0ae70\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_koszulki_931d594edd.jpg\", \"path\": null, \"size\": 3.13, \"width\": 154, \"height\": 156}}', 'koszulki_931d594edd_9198f0ae70', '.jpg', 'image/jpeg', 10.30, '/uploads/koszulki_931d594edd_9198f0ae70.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:42:12.619000', '2023-08-23 21:42:12.619000', 1, 1),
(40, 'kameleon2_54a5f9e77e.png', NULL, NULL, 768, 513, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_kameleon2_54a5f9e77e_32cfee030b.png\", \"hash\": \"small_kameleon2_54a5f9e77e_32cfee030b\", \"mime\": \"image/png\", \"name\": \"small_kameleon2_54a5f9e77e.png\", \"path\": null, \"size\": 171.66, \"width\": 500, \"height\": 334}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_kameleon2_54a5f9e77e_32cfee030b.png\", \"hash\": \"medium_kameleon2_54a5f9e77e_32cfee030b\", \"mime\": \"image/png\", \"name\": \"medium_kameleon2_54a5f9e77e.png\", \"path\": null, \"size\": 337.81, \"width\": 750, \"height\": 501}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_kameleon2_54a5f9e77e_32cfee030b.png\", \"hash\": \"thumbnail_kameleon2_54a5f9e77e_32cfee030b\", \"mime\": \"image/png\", \"name\": \"thumbnail_kameleon2_54a5f9e77e.png\", \"path\": null, \"size\": 45.79, \"width\": 234, \"height\": 156}}', 'kameleon2_54a5f9e77e_32cfee030b', '.png', 'image/png', 74.43, '/uploads/kameleon2_54a5f9e77e_32cfee030b.png', NULL, 'local', NULL, '/', '2023-08-23 21:42:12.692000', '2023-08-23 21:42:12.692000', 1, 1),
(41, 'Direct_Parts_cf17abe223.jpeg', NULL, NULL, 8192, 3899, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_Direct_Parts_cf17abe223_905b548b10.jpeg\", \"hash\": \"large_Direct_Parts_cf17abe223_905b548b10\", \"mime\": \"image/jpeg\", \"name\": \"large_Direct_Parts_cf17abe223.jpeg\", \"path\": null, \"size\": 37.21, \"width\": 1000, \"height\": 476}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_Direct_Parts_cf17abe223_905b548b10.jpeg\", \"hash\": \"small_Direct_Parts_cf17abe223_905b548b10\", \"mime\": \"image/jpeg\", \"name\": \"small_Direct_Parts_cf17abe223.jpeg\", \"path\": null, \"size\": 18.51, \"width\": 500, \"height\": 238}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_Direct_Parts_cf17abe223_905b548b10.jpeg\", \"hash\": \"medium_Direct_Parts_cf17abe223_905b548b10\", \"mime\": \"image/jpeg\", \"name\": \"medium_Direct_Parts_cf17abe223.jpeg\", \"path\": null, \"size\": 27.4, \"width\": 750, \"height\": 357}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Direct_Parts_cf17abe223_905b548b10.jpeg\", \"hash\": \"thumbnail_Direct_Parts_cf17abe223_905b548b10\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Direct_Parts_cf17abe223.jpeg\", \"path\": null, \"size\": 8.89, \"width\": 245, \"height\": 117}}', 'Direct_Parts_cf17abe223_905b548b10', '.jpeg', 'image/jpeg', 99.96, '/uploads/Direct_Parts_cf17abe223_905b548b10.jpeg', NULL, 'local', NULL, '/', '2023-08-23 21:42:15.890000', '2023-08-23 21:42:15.890000', 1, 1),
(43, 'pasiekalebana_4ecc2bb946.jpeg', NULL, NULL, 700, 488, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_pasiekalebana_4ecc2bb946_e1d59d282d.jpeg\", \"hash\": \"small_pasiekalebana_4ecc2bb946_e1d59d282d\", \"mime\": \"image/jpeg\", \"name\": \"small_pasiekalebana_4ecc2bb946.jpeg\", \"path\": null, \"size\": 28.47, \"width\": 500, \"height\": 349}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_pasiekalebana_4ecc2bb946_e1d59d282d.jpeg\", \"hash\": \"thumbnail_pasiekalebana_4ecc2bb946_e1d59d282d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_pasiekalebana_4ecc2bb946.jpeg\", \"path\": null, \"size\": 7.54, \"width\": 224, \"height\": 156}}', 'pasiekalebana_4ecc2bb946_e1d59d282d', '.jpeg', 'image/jpeg', 46.76, '/uploads/pasiekalebana_4ecc2bb946_e1d59d282d.jpeg', NULL, 'local', NULL, '/', '2023-08-23 21:45:16.938000', '2023-08-23 21:45:16.938000', 1, 1),
(44, 'pasiekaleban_9a195cc518.jpeg', NULL, NULL, 700, 488, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_pasiekaleban_9a195cc518_2de4ab46d7.jpeg\", \"hash\": \"small_pasiekaleban_9a195cc518_2de4ab46d7\", \"mime\": \"image/jpeg\", \"name\": \"small_pasiekaleban_9a195cc518.jpeg\", \"path\": null, \"size\": 28.47, \"width\": 500, \"height\": 349}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_pasiekaleban_9a195cc518_2de4ab46d7.jpeg\", \"hash\": \"thumbnail_pasiekaleban_9a195cc518_2de4ab46d7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_pasiekaleban_9a195cc518.jpeg\", \"path\": null, \"size\": 7.54, \"width\": 224, \"height\": 156}}', 'pasiekaleban_9a195cc518_2de4ab46d7', '.jpeg', 'image/jpeg', 46.76, '/uploads/pasiekaleban_9a195cc518_2de4ab46d7.jpeg', NULL, 'local', NULL, '/', '2023-08-23 21:45:16.935000', '2023-08-23 21:45:16.935000', 1, 1),
(45, 'Pasieka_Leban_19_21_41_d16ce82f02.jpg', NULL, NULL, 1401, 1070, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Pasieka_Leban_19_21_41_d16ce82f02_273a127ff7.jpg\", \"hash\": \"large_Pasieka_Leban_19_21_41_d16ce82f02_273a127ff7\", \"mime\": \"image/jpeg\", \"name\": \"large_Pasieka_Leban_19_21_41_d16ce82f02.jpg\", \"path\": null, \"size\": 90.54, \"width\": 1000, \"height\": 764}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Pasieka_Leban_19_21_41_d16ce82f02_273a127ff7.jpg\", \"hash\": \"small_Pasieka_Leban_19_21_41_d16ce82f02_273a127ff7\", \"mime\": \"image/jpeg\", \"name\": \"small_Pasieka_Leban_19_21_41_d16ce82f02.jpg\", \"path\": null, \"size\": 27.62, \"width\": 500, \"height\": 382}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Pasieka_Leban_19_21_41_d16ce82f02_273a127ff7.jpg\", \"hash\": \"medium_Pasieka_Leban_19_21_41_d16ce82f02_273a127ff7\", \"mime\": \"image/jpeg\", \"name\": \"medium_Pasieka_Leban_19_21_41_d16ce82f02.jpg\", \"path\": null, \"size\": 56.27, \"width\": 750, \"height\": 573}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Pasieka_Leban_19_21_41_d16ce82f02_273a127ff7.jpg\", \"hash\": \"thumbnail_Pasieka_Leban_19_21_41_d16ce82f02_273a127ff7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Pasieka_Leban_19_21_41_d16ce82f02.jpg\", \"path\": null, \"size\": 6.51, \"width\": 204, \"height\": 156}}', 'Pasieka_Leban_19_21_41_d16ce82f02_273a127ff7', '.jpg', 'image/jpeg', 158.68, '/uploads/Pasieka_Leban_19_21_41_d16ce82f02_273a127ff7.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:45:17.280000', '2023-08-23 21:45:17.280000', 1, 1),
(46, 'Pasieka_Leban_19_23_35_31f7a76ebb.jpg', NULL, NULL, 1773, 1141, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Pasieka_Leban_19_23_35_31f7a76ebb_380b03169d.jpg\", \"hash\": \"large_Pasieka_Leban_19_23_35_31f7a76ebb_380b03169d\", \"mime\": \"image/jpeg\", \"name\": \"large_Pasieka_Leban_19_23_35_31f7a76ebb.jpg\", \"path\": null, \"size\": 42.27, \"width\": 1000, \"height\": 644}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Pasieka_Leban_19_23_35_31f7a76ebb_380b03169d.jpg\", \"hash\": \"small_Pasieka_Leban_19_23_35_31f7a76ebb_380b03169d\", \"mime\": \"image/jpeg\", \"name\": \"small_Pasieka_Leban_19_23_35_31f7a76ebb.jpg\", \"path\": null, \"size\": 12.47, \"width\": 500, \"height\": 322}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Pasieka_Leban_19_23_35_31f7a76ebb_380b03169d.jpg\", \"hash\": \"medium_Pasieka_Leban_19_23_35_31f7a76ebb_380b03169d\", \"mime\": \"image/jpeg\", \"name\": \"medium_Pasieka_Leban_19_23_35_31f7a76ebb.jpg\", \"path\": null, \"size\": 24.94, \"width\": 750, \"height\": 483}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Pasieka_Leban_19_23_35_31f7a76ebb_380b03169d.jpg\", \"hash\": \"thumbnail_Pasieka_Leban_19_23_35_31f7a76ebb_380b03169d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Pasieka_Leban_19_23_35_31f7a76ebb.jpg\", \"path\": null, \"size\": 3.71, \"width\": 242, \"height\": 156}}', 'Pasieka_Leban_19_23_35_31f7a76ebb_380b03169d', '.jpg', 'image/jpeg', 102.79, '/uploads/Pasieka_Leban_19_23_35_31f7a76ebb_380b03169d.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:45:17.385000', '2023-08-23 21:45:17.385000', 1, 1),
(47, 'Pasieka_Leban_19_22_24_36f4c3e7e8.jpg', NULL, NULL, 1401, 1141, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Pasieka_Leban_19_22_24_36f4c3e7e8_ed31b741ea.jpg\", \"hash\": \"large_Pasieka_Leban_19_22_24_36f4c3e7e8_ed31b741ea\", \"mime\": \"image/jpeg\", \"name\": \"large_Pasieka_Leban_19_22_24_36f4c3e7e8.jpg\", \"path\": null, \"size\": 108.41, \"width\": 1000, \"height\": 814}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Pasieka_Leban_19_22_24_36f4c3e7e8_ed31b741ea.jpg\", \"hash\": \"small_Pasieka_Leban_19_22_24_36f4c3e7e8_ed31b741ea\", \"mime\": \"image/jpeg\", \"name\": \"small_Pasieka_Leban_19_22_24_36f4c3e7e8.jpg\", \"path\": null, \"size\": 33.05, \"width\": 500, \"height\": 407}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Pasieka_Leban_19_22_24_36f4c3e7e8_ed31b741ea.jpg\", \"hash\": \"medium_Pasieka_Leban_19_22_24_36f4c3e7e8_ed31b741ea\", \"mime\": \"image/jpeg\", \"name\": \"medium_Pasieka_Leban_19_22_24_36f4c3e7e8.jpg\", \"path\": null, \"size\": 66.28, \"width\": 750, \"height\": 611}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Pasieka_Leban_19_22_24_36f4c3e7e8_ed31b741ea.jpg\", \"hash\": \"thumbnail_Pasieka_Leban_19_22_24_36f4c3e7e8_ed31b741ea\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Pasieka_Leban_19_22_24_36f4c3e7e8.jpg\", \"path\": null, \"size\": 6.69, \"width\": 192, \"height\": 156}}', 'Pasieka_Leban_19_22_24_36f4c3e7e8_ed31b741ea', '.jpg', 'image/jpeg', 186.06, '/uploads/Pasieka_Leban_19_22_24_36f4c3e7e8_ed31b741ea.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:45:17.386000', '2023-08-23 21:45:17.386000', 1, 1),
(48, 'Pasieka_Leban_9_23_06_f38847aac3.jpg', NULL, NULL, 1773, 1141, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Pasieka_Leban_9_23_06_f38847aac3_97e2a0e354.jpg\", \"hash\": \"large_Pasieka_Leban_9_23_06_f38847aac3_97e2a0e354\", \"mime\": \"image/jpeg\", \"name\": \"large_Pasieka_Leban_9_23_06_f38847aac3.jpg\", \"path\": null, \"size\": 91.47, \"width\": 1000, \"height\": 644}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Pasieka_Leban_9_23_06_f38847aac3_97e2a0e354.jpg\", \"hash\": \"small_Pasieka_Leban_9_23_06_f38847aac3_97e2a0e354\", \"mime\": \"image/jpeg\", \"name\": \"small_Pasieka_Leban_9_23_06_f38847aac3.jpg\", \"path\": null, \"size\": 28.95, \"width\": 500, \"height\": 322}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Pasieka_Leban_9_23_06_f38847aac3_97e2a0e354.jpg\", \"hash\": \"medium_Pasieka_Leban_9_23_06_f38847aac3_97e2a0e354\", \"mime\": \"image/jpeg\", \"name\": \"medium_Pasieka_Leban_9_23_06_f38847aac3.jpg\", \"path\": null, \"size\": 56.97, \"width\": 750, \"height\": 483}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Pasieka_Leban_9_23_06_f38847aac3_97e2a0e354.jpg\", \"hash\": \"thumbnail_Pasieka_Leban_9_23_06_f38847aac3_97e2a0e354\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Pasieka_Leban_9_23_06_f38847aac3.jpg\", \"path\": null, \"size\": 9.36, \"width\": 242, \"height\": 156}}', 'Pasieka_Leban_9_23_06_f38847aac3_97e2a0e354', '.jpg', 'image/jpeg', 232.78, '/uploads/Pasieka_Leban_9_23_06_f38847aac3_97e2a0e354.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:45:17.388000', '2023-08-23 21:45:17.388000', 1, 1),
(49, 'Opusel_logo_75b9a226fe.jpg', NULL, NULL, 307, 571, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Opusel_logo_75b9a226fe_58fa8f61d2.jpg\", \"hash\": \"small_Opusel_logo_75b9a226fe_58fa8f61d2\", \"mime\": \"image/jpeg\", \"name\": \"small_Opusel_logo_75b9a226fe.jpg\", \"path\": null, \"size\": 8.19, \"width\": 269, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Opusel_logo_75b9a226fe_58fa8f61d2.jpg\", \"hash\": \"thumbnail_Opusel_logo_75b9a226fe_58fa8f61d2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Opusel_logo_75b9a226fe.jpg\", \"path\": null, \"size\": 1.93, \"width\": 84, \"height\": 156}}', 'Opusel_logo_75b9a226fe_58fa8f61d2', '.jpg', 'image/jpeg', 9.76, '/uploads/Opusel_logo_75b9a226fe_58fa8f61d2.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:52:03.756000', '2023-08-23 21:52:03.756000', 1, 1),
(50, 'Opusel_portfolio_Zbigniew_Adam_Karski_735b5c0a36.jpg', NULL, NULL, 600, 624, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Opusel_portfolio_Zbigniew_Adam_Karski_735b5c0a36_8678f76c57.jpg\", \"hash\": \"small_Opusel_portfolio_Zbigniew_Adam_Karski_735b5c0a36_8678f76c57\", \"mime\": \"image/jpeg\", \"name\": \"small_Opusel_portfolio_Zbigniew_Adam_Karski_735b5c0a36.jpg\", \"path\": null, \"size\": 10.04, \"width\": 481, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Opusel_portfolio_Zbigniew_Adam_Karski_735b5c0a36_8678f76c57.jpg\", \"hash\": \"thumbnail_Opusel_portfolio_Zbigniew_Adam_Karski_735b5c0a36_8678f76c57\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Opusel_portfolio_Zbigniew_Adam_Karski_735b5c0a36.jpg\", \"path\": null, \"size\": 2.72, \"width\": 150, \"height\": 156}}', 'Opusel_portfolio_Zbigniew_Adam_Karski_735b5c0a36_8678f76c57', '.jpg', 'image/jpeg', 12.39, '/uploads/Opusel_portfolio_Zbigniew_Adam_Karski_735b5c0a36_8678f76c57.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:52:03.787000', '2023-08-23 21:52:03.787000', 1, 1),
(51, 'Opusel_P1010113_2_6026bbbafd.jpg', NULL, NULL, 640, 479, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Opusel_P1010113_2_6026bbbafd_819d850235.jpg\", \"hash\": \"small_Opusel_P1010113_2_6026bbbafd_819d850235\", \"mime\": \"image/jpeg\", \"name\": \"small_Opusel_P1010113_2_6026bbbafd.jpg\", \"path\": null, \"size\": 37.68, \"width\": 500, \"height\": 374}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Opusel_P1010113_2_6026bbbafd_819d850235.jpg\", \"hash\": \"thumbnail_Opusel_P1010113_2_6026bbbafd_819d850235\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Opusel_P1010113_2_6026bbbafd.jpg\", \"path\": null, \"size\": 9.28, \"width\": 209, \"height\": 156}}', 'Opusel_P1010113_2_6026bbbafd_819d850235', '.jpg', 'image/jpeg', 49.91, '/uploads/Opusel_P1010113_2_6026bbbafd_819d850235.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:52:03.791000', '2023-08-23 21:52:03.791000', 1, 1),
(52, 'teatrtanca_43f01c2e1f.jpg', NULL, NULL, 500, 703, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_teatrtanca_43f01c2e1f_937a252be5.jpg\", \"hash\": \"small_teatrtanca_43f01c2e1f_937a252be5\", \"mime\": \"image/jpeg\", \"name\": \"small_teatrtanca_43f01c2e1f.jpg\", \"path\": null, \"size\": 29.57, \"width\": 356, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_teatrtanca_43f01c2e1f_937a252be5.jpg\", \"hash\": \"thumbnail_teatrtanca_43f01c2e1f_937a252be5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_teatrtanca_43f01c2e1f.jpg\", \"path\": null, \"size\": 5.04, \"width\": 111, \"height\": 156}}', 'teatrtanca_43f01c2e1f_937a252be5', '.jpg', 'image/jpeg', 51.32, '/uploads/teatrtanca_43f01c2e1f_937a252be5.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:57:34.179000', '2023-08-23 21:57:34.179000', 1, 1),
(53, 'thumbnail_Logo_zatweirdzone_Royal_Canin_Segment_Day_Polska_d81bae858a.jpg', NULL, NULL, 187, 156, NULL, 'thumbnail_Logo_zatweirdzone_Royal_Canin_Segment_Day_Polska_d81bae858a_4622033baa', '.jpg', 'image/jpeg', 5.45, '/uploads/thumbnail_Logo_zatweirdzone_Royal_Canin_Segment_Day_Polska_d81bae858a_4622033baa.jpg', NULL, 'local', NULL, '/', '2023-08-23 21:58:57.095000', '2023-08-23 21:58:57.095000', 1, 1),
(54, 'Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6.png', NULL, NULL, 1208, 779, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6_ccf9f2ab83.png\", \"hash\": \"large_Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6_ccf9f2ab83\", \"mime\": \"image/png\", \"name\": \"large_Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6.png\", \"path\": null, \"size\": 1439.85, \"width\": 1000, \"height\": 645}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6_ccf9f2ab83.png\", \"hash\": \"small_Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6_ccf9f2ab83\", \"mime\": \"image/png\", \"name\": \"small_Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6.png\", \"path\": null, \"size\": 384.66, \"width\": 500, \"height\": 322}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6_ccf9f2ab83.png\", \"hash\": \"medium_Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6_ccf9f2ab83\", \"mime\": \"image/png\", \"name\": \"medium_Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6.png\", \"path\": null, \"size\": 833.73, \"width\": 750, \"height\": 484}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6_ccf9f2ab83.png\", \"hash\": \"thumbnail_Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6_ccf9f2ab83\", \"mime\": \"image/png\", \"name\": \"thumbnail_Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6.png\", \"path\": null, \"size\": 96.27, \"width\": 242, \"height\": 156}}', 'Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6_ccf9f2ab83', '.png', 'image/png', 529.96, '/uploads/Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6_ccf9f2ab83.png', NULL, 'local', NULL, '/', '2023-08-23 22:23:48.431000', '2023-08-23 22:24:07.408000', 1, 1),
(55, 'As_Printers_67222a6558.jpg', NULL, NULL, 1235, 772, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_As_Printers_67222a6558_0921173c57.jpg\", \"hash\": \"large_As_Printers_67222a6558_0921173c57\", \"mime\": \"image/jpeg\", \"name\": \"large_As_Printers_67222a6558.jpg\", \"path\": null, \"size\": 15.8, \"width\": 1000, \"height\": 625}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_As_Printers_67222a6558_0921173c57.jpg\", \"hash\": \"small_As_Printers_67222a6558_0921173c57\", \"mime\": \"image/jpeg\", \"name\": \"small_As_Printers_67222a6558.jpg\", \"path\": null, \"size\": 6.75, \"width\": 500, \"height\": 313}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_As_Printers_67222a6558_0921173c57.jpg\", \"hash\": \"medium_As_Printers_67222a6558_0921173c57\", \"mime\": \"image/jpeg\", \"name\": \"medium_As_Printers_67222a6558.jpg\", \"path\": null, \"size\": 10.83, \"width\": 750, \"height\": 469}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_As_Printers_67222a6558_0921173c57.jpg\", \"hash\": \"thumbnail_As_Printers_67222a6558_0921173c57\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_As_Printers_67222a6558.jpg\", \"path\": null, \"size\": 2.62, \"width\": 245, \"height\": 154}}', 'As_Printers_67222a6558_0921173c57', '.jpg', 'image/jpeg', 21.23, '/uploads/As_Printers_67222a6558_0921173c57.jpg', NULL, 'local', NULL, '/', '2023-08-23 22:27:02.280000', '2023-08-23 22:27:02.280000', 1, 1),
(78, 'ASPrinters_tablet.jpg', NULL, NULL, 225, 300, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_AS_Printers_tablet_7cc7cc70f5.jpg\", \"hash\": \"thumbnail_AS_Printers_tablet_7cc7cc70f5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ASPrinters_tablet.jpg\", \"path\": null, \"size\": 1.68, \"width\": 117, \"height\": 156}}', 'AS_Printers_tablet_7cc7cc70f5', '.jpg', 'image/jpeg', 3.81, '/uploads/AS_Printers_tablet_7cc7cc70f5.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:47.662000', '2023-08-25 18:39:47.662000', 1, 1),
(79, 'ASPrinters_phone.jpg', NULL, NULL, 127, 271, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_AS_Printers_phone_7578b5f882.jpg\", \"hash\": \"thumbnail_AS_Printers_phone_7578b5f882\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ASPrinters_phone.jpg\", \"path\": null, \"size\": 1.1, \"width\": 73, \"height\": 156}}', 'AS_Printers_phone_7578b5f882', '.jpg', 'image/jpeg', 2.24, '/uploads/AS_Printers_phone_7578b5f882.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:47.665000', '2023-08-25 18:39:47.665000', 1, 1),
(80, 'ASPrinters_laptop.jpg', NULL, NULL, 472, 306, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_AS_Printers_laptop_f96449d4d6.jpg\", \"hash\": \"thumbnail_AS_Printers_laptop_f96449d4d6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ASPrinters_laptop.jpg\", \"path\": null, \"size\": 2.02, \"width\": 241, \"height\": 156}}', 'AS_Printers_laptop_f96449d4d6', '.jpg', 'image/jpeg', 4.79, '/uploads/AS_Printers_laptop_f96449d4d6.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:47.675000', '2023-08-25 18:39:47.675000', 1, 1),
(81, 'back2roots-lap.jpg', NULL, NULL, 472, 306, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_back2roots_lap_b55e5ba7c9.jpg\", \"hash\": \"thumbnail_back2roots_lap_b55e5ba7c9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_back2roots-lap.jpg\", \"path\": null, \"size\": 7.7, \"width\": 241, \"height\": 156}}', 'back2roots_lap_b55e5ba7c9', '.jpg', 'image/jpeg', 22.69, '/uploads/back2roots_lap_b55e5ba7c9.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:47.693000', '2023-08-25 18:39:47.693000', 1, 1),
(82, 'back2roots-phone.jpg', NULL, NULL, 234, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_back2roots_phone_0da7b5027d.jpg\", \"hash\": \"thumbnail_back2roots_phone_0da7b5027d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_back2roots-phone.jpg\", \"path\": null, \"size\": 3.31, \"width\": 73, \"height\": 156}}', 'back2roots_phone_0da7b5027d', '.jpg', 'image/jpeg', 26.99, '/uploads/back2roots_phone_0da7b5027d.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:47.779000', '2023-08-25 18:39:47.779000', 1, 1),
(83, 'benica_la.jpg', NULL, NULL, 472, 306, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_benica_la_f0f599914c.jpg\", \"hash\": \"thumbnail_benica_la_f0f599914c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_benica_la.jpg\", \"path\": null, \"size\": 3.31, \"width\": 241, \"height\": 156}}', 'benica_la_f0f599914c', '.jpg', 'image/jpeg', 9.98, '/uploads/benica_la_f0f599914c.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:47.916000', '2023-08-25 18:39:47.916000', 1, 1),
(84, 'back2roots-tab.jpg', NULL, NULL, 232, 310, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_back2roots_tab_c935286cfd.jpg\", \"hash\": \"thumbnail_back2roots_tab_c935286cfd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_back2roots-tab.jpg\", \"path\": null, \"size\": 5.99, \"width\": 117, \"height\": 156}}', 'back2roots_tab_c935286cfd', '.jpg', 'image/jpeg', 19.70, '/uploads/back2roots_tab_c935286cfd.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:47.927000', '2023-08-25 18:39:47.927000', 1, 1),
(85, 'benica_ph.jpg', NULL, NULL, 187, 400, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_benica_ph_fe779debc5.jpg\", \"hash\": \"thumbnail_benica_ph_fe779debc5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_benica_ph.jpg\", \"path\": null, \"size\": 1.59, \"width\": 73, \"height\": 156}}', 'benica_ph_fe779debc5', '.jpg', 'image/jpeg', 6.71, '/uploads/benica_ph_fe779debc5.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:47.940000', '2023-08-25 18:39:47.940000', 1, 1),
(86, 'benica_ta.jpg', NULL, NULL, 232, 310, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_benica_ta_623fd8be36.jpg\", \"hash\": \"thumbnail_benica_ta_623fd8be36\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_benica_ta.jpg\", \"path\": null, \"size\": 2.36, \"width\": 117, \"height\": 156}}', 'benica_ta_623fd8be36', '.jpg', 'image/jpeg', 7.01, '/uploads/benica_ta_623fd8be36.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:47.949000', '2023-08-25 18:39:47.949000', 1, 1),
(87, 'bil-bielsko-pho.jpg', NULL, NULL, 187, 400, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bil_bielsko_pho_0707fcb2f6.jpg\", \"hash\": \"thumbnail_bil_bielsko_pho_0707fcb2f6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bil-bielsko-pho.jpg\", \"path\": null, \"size\": 3.52, \"width\": 73, \"height\": 156}}', 'bil_bielsko_pho_0707fcb2f6', '.jpg', 'image/jpeg', 17.06, '/uploads/bil_bielsko_pho_0707fcb2f6.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:48.556000', '2023-08-25 18:39:48.556000', 1, 1),
(88, 'bisico-3lap.jpg', NULL, NULL, 187, 400, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bisico_3lap_a4403723c4.jpg\", \"hash\": \"thumbnail_bisico_3lap_a4403723c4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bisico-3lap.jpg\", \"path\": null, \"size\": 3.24, \"width\": 73, \"height\": 156}}', 'bisico_3lap_a4403723c4', '.jpg', 'image/jpeg', 12.12, '/uploads/bisico_3lap_a4403723c4.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:48.586000', '2023-08-25 18:39:48.586000', 1, 1),
(89, 'bisico-2ap.jpg', NULL, NULL, 232, 310, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bisico_2ap_8e7b7a2427.jpg\", \"hash\": \"thumbnail_bisico_2ap_8e7b7a2427\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bisico-2ap.jpg\", \"path\": null, \"size\": 5.31, \"width\": 117, \"height\": 156}}', 'bisico_2ap_8e7b7a2427', '.jpg', 'image/jpeg', 14.56, '/uploads/bisico_2ap_8e7b7a2427.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:48.624000', '2023-08-25 18:39:48.624000', 1, 1),
(90, 'FJmalowanie_pho.jpg', NULL, NULL, 234, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_F_Jmalowanie_pho_2981d0738d.jpg\", \"hash\": \"thumbnail_F_Jmalowanie_pho_2981d0738d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_FJmalowanie_pho.jpg\", \"path\": null, \"size\": 2.59, \"width\": 73, \"height\": 156}}', 'F_Jmalowanie_pho_2981d0738d', '.jpg', 'image/jpeg', 18.28, '/uploads/F_Jmalowanie_pho_2981d0738d.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:48.640000', '2023-08-25 18:39:48.640000', 1, 1),
(91, 'bil-bielsko-lap.jpg', NULL, NULL, 472, 306, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bil_bielsko_lap_ca84719da7.jpg\", \"hash\": \"thumbnail_bil_bielsko_lap_ca84719da7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bil-bielsko-lap.jpg\", \"path\": null, \"size\": 7.62, \"width\": 241, \"height\": 156}}', 'bil_bielsko_lap_ca84719da7', '.jpg', 'image/jpeg', 23.31, '/uploads/bil_bielsko_lap_ca84719da7.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:48.659000', '2023-08-25 18:39:48.659000', 1, 1),
(92, 'bisico-1lap.jpg', NULL, NULL, 472, 306, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bisico_1lap_110ebf989f.jpg\", \"hash\": \"thumbnail_bisico_1lap_110ebf989f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bisico-1lap.jpg\", \"path\": null, \"size\": 7.14, \"width\": 241, \"height\": 156}}', 'bisico_1lap_110ebf989f', '.jpg', 'image/jpeg', 19.15, '/uploads/bisico_1lap_110ebf989f.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:48.691000', '2023-08-25 18:39:48.691000', 1, 1),
(93, 'bil-bielsko-tab.jpg', NULL, NULL, 299, 400, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bil_bielsko_tab_2f1c97496e.jpg\", \"hash\": \"thumbnail_bil_bielsko_tab_2f1c97496e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bil-bielsko-tab.jpg\", \"path\": null, \"size\": 5.14, \"width\": 117, \"height\": 156}}', 'bil_bielsko_tab_2f1c97496e', '.jpg', 'image/jpeg', 23.39, '/uploads/bil_bielsko_tab_2f1c97496e.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:48.692000', '2023-08-25 18:39:48.692000', 1, 1),
(94, 'FJmalowanie_laptop.jpg', NULL, NULL, 500, 324, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_F_Jmalowanie_laptop_196fe504d9.jpg\", \"hash\": \"thumbnail_F_Jmalowanie_laptop_196fe504d9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_FJmalowanie_laptop.jpg\", \"path\": null, \"size\": 8.21, \"width\": 241, \"height\": 156}}', 'F_Jmalowanie_laptop_196fe504d9', '.jpg', 'image/jpeg', 28.40, '/uploads/F_Jmalowanie_laptop_196fe504d9.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:48.727000', '2023-08-25 18:39:48.727000', 1, 1),
(95, 'FJmalowanie_tab.jpg', NULL, NULL, 400, 534, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_F_Jmalowanie_tab_6a124cdfa1.jpg\", \"hash\": \"small_F_Jmalowanie_tab_6a124cdfa1\", \"mime\": \"image/jpeg\", \"name\": \"small_FJmalowanie_tab.jpg\", \"path\": null, \"size\": 26.29, \"width\": 375, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_F_Jmalowanie_tab_6a124cdfa1.jpg\", \"hash\": \"thumbnail_F_Jmalowanie_tab_6a124cdfa1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_FJmalowanie_tab.jpg\", \"path\": null, \"size\": 3.92, \"width\": 117, \"height\": 156}}', 'F_Jmalowanie_tab_6a124cdfa1', '.jpg', 'image/jpeg', 29.36, '/uploads/F_Jmalowanie_tab_6a124cdfa1.jpg', NULL, 'local', NULL, '/', '2023-08-25 18:39:48.811000', '2023-08-25 18:39:48.811000', 1, 1),
(96, 'laptop.jpg', NULL, NULL, 600, 490, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_laptop_16bb13ba2a.jpg\", \"hash\": \"small_laptop_16bb13ba2a\", \"mime\": \"image/jpeg\", \"name\": \"small_laptop.jpg\", \"path\": null, \"size\": 33.83, \"width\": 500, \"height\": 408}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_laptop_16bb13ba2a.jpg\", \"hash\": \"thumbnail_laptop_16bb13ba2a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_laptop.jpg\", \"path\": null, \"size\": 7.67, \"width\": 191, \"height\": 156}}', 'laptop_16bb13ba2a', '.jpg', 'image/jpeg', 31.95, '/uploads/laptop_16bb13ba2a.jpg', NULL, 'local', NULL, '/', '2023-09-07 21:34:13.225000', '2023-09-07 21:34:13.225000', 1, 1),
(97, 'iphone.jpg', NULL, NULL, 250, 555, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_iphone_68c7a03567.jpg\", \"hash\": \"small_iphone_68c7a03567\", \"mime\": \"image/jpeg\", \"name\": \"small_iphone.jpg\", \"path\": null, \"size\": 25.19, \"width\": 225, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_iphone_68c7a03567.jpg\", \"hash\": \"thumbnail_iphone_68c7a03567\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_iphone.jpg\", \"path\": null, \"size\": 3.97, \"width\": 70, \"height\": 156}}', 'iphone_68c7a03567', '.jpg', 'image/jpeg', 30.40, '/uploads/iphone_68c7a03567.jpg', NULL, 'local', NULL, '/', '2023-09-07 21:34:13.229000', '2023-09-07 21:34:13.229000', 1, 1),
(98, 'iphone-tablet.jpg', NULL, NULL, 500, 612, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_iphone_tablet_d09870d8de.jpg\", \"hash\": \"small_iphone_tablet_d09870d8de\", \"mime\": \"image/jpeg\", \"name\": \"small_iphone-tablet.jpg\", \"path\": null, \"size\": 40.02, \"width\": 408, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_iphone_tablet_d09870d8de.jpg\", \"hash\": \"thumbnail_iphone_tablet_d09870d8de\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_iphone-tablet.jpg\", \"path\": null, \"size\": 6.38, \"width\": 127, \"height\": 156}}', 'iphone_tablet_d09870d8de', '.jpg', 'image/jpeg', 38.28, '/uploads/iphone_tablet_d09870d8de.jpg', NULL, 'local', NULL, '/', '2023-09-07 21:34:13.251000', '2023-09-07 21:34:13.251000', 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `related_id` int UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(5, 31, 4, 'api::portfolio.portfolio', 'miniatura', 1),
(8, 38, 7, 'api::portfolio.portfolio', 'miniatura', 1),
(9, 8, 9, 'api::portfolio.portfolio', 'miniatura', 1),
(10, 37, 10, 'api::portfolio.portfolio', 'miniatura', 1),
(11, 41, 14, 'api::portfolio.portfolio', 'miniatura', 1),
(14, 39, 17, 'api::portfolio.portfolio', 'miniatura', 1),
(15, 20, 18, 'api::portfolio.portfolio', 'miniatura', 1),
(17, 33, 34, 'api::portfolio.portfolio', 'miniatura', 1),
(18, 4, 35, 'api::portfolio.portfolio', 'miniatura', 1),
(19, 52, 36, 'api::portfolio.portfolio', 'miniatura', 1),
(21, 53, 38, 'api::portfolio.portfolio', 'miniatura', 1),
(23, 54, 33, 'api::portfolio.portfolio', 'miniatura', 1),
(34, 36, 15, 'api::portfolio.portfolio', 'miniatura', 1),
(54, 55, 13, 'api::portfolio.portfolio', 'miniatura', 1),
(55, 55, 13, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 1),
(56, 78, 13, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 2),
(57, 79, 13, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 3),
(58, 6, 1, 'api::portfolio.portfolio', 'miniatura', 1),
(59, 81, 1, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 1),
(60, 84, 1, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 2),
(61, 82, 1, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 3),
(62, 16, 37, 'api::portfolio.portfolio', 'miniatura', 1),
(63, 83, 37, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 1),
(64, 86, 37, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 2),
(65, 85, 37, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 3),
(66, 21, 6, 'api::portfolio.portfolio', 'miniatura', 1),
(67, 91, 6, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 1),
(68, 93, 6, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 2),
(69, 87, 6, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 3),
(70, 23, 39, 'api::portfolio.portfolio', 'miniatura', 1),
(71, 92, 39, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 1),
(72, 89, 39, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 2),
(73, 88, 39, 'api::portfolio.portfolio', 'Laptop_Tablet_Mobile', 3),
(74, 43, 5, 'api::portfolio.portfolio', 'miniatura', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-08-22 22:43:37.732000', '2023-08-22 22:43:37.732000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `opis` longtext,
  `published_at` datetime DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `kategoria` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `opis`, `published_at`, `created_at`, `updated_at`, `subtitle`, `kategoria`, `slug`, `content`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Back2Roots', '', '2021-04-13 20:56:13', '2021-03-28 15:20:45.000000', '2023-08-25 18:40:51.697000', 'Meble i elementy wnętrz na zamówienie', 'www', 'Back2Roots', '\nStrona producenta mebli na zamówienie. \n\n[Back2Roots](http://www.back2roots.pl/)\n\n*  Fotografia produktowa. Obróbka zdjęć. \n*  Frontend wykonany w Angular z technologią SSR, w celu optymalizacji SEO. \n\n\n![b2r.jpeg](/uploads/b2r_3089756b81.jpeg)\n\n![](/uploads/b2r2_1024x747_3997b9d117.jpeg)\n\n![back2roots strapchair 19.02.42.jpg](/uploads/back2roots_strapchair_19_02_42_a9bf027738.jpg)\n\n![back2roots  strapchair .jpg](/uploads/back2roots_strapchair_083e5ede85.jpg)\n\n![back2roots 1 strapchair .jpg](/uploads/back2roots_1_strapchair_36c4e70a33.jpg)\n\n![back2roots bolt table.jpg](/uploads/back2roots_bolt_table_de89661339.jpg)\n\n![back2roots  bolt table.jpg](/uploads/back2roots_bolt_table_4046be5b15.jpg)\n\n\n', NULL, 1),
(4, 'Edytor Wyswig', '', '2023-06-13 17:55:55', '2021-03-28 21:26:50.000000', '2023-08-23 21:43:49.559000', 'Edytor szablonów Ebay / Allegro', 'www', 'Edytor-Wyswig', '\n\n\n![edytor_ebay_allegro_szablon_itEmpire.jpg](/uploads/edytor_ebay_allegro_szablon_it_Empire_54580dd0f8.jpg)\n\n![Zrzut-ekranu-2016-07-01-12.33.06.jpg](/uploads/Zrzut_ekranu_2016_07_01_12_33_06_aebffbf0c0.jpg)\n\n![Zrzut-ekranu-2016-07-01-12.33.33.jpg](/uploads/Zrzut_ekranu_2016_07_01_12_33_33_409d2f790e.jpg)\n\n![Zrzut-ekranu-2016-07-01-12.33.56-768x339.jpg](/uploads/Zrzut_ekranu_2016_07_01_12_33_56_768x339_ad8ca8c980.jpg)\n\n![Zrzut-ekranu-2016-07-01-12.55.32.jpg](/uploads/Zrzut_ekranu_2016_07_01_12_55_32_4c13beac4e.jpg)\n', NULL, 1),
(5, 'Pasieka Leban', '', '2021-03-28 21:34:17', '2021-03-28 21:34:15.000000', '2024-06-24 19:09:49.095000', 'Strona przedsiębiorstwa pasiecznego', 'www', 'Pasieka-Leban', 'Strona przedsiębiorstwa pasiecznego\n\n\nProjekt logotypu oraz strony www. \n\n\nCMS oparty na  framework CakePHP. \nSklep i proces zamawiania JavaScript jQuery.\n\n\n\n\n[pasiekaleban.pl](http://pasiekaleban.pl/)\n\n\n\n\n\n![pasiekalebana.jpeg](/uploads/pasiekalebana_4ecc2bb946.jpeg)\n\n![PasiekaLeban 19.22.24.jpg](/uploads/Pasieka_Leban_19_22_24_36f4c3e7e8.jpg)\n\n![PasiekaLeban 19.21.41.jpg](/uploads/Pasieka_Leban_19_21_41_d16ce82f02.jpg)\n\n![PasiekaLeban 9.23.06.jpg](/uploads/Pasieka_Leban_9_23_06_f38847aac3.jpg)\n\n![PasiekaLeban 19.23.35.jpg](/uploads/Pasieka_Leban_19_23_35_31f7a76ebb.jpg)\n\n', NULL, 1),
(6, 'Beskidzka Izba Lekarska', '', '2021-03-29 12:03:30', '2021-03-29 12:01:53.000000', '2023-08-25 18:42:20.875000', 'Strona korporacyjna izby lekarskiej. ', 'www', 'Beskidzka-Izba-Lekarska', 'Webpage of [Beskidzka Izba Lekarska](https://bil.bielsko.pl/).  \n\n*  Plugin\'s for wordpress. \n*  Custom template elements for Wordpress\n*  Admin plugins and user per role view. \n\n\n\n![bilbielsko.jpeg](/uploads/bilbielsko_83d69203f3.jpeg)\n\n![bil_elementy.jpeg](/uploads/bil_elementy_433fd05886.jpeg)\n\n![Bil beskidzka izba lekarska 19.32.54.jpg](/uploads/Bil_beskidzka_izba_lekarska_19_32_54_4c8ee0c65e.jpg)\n\n![Bil beskidzka izba lekarska 19.32.09.jpg](/uploads/Bil_beskidzka_izba_lekarska_19_32_09_25a2c29b68.jpg)', NULL, 1),
(7, 'Kameleon', NULL, '2023-06-13 17:52:03', '2021-03-29 22:53:55.000000', '2023-08-23 21:48:48.720000', 'Strona agencji reklamowej', 'www', 'Kameleon', '![kameleon.jpeg](/uploads/kameleon_7a2bdf0aa9.jpeg)\n\n\n![kameleon2.png](/uploads/kameleon2_54a5f9e77e.png)', NULL, 1),
(9, 'Skup samochodów', NULL, '2021-03-29 23:00:37', '2021-03-29 23:00:30.000000', '2023-08-23 21:49:24.460000', 'Strona komisu samochodowego', 'www', 'Skup-samochodow', '![autawieliczka2.png](/uploads/autawieliczka2_9e1cefd4cd.png)\n\n![autawieliczka.png](/uploads/autawieliczka_1703254cd8.png)', NULL, 1),
(10, 'Growbox', '', '2021-04-14 12:49:04', '2021-04-14 12:46:42.000000', '2023-08-23 21:49:54.236000', 'Szablon aukcji Allegro', 'www', 'Growbox', 'Szablon wykonany dla sklepu sprzedającego swoje produkty na portalu Allegro.\n\nKompatybilny również z [edytorem szablonów](/realizacje/ebay_allegro_editor_wyswig).\n\n![](/uploads/growbox_template2_a4e517ca3f.jpeg)\n\n![](/uploads/template2growshop_335x1024_8d2bffaf3f.jpeg)', NULL, 1),
(11, 'miniTermo / Arduino Termostat FAN relay on ESP-01S / DHT22', '', NULL, '2022-02-13 19:41:35.000000', '2023-06-13 17:36:09.000000', '', 'grafika', 'miniTermo-Arduino-Termostat-FAN-relay-on-ESP-01S-DHT22', '\nThis is minithermo, automated thermostat for wind turbine in fireplace.\n\nCss animations of circles to indicate that the fan is on and is rotaiting.\n\nSetting up trigger temperature is made by scrolling on circle itself.\n\nDYI box made from PVC. \n\n\nFutures:\n\n* ArduinoOTA\n* Update values on all devices in realtime.\n* DHT11 as temperture sensor.\n* Outside temperature from weather API.\n\n\nCase is a simple and fast deign made from PVC sheet\n\n[Watch on youtoobe](https://youtube.com/shorts/kibLesHWCm4)\n\n\n![](/uploads/mini_Thermo1_09148219ea.jpeg)![](/uploads/mini_Thermo_d0eaae7f5f.jpeg)\n![](/uploads/pobrane_1_440cd36d1a.png)', NULL, NULL),
(12, 'Talbot Matra Rancho RC', '', NULL, '2022-02-13 20:04:27.000000', '2023-06-30 18:10:24.000000', 'Arduino (ESP-NOW) Upgrade for RC model from JOUSTRA.', 'www', 'Talbot-Matra-Rancho-RC', '\nOriginally  TALBOT MATRA RANCHO has 27.125 MHz analog controller.  \n\nCustom firmware for RC controller in arduino, operating on wireless protocol engineered by Espressif Systems named ESP-NOW. \nController is fully proportional with four analog potentiometers and has tested range 430m.\nIt has integrated 132x32 oled display that shows the current direction of turn in percent and acceleration. \nIn addition, the display shows parameters such as the activation of automatic turn signals, high beams, dipped beams, etc. \n\nAn additional \"Menu\" button allows you to enter the menu system and set these parameters for the model.  And changing these parameters for the model by using direction and acceleration switches.\n\nModel is operating with NodeMcu V3 board (ESP8266 chip) and L293D Motor Shield. \n\nAfter connecting the transmitter to the USB port, access to the menu via the Serial console is available.\n\nFuture version will have option to control multiple models. \n\n\nMore info and code : \n[github.com/toshinori8](https://github.com/toshinori8/RC-Car-controlller-ESP-NOW)\n\nModel\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ycdJNxEAc44\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\n\n\nController \n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/NwuWYk7rdWE\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', NULL, NULL),
(13, 'ASPrinters logotyp', 'Logo of a company offering services in the field of delivery of printing equipment and consumables', '2022-02-23 18:24:23', '2022-02-23 18:23:38.000000', '2023-08-25 18:40:11.719000', 'Logotyp branża drukarska', 'logo', 'ASPrinters-logotyp', '![AsPrinters.jpg](/uploads/As_Printers_67222a6558.jpg)\n', NULL, 1),
(14, 'DirectParts Logo', '', '2023-06-11 19:51:07', '2022-02-23 18:26:29.000000', '2023-08-23 21:50:21.543000', 'Logotyp branża IT', 'logo', 'DirectParts-Logo', '![DirectParts.jpeg](/uploads/Direct_Parts_cf17abe223.jpeg)', NULL, 1),
(15, 'Malowanie Dachów FJ ', '', '2022-04-10 11:59:41', '2022-04-10 11:52:54.000000', '2023-08-25 17:03:45.892000', 'Profesjonalne usługi malowania dachów, metodą natryskową i tradycyjnie. ', 'www', 'Malowanie-Dachow-FJ', '\nStrona www. Profesjonalne Malowanie Dachów FJ  \n\n\n\n[https://malowanie-dachow-fj.pl](http://fj.adamkarski.art)\n\n\n\nFrontend  Next.js. \n\n![FJ-site-portfolio-nextjs.jpg](/uploads/FJ_site_portfolio_nextjs_5e535ac809.jpg)\n', NULL, 1),
(16, 'Opusel', NULL, '2022-04-26 21:02:56', '2022-04-26 21:02:54.000000', '2023-08-23 22:28:06.825000', 'Identyfikacja - Oleje liturgiczne', 'www', 'Opusel', '\n\n![Opusel - P1010113-2.jpg](/uploads/Opusel_P1010113_2_6026bbbafd.jpg)\n\n\n![Opusel - portfolio-Zbigniew-Adam-Karski.jpg](/uploads/Opusel_portfolio_Zbigniew_Adam_Karski_735b5c0a36.jpg)\n\n![Opusel - logo.jpg](/uploads/Opusel_logo_75b9a226fe.jpg)\n\n', NULL, 1),
(17, 'Simon Renovierungen', NULL, '2022-04-26 21:12:02', '2022-04-26 21:12:00.000000', '2023-08-23 21:54:25.942000', 'Logotyp norweskiej firmy budowlanej', 'www', 'Simon-Renovierungen', '![koszulki.jpg](/uploads/koszulki_931d594edd.jpg)\n![logo-karcz.jpg](/uploads/logo_karcz_02dc6c577c.jpg)', NULL, 1),
(18, 'Seve', NULL, '2022-04-26 21:18:21', '2022-04-26 21:18:13.000000', '2023-08-23 21:54:58.779000', 'Banery reklamowe - wypożyczalnia sprzętu budowlanego ', 'www', 'Seve', '![bilboard-seve-1024x377.jpg](/uploads/bilboard_seve_1024x377_f49db818a6.jpg)\n\n![banner-140x380.jpg](/uploads/banner_140x380_902c957ee5.jpg)', NULL, 1),
(33, 'Projektowanie i pielęgnacja ogrodów ', NULL, '2023-06-12 21:00:17', '2023-06-12 21:00:12.000000', '2023-08-23 22:24:12.074000', 'usługi z zakresu architektury', 'www', 'Projektowanie-i-pielegnacja-ogrodow', '[pielegnacja-ogrodow](http://fj.adamkarski.art/oferta/pielegnacja-ogrodow/)\n\n\n![FireShot Capture 052 - Pielęgnacja ogrodów - malowanie-dachow-fj.pl.png](/uploads/Fire_Shot_Capture_052_Pielegnacja_ogrodow_malowanie_dachow_fj_pl_645ad643d6.png)', NULL, 1),
(34, 'Elektrolabs', NULL, '2023-06-13 18:27:15', '2023-06-13 18:27:09.000000', '2023-08-23 21:55:58.205000', 'Usługi - elektryk z uprawnieniami', 'www', 'Elektrolabs', '\n[elektrolabs.pl](https://elektrolabs.pl/)\n\n\n\n![elektrolabs2-519x1024.jpeg](/uploads/elektrolabs2_519x1024_20331bc849.jpeg)', NULL, 1),
(35, 'Branding', NULL, '2023-06-30 17:42:29', '2023-06-30 17:42:27.000000', '2023-08-23 21:56:21.336000', 'Etykieta soku aroniowego ', 'grafika', 'Branding', '![aronia.jpg](/uploads/aronia_361bbd5121.jpg)', NULL, 1),
(36, 'Moroccan', NULL, '2023-06-30 17:47:39', '2023-06-30 17:47:35.000000', '2023-08-23 21:57:46.677000', 'Plakat występu zespołu baletu współczesnego Moroccan', 'www', 'Moroccan', 'Fotografia i DTP\n\n\n\n![teatrtanca.jpg](/uploads/teatrtanca_43f01c2e1f.jpg)', NULL, 1),
(37, 'Benica', NULL, '2023-06-30 17:53:58', '2023-06-30 17:53:55.000000', '2023-08-25 18:41:40.497000', 'Logotyp - naturalne kosmetyki', 'grafika', 'Benica', '![benica-logo.jpg](/uploads/benica_logo_cbb0df8698.jpg)', NULL, 1),
(38, 'Royal Canin - Segmnet Day ', NULL, '2023-06-30 17:57:07', '2023-06-30 17:57:05.000000', '2023-08-23 21:59:06.449000', 'Plakat spotkań integracyjnych Royal Canin', 'www', 'Royal-Canin-Segmnet-Day', '![Logo zatweirdzone  Royal Canin - Segment Day Polska.jpg](/uploads/Logo_zatweirdzone_Royal_Canin_Segment_Day_Polska_d81bae858a.jpg)', NULL, 1),
(39, 'Bisico', NULL, '2023-06-30 19:01:40', '2023-06-30 19:01:35.000000', '2023-08-25 18:42:35.901000', 'Katalog produktów', 'grafika', 'Bisico', '![bisico catalog.jpg](/uploads/bisico_catalog_5b092716ef.jpg)\n\n![bisico catalog4.jpg](/uploads/bisico_catalog4_ff79e313f4.jpg)\n\n![bisico catalog2.jpg](/uploads/bisico_catalog2_b56315e0b4.jpg)\n\n![bisico catalog5.jpg](/uploads/bisico_catalog5_9f494a5a5a.jpg)\n\n![bisico catalog6.jpg](/uploads/bisico_catalog6_c678755a8a.jpg)\n\n', NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `portfolios_tags_links`
--

CREATE TABLE `portfolios_tags_links` (
  `id` int UNSIGNED NOT NULL,
  `portfolio_id` int UNSIGNED DEFAULT NULL,
  `tag_id` int UNSIGNED DEFAULT NULL,
  `tag_order` double UNSIGNED DEFAULT NULL,
  `portfolio_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `portfolios_tags_links`
--

INSERT INTO `portfolios_tags_links` (`id`, `portfolio_id`, `tag_id`, `tag_order`, `portfolio_order`) VALUES
(1, 13, 13, 2, 1),
(2, 13, 11, 1, 1),
(3, 1, 2, 1, 1),
(4, 4, 4, 2, 1),
(5, 4, 3, 1, 1),
(6, 5, 4, 2, 2),
(7, 5, 6, 1, 1),
(8, 6, 3, 2, 2),
(9, 6, 8, 1, 1),
(10, 7, 3, 2, 3),
(11, 7, 8, 1, 2),
(12, 9, 1, 3, 1),
(13, 9, 3, 2, 4),
(14, 9, 4, 1, 3),
(15, 10, 3, 2, 5),
(16, 10, 9, 1, 1),
(17, 14, 11, 1, 2),
(18, 15, 9, 2, 2),
(19, 15, 12, 1, 1),
(20, 16, 11, 1, 3),
(21, 17, 11, 1, 4),
(22, 18, 13, 2, 2),
(23, 18, 11, 1, 5),
(24, 33, 13, 3, 3),
(25, 33, 11, 2, 6),
(26, 33, 12, 1, 2),
(27, 34, 3, 2, 6),
(28, 34, 1, 1, 2),
(29, 35, 13, 2, 4),
(30, 35, 11, 1, 7),
(31, 36, 13, 1, 5),
(32, 37, 11, 1, 8),
(33, 38, 11, 1, 9),
(34, 39, 13, 2, 6),
(35, 39, 11, 1, 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'list', '', 'read-only', 'ea0e3b32136a36a34c7731b70739b755ef7f8edcc3de55eed713288a13b417c5723d51c31d021c849464ec29316c78081194dadeca1cb88eed50920ad5cff06a', NULL, NULL, NULL, '2023-08-23 17:46:05.721000', '2023-08-23 17:47:55.591000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int UNSIGNED NOT NULL,
  `api_token_permission_id` int UNSIGNED DEFAULT NULL,
  `api_token_id` int UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"api::portfolio.portfolio\":{\"kind\":\"collectionType\",\"collectionName\":\"portfolios\",\"info\":{\"description\":\"\",\"singularName\":\"portfolio\",\"pluralName\":\"portfolios\",\"displayName\":\"portfolios\"},\"options\":{\"draftAndPublish\":true},\"attributes\":{\"title\":{\"type\":\"string\"},\"miniatura\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"opis\":{\"type\":\"richtext\"},\"subtitle\":{\"type\":\"string\"},\"kategoria\":{\"type\":\"enumeration\",\"enum\":[\"www\",\"grafika\",\"logo\"],\"default\":\"www\"},\"tags\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::tag.tag\",\"inversedBy\":\"portfolios\"},\"slug\":{\"type\":\"string\",\"required\":true,\"unique\":true,\"maxLength\":100,\"minLength\":4,\"default\":\"404\"},\"content\":{\"type\":\"richtext\"},\"Laptop_Tablet_Mobile\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"portfolios\",\"info\":{\"description\":\"\",\"singularName\":\"portfolio\",\"pluralName\":\"portfolios\",\"displayName\":\"portfolios\"},\"options\":{\"draftAndPublish\":true},\"attributes\":{\"title\":{\"type\":\"string\"},\"miniatura\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"opis\":{\"type\":\"richtext\"},\"subtitle\":{\"type\":\"string\"},\"kategoria\":{\"type\":\"enumeration\",\"enum\":[\"www\",\"grafika\",\"logo\"],\"default\":\"www\"},\"tags\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::tag.tag\",\"inversedBy\":\"portfolios\"},\"slug\":{\"type\":\"string\",\"required\":true,\"unique\":true,\"maxLength\":100,\"minLength\":4,\"default\":\"404\"},\"content\":{\"type\":\"richtext\"},\"Laptop_Tablet_Mobile\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"portfolio\",\"connection\":\"default\",\"uid\":\"api::portfolio.portfolio\",\"apiName\":\"portfolio\",\"globalId\":\"Portfolio\",\"actions\":{},\"lifecycles\":{}},\"api::tag.tag\":{\"kind\":\"collectionType\",\"collectionName\":\"tags\",\"info\":{\"singularName\":\"tag\",\"pluralName\":\"tags\",\"displayName\":\"tags\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":true},\"attributes\":{\"tag_name\":{\"type\":\"string\"},\"portfolios\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::portfolio.portfolio\",\"mappedBy\":\"tags\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"tags\",\"info\":{\"singularName\":\"tag\",\"pluralName\":\"tags\",\"displayName\":\"tags\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":true},\"attributes\":{\"tag_name\":{\"type\":\"string\"},\"portfolios\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::portfolio.portfolio\",\"mappedBy\":\"tags\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"tag\",\"connection\":\"default\",\"uid\":\"api::tag.tag\",\"apiName\":\"tag\",\"globalId\":\"Tag\",\"actions\":{},\"lifecycles\":{}},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"}}', 'object', NULL, NULL),
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(6, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"uid\":\"admin::transfer-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"uid\":\"admin::transfer-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', ''),
(16, 'plugin_upload_view_configuration', '{\"pageSize\":100,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(17, 'plugin_upload_metrics', '{\"weeklySchedule\":\"27 10 15 * * 6\",\"lastWeeklyUpdate\":1733580627032}', 'object', NULL, NULL),
(18, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]}}', 'object', '', ''),
(19, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(20, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', '', ''),
(21, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(22, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(34, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(35, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]}}', 'object', NULL, NULL),
(36, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(37, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(39, 'plugin_content_manager_configuration_content_types::api::portfolio.portfolio', '{\"uid\":\"api::portfolio.portfolio\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":false,\"pageSize\":100,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"miniatura\":{\"edit\":{\"label\":\"miniatura\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"miniatura\",\"searchable\":false,\"sortable\":false}},\"opis\":{\"edit\":{\"label\":\"opis\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"opis\",\"searchable\":false,\"sortable\":false}},\"subtitle\":{\"edit\":{\"label\":\"subtitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subtitle\",\"searchable\":true,\"sortable\":true}},\"kategoria\":{\"edit\":{\"label\":\"kategoria\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kategoria\",\"searchable\":true,\"sortable\":true}},\"tags\":{\"edit\":{\"label\":\"tags\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"tag_name\"},\"list\":{\"label\":\"tags\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}},\"Laptop_Tablet_Mobile\":{\"edit\":{\"label\":\"Laptop_Tablet_Mobile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Laptop_Tablet_Mobile\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"miniatura\",\"size\":6}],[{\"name\":\"opis\",\"size\":12}],[{\"name\":\"Laptop_Tablet_Mobile\",\"size\":6},{\"name\":\"subtitle\",\"size\":6}],[{\"name\":\"kategoria\",\"size\":6}],[{\"name\":\"tags\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"content\",\"size\":12}]],\"list\":[\"id\",\"title\",\"miniatura\",\"subtitle\",\"Laptop_Tablet_Mobile\"]}}', 'object', NULL, NULL),
(40, 'plugin_content_manager_configuration_content_types::api::tag.tag', '{\"uid\":\"api::tag.tag\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"tag_name\",\"defaultSortBy\":\"tag_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"tag_name\":{\"edit\":{\"label\":\"tag_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tag_name\",\"searchable\":true,\"sortable\":true}},\"portfolios\":{\"edit\":{\"label\":\"portfolios\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"portfolios\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"tag_name\",\"portfolios\",\"createdAt\"],\"edit\":[[{\"name\":\"tag_name\",\"size\":6},{\"name\":\"portfolios\",\"size\":6}]]}}', 'object', NULL, NULL),
(42, 'plugin_documentation_config', '{\"restrictedAccess\":false}', 'object', NULL, NULL),
(43, 'core_admin_project-settings', '{\"menuLogo\":{\"name\":\"logotype.jpeg\",\"hash\":\"logotype_50512ece46\",\"url\":\"/uploads/logotype_50512ece46.jpeg\",\"width\":472,\"height\":251,\"ext\":\".jpeg\",\"size\":25.72,\"provider\":\"local\"},\"authLogo\":{\"name\":\"logotype.jpeg\",\"hash\":\"logotype_bd48b0c704\",\"url\":\"/uploads/logotype_bd48b0c704.jpeg\",\"width\":472,\"height\":251,\"ext\":\".jpeg\",\"size\":25.72,\"provider\":\"local\"}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int UNSIGNED NOT NULL,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(7, '{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"portfolios\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"opis\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subtitle\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"kategoria\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"portfolios_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"portfolios_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"portfolios_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"portfolios_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"tags\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"tag_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"tags_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"tags_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"tags_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"tags_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"upload_files_created_at_index\", \"type\": null, \"columns\": [\"created_at\"]}, {\"name\": \"upload_files_updated_at_index\", \"type\": null, \"columns\": [\"updated_at\"]}, {\"name\": \"upload_files_name_index\", \"type\": null, \"columns\": [\"name\"]}, {\"name\": \"upload_files_size_index\", \"type\": null, \"columns\": [\"size\"]}, {\"name\": \"upload_files_ext_index\", \"type\": null, \"columns\": [\"ext\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"admin_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_users_roles_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"admin_users_roles_links_order_fk\", \"columns\": [\"role_order\"]}, {\"name\": \"admin_users_roles_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"api_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"api_token_permission_id\", \"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_order_inv_fk\", \"columns\": [\"api_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"transfer_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"transfer_token_permission_id\", \"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_order_inv_fk\", \"columns\": [\"transfer_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"portfolios_tags_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"portfolio_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"portfolio_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"portfolios_tags_links_fk\", \"columns\": [\"portfolio_id\"]}, {\"name\": \"portfolios_tags_links_inv_fk\", \"columns\": [\"tag_id\"]}, {\"name\": \"portfolios_tags_links_unique\", \"type\": \"unique\", \"columns\": [\"portfolio_id\", \"tag_id\"]}, {\"name\": \"portfolios_tags_links_order_fk\", \"columns\": [\"tag_order\"]}, {\"name\": \"portfolios_tags_links_order_inv_fk\", \"columns\": [\"portfolio_order\"]}], \"foreignKeys\": [{\"name\": \"portfolios_tags_links_fk\", \"columns\": [\"portfolio_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"portfolios\", \"referencedColumns\": [\"id\"]}, {\"name\": \"portfolios_tags_links_inv_fk\", \"columns\": [\"tag_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"tags\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_related_morphs_order_index\", \"type\": null, \"columns\": [\"order\"]}, {\"name\": \"files_related_morphs_id_column_index\", \"type\": null, \"columns\": [\"related_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"file_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"files_folder_links_unique\", \"type\": \"unique\", \"columns\": [\"file_id\", \"folder_id\"]}, {\"name\": \"files_folder_links_order_inv_fk\", \"columns\": [\"file_order\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_unique\", \"type\": \"unique\", \"columns\": [\"folder_id\", \"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_order_inv_fk\", \"columns\": [\"folder_order\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"up_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_users_role_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"up_users_role_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}]}', '2023-08-26 21:02:44', '0cc286707b9ddaf70552f5e468a04aae');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_transfer_token_permissions_token_links`
--

CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int UNSIGNED NOT NULL,
  `transfer_token_permission_id` int UNSIGNED DEFAULT NULL,
  `transfer_token_id` int UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `strapi_webhooks`
--

INSERT INTO `strapi_webhooks` (`id`, `name`, `url`, `headers`, `events`, `enabled`) VALUES
(1, 'Public', 'http://strapi.adamkarski.art/uploads/', '{\"Access-Control-Request-Headers\": \"*\"}', '[\"entry.create\", \"media.create\", \"media.update\", \"entry.update\", \"entry.delete\", \"media.delete\", \"entry.publish\", \"entry.unpublish\"]', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tags`
--

CREATE TABLE `tags` (
  `id` int UNSIGNED NOT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_name`, `published_at`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'parcel', '2021-03-28 17:02:28', '2021-03-28 17:01:23.000000', '2021-03-28 17:02:28.000000', NULL, NULL),
(2, 'angular', '2021-03-28 17:02:33', '2021-03-28 17:02:12.000000', '2021-03-28 17:02:34.000000', NULL, NULL),
(3, 'html5', '2021-03-28 21:27:19', '2021-03-28 21:27:16.000000', '2021-03-28 21:27:19.000000', NULL, NULL),
(4, 'jquery', '2021-03-28 21:27:36', '2021-03-28 21:27:31.000000', '2021-03-29 10:43:56.000000', NULL, NULL),
(6, 'cakephp', '2021-03-29 10:38:22', '2021-03-29 10:38:14.000000', '2021-03-29 10:38:22.000000', NULL, NULL),
(7, 'php', '2021-03-29 10:38:37', '2021-03-29 10:38:34.000000', '2021-03-29 10:38:38.000000', NULL, NULL),
(8, 'wordpress', '2021-03-29 12:04:32', '2021-03-29 12:02:11.000000', '2021-03-29 12:04:32.000000', NULL, NULL),
(9, 'css', '2021-03-29 22:58:25', '2021-03-29 22:58:23.000000', '2021-03-29 22:58:25.000000', NULL, NULL),
(10, 'arduino', NULL, '2022-02-13 19:41:58.000000', '2023-07-06 18:12:00.000000', NULL, NULL),
(11, 'Illustrator', '2022-04-18 11:15:55', '2022-02-23 18:23:49.000000', '2022-04-18 11:15:55.000000', NULL, NULL),
(12, 'Nextjs', '2022-04-18 11:17:56', '2022-04-10 13:36:50.000000', '2022-04-18 11:17:56.000000', NULL, NULL),
(13, 'photoshop', '2023-06-30 19:12:35', '2023-06-30 19:05:48.000000', '2023-06-30 19:12:35.000000', NULL, NULL),
(14, 'all', NULL, '2023-07-06 19:21:54.000000', '2023-07-06 19:22:07.000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int UNSIGNED NOT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `inv_folder_id` int UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(3, 'plugin::users-permissions.auth.callback', '2023-08-22 22:43:37.706000', '2023-08-22 22:43:37.706000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2023-08-22 22:43:37.706000', '2023-08-22 22:43:37.706000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2023-08-22 22:43:37.706000', '2023-08-22 22:43:37.706000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2023-08-22 22:43:37.706000', '2023-08-22 22:43:37.706000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2023-08-22 22:43:37.706000', '2023-08-22 22:43:37.706000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2023-08-22 22:43:37.707000', '2023-08-22 22:43:37.707000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-08-22 22:43:37.707000', '2023-08-22 22:43:37.707000', NULL, NULL),
(14, 'api::tag.tag.find', '2023-08-23 18:08:29.469000', '2023-08-23 18:08:29.469000', NULL, NULL),
(15, 'api::tag.tag.findOne', '2023-08-23 18:08:29.469000', '2023-08-23 18:08:29.469000', NULL, NULL),
(16, 'plugin::i18n.locales.listLocales', '2023-08-23 18:08:29.469000', '2023-08-23 18:08:29.469000', NULL, NULL),
(17, 'plugin::email.email.send', '2023-08-23 18:08:29.469000', '2023-08-23 18:08:29.469000', NULL, NULL),
(19, 'api::portfolio.portfolio.find', '2023-08-23 18:12:14.445000', '2023-08-23 18:12:14.445000', NULL, NULL),
(21, 'plugin::upload.content-api.find', '2023-08-25 18:34:28.730000', '2023-08-25 18:34:28.730000', NULL, NULL),
(22, 'plugin::upload.content-api.findOne', '2023-08-25 18:34:28.730000', '2023-08-25 18:34:28.730000', NULL, NULL),
(23, 'plugin::upload.content-api.destroy', '2023-08-25 18:34:28.730000', '2023-08-25 18:34:28.730000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(3, 3, 2, 1),
(4, 4, 2, 1),
(5, 5, 2, 1),
(6, 7, 2, 1),
(7, 8, 2, 1),
(8, 6, 2, 1),
(9, 9, 2, 2),
(14, 17, 2, 3),
(15, 16, 2, 3),
(16, 14, 2, 3),
(17, 15, 2, 3),
(18, 19, 2, 4),
(21, 22, 2, 5),
(22, 21, 2, 5),
(23, 23, 2, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-08-22 22:43:37.693000', '2023-08-25 23:57:35.656000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `up_users`
--

CREATE TABLE `up_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indeksy dla tabeli `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indeksy dla tabeli `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indeksy dla tabeli `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Indeksy dla tabeli `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_created_by_id_fk` (`created_by_id`),
  ADD KEY `portfolios_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `portfolios_tags_links`
--
ALTER TABLE `portfolios_tags_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portfolios_tags_links_unique` (`portfolio_id`,`tag_id`),
  ADD KEY `portfolios_tags_links_fk` (`portfolio_id`),
  ADD KEY `portfolios_tags_links_inv_fk` (`tag_id`),
  ADD KEY `portfolios_tags_links_order_fk` (`tag_order`),
  ADD KEY `portfolios_tags_links_order_inv_fk` (`portfolio_order`);

--
-- Indeksy dla tabeli `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indeksy dla tabeli `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Indeksy dla tabeli `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_created_by_id_fk` (`created_by_id`),
  ADD KEY `tags_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indeksy dla tabeli `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indeksy dla tabeli `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indeksy dla tabeli `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `portfolios_tags_links`
--
ALTER TABLE `portfolios_tags_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `portfolios_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `portfolios_tags_links`
--
ALTER TABLE `portfolios_tags_links`
  ADD CONSTRAINT `portfolios_tags_links_fk` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `portfolios_tags_links_inv_fk` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tags_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
