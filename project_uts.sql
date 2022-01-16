-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2022 at 07:00 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `id_favourite` int(11) NOT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id_place` int(11) NOT NULL,
  `name_place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc_place` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `place_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `open_place` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `name_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_review` int(11) NOT NULL,
  `id_review` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `tiket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id_place`, `name_place`, `location_place`, `desc_place`, `place_image`, `map`, `open_place`, `id_category`, `name_category`, `total_review`, `id_review`, `price`, `tiket`) VALUES
(1, 'Taman Kota Harmoni', 'Jl. Keputih Tegal Tim. II No.249, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111', 'Taman kota besar dengan kebun yang berisi beragam bunga, air mancur & karya seni.', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/park/harmoni.jpg', 'https://www.google.co.id/maps/place/Taman+Harmoni/@-7.2952211,112.8013716,17z/data=!4m13!1m7!3m6!1s0x2dd7fa7a177ebfbd:0x94c826f638ea1d55!2sTaman+Harmoni!8m2!3d-7.2952211!4d112.8035603!10e1!3m4!1s0x2dd7fa7a177ebfbd:0x94c826f638ea1d55!8m2!3d-7.2952211!4d112', '06.00 Wib s/d 18.00 Wib ', 1, 'Park', 0, 0, 25000, 60),
(2, 'Kebun Bibit Wonorejo', 'Kebun Bibit, Jl. Raya Wonorejo, Wonorejo, Rungkut, Surabaya City, East Java 60296', 'Hutan kota dengan area piknik tepi sungai & taman bermain anak, serta bumi perkemahan & rusa.', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/park/bibitw.jpg', 'https://www.google.com/maps/dir//taman+wonorejo/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x2dd7fa8cf321a5d3:0xa20235fc28e1ca1a?sa=X&ved=2ahUKEwinnfin4sf0AhV94XMBHXWXAbwQ9Rd6BAgFEAQ', '', 1, '', 0, 0, 18000, 32),
(3, 'Taman Kunang-kunang', 'Jl. Penjaringan Tim., Penjaringan Sari, Kec. Rungkut, Kota SBY, Jawa Timur 60297', 'Keberadaan lampu yang terang di malam hari akan sangat mengesankan dan indah.\r\n\r\n\r\n\r\n', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/park/Rental-mobil-Surabaya-keTaman-kunang-kunang-1168x657.jpg', 'https://www.google.com/maps/dir//taman+kunang+kunang/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x2dd7faecf437a521:0xc20515bde56f72ce?sa=X&ved=2ahUKEwjTy7G248f0AhXNgtgFHfbWCJIQ9Rd6BAgPEAM', '', 1, '', 0, 0, 21000, 21),
(4, 'Taman Flora Bratang', 'Jl. Bratang Binangun, Baratajaya, Kec. Gubeng, Kota SBY, Jawa Timur 60284', 'Taman dengan jalan setapak berkelok melintasi tanaman rimbun, taman bermain, & kawanan rusa.\r\n ', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/park/Wisata-Menarik-di-Taman-Flora-dengan-sewa-mobil-Surabaya.jpg', 'https://www.google.com/maps/dir//taman+flora+bratang/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x2dd7fbb2807f4593:0x51d06bd30548e1d6?sa=X&ved=2ahUKEwjM-P7x5sf0AhW47XMBHbGNAFQQ9Rd6BAgPEAM', '', 1, '', 0, 0, 30000, 26),
(5, 'Taman Pelangi', 'Jl. Ahmad Yani No.138, Gayungan, Kec. Gayungan, Kota Surabaya, Jawa Timur 60235', 'Taman kota yang populer di malam hari dengan air mancur warna-warni dan berbentuk daun.', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/park/pelangi.jpg', 'https://www.google.co.id/maps/place/Taman+Pelangi/@-7.3255102,112.7241217,15.75z/data=!4m9!1m2!2m1!1staman+pelangi!3m5!1s0x2dd7fb69dbf567ff:0x2993db27b0539b3d!8m2!3d-7.3275604!4d112.7312242!15sCg10YW1hbiBwZWxhbmdpWg8iDXRhbWFuIHBlbGFuZ2mSAQljaXR5X3BhcmuaAS', '', 1, '', 0, 0, 28000, 32),
(6, 'Taman Mundu', 'Jl. Juwet, Tambaksari, Kec. Tambaksari, Kota Surabaya, Jawa Timur 60136', 'Taman untuk wisata keluarga karena fasilitas yang dimilikinya mulai dari taman bermain hingga area batu refleksi.', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/park/taman-kota-di-surabaya-8-Liputan6.jpg', 'https://www.google.co.id/maps/place/Taman+Mundu/@-7.2515993,112.7524096,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd7f9717b3e06b7:0x597ce3c7f0c8762e!8m2!3d-7.2516046!4d112.7545983', '', 1, '', 0, 0, 23000, 34),
(7, 'Taman Bungkul', 'Jl. Taman Bungkul, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241', 'Taman kota ini terkenal akan keindahan dan tata letaknya yang rapi. Lengkap dengan beragam fasilitas yang menambah kenyamanan pengunjung.', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/park/bungkul.jpg', 'https://www.google.co.id/maps/place/Taman+Bungkul/@-7.2913415,112.7376331,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd7fbbe1837258d:0x6de4060b6596563f!8m2!3d-7.2913468!4d112.7398218', '', 1, '', 0, 0, 24500, 54),
(8, 'Taman Prestasi', 'Jl. Ketabang Kali No.6, Ketabang, Kec. Genteng, Kota Surabaya, Jawa Timur 60272', 'Taman Prestasi adalah alternatif tujuan taman kota di Surabaya selanjutnya yang tak kalah menarik untuk dijelajahi. ', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/park/taman-kota-di-surabaya-10-Flickr.jpg', 'https://www.google.co.id/maps/place/Taman+Prestasi+Surabaya/@-7.2614669,112.7406397,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd7f966cbf14633:0xa3125b26dcc2d9ea!8m2!3d-7.2614722!4d112.7428284', '', 1, '', 0, 0, 25000, 41),
(9, 'Taman Ekspresi', 'Jl. Genteng Kali No.67, Genteng, Kec. Genteng, Kota Surabaya, Jawa Timur 60275', 'Taman di Kota Surabaya yang cukup unik dimana terdapat banyak sekali karya-karya seni yang tampil kontras diantara asrinya pepohonan.', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/park/taman-kota-di-surabaya-11-Casa-Indonesia.jpg', 'https://www.google.co.id/maps/place/Taman+Ekspresi+Dan+Perpustakaan/@-6.7429058,108.5631467,8z/data=!4m6!1m2!2m1!1staman+ekspresi!3m2!1s0x2dd7f966192051db:0x73421d48f52c1f0f!15sCg50YW1hbiBla3NwcmVzaVoQIg50YW1hbiBla3NwcmVzaZIBBHBhcmuaASNDaFpEU1VoTk1HOW5TMF', '', 1, '', 0, 0, 16500, 32),
(10, 'Hutan Bambu', 'Jl. Raya Marina Asri, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111', 'Taman terluas dan terindang di Surabaya. Dengan banyak bunga yang berwarna warni dan bambu yang eksotis.', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/park/Hutan-Bambu-Sukolilo.jpg', 'https://www.google.co.id/maps/place/Hutan+Bambu+Keputih+Surabaya/@-7.2942898,112.8015537,19.75z/data=!4m12!1m6!3m5!1s0x2dd7f900d37fae9b:0x637bddc13af0df47!2sHutan+Bambu+Keputih+Surabaya!8m2!3d-7.2941909!4d112.8017238!3m4!1s0x2dd7f900d37fae9b:0x637bddc13af', '', 1, '', 0, 0, 22000, 31),
(90, 'Pasar Atom ', 'Jalan Bunguran Nomor 45, Kelurahan Bongkaran, Kecamatan Pabean Cantikan, Surabaya, Jawa Timur ( -7. 24154, 112. 74401)', 'Pasar Atom disebut sebagai \"surganya\" baju, aksesori, hingga kuliner enak. Uniknya, rata-rata pedagang yang berjualan merupakan keturunan Tiongkok, sehingga kamu bisa mencicipi aneka kuliner khas Surabaya yang sulit ditemukan di tempat lain.', '90 pasar atom.jpg', 'https://www.google.co.id/maps/place/Pasar+Atom/@-7.2417083,112.7417688,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd7f9e0eca6fffb:0x8ceb0f440327c84c!8m2!3d-7.2417083!4d112.7439575?hl=id', '', 3, '', 0, 0, 7000, 31),
(91, 'DTC', 'Jalan Jagir Wonokromo, Kelurahan Jagir, Kecamatan Wonokromo, Surabaya, Jawa Timur ( -7. 20187, 112. 7381)', 'Awalnya, DTC merupakan Pasar Wonokromo yang tidak terawat dan kotor. Kemudian, direvitalisasi dengan disertai pemindahan para pedagang ke pasar modern.', '91 DTC.jpg', 'https://www.google.co.id/maps/place/Darmo+Trade+Center/@-7.302013,112.7355071,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd7fb98afba92c5:0x47cdfd0973311b6c!8m2!3d-7.302013!4d112.7376958?hl=id', '', 3, '', 0, 0, 6000, 26),
(92, 'Pasar Blauran', 'Jalan Kranggan, Kelurahan Tembok Dukuh, Kecamatan Sawahan, Surabaya, Jawa Timur ( -7. 25623, 112. 73360)', 'menjual pernak-pernik aksesori, baju, buku bekas berkualitas, hingga kuliner menarik. Biasanya, pengunjung yang lelah berbelanja akan mampir untuk mencicipi kuliner lezatnya.', '92 pasar blauran.jpg', 'https://www.google.co.id/maps/place/Pasar+Blauran+Baru/@-7.2564456,112.7313895,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd7f944e137c21b:0xd1b20e9a6583d399!8m2!3d-7.2564456!4d112.7335782?hl=id', '', 3, '', 0, 0, 8000, 30),
(93, 'Pusat Grosir Surabaya ', 'Jalan Dupak Raya Nomor 1, Kelurahan Gundih, Kecamatan Bubutan, Surabaya, Jawa Timur ( -7. 24634, 112. 73258)', 'Ada seragam sekolah, aksesori, dompet, busana muslim, kebaya, dan lain-lain. Semua barang dibanderol dengan harga yang murah. Jadi jangan heran dengan kepadatan tempat ini!', '93 PGS.jpg', 'https://www.google.co.id/maps/place/PGS+Nyr.+Nusantara/@-7.2461413,112.7305247,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd7f93f4fd6f805:0x64a254418c7208ca!8m2!3d-7.2461413!4d112.7327134?hl=id', '', 3, '', 0, 0, 7500, 42),
(94, 'ITC', 'Jalan Gembong Nomor 20-30, Kelurahan Kapasan, Kecamatan Simokerto, Surabaya, Jawa Timur ( -7. 24136, 112. 74612)', 'Bangunannya menyerupai mall dengan sistem pasar tradisional, tawar-menawar, bikin tempat ini menarik. Kamu bisa membeli aneka batik, emas, tas, furnitur, dan pakaian dengan harga murah. ', '94 ITC.jpg', 'https://www.google.co.id/maps/place/ITC+Surabaya+Mega+Grosir/@-7.241554,112.7438808,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd7f911623bd455:0x13126f6f6481985d!8m2!3d-7.241554!4d112.7460695?hl=id', '', 3, '', 0, 0, 8000, 43),
(95, 'Kampoeng Ilmu', 'Jalan Semarang Nomor 55, Kecamatan Bubutan, Surabaya, Jawa Timur ( -7. 25151, 112. 72878)', '\"surganya\" buku murah di Surabaya. Kamu bisa menemukan buku baru atau bekas dengan genre beragam, seperti buku pelajaran, kuliah, novel, sejarah, komik, atau agama. ', '95 kampoeng ilmu.jpg', 'https://www.google.co.id/maps/place/Toko+Buku+Kampoeng+Ilmu/@-7.241554,112.7438808,17z/data=!4m5!3m4!1s0x2dd7f95a4c38f333:0xac15d9b72acc122b!8m2!3d-7.2518302!4d112.7287485?hl=id', '', 3, '', 0, 0, 5000, 30),
(96, 'Jembatan Merah Plaza (JMP)', 'Jalan Taman Jayengrono Nomor 2-4, Kelurahan Krembangan Selatan, Kecamatan Krembangan, Surabaya, Jawa Timur ( -7. 23427, 112. 73800)\r\n', 'Pernah mendengar Jembatan Merah, monumen sejarah yang tak terlupakan? Nah, ada tempat belanja murah di dekat monumen ini, yakni Jembatan Merah Plaza (JMP).', '96 JMP.jpg', 'https://www.google.co.id/maps/place/Jembatan+Merah+Plaza/@-7.2344734,112.7357742,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd7f922b7711569:0x3a814f4ab254afe!8m2!3d-7.2344734!4d112.7379629?hl=id', '09.00-21.00 WIB', 3, '', 0, 0, 9000, 32),
(97, 'Pasar Bong', 'Jalan Slompretan Nomor 26, Kelurahan Bongkaran, Kecamatan Pabean Cantian, Surabaya, Jawa Timur ( -7. 23840, 112. 74082)', 'Bingung mencari oleh-oleh haji atau umrah? Wah, kamu harus berkunjung ke Pasar Bong di Jalan Slompretan ini.\r\nTernyata, pasar yang satu ini secara khusus menjual aneka oleh-oleh haji atau umrah. ', '97 pasar bong.jpg', 'https://www.google.co.id/maps/place/Pasar+Bong/@-7.2385879,112.7386741,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd7f98140062c73:0xf734ae81223e794f!8m2!3d-7.2385879!4d112.7408628?hl=id', '08.00-17.00 WIB', 3, '', 0, 0, 6000, 23),
(98, 'pasar gembong', ': Jalan Gembong Tebasan, Kelurahan Kapasari, Kecamatan Genteng, Surabaya, Jawa Timur (-7. 24032, 112. 75397)', '9.	Tak hanya Tugu Pahlawan Pagi yang menjual barang bekas impor, ada pula Pasar Gembong. Uniknya, gak hanya baju yang dijual, tetapi ada aksesori motor, mobil, kaset lama, dan sebagainya.', '98 pasar gembong.jpg', 'https://www.google.co.id/maps/place/Pasar+Gembong+Tebasan/@-7.2450151,112.749158,17z/data=!3m2!4b1!5s0x2dd7f90d5e8f3b5d:0x3b5f7a22e67a5891!4m5!3m4!1s0x2dd7f90d5ee486e3:0x8116c03e6c522239!8m2!3d-7.2451413!4d112.7513289?hl=id', '08.00-21.00 WIB', 3, '', 0, 0, 6000, 43),
(99, 'Tunjungan Plaza Surabaya', 'Jl. Jenderal Basuki Rachmat No.8-12, Kedungdoro, Kec. Tegalsari, Kota Surabaya. ( -7. 26205, 112. 73843)', 'Pusat perbelanjaan pertama yang wajib untuk Anda kunjungi adalah Tunjangan Plaza. Plaza satu ini atau yang biasa disebut dengan TP, merupakan pusat perbelanjaan terbesar kedua yang ada di Kota Surabaya.', '99 TPS.jpg', 'https://www.google.co.id/maps/place/Tunjungan+Plaza/@-7.2623683,112.7362544,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd7f960aee9a64d:0xaa9e2f2c4ed67175!8m2!3d-7.2623683!4d112.7384431?hl=id', '', 3, '', 0, 0, 15000, 45);

-- --------------------------------------------------------

--
-- Table structure for table `place_category`
--

CREATE TABLE `place_category` (
  `id` int(11) NOT NULL,
  `name_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_category` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `place_category`
--

INSERT INTO `place_category` (`id`, `name_category`, `img_category`) VALUES
(1, 'Park', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/Fountain%20Garden%20Vector.jpg'),
(2, 'Landmark', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/51816.jpg'),
(3, 'Shopping', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/7345.jpg'),
(4, 'Culinary', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/fast-food-advertising-composition_1284-17372.jpg'),
(5, 'Hangout', 'https://raw.githubusercontent.com/rullywjntk/asset-project-web/main/delicious-coffee-time-elements_24877-50198.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id_review` int(11) NOT NULL,
  `id_place` int(11) NOT NULL,
  `user_review` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id_review`, `id_place`, `user_review`, `review`) VALUES
(44, 2, 'user', 'tempat nyaman'),
(56, 1, 'user', 'tempatnya bagus'),
(57, 4, 'nut', 'dwada'),
(58, 6, 'nut', 'dwad'),
(63, 7, 'nut', 'dawda'),
(66, 9, 'nut', 'DWADAD'),
(77, 8, 'nut', 'dawdad');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_place` int(11) NOT NULL,
  `name_place` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `user` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `p_motor` int(3) NOT NULL,
  `p_mobil` int(3) NOT NULL,
  `j_tiket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_place`, `name_place`, `id`, `user`, `price`, `p_motor`, `p_mobil`, `j_tiket`) VALUES
(74, 1, 'Taman Kota Harmoni', 5, 'nut', 25000, 4, 5, 32),
(75, 5, 'Taman Pelangi', 5, 'nut', 28000, 4, 4, 32),
(76, 5, 'Taman Pelangi', 5, 'nut', 28000, 2, 1, 42),
(77, 8, 'Taman Prestasi', 5, 'nut', 25000, 2, 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` int(12) NOT NULL,
  `id_favourite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone_number`, `id_favourite`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$n.wTE1CdMlU2KoBdVCks/OjBK436Qe16WKRLBSlKNuDdPx1lY434a', 1213123123, 0),
(3, 'user', 'user@user.com', '$2y$10$bOE1C9ZSHe2/3ogA9lHau.PoUadl8HXIrc3SaGwXXgWkRmkQ0qrhS', 132414513, 0),
(4, 'dawdawdad', 'Admin@gmail.com', '$2y$10$xpkzIN3NQBdHtkmBrZ6bBexIsdY5dUc8L5gyNG/72tzvbAiN.846G', 2147483647, 0),
(5, 'nut', 'nut@gmail.com', '$2y$10$1HKuySCXDoJmWOSp2hThT.kuUWVc2uVMRDU/p.r67OlrT88j9qjIq', 2147483647, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id_place`);

--
-- Indexes for table `place_category`
--
ALTER TABLE `place_category`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`),
  ADD UNIQUE KEY `id_place` (`id_place`),
  ADD UNIQUE KEY `id_place_2` (`id_place`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_place` (`id_place`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
