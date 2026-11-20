-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2026 pada 11.50
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siacad_smk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nip`, `nama`, `jenis_kelamin`, `user_id`) VALUES
(132, '134567', 'Asep Bahrul', 'L', 6),
(133, '13457', 'Silpi Nur Hasanah ', 'P', 7),
(134, '13458', 'Khalisya Raya', 'P', 8),
(135, '7283692', 'Zahra Rpl', 'P', 24),
(137, '6377538', 'Sergio', 'L', 29),
(138, '638259299', 'Rafi', 'L', 37),
(139, '0005283', 'Dias', 'L', 43),
(140, '729000', 'Lamine Yamal', 'L', 44),
(141, '317788', 'Ricardo Kaka', 'L', 45),
(142, '62825', 'Cristiano Ronaldo', 'L', 46);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode_mapel` varchar(10) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL,
  `guru_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `kode_mapel`, `nama_mapel`, `guru_id`) VALUES
(345, '13KODING', 'Koding', 132),
(346, '11SUNDA', 'B.Sunda', 133),
(347, '12INGGRIS', 'B.Inggris', 134),
(348, '34OLAHRAGA', 'PJOK', 135),
(350, 'MTK935', 'Matematika ', 132),
(353, '805BJERMAN', 'Bahasa Jerman', 138),
(356, 'BKOR89', 'Bahasa Korea', 142),
(357, 'FISIK66', 'Fisika', 140),
(358, 'BRAZ78', 'Bahasa Brazil', 141),
(359, 'BCHIN8', 'Bahasa China', 139);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mengajar`
--

CREATE TABLE `mengajar` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mengajar`
--

INSERT INTO `mengajar` (`id`, `mapel_id`, `siswa_id`) VALUES
(7, 346, 125),
(8, 347, 137),
(9, 350, 125),
(10, 357, 139),
(11, 356, 138),
(12, 358, 138),
(13, 359, 128),
(14, 347, 128),
(15, 350, 137),
(16, 356, 137);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_rapor`
--

