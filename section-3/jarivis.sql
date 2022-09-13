-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Sep 2022 pada 12.07
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jarivis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alokasi_waktu`
--

CREATE TABLE `alokasi_waktu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_users`
--

CREATE TABLE `data_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jadwal_pendidik`
--

CREATE TABLE `jadwal_pendidik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sekolah_id` bigint(20) UNSIGNED NOT NULL,
  `pendidik_id` bigint(20) UNSIGNED NOT NULL,
  `jenis_mata_pelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `mata_pelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal_pendidik`
--

INSERT INTO `jadwal_pendidik` (`id`, `sekolah_id`, `pendidik_id`, `jenis_mata_pelajaran_id`, `mata_pelajaran_id`, `deskripsi`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 22, 1, 3, 'jadwal 1', 1, NULL, NULL, NULL),
(2, 2, 21, 2, 2, 'jadwal 2', 1, NULL, NULL, NULL),
(3, 1, 21, 2, 6, 'jadwal 3', 1, NULL, NULL, NULL),
(4, 1, 15, 3, 1, 'jadwal 4', 1, NULL, NULL, NULL),
(5, 3, 11, 3, 9, 'jadwal 5', 1, NULL, NULL, NULL),
(6, 1, 5, 1, 10, 'jadwal 6', 1, NULL, NULL, NULL),
(7, 1, 11, 2, 3, 'jadwal 7', 1, NULL, NULL, NULL),
(8, 3, 10, 2, 9, 'jadwal 8', 1, NULL, NULL, NULL),
(9, 2, 2, 3, 1, 'jadwal 9', 1, NULL, NULL, NULL),
(10, 2, 16, 3, 3, 'jadwal 10', 1, NULL, NULL, NULL),
(11, 3, 21, 1, 2, 'jadwal 11', 1, NULL, NULL, NULL),
(12, 1, 20, 3, 1, 'jadwal 12', 1, NULL, NULL, NULL),
(13, 2, 10, 1, 2, 'jadwal 13', 1, NULL, NULL, NULL),
(14, 3, 10, 2, 4, 'jadwal 14', 1, NULL, NULL, NULL),
(15, 3, 6, 3, 9, 'jadwal 15', 1, NULL, NULL, NULL),
(16, 1, 23, 2, 4, 'jadwal 16', 1, NULL, NULL, NULL),
(17, 2, 5, 3, 6, 'jadwal 17', 1, NULL, NULL, NULL),
(18, 2, 15, 3, 7, 'jadwal 18', 1, NULL, NULL, NULL),
(19, 3, 16, 3, 8, 'jadwal 19', 1, NULL, NULL, NULL),
(20, 2, 3, 3, 4, 'jadwal 20', 1, NULL, NULL, NULL),
(21, 1, 10, 2, 3, 'jadwal 21', 1, NULL, NULL, NULL),
(22, 3, 14, 3, 10, 'jadwal 22', 1, NULL, NULL, NULL),
(23, 2, 22, 2, 4, 'jadwal 23', 1, NULL, NULL, NULL),
(24, 2, 9, 1, 2, 'jadwal 24', 1, NULL, NULL, NULL),
(25, 2, 13, 2, 10, 'jadwal 25', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_mata_pelajaran`
--

CREATE TABLE `jenis_mata_pelajaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jenis_mata_pelajaran`
--

INSERT INTO `jenis_mata_pelajaran` (`id`, `name`, `deskripsi`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ipa', 'ipa', 1, NULL, NULL, NULL),
(2, 'ips', 'ips', 1, NULL, NULL, NULL),
(3, 'bahasa', 'bahasa', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kompetensi_dasar`
--

CREATE TABLE `kompetensi_dasar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `materi_pokok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kegiatan_pembelajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_pembelajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `silabus_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kompetensi_dasar_detail`
--

CREATE TABLE `kompetensi_dasar_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kompetensi_dasar_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kompetensi_dasar_point`
--

CREATE TABLE `kompetensi_dasar_point` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kompetensi_dasar_id` bigint(20) UNSIGNED NOT NULL,
  `kompetensi_dasar_detail_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `jenis_mata_pelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id`, `role_id`, `jenis_mata_pelajaran_id`, `name`, `deskripsi`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, 'mapel 1', 'mapel 1', 1, NULL, NULL, NULL),
