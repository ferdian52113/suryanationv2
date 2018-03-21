-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2018 at 07:07 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suryanation`
--

-- --------------------------------------------------------

--
-- Table structure for table `dimensi`
--

CREATE TABLE `dimensi` (
  `dimensi` varchar(20) NOT NULL,
  `definisi` text NOT NULL,
  `correctiveAction` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dimensi`
--

INSERT INTO `dimensi` (`dimensi`, `definisi`, `correctiveAction`) VALUES
('Assurance', 'Pengetahuan, kesopanan dan kemampuan karyawan untuk memberikan keyakinan kepada Konsumen sehingga merasa nyaman atau terjamin.\r\n', 'Perusahaan perlu meningkatkan kualitas SDM terutama pengetahuan, kesopanan dan kemampuan karyawan meyakinkan Konsumen sehingga merasa nyaman atau terjamin.\r\n'),
('Empathy', 'Perusahaan memberikan pelayanan yang sesuai dengan kebutuhan konsumen. Produsen memberikan pelayanan yang membuat perusahaan juga merasakan apa yang dirasakan dan dibutuhkan \r\n', 'Perusahaan perlu meningkatkan kualitas layanan agar lebih sesuai sesuai dengan kebutuhan konsumen dan layanan yang lebih merasakan apa yang dirasakan konsumen\r\n'),
('Reliability', 'Kemampuan untuk menunjukan atau melaksanakan service yang dijanjikan secara tepat dan dapat dipercaya. Pelayanan harus tepat waktu dalam spesifikasi yang sama \r\n', 'Perusahaan perlu meningkatkan kualitas ketepatan service terutama tepat waktu dan tepat spesifikasi agar sesuai dengan yang dijanjikan sehingga kepercayaan konsumen terus meningkat \r\n'),
('Responsiveness', 'Tindakan yang berasal dari kemauan untuk memberikan konsumen pelayanan yang tangkas dan cepat \r\n', 'Perusahaan perlu meningkatkan kualitas layanan kepada konsumen agar lebih tangkas dan cepat \r\n'),
('Tangibles', 'Penampilan luar dari service quality yang dapat berupa fasilitas fisik, peralatan, personalia dan komunikasi', 'Perusahaan perlu meningkatkan kualitas fasilitas fisik, peralatan, penampilan dan kemampuan komunikasi SDM');

-- --------------------------------------------------------

--
-- Table structure for table `factproduction`
--

