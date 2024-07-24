-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 09:33 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_olshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `berat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `deskripsi`, `gambar`, `berat`) VALUES
(1, 'Chuka Indako', 11, 42000, 'Bayi Gurita Dengan Saos Manis Dengan Taburan Wijen', 'chuka1.jpeg', 10),
(2, 'Dragon Roll', 11, 96000, 'Katsu Yang Dibalut Dengan Nori dan Nasi Diatasnya Ada Potongan Alpukat Dan Saos Mayo', 'dragon1.jpeg', 8),
(3, 'Spicy Salmon Roll', 11, 130000, 'Alpukat,Timun Yang Dibalut Dengan Nasi dan Nori Dengan Topping  Salmon Bumbu Spicy', 'roll1.jpeg', 6),
(5, 'Pamelo Salad', 11, 58000, 'Salad Dengan Campuran Ikan,Sayur,Mayo dan Disajikan Dengan Chips', 'pamelo1.jpeg', 4),
(9, 'Air Mineral', 10, 10000, '-', 'aer1.jpeg', 1),
(10, 'Sweet Tea', 10, 12000, 'Ice/Hot', 'teh1.jpeg', 1),
(6, 'Sushi Donuts', 11, 74000, 'Nasi Yang Dibalut Ikan,Nori,Serta sayuran lainya.', 'donut1.jpeg', 2),
(7, 'Nigiri Set', 11, 186000, ' Nasi Dengan Toppng,Antara Lain: Salmon,Udang,Belut,Alpukat,Tuna', 'nagiri1.jpeg', 7),
(8, 'Sashimi Set', 11, 225000, 'Nasi Dengan Topping.Antara Lain:Tuna,Salmon,Oister,Udang', 'set1.jpeg', 12),
(12, 'Mochachino', 10, 25000, 'Ice/Hot', 'mocha1.jpeg', 1),
(14, 'Mochi Ice Ceam', 9, 30000, 'Dengan Varian Ice Cream,Antara Lain: Vanila,Matcha,Strawbery', 'mochi1.jpeg', 1),
(15, 'Pancake', 9, 50000, 'Dengan Varian Topping,Antara Lain : Strawberry,Coklat', 'pancake1.jpeg', 1),
(16, 'Matcha Ice Cream', 9, 25000, 'Dengan Topping Mesis,Buah,Sauce Coklat', 'macha1.jpeg', 1),
(17, 'Cupcake Vanilla', 9, 35000, 'Cake Dengan Topping Cream Vanila', 'cup1.jpeg', 1),
(18, 'Pudding Chocolate', 9, 40000, 'Pudding Dengan Topping,Antara Lain : Ice Cream dan Mesis.', 'puding1.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gambar`
--

CREATE TABLE `tbl_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(9, 'desert'),
(10, 'Drink'),
(11, 'Sushi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `password`, `foto`) VALUES
(4, 'aul', 'aul@gmail.com', '1234', NULL),
(2, 'Maman', 'maman@gmail.com', '1234', 'foto.jpg'),
(3, 'arif', 'arifsyaiful182@gmail.com', '123456789', NULL),
(5, 'Wafiq', 'wafiq@gmail.com', '1234', NULL),
(6, 'Rahmatia', 'rahmatiap@gmail.com', '1234', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rinci_transaksi`
--