CREATE TABLE `nilai_rapor` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `nilai_kkm` int(11) NOT NULL,
  `nilai_pengetahuan` int(11) NOT NULL,
  `nilai_keterampilan` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_rapor`
--

INSERT INTO `nilai_rapor` (`id`, `siswa_id`, `mapel_id`, `nilai_kkm`, `nilai_pengetahuan`, `nilai_keterampilan`, `keterangan`) VALUES
(456, 123, 345, 75, 87, 83, 'Lebih semangat belajar'),
(457, 124, 346, 80, 84, 80, 'Semangat'),
(458, 125, 347, 80, 87, 85, 'Lebih semangat belajar'),
(459, 126, 348, 80, 90, 82, 'Belajar terus'),
(460, 127, 349, 80, 89, 79, 'Gatau lagi'),
(463, 125, 350, 75, 85, 80, 'Lulus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jenis_kelasmin` enum('L','P') NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama`, `kelas`, `jenis_kelasmin`, `user_id`) VALUES
(125, '123458', 'Hasan Abdullah ', 'XI RPL 1', 'L', 3),
(126, '123459', 'Malikal Mulki ', 'XI RPL 1', 'L', 4),
(128, '52782', 'mulik', 'XI RPL 3', 'L', 14),
(134, '747474859', 'Fajri ', 'XI RPL 1', 'L', 27),
(136, '6627275', 'Rokib', 'XI RPL 3', 'L', 35),
(137, '72020619', 'Rofiif', 'XI RPL 5', 'L', 38),
(138, '972000', 'Ajay', 'XI RPL 2', 'L', 39),
(139, '10072957', 'Sehan', 'XI RPL 4', 'L', 40),
(140, '115747', 'Faisal', 'XI RPL 4', 'L', 41),
(141, '5181699', 'Dzian', 'XI RPL 2', 'L', 42);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','guru','siswa') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`) VALUES
(3, 'hasan2', '$2y$10$bUl.mX8rUp3MWUbIZacV..Ti2ExummirrBT9F4nu90VHW8lAU/E/S', 'siswa', '2026-11-16 08:49:15'),
(4, 'malikal3', '$2y$10$3hAtNIZJ4ftS4il4562AA.8vJKoA5KrL.qtrMIa9mWsP5tUA5Gr4y', 'siswa', '2026-11-16 08:49:30'),
(6, 'asepdy', '$2y$10$gmUWl616kx70akaAbum0Yu3ou3zyrG6hzv91twf3pBsun.Fic34Q.', 'guru', '2026-11-16 08:49:41'),
(7, 'silpinur', '$2y$10$62WKUprJ4fIe6KyHzNgBEeYVdRd79l3xESumg7atp7jg.kpsFMtIa', 'guru', '2026-11-16 08:49:49'),
(8, 'raya12', '$2y$10$dJ.APqg6m6A2xPz0eUcxD.5UvrTwXkCS6A41/qbbvYI2uCiUsedIu', 'guru', '2026-11-16 08:49:57'),
(14, 'Mulik77', '$2y$10$lglMEeh1TLbJ8/.WuoLcjO655V2f8pA1BAL./zDsS2MMb/awcsWVC', 'siswa', '2026-11-16 08:50:06'),
(16, 'mulki223', '$2y$10$ukkkfwxirfmhRu0Ht1tA7ups1INS/kCq/TB4prSjw7aX2P5iZORg2', 'admin', '2026-11-16 10:49:16'),
(24, 'zahra113', '$2y$10$QuZJpe3rDqFKIhByXnP4uO00SeQWAXpkCeadOrAEAILavRBAUbCcO', 'guru', '2026-11-16 08:51:56'),
(27, 'fajri65', '$2y$10$16LCaDRSrSvpPpVjAI5aNOOldedUQwM/pYt6f0/FOWsYpG5Xo6EeC', 'siswa', '2026-11-16 08:52:08'),
(29, 'sergio74', '$2y$10$U89CRX/3tdi49N3izaW7j.xYdw8SrhoipQPl32G6oqp1WkO22C9tq', 'guru', '2026-11-16 08:52:19'),
(35, 'rokib665', '$2y$10$7g8ezrUv3NfdAx04GC9zfesEC80miF9h36yceGHlTRryIfsw6h1Gi', 'siswa', '2026-11-16 08:52:28'),
(37, 'rafi66', '$2y$10$b3G6d8nZ6j8maeW2HW2DJOmGJvsfbnWeaV5kTlUggstIqm2o7eOzy', 'guru', '2026-11-16 08:52:35'),
(38, 'rofiif22', '$2y$10$KfrbGYPvOVGyX/sdv31Mt.zc5iRjK9RX6jqkF3erDVE5c6ROlUVNm', 'siswa', '2026-11-16 08:35:41'),
(39, 'ajay66', '$2y$10$SOjNkjgRESRgjqV5n1iVle5ceEn4InWvbw/WVi.aStnC8jmL9am3e', 'siswa', '2026-11-16 08:46:42'),
(40, 'sehan14', '$2y$10$zD42p7xFBsbE7pBNaHaySe7sU1WrBRknklbqTLQXA93gJP9nHCew2', 'siswa', '2026-11-16 08:47:25'),
(41, 'isal77', '$2y$10$ODxtLVbMRcJ7oVk3oVzDouN7xAcIj8Tiu4MqGj/Ywss.eMif2/97a', 'siswa', '2026-11-16 08:48:50'),
(42, 'dzian8', '$2y$10$MkPmSqa.tDf4JNgBA.uO9uTt9dA6RbcGahvfbvqP3ST/rM6iUHujO', 'siswa', '2026-11-16 08:53:18'),
(43, 'dias6', '$2y$10$xQ5f/ZR35f3J/n.Nca2fCe9NeqBD4f1Fg/Za7WiEvwdIK3t.Llu0O', 'guru', '2026-11-16 08:54:11'),
(44, 'yamal86', '$2y$10$BgYP6kRlN09fQFl.u7HJluqYQxKLnv669.ot0e3XBvG6/htRf3JGC', 'guru', '2026-11-16 08:54:40'),
(45, 'kaka22', '$2y$10$oGH7U6xDJOiPjUPAzoj3VeKGCyOTMfbCjetnTVweeIMATPp.kZcyS', 'guru', '2026-11-16 08:55:11'),
(46, 'ronaldo7', '$2y$10$Qr8hboveuKV1KDvZQKRLL.XSPRoEMG6ZxslJwF3dv5TLwrkg4XWi2', 'guru', '2026-11-16 08:55:37');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mapel_guru` (`guru_id`);

--
-- Indeks untuk tabel `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mengajar_mapel` (`mapel_id`),
  ADD KEY `fk_mengajar_siswa` (`siswa_id`);

--
-- Indeks untuk tabel `nilai_rapor`
--
ALTER TABLE `nilai_rapor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT untuk tabel `mengajar`
--
ALTER TABLE `mengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `nilai_rapor`
--
ALTER TABLE `nilai_rapor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD CONSTRAINT `fk_mapel_guru` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`);

--
-- Ketidakleluasaan untuk tabel `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `fk_mengajar_mapel` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`),
  ADD CONSTRAINT `fk_mengajar_siswa` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
