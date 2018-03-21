-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2018 at 08:30 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suryav2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblm_aktivitas`
--

CREATE TABLE `tblm_aktivitas` (
  `idAktivitas` int(11) NOT NULL,
  `namaAktivitas` varchar(123) NOT NULL,
  `kategoriAktivitas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblm_customer`
--

CREATE TABLE `tblm_customer` (
  `idCustomer` int(11) NOT NULL,
  `namaCustomer` varchar(200) NOT NULL,
  `nomorTelepon` varchar(100) NOT NULL,
  `lastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblm_customer`
--

INSERT INTO `tblm_customer` (`idCustomer`, `namaCustomer`, `nomorTelepon`, `lastModified`) VALUES
(1, 'Aditya Septa', '087852418373', '2018-03-21 06:47:02'),
(2, 'Wanda Hamida', '081282553041', '2018-03-21 07:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblm_dimensi`
--

CREATE TABLE `tblm_dimensi` (
  `dimensi` varchar(20) NOT NULL,
  `definisi` text NOT NULL,
  `correctiveAction` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblm_dimensi`
--

INSERT INTO `tblm_dimensi` (`dimensi`, `definisi`, `correctiveAction`) VALUES
('Assurance', 'Pengetahuan, kesopanan dan kemampuan karyawan untuk memberikan keyakinan kepada Konsumen sehingga merasa nyaman atau terjamin.\r\n', 'Perusahaan perlu meningkatkan kualitas SDM terutama pengetahuan, kesopanan dan kemampuan karyawan meyakinkan Konsumen sehingga merasa nyaman atau terjamin.\r\n'),
('Empathy', 'Perusahaan memberikan pelayanan yang sesuai dengan kebutuhan konsumen. Produsen memberikan pelayanan yang membuat perusahaan juga merasakan apa yang dirasakan dan dibutuhkan \r\n', 'Perusahaan perlu meningkatkan kualitas layanan agar lebih sesuai sesuai dengan kebutuhan konsumen dan layanan yang lebih merasakan apa yang dirasakan konsumen\r\n'),
('Reliability', 'Kemampuan untuk menunjukan atau melaksanakan service yang dijanjikan secara tepat dan dapat dipercaya. Pelayanan harus tepat waktu dalam spesifikasi yang sama \r\n', 'Perusahaan perlu meningkatkan kualitas ketepatan service terutama tepat waktu dan tepat spesifikasi agar sesuai dengan yang dijanjikan sehingga kepercayaan konsumen terus meningkat \r\n'),
('Responsiveness', 'Tindakan yang berasal dari kemauan untuk memberikan konsumen pelayanan yang tangkas dan cepat \r\n', 'Perusahaan perlu meningkatkan kualitas layanan kepada konsumen agar lebih tangkas dan cepat \r\n'),
('Tangibles', 'Penampilan luar dari service quality yang dapat berupa fasilitas fisik, peralatan, personalia dan komunikasi', 'Perusahaan perlu meningkatkan kualitas fasilitas fisik, peralatan, penampilan dan kemampuan komunikasi SDM');

-- --------------------------------------------------------

--
-- Table structure for table `tblm_kategoriproduksi`
--

CREATE TABLE `tblm_kategoriproduksi` (
  `idKategoriProduksi` int(11) NOT NULL,
  `namaKategoriProduksi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblm_materialdasar`
--

CREATE TABLE `tblm_materialdasar` (
  `idMaterial` int(11) NOT NULL,
  `kodeMaterial` varchar(255) NOT NULL,
  `namaMaterial` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `stokMaterial` float NOT NULL,
  `safetyStock` float NOT NULL,
  `kategori` varchar(123) NOT NULL DEFAULT 'Emas',
  `lastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblm_materialdasar`
--

INSERT INTO `tblm_materialdasar` (`idMaterial`, `kodeMaterial`, `namaMaterial`, `satuan`, `stokMaterial`, `safetyStock`, `kategori`, `lastModified`) VALUES
(7, '101', 'Emas Kuning 65%', 'gram', 200, 100, 'Emas', '0000-00-00 00:00:00'),
(8, '102', 'Emas Kuning 63%', 'gram', 200, 100, 'Emas', '0000-00-00 00:00:00'),
(9, '103', 'Emas Kuning 60%', 'gram', 200, 100, 'Emas', '0000-00-00 00:00:00'),
(10, '104', 'Emas Kuning 59.5%', 'gram', 200, 100, 'Emas', '0000-00-00 00:00:00'),
(11, '105', 'Emas Kuning 48%', 'gram', 200, 100, 'Emas', '0000-00-00 00:00:00'),
(12, '106', 'Emas Kuning 40%', 'gram', 200, 100, 'Emas', '0000-00-00 00:00:00'),
(13, '107', 'Emas Kuning 38%', 'gram', 200, 100, 'Emas', '0000-00-00 00:00:00'),
(14, '201', 'Emas Rose Gold 75%', 'gram', 885.16, 100, 'Emas', '0000-00-00 00:00:00'),
(15, '202', 'Emas Rose Gold 70%', 'gram', 30.74, 100, 'Emas', '0000-00-00 00:00:00'),
(16, '203', 'Emas Putih 70%', 'gram', 200, 100, 'Emas', '0000-00-00 00:00:00'),
(17, '204', 'Emas Putih 75%', 'gram', 200, 100, 'Emas', '0000-00-00 00:00:00'),
(18, '205', 'Emas Kuning 70%', 'gram', 76.8, 100, 'Emas', '0000-00-00 00:00:00'),
(19, '206', 'Emas Kuning 80%', 'gram', 200, 100, 'Emas', '0000-00-00 00:00:00'),
(20, '207', 'Emas Swasa 50%', 'gram', 200, 100, 'Emas', '0000-00-00 00:00:00'),
(21, '301', 'Alloy', 'gram', -8.48, 100, 'Non Emas', '0000-00-00 00:00:00'),
(22, '302', 'Tembaga', 'gram', 200, 100, 'Non Emas', '0000-00-00 00:00:00'),
(23, '303', 'Perak', 'gram', 200, 100, 'Non Emas', '0000-00-00 00:00:00'),
(24, '304', 'Paladium', 'gram', 193.4, 100, 'Non Emas', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblm_produkdetail`
--

CREATE TABLE `tblm_produkdetail` (
  `idProdukDetail` int(11) NOT NULL,
  `idProdukHeader` int(11) NOT NULL,
  `bahan` varchar(200) NOT NULL,
  `kadarBahan` int(11) NOT NULL,
  `namaBatu` varchar(200) NOT NULL,
  `beratBatu` int(11) NOT NULL,
  `ukuran` int(11) NOT NULL,
  `berlian` varchar(200) NOT NULL,
  `beratBerlian` int(11) NOT NULL,
  `hargaBerlian` int(11) NOT NULL,
  `batuZirkon` varchar(100) NOT NULL,
  `jumlahBatuZirkon` int(11) NOT NULL,
  `hargaBatuZirkon` int(11) NOT NULL,
  `krumWarna` varchar(200) NOT NULL,
  `hargaKrumWarna` int(11) NOT NULL,
  `keteranganKrum` varchar(255) NOT NULL,
  `tipeIkatan` varchar(200) NOT NULL,
  `model` varchar(200) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblm_produkdetail`
--

INSERT INTO `tblm_produkdetail` (`idProdukDetail`, `idProdukHeader`, `bahan`, `kadarBahan`, `namaBatu`, `beratBatu`, `ukuran`, `berlian`, `beratBerlian`, `hargaBerlian`, `batuZirkon`, `jumlahBatuZirkon`, `hargaBatuZirkon`, `krumWarna`, `hargaKrumWarna`, `keteranganKrum`, `tipeIkatan`, `model`, `dateCreated`) VALUES
(1, 0, 'Emas Kuning', 99, 'Ruby', 5, 8, 'Swarovski', 5, 300000, 'PRQ', 1, 4000000, 'Merah', 10000, 'Mengkilat', 'Bungkus', 'Melungkir', '2018-03-02 16:43:16'),
(2, 0, 'Emas Kuning', 80, 'Ruby', 30, 8, 'Swarovski', 40, 30000000, 'PRQ', 2, 1000000, 'Merah', 100000, 'Mengkilat', 'Mangkok Kuku', 'Mantap', '2018-03-03 20:37:48'),
(3, 0, 'Perak', 99, 'Ruby', 23, 2, 'Swarovski', 6, 500000, 'Swarovski', 4, 500000, 'Putih', 5000000, 'Doff', 'Bungkus', 'Sangar', '2018-03-02 20:41:12'),
(4, 0, 'Emas Putih', 70, 'Saphire', 5, 12, '', 0, 0, '', 20, 5000, 'Putih', 40000, 'Kombinasi', 'Bungkus', 'Cincin Wanita', '2018-03-05 03:42:10'),
(5, 0, 'Perak', 925, '', 0, 16, '', 0, 0, 'PRQ', 0, 1000, 'Putih', 40000, '', 'Kuku', '', '2018-03-09 12:28:56'),
(6, 0, 'Emas Putih', 70, 'Diamond', 0, 21, '0', 0, 0, '', 0, 0, 'Putih', 35000, 'Krum Putih Spesial', 'Kuku', 'Cincin Cewek', '2018-03-19 13:30:00'),
(7, 0, 'Emas Putih', 70, 'Diamond', 0, 21, '2.55 mm - 2.60 mm', 0, 0, '', 0, 0, 'Putih', 0, 'Putih Polos', 'Kuku', 'Cincin Cewek Diamod', '2018-03-19 13:55:45'),
(8, 0, 'Emas Putih', 70, 'Diamond', 0, 0, 'berlian poin 10', 0, 1100, '', 0, 0, 'Putih', 30000, 'Putih Polos', 'Kuku', 'Anting 4 Kuku', '2018-03-19 14:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblm_produkheader`
--

CREATE TABLE `tblm_produkheader` (
  `idProdukHeader` int(11) NOT NULL,
  `kodeProduk` int(11) NOT NULL,
  `namaProduk` varchar(255) NOT NULL,
  `jenisProduk` varchar(100) NOT NULL,
  `deskripsiProduk` text NOT NULL,
  `hargaProduk` int(11) NOT NULL,
  `idKategoriProduksi` int(11) NOT NULL,
  `stokProduk` double NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblm_user`
--

CREATE TABLE `tblm_user` (
  `idUser` int(11) NOT NULL,
  `username` varchar(123) NOT NULL,
  `password` varchar(123) NOT NULL,
  `nama` varchar(123) NOT NULL,
  `jabatan` varchar(132) NOT NULL,
  `level` int(11) NOT NULL,
  `nomorTelepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fotoUser` text NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblm_user`
--

INSERT INTO `tblm_user` (`idUser`, `username`, `password`, `nama`, `jabatan`, `level`, `nomorTelepon`, `email`, `fotoUser`, `dateCreated`) VALUES
(1, 'admprod', 'admprod', 'admprod', 'Admin Produksi', 1, '', '', '', '2018-03-21 13:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblt_bom`
--

CREATE TABLE `tblt_bom` (
  `idBOM` int(11) NOT NULL,
  `idSubSPK` int(11) NOT NULL,
  `idKloter` int(11) NOT NULL,
  `idMaterial` int(11) NOT NULL,
  `jumlah` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblt_factproduction`
--

CREATE TABLE `tblt_factproduction` (
  `idProProd` int(11) NOT NULL,
  `idSPKHeader` int(11) NOT NULL,
  `idSubSPK` int(11) NOT NULL,
  `idWadah` int(11) NOT NULL,
  `idAktivitas` int(11) NOT NULL,
  `idPIC` int(11) NOT NULL,
  `RealisasiStartDate` datetime NOT NULL,
  `RealisasiEndDate` datetime NOT NULL,
  `berat` double NOT NULL,
  `beratAwal` double NOT NULL,
  `kembali` double NOT NULL,
  `statusBerat` varchar(123) NOT NULL,
  `statusWork` varchar(231) NOT NULL,
  `statusSPK` varchar(23) NOT NULL,
  `idKategoriProduksi` int(11) NOT NULL,
  `lastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblt_gambarproduk`
--

CREATE TABLE `tblt_gambarproduk` (
  `idGambar` int(11) NOT NULL,
  `idProdukHeader` int(11) NOT NULL,
  `urlGambar` text NOT NULL,
  `jenisGambar` varchar(200) NOT NULL,
  `lastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblt_invoicedetail`
--

CREATE TABLE `tblt_invoicedetail` (
  `idInvoiceDetail` int(11) NOT NULL,
  `idInvoiceHeader` int(11) NOT NULL,
  `idPOHeader` varchar(255) NOT NULL,
  `beratTotal` float NOT NULL,
  `beratBatu` float NOT NULL,
  `susut` float DEFAULT NULL,
  `beratAkhir` float NOT NULL,
  `hargaAkhir` float NOT NULL,
  `prosentase` float NOT NULL,
  `beratHargaAkhir` float NOT NULL,
  `upah` float NOT NULL,
  `jumlahDatangBerlian` float NOT NULL,
  `beratDatangBerlian` float NOT NULL,
  `upahPasangBerlian` float NOT NULL,
  `upahBerlian` float NOT NULL,
  `jumlahBatuZirkon` float NOT NULL,
  `hargaBatuZirkon` float NOT NULL,
  `upahCZ` float NOT NULL,
  `hargaKrumWarna` float NOT NULL,
  `datangEmas` float NOT NULL,
  `hargaDatangEmas` float NOT NULL,
  `totalDatangEmas` float NOT NULL,
  `panjar` float NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblt_invoiceheader`
--

CREATE TABLE `tblt_invoiceheader` (
  `idInvoiceHeader` int(11) NOT NULL,
  `idPOHeader` varchar(255) NOT NULL,
  `totalHarga` int(11) NOT NULL,
  `tipeInvoice` varchar(255) DEFAULT NULL,
  `idKategoriProduksi` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblt_kloter`
--

CREATE TABLE `tblt_kloter` (
  `idGroup` int(11) NOT NULL,
  `idKloter` varchar(11) NOT NULL,
  `idSPKHeader` int(11) NOT NULL,
  `nama` varchar(1232) NOT NULL,
  `kadar` int(11) NOT NULL,
  `tanggalKloter` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblt_penilaian`
--

CREATE TABLE `tblt_penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `h1` int(11) NOT NULL,
  `h2` int(11) NOT NULL,
  `h3` int(11) NOT NULL,
  `h4` int(11) NOT NULL,
  `h5` int(11) NOT NULL,
  `h6` int(11) NOT NULL,
  `h7` int(11) NOT NULL,
  `h8` int(11) NOT NULL,
  `h9` int(11) NOT NULL,
  `h10` int(11) NOT NULL,
  `r1` int(11) NOT NULL,
  `r2` int(11) NOT NULL,
  `r3` int(11) NOT NULL,
  `r4` int(11) NOT NULL,
  `r5` int(11) NOT NULL,
  `r6` int(11) NOT NULL,
  `r7` int(11) NOT NULL,
  `r8` int(11) NOT NULL,
  `r9` int(11) NOT NULL,
  `r10` int(11) NOT NULL,
  `u1` int(11) NOT NULL,
  `u2` int(11) NOT NULL,
  `rataHarapanT` double NOT NULL,
  `rataHarapanR` double NOT NULL,
  `rataHarapanRE` double NOT NULL,
  `rataHarapanA` double NOT NULL,
  `rataHarapanE` double NOT NULL,
  `rataRealisasiT` double NOT NULL,
  `rataRealisasiR` double NOT NULL,
  `rataRealisasiRE` double NOT NULL,
  `rataRealisasiA` double NOT NULL,
  `rataRealisasiE` double NOT NULL,
  `rataHarapan` double NOT NULL,
  `rataRealisasi` double NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblt_penilaian`
--

INSERT INTO `tblt_penilaian` (`id_penilaian`, `id_user`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `h7`, `h8`, `h9`, `h10`, `r1`, `r2`, `r3`, `r4`, `r5`, `r6`, `r7`, `r8`, `r9`, `r10`, `u1`, `u2`, `rataHarapanT`, `rataHarapanR`, `rataHarapanRE`, `rataHarapanA`, `rataHarapanE`, `rataRealisasiT`, `rataRealisasiR`, `rataRealisasiRE`, `rataRealisasiA`, `rataRealisasiE`, `rataHarapan`, `rataRealisasi`, `dateCreated`) VALUES
(1, 1, 3, 4, 5, 5, 3, 2, 4, 3, 5, 6, 5, 2, 3, 4, 5, 5, 5, 4, 6, 3, 87, 99, 3.5, 5, 2.5, 3.5, 5.5, 3.5, 3.5, 5, 4.5, 4.5, 4, 4.2, '2018-03-13 16:03:58'),
(2, 1, 5, 5, 5, 5, 2, 4, 5, 3, 3, 3, 3, 4, 3, 4, 5, 6, 4, 5, 5, 5, 69, 22, 5, 5, 3, 4, 3, 3.5, 3.5, 5.5, 4.5, 5, 4, 4.4, '2018-03-18 08:26:13'),
(3, 1, 5, 5, 5, 3, 6, 5, 5, 3, 3, 5, 3, 4, 1, 5, 4, 5, 6, 6, 4, 5, 22, 73, 5, 4, 5.5, 4, 4, 3.5, 3, 4.5, 6, 4.5, 4.5, 4.3, '2018-03-18 08:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblt_pertanyaan`
--

CREATE TABLE `tblt_pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `indikator` text NOT NULL,
  `dimensi` varchar(20) NOT NULL,
  `kode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblt_pertanyaan`
--

INSERT INTO `tblt_pertanyaan` (`id_pertanyaan`, `indikator`, `dimensi`, `kode`) VALUES
(1, 'Fasilitas fisik Surya Sumatera tampak baik', 'Tangibles', 'T1'),
(2, 'Para karyawan yang melayani anda pada saat menggunakan jasa penerbangan Surya Sumatera berpenampilan rapi dan enak dilihat', 'Tangibles', 'T2'),
(3, 'Surya Sumatera menepati janji sesuai dengan waktu yang telah ditentukan\r\n', 'Reliability', 'R1'),
(4, 'Surya Sumatera memberikan pelayanan yang sesuai dengan rencana yang ditentukan\r\n', 'Reliability', 'R2'),
(5, 'Surya Sumatera memberikan pelayanan yang cepat', 'Responsiveness', 'RE1'),
(6, 'Surya Sumatera menanggapi permintaan Konsumennya dengan cepat', 'Responsiveness', 'RE2'),
(7, 'Surya Sumatera memberikan pelayanan yang berkualitas baik', 'Assurance', 'A1'),
(8, 'Surya Sumatera memberikan pelayanan yang membuat rasa nyaman saat menggunakan jasa penerbangan', 'Assurance', 'A2'),
(9, 'Surya Sumatera memahami kebutuhan spesifik para Konsumennya dengan baik', 'Empathy', 'E1'),
(10, 'Surya Sumatera berusaha untuk membangun minat Konsumennya untuk memberikan pelayanan yang berkualitas', 'Empathy', 'E2');

-- --------------------------------------------------------

--
-- Table structure for table `tblt_podetail`
--

CREATE TABLE `tblt_podetail` (
  `idPODetail` int(11) NOT NULL,
  `idPOHeader` int(11) NOT NULL,
  `hargaBahan` float NOT NULL,
  `upah` float NOT NULL,
  `datangEmas` float NOT NULL,
  `hargaDatangEmas` float NOT NULL,
  `kadarDatangEmas` float NOT NULL,
  `datangBerlian` varchar(255) NOT NULL,
  `jumlahDatangBerlian` int(11) NOT NULL,
  `upahPasangBerlian` int(11) NOT NULL,
  `tipeCustomer` varchar(100) NOT NULL,
  `pekerjaanTambahan` varchar(100) NOT NULL,
  `keteranganTambahan` varchar(255) NOT NULL,
  `biayaTambahan` int(11) NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `metode` varchar(100) NOT NULL,
  `budget` int(11) NOT NULL,
  `panjar` float NOT NULL,
  `namaBarang` varchar(255) NOT NULL,
  `idProdukTrading` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblt_podetail`
--

INSERT INTO `tblt_podetail` (`idPODetail`, `idPOHeader`, `hargaBahan`, `upah`, `datangEmas`, `hargaDatangEmas`, `kadarDatangEmas`, `datangBerlian`, `jumlahDatangBerlian`, `upahPasangBerlian`, `tipeCustomer`, `pekerjaanTambahan`, `keteranganTambahan`, `biayaTambahan`, `kuantitas`, `metode`, `budget`, `panjar`, `namaBarang`, `idProdukTrading`, `jumlah`, `harga`, `dateCreated`) VALUES
(1, 0, 8000000, 300000, 10, 300000, 8000000, '1', 1, 5000000, 'Standard', 'Enamel', 'Dibekukan', 2000000, 2, 'Design', 100000, 100000, '', 0, 0, 0, '0000-00-00 00:00:00'),
(2, 0, 500000, 1000000, 3, 500000, 500000, '4', 3, 500000, 'Standard', 'Enamel', 'apik', 500000, 1, 'Design', 50000000, 150000, '', 0, 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblt_poheader`
--

CREATE TABLE `tblt_poheader` (
  `idPOHeader` int(11) NOT NULL,
  `nomorPO` int(11) NOT NULL,
  `idProdukHeader` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `idSalesPerson` int(11) NOT NULL,
  `tanggalMasuk` datetime NOT NULL,
  `tanggalPenyelesaian` datetime NOT NULL,
  `berat` double NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `totalHarga` float NOT NULL,
  `idKategoriProduksi` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblt_poheader`
--

INSERT INTO `tblt_poheader` (`idPOHeader`, `nomorPO`, `idProdukHeader`, `idCustomer`, `idSalesPerson`, `tanggalMasuk`, `tanggalPenyelesaian`, `berat`, `kuantitas`, `totalHarga`, `idKategoriProduksi`, `dateCreated`) VALUES
(3, 638, 8, 11, 19, '2018-03-19 00:00:00', '2018-03-28 00:00:00', 0, 0, 800000, 0, '2018-03-19 14:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblt_rekapproduksi`
--

CREATE TABLE `tblt_rekapproduksi` (
  `idRekapProduksi` int(11) NOT NULL,
  `idPIC` int(11) NOT NULL,
  `waktuPengembalian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `beratKembali` double NOT NULL,
  `idKategoriProduksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblt_rekapproduksiline`
--

CREATE TABLE `tblt_rekapproduksiline` (
  `idRekapProduksiLine` int(11) NOT NULL,
  `idRekapProduksi` varchar(50) NOT NULL,
  `idProProd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblt_rencanaproduksi`
--

CREATE TABLE `tblt_rencanaproduksi` (
  `idRencana` int(11) NOT NULL,
  `idSPK` int(11) NOT NULL,
  `idAktivitas` int(11) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblt_spkdetail`
--

CREATE TABLE `tblt_spkdetail` (
  `idSPKDetail` int(11) NOT NULL,
  `idSPKHeader` int(11) NOT NULL,
  `batuTerhadapKruman` varchar(200) NOT NULL,
  `batuTerhadapPukulan` varchar(200) NOT NULL,
  `batuTerhadapGoresan` varchar(200) NOT NULL,
  `keadaanBatuTengah` varchar(200) NOT NULL,
  `statusJadwal` varchar(100) NOT NULL,
  `tanggalApprovalDesain` datetime NOT NULL,
  `picDesain` int(11) NOT NULL,
  `statusPersetujuan` varchar(100) NOT NULL,
  `durasi` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblt_spkheader`
--

CREATE TABLE `tblt_spkheader` (
  `idSPKHeader` int(11) NOT NULL,
  `nomorFaktur` int(11) NOT NULL,
  `idPOHeader` int(11) NOT NULL,
  `idProdukHeader` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `idKategoriProduksi` int(11) NOT NULL,
  `statusSPK` varchar(100) NOT NULL DEFAULT 'On progress',
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblt_spkheader`
--

INSERT INTO `tblt_spkheader` (`idSPKHeader`, `nomorFaktur`, `idPOHeader`, `idProdukHeader`, `idCustomer`, `idKategoriProduksi`, `statusSPK`, `dateCreated`) VALUES
(1, 4311, 1121, 1, 1, 0, 'On progress', '0000-00-00 00:00:00'),
(2, 4312, 638, 8, 11, 0, 'On progress', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblt_stokbarang`
--

CREATE TABLE `tblt_stokbarang` (
  `idStok` int(11) NOT NULL,
  `tipeBarang` varchar(255) NOT NULL,
  `kodeBarang` varchar(255) NOT NULL,
  `jumlah` double NOT NULL,
  `jenisPergerakanBarang` varchar(255) NOT NULL,
  `hargaBeli` double NOT NULL,
  `tanggalMasuk` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblt_stokbarang`
--

INSERT INTO `tblt_stokbarang` (`idStok`, `tipeBarang`, `kodeBarang`, `jumlah`, `jenisPergerakanBarang`, `hargaBeli`, `tanggalMasuk`) VALUES
(1, 'Produk Jadi', 'PRK 2312', 2, 'IN', 0, '2018-03-03 20:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblt_subspk`
--

CREATE TABLE `tblt_subspk` (
  `idSubSPK` int(11) NOT NULL,
  `idSPKHeader` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblt_wadah`
--

CREATE TABLE `tblt_wadah` (
  `idWadah` int(11) NOT NULL,
  `idSubSPK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblm_customer`
--
ALTER TABLE `tblm_customer`
  ADD PRIMARY KEY (`idCustomer`);

--
-- Indexes for table `tblm_dimensi`
--
ALTER TABLE `tblm_dimensi`
  ADD PRIMARY KEY (`dimensi`);

--
-- Indexes for table `tblm_kategoriproduksi`
--
ALTER TABLE `tblm_kategoriproduksi`
  ADD PRIMARY KEY (`idKategoriProduksi`);

--
-- Indexes for table `tblm_materialdasar`
--
ALTER TABLE `tblm_materialdasar`
  ADD PRIMARY KEY (`idMaterial`);

--
-- Indexes for table `tblm_produkdetail`
--
ALTER TABLE `tblm_produkdetail`
  ADD PRIMARY KEY (`idProdukDetail`);

--
-- Indexes for table `tblm_produkheader`
--
ALTER TABLE `tblm_produkheader`
  ADD PRIMARY KEY (`idProdukHeader`);

--
-- Indexes for table `tblm_user`
--
ALTER TABLE `tblm_user`
  ADD PRIMARY KEY (`idUser`);

--
-- Indexes for table `tblt_bom`
--
ALTER TABLE `tblt_bom`
  ADD PRIMARY KEY (`idBOM`);

--
-- Indexes for table `tblt_factproduction`
--
ALTER TABLE `tblt_factproduction`
  ADD PRIMARY KEY (`idProProd`);

--
-- Indexes for table `tblt_gambarproduk`
--
ALTER TABLE `tblt_gambarproduk`
  ADD PRIMARY KEY (`idGambar`);

--
-- Indexes for table `tblt_invoicedetail`
--
ALTER TABLE `tblt_invoicedetail`
  ADD PRIMARY KEY (`idInvoiceDetail`);

--
-- Indexes for table `tblt_invoiceheader`
--
ALTER TABLE `tblt_invoiceheader`
  ADD PRIMARY KEY (`idInvoiceHeader`);

--
-- Indexes for table `tblt_kloter`
--
ALTER TABLE `tblt_kloter`
  ADD PRIMARY KEY (`idGroup`);

--
-- Indexes for table `tblt_penilaian`
--
ALTER TABLE `tblt_penilaian`
  ADD PRIMARY KEY (`id_penilaian`);

--
-- Indexes for table `tblt_pertanyaan`
--
ALTER TABLE `tblt_pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indexes for table `tblt_podetail`
--
ALTER TABLE `tblt_podetail`
  ADD PRIMARY KEY (`idPODetail`);

--
-- Indexes for table `tblt_poheader`
--
ALTER TABLE `tblt_poheader`
  ADD PRIMARY KEY (`idPOHeader`);

--
-- Indexes for table `tblt_rekapproduksi`
--
ALTER TABLE `tblt_rekapproduksi`
  ADD PRIMARY KEY (`idRekapProduksi`);

--
-- Indexes for table `tblt_rekapproduksiline`
--
ALTER TABLE `tblt_rekapproduksiline`
  ADD PRIMARY KEY (`idRekapProduksiLine`);

--
-- Indexes for table `tblt_rencanaproduksi`
--
ALTER TABLE `tblt_rencanaproduksi`
  ADD PRIMARY KEY (`idRencana`);

--
-- Indexes for table `tblt_spkdetail`
--
ALTER TABLE `tblt_spkdetail`
  ADD PRIMARY KEY (`idSPKDetail`);

--
-- Indexes for table `tblt_spkheader`
--
ALTER TABLE `tblt_spkheader`
  ADD PRIMARY KEY (`idSPKHeader`);

--
-- Indexes for table `tblt_stokbarang`
--
ALTER TABLE `tblt_stokbarang`
  ADD PRIMARY KEY (`idStok`);

--
-- Indexes for table `tblt_subspk`
--
ALTER TABLE `tblt_subspk`
  ADD PRIMARY KEY (`idSubSPK`);

--
-- Indexes for table `tblt_wadah`
--
ALTER TABLE `tblt_wadah`
  ADD PRIMARY KEY (`idWadah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblm_customer`
--
ALTER TABLE `tblm_customer`
  MODIFY `idCustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblm_materialdasar`
--
ALTER TABLE `tblm_materialdasar`
  MODIFY `idMaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tblm_produkdetail`
--
ALTER TABLE `tblm_produkdetail`
  MODIFY `idProdukDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblm_produkheader`
--
ALTER TABLE `tblm_produkheader`
  MODIFY `idProdukHeader` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblm_user`
--
ALTER TABLE `tblm_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblt_bom`
--
ALTER TABLE `tblt_bom`
  MODIFY `idBOM` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblt_factproduction`
--
ALTER TABLE `tblt_factproduction`
  MODIFY `idProProd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblt_gambarproduk`
--
ALTER TABLE `tblt_gambarproduk`
  MODIFY `idGambar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblt_invoicedetail`
--
ALTER TABLE `tblt_invoicedetail`
  MODIFY `idInvoiceDetail` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblt_invoiceheader`
--
ALTER TABLE `tblt_invoiceheader`
  MODIFY `idInvoiceHeader` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblt_kloter`
--
ALTER TABLE `tblt_kloter`
  MODIFY `idGroup` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblt_penilaian`
--
ALTER TABLE `tblt_penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblt_pertanyaan`
--
ALTER TABLE `tblt_pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblt_podetail`
--
ALTER TABLE `tblt_podetail`
  MODIFY `idPODetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblt_poheader`
--
ALTER TABLE `tblt_poheader`
  MODIFY `idPOHeader` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblt_rekapproduksi`
--
ALTER TABLE `tblt_rekapproduksi`
  MODIFY `idRekapProduksi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblt_rekapproduksiline`
--
ALTER TABLE `tblt_rekapproduksiline`
  MODIFY `idRekapProduksiLine` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblt_rencanaproduksi`
--
ALTER TABLE `tblt_rencanaproduksi`
  MODIFY `idRencana` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblt_spkdetail`
--
ALTER TABLE `tblt_spkdetail`
  MODIFY `idSPKDetail` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblt_spkheader`
--
ALTER TABLE `tblt_spkheader`
  MODIFY `idSPKHeader` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblt_stokbarang`
--
ALTER TABLE `tblt_stokbarang`
  MODIFY `idStok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblt_subspk`
--
ALTER TABLE `tblt_subspk`
  MODIFY `idSubSPK` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblt_wadah`
--
ALTER TABLE `tblt_wadah`
  MODIFY `idWadah` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