CREATE TABLE `tbl_rinci_transaksi` (
  `id_rinci` int(11) NOT NULL,
  `no_order` varchar(25) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_rinci_transaksi`
--

INSERT INTO `tbl_rinci_transaksi` (`id_rinci`, `no_order`, `id_barang`, `qty`) VALUES
(3, '20200812O3XECOUY', 8, 1),
(4, '20200812O3XECOUY', 7, 2),
(5, '20200812O3XECOUY', 6, 3),
(6, '20200812O3XECOUY', 5, 4),
(7, '20200812O3XECOUY', 3, 5),
(8, '20200812MKV2NIY9', 8, 1),
(9, '20200812MKV2NIY9', 7, 2),
(10, '20200812MKV2NIY9', 6, 3),
(11, '20200812BNHQ0F9S', 8, 1),
(12, '20200812BNHQ0F9S', 7, 2),
(13, '20200812BNHQ0F9S', 6, 4),
(14, '20200812BNHQ0F9S', 5, 1),
(15, '20200812BNHQ0F9S', 1, 1),
(16, '20200812BNHQ0F9S', 2, 1),
(17, '202008128VGYFL1H', 7, 1),
(18, '20200813RJUV2MGH', 8, 1),
(19, '20200813RJUV2MGH', 7, 1),
(20, '20200813RJUV2MGH', 6, 1),
(21, '20201122AZNBRIVL', 5, 3),
(22, '20201122AZNBRIVL', 7, 1),
(23, '20201122AZNBRIVL', 3, 1),
(24, '20220608L9AI8QTU', 18, 2),
(25, '20220608MQKEGHCJ', 17, 1),
(26, '20220608MQKEGHCJ', 16, 1),
(27, '20220609KM4FLGHQ', 6, 1),
(28, '20220609KM4FLGHQ', 10, 1),
(29, '20220609BMQV30CO', 2, 1),
(30, '20220609BMQV30CO', 15, 1),
(31, '20220609FI2DHBO9', 7, 2),
(32, '20220609FI2DHBO9', 12, 1),
(33, '20220609FI2DHBO9', 16, 1),
(34, '20220609Z1RVTS0E', 8, 1),
(35, '20220609Z1RVTS0E', 10, 1),
(36, '20220609Z1RVTS0E', 16, 1),
(37, '20220609VYH6HMWJ', 5, 2),
(38, '20220609VYH6HMWJ', 9, 1),
(39, '20220609VYH6HMWJ', 12, 1),
(40, '20220609VYH6HMWJ', 14, 1),
(41, '20220609NR2HEQE3', 8, 1),
(42, '20220609NR2HEQE3', 10, 1),
(43, '20220609NR2HEQE3', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_toko` varchar(255) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `alamat_toko` text DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `lokasi`, `alamat_toko`, `no_telpon`) VALUES
(1, 'SushiGenk', 155, 'jl. kesemek', '082284033333');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `no_order` varchar(25) NOT NULL,
  `tgl_order` date DEFAULT NULL,
  `nama_penerima` varchar(25) DEFAULT NULL,
  `hp_penerima` varchar(15) DEFAULT NULL,
  `provinsi` varchar(25) DEFAULT NULL,
  `kota` varchar(25) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kode_pos` varchar(8) DEFAULT NULL,
  `expedisi` varchar(255) DEFAULT NULL,
  `paket` varchar(255) DEFAULT NULL,
  `estimasi` varchar(255) DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `status_bayar` int(1) DEFAULT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `status_order` int(1) DEFAULT NULL,
  `no_resi` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_pelanggan`, `no_order`, `tgl_order`, `nama_penerima`, `hp_penerima`, `provinsi`, `kota`, `alamat`, `kode_pos`, `expedisi`, `paket`, `estimasi`, `ongkir`, `berat`, `grand_total`, `total_bayar`, `status_bayar`, `bukti_bayar`, `atas_nama`, `nama_bank`, `no_rek`, `status_order`, `no_resi`) VALUES
