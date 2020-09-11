-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2018 at 05:27 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ilab`
--

-- --------------------------------------------------------

--
-- Table structure for table `ilab_data_alternatif`
--

CREATE TABLE `ilab_data_alternatif` (
  `id_alternatif` varchar(2) NOT NULL,
  `nama_alternatif` varchar(40) NOT NULL,
  `hasil_akhir` double NOT NULL,
  `id_pengguna` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ilab_data_alternatif`
--

INSERT INTO `ilab_data_alternatif` (`id_alternatif`, `nama_alternatif`, `hasil_akhir`, `id_pengguna`) VALUES
('A1', 'Mahardika', 0.219044746103572, 64),
('A2', 'Syahifa', 0.228203452321102, 64),
('A3', 'Jaelani', 0.177088989441932, 64),
('A4', 'Imanuel', 0.169866767219709, 64),
('A5', 'Alliya', 0.205796044913694, 64);

-- --------------------------------------------------------

--
-- Table structure for table `ilab_data_kriteria`
--

CREATE TABLE `ilab_data_kriteria` (
  `id_kriteria` varchar(2) NOT NULL,
  `nama_kriteria` varchar(40) NOT NULL,
  `jumlah_kriteria` double NOT NULL,
  `bobot_kriteria` double NOT NULL,
  `hasil_jumlah_bobot` float NOT NULL,
  `id_pengguna` int(3) NOT NULL,
  `keterangan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ilab_data_kriteria`
--

INSERT INTO `ilab_data_kriteria` (`id_kriteria`, `nama_kriteria`, `jumlah_kriteria`, `bobot_kriteria`, `hasil_jumlah_bobot`, `id_pengguna`, `keterangan`) VALUES
('K1', 'Disiplin', 3, 0.33333333333333, 1, 64, 'konsisten'),
('K2', 'Inisiatif', 6, 0.16666666666667, 1, 64, 'konsisten'),
('K3', 'Tanggung Jawab', 6, 0.16666666666667, 1, 64, 'konsisten'),
('K4', 'Professional', 6, 0.16666666666667, 1, 64, 'konsisten'),
('K5', 'Attitude', 6, 0.16666666666667, 1, 64, 'konsisten');

-- --------------------------------------------------------

--
-- Table structure for table `ilab_hitung_alternatif`
--

CREATE TABLE `ilab_hitung_alternatif` (
  `alternatif_pertama` varchar(2) NOT NULL,
  `nilai_alternatif` double NOT NULL,
  `hasil_alternatif` double NOT NULL,
  `alternatif_kedua` varchar(2) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  `id_pengguna` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ilab_hitung_alternatif`
--

INSERT INTO `ilab_hitung_alternatif` (`alternatif_pertama`, `nilai_alternatif`, `hasil_alternatif`, `alternatif_kedua`, `id_kriteria`, `id_pengguna`) VALUES
('A1', 1, 0.2, 'A1', 'K1', 64),
('A1', 1, 0.2, 'A1', 'K2', 64),
('A1', 1, 0.33333333333333, 'A1', 'K3', 64),
('A1', 1, 0.17647058823529, 'A1', 'K4', 64),
('A1', 1, 0.2, 'A1', 'K5', 64),
('A1', 1, 0.2, 'A2', 'K1', 64),
('A1', 1, 0.2, 'A2', 'K2', 64),
('A1', 2, 0.44444444444444, 'A2', 'K3', 64),
('A1', 0.5, 0.16666666666667, 'A2', 'K4', 64),
('A1', 1, 0.2, 'A2', 'K5', 64),
('A1', 1, 0.2, 'A3', 'K1', 64),
('A1', 1, 0.2, 'A3', 'K2', 64),
('A1', 2, 0.33333333333333, 'A3', 'K3', 64),
('A1', 3, 0.23076923076923, 'A3', 'K4', 64),
('A1', 1, 0.2, 'A3', 'K5', 64),
('A1', 1, 0.2, 'A4', 'K1', 64),
('A1', 1, 0.2, 'A4', 'K2', 64),
('A1', 2, 0.26666666666667, 'A4', 'K3', 64),
('A1', 3, 0.23076923076923, 'A4', 'K4', 64),
('A1', 1, 0.2, 'A4', 'K5', 64),
('A1', 1, 0.2, 'A5', 'K1', 64),
('A1', 1, 0.2, 'A5', 'K2', 64),
('A1', 2, 0.22222222222222, 'A5', 'K3', 64),
('A1', 0.5, 0.16666666666667, 'A5', 'K4', 64),
('A1', 1, 0.2, 'A5', 'K5', 64),
('A2', 1, 0.2, 'A1', 'K1', 64),
('A2', 1, 0.2, 'A1', 'K2', 64),
('A2', 0.5, 0.16666666666667, 'A1', 'K3', 64),
('A2', 2, 0.35294117647059, 'A1', 'K4', 64),
('A2', 1, 0.2, 'A1', 'K5', 64),
('A2', 1, 0.2, 'A2', 'K1', 64),
('A2', 1, 0.2, 'A2', 'K2', 64),
('A2', 1, 0.22222222222222, 'A2', 'K3', 64),
('A2', 1, 0.33333333333333, 'A2', 'K4', 64),
('A2', 1, 0.2, 'A2', 'K5', 64),
('A2', 1, 0.2, 'A3', 'K1', 64),
('A2', 1, 0.2, 'A3', 'K2', 64),
('A2', 2, 0.33333333333333, 'A3', 'K3', 64),
('A2', 4, 0.30769230769231, 'A3', 'K4', 64),
('A2', 1, 0.2, 'A3', 'K5', 64),
('A2', 1, 0.2, 'A4', 'K1', 64),
('A2', 1, 0.2, 'A4', 'K2', 64),
('A2', 2, 0.26666666666667, 'A4', 'K3', 64),
('A2', 4, 0.30769230769231, 'A4', 'K4', 64),
('A2', 1, 0.2, 'A4', 'K5', 64),
('A2', 1, 0.2, 'A5', 'K1', 64),
('A2', 1, 0.2, 'A5', 'K2', 64),
('A2', 2, 0.22222222222222, 'A5', 'K3', 64),
('A2', 1, 0.33333333333333, 'A5', 'K4', 64),
('A2', 1, 0.2, 'A5', 'K5', 64),
('A3', 1, 0.2, 'A1', 'K1', 64),
('A3', 1, 0.2, 'A1', 'K2', 64),
('A3', 0.5, 0.16666666666667, 'A1', 'K3', 64),
('A3', 0.33333333333333, 0.058823529411764, 'A1', 'K4', 64),
('A3', 1, 0.2, 'A1', 'K5', 64),
('A3', 1, 0.2, 'A2', 'K1', 64),
('A3', 1, 0.2, 'A2', 'K2', 64),
('A3', 0.5, 0.11111111111111, 'A2', 'K3', 64),
('A3', 0.25, 0.083333333333333, 'A2', 'K4', 64),
('A3', 1, 0.2, 'A2', 'K5', 64),
('A3', 1, 0.2, 'A3', 'K1', 64),
('A3', 1, 0.2, 'A3', 'K2', 64),
('A3', 1, 0.16666666666667, 'A3', 'K3', 64),
('A3', 1, 0.076923076923077, 'A3', 'K4', 64),
('A3', 1, 0.2, 'A3', 'K5', 64),
('A3', 1, 0.2, 'A4', 'K1', 64),
('A3', 1, 0.2, 'A4', 'K2', 64),
('A3', 2, 0.26666666666667, 'A4', 'K3', 64),
('A3', 1, 0.076923076923077, 'A4', 'K4', 64),
('A3', 1, 0.2, 'A4', 'K5', 64),
('A3', 1, 0.2, 'A5', 'K1', 64),
('A3', 1, 0.2, 'A5', 'K2', 64),
('A3', 2, 0.22222222222222, 'A5', 'K3', 64),
('A3', 0.25, 0.083333333333333, 'A5', 'K4', 64),
('A3', 1, 0.2, 'A5', 'K5', 64),
('A4', 1, 0.2, 'A1', 'K1', 64),
('A4', 1, 0.2, 'A1', 'K2', 64),
('A4', 0.5, 0.16666666666667, 'A1', 'K3', 64),
('A4', 0.33333333333333, 0.058823529411764, 'A1', 'K4', 64),
('A4', 1, 0.2, 'A1', 'K5', 64),
('A4', 1, 0.2, 'A2', 'K1', 64),
('A4', 1, 0.2, 'A2', 'K2', 64),
('A4', 0.5, 0.11111111111111, 'A2', 'K3', 64),
('A4', 0.25, 0.083333333333333, 'A2', 'K4', 64),
('A4', 1, 0.2, 'A2', 'K5', 64),
('A4', 1, 0.2, 'A3', 'K1', 64),
('A4', 1, 0.2, 'A3', 'K2', 64),
('A4', 0.5, 0.083333333333333, 'A3', 'K3', 64),
('A4', 1, 0.076923076923077, 'A3', 'K4', 64),
('A4', 1, 0.2, 'A3', 'K5', 64),
('A4', 1, 0.2, 'A4', 'K1', 64),
('A4', 1, 0.2, 'A4', 'K2', 64),
('A4', 1, 0.13333333333333, 'A4', 'K3', 64),
('A4', 1, 0.076923076923077, 'A4', 'K4', 64),
('A4', 1, 0.2, 'A4', 'K5', 64),
('A4', 1, 0.2, 'A5', 'K1', 64),
('A4', 1, 0.2, 'A5', 'K2', 64),
('A4', 2, 0.22222222222222, 'A5', 'K3', 64),
('A4', 0.25, 0.083333333333333, 'A5', 'K4', 64),
('A4', 1, 0.2, 'A5', 'K5', 64),
('A5', 1, 0.2, 'A1', 'K1', 64),
('A5', 1, 0.2, 'A1', 'K2', 64),
('A5', 0.5, 0.16666666666667, 'A1', 'K3', 64),
('A5', 2, 0.35294117647059, 'A1', 'K4', 64),
('A5', 1, 0.2, 'A1', 'K5', 64),
('A5', 1, 0.2, 'A2', 'K1', 64),
('A5', 1, 0.2, 'A2', 'K2', 64),
('A5', 0.5, 0.11111111111111, 'A2', 'K3', 64),
('A5', 1, 0.33333333333333, 'A2', 'K4', 64),
('A5', 1, 0.2, 'A2', 'K5', 64),
('A5', 1, 0.2, 'A3', 'K1', 64),
('A5', 1, 0.2, 'A3', 'K2', 64),
('A5', 0.5, 0.083333333333333, 'A3', 'K3', 64),
('A5', 4, 0.30769230769231, 'A3', 'K4', 64),
('A5', 1, 0.2, 'A3', 'K5', 64),
('A5', 1, 0.2, 'A4', 'K1', 64),
('A5', 1, 0.2, 'A4', 'K2', 64),
('A5', 0.5, 0.066666666666667, 'A4', 'K3', 64),
('A5', 4, 0.30769230769231, 'A4', 'K4', 64),
('A5', 1, 0.2, 'A4', 'K5', 64),
('A5', 1, 0.2, 'A5', 'K1', 64),
('A5', 1, 0.2, 'A5', 'K2', 64),
('A5', 1, 0.11111111111111, 'A5', 'K3', 64),
('A5', 1, 0.33333333333333, 'A5', 'K4', 64),
('A5', 1, 0.2, 'A5', 'K5', 64);

-- --------------------------------------------------------

--
-- Table structure for table `ilab_hitung_kriteria`
--

CREATE TABLE `ilab_hitung_kriteria` (
  `kriteria_pertama` varchar(2) NOT NULL,
  `nilai_kriteria` double NOT NULL,
  `hasil_kriteria` double NOT NULL,
  `kriteria_kedua` varchar(2) NOT NULL,
  `id_pengguna` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ilab_hitung_kriteria`
--

INSERT INTO `ilab_hitung_kriteria` (`kriteria_pertama`, `nilai_kriteria`, `hasil_kriteria`, `kriteria_kedua`, `id_pengguna`) VALUES
('K1', 1, 0.33333333333333, 'K1', 64),
('K1', 2, 0.33333333333333, 'K2', 64),
('K1', 2, 0.33333333333333, 'K3', 64),
('K1', 2, 0.33333333333333, 'K4', 64),
('K1', 2, 0.33333333333333, 'K5', 64),
('K2', 0.5, 0.16666666666667, 'K1', 64),
('K2', 1, 0.16666666666667, 'K2', 64),
('K2', 1, 0.16666666666667, 'K3', 64),
('K2', 1, 0.16666666666667, 'K4', 64),
('K2', 1, 0.16666666666667, 'K5', 64),
('K3', 0.5, 0.16666666666667, 'K1', 64),
('K3', 1, 0.16666666666667, 'K2', 64),
('K3', 1, 0.16666666666667, 'K3', 64),
('K3', 1, 0.16666666666667, 'K4', 64),
('K3', 1, 0.16666666666667, 'K5', 64),
('K4', 0.5, 0.16666666666667, 'K1', 64),
('K4', 1, 0.16666666666667, 'K2', 64),
('K4', 1, 0.16666666666667, 'K3', 64),
('K4', 1, 0.16666666666667, 'K4', 64),
('K4', 1, 0.16666666666667, 'K5', 64),
('K5', 0.5, 0.16666666666667, 'K1', 64),
('K5', 1, 0.16666666666667, 'K2', 64),
('K5', 1, 0.16666666666667, 'K3', 64),
('K5', 1, 0.16666666666667, 'K4', 64),
('K5', 1, 0.16666666666667, 'K5', 64);

-- --------------------------------------------------------

--
-- Table structure for table `ilab_nilai`
--

CREATE TABLE `ilab_nilai` (
  `id_nilai` int(3) NOT NULL,
  `jum_nilai` double NOT NULL,
  `ket_nilai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ilab_nilai`
--

INSERT INTO `ilab_nilai` (`id_nilai`, `jum_nilai`, `ket_nilai`) VALUES
(9, 9, 'Mutlak sangat penting dari'),
(10, 8, 'Mendekati mutlak dari'),
(11, 7, 'Sangat penting dari'),
(12, 6, 'Mendekati sangat penting dari'),
(13, 5, 'Lebih penting dari'),
(14, 4, 'Mendekati lebih penting dari'),
(15, 3, 'Sedikit lebih penting dari'),
(16, 2, 'Mendekati sedikit lebih penting dari'),
(17, 1, 'Sama penting dengan'),
(18, 0.5, '1 bagi mendekati sedikit lebih penting dari'),
(19, 0.333, '1 bagi sedikit lebih penting dari'),
(20, 0.25, '1 bagi mendekati lebih penting dari'),
(21, 0.2, '1 bagi lebih penting dari'),
(22, 0.167, '1 bagi mendekati sangat penting dari'),
(23, 0.143, '1 bagi sangat penting dari'),
(24, 0.125, '1 bagi mendekati mutlak dari'),
(25, 0.1, '1 bagi mutlak sangat penting dari');

-- --------------------------------------------------------

--
-- Table structure for table `ilab_pengguna`
--

CREATE TABLE `ilab_pengguna` (
  `id_pengguna` int(3) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ilab_pengguna`
--

INSERT INTO `ilab_pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`) VALUES
(64, 'Ardhi', 'ardhi', '80d7ef1d6229aafa8de7385aa5a736a7'),
(76, 'mahardika', 'Mahardika', '7238500f05f9fa38d09ae8318d188080'),
(77, 'r', 'r', '4b43b0aee35624cd95b910189b3dc231'),
(78, 'w', 'w', 'f1290186a5d0b1ceab27f4e77c0c5d68'),
(79, 'v', 'v', '9e3669d19b675bd57058fd4664205d2a'),
(80, 'Putra', 'putra', '5e0c5a0bf82decdd43b2150b622c66c5'),
(81, 'Ardhi Putra', 'a', '0cc175b9c0f1b6a831c399e269772661'),
(82, 'b', 'b', '92eb5ffee6ae2fec3ad71c777531578f'),
(83, 'b', 'b', '92eb5ffee6ae2fec3ad71c777531578f'),
(84, 'c', 'c', '4a8a08f09d37b73795649038408b5f33'),
(85, 'd', 'd', '8277e0910d750195b448797616e091ad');

-- --------------------------------------------------------

--
-- Table structure for table `ilab_perhitungan_alternatif`
--

CREATE TABLE `ilab_perhitungan_alternatif` (
  `id_alternatif` varchar(2) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  `jumlah_alternatif` double NOT NULL,
  `skor_alterntif` double NOT NULL,
  `hasil_alternatif` double NOT NULL,
  `hasil_jumlah_skor` float NOT NULL,
  `id_pengguna` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ilab_perhitungan_alternatif`
--

INSERT INTO `ilab_perhitungan_alternatif` (`id_alternatif`, `id_kriteria`, `jumlah_alternatif`, `skor_alterntif`, `hasil_alternatif`, `hasil_jumlah_skor`, `id_pengguna`) VALUES
('A1', 'K1', 5, 0.2, 0.066666666666666, 1, 64),
('A1', 'K2', 5, 0.2, 0.033333333333334, 1, 64),
('A1', 'K3', 3, 0.31999999999999795, 0.053333333333334, 0.96, 64),
('A1', 'K4', 5.66666666666666, 0.19426847662141797, 0.032378079436904, 1.10085, 64),
('A1', 'K5', 5, 0.2, 0.033333333333334, 1, 64),
('A2', 'K1', 5, 0.2, 0.066666666666666, 1, 64),
('A2', 'K2', 5, 0.2, 0.033333333333334, 1, 64),
('A2', 'K3', 4.5, 0.24222222222222198, 0.040370370370371, 1.09, 64),
('A2', 'K4', 3, 0.32699849170437395, 0.054499748617397, 0.980995, 64),
('A2', 'K5', 5, 0.2, 0.033333333333334, 1, 64),
('A3', 'K1', 5, 0.2, 0.066666666666666, 1, 64),
('A3', 'K2', 5, 0.2, 0.033333333333334, 1, 64),
('A3', 'K3', 6, 0.18666666666666798, 0.031111111111112, 1.12, 64),
('A3', 'K4', 13, 0.07586726998491679, 0.012644544997486, 0.986274, 64),
('A3', 'K5', 5, 0.2, 0.033333333333334, 1, 64),
('A4', 'K1', 5, 0.2, 0.066666666666666, 1, 64),
('A4', 'K2', 5, 0.2, 0.033333333333334, 1, 64),
('A4', 'K3', 7.5, 0.1433333333333326, 0.023888888888889, 1.075, 64),
('A4', 'K4', 13, 0.07586726998491679, 0.012644544997486, 0.986274, 64),
('A4', 'K5', 5, 0.2, 0.033333333333334, 1, 64),
('A5', 'K1', 5, 0.2, 0.066666666666666, 1, 64),
('A5', 'K2', 5, 0.2, 0.033333333333334, 1, 64),
('A5', 'K3', 9, 0.107777777777778, 0.017962962962963, 0.97, 64),
('A5', 'K4', 3, 0.32699849170437395, 0.054499748617397, 0.980995, 64),
('A5', 'K5', 5, 0.2, 0.033333333333334, 1, 64);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ilab_data_alternatif`
--
ALTER TABLE `ilab_data_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `ilab_data_kriteria`
--
ALTER TABLE `ilab_data_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `ilab_hitung_alternatif`
--
ALTER TABLE `ilab_hitung_alternatif`
  ADD UNIQUE KEY `alternatif_pertama_2` (`alternatif_pertama`,`alternatif_kedua`,`id_kriteria`,`id_pengguna`),
  ADD KEY `alternatif_pertama` (`alternatif_pertama`,`alternatif_kedua`,`id_kriteria`,`id_pengguna`),
  ADD KEY `alternatif_kedua` (`alternatif_kedua`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `ilab_hitung_kriteria`
--
ALTER TABLE `ilab_hitung_kriteria`
  ADD UNIQUE KEY `kriteria_pertama` (`kriteria_pertama`,`kriteria_kedua`,`id_pengguna`),
  ADD KEY `kriteria_kedua` (`kriteria_kedua`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `ilab_nilai`
--
ALTER TABLE `ilab_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `ilab_pengguna`
--
ALTER TABLE `ilab_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `ilab_perhitungan_alternatif`
--
ALTER TABLE `ilab_perhitungan_alternatif`
  ADD UNIQUE KEY `id_alternatif_2` (`id_alternatif`,`id_kriteria`,`id_pengguna`),
  ADD KEY `id_alternatif` (`id_alternatif`,`id_kriteria`,`id_pengguna`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ilab_nilai`
--
ALTER TABLE `ilab_nilai`
  MODIFY `id_nilai` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ilab_pengguna`
--
ALTER TABLE `ilab_pengguna`
  MODIFY `id_pengguna` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ilab_hitung_alternatif`
--
ALTER TABLE `ilab_hitung_alternatif`
  ADD CONSTRAINT `ilab_hitung_alternatif_ibfk_1` FOREIGN KEY (`alternatif_pertama`) REFERENCES `ilab_data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ilab_hitung_alternatif_ibfk_2` FOREIGN KEY (`alternatif_kedua`) REFERENCES `ilab_data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ilab_hitung_alternatif_ibfk_3` FOREIGN KEY (`id_pengguna`) REFERENCES `ilab_pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ilab_hitung_alternatif_ibfk_4` FOREIGN KEY (`id_kriteria`) REFERENCES `ilab_data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ilab_hitung_kriteria`
--
ALTER TABLE `ilab_hitung_kriteria`
  ADD CONSTRAINT `ilab_hitung_kriteria_ibfk_1` FOREIGN KEY (`kriteria_pertama`) REFERENCES `ilab_data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ilab_hitung_kriteria_ibfk_2` FOREIGN KEY (`kriteria_kedua`) REFERENCES `ilab_data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ilab_hitung_kriteria_ibfk_3` FOREIGN KEY (`id_pengguna`) REFERENCES `ilab_pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ilab_perhitungan_alternatif`
--
ALTER TABLE `ilab_perhitungan_alternatif`
  ADD CONSTRAINT `ilab_perhitungan_alternatif_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `ilab_data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ilab_perhitungan_alternatif_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `ilab_data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ilab_perhitungan_alternatif_ibfk_3` FOREIGN KEY (`id_pengguna`) REFERENCES `ilab_pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
