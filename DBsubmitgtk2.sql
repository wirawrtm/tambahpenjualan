-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 25, 2022 at 03:32 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `submitgtk2`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `cabang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `produk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `cabang`, `sg`, `produk`, `limit`, `created_at`, `updated_at`) VALUES
(17, 'KCP MMU Sidoarjo Pasar Porong 1', 'Anisa', 'KSM', '50', NULL, NULL),
(19, 'Sidoarjo 1', 'EPRIN FADHILLAH', 'KSM', '43', '2022-02-15 00:00:16', '2022-02-15 00:00:16'),
(20, 'Surabaya Bandara Juanda 1', 'RAMADHITYA HANNING PRAKOSO', 'KUR', '230', '2022-02-17 00:34:53', '2022-02-17 00:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `datasg`
--

CREATE TABLE `datasg` (
  `cabang` varchar(33) DEFAULT NULL,
  `nip` bigint(10) DEFAULT NULL,
  `level` varchar(9) DEFAULT NULL,
  `sg` varchar(30) DEFAULT NULL,
  `jenis` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datasg`
--

INSERT INTO `datasg` (`cabang`, `nip`, `level`, `sg`, `jenis`) VALUES
('Sidoarjo Sedati 1', 1988391015, 'SENIOR', 'Rizal Arifin', 'SGK'),
('Sidoarjo Candi 1', 1792170265, 'JUNIOR', 'NURUL HIDAYATI', 'SGK'),
('Sidoarjo Pahlawan 1', 2197560055, 'JUNIOR', 'ALMAS GHASSANI RURKY', 'SGK'),
('Sidoarjo Gateway 1', 1390070324, 'JUNIOR', 'ROUF SUHARTANTO', 'SGK'),
('Sidoarjo Gateway 1', 1491010350, 'JUNIOR', 'JUWITA MAYANG TRISNAWATI', 'SGK'),
('Sidoarjo Pahlawan 1', 1289010842, 'JUNIOR', 'DENY HENDRA SETIAWAN', 'SGK'),
('Surabaya Bandara Juanda 1', 2094560094, 'JUNIOR', 'AULIA DARMAWAN', 'SGK'),
('Sidoarjo Candi 1', 2098560016, 'JUNIOR', 'NURUL BAGUS WIRANTO', 'SGK'),
('Sidoarjo 1', 2096560013, 'JUNIOR', 'EPRIN FADHILLAH', 'SGK'),
('KCP MMU Sidoarjo Pasar Porong 1', 1790270445, 'JUNIOR', 'FRENDIKA EKO KARYANTO', 'SGK'),
('Sidoarjo 1', 1387010975, 'SENIOR', 'AINUN JARIYAH', 'SGK'),
('Surabaya Bandara Juanda 1', 1990390139, 'SENIOR', 'SATRIYA ISMUJATI PRAMANTO', 'SGK'),
('Sidoarjo Sepanjang 1', 1995390486, 'JUNIOR', 'IKA DEWI PURWANTI', 'SGK'),
('Sidoarjo Gateway 1', 1898390510, 'JUNIOR', 'SHAVIRA EVANI', 'SGK'),
('Surabaya Bandara Juanda 1', 2095560109, 'JUNIOR', 'Anisah Sumardi', 'SGK'),
('Sidoarjo Sepanjang 1', 1381010329, 'JUNIOR', 'YENI PURWATININGRUM SH', 'SGK'),
('Sidoarjo Sedati 1', 1486071119, 'JUNIOR', 'DHEKA KOESENDRATNO', 'SGK'),
('KCM Sidoarjo Kota 1', 1895390092, 'JUNIOR', 'Eka Fitria Wulandari', 'SGK'),
('Sidoarjo Gedangan 1', 2193560085, 'JUNIOR', 'AGUNG TRILAKSONO', 'SGK'),
('Sidoarjo Gateway 1', 2195560132, 'JUNIOR', 'VERICA PUTRI RAHMA', 'SGK'),
('KCP MMU Sidoarjo Sepanjang Kota 1', 1888390499, 'JUNIOR', 'Saiful Arifin', 'SGK'),
('Sidoarjo Sedati 1', 1996390145, 'JUNIOR', 'Mochammad Yanuar Firrizky', 'SGK'),
('Sidoarjo Krian 1', 1889390098, 'JUNIOR', 'SAIFUR RAHMAN', 'SGK'),
('Sidoarjo Sepanjang 1', 1788270290, 'JUNIOR', 'RISKA NOVARIYANTI', 'SGK'),
('Surabaya Bandara Juanda 1', 783011490, 'JUNIOR', 'MOCH SAIFUL', 'SGK'),
('Sidoarjo Pahlawan 1', 1484070116, 'JUNIOR', 'EKA YUNI KUSUMA NINGRUM', 'SGK'),
('Sidoarjo 1', 1998390728, 'JUNIOR', 'DONDA SL PANJAITAN', 'SGK'),
('Sidoarjo Krian 1', 2192560094, 'JUNIOR', 'NUKMAN MARADANI', 'SGK'),
('Sidoarjo Candi 1', 2190560093, 'JUNIOR', 'BAHTIAR RAMADHAN', 'SGK'),
('Sidoarjo Gedangan 1', 1990390352, 'JUNIOR', 'WINA KARTIKASARI', 'SGK'),
('Sidoarjo Sedati 1', 2094560061, 'JUNIOR', 'DWINTHA ARGADIANI AGFA', 'SGK'),
('Sidoarjo Gedangan 1', 1989390924, 'JUNIOR', 'JOUHAR TAUFIQURROHMAN', 'SGK'),
('KCM Sidoarjo Kota 1', 1794270286, 'EXECUTIVE', 'Joni Adi Wibowo', 'SGP'),
('KCP MMU Sidoarjo Pasar Porong 1', 1890390709, 'EXECUTIVE', 'ANGGIE IKA RAHMAYATI', 'SGP'),
('Sidoarjo Sepanjang 1', 1686270149, 'EXECUTIVE', 'Muchamad Nur Qomari', 'SGP'),
('Sidoarjo Gedangan 1', 1082700284, 'EXECUTIVE', 'DANANG PERMANA', 'SGP'),
('Sidoarjo Krian 1', 1087700005, 'EXECUTIVE', 'FIRMAN AWALUDIN', 'SGP'),
('Sidoarjo Candi 1', 1589010172, 'SENIOR', 'Danny Setiawan', 'SGP'),
('Sidoarjo Sedati 1', 1792270458, 'EXECUTIVE', 'MOH SYAIFUL ROHMAN', 'SGP'),
('KCP MMU Sidoarjo Pasar Porong 1', 1791270401, 'EXECUTIVE', 'RISMA NORA PUJITYASTUTI', 'SGP'),
('Sidoarjo Gateway 1', 1184700352, 'SENIOR', 'IVAN ERLANGGA', 'SGP'),
('KCM Sidoarjo Tulangan 1', 1193070612, 'EXECUTIVE', 'ALFIAN HAQ MALIKUL MULKI', 'SGP'),
('KCP MMU Sidoarjo Sukodono 1', 1590010801, 'EXECUTIVE', 'Suci kurnia Ramadhani', 'SGP'),
('Sidoarjo Krian 1', 1688270069, 'EXECUTIVE', 'SYAIFUL BAKRI', 'SGP'),
('KCM Sidoarjo Tulangan 1', 1793270285, 'SENIOR', 'HARTO', 'SGP'),
('Sidoarjo Pahlawan 1', 981100636, 'EXECUTIVE', 'BILLY ARYA SAPUTRA', 'SGP'),
('Sidoarjo 1', 1380070034, 'EXECUTIVE', 'AMRIN NADIF', 'SGP'),
('KCP MMU Sidoarjo Sepanjang Kota 1', 2091560008, 'SENIOR', 'Achmat Khoiridho Al Amin', 'SGP'),
('KCP MMU Sidoarjo Sepanjang Kota 1', 1889390710, 'SENIOR', 'Bagus Tansa Trisna', 'SGP'),
('Sidoarjo Pahlawan 1', 1589010174, 'SENIOR', 'Hariono', 'SGP'),
('KCP MMU Sidoarjo Sukodono 1', 1487070859, 'SENIOR', 'sadi suhada irfan', 'SGP'),
('KCM Sidoarjo Tulangan 1', 1691270056, 'SENIOR', 'GURUH HADI SAPUTRA', 'SGP'),
('KCP MMU Sidoarjo Sepanjang Kota 1', 1992390689, 'JUNIOR', 'MARISATUS SOBIRO', 'SGP'),
('KCP MMU Sidoarjo Sukodono 1', 1489070851, 'SENIOR', 'DICKY MUJIHASTOMO', 'SGP'),
('Sidoarjo 1', 1897390661, 'EXECUTIVE', 'MUHAMMAD WAHYU PAMUJI MAHENDRA', 'SGP'),
('Sidoarjo Sepanjang 1', 2094560133, 'JUNIOR', 'EKA APRILIA SUGIARTI', 'SGP'),
('Sidoarjo Gedangan 1', 2196560143, 'TRAINEE', 'DWI HENDRO PURWOKO', 'SGP'),
('Sidoarjo Candi 1', 1381070185, 'EXECUTIVE', 'Heru Teguh Sucahyo', 'SGP'),
('KCM Sidoarjo Kota 1', 2197560083, 'TRAINEE', 'ALVIAN FERRY MAHANDI', 'SGP'),
('Surabaya Bandara Juanda 1', 1993390111, 'EXECUTIVE', 'RAMADHITYA HANNING PRAKOSO', 'SGP'),
('Sidoarjo Sepanjang 1', 1283070037, 'EXECUTIVE', 'BASORI HARYONO', 'SGP'),
('KCM Sidoarjo Kota 1', 1790270031, 'SENIOR', 'Andre B Setyawan', 'SGP'),
('Sidoarjo Krian 1', 2197560027, 'JUNIOR', 'RAYNALDI FAUZAN AKBAR', 'SGP');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_11_025717_create_bookings_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
