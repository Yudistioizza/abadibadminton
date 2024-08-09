-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jul 2023 pada 21.21
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uaspbw`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `lapangan` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` varchar(15) NOT NULL,
  `waktu_main` int(5) NOT NULL,
  `jam_selesai` varchar(15) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`id`, `nama`, `phone`, `lapangan`, `tanggal`, `jam_mulai`, `waktu_main`, `jam_selesai`, `harga`) VALUES
(40, 'Yudistio', '082112780183', 'Lapangan 1', '2023-07-09', '07:00', 5, '12:00', 50000),
(41, 'Tio', '0888', 'Lapangan 1', '2023-07-09', '22:00', 2, '24:00', 50000),
(42, 'Izza', '0899', 'Lapangan 1', '2023-07-09', '20:00', 2, '22:00', 25000),
(45, 'Ujang', '081383831047', 'Lapangan 2', '2023-07-10', '21:00', 2, '23:00', 50000),
(46, 'Reynaldi', '081383831047', 'Lapangan 1', '2023-07-11', '19:00', 3, '22:00', 75000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_booking`
--

CREATE TABLE `laporan_booking` (
  `id` int(11) NOT NULL,
  `lapangan` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `status` enum('selesai','booked','batal') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laporan_booking`
--

INSERT INTO `laporan_booking` (`id`, `lapangan`, `keterangan`, `tanggal`, `status`) VALUES
(3, 'Lapangan 1', 'Fun Match', '2023/06/22\r\n09:00-12:00', 'batal'),
(4, 'Lapangan 2', 'Latihan rutin', '2022/06/23\r\n12:00-15:00', 'selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload`
--

CREATE TABLE `upload` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `upload`
--

INSERT INTO `upload` (`id`, `nama`, `deskripsi`, `foto`) VALUES
(19, 'Unsika CUP', 'Main Santai', 'post1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Admin', 'admin', 'admin', 'admin'),
(3, 'jerry', 'jerry', 'jerry2', 'penyewa'),
(5, 'yudis', 'yudis', '$2y$10$QfMzaMg4jbB/xMZklVIhw.2HY8a6avtgxjKFaFDZ4OJswPSxQezke', 'penyewa'),
(6, 'tio', 'tio', '$2y$10$9PI2vKFWKH1QpZQNOfRZM.XJ97lUJCD8ZC2STFdRbDlOFQW/s1V1G', 'penyewa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporan_booking`
--
ALTER TABLE `laporan_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `laporan_booking`
--
ALTER TABLE `laporan_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `upload`
--
ALTER TABLE `upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
