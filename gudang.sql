-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2019 at 01:12 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE `t_admin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`username`, `password`) VALUES
('bianco', '123456'),
('dika', 'admin123'),
('linda', 'genit'),
('rifqi', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `t_detail_peminjaman`
--

CREATE TABLE `t_detail_peminjaman` (
  `kd_pinjam` varchar(10) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `kondisi` varchar(20) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_detail_peminjaman`
--

INSERT INTO `t_detail_peminjaman` (`kd_pinjam`, `kd_barang`, `nama_barang`, `jumlah`, `kondisi`, `keterangan`) VALUES
('PEM0017', 'BRG0003', 'Bangku', 2, 'Bagus', 'Belum Dikembalikan'),
('PEM0017', 'BRG0001', 'Terminal Kabel', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0017', 'BRG0005', 'Spidol', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0017', 'BRG0008', 'Tinta Spidol', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0017', 'BRG0009', 'Infocus', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0017', 'BRG0005', 'Spidol', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0017', 'BRG0008', 'Tinta Spidol', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0018', 'BRG0005', 'Spidol', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0018', 'BRG0008', 'Tinta Spidol', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0019', 'BRG0005', 'Spidol', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0019', 'BRG0008', 'Tinta Spidol', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0020', 'BRG0003', 'Bangku', 10, 'Bagus', 'Belum Dikembalikan'),
('PEM0020', 'BRG0009', 'Infocus', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0021', 'BRG0003', 'Bangku', 10, 'Bagus', 'Belum Dikembalikan'),
('PEM0021', 'BRG0009', 'Infocus', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0022', 'BRG0003', 'Bangku', 10, 'Bagus', 'Belum Dikembalikan'),
('PEM0022', 'BRG0009', 'Infocus', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0023', 'BRG0003', 'Bangku', 10, 'Bagus', 'Belum Dikembalikan'),
('PEM0024', 'BRG0003', 'Bangku', 10, 'Bagus', 'Belum Dikembalikan'),
('PEM0024', 'BRG0009', 'Infocus', 10, 'Bagus', 'Belum Dikembalikan'),
('PEM0025', 'BRG0001', 'Terminal Kabel', 2, 'Bagus', 'Belum Dikembalikan'),
('PEM0025', 'BRG0009', 'Infocus', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0026', 'BRG0003', 'Bangku', 12, 'Bagus', 'bangku rusak 1 '),
('PEM0027', 'BRG0003', 'Bangku', 8, 'Bagus', 'Sudah Dikembalikan'),
('PEM0027', 'BRG0008', 'Tinta Spidol', 3, 'Bagus', 'Sudah Dikembalikan'),
('PEM0028', 'BRG0003', 'Bangku', 10, 'Bagus', 'Belum Dikembalikan'),
('PEM0028', 'BRG0009', 'Infocus', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0028', 'BRG0001', 'Terminal Kabel', 1, 'Bagus', 'Belum Dikembalikan'),
('PEM0029', 'BRG0003', 'Bangku', 5, 'Bagus', 'Sudah Dikembalikan'),
('PEM0029', 'BRG0001', 'Terminal Kabel', 4, 'Bagus', 'Sudah Dikembalikan'),
('PEM0030', 'BRG0009', 'Infocus', 2, 'Bagus', 'rusakkkkkkkkkkkkkk'),
('PEM0030', 'BRG0001', 'Terminal Kabel', 1, 'Bagus', 'rusakkkkkkkkkkkkkk'),
('PEM0031', 'BRG0001', 'Terminal Kabel', 4, 'Bagus', 'asdasds'),
('PEM0031', 'BRG0009', 'Infocus', 1, 'Bagus', 'asdasds');

-- --------------------------------------------------------

--
-- Table structure for table `t_detail_pengembalian`
--

CREATE TABLE `t_detail_pengembalian` (
  `kd_kembali` varchar(10) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `pinjam` int(11) NOT NULL,
  `kembali` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_inventaris`
--

CREATE TABLE `t_inventaris` (
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `kondisi_barang` varchar(10) NOT NULL,
  `jumlah_barang` int(10) NOT NULL,
  `denda_barang` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_inventaris`
--

INSERT INTO `t_inventaris` (`kd_barang`, `nama_barang`, `kondisi_barang`, `jumlah_barang`, `denda_barang`) VALUES
('BRG0001', 'Terminal Kabel', 'Bagus', 20, 50000),
('BRG0003', 'Bangku', 'Bagus', 185, 120000),
('BRG0005', 'Spidol', 'Bagus', 1, 5000),
('BRG0008', 'Tinta Spidol', 'Bagus', 5, 25000),
('BRG0009', 'Infocus', 'Bagus', 5, 500000),
('BRG0010', 'penghapus', 'bagus', 1, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `t_inventaris_rusak`
--

CREATE TABLE `t_inventaris_rusak` (
  `kd_barang_rusak` varchar(10) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `tgl_rusak` varchar(20) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_inventaris_rusak`
--

INSERT INTO `t_inventaris_rusak` (`kd_barang_rusak`, `kd_barang`, `nama_barang`, `tgl_rusak`, `keterangan`) VALUES
('BRR0001', '', 'Penghapus', '12-12-2019', 'RUSAK PARAH');

-- --------------------------------------------------------

--
-- Table structure for table `t_kustomer`
--

CREATE TABLE `t_kustomer` (
  `kd_kustomer` varchar(10) NOT NULL,
  `no_induk` varchar(15) NOT NULL,
  `nama_kustomer` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kustomer`
--

INSERT INTO `t_kustomer` (`kd_kustomer`, `no_induk`, `nama_kustomer`, `jenis_kelamin`, `alamat`, `no_telp`, `status`) VALUES
('KUS0006', '', 'Dika', 'Lelaki', 'gg Macho ', '089650682129', 'Mahasiswa'),
('KUS0007', '201643502227', 'Andikha', 'Lelaki', 'gg macho ', '089650682129', 'Mahasiswa'),
('KUS0008', '201643502297', 'Linda', 'Perempuan', 'JL Batu Ampar V', '0213812738', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `t_peminjaman`
--

CREATE TABLE `t_peminjaman` (
  `kd_pinjam` varchar(10) NOT NULL,
  `tgl_pinjam` varchar(20) NOT NULL,
  `kd_kustomer` varchar(20) NOT NULL,
  `kd_petugas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_peminjaman`
--

INSERT INTO `t_peminjaman` (`kd_pinjam`, `tgl_pinjam`, `kd_kustomer`, `kd_petugas`) VALUES
('PEM0001', '2018-10-21', 'KUS0001', 'PTG0001'),
('PEM0002', '2018-10-21', 'KUS0001', 'PTG0001'),
('PEM0003', '2018-10-21', 'KUS0001', 'PTG0001'),
('PEM0004', '2018-10-22', 'KUS0003', 'PTG0003'),
('PEM0005', '2018-10-22', 'KUS0003', 'PTG0002'),
('PEM0006', '2018-10-22', 'KUS0004', 'PTG0003'),
('PEM0007', '2018-10-23', 'KUS0004', 'PTG0001'),
('PEM0008', '2018-10-23', 'KUS0005', 'PTG0001'),
('PEM0009', '2018-10-24', 'KUS0002', 'PTG0002'),
('PEM0010', '2019-3-5', 'KUS0002', 'PTG0001'),
('PEM0011', '2019-4-2', 'KUS0006', 'PTG0001'),
('PEM0012', '2019-5-6', 'KUS0003', 'PTG0001'),
('PEM0013', '2019-5-10', 'KUS0004', 'PTG0002'),
('PEM0014', '2019-5-10', 'KUS0006', 'PTG0001'),
('PEM0015', '2019-5-21', 'KUS0008', 'PTG0003'),
('PEM0016', '2019-5-27', 'KUS0008', 'PTG0002'),
('PEM0017', '2019-5-28', 'KUS0007', 'PTG0003'),
('PEM0018', '2019-5-28', 'KUS0007', 'PTG0002'),
('PEM0019', '2019-5-28', 'KUS0008', 'PTG0003'),
('PEM0020', '2019-5-28', 'KUS0008', 'PTG0003'),
('PEM0021', '2019-5-28', 'KUS0008', 'PTG0002'),
('PEM0022', '2019-5-28', 'KUS0008', 'PTG0003'),
('PEM0023', '2019-5-28', 'KUS0007', 'PTG0003'),
('PEM0024', '2019-5-28', 'KUS0007', 'PTG0003'),
('PEM0025', '2019-5-28', 'KUS0008', 'PTG0003'),
('PEM0026', '2019-5-28', 'KUS0008', 'PTG0003'),
('PEM0027', '2019-5-29', 'KUS0007', 'PTG0003'),
('PEM0028', '2019-6-3', 'KUS0007', 'PTG0001'),
('PEM0029', '2019-6-4', 'KUS0008', 'PTG0003'),
('PEM0030', '2019-6-5', 'KUS0007', 'PTG0003'),
('PEM0031', '2019-6-5', 'KUS0007', 'PTG0003');

-- --------------------------------------------------------

--
-- Table structure for table `t_pengembalian`
--

CREATE TABLE `t_pengembalian` (
  `kd_kembali` varchar(10) NOT NULL,
  `tgl_kembali` varchar(20) NOT NULL,
  `kd_petugas` varchar(10) NOT NULL,
  `kd_pinjam` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_petugas`
--

CREATE TABLE `t_petugas` (
  `kd_petugas` varchar(10) NOT NULL,
  `nama_petugas` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_petugas`
--

INSERT INTO `t_petugas` (`kd_petugas`, `nama_petugas`, `jenis_kelamin`, `alamat`, `no_telp`) VALUES
('PTG0001', 'Bianco', 'Laki Laki', 'JL Kalibata	', '01237123621'),
('PTG0002', 'Dita', 'Perempuan', 'JL Abc', '987654321'),
('PTG0003', 'Miftah', 'Perempuan', 'JlXYZ', '1236543');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `t_inventaris`
--
ALTER TABLE `t_inventaris`
  ADD PRIMARY KEY (`kd_barang`),
  ADD KEY `kd_barang` (`kd_barang`),
  ADD KEY `kd_barang_2` (`kd_barang`);

--
-- Indexes for table `t_inventaris_rusak`
--
ALTER TABLE `t_inventaris_rusak`
  ADD PRIMARY KEY (`kd_barang_rusak`),
  ADD KEY `kd_barang` (`kd_barang`);

--
-- Indexes for table `t_kustomer`
--
ALTER TABLE `t_kustomer`
  ADD PRIMARY KEY (`kd_kustomer`);

--
-- Indexes for table `t_peminjaman`
--
ALTER TABLE `t_peminjaman`
  ADD PRIMARY KEY (`kd_pinjam`),
  ADD KEY `kd_kustomer` (`kd_kustomer`),
  ADD KEY `kd_petugas` (`kd_petugas`);

--
-- Indexes for table `t_pengembalian`
--
ALTER TABLE `t_pengembalian`
  ADD PRIMARY KEY (`kd_kembali`),
  ADD KEY `kd_pinjam` (`kd_pinjam`),
  ADD KEY `kd_petugas` (`kd_petugas`);

--
-- Indexes for table `t_petugas`
--
ALTER TABLE `t_petugas`
  ADD PRIMARY KEY (`kd_petugas`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_peminjaman`
--
ALTER TABLE `t_peminjaman`
  ADD CONSTRAINT `t_peminjaman_ibfk_1` FOREIGN KEY (`kd_petugas`) REFERENCES `t_petugas` (`kd_petugas`);

--
-- Constraints for table `t_pengembalian`
--
ALTER TABLE `t_pengembalian`
  ADD CONSTRAINT `t_pengembalian_ibfk_1` FOREIGN KEY (`kd_pinjam`) REFERENCES `t_peminjaman` (`kd_pinjam`),
  ADD CONSTRAINT `t_pengembalian_ibfk_2` FOREIGN KEY (`kd_petugas`) REFERENCES `t_petugas` (`kd_petugas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
