-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 12:49 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_argatravel_41518110070`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_41518110070`
--

CREATE TABLE `tbl_admin_41518110070` (
  `kd_admin` varchar(50) NOT NULL,
  `nama_admin` varchar(35) DEFAULT NULL,
  `username_admin` varchar(30) DEFAULT NULL,
  `password_admin` varchar(256) DEFAULT NULL,
  `img_admin` varchar(35) DEFAULT NULL,
  `email_admin` varchar(35) DEFAULT NULL,
  `level_admin` varchar(12) DEFAULT NULL,
  `status_admin` int(1) DEFAULT NULL,
  `date_create_admin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin_41518110070`
--

INSERT INTO `tbl_admin_41518110070` (`kd_admin`, `nama_admin`, `username_admin`, `password_admin`, `img_admin`, `email_admin`, `level_admin`, `status_admin`, `date_create_admin`) VALUES
('ADM0001', 'Arga Hutama', 'supervisor', '$2y$10$GbrdkfCg.Su9SrLpOvNMQeNQO.eYdPZnqkKYqoZvQwB6NOoidmPBu', 'assets/backend/img/default.png', 'owner@gmail.com', '1', 1, '1552819095'),
('ADM0002', 'Chelsea Islan', 'admin', '$2y$10$v25.H4XMgDztA2NmxeJQSeaRl2nKboXeRTo1BjPe37R0JG3rXraZG', 'assets/backend/img/default.png', 'adm@gmail.com', '2', 1, '1552276812');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_41518110070`
--

CREATE TABLE `tbl_bank_41518110070` (
  `kd_bank` varchar(50) NOT NULL,
  `nasabah_bank` varchar(50) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nomrek_bank` varchar(50) DEFAULT NULL,
  `photo_bank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank_41518110070`
--

INSERT INTO `tbl_bank_41518110070` (`kd_bank`, `nasabah_bank`, `nama_bank`, `nomrek_bank`, `photo_bank`) VALUES
('BNK0001', 'Arga Hutama', 'BCA', '54902520644', 'assets/frontend/img/bank/bca-icon.jpg'),
('BNK0002', 'Arga Hutama', 'MANDIRI', '6666666666', 'assets/frontend/img/bank/mandiri-icon.jpg'),
('BNK0003', 'Arga Hutama', 'BRI', '7777777777', 'assets/frontend/img/bank/bri-icon.jpg'),
('BNK0004', 'Arga Hutama', 'BNI', '8888888888', 'assets/frontend/img/bank/bni-icon.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus_41518110070`
--

CREATE TABLE `tbl_bus_41518110070` (
  `kd_bus` varchar(50) NOT NULL,
  `nama_bus` varchar(50) DEFAULT NULL,
  `plat_bus` varchar(50) DEFAULT NULL,
  `kapasitas_bus` int(13) DEFAULT NULL,
  `status_bus` int(1) DEFAULT NULL,
  `desc_bus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bus_41518110070`
--

INSERT INTO `tbl_bus_41518110070` (`kd_bus`, `nama_bus`, `plat_bus`, `kapasitas_bus`, `status_bus`, `desc_bus`) VALUES
('B001', 'JKT1', 'B 4514 BLN', 19, 1, '--'),
('B002', 'JKT2', 'B 4514 BLO', 19, 1, '--'),
('B003', 'JKT3', 'B 4514 BLP', 19, 1, '--'),
('B004', 'JKT4', 'B 4514 BLQ', 19, 1, '--'),
('B005', 'JKT5', 'B 4561 BLR', 19, 1, '--'),
('B006', 'JKT6', 'B 1234 BLS', 19, 1, '--'),
('B007', 'JKT7', 'B 1234 BLA', 19, 1, '--'),
('B008', 'JKT8', 'B 4514 BLY', 19, 1, '--'),
('B009', 'JKT9', 'B 4514 BLZ', 19, 1, '--');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal_41518110070`
--

CREATE TABLE `tbl_jadwal_41518110070` (
  `kd_jadwal` varchar(50) NOT NULL,
  `kd_bus` varchar(50) DEFAULT NULL,
  `kd_tujuan` varchar(50) DEFAULT NULL,
  `kd_asal` varchar(50) DEFAULT NULL,
  `wilayah_jadwal` varchar(50) DEFAULT NULL,
  `jam_berangkat_jadwal` time DEFAULT NULL,
  `jam_tiba_jadwal` time DEFAULT NULL,
  `harga_jadwal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal_41518110070`
--

INSERT INTO `tbl_jadwal_41518110070` (`kd_jadwal`, `kd_bus`, `kd_tujuan`, `kd_asal`, `wilayah_jadwal`, `jam_berangkat_jadwal`, `jam_tiba_jadwal`, `harga_jadwal`) VALUES
('J0001', 'B003', 'TJ001', 'TJ008', 'Surabaya', '07:00:00', '10:30:00', '300000'),
('J0002', 'B004', 'TJ002', 'TJ008', 'Bandung', '12:00:00', '15:45:00', '120000'),
('J0003', 'B005', 'TJ003', 'TJ008', 'Yogyakarta', '16:00:00', '19:00:00', '250000'),
('J0004', 'B001', 'TJ004', 'TJ008', 'Semarang', '07:30:00', '10:00:00', '220000'),
('J0005', 'B002', 'TJ005', 'TJ008', 'Malang', '11:00:00', '03:00:00', '330000'),
('J0006', 'B006', 'TJ006', 'TJ008', 'Palembang', '17:00:00', '20:00:00', '250000'),
('J0007', 'B008', 'TJ007', 'TJ008', 'Medan', '02:18:00', '18:18:00', '400000'),
('J0009', 'B009', 'TJ009', 'TJ008', 'Solo', '02:18:00', '18:18:00', '120000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konfirmasi_41518110070`
--

CREATE TABLE `tbl_konfirmasi_41518110070` (
  `kd_konfirmasi` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_konfirmasi` varchar(50) DEFAULT NULL,
  `nama_bank_konfirmasi` varchar(50) DEFAULT NULL,
  `norek_konfirmasi` varchar(50) DEFAULT NULL,
  `total_konfirmasi` varchar(50) DEFAULT NULL,
  `photo_konfirmasi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_konfirmasi_41518110070`
--

INSERT INTO `tbl_konfirmasi_41518110070` (`kd_konfirmasi`, `kd_order`, `nama_konfirmasi`, `nama_bank_konfirmasi`, `norek_konfirmasi`, `total_konfirmasi`, `photo_konfirmasi`) VALUES
('KF0001', 'ORD00002', 'Arga Hutama', 'Mandiri', '12', '128000', '/assets/frontend/upload/payment/ace.png'),
('KF0002', 'ORD00003', '', NULL, '', '250000', '/assets/frontend/upload/payment/a.JPG'),
('KF0003', 'ORD00004', 'Argaa', 'BNI', '1231231231', '300000', '/assets/frontend/upload/payment/ewww.JPG'),
('KF0004', 'ORD00006', 'Mason Greenwood', 'Mandiri', '23423432423', '400000', '/assets/frontend/upload/payment/wwwew.jpg'),
('KF0005', 'ORD00007', 'Arga Hutama', 'Mandiri', '2412423', '120000', '/assets/frontend/upload/payment/download.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_41518110070`
--

CREATE TABLE `tbl_level_41518110070` (
  `kd_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level_41518110070`
--

INSERT INTO `tbl_level_41518110070` (`kd_level`, `nama_level`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_41518110070`
--

CREATE TABLE `tbl_menu_41518110070` (
  `kd_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu_41518110070`
--

INSERT INTO `tbl_menu_41518110070` (`kd_menu`, `nama_menu`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_41518110070`
--

CREATE TABLE `tbl_order_41518110070` (
  `id_order` int(11) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `kd_tiket` varchar(50) DEFAULT NULL,
  `kd_jadwal` varchar(50) DEFAULT NULL,
  `kd_pelanggan` varchar(50) DEFAULT NULL,
  `kd_bank` varchar(50) DEFAULT NULL,
  `asal_order` varchar(200) DEFAULT NULL,
  `nama_order` varchar(50) DEFAULT NULL,
  `tgl_beli_order` varchar(50) DEFAULT NULL,
  `tgl_berangkat_order` varchar(50) DEFAULT NULL,
  `nama_kursi_order` varchar(50) DEFAULT NULL,
  `umur_kursi_order` varchar(50) DEFAULT NULL,
  `no_kursi_order` varchar(50) DEFAULT NULL,
  `no_ktp_order` varchar(50) DEFAULT NULL,
  `no_tlpn_order` varchar(50) DEFAULT NULL,
  `alamat_order` varchar(100) DEFAULT NULL,
  `email_order` varchar(100) DEFAULT NULL,
  `expired_order` varchar(50) DEFAULT NULL,
  `qrcode_order` varchar(100) DEFAULT NULL,
  `status_order` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_41518110070`
--

INSERT INTO `tbl_order_41518110070` (`id_order`, `kd_order`, `kd_tiket`, `kd_jadwal`, `kd_pelanggan`, `kd_bank`, `asal_order`, `nama_order`, `tgl_beli_order`, `tgl_berangkat_order`, `nama_kursi_order`, `umur_kursi_order`, `no_kursi_order`, `no_ktp_order`, `no_tlpn_order`, `alamat_order`, `email_order`, `expired_order`, `qrcode_order`, `status_order`) VALUES
(33, 'ORD00001', 'TORD00001J0003202007113', 'J0003', 'PL0008', 'BNK0004', 'TJ008', 'Arga Hutama', 'Rabu, 08 Juli 2020, 00:36', '2020-07-11', 'Arga Hutama', '23', '3', '213', '023333333', 'Jalan Jalan yuk', 'argahuts@gmail.com', '09-07-2020 00:36:37', 'assets/frontend/upload/qrcode/ORD00001.png', '2'),
(34, 'ORD00002', 'TORD00002202007097', 'J0006', 'PL0008', 'BNK0002', 'TJ008', 'Arga Hutama', 'Rabu, 08 Juli 2020, 01:39', '2020-07-09', 'Kocheng Oren', '14', '7', '56', '023333333', 'Jalan Jalan yuk', 'argahuts@gmail.com', '09-07-2020 01:39:06', 'assets/frontend/upload/qrcode/ORD00002.png', '2'),
(35, 'ORD00003', 'TORD000032020071014', 'J0003', 'PL0008', 'BNK0003', 'TJ008', 'Arga Hutama', 'Kamis, 09 Juli 2020, 03:04', '2020-07-10', 'Berliana Margaretha', '19', '14', '0', '023333333', 'Jalan Jalan yuk', 'argahuts@gmail.com', '10-07-2020 03:04:35', 'assets/frontend/upload/qrcode/ORD00003.png', '2'),
(36, 'ORD00004', 'TORD000042020071211', 'J0001', 'PL0008', 'BNK0004', 'TJ008', 'Arga Hutama', 'Sabtu, 11 Juli 2020, 08:08', '2020-07-12', 'Endri Biwinarni', '47', '11', '2232323232323232', '083333333333', 'Solo', 'argahuts@gmail.com', '12-07-2020 08:08:42', 'assets/frontend/upload/qrcode/ORD00004.png', '2'),
(37, 'ORD00005', 'TORD00005202007162', 'J0002', 'PL0001', 'BNK0004', 'TJ008', 'Arga Hutama', 'Sabtu, 11 Juli 2020, 13:14', '2020-07-16', 'Arga', '23', '2', '342234234432423', '023333333', 'Jalan Jalan yuk', 'argahuts@gmail.com', '12-07-2020 13:14:57', 'assets/frontend/upload/qrcode/ORD00005.png', '2'),
(38, 'ORD00006', 'TORD00006202007133', 'J0007', 'PL0001', 'BNK0001', 'TJ008', 'Arga Hutama', 'Sabtu, 11 Juli 2020, 13:29', '2020-07-13', 'Mason Greenwood', '19', '3', '342234234432423', '023333333', 'Jalan Jalan yuk', 'argahuts@gmail.com', '12-07-2020 13:29:55', 'assets/frontend/upload/qrcode/ORD00006.png', '2'),
(39, 'ORD00007', 'TORD000072020121811', 'J0009', 'PL0001', 'BNK0004', 'TJ008', 'Arga Hutama', 'Sabtu, 11 Juli 2020, 13:39', '2020-12-18', 'Buwung Puyuh', '17', '11', '342234234432423', '023333333', 'Jalan Jalan yuk', 'argahuts@gmail.com', '12-07-2020 13:39:14', 'assets/frontend/upload/qrcode/ORD00007.png', '2'),
(40, 'ORD00008', 'T000082020072513', 'J0004', 'PL0002', 'BNK0004', 'TJ008', 'Otong Surotong', 'Sabtu, 11 Juli 2020, 13:46', '2020-07-25', 'Otong', '69', '13', '02564651321564', '089682261128', 'Gang Buntu', 'sellapurwita36@gmail.com', '12-07-2020 13:46:15', 'assets/frontend/upload/qrcode/ORD00008.png', '2'),
(41, 'ORD00009', 'T00092020072912', 'J0009', 'PL0001', 'BNK0001', 'TJ008', 'Arga Hutama', 'Sabtu, 11 Juli 2020, 14:45', '2020-07-29', 'Dindin badindin', '60', '12', '342234234432423', '023333333', 'Jalan Jalan yuk', 'argahuts@gmail.com', '12-07-2020 14:45:31', 'assets/frontend/upload/qrcode/ORD00009.png', '2'),
(42, 'ORD00010', 'T0010202007121', 'J0009', 'PL0001', 'BNK0002', 'TJ008', 'Arga Hutama', 'Sabtu, 11 Juli 2020, 16:47', '2020-07-12', 'Bambang', '82', '1', '342234234432423', '023333333', 'Jalan Jalan yuk', 'argahuts@gmail.com', '12-07-2020 16:47:09', 'assets/frontend/upload/qrcode/ORD00010.png', '2'),
(43, 'ORD00011', 'T0011202007177', 'J0009', 'PL0003', 'BNK0004', 'TJ008', 'Apaan Bambang', 'Sabtu, 11 Juli 2020, 16:59', '2020-07-17', 'Apaan Bambang', '80', '7', '346454215172455', '6281299397276', 'Cengkareng', 'dimasrestuadrianto@gmail.com', '12-07-2020 16:59:54', 'assets/frontend/upload/qrcode/ORD00011.png', '2'),
(44, 'ORD00012', 'T0012202007302', 'J0002', 'PL0003', 'BNK0002', 'TJ008', 'Apaan Bambang', 'Sabtu, 11 Juli 2020, 17:03', '2020-07-30', 'A', '90', '2', '346454215172455', '6281299397276', 'Cengkareng', 'dimasrestuadrianto@gmail.com', '12-07-2020 17:03:50', 'assets/frontend/upload/qrcode/ORD00012.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan_41518110070`
--

CREATE TABLE `tbl_pelanggan_41518110070` (
  `kd_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `no_ktp_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon_pelanggan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `img_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `status_pelanggan` int(1) DEFAULT NULL,
  `date_create_pelanggan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_pelanggan_41518110070`
--

INSERT INTO `tbl_pelanggan_41518110070` (`kd_pelanggan`, `username_pelanggan`, `password_pelanggan`, `no_ktp_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `email_pelanggan`, `telpon_pelanggan`, `img_pelanggan`, `status_pelanggan`, `date_create_pelanggan`) VALUES
('PL0002', 'otong', '$2y$10$SP7XNH3lyq.iZ4dSND/LwuxJJvNII6sgxgyGyO.2b7Q.6jgdd7lDC', '02564651321564', 'Otong Surotong', 'Gang Buntu', 'sellapurwita36@gmail.com', '089682261128', 'assets/frontend/img/default.png', 1, '1552202266'),
('PL0003', 'bambang', '$2y$10$SP7XNH3lyq.iZ4dSND/LwuxJJvNII6sgxgyGyO.2b7Q.6jgdd7lDC', '346454215172455', 'Apaan Bambang', 'Cengkareng', 'dimasrestuadrianto@gmail.com', '6281299397276', 'assets/frontend/img/default.png', 1, '1593961592'),
('PL0001', 'argahutama', '$2y$10$SP7XNH3lyq.iZ4dSND/LwuxJJvNII6sgxgyGyO.2b7Q.6jgdd7lDC', '342234234432423', 'Arga Hutama', 'Jalan Jalan yuk', 'argahuts@gmail.com', '023333333', 'assets/frontend/img/default.png', 1, '1593961592'),
('PL0004', 'wew', '$2y$10$SP7XNH3lyq.iZ4dSND/LwuxJJvNII6sgxgyGyO.2b7Q.6jgdd7lDC', '34343434344343', 'Wew', 'Jl.in aja dulu', 'rizkifirmansyah435@gmail.com', '08745179471', 'assets/frontend/img/default.png', 1, '1554385261'),
('PL0005', 'Gatau7', '$2y$10$SP7XNH3lyq.iZ4dSND/LwuxJJvNII6sgxgyGyO.2b7Q.6jgdd7lDC', '', 'Gatau Ah', 'Gatau juga', 'gatauah@gmail.com', '000000000', 'assets/frontend/img/default.png', 1, '1594442042');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tiket_41518110070`
--

CREATE TABLE `tbl_tiket_41518110070` (
  `kd_tiket` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_tiket` varchar(50) DEFAULT NULL,
  `kursi_tiket` varchar(50) DEFAULT NULL,
  `umur_tiket` varchar(50) DEFAULT NULL,
  `asal_beli_tiket` varchar(50) DEFAULT NULL,
  `harga_tiket` varchar(50) NOT NULL,
  `etiket_tiket` varchar(100) DEFAULT NULL,
  `status_tiket` varchar(50) NOT NULL,
  `create_tgl_tiket` date DEFAULT NULL,
  `create_admin_tiket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tiket_41518110070`
--

INSERT INTO `tbl_tiket_41518110070` (`kd_tiket`, `kd_order`, `nama_tiket`, `kursi_tiket`, `umur_tiket`, `asal_beli_tiket`, `harga_tiket`, `etiket_tiket`, `status_tiket`, `create_tgl_tiket`, `create_admin_tiket`) VALUES
('T000082020072513', 'ORD00008', 'Otong', '13', '69 Tahun', 'TJ008', '220000', 'assets/backend/upload/etiket/ORD00008.pdf', '2', '2020-07-11', 'supervisor'),
('T00092020072912', 'ORD00009', 'Dindin badindin', '12', '60 Tahun', 'TJ008', '120000', 'assets/backend/upload/etiket/ORD00009.pdf', '2', '2020-07-11', 'supervisor'),
('T0010202007121', 'ORD00010', 'Bambang', '1', '82 Tahun', 'TJ008', '120000', 'assets/backend/upload/etiket/ORD00010.pdf', '2', '2020-07-11', 'supervisor'),
('T0011202007177', 'ORD00011', 'Apaan Bambang', '7', '80 Tahun', 'TJ008', '120000', 'assets/backend/upload/etiket/ORD00011.pdf', '2', '2020-07-11', 'admin'),
('TORD00001J0003202007113', 'ORD00001', 'Arga Hutama', '3', '23 Tahun', 'TJ008', '134000', 'assets/backend/upload/etiket/ORD00001.pdf', '2', '2020-07-08', 'supervisor'),
('TORD00002202007097', 'ORD00002', 'Kocheng Oren', '7', '14 Tahun', 'TJ008', '128000', 'assets/backend/upload/etiket/ORD00002.pdf', '2', '2020-07-08', 'supervisor'),
('TORD000032020071014', 'ORD00003', 'Berliana Margaretha', '14', '19 Tahun', 'TJ008', '250000', 'assets/backend/upload/etiket/ORD00003.pdf', '2', '2020-07-09', 'supervisor'),
('TORD000042020071211', 'ORD00004', 'Endri Biwinarni', '11', '47 Tahun', 'TJ008', '300000', 'assets/backend/upload/etiket/ORD00004.pdf', '2', '2020-07-11', 'supervisor'),
('TORD00005202007162', 'ORD00005', 'Arga', '2', '23 Tahun', 'TJ008', '120000', 'assets/backend/upload/etiket/ORD00005.pdf', '2', '2020-07-11', 'supervisor'),
('TORD00006202007133', 'ORD00006', 'Mason Greenwood', '3', '19 Tahun', 'TJ008', '400000', 'assets/backend/upload/etiket/ORD00006.pdf', '2', '2020-07-11', 'supervisor'),
('TORD000072020121811', 'ORD00007', 'Buwung Puyuh', '11', '17 Tahun', 'TJ008', '120000', 'assets/backend/upload/etiket/ORD00007.pdf', '2', '2020-07-11', 'supervisor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tujuan_41518110070`
--

CREATE TABLE `tbl_tujuan_41518110070` (
  `kd_tujuan` varchar(50) NOT NULL,
  `kota_tujuan` varchar(50) NOT NULL,
  `nama_terminal_tujuan` varchar(50) NOT NULL,
  `terminal_tujuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tujuan_41518110070`
--

INSERT INTO `tbl_tujuan_41518110070` (`kd_tujuan`, `kota_tujuan`, `nama_terminal_tujuan`, `terminal_tujuan`) VALUES
('TJ001', 'Surabaya', 'Terminal Kayu Besar', 'Jl. Letnan Jenderal S. Parman, Kasian, Kedungrejo, Kec. Waru, Kota SBY'),
('TJ002', 'Bandung', 'Terminal Leuwi Panjang', 'Jl. Leuwi Panjang, Kopo, Kec. Bojongloa Kaler, Kota Bandung, Jawa Barat'),
('TJ003', 'Yogyakarta', 'Terminal Giwangan', 'Giwangan, Umbulharjo, Yogyakarta, DIY'),
('TJ004', 'Semarang', 'Terminal Penggaron', 'Penggaron Kidul, Pedurungan, Semarang'),
('TJ005', 'Malang', 'Terminal Arjosari', 'Arjosari, Blimbing, Malang, Jawa Timur'),
('TJ006', 'Palembang', 'Terimnal Alang-alang Lebar', 'Jl. Bypass Alang-Alang Lebar, Kec. Alang-Alang Lebar, Kota Palembang'),
('TJ007', 'Medan', 'Terimnal Terpadu Amplas', 'Timbang Deli, Medan Amplas, Kota Medan, Sumatera Utara 20148'),
('TJ008', 'Jakarta', 'Terimnal Pulogadung', 'Pulogadung, Jakarta Timur, DKI Jakarta'),
('TJ009', 'Solo', 'Terimnal Tirtonadi', 'Jl Jend A Yani 262, Gilingan, Banjarsari, Kota Solo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_41518110070`
--
ALTER TABLE `tbl_admin_41518110070`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `tbl_bank_41518110070`
--
ALTER TABLE `tbl_bank_41518110070`
  ADD PRIMARY KEY (`kd_bank`);

--
-- Indexes for table `tbl_bus_41518110070`
--
ALTER TABLE `tbl_bus_41518110070`
  ADD PRIMARY KEY (`kd_bus`);

--
-- Indexes for table `tbl_jadwal_41518110070`
--
ALTER TABLE `tbl_jadwal_41518110070`
  ADD PRIMARY KEY (`kd_jadwal`),
  ADD KEY `kd_bus` (`kd_bus`),
  ADD KEY `kd_tujuan` (`kd_tujuan`);

--
-- Indexes for table `tbl_konfirmasi_41518110070`
--
ALTER TABLE `tbl_konfirmasi_41518110070`
  ADD PRIMARY KEY (`kd_konfirmasi`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_level_41518110070`
--
ALTER TABLE `tbl_level_41518110070`
  ADD PRIMARY KEY (`kd_level`);

--
-- Indexes for table `tbl_menu_41518110070`
--
ALTER TABLE `tbl_menu_41518110070`
  ADD PRIMARY KEY (`kd_menu`);

--
-- Indexes for table `tbl_order_41518110070`
--
ALTER TABLE `tbl_order_41518110070`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `kd_jadwal` (`kd_jadwal`),
  ADD KEY `kd_kustomer` (`kd_pelanggan`),
  ADD KEY `kd_tiket` (`kd_tiket`),
  ADD KEY `kd_bank` (`kd_bank`);

--
-- Indexes for table `tbl_pelanggan_41518110070`
--
ALTER TABLE `tbl_pelanggan_41518110070`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `tbl_tiket_41518110070`
--
ALTER TABLE `tbl_tiket_41518110070`
  ADD PRIMARY KEY (`kd_tiket`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_tujuan_41518110070`
--
ALTER TABLE `tbl_tujuan_41518110070`
  ADD PRIMARY KEY (`kd_tujuan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_level_41518110070`
--
ALTER TABLE `tbl_level_41518110070`
  MODIFY `kd_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_menu_41518110070`
--
ALTER TABLE `tbl_menu_41518110070`
  MODIFY `kd_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order_41518110070`
--
ALTER TABLE `tbl_order_41518110070`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
