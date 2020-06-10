-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2016 at 12:50 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `koperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `no_ang` varchar(8) NOT NULL,
  `nama_ang` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  PRIMARY KEY (`no_ang`),
  KEY `no_ang` (`no_ang`),
  KEY `no_ang_2` (`no_ang`),
  KEY `no_ang_3` (`no_ang`),
  KEY `no_ang_4` (`no_ang`),
  KEY `no_ang_5` (`no_ang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`no_ang`, `nama_ang`, `alamat`, `kota`, `no_telp`, `pekerjaan`) VALUES
('14010', 'Admin-Tian', 'Perum Griya Permai B/20 No.4 RT.04 RW.04', 'Cikampek', '08997206535', 'Mahasiswa'),
('140111', 'Meydina', 'Teluk Jambe', 'Karawang', '081584685104', 'Mahasiswa'),
('1402112', 'Ummu Farah', 'Pucung', 'Cikampek', '08984095205', 'Mahasiswa'),
('1503113', 'Materi IT', 'Cikampek', 'Karawang', '08997206535', 'CEO Materi IT');

-- --------------------------------------------------------

--
-- Table structure for table `detail_simpanan`
--

CREATE TABLE IF NOT EXISTS `detail_simpanan` (
  `nosimpan` varchar(11) NOT NULL,
  `no_ang` varchar(8) NOT NULL,
  `debet` double NOT NULL,
  `kredit` double NOT NULL,
  `saldo` double NOT NULL,
  PRIMARY KEY (`nosimpan`,`no_ang`),
  KEY `no_ang` (`no_ang`),
  KEY `nosimpan` (`nosimpan`,`no_ang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE IF NOT EXISTS `pinjaman` (
  `kd_pinj` varchar(30) NOT NULL,
  `jns_pinj` varchar(30) DEFAULT NULL,
  `max_pinj` varchar(30) DEFAULT NULL,
  `max_ang` varchar(30) DEFAULT NULL,
  `bunga` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`kd_pinj`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`kd_pinj`, `jns_pinj`, `max_pinj`, `max_ang`, `bunga`) VALUES
('PJ-PK', 'Pinjaman Pokok', '5000000', '12', '10'),
('PJ-MHS', 'Pinjaman Mahasiswa', '10000000', '36', '15'),
('PJ-USH', 'Pinjaman Usaha', '15000000', '12', '30'),
('PJ-Tian', 'Pinjaman Tian', '1000000', '10', '5');

-- --------------------------------------------------------

--
-- Table structure for table `simpan`
--

CREATE TABLE IF NOT EXISTS `simpan` (
  `no_ang` varchar(8) NOT NULL,
  `username` varchar(30) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `ket` varchar(30) NOT NULL,
  `saldo` varchar(30) NOT NULL,
  PRIMARY KEY (`no_ang`),
  KEY `no_ang` (`no_ang`),
  KEY `no_ang_2` (`no_ang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simpan`
--

INSERT INTO `simpan` (`no_ang`, `username`, `tanggal`, `ket`, `saldo`) VALUES
('14010', 'Tian-Chan', '02/02/2014', 'Member Baru', '28000'),
('1402112', 'Ummu', '02/02/2014', 'Member Baru', '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

CREATE TABLE IF NOT EXISTS `simpanan` (
  `kd_simp` varchar(4) NOT NULL,
  `jns_simp` varchar(20) NOT NULL,
  PRIMARY KEY (`kd_simp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simpanan`
--

INSERT INTO `simpanan` (`kd_simp`, `jns_simp`) VALUES
('SBRG', 'Simpanan Barang'),
('SPKK', 'Simpanan Pokok'),
('SWJB', 'Simpanan Wajib'),
('STES', 'Simpanan Uang');

-- --------------------------------------------------------

--
-- Table structure for table `trans_pinjaman`
--

CREATE TABLE IF NOT EXISTS `trans_pinjaman` (
  `nopinjam` varchar(11) NOT NULL,
  `tglpinjam` date NOT NULL,
  `no_ang` varchar(8) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `pinjpokok` double NOT NULL,
  `lama` int(11) NOT NULL,
  `bunga` double NOT NULL,
  `admin` int(11) NOT NULL,
  `jml` double NOT NULL,
  `total` double NOT NULL,
  `angsuran` double NOT NULL,
  PRIMARY KEY (`nopinjam`,`no_ang`),
  KEY `nopinjam` (`nopinjam`,`no_ang`),
  KEY `nopinjam_2` (`nopinjam`,`no_ang`),
  KEY `nopinjam_3` (`nopinjam`,`no_ang`),
  KEY `no_ang` (`no_ang`),
  KEY `no_ang_2` (`no_ang`),
  KEY `nopinjam_4` (`nopinjam`,`no_ang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trans_simpanan`
--

CREATE TABLE IF NOT EXISTS `trans_simpanan` (
  `nosimpan` varchar(11) NOT NULL,
  `tglsimpan` date NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `saldo` double NOT NULL,
  PRIMARY KEY (`nosimpan`),
  KEY `nosimpan` (`nosimpan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
