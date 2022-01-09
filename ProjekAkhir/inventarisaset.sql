-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2022 pada 07.56
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventarisaset`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aset_masuk`
--

CREATE TABLE `aset_masuk` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `tanggal_masuk` varchar(30) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah_barang` varchar(15) NOT NULL,
  `total_harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aset_masuk`
--

INSERT INTO `aset_masuk` (`id_barang`, `kode_barang`, `nama_barang`, `tanggal_masuk`, `harga`, `jumlah_barang`, `total_harga`) VALUES
(1, 'KD11', 'Pembangunan Perpustakaan', '10 Januari 2022', '9.000.000', '10', '90.000.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `luas` varchar(30) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `hak_milik` varchar(50) NOT NULL,
  `tempat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`id_barang`, `kode_barang`, `luas`, `harga`, `hak_milik`, `tempat`) VALUES
(1, 'KD1', '1.700', '11.000.000', 'Ratu', 'Jl.Pahlawan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pns`
--

CREATE TABLE `data_pns` (
  `nip` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `golongan` varchar(20) NOT NULL,
  `pendidikan_terakhir` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pns`
--

INSERT INTO `data_pns` (`nip`, `nama`, `tempat_lahir`, `jabatan`, `golongan`, `pendidikan_terakhir`) VALUES
(1111100000, 'Fitri', 'Bandung', 'Sekbid', 'WNA', 'S1 Komunikasi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aset_masuk`
--
ALTER TABLE `aset_masuk`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `data_pns`
--
ALTER TABLE `data_pns`
  ADD PRIMARY KEY (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aset_masuk`
--
ALTER TABLE `aset_masuk`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_barang`
--
ALTER TABLE `data_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_pns`
--
ALTER TABLE `data_pns`
  MODIFY `nip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111100001;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
