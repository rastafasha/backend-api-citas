-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 05-12-2023 a las 16:16:50
-- Versión del servidor: 5.7.34
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_rest_citasmedicas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor_schedule_hours`
--

CREATE TABLE `doctor_schedule_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hour_start` varchar(50) NOT NULL,
  `hour_end` varchar(50) NOT NULL,
  `hour` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `doctor_schedule_hours`
--

INSERT INTO `doctor_schedule_hours` (`id`, `hour_start`, `hour_end`, `hour`, `created_at`, `updated_at`) VALUES
(1, '08:00:00', '08:15:00', '08', NULL, NULL),
(2, '08:15:00', '08:30:00', '08', NULL, NULL),
(3, '08:30:00', '08:45:00', '08', NULL, NULL),
(4, '08:45:00', '09:00:00', '08', NULL, NULL),
(5, '09:00:00', '09:15:00', '09', NULL, NULL),
(6, '09:15:00', '09:30:00', '09', NULL, NULL),
(7, '09:30:00', '09:45:00', '09', NULL, NULL),
(8, '09:45:00', '10:00:00', '09', NULL, NULL),
(9, '10:00:00', '10:15:00', '10', NULL, NULL),
(10, '10:15:00', '10:30:00', '10', NULL, NULL),
(11, '10:30:00', '10:45:00', '10', NULL, NULL),
(12, '10:45:00', '11:00:00', '10', NULL, NULL),
(13, '11:00:00', '11:15:00', '11', NULL, NULL),
(14, '11:15:00', '11:30:00', '11', NULL, NULL),
(15, '11:30:00', '11:45:00', '11', NULL, NULL),
(16, '11:45:00', '12:00:00', '11', NULL, NULL),
(17, '12:00:00', '12:15:00', '12', NULL, NULL),
(18, '12:15:00', '12:30:00', '12', NULL, NULL),
(19, '12:30:00', '12:45:00', '12', NULL, NULL),
(20, '12:45:00', '13:00:00', '12', NULL, NULL),
(21, '13:00:00', '13:15:00', '13', NULL, NULL),
(22, '13:15:00', '13:30:00', '13', NULL, NULL),
(23, '13:30:00', '13:45:00', '13', NULL, NULL),
(24, '13:45:00', '14:00:00', '13', NULL, NULL),
(25, '14:00:00', '14:15:00', '14', NULL, NULL),
(26, '14:15:00', '14:30:00', '14', NULL, NULL),
(27, '14:30:00', '14:45:00', '14', NULL, NULL),
(28, '14:45:00', '15:00:00', '14', NULL, NULL),
(29, '15:00:00', '15:15:00', '15', NULL, NULL),
(30, '15:15:00', '15:30:00', '15', NULL, NULL),
(31, '15:30:00', '15:45:00', '15', NULL, NULL),
(32, '15:45:00', '16:00:00', '15', NULL, NULL),
(33, '16:00:00', '16:15:00', '16', NULL, NULL),
(34, '16:15:00', '16:30:00', '16', NULL, NULL),
(35, '16:30:00', '16:45:00', '16', NULL, NULL),
(36, '16:45:00', '17:00:00', '16', NULL, NULL),
(37, '17:00:00', '17:15:00', '17', NULL, NULL),
(38, '17:15:00', '17:30:00', '17', NULL, NULL),
(39, '17:30:00', '17:45:00', '17', NULL, NULL),
(40, '17:45:00', '18:00:00', '17', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_30_175428_create_jobs_table', 1),
(6, '2022_12_18_035041_create_contacts_table', 1),
(7, '2023_11_29_231903_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `surname` varchar(250) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `n_doc` varchar(50) DEFAULT NULL,
  `birth_day` timestamp NULL DEFAULT NULL,
  `antecedent_family` text,
  `antecedent_personal` text,
  `antecedent_alerg` text,
  `ta` varchar(250) DEFAULT NULL COMMENT 'presion arterial',
  `temperature` varchar(20) DEFAULT NULL,
  `fc` varchar(50) DEFAULT NULL COMMENT 'frecuencia cardiaca',
  `fr` varchar(50) DEFAULT NULL COMMENT 'frecuenca respiratoria',
  `peso` varchar(25) DEFAULT NULL,
  `current_desease` text COMMENT 'enfermedad actual',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patien_persons`
--

