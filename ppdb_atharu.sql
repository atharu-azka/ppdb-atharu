-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2024 pada 06.38
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb_atharu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_bayar`
--

CREATE TABLE `data_bayar` (
  `id` int(11) NOT NULL,
  `no_pendaftaran` varchar(123) NOT NULL,
  `tanggal` varchar(123) NOT NULL,
  `nama_siswa` varchar(123) NOT NULL,
  `asal_sekolah` varchar(123) NOT NULL,
  `gelombang` varchar(123) NOT NULL,
  `jumlah` bigint(123) NOT NULL,
  `bayar` bigint(123) NOT NULL,
  `kembalian` bigint(123) NOT NULL,
  `sisa` bigint(200) NOT NULL,
  `keterangan` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_bayar`
--

INSERT INTO `data_bayar` (`id`, `no_pendaftaran`, `tanggal`, `nama_siswa`, `asal_sekolah`, `gelombang`, `jumlah`, `bayar`, `kembalian`, `sisa`, `keterangan`) VALUES
(11, 'BYR007', '15-05-2024', 'atharu', 'ketapang', 'pertama', 2000000, 3000000, 1000000, 0, 'Lunas'),
(12, 'BYR009', '15-05-2024', 'atharu noksa', 'smp', 'ketiga', 4000000, 4000000, 0, 0, 'Lunas'),
(13, 'BYR011', '16-05-2024', 'lalala', 'ketapang', 'ketiga', 4000000, 5000000, 1000000, 0, 'Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_ortu`
--

CREATE TABLE `data_ortu` (
  `id` int(111) NOT NULL,
  `nama_siswa` varchar(123) NOT NULL,
  `nama_ortu` varchar(123) NOT NULL,
  `alamat_ortu` varchar(123) NOT NULL,
  `no_telOrtu` varchar(123) NOT NULL,
  `pekerjaan_ortu` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_ortu`
--

INSERT INTO `data_ortu` (`id`, `nama_siswa`, `nama_ortu`, `alamat_ortu`, `no_telOrtu`, `pekerjaan_ortu`) VALUES
(3, 'atar', 'adadeh', 'adadef', '', 'orang kaya'),
(4, 'atar', 'adadeh', 'adadef', '', 'orang kaya'),
(5, 'atar', 'adadeh', 'adadef', '', 'orang kaya'),
(6, 'atar', 'adadeh', 'adadef', '', 'orang kaya'),
(9, 'azril', '', '', '', ''),
(11, 'atar', 'adadeh', 'AA', '', 'AA'),
(12, 'atharu', '', '', '', ''),
(13, 'atharu', '', '', '', ''),
(14, 'atharu noksa', '', '', '', ''),
(15, 'aaa', '', '', '', ''),
(16, 'lalala', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id` int(111) NOT NULL,
  `no_pendaftaran` varchar(123) NOT NULL,
  `nama_siswa` varchar(123) NOT NULL,
  `ttl` varchar(123) NOT NULL,
  `jenis_kel` varchar(123) NOT NULL,
  `agama` varchar(123) NOT NULL,
  `no_telSiswa` varchar(123) NOT NULL,
  `asal_sekolah` varchar(123) NOT NULL,
  `alamat_sekolah` varchar(123) NOT NULL,
  `jurusan` varchar(123) NOT NULL,
  `tanggal` varchar(111) NOT NULL,
  `ukuran` varchar(1231) NOT NULL,
  `gelombang` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_siswa`
--

INSERT INTO `data_siswa` (`id`, `no_pendaftaran`, `nama_siswa`, `ttl`, `jenis_kel`, `agama`, `no_telSiswa`, `asal_sekolah`, `alamat_sekolah`, `jurusan`, `tanggal`, `ukuran`, `gelombang`) VALUES
(9, 'BYR005', 'azril', 'bogor,24,07,2007', 'Perempuan', 'Islam', '0081', 'smp', 'a', 'DESAIN KOMUNIKASI VISUAL', '07-05-2024', 'L', ''),
(11, 'BYR006', 'atar', '123', 'Laki-Laki', 'Islam', '1', 'CMB', 'AA', 'REKAYASA PERANGKAT LUNAK', '14-05-2024', 'XL', 'pertama'),
(12, 'BYR007', 'atharu', 'bogor,24,07,2007', 'Perempuan', 'Konghuchu', '0081', 'ketapang', 'wdw', 'REKAYASA PERANGKAT LUNAK', '14-05-2024', 'XXL', 'pertama'),
(13, 'BYR008', 'atharu', '123', 'Laki-Laki', 'Islam', 'a', 'a', 'a', 'REKAYASA PERANGKAT LUNAK', '14-05-2024', '', 'pertama'),
(14, 'BYR009', 'atharu noksa', '123', 'Laki-Laki', 'Islam', 'a', 'smp', 'q', 'AKUNTANSI KEUANGAN LEMBAGA', '15-05-2024', '', 'ketiga'),
(15, 'BYR010', 'aaa', '123', 'Laki-Laki', 'Kristen', '081', 'smp', '111', 'REKAYASA PERANGKAT LUNAK', '15-05-2024', 'XXXL', 'pertama'),
(16, 'BYR011', 'lalala', 'bogay', 'Laki-Laki', 'Kristen', '081', 'ketapang', 'aa', 'REKAYASA PERANGKAT LUNAK', '16-05-2024', 'L', 'ketiga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_wali`
--

CREATE TABLE `data_wali` (
  `id` int(111) NOT NULL,
  `nama_siswa` varchar(123) NOT NULL,
  `nama_wali` varchar(123) NOT NULL,
  `alamat_wali` varchar(123) NOT NULL,
  `no_telWali` varchar(123) NOT NULL,
  `pekerjaan_wali` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_wali`
--

INSERT INTO `data_wali` (`id`, `nama_siswa`, `nama_wali`, `alamat_wali`, `no_telWali`, `pekerjaan_wali`) VALUES
(3, 'atar', 'wildan', 'dsdas', '', 'kerja'),
(4, 'atar', 'wildan', 'dsdas', '', 'kerja'),
(5, 'atar', 'wildan', 'dsdas', '', 'kerja'),
(6, 'atar', 'wildan', 'dsdas', '', 'kerja'),
(9, 'azril', '', '', '', ''),
(11, 'atar', 'AA', 'AA', '', 'AA'),
(12, 'atharu', '', '', '', ''),
(13, 'atharu', '', '', '', ''),
(14, 'atharu noksa', '', '', '', ''),
(15, 'aaa', '', '', '', ''),
(16, 'lalala', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gel`
--

CREATE TABLE `tbl_gel` (
  `id` int(11) NOT NULL,
  `gelombang` varchar(111) NOT NULL,
  `nominal` int(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_gel`
--

INSERT INTO `tbl_gel` (`id`, `gelombang`, `nominal`) VALUES
(6, 'pertama', 2000000),
(7, 'kedua', 3000000),
(9, 'ketiga', 4000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(2, 'azril', 'petugas', 'petugas', 'petugas'),
(10, 'atharu', 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_bayar`
--
ALTER TABLE `data_bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_ortu`
--
ALTER TABLE `data_ortu`
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_wali`
--
ALTER TABLE `data_wali`
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `tbl_gel`
--
ALTER TABLE `tbl_gel`
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
-- AUTO_INCREMENT untuk tabel `data_bayar`
--
ALTER TABLE `data_bayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_gel`
--
ALTER TABLE `tbl_gel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
