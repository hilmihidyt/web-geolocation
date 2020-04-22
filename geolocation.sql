-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2020 pada 04.56
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geolocation`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_14_114515_create_spaces_table', 1),
(5, '2020_04_14_114643_create_space_photos_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hilmihidayat175@gmail.com', '$2y$10$2AXh45rB7bPDUUGEE5KVAu.KAXaNeT.6JRmPuxNxbSfrnqs9bYWku', '2020-04-17 04:29:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spaces`
--

CREATE TABLE `spaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `spaces`
--

INSERT INTO `spaces` (`id`, `user_id`, `title`, `address`, `description`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(2, 3, 'Rumah Hilmi', 'Ds. Sambirejo, Kec. Bangorejo', 'Ini alamat rumah Hilmi Hidayat Founder Banyuwangi Online', '-8.46139', '114.19905', '2020-04-17 09:31:43', '2020-04-17 09:59:52'),
(4, 3, 'PT. Banyuwangi Online', 'BAngorejo, Banyuwangi', 'ini alamat PT. Banyuwangi Online', '-8.52259', '114.13784', '2020-04-17 10:52:14', '2020-04-17 10:52:14'),
(5, 3, 'PT. Event Online', 'Gamiran asdasdasd', 'vsdvdsv  ds ds f ds f ds fsdfsd', '-8.51317', '114.14584', '2020-04-17 11:02:51', '2020-04-17 11:02:51'),
(6, 3, 'PT. Bakulan Online', 'Bangorejo, Banyuwangi', 'adsfsd f sd f ds f ds f ds f dsa f sdf', '-8.49942', '114.14978', '2020-04-17 11:04:36', '2020-04-17 11:04:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `space_photos`
--

CREATE TABLE `space_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `space_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `space_photos`
--

INSERT INTO `space_photos` (`id`, `space_id`, `path`, `created_at`, `updated_at`) VALUES
(3, 4, 'spaces/F6kwZBTxRx9oExIkQc4WzLXsdf4UZCjqB4De5w2U.png', NULL, NULL),
(4, 5, 'spaces/OPTJrtXRjFvPvioBI72OaTHhrgU4o8xWSK9cHPLu.png', NULL, NULL),
(5, 5, 'spaces/WfyRNu46AZuC7icQxpIrlD8FkY6JzwRjPxZ9R14c.jpeg', NULL, NULL),
(6, 5, 'spaces/wvN2BNoEQdc0CMy02UXH5WwFb3beuwD1VcJ6t6Gs.jpeg', NULL, NULL),
(7, 6, 'spaces/xvhrBbZZxzKpwitJci1ujRhoJ0ihTD60Lx2NDFxe.jpeg', NULL, NULL),
(8, 6, 'spaces/RLm3Na1vZFdsF9epXP6BcsAbhb1CS5iCoGZMr4Xb.jpeg', NULL, NULL),
(9, 6, 'spaces/nMqCt0IjUkWKgQdQlog2YRQwM58XarS8MTsBjD0y.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Hilmi', 'hilmihidayat175@gmail.com', NULL, '$2y$10$44AKfvy6.1e5ypgsWQyxzurne5DM.T2P.pN8pfiWw1TCmvbTsmUbO', NULL, '2020-04-17 04:30:30', '2020-04-17 04:30:30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `spaces`
--
ALTER TABLE `spaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spaces_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `space_photos`
--
ALTER TABLE `space_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `space_photos_space_id_foreign` (`space_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `spaces`
--
ALTER TABLE `spaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `space_photos`
--
ALTER TABLE `space_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `spaces`
--
ALTER TABLE `spaces`
  ADD CONSTRAINT `spaces_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `space_photos`
--
ALTER TABLE `space_photos`
  ADD CONSTRAINT `space_photos_space_id_foreign` FOREIGN KEY (`space_id`) REFERENCES `spaces` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