CREATE TABLE `patien_persons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name_companion` varchar(250) DEFAULT NULL,
  `surname_companion` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `relationship` varchar(250) DEFAULT NULL,
  `name_responsable` varchar(250) DEFAULT NULL,
  `surname_responsable` varchar(250) DEFAULT NULL,
  `mobile_responsable` varchar(50) DEFAULT NULL,
  `relationship_responsable` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'register_rol', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(2, 'list_rol', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(3, 'edit_rol', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(4, 'delete_rol', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(5, 'register_doctor', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(6, 'list_doctor', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(7, 'edit_doctor', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(8, 'delete_doctor', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(9, 'profile_doctor', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(10, 'register_patient', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(11, 'list_patient', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(12, 'edit_patient', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(13, 'delete_patient', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(14, 'profile_patient', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(15, 'register_staff', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(16, 'list_staff', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(17, 'edit_staff', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(18, 'delete_staff', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(19, 'register_appointment', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(20, 'list_appointment', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(21, 'edit_appointment', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(22, 'delete_appointment', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(23, 'register_specialty', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(24, 'list_specialty', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(25, 'edit_specialty', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(26, 'delete_specialty', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(27, 'show_payment', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(28, 'edit_payment', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(29, 'activitie', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(30, 'calendar', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(31, 'expense_report', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(32, 'invoice_report', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(33, 'settings', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SUPERADMIN', 'api', '2023-11-30 03:32:36', '2023-11-30 03:32:36'),
(2, 'DOCTOR', 'api', '2023-12-01 04:09:47', '2023-12-01 04:09:47'),
(4, 'RECEPCIÓN', 'api', '2023-12-01 04:38:36', '2023-12-02 23:29:30'),
(5, 'ENFERMERA', 'api', '2023-12-05 18:58:54', '2023-12-05 18:58:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(6, 2),
(9, 2),
(11, 2),
(14, 2),
(16, 2),
(19, 2),
(20, 2),
(24, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(6, 4),
(10, 4),
(11, 4),
(12, 4),
(14, 4),
(16, 4),
(19, 4),
(20, 4),
(24, 4),
(29, 4),
(30, 4),
(6, 5),
(11, 5),
(12, 5),
(14, 5),
(20, 5),
(29, 5),
(30, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specialities`
--

CREATE TABLE `specialities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `specialities`
--

INSERT INTO `specialities` (`id`, `name`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Anestesiologías', 1, '2023-10-04 07:18:43', '2023-10-04 07:22:16', NULL),
(2, 'Anatomía Patológica', 1, '2023-10-04 07:22:58', '2023-10-04 07:22:58', NULL),
(3, 'Cardiología Intervencionista', 1, '2023-10-04 07:23:05', '2023-10-04 07:23:05', NULL),
(4, 'Cirugía Pediátrica', 1, '2023-10-04 07:23:09', '2023-10-04 07:23:09', NULL),
(5, 'Cirugía General', 1, '2023-10-04 07:23:14', '2023-10-04 07:23:14', NULL),
(6, 'Dermatología', 1, '2023-10-04 07:23:21', '2023-10-04 07:23:21', NULL),
(7, 'Gastroenterología', 1, '2023-10-04 07:23:28', '2023-10-04 07:23:28', NULL),
(8, 'Ginegología y Obstetricia', 2, '2023-10-04 07:23:57', '2023-10-04 07:25:14', NULL),
(9, 'Cardiología', 1, '2023-12-03 18:15:57', '2023-12-03 18:15:57', NULL),
(10, 'Pediatría', 1, '2023-12-03 18:16:12', '2023-12-03 18:16:12', NULL),
(11, 'Odontología', 1, '2023-12-03 18:16:20', '2023-12-03 18:16:20', NULL),
(12, 'Cirugía-Bucal', 1, '2023-12-03 18:16:32', '2023-12-03 18:16:32', NULL),
(13, 'Cirugía-Bucomaxilofacial', 1, '2023-12-03 18:16:45', '2023-12-03 18:16:45', NULL),
(14, 'Urgencias', 2, '2023-12-03 18:16:53', '2023-12-03 23:21:52', '2023-12-03 23:21:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rolename` enum('SUPERADMIN','ADMIN','MEMBER','GUEST') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'GUEST',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` timestamp NULL DEFAULT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1:masculino,2:femenino',
  `education` longtext COLLATE utf8mb4_unicode_ci,
  `designation` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `rolename`, `email`, `surname`, `phone`, `birth_date`, `gender`, `education`, `designation`, `address`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'superadmin', 'SUPERADMIN', 'superadmin@superadmin.com', NULL, NULL, NULL, 1, NULL, '', NULL, NULL, '2023-11-30 03:32:36', '$2y$10$PiKCOHK3XOBlqiL0kgJwLOMILMA6uVAAS1ou7JqHsUQaH4yvPkAiC', 'guHmnxhKw1', '2023-11-30 03:32:36', '2023-11-30 03:32:36', NULL),
(2, 'doctor', 'GUEST', 'doctor@doctor.com', NULL, NULL, NULL, 1, NULL, '', NULL, NULL, NULL, '$2y$10$qKLbv6rfjRuCoZelOTJsnurOI.kFa4Gn4SFyl/RHA9ysiowkSzWJm', NULL, '2023-12-02 02:17:13', '2023-12-02 02:17:13', NULL),
(12, 'prueba2', 'GUEST', 'prueba2@prueba2.com', 'prueba2', NULL, '2023-12-05 06:27:18', 1, 'prueba2', 'prueba2', 'prueba2', 'staffs/w3eiwsiRpa5QBtzFViXzIckMtVGbf2MqRUTmbZ4S.jpg', NULL, '$2y$10$iA9oLfUJ7H284PUBxDP0EuCSjWoqM2yccJJpbfjOadYsrLzi7kDV2', NULL, '2023-12-03 22:12:21', '2023-12-05 18:27:18', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctor_schedule_hours`
--
ALTER TABLE `doctor_schedule_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `patien_persons`
--
ALTER TABLE `patien_persons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `specialities`
--
ALTER TABLE `specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `doctor_schedule_hours`
--
ALTER TABLE `doctor_schedule_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `patien_persons`
--
ALTER TABLE `patien_persons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `specialities`
--
ALTER TABLE `specialities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
