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