(2, 3, 3, 'mapel 2', 'mapel 2', 1, NULL, NULL, NULL),
(3, 3, 1, 'mapel 3', 'mapel 3', 1, NULL, NULL, NULL),
(4, 3, 1, 'mapel 4', 'mapel 4', 1, NULL, NULL, NULL),
(5, 3, 3, 'mapel 5', 'mapel 5', 1, NULL, NULL, NULL),
(6, 3, 1, 'mapel 6', 'mapel 6', 1, NULL, NULL, NULL),
(7, 3, 1, 'mapel 7', 'mapel 7', 1, NULL, NULL, NULL),
(8, 3, 3, 'mapel 8', 'mapel 8', 1, NULL, NULL, NULL),
(9, 3, 3, 'mapel 9', 'mapel 9', 1, NULL, NULL, NULL),
(10, 3, 3, 'mapel 10', 'mapel 10', 1, NULL, NULL, NULL);

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
(484, '2014_10_12_000000_create_users_table', 1),
(485, '2014_10_12_100000_create_password_resets_table', 1),
(486, '2019_08_19_000000_create_failed_jobs_table', 1),
(487, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(488, '2022_09_12_075456_create_roles_table', 1),
(489, '2022_09_12_080012_create_data_users_table', 1),
(490, '2022_09_12_080106_create_singkatan_table', 1),
(491, '2022_09_12_080427_create_jenis_mata_pelajaran_table', 1),
(492, '2022_09_12_080501_create_mata_pelajaran_table', 1),
(493, '2022_09_12_080725_create_kelas_table', 1),
(494, '2022_09_12_080741_create_pertemuan_table', 1),
(495, '2022_09_12_080754_create_alokasi_waktu_table', 1),
(496, '2022_09_12_080806_create_penilaian_table', 1),
(497, '2022_09_12_080834_create_sekolah_table', 1),
(498, '2022_09_12_080835_create_silabus_table', 1),
(499, '2022_09_12_080915_create_pendidik_table', 1),
(500, '2022_09_12_080938_create_kompetensi_dasar_table', 1),
(501, '2022_09_12_080957_create_rpp_table', 1),
(502, '2022_09_12_081011_create_jadwal_pendidik_table', 1),
(503, '2022_09_12_081121_create_kompetensi_dasar_detail_table', 1),
(504, '2022_09_12_081143_create_kompetensi_dasar_point_table', 1),
(505, '2022_09_12_081202_create_penilaian_silabus_table', 1),
(506, '2022_09_13_022755_create_murid_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `murid`
--

CREATE TABLE `murid` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sekolah_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidik`
--

CREATE TABLE `pendidik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pendidik`
--

INSERT INTO `pendidik` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pendidik 1', NULL, NULL, NULL),
(2, 'pendidik 2', NULL, NULL, NULL),
(3, 'pendidik 3', NULL, NULL, NULL),
(4, 'pendidik 4', NULL, NULL, NULL),
(5, 'pendidik 5', NULL, NULL, NULL),
(6, 'pendidik 6', NULL, NULL, NULL),
(7, 'pendidik 7', NULL, NULL, NULL),
(8, 'pendidik 8', NULL, NULL, NULL),
(9, 'pendidik 9', NULL, NULL, NULL),
(10, 'pendidik 10', NULL, NULL, NULL),
(11, 'pendidik 11', NULL, NULL, NULL),
(12, 'pendidik 12', NULL, NULL, NULL),
(13, 'pendidik 13', NULL, NULL, NULL),
(14, 'pendidik 14', NULL, NULL, NULL),
(15, 'pendidik 15', NULL, NULL, NULL),
(16, 'pendidik 16', NULL, NULL, NULL),
(17, 'pendidik 17', NULL, NULL, NULL),
(18, 'pendidik 18', NULL, NULL, NULL),
(19, 'pendidik 19', NULL, NULL, NULL),
(20, 'pendidik 20', NULL, NULL, NULL),
(21, 'pendidik 21', NULL, NULL, NULL),
(22, 'pendidik 22', NULL, NULL, NULL),
(23, 'pendidik 23', NULL, NULL, NULL),
(24, 'pendidik 24', NULL, NULL, NULL),
(25, 'pendidik 25', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('pengetahuan','keterampilan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian_silabus`
--

CREATE TABLE `penilaian_silabus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `silabus_id` bigint(20) UNSIGNED NOT NULL,
  `penilaian_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('pengetahuan','keterampilan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertemuan`
--

CREATE TABLE `pertemuan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `deskripsi`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', 1, NULL, NULL, NULL),
(2, 'pengajar', 'pengajar', 1, NULL, NULL, NULL),
(3, 'murid', 'murid', 1, NULL, NULL, NULL),
(4, 'guest', 'guest', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rpp`
--

CREATE TABLE `rpp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sekolah_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `pendidik_id` bigint(20) UNSIGNED NOT NULL,
  `jenis_mata_pelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `mata_pelajaran_id` bigint(20) UNSIGNED NOT NULL,
  `kompetensi_dasar_id` bigint(20) UNSIGNED NOT NULL,
  `pertemuan_id` bigint(20) UNSIGNED NOT NULL,
  `alokasi_waktu` int(11) NOT NULL,
  `materi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendahuluan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kegiatan_inti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penutupan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penilaian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah`
--

CREATE TABLE `sekolah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sekolah`
--

INSERT INTO `sekolah` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SMA Negeri 1 Sleman', NULL, NULL, NULL),
(2, 'SMA Negeri 2 Sleman', NULL, NULL, NULL),
(3, 'SMA Negeri 3 Sleman', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `silabus`
--

CREATE TABLE `silabus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sekolah_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `singkatan`
--

CREATE TABLE `singkatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'guest',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 4,
  `sekolah_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `is_active`, `slug`, `last_login`, `remember_token`, `created_by`, `created_at`, `updated_at`, `deleted_at`, `role_id`, `sekolah_id`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '$2y$10$iCbT0mdaqtgahBdNZzf9Kuriqh4m7iRD2L55STpshSi4uM3cDeRXy', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(2, 'murid 1', 'murid1@gmail.com', 'murid', '$2y$10$cnooOUIzavd9R4dTB4Xby.AuU0QMuYkK6HQe2.n82iF.CmkVIl2GK', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2),
(3, 'murid 2', 'murid2@gmail.com', 'murid', '$2y$10$jW8Symx2VlG0ApJinXlImexpLC0HJ.MpqRFdjBZC0cnm6FfCKH2yK', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(4, 'murid 3', 'murid3@gmail.com', 'murid', '$2y$10$vgTxVI6SRFs1fdLCODuoVON2BPJiq6T2Ws/N9Lt8FFNe/DLwmYXOi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3),
(5, 'murid 4', 'murid4@gmail.com', 'murid', '$2y$10$GHpVm/R/JROJgEA2zH8Xw..w9azRs88q0J.r5U.jny5KTxfyKA316', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2),
(6, 'murid 5', 'murid5@gmail.com', 'murid', '$2y$10$fbfhFrdrrebrrC59tZvzKONu.SQhSgeZ2FB3/yIk4gCQm/hA17zOe', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2),
(7, 'murid 6', 'murid6@gmail.com', 'murid', '$2y$10$CBtFyOE/uLHAvcokavQAe.Yyk0/XlSIPV4cwNP4Wt9HiCDqxSd8yu', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3),
(8, 'murid 7', 'murid7@gmail.com', 'murid', '$2y$10$UlzTYZnDPhtCbAAZ/Ag0.e/9txGDHf1y5i6kjBGw0HlRlyCecsGnO', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(9, 'murid 8', 'murid8@gmail.com', 'murid', '$2y$10$7ButWC22620JT4/1K3j1I.Q6n31msJbCjI9mgTAtRkQ746Fkf7tie', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3),
(10, 'murid 9', 'murid9@gmail.com', 'murid', '$2y$10$OKbmOwwO9eoeQ5DZHpjJJusg/qA9cbIk.FoZM2nmPkymExr8N.LBe', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(11, 'murid 10', 'murid10@gmail.com', 'murid', '$2y$10$Xy.Br1miURMlXW6DS6SXZ.EJD/Wmvkx41pePG/wxQxwAJtGw.IGeS', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2),
(12, 'murid 11', 'murid11@gmail.com', 'murid', '$2y$10$V09wfUpu8ls.SoNA51Ute.o5kJDRwke3d6a8VxqHuWSotllcqeaAK', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(13, 'murid 12', 'murid12@gmail.com', 'murid', '$2y$10$/IqOBlOg5pAQXYhP.oHsTO/I4dHJJIYmtqYz6i58pgEt4ddG8guoq', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(14, 'murid 13', 'murid13@gmail.com', 'murid', '$2y$10$OId5j6n08IpXqZ9dnqEU.en6iRizedFxWmz3RWPT51XXRDY4q4O4S', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2),
(15, 'murid 14', 'murid14@gmail.com', 'murid', '$2y$10$ygwGaRNenSuG80CxPwIJg.U4JAYQgk/Pb1Xf4UF2HNzWGE/iUnDpu', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2),
(16, 'murid 15', 'murid15@gmail.com', 'murid', '$2y$10$FQ3WpOCexjIaXu29fASteOPo7O5QBW0Tupa6GKUU3yydEWBbo1MQa', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3),
(17, 'murid 16', 'murid16@gmail.com', 'murid', '$2y$10$XtpnjJ3j8ncwKiGxoeUypOy4xaKmIrMbFHt2sS12PVb2rnd3PvkQ6', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2),
(18, 'murid 17', 'murid17@gmail.com', 'murid', '$2y$10$ddPtTpMoLIaO6Jg3L1yue..XSYud/lz9uZ8HIgVWsNzaUomADCA1S', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(19, 'murid 18', 'murid18@gmail.com', 'murid', '$2y$10$BLHK930DwPyiu.5nzn/hPO/pOWPnf2jvrhNLMIEZdn02KxOEEtl8G', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3),
(20, 'murid 19', 'murid19@gmail.com', 'murid', '$2y$10$A60glpGJIE3/WHEu78Q4PeiARnDq9QSNRgZXE/C3flWUBVzjpe4rK', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3),
(21, 'murid 20', 'murid20@gmail.com', 'murid', '$2y$10$ZShFY47fk/AQMhvAYDzG9OziM7aTwSG40u2CC4a23j2T1XI/WFmBa', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(22, 'murid 21', 'murid21@gmail.com', 'murid', '$2y$10$KczSSn8vN4ZlJJ3BpfbZX.fTprRq2330iGMfYQJ16qiXROC1BtIVy', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2),
(23, 'murid 22', 'murid22@gmail.com', 'murid', '$2y$10$44Zq4SoY.qC/2pBqEgQBLOBTNxfBQZN66bntysyBqMWmCKmHf7uHy', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2),
(24, 'murid 23', 'murid23@gmail.com', 'murid', '$2y$10$aJpQl86KMWWpWgqBsMsAMO4.7TgIKwm6X8Ja8Q.hMe6Ar6bLYN1oe', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(25, 'murid 24', 'murid24@gmail.com', 'murid', '$2y$10$Z3v7MQ/q68dg27tpepUa3uqaeH3ANNqO31p7Qz0Z5HeIthPWyEiWi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(26, 'murid 25', 'murid25@gmail.com', 'murid', '$2y$10$yfIlWZeeqD3uZmwTZM1Z..bI3otT8sgUgQLTf5DkIaqLaNBDuISty', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alokasi_waktu`
--
ALTER TABLE `alokasi_waktu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_users`
--
ALTER TABLE `data_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jadwal_pendidik`
--
ALTER TABLE `jadwal_pendidik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_pendidik_sekolah_id_foreign` (`sekolah_id`),
  ADD KEY `jadwal_pendidik_pendidik_id_foreign` (`pendidik_id`),
  ADD KEY `jadwal_pendidik_jenis_mata_pelajaran_id_foreign` (`jenis_mata_pelajaran_id`),
  ADD KEY `jadwal_pendidik_mata_pelajaran_id_foreign` (`mata_pelajaran_id`);

--
-- Indeks untuk tabel `jenis_mata_pelajaran`
--
ALTER TABLE `jenis_mata_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kompetensi_dasar`
--
ALTER TABLE `kompetensi_dasar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kompetensi_dasar_silabus_id_foreign` (`silabus_id`);

--
-- Indeks untuk tabel `kompetensi_dasar_detail`
--
ALTER TABLE `kompetensi_dasar_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kompetensi_dasar_detail_kompetensi_dasar_id_foreign` (`kompetensi_dasar_id`);

--
-- Indeks untuk tabel `kompetensi_dasar_point`
--
ALTER TABLE `kompetensi_dasar_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kompetensi_dasar_point_kompetensi_dasar_id_foreign` (`kompetensi_dasar_id`),
  ADD KEY `kompetensi_dasar_point_kompetensi_dasar_detail_id_foreign` (`kompetensi_dasar_detail_id`);

--
-- Indeks untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mata_pelajaran_role_id_foreign` (`role_id`),
  ADD KEY `mata_pelajaran_jenis_mata_pelajaran_id_foreign` (`jenis_mata_pelajaran_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `murid_sekolah_id_foreign` (`sekolah_id`),
  ADD KEY `murid_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pendidik`
--
ALTER TABLE `pendidik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penilaian_silabus`
--
ALTER TABLE `penilaian_silabus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penilaian_silabus_silabus_id_foreign` (`silabus_id`),
  ADD KEY `penilaian_silabus_penilaian_id_foreign` (`penilaian_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pertemuan`
--
ALTER TABLE `pertemuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rpp`
--
ALTER TABLE `rpp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rpp_sekolah_id_foreign` (`sekolah_id`),
  ADD KEY `rpp_kelas_id_foreign` (`kelas_id`),
  ADD KEY `rpp_pendidik_id_foreign` (`pendidik_id`),
  ADD KEY `rpp_jenis_mata_pelajaran_id_foreign` (`jenis_mata_pelajaran_id`),
  ADD KEY `rpp_mata_pelajaran_id_foreign` (`mata_pelajaran_id`),
  ADD KEY `rpp_kompetensi_dasar_id_foreign` (`kompetensi_dasar_id`),
  ADD KEY `rpp_pertemuan_id_foreign` (`pertemuan_id`);

--
-- Indeks untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `silabus`
--
ALTER TABLE `silabus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `silabus_sekolah_id_foreign` (`sekolah_id`),
  ADD KEY `silabus_kelas_id_foreign` (`kelas_id`);

--
-- Indeks untuk tabel `singkatan`
--
ALTER TABLE `singkatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `singkatan_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_sekolah_id_foreign` (`sekolah_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alokasi_waktu`
--
ALTER TABLE `alokasi_waktu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_users`
--
ALTER TABLE `data_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal_pendidik`
--
ALTER TABLE `jadwal_pendidik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `jenis_mata_pelajaran`
--
ALTER TABLE `jenis_mata_pelajaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kompetensi_dasar`
--
ALTER TABLE `kompetensi_dasar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kompetensi_dasar_detail`
--
ALTER TABLE `kompetensi_dasar_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kompetensi_dasar_point`
--
ALTER TABLE `kompetensi_dasar_point`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT untuk tabel `murid`
--
ALTER TABLE `murid`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pendidik`
--
ALTER TABLE `pendidik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penilaian_silabus`
--
ALTER TABLE `penilaian_silabus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pertemuan`
--
ALTER TABLE `pertemuan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rpp`
--
ALTER TABLE `rpp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `silabus`
--
ALTER TABLE `silabus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `singkatan`
--
ALTER TABLE `singkatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal_pendidik`
--
ALTER TABLE `jadwal_pendidik`
  ADD CONSTRAINT `jadwal_pendidik_jenis_mata_pelajaran_id_foreign` FOREIGN KEY (`jenis_mata_pelajaran_id`) REFERENCES `jenis_mata_pelajaran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_pendidik_mata_pelajaran_id_foreign` FOREIGN KEY (`mata_pelajaran_id`) REFERENCES `mata_pelajaran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_pendidik_pendidik_id_foreign` FOREIGN KEY (`pendidik_id`) REFERENCES `pendidik` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_pendidik_sekolah_id_foreign` FOREIGN KEY (`sekolah_id`) REFERENCES `sekolah` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kompetensi_dasar`
--
ALTER TABLE `kompetensi_dasar`
  ADD CONSTRAINT `kompetensi_dasar_silabus_id_foreign` FOREIGN KEY (`silabus_id`) REFERENCES `silabus` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kompetensi_dasar_detail`
--
ALTER TABLE `kompetensi_dasar_detail`
  ADD CONSTRAINT `kompetensi_dasar_detail_kompetensi_dasar_id_foreign` FOREIGN KEY (`kompetensi_dasar_id`) REFERENCES `kompetensi_dasar` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kompetensi_dasar_point`
--
ALTER TABLE `kompetensi_dasar_point`
  ADD CONSTRAINT `kompetensi_dasar_point_kompetensi_dasar_detail_id_foreign` FOREIGN KEY (`kompetensi_dasar_detail_id`) REFERENCES `kompetensi_dasar_detail` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kompetensi_dasar_point_kompetensi_dasar_id_foreign` FOREIGN KEY (`kompetensi_dasar_id`) REFERENCES `kompetensi_dasar` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD CONSTRAINT `mata_pelajaran_jenis_mata_pelajaran_id_foreign` FOREIGN KEY (`jenis_mata_pelajaran_id`) REFERENCES `jenis_mata_pelajaran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `mata_pelajaran_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `murid`
--
ALTER TABLE `murid`
  ADD CONSTRAINT `murid_sekolah_id_foreign` FOREIGN KEY (`sekolah_id`) REFERENCES `sekolah` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `murid_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilaian_silabus`
--
ALTER TABLE `penilaian_silabus`
  ADD CONSTRAINT `penilaian_silabus_penilaian_id_foreign` FOREIGN KEY (`penilaian_id`) REFERENCES `penilaian` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `penilaian_silabus_silabus_id_foreign` FOREIGN KEY (`silabus_id`) REFERENCES `silabus` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rpp`
--
ALTER TABLE `rpp`
  ADD CONSTRAINT `rpp_jenis_mata_pelajaran_id_foreign` FOREIGN KEY (`jenis_mata_pelajaran_id`) REFERENCES `jenis_mata_pelajaran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rpp_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rpp_kompetensi_dasar_id_foreign` FOREIGN KEY (`kompetensi_dasar_id`) REFERENCES `kompetensi_dasar` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rpp_mata_pelajaran_id_foreign` FOREIGN KEY (`mata_pelajaran_id`) REFERENCES `mata_pelajaran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rpp_pendidik_id_foreign` FOREIGN KEY (`pendidik_id`) REFERENCES `pendidik` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rpp_pertemuan_id_foreign` FOREIGN KEY (`pertemuan_id`) REFERENCES `pertemuan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rpp_sekolah_id_foreign` FOREIGN KEY (`sekolah_id`) REFERENCES `sekolah` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `silabus`
--
ALTER TABLE `silabus`
  ADD CONSTRAINT `silabus_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `silabus_sekolah_id_foreign` FOREIGN KEY (`sekolah_id`) REFERENCES `sekolah` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `singkatan`
--
ALTER TABLE `singkatan`
  ADD CONSTRAINT `singkatan_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_sekolah_id_foreign` FOREIGN KEY (`sekolah_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