(13, 1, '20200812MKV2NIY9', '2020-08-12', 'Badu Atai', '0822832222222', 'Sumatera Utara', 'Samosir', 'Jl. Agus Salim no.10', '266555', 'jne', 'OKE', '3-6 Hari', 82000, 1900, 67940000, 68022000, 0, NULL, NULL, NULL, NULL, 0, NULL),
(12, 1, '20200812O3XECOUY', '2020-08-12', 'Ani', '0822832222222', 'DKI Jakarta', 'Jakarta Pusat', 'Jl. Agus Salim', '266555', 'tiki', 'ECO', '4 Hari', 40000, 5155, 73628000, 73668000, 1, 'bukti_bayar1.jpeg', 'Budi', 'BNI', '1234-1234-1234', 3, 'BDG9993829329382'),
(14, 1, '20200812BNHQ0F9S', '2020-08-12', 'andi', '0822832222222', 'Banten', 'Cilegon', 'Jl. Imbon', '266555', 'jne', 'OKE', '2-3 Hari', 36000, 3900, 96612000, 96648000, 1, 'bukti_bayar.jpeg', 'Budi', 'BRI', '2938-1212-1212-1212', 3, 'JKT02283923927392'),
(15, 1, '202008128VGYFL1H', '2020-08-12', 'Lius', '0822832222222', 'Banten', 'Lebak', 'Jl. Agus Salim', '266555', 'jne', 'OKE', '3-6 Hari', 12000, 300, 870000, 882000, 0, NULL, NULL, NULL, NULL, 0, NULL),
(16, 2, '20200813RJUV2MGH', '2020-08-13', 'Maman', '0822832222222', 'Riau', 'Dumai', 'Jl. Agus Salim', '266555', 'jne', 'OKE', '3-6 Hari', 78000, 1400, 23070000, 23148000, 0, NULL, NULL, NULL, NULL, 0, NULL),
(17, 2, '20201122AZNBRIVL', '2021-01-06', 'Maman', '082283333333', 'Sumatera Utara', '15', 'Jl.Setting Alamat Sekolah', '222222', 'tiki', 'ECO', '4 Hari', 126000, 2711, 2386000, 2512000, 1, 'fallen.png', 'Maman', 'BRI', '92828282828', 3, '123123123123123'),
(18, 3, '20220608L9AI8QTU', '2022-06-08', 'Sendy', '098765432', 'Jawa Barat', '54', 'hauaujhugygy', '12345', 'jne', 'REG', '1-2 Hari', 9000, 2, 80000, 89000, 1, 'chuka1.jpeg', 'Sendy', 'Madiri', '156789098765', 2, '1234'),
(19, 3, '20220608MQKEGHCJ', '2022-06-08', 'Sendy', '09752266090-', 'DI Yogyakarta', '135', 'gl[odt468h', '124367', 'pos', 'Paket Kilat Khusus', '2 HARI Hari', 17000, 2, 60000, 77000, 1, 'hyu.jpg', 'uti', 'Madiri', '897550', 3, '890074'),
(20, 3, '20220609KM4FLGHQ', '2022-06-09', 'Sendy', '09752266090-', 'Bengkulu', '63', 'gl[odt468h', '124367', 'jne', 'OKE', '3-6 Hari', 40000, 3, 86000, 126000, 1, 'hyu1.jpg', 'Sendy', 'Madiri', '2ewq', 2, 'sda'),
(21, 5, '20220609BMQV30CO', '2022-06-09', 'wafiq', '08956845637', 'DKI Jakarta', '154', 'layur', '31220', 'jne', 'CTC', '1-2 Hari', 9000, 9, 146000, 155000, 1, 'hyu2.jpg', 'wafiq', 'mandiri', '14529333945', 2, '123'),
(22, 4, '20220609FI2DHBO9', '2022-06-09', 'aulia', '09876237477', 'DKI Jakarta', '154', 'jl.hajiten II', '130220', 'tiki', 'ONS', '1 Hari', 18000, 16, 422000, 440000, 1, 'hyu3.jpg', 'aulia', 'Madiri', '123452237', 2, '123456'),
(23, 6, '20220609Z1RVTS0E', '2022-06-09', 'Putri', '08123457', 'Jawa Barat', '54', 'Taman Harapan Baru', '12334', 'jne', 'OKE', '2-3 Hari', 8000, 14, 262000, 270000, 1, 'WhatsApp_Image_2022-06-09_at_12_11_13.jpeg', 'Rahmatia', 'mandiri', '1564326789', 0, NULL),
(24, 4, '20220609VYH6HMWJ', '2022-06-09', 'aulia', '09876237477', 'DKI Jakarta', '154', 'jl.hajiten II', '130220', 'tiki', 'ONS', '1 Hari', 18000, 11, 181000, 199000, 1, 'hyu4.jpg', 'aulia', 'bca', '124354', 2, '13214'),
(25, 6, '20220609NR2HEQE3', '2022-06-09', 'Putri', '0876545678', 'Jawa Barat', '54', 'Taman Harapan Baru', '12334', 'jne', 'OKE', '2-3 Hari', 8000, 14, 272000, 280000, 1, 'WhatsApp_Image_2022-06-09_at_12_11_131.jpeg', 'Rahmata', 'Mandiri', '0987654', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `level_user` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`, `level_user`) VALUES
(1, 'Arif', 'admin', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`) USING BTREE;

--
-- Indexes for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  ADD PRIMARY KEY (`id_gambar`) USING BTREE;

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`) USING BTREE;

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`) USING BTREE;

--
-- Indexes for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  ADD PRIMARY KEY (`id_rekening`) USING BTREE;

--
-- Indexes for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  ADD PRIMARY KEY (`id_rinci`) USING BTREE;

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`) USING BTREE;

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  MODIFY `id_rinci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