CREATE TABLE `factproduction` (
  `idProProd` int(11) NOT NULL,
  `idSPK` int(11) NOT NULL,
  `idAktivitas` int(11) NOT NULL,
  `idPIC` int(11) NOT NULL,
  `RealisasiStartDate` datetime NOT NULL,
  `RealisasiEndDate` datetime NOT NULL,
  `berat` double NOT NULL,
  `beratAwal` double NOT NULL,
  `kembali` double NOT NULL,
  `statusBerat` varchar(123) NOT NULL,
  `statusWork` varchar(231) NOT NULL,
  `statusSPK` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factproduction2`
--

CREATE TABLE `factproduction2` (
  `idProProd` int(11) NOT NULL,
  `idSPK` int(11) NOT NULL,
  `idSubSPK` int(11) NOT NULL,
  `idWadah` int(11) NOT NULL,
  `idAktivitas` int(11) NOT NULL,
  `idPIC` int(11) NOT NULL,
  `RealisasiStartDate` datetime NOT NULL,
  `RealisasiEndDate` datetime NOT NULL,
  `berat` double NOT NULL,
  `beratAwal` double NOT NULL,
  `kembali` double NOT NULL,
  `jumlah` int(11) NOT NULL,
  `statusBerat` varchar(123) NOT NULL,
  `statusWork` varchar(231) NOT NULL,
  `statusSPK` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factproduction3`
--

CREATE TABLE `factproduction3` (
  `idProProd` int(11) NOT NULL,
  `idSPK` int(11) NOT NULL,
  `idAktivitas` int(11) NOT NULL,
  `idPIC` int(11) NOT NULL,
  `RealisasiStartDate` datetime NOT NULL,
  `RealisasiEndDate` datetime NOT NULL,
  `berat` double NOT NULL,
  `beratAwal` double NOT NULL,
  `kembali` double NOT NULL,
  `statusBerat` varchar(123) NOT NULL,
  `statusWork` varchar(231) NOT NULL,
  `statusSPK` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factproduction3`
--

INSERT INTO `factproduction3` (`idProProd`, `idSPK`, `idAktivitas`, `idPIC`, `RealisasiStartDate`, `RealisasiEndDate`, `berat`, `beratAwal`, `kembali`, `statusBerat`, `statusWork`, `statusSPK`) VALUES
(1, 1, 1004, 22, '2018-03-03 19:16:18', '2018-03-03 19:23:50', 0, 0, 0, '', 'Done', 'Done'),
(2, 4, 1004, 22, '2018-03-03 19:16:18', '2018-03-03 19:23:50', 0, 0, 0, '', 'Done', 'Active'),
(3, 1, 1005, 21, '2018-03-03 19:32:15', '2018-03-03 19:32:19', 0, 0, 0, 'Belum Disetujui', 'Done', 'Done'),
(4, 4, 1005, 21, '2018-03-03 19:32:15', '2018-03-03 19:32:19', 0, 0, 0, 'Belum Disetujui', 'Done', 'Active'),
(5, 1, 1006, 23, '2018-03-03 19:34:53', '2018-03-03 19:34:57', 0, 0, 0, 'Belum Disetujui', 'Done', 'Done'),
(6, 4, 1006, 23, '2018-03-03 19:34:53', '2018-03-03 19:34:57', 0, 0, 0, 'Belum Disetujui', 'Done', 'Active'),
(7, 1, 1007, 23, '2018-03-03 19:49:31', '2018-03-03 20:14:11', 29, 30, 0, 'Disetujui', 'Done', 'Done'),
(8, 4, 1007, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 'Belum Disetujui', 'Belum ada PIC', 'Active'),
(9, 1, 1008, 21, '2018-03-03 20:18:57', '2018-03-03 20:19:21', 28, 0, 0, 'Disetujui', 'Done', 'Done'),
(10, 1, 1009, 21, '2018-03-03 20:21:05', '2018-03-03 20:22:30', 27, 0, 0, 'Disetujui', 'Done', 'Done'),
(11, 1, 1010, 22, '2018-03-03 20:23:54', '2018-03-03 20:24:18', 26, 0, 0, 'Disetujui', 'Done', 'Done'),
(12, 1, 1011, 20, '2018-03-03 20:25:46', '2018-03-03 20:26:21', 25, 0, 0, 'Disetujui', 'Done', 'Done'),
(13, 1, 1012, 22, '2018-03-03 20:27:40', '2018-03-03 20:28:02', 24, 0, 0, 'Disetujui', 'Done', 'Done'),
(14, 1, 1013, 20, '2018-03-03 20:29:24', '2018-03-03 20:29:46', 23, 0, 0, 'Disetujui', 'Done', 'Done'),
(15, 1, 1014, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 22, 0, 0, 'Belum Disetujui', 'Belum ada PIC', 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `factproductionservice`
--

CREATE TABLE `factproductionservice` (
  `idProProd` int(11) NOT NULL,
  `idSPK` int(11) NOT NULL,
  `idAktivitas` int(11) NOT NULL,
  `idPIC` int(11) NOT NULL,
  `RealisasiStartDate` datetime NOT NULL,
  `RealisasiEndDate` datetime NOT NULL,
  `berat` double NOT NULL,
  `beratAwal` double NOT NULL,
  `kembali` double NOT NULL,
  `statusBerat` varchar(123) NOT NULL,
  `statusWork` varchar(231) NOT NULL,
  `statusSPK` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoiceheader`
--

CREATE TABLE `invoiceheader` (
  `idHeader` int(11) NOT NULL,
  `nomorPO` varchar(255) NOT NULL,
  `total` float NOT NULL,
  `jenisInvoice` varchar(255) NOT NULL,
  `tipeInvoice` varchar(255) DEFAULT NULL,
  `lastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoicemassalperseorangan`
--

CREATE TABLE `invoicemassalperseorangan` (
  `idTempahan` int(11) NOT NULL,
  `idHeader` int(11) NOT NULL,
  `nomorPO` varchar(255) NOT NULL,
  `beratTotal` float NOT NULL,
  `beratBatu` float NOT NULL,
  `susut` float DEFAULT NULL,
  `beratAkhir` float NOT NULL,
  `hargaAkhir` float NOT NULL,
  `beratHargaAkhir` float NOT NULL,
  `upah` float NOT NULL,
  `jumlahDatangBerlian` float NOT NULL,
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
-- Table structure for table `invoicemassalpertokoan`
--

CREATE TABLE `invoicemassalpertokoan` (
  `idTempahan` int(11) NOT NULL,
  `idHeader` int(11) NOT NULL,
  `nomorPO` varchar(255) NOT NULL,
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
-- Table structure for table `invoicetempahanperseorangan`
--

CREATE TABLE `invoicetempahanperseorangan` (
  `idTempahan` int(11) NOT NULL,
  `idHeader` int(11) NOT NULL,
  `nomorPO` varchar(255) NOT NULL,
  `beratTotal` float NOT NULL,
  `beratBatu` float NOT NULL,
  `susut` float DEFAULT NULL,
  `beratAkhir` float NOT NULL,
  `hargaAkhir` float NOT NULL,
  `beratHargaAkhir` float NOT NULL,
  `upah` float NOT NULL,
  `jumlahDatangBerlian` float NOT NULL,
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
-- Table structure for table `invoicetempahanpertokoan`
--

CREATE TABLE `invoicetempahanpertokoan` (
  `idTempahan` int(11) NOT NULL,
  `idHeader` int(11) NOT NULL,
  `nomorPO` varchar(255) NOT NULL,
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
-- Table structure for table `katalog`
--

CREATE TABLE `katalog` (
  `idKatalog` int(11) NOT NULL,
  `kodeProduk` varchar(200) NOT NULL,
  `namaProduk` varchar(255) NOT NULL,
  `jenisProduk` varchar(150) NOT NULL,
  `deskripsiProduk` text NOT NULL,
  `hargaProduk` float NOT NULL,
  `gambarProduk` varchar(50) NOT NULL,
  `lastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `katalog`
--

INSERT INTO `katalog` (`idKatalog`, `kodeProduk`, `namaProduk`, `jenisProduk`, `deskripsiProduk`, `hargaProduk`, `gambarProduk`, `lastModified`) VALUES
(1, 'CLT-100', 'Cincin Saphire Biru', 'Cincin', 'Batu Zirkon 20 Buah\r\nBerat 20 gr', 2450000, 'YMNWvACcxd', '2018-03-13 15:40:27'),
(2, 'CLT-101', 'Liontin Saphire Merah', 'Liontin', 'Berat Batu Saphire 15 Gr', 670000, 'ky9KPxnQcp', '2018-03-13 17:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `kloter`
--

CREATE TABLE `kloter` (
  `idGroup` int(11) NOT NULL,
  `idKloter` varchar(11) NOT NULL,
  `idSPK` int(11) NOT NULL,
  `nama` varchar(1232) NOT NULL,
  `kadar` int(11) NOT NULL,
  `tgl_kloter` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kloter2`
--

CREATE TABLE `kloter2` (
  `idGroup` int(11) NOT NULL,
  `idKloter` varchar(11) NOT NULL,
  `idSPK` int(11) NOT NULL,
  `nama` varchar(1232) NOT NULL,
  `kadar` int(11) NOT NULL,
  `tgl_kloter` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kloter2`
--

INSERT INTO `kloter2` (`idGroup`, `idKloter`, `idSPK`, `nama`, `kadar`, `tgl_kloter`) VALUES
(1, 'uOflhAuCfA', 1, 'peraknow', 99, '2018-03-02 20:50:29'),
(2, 'uOflhAuCfA', 4, 'peraknow', 99, '2018-03-02 20:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `materialdasar`
--

CREATE TABLE `materialdasar` (
  `idMaterial` int(11) NOT NULL,
  `kodeMaterial` varchar(255) NOT NULL,
  `namaMaterial` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `stokMaterial` float NOT NULL,
  `safetyStock` float NOT NULL,
  `kategori` varchar(123) NOT NULL DEFAULT 'Emas'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materialdasar`
--

INSERT INTO `materialdasar` (`idMaterial`, `kodeMaterial`, `namaMaterial`, `satuan`, `stokMaterial`, `safetyStock`, `kategori`) VALUES
(7, '101', 'Emas Kuning 65%', 'gram', 200, 100, 'Emas'),
(8, '102', 'Emas Kuning 63%', 'gram', 200, 100, 'Emas'),
(9, '103', 'Emas Kuning 60%', 'gram', 200, 100, 'Emas'),
(10, '104', 'Emas Kuning 59.5%', 'gram', 200, 100, 'Emas'),
(11, '105', 'Emas Kuning 48%', 'gram', 200, 100, 'Emas'),
(12, '106', 'Emas Kuning 40%', 'gram', 200, 100, 'Emas'),
(13, '107', 'Emas Kuning 38%', 'gram', 200, 100, 'Emas'),
(14, '201', 'Emas Rose Gold 75%', 'gram', 885.16, 100, 'Emas'),
(15, '202', 'Emas Rose Gold 70%', 'gram', 30.74, 100, 'Emas'),
(16, '203', 'Emas Putih 70%', 'gram', 200, 100, 'Emas'),
(17, '204', 'Emas Putih 75%', 'gram', 200, 100, 'Emas'),
(18, '205', 'Emas Kuning 70%', 'gram', 76.8, 100, 'Emas'),
(19, '206', 'Emas Kuning 80%', 'gram', 200, 100, 'Emas'),
(20, '207', 'Emas Swasa 50%', 'gram', 200, 100, 'Emas'),
(21, '301', 'Alloy', 'gram', -8.48, 100, 'Non Emas'),
(22, '302', 'Tembaga', 'gram', 200, 100, 'Non Emas'),
(23, '303', 'Perak', 'gram', 200, 100, 'Non Emas'),
(24, '304', 'Paladium', 'gram', 193.4, 100, 'Non Emas');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
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
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_user`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `h7`, `h8`, `h9`, `h10`, `r1`, `r2`, `r3`, `r4`, `r5`, `r6`, `r7`, `r8`, `r9`, `r10`, `u1`, `u2`, `rataHarapanT`, `rataHarapanR`, `rataHarapanRE`, `rataHarapanA`, `rataHarapanE`, `rataRealisasiT`, `rataRealisasiR`, `rataRealisasiRE`, `rataRealisasiA`, `rataRealisasiE`, `rataHarapan`, `rataRealisasi`, `dateCreated`) VALUES
(1, 1, 3, 4, 5, 5, 3, 2, 4, 3, 5, 6, 5, 2, 3, 4, 5, 5, 5, 4, 6, 3, 87, 99, 3.5, 5, 2.5, 3.5, 5.5, 3.5, 3.5, 5, 4.5, 4.5, 4, 4.2, '2018-03-13 16:03:58'),
(2, 1, 5, 5, 5, 5, 2, 4, 5, 3, 3, 3, 3, 4, 3, 4, 5, 6, 4, 5, 5, 5, 69, 22, 5, 5, 3, 4, 3, 3.5, 3.5, 5.5, 4.5, 5, 4, 4.4, '2018-03-18 08:26:13'),
(3, 1, 5, 5, 5, 3, 6, 5, 5, 3, 3, 5, 3, 4, 1, 5, 4, 5, 6, 6, 4, 5, 22, 73, 5, 4, 5.5, 4, 4, 3.5, 3, 4.5, 6, 4.5, 4.5, 4.3, '2018-03-18 08:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `indikator` text NOT NULL,
  `dimensi` varchar(20) NOT NULL,
  `kode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id_pertanyaan`, `indikator`, `dimensi`, `kode`) VALUES
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
-- Table structure for table `produkaktivitas`
--

CREATE TABLE `produkaktivitas` (
  `idProses` int(11) NOT NULL,
  `idProduk` int(11) NOT NULL,
  `idAktivitas` int(11) NOT NULL,
  `durasi` int(11) NOT NULL,
  `maxOccurence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produkaktivitas`
--

INSERT INTO `produkaktivitas` (`idProses`, `idProduk`, `idAktivitas`, `durasi`, `maxOccurence`) VALUES
(1, 1, 1001, 0, 0),
(2, 1, 1002, 0, 0),
(3, 1, 1003, 0, 0),
(4, 1, 1004, 0, 0),
(5, 1, 1005, 0, 0),
(6, 1, 1006, 0, 0),
(7, 1, 1007, 0, 0),
(8, 1, 1008, 0, 0),
(9, 1, 1009, 0, 0),
(10, 1, 1011, 0, 0),
(11, 1, 1012, 0, 0),
(12, 1, 1013, 0, 0),
(13, 1, 1014, 0, 0),
(15, 2, 1004, 0, 0),
(16, 2, 1005, 0, 0),
(17, 2, 1006, 0, 0),
(18, 2, 1007, 0, 0),
(19, 2, 1008, 0, 0),
(20, 2, 1009, 0, 0),
(21, 2, 1010, 0, 0),
(22, 2, 1011, 0, 0),
(23, 2, 1012, 0, 0),
(24, 2, 1013, 0, 0),
(25, 2, 1014, 0, 0),
(26, 2, 1003, 0, 0),
(27, 2, 1004, 0, 0),
(28, 2, 1005, 0, 0),
(29, 2, 1006, 0, 0),
(30, 2, 1007, 0, 0),
(31, 2, 1008, 0, 0),
(32, 2, 1009, 0, 0),
(33, 2, 1010, 0, 0),
(34, 2, 1011, 0, 0),
(35, 2, 1012, 0, 0),
(36, 2, 1013, 0, 0),
(37, 2, 1014, 0, 0),
(38, 2, 1003, 0, 0),
(39, 2, 1004, 0, 0),
(40, 2, 1005, 0, 0),
(41, 2, 1006, 0, 0),
(42, 2, 1007, 0, 0),
(43, 2, 1008, 0, 0),
(44, 2, 1009, 0, 0),
(45, 2, 1010, 0, 0),
(46, 2, 1011, 0, 0),
(47, 2, 1012, 0, 0),
(48, 2, 1013, 0, 0),
(49, 2, 1014, 0, 0),
(50, 8, 1001, 0, 0),
(51, 8, 1002, 0, 0),
(52, 8, 1003, 0, 0),
(53, 8, 1004, 0, 0),
(54, 8, 1005, 0, 0),
(55, 8, 1006, 0, 0),
(56, 8, 1008, 0, 0),
(57, 8, 1009, 0, 0),
(58, 8, 1010, 0, 0),
(59, 8, 1011, 0, 0),
(60, 8, 1012, 0, 0),
(61, 8, 1013, 0, 0),
(62, 8, 1014, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `produktrading`
--

CREATE TABLE `produktrading` (
  `idProduk` int(11) NOT NULL,
  `kodeProduk` varchar(100) NOT NULL,
  `namaProduk` varchar(200) NOT NULL,
  `jenisProduk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `kodeGambar` varchar(255) NOT NULL,
  `stok` int(11) DEFAULT '0',
  `lastModified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekapproduksi`
--

CREATE TABLE `rekapproduksi` (
  `idRekapProduksi` int(11) NOT NULL,
  `kodeRekapProduksi` varchar(50) NOT NULL,
  `idPIC` int(11) NOT NULL,
  `waktuPengembalian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `beratKembali` double NOT NULL,
  `jenisProduksi` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekapproduksiline`
--

CREATE TABLE `rekapproduksiline` (
  `idRekapProduksiLine` int(11) NOT NULL,
  `kodeRekapProduksi` varchar(50) NOT NULL,
  `idProProd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rencanaproduksi`
--

CREATE TABLE `rencanaproduksi` (
  `idRencana` int(11) NOT NULL,
  `idSPK` int(11) NOT NULL,
  `idAktivitas` int(11) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rencanaproduksi`
--

INSERT INTO `rencanaproduksi` (`idRencana`, `idSPK`, `idAktivitas`, `startDate`, `endDate`) VALUES
(1, 1, 1001, '2018-03-02 00:00:00', '2018-03-02 00:00:00'),
(2, 1, 1002, '2018-03-03 00:00:00', '2018-03-03 00:00:00'),
(3, 1, 1003, '2018-03-04 00:00:00', '2018-03-04 00:00:00'),
(4, 1, 1004, '2018-03-05 00:00:00', '2018-03-05 00:00:00'),
(5, 1, 1005, '2018-03-06 00:00:00', '2018-03-06 00:00:00'),
(6, 1, 1006, '2018-03-07 00:00:00', '2018-03-07 00:00:00'),
(7, 1, 1007, '2018-03-08 00:00:00', '2018-03-08 00:00:00'),
(8, 1, 1008, '2018-03-09 00:00:00', '2018-03-09 00:00:00'),
(9, 1, 1009, '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
(10, 1, 1011, '2018-03-12 00:00:00', '2018-03-12 00:00:00'),
(11, 1, 1012, '2018-03-13 00:00:00', '2018-03-13 00:00:00'),
(12, 1, 1013, '2018-03-14 00:00:00', '2018-03-14 00:00:00'),
(13, 1, 1014, '2018-03-15 00:00:00', '2018-03-15 00:00:00'),
(14, 2, 1001, '2018-03-19 00:00:00', '2018-03-20 00:00:00'),
(15, 2, 1002, '2018-03-21 00:00:00', '2018-03-21 00:00:00'),
(16, 2, 1003, '2018-03-21 00:00:00', '2018-03-21 00:00:00'),
(17, 2, 1004, '2018-03-21 00:00:00', '2018-03-21 00:00:00'),
(18, 2, 1005, '2018-03-21 00:00:00', '2018-03-21 00:00:00'),
(19, 2, 1006, '2018-03-22 00:00:00', '2018-03-22 00:00:00'),
(20, 2, 1008, '2018-03-23 00:00:00', '2018-03-23 00:00:00'),
(21, 2, 1009, '2018-03-23 00:00:00', '2018-03-23 00:00:00'),
(22, 2, 1010, '2018-03-24 00:00:00', '2018-03-24 00:00:00'),
(23, 2, 1011, '2018-03-24 00:00:00', '2018-03-24 00:00:00'),
(24, 2, 1012, '2018-03-25 00:00:00', '2018-03-25 00:00:00'),
(25, 2, 1013, '2018-03-26 00:00:00', '2018-03-26 00:00:00'),
(26, 2, 1014, '2018-04-26 00:00:00', '2018-04-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rencanaproduksi2`
--

CREATE TABLE `rencanaproduksi2` (
  `idRencana` int(11) NOT NULL,
  `idSPK` int(11) NOT NULL,
  `idAktivitas` int(11) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rencanaproduksi3`
--

CREATE TABLE `rencanaproduksi3` (
  `idRencana` int(11) NOT NULL,
  `idSPK` int(11) NOT NULL,
  `idAktivitas` int(11) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rencanaproduksi3`
--

INSERT INTO `rencanaproduksi3` (`idRencana`, `idSPK`, `idAktivitas`, `startDate`, `endDate`) VALUES
(25, 1, 1003, '2018-03-02 00:00:00', '2018-03-02 00:00:00'),
(26, 1, 1004, '2018-03-03 00:00:00', '2018-03-03 00:00:00'),
(27, 1, 1005, '2018-03-04 00:00:00', '2018-03-04 00:00:00'),
(28, 1, 1006, '2018-03-05 00:00:00', '2018-03-05 00:00:00'),
(29, 1, 1007, '2018-03-06 00:00:00', '2018-03-06 00:00:00'),
(30, 1, 1008, '2018-03-07 00:00:00', '2018-03-07 00:00:00'),
(31, 1, 1009, '2018-03-08 00:00:00', '2018-03-08 00:00:00'),
(32, 1, 1010, '2018-03-09 00:00:00', '2018-03-09 00:00:00'),
(33, 1, 1011, '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
(34, 1, 1012, '2018-03-11 00:00:00', '2018-03-11 00:00:00'),
(35, 1, 1013, '2018-03-12 00:00:00', '2018-03-12 00:00:00'),
(36, 1, 1014, '2018-03-13 00:00:00', '2018-03-13 00:00:00'),
(37, 4, 1003, '2018-03-02 00:00:00', '2018-03-02 00:00:00'),
(38, 4, 1004, '2018-03-03 00:00:00', '2018-03-03 00:00:00'),
(39, 4, 1005, '2018-03-04 00:00:00', '2018-03-04 00:00:00'),
(40, 4, 1006, '2018-03-05 00:00:00', '2018-03-05 00:00:00'),
(41, 4, 1007, '2018-03-06 00:00:00', '2018-03-06 00:00:00'),
(42, 4, 1008, '2018-03-07 00:00:00', '2018-03-07 00:00:00'),
(43, 4, 1009, '2018-03-08 00:00:00', '2018-03-08 00:00:00'),
(44, 4, 1010, '2018-03-09 00:00:00', '2018-03-09 00:00:00'),
(45, 4, 1011, '2018-03-10 00:00:00', '2018-03-10 00:00:00'),
(46, 4, 1012, '2018-03-11 00:00:00', '2018-03-11 00:00:00'),
(47, 4, 1013, '2018-03-12 00:00:00', '2018-03-12 00:00:00'),
(48, 4, 1014, '2018-03-13 00:00:00', '2018-03-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rencanaproduksiservice`
--

CREATE TABLE `rencanaproduksiservice` (
  `idRencana` int(11) NOT NULL,
  `idSPK` int(11) NOT NULL,
  `idAktivitas` int(11) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stokbarang`
--

CREATE TABLE `stokbarang` (
  `idStok` int(11) NOT NULL,
  `tipeBarang` varchar(255) NOT NULL,
  `kodeBarang` varchar(255) NOT NULL,
  `jumlah` double NOT NULL,
  `jenisPergerakanBarang` varchar(255) NOT NULL,
  `hargaBeli` double NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stokbarang`
--

INSERT INTO `stokbarang` (`idStok`, `tipeBarang`, `kodeBarang`, `jumlah`, `jenisPergerakanBarang`, `hargaBeli`, `tanggal`) VALUES
(1, 'Produk Jadi', 'PRK 2312', 2, 'IN', 0, '2018-03-03 20:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `subspk`
--

CREATE TABLE `subspk` (
  `idSubSPK` int(11) NOT NULL,
  `idSPK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `dimensi`
--
ALTER TABLE `dimensi`
  ADD PRIMARY KEY (`dimensi`);

--
-- Indexes for table `factproduction`
--
ALTER TABLE `factproduction`
  ADD PRIMARY KEY (`idProProd`);

--
-- Indexes for table `factproduction2`
--
ALTER TABLE `factproduction2`
  ADD PRIMARY KEY (`idProProd`);

--
-- Indexes for table `factproduction3`
--
ALTER TABLE `factproduction3`
  ADD PRIMARY KEY (`idProProd`);

--
-- Indexes for table `factproductionservice`
--
ALTER TABLE `factproductionservice`
  ADD PRIMARY KEY (`idProProd`);

--
-- Indexes for table `invoiceheader`
--
ALTER TABLE `invoiceheader`
  ADD PRIMARY KEY (`idHeader`);

--
-- Indexes for table `invoicemassalperseorangan`
--
ALTER TABLE `invoicemassalperseorangan`
  ADD PRIMARY KEY (`idTempahan`);

--
-- Indexes for table `invoicemassalpertokoan`
--
ALTER TABLE `invoicemassalpertokoan`
  ADD PRIMARY KEY (`idTempahan`);

--
-- Indexes for table `invoicetempahanperseorangan`
--
ALTER TABLE `invoicetempahanperseorangan`
  ADD PRIMARY KEY (`idTempahan`);

--
-- Indexes for table `invoicetempahanpertokoan`
--
ALTER TABLE `invoicetempahanpertokoan`
  ADD PRIMARY KEY (`idTempahan`);

--
-- Indexes for table `katalog`
--
ALTER TABLE `katalog`
  ADD PRIMARY KEY (`idKatalog`);

--
-- Indexes for table `kloter`
--
ALTER TABLE `kloter`
  ADD PRIMARY KEY (`idGroup`);

--
-- Indexes for table `kloter2`
--
ALTER TABLE `kloter2`
  ADD PRIMARY KEY (`idGroup`);

--
-- Indexes for table `materialdasar`
--
ALTER TABLE `materialdasar`
  ADD PRIMARY KEY (`idMaterial`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indexes for table `produkaktivitas`
--
ALTER TABLE `produkaktivitas`
  ADD PRIMARY KEY (`idProses`);

--
-- Indexes for table `produktrading`
--
ALTER TABLE `produktrading`
  ADD PRIMARY KEY (`idProduk`);

--
-- Indexes for table `rekapproduksi`
--
ALTER TABLE `rekapproduksi`
  ADD PRIMARY KEY (`idRekapProduksi`);

--
-- Indexes for table `rekapproduksiline`
--
ALTER TABLE `rekapproduksiline`
  ADD PRIMARY KEY (`idRekapProduksiLine`);

--
-- Indexes for table `rencanaproduksi`
--
ALTER TABLE `rencanaproduksi`
  ADD PRIMARY KEY (`idRencana`);

--
-- Indexes for table `rencanaproduksi2`
--
ALTER TABLE `rencanaproduksi2`
  ADD PRIMARY KEY (`idRencana`);

--
-- Indexes for table `rencanaproduksi3`
--
ALTER TABLE `rencanaproduksi3`
  ADD PRIMARY KEY (`idRencana`);

--
-- Indexes for table `rencanaproduksiservice`
--
ALTER TABLE `rencanaproduksiservice`
  ADD PRIMARY KEY (`idRencana`);

--
-- Indexes for table `stokbarang`
--
ALTER TABLE `stokbarang`
  ADD PRIMARY KEY (`idStok`);

--
-- Indexes for table `subspk`
--
ALTER TABLE `subspk`
  ADD PRIMARY KEY (`idSubSPK`);

--
-- Indexes for table `tblm_customer`
--
ALTER TABLE `tblm_customer`
  ADD PRIMARY KEY (`idCustomer`);

--
-- Indexes for table `tblm_kategoriproduksi`
--
ALTER TABLE `tblm_kategoriproduksi`
  ADD PRIMARY KEY (`idKategoriProduksi`);

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
-- Indexes for table `tblt_gambarproduk`
--
ALTER TABLE `tblt_gambarproduk`
  ADD PRIMARY KEY (`idGambar`);

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
-- Indexes for table `tblt_wadah`
--
ALTER TABLE `tblt_wadah`
  ADD PRIMARY KEY (`idWadah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `factproduction`
--
ALTER TABLE `factproduction`
  MODIFY `idProProd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `factproduction2`
--
ALTER TABLE `factproduction2`
  MODIFY `idProProd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `factproduction3`
--
ALTER TABLE `factproduction3`
  MODIFY `idProProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `factproductionservice`
--
ALTER TABLE `factproductionservice`
  MODIFY `idProProd` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoiceheader`
--
ALTER TABLE `invoiceheader`
  MODIFY `idHeader` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoicemassalperseorangan`
--
ALTER TABLE `invoicemassalperseorangan`
  MODIFY `idTempahan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoicemassalpertokoan`
--
ALTER TABLE `invoicemassalpertokoan`
  MODIFY `idTempahan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoicetempahanperseorangan`
--
ALTER TABLE `invoicetempahanperseorangan`
  MODIFY `idTempahan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoicetempahanpertokoan`
--
ALTER TABLE `invoicetempahanpertokoan`
  MODIFY `idTempahan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `katalog`
--
ALTER TABLE `katalog`
  MODIFY `idKatalog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kloter`
--
ALTER TABLE `kloter`
  MODIFY `idGroup` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kloter2`
--
ALTER TABLE `kloter2`
  MODIFY `idGroup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `materialdasar`
--
ALTER TABLE `materialdasar`
  MODIFY `idMaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `produkaktivitas`
--
ALTER TABLE `produkaktivitas`
  MODIFY `idProses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `produktrading`
--
ALTER TABLE `produktrading`
  MODIFY `idProduk` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rekapproduksi`
--
ALTER TABLE `rekapproduksi`
  MODIFY `idRekapProduksi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rekapproduksiline`
--
ALTER TABLE `rekapproduksiline`
  MODIFY `idRekapProduksiLine` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rencanaproduksi`
--
ALTER TABLE `rencanaproduksi`
  MODIFY `idRencana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `rencanaproduksi2`
--
ALTER TABLE `rencanaproduksi2`
  MODIFY `idRencana` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rencanaproduksi3`
--
ALTER TABLE `rencanaproduksi3`
  MODIFY `idRencana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `rencanaproduksiservice`
--
ALTER TABLE `rencanaproduksiservice`
  MODIFY `idRencana` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stokbarang`
--
ALTER TABLE `stokbarang`
  MODIFY `idStok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subspk`
--
ALTER TABLE `subspk`
  MODIFY `idSubSPK` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblm_customer`
--
ALTER TABLE `tblm_customer`
  MODIFY `idCustomer` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblt_bom`
--
ALTER TABLE `tblt_bom`
  MODIFY `idBOM` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblt_gambarproduk`
--
ALTER TABLE `tblt_gambarproduk`
  MODIFY `idGambar` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `tblt_wadah`
--
ALTER TABLE `tblt_wadah`
  MODIFY `idWadah` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
