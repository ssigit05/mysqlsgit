-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 02, 2022 at 02:59 PM
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
-- Database: `shotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','resepsionis') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'resepsionis',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `nama`, `username`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', 'admin', '$2y$10$DV3ei5Xmp/DJpsq6RkjwLuwNDgMMHKdxW6dU2pxVyO69UKqQUCIFe', NULL, '2022-04-23 03:41:33', '2022-04-23 03:41:33'),
(2, 'Resepsionis', 'resepsionis', 'resepsionis', '$2y$10$KAax3p863T27NaYjV7M1KeOqlPmqm8KPrm4bc3DJom2UPODEqs1PK', NULL, '2022-04-23 03:41:33', '2022-04-23 03:41:33'),
(3, 'ssgit', 'ssgit05', 'resepsionis', '$2y$10$epTO7FlXY0g//q/faoy5fudhEL2NJnBtztnbQyz65YAVRtd61FxG2', NULL, '2022-04-23 03:41:33', '2022-04-23 03:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_hotels`
--

CREATE TABLE `fasilitas_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_fasilitas_hotel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_fasilitas_hotel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_fasilitas_hotel` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fasilitas_hotels`
--

INSERT INTO `fasilitas_hotels` (`id`, `nama_fasilitas_hotel`, `foto_fasilitas_hotel`, `deskripsi_fasilitas_hotel`) VALUES
(1, 'Kolam Renang', '435_1650782529.jpg', 'Kolam renang bersih dan luas'),
(2, 'Restoran', '245_1650782644.jpg', 'Restoran mewah yang ada di hotel'),
(3, 'Parkiran', '165_1650782565.jpg', 'Parkiran aman dan luas'),
(4, 'Gym', '741_1650782574.jpg', 'Tempat gym di hotel untuk semuanya');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_kamars`
--

CREATE TABLE `fasilitas_kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kamar_id` bigint(20) UNSIGNED NOT NULL,
  `nama_fasilitas_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kamars`
--

CREATE TABLE `kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_kamar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jum_kamar` int(11) NOT NULL,
  `kamar_kosong` int(11) NOT NULL,
  `harga_kamar` int(11) DEFAULT NULL,
  `deskripsi_kamar` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kamars`
--

INSERT INTO `kamars` (`id`, `nama_kamar`, `foto_kamar`, `jum_kamar`, `kamar_kosong`, `harga_kamar`, `deskripsi_kamar`) VALUES
(1, 'Bali Room Deluxe', '859_1651127542.jpg', 4, 4, 545000, 'Kamar Bertema Hijau Yang Artinya Serba Asri Alam'),
(2, 'Mulia Super', '81_1651127648.jpg', 5, 5, 754000, 'Mulia Super Kamar mewah dengan furniture yang berkualitas'),
(3, 'Single Room Mulia', '477_1651127693.jpg', 4, 4, 350000, 'Buat Kamu yang pengen sendirian ajah'),
(4, 'Mulia Culpa', '953_1651127743.jpg', 8, 8, 456000, 'Voluptate est molestiae debitis nulla est. Quaerat rem fugit magni. Nam quod vel cumque accusantium'),
(5, 'Mulia Grandeur', '414_1651127783.jpg', 7, 7, 675000, 'MULIA GRANDEUR is 614 square feet and includes a king-size bed 150-183 width plus balcony and bathrobes.'),
(6, 'Grandeur Double', '69_1651127820.jpg', 7, 7, 890000, 'Grandeur Double For Fun'),
(7, 'Signature Ocean Court', '708_1651127877.jpg', 5, 5, 467000, 'Signature Ocean Court is 614 square feet and includes either a king-size bed 150-183 width or 2 single beds 80-130 width.'),
(8, 'Special For You', '561_1651127942.jpg', 9, 9, 765000, 'Buat Kamu yang special'),
(9, 'Mulia Deluxe', '91_1651128000.jpg', 3, 3, 786000, 'Mewah dan nyaman tempatnya'),
(10, 'Mulia Grandeur Deluxe', '476_1651128075.jpg', 2, 2, 634000, 'kamar super mewah dan spot pemandangan yang luar biasa'),
(11, 'Room Signature', '251_1651128124.jpg', 9, 9, 346000, 'Simple minimalis dan nyaman'),
(12, 'Bali Deluxe', '540_1651128188.jpg', 5, 5, 690000, 'Dengan 2 kasur yang besar dan pemandangan yang luar biasa, bisa kamu nikmatin di kamar ini.');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_01_29_085859_create_admins_table', 1),
(3, '2022_02_02_141153_create_kamars_table', 1),
(4, '2022_02_05_020928_create_fasilitas_kamars_table', 1),
(5, '2022_02_07_101413_create_fasilitas_hotels_table', 1),
(6, '2022_02_07_134645_create_pemesanans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanans`
--

CREATE TABLE `pemesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kamar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tgl_checkin` date NOT NULL,
  `tgl_checkout` date NOT NULL,
  `jum_kamar_dipesan` int(11) NOT NULL,
  `nama_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tamu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pesan','checkin','checkout','batal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pesan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `fasilitas_hotels`
--
ALTER TABLE `fasilitas_hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fasilitas_kamars_kamar_id_foreign` (`kamar_id`);

--
-- Indexes for table `kamars`
--
ALTER TABLE `kamars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanans_kamar_id_foreign` (`kamar_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fasilitas_hotels`
--
ALTER TABLE `fasilitas_hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kamars`
--
ALTER TABLE `kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pemesanans`
--
ALTER TABLE `pemesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  ADD CONSTRAINT `fasilitas_kamars_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD CONSTRAINT `pemesanans_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
