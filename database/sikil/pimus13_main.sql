-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Okt 2023 pada 05.14
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pimus13_main`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `competition_categories`
--

CREATE TABLE `competition_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `desc` text NOT NULL,
  `competition_type` enum('Individu','Kelompok') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `competition_categories`
--

INSERT INTO `competition_categories` (`id`, `name`, `desc`, `competition_type`) VALUES
(1, 'Pilmapres', 'Pemilihan mahasiswa berprestasi merupakan ajang untuk menyaring mahasiswa/i terbaik Universitas Surabaya yang nantinya akan dicalonkan menjadi perwakilan kampus di pemilihan mahasiswa berprestasi tingkat nasional. Tujuan dari kegiatan ini adalah untuk meningkatkan kesadaran untuk memfasilitasi kreativitas mahasiswa, memberi apresiasi kepada mahasiswa/i yang berprestasi serta meningkatkan jumlah gagasan kreatif/produk inovatif mahasiswa untuk pembangunan kampus', 'Individu'),
(2, 'Debat Inggris', 'Kompetisi Debat Bahasa Inggris merupakan media yang tepat dalam melatih kemampuan negosiasi dan argumentasi mahasiswa dalam skala internasional. Debat Bahasa Inggris tidak hanya menuntut mahasiswa untuk mampu mengungkapkan ide dalam Bahasa Inggris, namun juga menuntut mahasiswa mampu menguasai pengetahuan global, menganalisis, membuat judgement, dan meyakinkan publik. Di dalam Debat Bahasa Inggris, mahasiswa akan dihadapkan persoalan-persoalan nyata yang dihadapi suatu masyarakat atau bangsa. Mahasiswa harus mampu berposisi dan meyakinkan publik bahwa posisi mereka benar dan tepat. ', 'Kelompok'),
(3, 'Debat Indonesia', 'Kompetisi Debat Bahasa Indonesia adalah upaya yang utuh dalam membangun 6C, yaitu collaboration (kerjasama), creativity (kreativitas), critical thinking (berfikir kritis), communication (berkomunikasi), citizenship (kewarganegaraan), dan character (karakter). Tujuan dari Kompetisi Debat Bahasa Indonesia adalah meningkatkan daya saing mahasiswa, meningkatkan kemampuan Bahasa Indonesia, menciptakan kompetisi yang sehat antar mahasiswa, meningkatkan kemampuan mahasiswa untuk berpikir kritis, logis, dan analitis, sehingga mampu bersaing di tingkat nasional maupun internasional, mengembangkan kemampuan mahasiswa dalam menyampaikan pendapat secara logis dan sistematis, dan memperkuat karakter mahasiswa melalui pemahaman akan permasalahan nasional dan internasional serta alternatif pemecahannya melalui kompetisi debat.', 'Kelompok'),
(4, 'Karya Tulis Ilmiah', 'Karya tulis ilmiah mengacu pada Program Kreativitas Mahasiswa Gagasan Tertulis (PKM-GT). Tujuan dari kompetisi ini adalah untuk membudayakan kebiasaan peduli ke alam pikir mahasiswa akan persoalan bangsanya, merenungkan, mendiskusikan dan menemukan ide untuk mengatasi atau memperbaikinya kemudian mengkonstruksikannya dalam bentuk tulisan.', 'Kelompok'),
(5, 'Kompetisi MIPAS', 'Kompetisi MIPAS merupakan wadah bagi mahasiswa/i Universitas Surabaya yang memiliki bakat dan minat di bidang Matematika, Ilmu Pengetahuan Alam, dan Statistika. Cabang lomba yang dibuka dalam Kompetisi MIPAS adalah Matematika, Fisika, Kimia, Biologi, dan Statistika. ', 'Individu'),
(6, 'Poster', 'Lomba Poster', 'Kelompok'),
(7, 'Video Digital Pendidikan', 'Video Digital Pendidikan merupakan wadah mahasiswa untuk menyalurkan kreativitasnya dalam penyampaian informasi atau suatu tujuan tertentu yang disajikan dalam sebuah karya video yang bertemakan \"Gen Z Fights for the Better Indonesia\" yang tentunya berkaitan dengan kondisi saat ini. ', 'Kelompok'),
(8, 'PKM-Riset Sosial Humaniora', 'Program Kreativitas Mahasiswa dikembangkan untuk mengantarkan mahasiswa mencapai taraf pencerahan kreativitas dan inovasi berlandaskan penguasaan sains dan teknologi serta keimanan yang tinggi. Dalam rangka mempersiapkan diri menjadi pemimpin yang cendekiawan, wirausahawan mandiri dan arif, mahasiswa diberi peluang untuk mengimplementasikan kemampuan, keahlian, sikap, tanggung jawab, membangun kerjasama tim maupun mengembangkan kemandirian melalui kegiatan yang kreatif dalam bidang ilmu yang ditekuni.', 'Kelompok'),
(9, 'PKM-Kewirausahaan', 'Program Kreativitas Mahasiswa dikembangkan untuk mengantarkan mahasiswa mencapai taraf pencerahan kreativitas dan inovasi berlandaskan penguasaan sains dan teknologi serta keimanan yang tinggi. Dalam rangka mempersiapkan diri menjadi pemimpin yang cendekiawan, wirausahawan mandiri dan arif, mahasiswa diberi peluang untuk mengimplementasikan kemampuan, keahlian, sikap, tanggung jawab, membangun kerjasama tim maupun mengembangkan kemandirian melalui kegiatan yang kreatif dalam bidang ilmu yang ditekuni.', 'Kelompok'),
(10, 'PKM-Karsa Cipta', 'Program Kreativitas Mahasiswa dikembangkan untuk mengantarkan mahasiswa mencapai taraf pencerahan kreativitas dan inovasi berlandaskan penguasaan sains dan teknologi serta keimanan yang tinggi. Dalam rangka mempersiapkan diri menjadi pemimpin yang cendekiawan, wirausahawan mandiri dan arif, mahasiswa diberi peluang untuk mengimplementasikan kemampuan, keahlian, sikap, tanggung jawab, membangun kerjasama tim maupun mengembangkan kemandirian melalui kegiatan yang kreatif dalam bidang ilmu yang ditekuni.', 'Kelompok'),
(11, 'PKM-Pengabdian Kepada Masyarakat', 'Program Kreativitas Mahasiswa dikembangkan untuk mengantarkan mahasiswa mencapai taraf pencerahan kreativitas dan inovasi berlandaskan penguasaan sains dan teknologi serta keimanan yang tinggi. Dalam rangka mempersiapkan diri menjadi pemimpin yang cendekiawan, wirausahawan mandiri dan arif, mahasiswa diberi peluang untuk mengimplementasikan kemampuan, keahlian, sikap, tanggung jawab, membangun kerjasama tim maupun mengembangkan kemandirian melalui kegiatan yang kreatif dalam bidang ilmu yang ditekuni.', 'Kelompok'),
(12, 'Ide Bisnis', 'Ngide Bro', 'Kelompok');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dates`
--

CREATE TABLE `dates` (
  `id` int(11) NOT NULL,
  `open` datetime NOT NULL,
  `close` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `dates`
--

INSERT INTO `dates` (`id`, `open`, `close`) VALUES
(1, '2022-11-07 00:00:00', '2023-12-22 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('s160421098@student.ubaya.ac.id', '$2y$10$ZnfWk3HpkeK6WJbM515o7.4OR5BUp8PGpJAUwVodwZ0kwthLvM/e2', '2022-11-04 12:15:36'),
('s120122041@student.ubaya.ac.id', '$2y$10$t4T1kGjw7T70tM.XF/KC6O8sSvAfz0lwG4VWJBh1avG/dVbv2UqOC', '2022-11-04 12:15:49'),
('s160220019@student.ubaya.ac.id', '$2y$10$2e/UsrXJcPmZYVNddl1m0OxPq9mTKXU8QohbSjSgiLj5W72nWJ3Mq', '2022-11-13 11:41:47'),
('s180222001@student.ubaya.ac.id', '$2y$10$V4VxzteZVeGpvRhJfGvLqeHluYhjsycvSpdHW4q.gLeejoEgOgdne', '2022-11-16 13:30:25'),
('s160422016@student.ubaya.ac.id', '$2y$10$7vLetd8BX8/ebNE.OoogheZyQknmgqW3KtoPV6eZzN1y.Gr7GVihS', '2022-12-05 12:14:26'),
('s110121020@student.ubaya.ac.id', '$2y$10$1dtGHEgUzGVaKvkvLh7cL.o0B030KpNvEH6w5NgkZtSJS/WUjhrfe', '2022-12-07 19:38:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submissions`
--

CREATE TABLE `submissions` (
  `id` int(11) NOT NULL,
  `teams_id` int(11) NOT NULL,
  `competition_categories_id` int(11) NOT NULL,
  `link_exhibition` varchar(255) DEFAULT NULL,
  `link_proposal` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT 'Tidak perlu deskripsi',
  `like_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `submissions`
--

INSERT INTO `submissions` (`id`, `teams_id`, `competition_categories_id`, `link_exhibition`, `link_proposal`, `description`, `like_count`) VALUES
(1, 89, 4, 'https://drive.google.com/file/d/11re9VNuFgrOlB9BdNpz-rJYPR45QCZ6S/view?usp=sharing', 'https://drive.google.com/file/d/1Op8Ljvwua1g-G0NWCCUsb4g13oyFkneV/view?usp=sharing', 'NANDA AYU SETYAWATI_KTI', 215),
(2, 12, 4, 'https://drive.google.com/file/d/1iDzVwlWD9fhNwZs_ZyDBTl99XCenMTkB/view?usp=sharing', 'https://drive.google.com/file/d/1KvNHn1_UvlrJqU2WYwzfvc5wRan5YMMi/view?usp=sharing', 'Stevani Citrayani_PIMUS-KTI_“EFEKTIVITAS ANTIBAKTERI DAN ANTIOKSIDAN SABUN EKSTRAK ETANOL TANAMAN LEUNCA (Solanum nigrum L.)”\r\n#Kelompok_12', 98),
(3, 49, 4, 'https://drive.google.com/file/d/15x6UEoVxf4Y5_5wv9PSV-XHBzBPBdobL/view?usp=sharing', 'https://drive.google.com/file/d/1a9vxyv_okUhVQRTRobhDZdFYPEi3tIoo/view?usp=sharing', 'DIAH FITRI MEI NURITA_PIMUS-KTI_PEMBUATAN APLIKASI ACCOSYS UNTUK MEMPERMUDAH BISNIS UMKM', 86),
(4, 116, 4, 'https://drive.google.com/file/d/1HQdRd4YGHxDsojp4ysqWlQiPnO9H3EwD/view?usp=sharing', 'https://drive.google.com/file/d/1KlwKKduYF7wUpBiTL1XfklrorwRjyBsG/view?usp=sharing', 'Selamat malam, berikut saya kirimkan link drive proposal dan poster serta PPT atas nama Anak Agung Nissa Maheswari dengan judul KTI Analisis Pandangan Dokter terhadap Etika Kedokteran Sebagai Landasan', 1),
(5, 133, 4, 'https://drive.google.com/file/d/1cmUcknlOaist-5T0EgLoXWOY00mtrCTm/view?usp=sharing', 'https://drive.google.com/file/d/1ClMYiomL9DBEZnlDVIJYPdAenTldOYp7/view?usp=sharing', 'Vincensia Avionica_PIMUS-KTI_Perbandingan Potensi Cuka Apel dari Apel Varietas Manalagi dan Rome Beauty sebagai Antihiperglikemik terhadap Zebrafish', 1),
(6, 167, 4, 'https://drive.google.com/file/d/1kih0jq_n3cFMyjvQ1v2jc04mS6mrdnpm/view?usp=drivesdk', 'https://drive.google.com/file/d/1_IXHKNIUkPX8RAEB2buUDbS_2TmX8p_k/view?usp=drivesdk', 'Proposal KTI_Pimus 2022_Alexander Adam Perador', 2),
(7, 108, 4, 'https://drive.google.com/file/d/1Zbivfi-CwjV59CKuFN6rb62ft_8qTawj/view?usp=sharing', 'https://drive.google.com/file/d/1QyRw_GiUOZBx6ipQ-rkK_5bBAyt3wB8q/view?usp=sharing', 'Neva Nurisya Aqmarina _PIMUS-KTI_PENGARUHLIMBAHINDUSTRIFASHIONTERHADAPLINGKUNGANSEKITAR', 2),
(8, 13, 4, 'https://drive.google.com/file/d/1ayIMzZSfAvFuYSID9twB0svfsAp7snFm/view?usp=sharing', 'https://drive.google.com/file/d/1ZQKiDdTiqVlm3eFBQWv2GMsnzIgPZqof/view?usp=sharing', 'Proposal KTI', 33),
(9, 92, 4, 'https://drive.google.com/file/d/1H6DxpmO9an0jFVrFcEyww7yML-JZ9D0M/view?usp=sharing', 'https://drive.google.com/file/d/1gt1aciM260UqoGuYGf9RQD_ZHggiqZ32/view?usp=sharing', 'Diusulkan Oleh:\r\nIvan Edmundo			/ 170121022\r\nMelinda Surya Sutedjo	/ 170122003\r\nPriska Claudia Soen		/ 170122027\r\nAnastasia Grace Setiawati	/ 170222009', 30),
(10, 45, 4, 'https://drive.google.com/file/d/1cqSkTlFCVaPLR7l9QgJcGe9GoWH_L7uU/view?usp=drivesdk', 'https://drive.google.com/file/d/1VNO6HXtveTdLnlROT-mafV4SvnnM1lkr/view?usp=sharing', 'Robby Chandra Kosasih_PIMUS-KTI_FASILITASI DIGITALISASI UMKM JASA MELALUI RANCANGAN PLATFORM ONLINE S-MART', 75),
(11, 127, 4, 'https://drive.google.com/file/d/112GtXu8rvO9dsAmMsgqO_tfJFCOi9XAe/view?usp=sharing', 'https://drive.google.com/file/d/1GyiQ_OfdHErYEweSzGSJ7QN7R1-ugVt3/view?usp=sharing', 'Pengumpulan KTI PIMUS FH 2022 linuntuk poster dengan KTI saya jadikan satu folder dalam Drive didalamnya terdapat file yang berbeda', 1),
(12, 16, 4, 'https://drive.google.com/file/d/1pQW0F0vsORWf2r9ALKTE3sOYlY8x_BR-/view?usp=sharing', 'https://drive.google.com/file/d/15ScKNttZTAqWuXPSJ0vdNl4DZpn7XzKW/view?usp=sharing', 'SUBMIT PROPOSAL KTI', 94),
(13, 80, 9, NULL, 'https://drive.google.com/file/d/1K2FndKWzTWFb8tqAzv0QGThGLUWTEizn/view?usp=sharing', NULL, 0),
(14, 35, 8, NULL, 'https://drive.google.com/drive/folders/1kUI5mxEUGIryyIJwK6qK15s3anGi0z-0', NULL, 0),
(15, 20, 8, NULL, 'https://drive.google.com/drive/folders/1MFCpVmn92oFyUrO78rmxoLYYeMIiJfpl?usp=share_link', NULL, 0),
(16, 8, 9, NULL, 'https://drive.google.com/file/d/1ayR5WO0TZB6YHKkJtsopkgGHD09MfXJ-/view?usp=share_link', NULL, 0),
(17, 18, 9, NULL, 'https://drive.google.com/file/d/18fNn8BpSFkHdIZNsLtRvvzHS3vom67bT/view?usp=drivesdk', NULL, 0),
(18, 169, 10, NULL, 'https://drive.google.com/file/d/1ImaMGuoslcMgl-DdARZONfOHE-PeBSPp/view?usp=drivesdk', NULL, 0),
(19, 76, 10, NULL, 'https://drive.google.com/file/d/1KjJU9I3tYi1tW0CZPXlhGLTx2C5QT3dq/view?usp=share_link', NULL, 0),
(20, 2, 8, NULL, 'https://drive.google.com/file/d/1PNvX-KOgPyxsKZUYSmcMmhhxpn0qnvtt/view?usp=share_link', NULL, 0),
(21, 71, 9, NULL, 'https://drive.google.com/file/d/1OG4PzmmkUAStS1Nh375qcyi1J6Cj2ATk/view?usp=share_link', NULL, 0),
(22, 40, 8, NULL, 'https://drive.google.com/file/d/1kxdee3XQHD0wjREJkFdXKPQEBe4iD4wd/view?usp=share_link', NULL, 0),
(23, 43, 11, NULL, 'https://drive.google.com/file/d/1xIKb3w2CAYntAT07V2bO9g4mYpu73irc/view?usp=share_link', NULL, 0),
(24, 73, 9, NULL, 'https://drive.google.com/file/d/1yfDOnkx0eJc47InS6xxw8ZIN4cFMNRYH/view?usp=sharing', NULL, 0),
(25, 9, 9, NULL, 'https://drive.google.com/file/d/11KOE0wVgYsfN2-k6_N51nUaOscXU_Amp/view?usp=share_link', NULL, 0),
(26, 61, 9, NULL, 'https://drive.google.com/file/d/1VHBey-uXiQjrOeY_Q4IJIVC7Ldn9DJbZ/view?usp=sharing', NULL, 0),
(27, 174, 10, NULL, 'https://drive.google.com/file/d/1jLsLJrdHGS4WvWabYX-WkQnb4YIgXFEY/view?usp=sharing', NULL, 0),
(28, 126, 9, NULL, 'https://drive.google.com/file/d/1hQydofrQNZzC24cW01aRbwbQ8IMDQZDR/view?usp=drivesdk', NULL, 0),
(29, 29, 9, NULL, 'https://drive.google.com/file/d/1azyZrMhd3zFZn_1OmZaDkTqRfMkaqFx9/view?usp=sharing', NULL, 0),
(30, 21, 8, NULL, 'https://docs.google.com/document/d/1hmMfL0sCKQ0uI1OIi251Db00Kf17HHj2/edit?usp=share_link&ouid=101248584063161702209&rtpof=true&sd=true', NULL, 0),
(31, 58, 8, NULL, 'https://drive.google.com/file/d/1R213Um0ohoyDzWtQc_OyIC56u0FK3Fm9/view?usp=sharing', NULL, 0),
(32, 31, 9, NULL, 'https://drive.google.com/drive/folders/1av9gQ-1NXsuEEhGZJ7waIQ9f-CTLtJa0', NULL, 0),
(33, 164, 9, NULL, 'https://drive.google.com/file/d/1Of4erSAJAdxWwclWP01v3Li9FyCtMSoJ/view?usp=drivesdk', NULL, 0),
(34, 91, 8, NULL, 'https://drive.google.com/file/d/1w8mWeOMRf2ME7zcc2wyquimpAS48nI7F/view?usp=sharing', NULL, 0),
(35, 39, 7, 'https://youtu.be/YxlHDC3Ek98', 'https://drive.google.com/drive/folders/1QG9kK2zAmEVW6NTpKvd56HlkHHHvvqce?usp=share_link', '“DUA SISI”\nSebuah video pendek berkonsep naratif yang menjelaskan tentang dua sisi generasi Z, yaitu sisi positif dan sisi negatif. Tujuannya adalah untuk menyampaikan bahwa generasi Z bukanlah genera', 27),
(36, 57, 8, NULL, 'https://drive.google.com/file/d/11vbxY03Qy_wldZOVCXsK3BccCK953NSP/view?usp=sharing', NULL, 0),
(37, 34, 10, NULL, 'https://drive.google.com/file/d/1eyeHNXbMEGWIpsouaNOxWxf5m5cHUe1X/view?usp=drivesdk', NULL, 0),
(38, 3, 9, NULL, 'https://drive.google.com/drive/folders/1TvAtZuRfKxrgYVRfp8NFD2U4blGQSIYR?usp=share_link', NULL, 0),
(39, 25, 9, NULL, 'https://drive.google.com/file/d/1JeMs-mjdgySErQAYigIMeQYJbE3uR0CC/view?usp=share_link', NULL, 0),
(40, 177, 9, NULL, 'https://drive.google.com/file/d/1jM9_kHXJIJsHgGPhYbdyb-amyIBvUKf0/view?usp=drivesdk', NULL, 0),
(41, 24, 8, NULL, 'https://drive.google.com/file/d/1PHoXOo2ycxohdVo-oWM4nJa1DQrX7Dmk/view?usp=sharing', NULL, 0),
(42, 120, 9, NULL, 'https://drive.google.com/drive/folders/1AMFYuq7v0TPhv0Y1AwqKIpxycXWk5gCy', NULL, 0),
(43, 10, 9, NULL, 'https://drive.google.com/drive/folders/1HBFWLpliowenaNZOCchtQcLWCMC_sREp?usp=sharing', NULL, 0),
(44, 70, 7, 'https://youtu.be/1dLuxDKjrLE', 'https://drive.google.com/drive/u/2/folders/1cqX-rA5nLTX0OTPKpYCQqgP1agi5y-Jr', 'Pengumpulan Video Digital Pendidikan PIMUS XII_Ni Nyoman Trinanda Ayu Nirmala', 68),
(45, 41, 8, NULL, 'https://drive.google.com/file/d/1ByXUD8EPerHSr6vwH6KFi9SegxgTHB9E/view?usp=share_link', NULL, 0),
(46, 60, 8, NULL, 'https://drive.google.com/file/d/1Bi4MQv0f_fD-71X8dw0TLD6gKZ1h-JJ4/view?usp=drivesdk', NULL, 0),
(47, 33, 9, NULL, 'https://drive.google.com/file/d/1I7z_e4DJFejEzq5-17aqPUqzhmwTB2OI/view?usp=share_link', NULL, 0),
(48, 117, 9, NULL, 'https://drive.google.com/file/d/1SGAi48mYZANPdLsqK0ibT0StbRwBfAne/view?usp=sharing', NULL, 0),
(49, 143, 8, NULL, 'KECENDERUNGAN PERILAKU MEMBELI SECARA KOMPULSIF (COMPULSIVE BUYING) DI MASA PANDEMI COVID-19 MELALUI ONLINE SHOP (E-COMMERCE)', NULL, 0),
(50, 98, 8, NULL, 'https://docs.google.com/document/d/17m0JJGpSXSuS3MFiU6OUbnNx72qpe1Xr/edit?usp=drivesdk&ouid=112378783144827531304&rtpof=true&sd=true', NULL, 0),
(51, 79, 8, NULL, 'https://drive.google.com/file/d/19kIBxobOarl1gjLZuZac3kfmUzfCaVaE/view?usp=sharing', NULL, 0),
(52, 93, 8, NULL, 'https://drive.google.com/file/d/1lJ-9Pyke9umGn6C2KJodyqZmlLksPAxK/view?usp=drivesdk', NULL, 0),
(53, 100, 11, NULL, 'https://drive.google.com/file/d/1yd3IaNq9zpIo_VGy5EpXQ5tYdRgLjCFh/view?usp=sharing', NULL, 0),
(54, 75, 8, NULL, 'https://drive.google.com/file/d/160zOQIiaZ8bW3bumo_yBR1OaHLQJzl7f/view?usp=sharing', NULL, 0),
(55, 42, 8, NULL, 'https://drive.google.com/file/d/1nUAEjXE4MCVrkA5e5yclF9RNxHvpUqH1/view?usp=share_link', NULL, 0),
(56, 114, 11, NULL, 'https://drive.google.com/file/d/15cvPEoTZHW8pCPQXfSKV-pNFNeQC5P_x/view?usp=share_link', NULL, 0),
(57, 37, 11, NULL, 'https://drive.google.com/drive/folders/1ZG4dOUbp3376eOBKD7a8_nlpkFdnkkmT?usp=share_link', NULL, 0),
(58, 97, 9, NULL, 'https://drive.google.com/file/d/18eWiTOVsI7oWsMfN2Pz88uScTBtQWveC/view?usp=share_link', NULL, 0),
(59, 144, 7, 'https://youtu.be/KkLCqtoxG2s', 'https://drive.google.com/drive/folders/1eBvrm6AIRfIn7XN9w4VxhlV1XryLKd_b?usp=sharing', 'Bad Side of Generation Z - Video Digital Pendidikan PIMUS XII', 12),
(60, 113, 7, 'https://youtu.be/Y8NtOa1fmeo', 'https://drive.google.com/drive/folders/1HzE7NisnA4BugrazhQEp-j3YIdgKTX6Y?usp=share_link', 'Kelompok Zinnia Dorothy A.', 2),
(61, 88, 10, NULL, 'https://drive.google.com/drive/folders/11OSlZMA7PrPK1z-0TeVphGO05xYT_ACg?usp=share_link', NULL, 0),
(62, 17, 9, NULL, 'https://drive.google.com/drive/folders/17c4ZffHnIukgQQNR_FoInNk98Oi5t8Az?usp=share_link', NULL, 0),
(63, 67, 9, NULL, 'https://drive.google.com/file/d/1YyUWyDGEMd1C5SG0oXo7zIKxMbtsIx23/view?usp=sharing', NULL, 0),
(64, 146, 9, NULL, 'https://drive.google.com/file/d/1D4hKbMA1xTRbz4jMTL7-Mn_p9AXy5XdR/view?usp=share_link', NULL, 0),
(65, 51, 9, NULL, 'https://drive.google.com/file/d/1wQTng_TrpMu2XuO41Lbwvih3xhZ9vF47/view?usp=share_link', NULL, 0),
(66, 170, 11, NULL, 'https://drive.google.com/file/d/1VtjuEH-sjmgy5tXrnAzDa77f2o6kCtAu/view?usp=share_link', NULL, 0),
(67, 131, 8, NULL, 'https://drive.google.com/drive/folders/1jfhSUh75qen1dWPZhzjQLgriRfZ0i6Tq?usp=share_link', NULL, 0),
(68, 52, 10, NULL, 'https://drive.google.com/drive/u/0/folders/1URgUVWgGTGqWWLdHuddrzD-yfQZStV9v', NULL, 0),
(69, 132, 7, 'https://youtu.be/mVexjSwkZSg', 'https://drive.google.com/drive/folders/1cIpaouFA76q2X-mll5wSRFMOdW9sIppN?usp=share_link', NULL, 23),
(70, 36, 8, NULL, 'https://drive.google.com/file/d/16RYsHHadV-T5OdFARwDbwyiMZVBnen_o/view?usp=share_link', NULL, 0),
(71, 172, 10, NULL, 'https://drive.google.com/drive/folders/1xCnRgdjRtTGGHgItPKC_zkakUuSnTv9e?usp=share_link', NULL, 0),
(72, 110, 7, 'https://youtu.be/DipL_vv51Es', 'https://drive.google.com/folderview?id=1derj-gsROOPccUQCvFB-it4kY7i17-mn', NULL, 10),
(73, 166, 4, 'https://drive.google.com/file/d/1f5QYrYRZTDraurz355MX3EpGFCSu54hZ/view?usp=drivesdk', 'https://drive.google.com/file/d/1zE2gf5VOxVFq_sXaBGhmdMnhvJNTXFQy/view?usp=sharing', 'Reyhan Ananda \r\nMatthew Elias\r\nMuhammad Azra', 1),
(74, 128, 4, 'https://drive.google.com/file/d/1BxJnTgDbpOAyglpqalw00AbEWbg8sGIk/view?usp=sharing', 'https://drive.google.com/file/d/1g43iZRdcl56Rbkcc1PAm_VzidxrSsG6X/view?usp=sharing', 'Timotius William\r\nLaksana Ramadhan Panca\r\nJustyn Joseph', 3),
(75, 153, 1, NULL, 'https://drive.google.com/drive/folders/14k-NDqMpX2qBzaOWDrhRoWZxiglEPEMG', NULL, 0),
(76, 68, 1, NULL, 'https://drive.google.com/drive/folders/1oALU3xI14rXMqPB_4Qupc-IhnB8X616J?usp=sharing', NULL, 0),
(77, 160, 1, NULL, 'https://drive.google.com/drive/folders/1JGBREx95Q3yKqlRYvPE-2dKRSefeUQTm?usp=share_link', NULL, 0),
(78, 175, 1, NULL, 'https://drive.google.com/drive/folders/1AAAqMtn5dldApbSfs-mwRFPJZdtwLN5b', NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `submission_dates`
--

CREATE TABLE `submission_dates` (
  `id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `link_form` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `submission_dates`
--

INSERT INTO `submission_dates` (`id`, `start_date`, `end_date`, `link_form`) VALUES
(1, '2022-09-16 06:12:19', '2022-12-03 00:00:00', '...');

-- --------------------------------------------------------

--
-- Struktur dari tabel `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `competition_categories_id` int(11) NOT NULL,
  `registration_form` varchar(200) NOT NULL,
  `statement_letter` varchar(200) NOT NULL,
  `status` enum('Pending','Terima','Tolak') NOT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `teams`
--

INSERT INTO `teams` (`id`, `competition_categories_id`, `registration_form`, `statement_letter`, `status`, `message`) VALUES
(1, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/1/Timotius Owen Sugiarto_150122257.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/1/Surat Pernyataan_Timotius Owen Sugiarto_150122257.pdf', 'Terima', ''),
(2, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/2/Yonathan Aditya Wibowo_160220020.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/2/Surat Pernyataan_Yonathan Aditya Wibowo_160220020.pdf', 'Terima', ''),
(3, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/3/Aliza Berliana Wibowo_150120292.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/3/Surat Pernyataan_Aliza Berliana Wibowo_150120292.pdf', 'Terima', ''),
(4, 5, 'storage/formPendaftaran/Kompetisi MIPAS/4/Angeline Arista_161022001.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/4/Surat Pernyataan_Angeline Arista_161022001.pdf', 'Terima', ''),
(5, 5, 'storage/formPendaftaran/Kompetisi MIPAS/5/FORMULIR PENDAFTARAN_Hansdersen_160220008.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/5/surat pernyataan_Hansdersen_160220008.pdf', 'Terima', ''),
(6, 5, 'storage/formPendaftaran/Kompetisi MIPAS/6/Agnes Laurensia Latumeten_160221014.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/6/Surat Pernyataan_Agnes Laurensia Latumeten_160221014.pdf', 'Terima', ''),
(7, 5, 'storage/formPendaftaran/Kompetisi MIPAS/7/Nicholas Alexander_160221004.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/7/Surat Pernyataan_Nicholas Alexander_160221004.pdf', 'Terima', ''),
(8, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/8/ALYSSA MIRANDA_160220049.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/8/SURAT PERNYATAAN_ALYSSA MIRANDA_160220049.pdf', 'Terima', ''),
(9, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/9/David Wangsaputra_160219031.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/9/Surat Pernyataan_David Wangsaputra_160219031.pdf', 'Terima', ''),
(10, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/10/Amelia Margaretha_180122009.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/10/Surat Pernyataan_Amelia Margaretha_180122009.pdf', 'Terima', ''),
(11, 5, 'storage/formPendaftaran/Kompetisi MIPAS/11/UMY NURLAELATUS SHOLEHA_190122024.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/11/SURAT PERNYATAAN_UMY NURLAELATUS SHOLEHA_190122024.pdf', 'Tolak', 'Untuk bidang Kompetisi MIPAS  1 tim berisi 1 anggota saja '),
(12, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/12/Stevani citrayani_110121182.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/12/Surat Pernyataan_Stevani Citrayani_110121182.pdf', 'Terima', ''),
(13, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/13/Agnes Laurensia Latumeten_160221014.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/13/Surat Pernyataan KTI_Agnes Laurensia Latumeten_1602221014.pdf', 'Terima', ''),
(14, 3, 'storage/formPendaftaran/Debat Indonesia/14/SamuelYuniko_120122116.pdf', 'storage/suratPernyataan/Debat Indonesia/14/SURATPERNYATAAN_SamuelYuniko_120122116.pdf', 'Terima', ''),
(15, 5, 'storage/formPendaftaran/Kompetisi MIPAS/15/WISNU WARDANA_160221042.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/15/Surat Pernyataan_Wisnu Wardana_160221042.pdf', 'Terima', ''),
(16, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/16/WISNU WARDANA_160221042.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/16/Surat Pernyataan_Wisnu Wardana_160221042.pdf', 'Terima', ''),
(17, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/17/WISNU WARDANA_160221042.docx.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/17/Surat Pernyataan_Wisnu Wardana_160221042.pdf', 'Terima', ''),
(18, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/18/L.M.Lintang Kirana Sena_150120284.docx.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/18/Surat Pernyataan_L.M.Lintang Kirana Sena_150120284.pdf', 'Terima', ''),
(19, 5, 'storage/formPendaftaran/Kompetisi MIPAS/19/Agung_160122023_PENDAFTARAN.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/19/Suratpernyataan_Agung_160122023.pdf', 'Terima', ''),
(20, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/20/JeremyMorgan_160219038.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/20/Surat Pernyataan_JeremyMorgan_160219038.pdf', 'Terima', ''),
(21, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/21/m brilliant_160219034.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/21/Surat Pernyataan_160219034_Marcelino Brilliant.pdf', 'Terima', ''),
(22, 3, 'storage/formPendaftaran/Debat Indonesia/22/130220001_Varellyoni Yuliaura Schand.pdf', 'storage/suratPernyataan/Debat Indonesia/22/Pernyataan_Varellyoni Yuliaura S_130220001.pdf', 'Terima', ''),
(23, 3, 'storage/formPendaftaran/Debat Indonesia/23/inbound8627160387209932269.pdf', 'storage/suratPernyataan/Debat Indonesia/23/inbound1141216469905948865.pdf', 'Tolak', ''),
(24, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/24/Christian Yulius Ongkers_160219062.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/24/Surat Pernyataan _Christian Yulius Ongkers _160219062.pdf', 'Terima', ''),
(25, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/25/FORMULIR PENDAFTARAN.docx-2.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/25/CamScanner 11-13-2022 19.11.pdf', 'Terima', ''),
(26, 11, 'storage/formPendaftaran/PKM-Pengabdian Kepada Masyarakat/26/Muhammad Ikhsan_160420077.docx.pdf', 'storage/suratPernyataan/PKM-Pengabdian Kepada Masyarakat/26/Revisi Surat Pernyataan_Muhammad Ikhsan_160420077.pdf', 'Terima', ''),
(27, 5, 'storage/formPendaftaran/Kompetisi MIPAS/27/Ivonne Vedimia Murhadi_130320010.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/27/Surat Pernyataan_Ivonne Vedimia Murhadi_130320010.pdf', 'Terima', ''),
(28, 5, 'storage/formPendaftaran/Kompetisi MIPAS/28/James Edward S_160422038.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/28/Surat Pernyataan_James Edward S_160422038.pdf', 'Terima', ''),
(29, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/29/Fiany Laurence_160219023_Nicholas Kevin_160219011_Laura Lingguina_160220003.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/29/Surat Pernyataan_Fiany Laurence_160219023_Nicholas Kevin_160219011_Laura Lingguina_160220003.pdf', 'Terima', ''),
(30, 5, 'storage/formPendaftaran/Kompetisi MIPAS/30/Airlangga Rafi Indaryanto_190122077.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/30/Surat Pernyataan_Airlangga Rafi Indaryanto_190122077.pdf', 'Tolak', ''),
(31, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/31/AMARIS LAURENCIA_160219045.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/31/SURAT PERNYATAAN_AMARIS LAURENCIA_160219045.pdf', 'Terima', ''),
(32, 5, 'storage/formPendaftaran/Kompetisi MIPAS/32/Sherren Laurensia Santoso_120121041.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/32/Surat pernyataan_Sherren Laurensia Santoso_120121041.pdf', 'Terima', ''),
(33, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/33/formulir pend.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/33/perwakilan.pdf', 'Terima', ''),
(34, 10, 'storage/formPendaftaran/PKM-Karsa Cipta/34/Theofilus Pranata_160221005.pdf', 'storage/suratPernyataan/PKM-Karsa Cipta/34/Surat Pernyataan_Theofilus Pranata_160221005.pdf', 'Terima', ''),
(35, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/35/Hansdersen Hermes Irawan_160220008.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/35/Surat Pernyataan_Hansdersen Hermes Irawan_160220008.pdf', 'Terima', ''),
(36, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/36/Jessica Angelie_160220001.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/36/Surat Pernyataan_Jessica Angelie_160220001.pdf', 'Terima', ''),
(37, 11, 'storage/formPendaftaran/PKM-Pengabdian Kepada Masyarakat/37/Foebe Imantaka Iswahyudi_150120149.pdf', 'storage/suratPernyataan/PKM-Pengabdian Kepada Masyarakat/37/Surat Pernyataan_Foebe Imantaka I_150120149.pdf', 'Terima', ''),
(38, 3, 'storage/formPendaftaran/Debat Indonesia/38/FajarAushafaWardhana_190122009.pdf', 'storage/suratPernyataan/Debat Indonesia/38/surat pernyataan_Fajar Aushafa Wardhana_190122009.pdf', 'Terima', ''),
(39, 7, 'storage/formPendaftaran/Video Digital Pendidikan/39/LORENZA MICHELLE SOEMOLANG_180121026.pdf', 'storage/suratPernyataan/Video Digital Pendidikan/39/Surat Pernyataan-LORENZA MICHELLE SOEMOLANG-180121026.pdf', 'Terima', ''),
(40, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/40/Marchis Wonder_160219022.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/40/Surat Pernyataan_Marchis Wonder_16021902.pdf', 'Terima', ''),
(41, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/41/Mahdan Syahidah_150120151.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/41/Pernyataan_Mahdan Syahidah_150120151.pdf', 'Terima', ''),
(42, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/42/Muhammad Azhar_150120183.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/42/Surat Pernyataan_Muhammad Azhar_150120183.pdf', 'Terima', ''),
(43, 11, 'storage/formPendaftaran/PKM-Pengabdian Kepada Masyarakat/43/Joyceline Angelina_150120070.docx.pdf', 'storage/suratPernyataan/PKM-Pengabdian Kepada Masyarakat/43/Surat Pernyataan_Joyceline Angelina_150120070.pdf', 'Terima', ''),
(44, 2, 'storage/formPendaftaran/Debat Inggris/44/Michael_120121071.pdf', 'storage/suratPernyataan/Debat Inggris/44/Surat Pernyataan_Michael_120121071.pdf', 'Terima', ''),
(45, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/45/Robby Chandra_160321027.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/45/Surat Pernyataan_Robby Chandra_160321027.pdf', 'Terima', ''),
(46, 3, 'storage/formPendaftaran/Debat Indonesia/46/Setiawan_130321136.pdf', 'storage/suratPernyataan/Debat Indonesia/46/Surat Pernyataan_Setiawan_130321136 (2).pdf', 'Terima', ''),
(47, 3, 'storage/formPendaftaran/Debat Indonesia/47/Agung_160122023_PENDAFTARAN.pdf', 'storage/suratPernyataan/Debat Indonesia/47/SURAT PERNYATAAN AGUNG_160122023.pdf', 'Terima', ''),
(48, 2, 'storage/formPendaftaran/Debat Inggris/48/Alex_150122220.pdf', 'storage/suratPernyataan/Debat Inggris/48/Surat Pernyataan_Alex_150122220.pdf', 'Terima', ''),
(49, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/49/Diah Fitri Mei Nurita_140121002.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/49/Surat Pernyataan_Diah Fitri Mei Nurita_140121002.pdf', 'Terima', ''),
(50, 5, 'storage/formPendaftaran/Kompetisi MIPAS/50/Liman Esmeralda Chlorine_120121024.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/50/Pernyataan_Liman Esmeralda Chlorine_120121024.pdf', 'Terima', ''),
(51, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/51/Gracia Melody Kasih Kurniawan_130220232 .pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/51/SuratPernyataan_GraciaMelodyKasihKurniawan_130220232.pdf', 'Terima', ''),
(52, 10, 'storage/formPendaftaran/PKM-Karsa Cipta/52/Richardjason_130320047.pdf', 'storage/suratPernyataan/PKM-Karsa Cipta/52/Surat Pernyataan_RichardJason_130320047.pdf', 'Terima', ''),
(53, 3, 'storage/formPendaftaran/Debat Indonesia/53/Amatsya Belantik Souhuwat_130221153.pdf', 'storage/suratPernyataan/Debat Indonesia/53/Surat Penyataan_Amatsya Belantik Souhuwat_130221153.pdf', 'Terima', ''),
(54, 5, 'storage/formPendaftaran/Kompetisi MIPAS/54/Annora Meilya Sari_190121041.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/54/Surat Pernyataan_Annora Meilya_190121041.pdf', 'Terima', ''),
(55, 5, 'storage/formPendaftaran/Kompetisi MIPAS/55/Richard C. G._110120372.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/55/Surat pernyataan_Richard C. G._110120372.pdf', 'Terima', ''),
(56, 5, 'storage/formPendaftaran/Kompetisi MIPAS/56/RICHKY ANDREAS LUSMAN_160221035.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/56/Surat Pernyataan_Richky Andreas Lusman_160221035.pdf', 'Terima', ''),
(57, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/57/Ria Risty Dhias Utami_150121211.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/57/Surat Pernyataan_Ria Risty Dhias Utami_150121211.pdf', 'Terima', ''),
(58, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/58/Kezia Wijaya_150122014.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/58/Surat Pernyataan_Kezia Wijaya_150122014.pdf', 'Terima', ''),
(59, 2, 'storage/formPendaftaran/Debat Inggris/59/Russel Davis_120121069.pdf', 'storage/suratPernyataan/Debat Inggris/59/surat pernyataan_Russel Davis_120121069.pdf', 'Terima', ''),
(60, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/60/Jeshurun Z. S._150120134.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/60/Surat Pernyataan_Jeshurun_150120134.pdf', 'Terima', ''),
(61, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/61/Edbert Nathanael G_150120139.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/61/Surat Pernyataan_Edbert Nathanael G_150120139.pdf', 'Terima', ''),
(62, 5, 'storage/formPendaftaran/Kompetisi MIPAS/62/Michael Darmawan_160321010.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/62/Surat Pernyataan_Michael Darmawan_160321010.pdf', 'Terima', ''),
(63, 2, 'storage/formPendaftaran/Debat Inggris/63/Benedictus Kevin_170122010.pdf', 'storage/suratPernyataan/Debat Inggris/63/Surat Pernyataan_Benedictus Kevin_170122010.pdf', 'Tolak', ''),
(64, 5, 'storage/formPendaftaran/Kompetisi MIPAS/64/Nicholas Patrick Tjahjono_170122005.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/64/Surat Pernyataan_Nicholas Patrick Tjahjono_170122005.pdf', 'Terima', ''),
(65, 5, 'storage/formPendaftaran/Kompetisi MIPAS/65/Jonathan Bryan_160220018.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/65/Surat Pernyataan_Jonathan Bryan_160220018.pdf', 'Terima', ''),
(66, 3, 'storage/formPendaftaran/Debat Indonesia/66/Michael_160421056.pdf', 'storage/suratPernyataan/Debat Indonesia/66/Surat Pernyataan_Michael_160421056.pdf', 'Terima', ''),
(67, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/67/Lucan Feliciano D\'Surya_130121012.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/67/Pernyataan_Lucan Feliciano D\'Surya_130121012.pdf', 'Terima', ''),
(68, 1, 'storage/formPendaftaran/Pilmapres/68/Varellyoni Yuliaura Schand_130220001.pdf', 'storage/suratPernyataan/Pilmapres/68/KesediaanMP_Varellyoni_130220001.pdf', 'Terima', ''),
(69, 1, 'storage/formPendaftaran/Pilmapres/69/Varellyoni Y.S_130220001.pdf', 'storage/suratPernyataan/Pilmapres/69/KesediaanMP_Varellyoni_130220001.pdf', 'Tolak', 'formulir pendaftaran nya huruf belum kapital'),
(70, 7, 'storage/formPendaftaran/Video Digital Pendidikan/70/Ni Nyoman Trinanda Ayu Nirmala_120122115.pdf', 'storage/suratPernyataan/Video Digital Pendidikan/70/Surat Pernyataan_Ni Nyoman Trinanda Ayu Nirmala_120122115.pdf', 'Terima', ''),
(71, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/71/RUTH ABIGAIL WIJAYA_150120033.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/71/Surat pernyataan_RUTH ABIGAIL WIJAYA_150120033.pdf', 'Terima', ''),
(72, 2, 'storage/formPendaftaran/Debat Inggris/72/QeilishaYamilla_150122156.pdf', 'storage/suratPernyataan/Debat Inggris/72/Surat Pernyataan_Qeilisha Yamilla_150122156.pdf', 'Terima', ''),
(73, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/73/Klaudius Gilang Sarwono_150120058.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/73/Surat Pernyataan_Klaudius Gilang Sarwono_150120058.pdf', 'Terima', ''),
(74, 7, 'storage/formPendaftaran/Video Digital Pendidikan/74/Yoseph_160321009.pdf', 'storage/suratPernyataan/Video Digital Pendidikan/74/Surat Pernyataan_Yoseph_160321009.pdf', 'Terima', ''),
(75, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/75/Frederica Frendjie Harto_150120037.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/75/Surat Pernyataan_Frederica Frendjie Harto_150120037.pdf', 'Terima', ''),
(76, 10, 'storage/formPendaftaran/PKM-Karsa Cipta/76/Reyhan_160219077.pdf', 'storage/suratPernyataan/PKM-Karsa Cipta/76/Surat Pernyataan_Reyhan_160219077.pdf', 'Terima', ''),
(77, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/77/Ria Risty Dhias Utami_150121211.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/77/Surat Pernyataan_Ria Risty Dhias Utami_150121211.pdf', 'Tolak', 'bagian formulir pendaftaran yang kelompok, seharusnya homogen'),
(78, 5, 'storage/formPendaftaran/Kompetisi MIPAS/78/Felincia Wahyudi_130320153.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/78/Surat pernyataan_Felincia Wahyudi_130320153.jpg', 'Terima', ''),
(79, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/79/Mariana Antoneta Fiuelland Go_150120034.docx.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/79/Surat Pernyataan_Mariana Antoneta Fiuelland Go_150120034.pdf', 'Terima', ''),
(80, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/80/Johana Tania Kurniawan_150120007.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/80/Surat Pernyataan_Johana Tania Kurniawan_150120007.pdf', 'Terima', ''),
(81, 3, 'storage/formPendaftaran/Debat Indonesia/81/Rangga Saputra_150122154.pdf', 'storage/suratPernyataan/Debat Indonesia/81/Surat Pernyataan_Rangga Saputra_150122154.pdf', 'Tolak', 'surat pernyataan dan formulir pendaftaran tidak sesuai dengan ketentuan'),
(82, 3, 'storage/formPendaftaran/Debat Indonesia/82/Rangga Saputra_150122154.pdf', 'storage/suratPernyataan/Debat Indonesia/82/Surat Pernyataan_Rangga Saputra_150122154 (2).pdf', 'Terima', ''),
(83, 3, 'storage/formPendaftaran/Debat Indonesia/83/Form Pendaftaran PIMUS 2022.pdf', 'storage/suratPernyataan/Debat Indonesia/83/Surat Pernyataan Kesediaan Mewakili UBAYA.pdf', 'Tolak', 'pas foto masih terlihat logonya'),
(84, 5, 'storage/formPendaftaran/Kompetisi MIPAS/84/Valentino Ruslam_160421117.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/84/Surat Pernyataan_Valentino Ruslam_160421117.pdf', 'Terima', ''),
(85, 5, 'storage/formPendaftaran/Kompetisi MIPAS/85/Eleonora Jessica_170120024.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/85/Surat Pernyataan_Eleonora Jessica_170120024.pdf', 'Terima', ''),
(86, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/86/sherina samantha_150120217.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/86/Surat Pernyataan_sherina samantha_150120217.pdf', 'Terima', ''),
(87, 5, 'storage/formPendaftaran/Kompetisi MIPAS/87/Athalia Beatrice_160221019.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/87/SURAT PERNYATAAN_Athalia_160221019.pdf', 'Terima', ''),
(88, 10, 'storage/formPendaftaran/PKM-Karsa Cipta/88/Muhammad Oktaryano Ramadhan_160721045.pdf', 'storage/suratPernyataan/PKM-Karsa Cipta/88/Surat Pernyataan_Muhammad Oktaryano Ramadhan_160721045.pdf', 'Terima', ''),
(89, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/89/Nanda Ayu Setyawaty._110119451.docx.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/89/Surat pernyataan_Nanda Ayu S._110119451.pdf', 'Terima', ''),
(90, 10, 'storage/formPendaftaran/PKM-Karsa Cipta/90/Kennada Devina Jodie_130320091.pdf', 'storage/suratPernyataan/PKM-Karsa Cipta/90/SURAT PERNYATAAN_Kennada Devina_130320091.pdf', 'Tolak', ''),
(91, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/91/Joshua Oktavianus_130221014.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/91/Surat Pernyataan_Joshua Oktavianus_130221014.pdf', 'Terima', ''),
(92, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/92/IvanEdmundo_170121022.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/92/Surat Pernyataan_IvanEdmundo_170121022.pdf', 'Terima', ''),
(93, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/93/Trenadi Pramudia_160222016.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/93/Surat Pernyataan_TrenadiPramudia_160222016.pdf', 'Terima', ''),
(94, 2, 'storage/formPendaftaran/Debat Inggris/94/Timothy Amadeus Filhend Plessers_170122034.pdf', 'storage/suratPernyataan/Debat Inggris/94/Surat pernyataan_Timothy Amadeus Filhend Plessers_170122034.pdf', 'Terima', ''),
(95, 3, 'storage/formPendaftaran/Debat Indonesia/95/Yuwanda Lani Kasari_190121021.pdf', 'storage/suratPernyataan/Debat Indonesia/95/Surat Pernyataan_Yuwanda Lani Kasari_190121021.pdf', 'Terima', ''),
(96, 11, 'storage/formPendaftaran/PKM-Pengabdian Kepada Masyarakat/96/Sandhy, Olivia_150121166.pdf', 'storage/suratPernyataan/PKM-Pengabdian Kepada Masyarakat/96/Surat Pernyataan_Sandhy, Olivia_150121166.pdf', 'Terima', ''),
(97, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/97/Leonardo Novianjaya_150119168 .pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/97/Surat Pernyataan_Leonardo Novianjaya_150119168.pdf', 'Terima', ''),
(98, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/98/Kintan Maharani_150119227_Formulir Pendaftaran di edit.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/98/Kintan Maharani_150119227_SP.pdf', 'Terima', ''),
(99, 5, 'storage/formPendaftaran/Kompetisi MIPAS/99/PeterHanselKomandjaja_180122046.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/99/SuratPernyataan_PeterHanselKomandjaja_180122046-3.pdf', 'Terima', ''),
(100, 11, 'storage/formPendaftaran/PKM-Pengabdian Kepada Masyarakat/100/Emi Ecinsia_130220133.pdf', 'storage/suratPernyataan/PKM-Pengabdian Kepada Masyarakat/100/Surat Pernyataan_Emi Ecinsia_130220133.pdf', 'Terima', ''),
(101, 3, 'storage/formPendaftaran/Debat Indonesia/101/Benedictus Kevin_170122010.pdf', 'storage/suratPernyataan/Debat Indonesia/101/Surat Pernyataan_Benedictus Kevin_170122010.pdf', 'Terima', ''),
(102, 7, 'storage/formPendaftaran/Video Digital Pendidikan/102/CHAIDIR IVAN HARAHAP_190122035.pdf', 'storage/suratPernyataan/Video Digital Pendidikan/102/Surat Pernyataan_Chaidir Ivan Harahap_190122035.pdf', 'Terima', ''),
(103, 5, 'storage/formPendaftaran/Kompetisi MIPAS/103/MONICA SALZHA AZ ZAHRA_190121035.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/103/SURAT PERNYATAAN_MONICA SALZHA AZ ZAHRA_190121035.pdf', 'Terima', ''),
(104, 11, 'storage/formPendaftaran/PKM-Pengabdian Kepada Masyarakat/104/Bunga Meiuliwati S_150121214.pdf', 'storage/suratPernyataan/PKM-Pengabdian Kepada Masyarakat/104/Surat Pernyataan_Bunga Meiuliwati Silitonga_150121214.pdf', 'Terima', ''),
(105, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/105/Dendy M R_150120198 .docx.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/105/Surat Pernyataan_Dendy M R_150120198.pdf', 'Terima', ''),
(106, 5, 'storage/formPendaftaran/Kompetisi MIPAS/106/Jacqueline Sharon Susilo_180222001.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/106/Surat pernyataan_Jacqueline Sharon Susilo_180222001.pdf', 'Terima', ''),
(107, 5, 'storage/formPendaftaran/Kompetisi MIPAS/107/Hubert ST_130320172.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/107/Surat Pertnyataan_HubertST_130320172.pdf', 'Terima', ''),
(108, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/108/Neva Nurisya Aqmarina_180222031.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/108/Surat Pernyataan_Neva Nurisya Aqmarina_180222031.pdf', 'Terima', ''),
(109, 5, 'storage/formPendaftaran/Kompetisi MIPAS/109/Erlita Christiana_150122215 2.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/109/Surat Pernyataan_Erlita Christiana_150122215.pdf', 'Terima', ''),
(110, 7, 'storage/formPendaftaran/Video Digital Pendidikan/110/Kerenhapukh_170122035.pdf', 'storage/suratPernyataan/Video Digital Pendidikan/110/Surat Pernyataan_Kerenhapukh_170122035.pdf', 'Terima', ''),
(111, 2, 'storage/formPendaftaran/Debat Inggris/111/Nathania Etsa Anindita_150121148.pdf', 'storage/suratPernyataan/Debat Inggris/111/Surat Pernyataan_Nathania Etsa Anindita_150121148.pdf', 'Terima', ''),
(112, 5, 'storage/formPendaftaran/Kompetisi MIPAS/112/Richard_160220009.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/112/Pernyataan_Richard_160220009.pdf', 'Terima', ''),
(113, 7, 'storage/formPendaftaran/Video Digital Pendidikan/113/Zinnia Dorothy A._150122239.pdf', 'storage/suratPernyataan/Video Digital Pendidikan/113/Surat pernyataan_Zinnia Dorothy A._150122239.pdf', 'Terima', ''),
(114, 11, 'storage/formPendaftaran/PKM-Pengabdian Kepada Masyarakat/114/DHITA MUMPUNI SAMUDRA PRAHARSI_190120030.pdf', 'storage/suratPernyataan/PKM-Pengabdian Kepada Masyarakat/114/Surat Persetujuan_DHITA MUMPUNI SAMUDRA PRAHARSI_190120030.pdf', 'Terima', ''),
(115, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/115/Sabrina Cathlina_130321018.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/115/Surat Pernyataan_Sabrina Cathlina_130321018.pdf', 'Tolak', 'Angkatan antar anggota tidak boleh sama.\r\nHarusnya yg di bold homogen karena fakultas nya sama.\r\nSurat pernyataan yang di kumpulkan masih milik PKM-K bukan KTI.\r\n\r\nMohon di ganti dan di kumpulkan ulang, terima kasih\r\n\r\n\r\n'),
(116, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/116/Anak Agung Nissa Maheswari_190122058.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/116/Surat Pernyataan_Anak Agung Nissa Maheswari_190122058.pdf', 'Terima', ''),
(117, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/117/Sabrina Cathlina_130321018.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/117/Surat Pernyataan_Sabrina Cathlina_130321018.pdf', 'Terima', ''),
(118, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/118/Felicia Angelina_150120103.docx.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/118/Surat Penyataan_Felicia Angelina_150120103.pdf', 'Terima', ''),
(119, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/119/Felicia Angelina_150120103.docx.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/119/Surat Penyataan_Felicia Angelina_150120103.pdf', 'Pending', NULL),
(120, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/120/Brahm Dharma Putera_150120109.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/120/Surat Pernyataan_Brahm Dharma Putera_150120109.pdf', 'Terima', ''),
(121, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/121/Gregorius_160321042.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/121/Surat Pernyataan_Gregorius_160321042.pdf', 'Terima', ''),
(122, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/122/christian N_ 150119217.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/122/Surat_pernyataan_Christian_Nathaniel_150119217.pdf', 'Tolak', 'Form pendaftaran goto ketumpuk, surat pernyataan salah'),
(123, 10, 'storage/formPendaftaran/PKM-Karsa Cipta/123/Grasela Marisa Putri Siagian_150122185.pdf', 'storage/suratPernyataan/PKM-Karsa Cipta/123/Surat Pernyataan_Grasela Marisa Putri Siagian_150122185.pdf', 'Terima', ''),
(124, 11, 'storage/formPendaftaran/PKM-Pengabdian Kepada Masyarakat/124/Secylia Christy_150121144.pdf', 'storage/suratPernyataan/PKM-Pengabdian Kepada Masyarakat/124/Surat Pernyataan_Secylia Christy_150121144.pdf', 'Terima', ''),
(125, 7, 'storage/formPendaftaran/Video Digital Pendidikan/125/Louis Pracia Magnifika_130220007.pdf', 'storage/suratPernyataan/Video Digital Pendidikan/125/Surat Pernyataan_Louis Pracia Magnifika_130220007.pdf', 'Tolak', 'Surat Pernyataan orisinalisnya mohon di-upload juga ya kak'),
(126, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/126/CAROLAN LEONANDO HARIANTO_180122062 FORMULIR.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/126/SURAT PERNYATAAN_CAROLAN LEONANDO HARIANTO_180122062.pdf', 'Terima', ''),
(127, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/127/DANANG WIJOYO_120121292.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/127/SURAT PERNYATAAN_DANANG_120121292.pdf', 'Terima', ''),
(128, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/128/Timotius_161020007.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/128/Surat Pernyataan_Timotius_161020007.pdf', 'Terima', ''),
(129, 10, 'storage/formPendaftaran/PKM-Karsa Cipta/129/Timotius_161020007.pdf', 'storage/suratPernyataan/PKM-Karsa Cipta/129/Surat Pernyataan_Timotius_161020007.pdf', 'Terima', ''),
(130, 10, 'storage/formPendaftaran/PKM-Karsa Cipta/130/Catherine_130320056.pdf', 'storage/suratPernyataan/PKM-Karsa Cipta/130/Surat Pernyataan_Catherine_130320056.pdf', 'Terima', ''),
(131, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/131/Sandhy Luqman_150120900.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/131/Surat Pernyataan_Sandhy Luqman_150120900.pdf', 'Terima', ''),
(132, 7, 'storage/formPendaftaran/Video Digital Pendidikan/132/Richard N W_160821003.pdf', 'storage/suratPernyataan/Video Digital Pendidikan/132/Surat Pernyataan_Richard Nathanael Widagdo_160821003.pdf', 'Terima', ''),
(133, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/133/Vincensia Avionica_110119465.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/133/Surat Pernyataan_Vincensia Avionica_110119465.pdf', 'Terima', ''),
(134, 2, 'storage/formPendaftaran/Debat Inggris/134/Charlottes Angelica_120121154.pdf', 'storage/suratPernyataan/Debat Inggris/134/Surat Pernyataan_Charlotte Angelica_120121154.pdf', 'Terima', ''),
(135, 5, 'storage/formPendaftaran/Kompetisi MIPAS/135/CHRISTOPHER ALEXANDER_120122119.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/135/Surat Pernyataan_Christopher Alexander_120122119.pdf', 'Terima', ''),
(136, 5, 'storage/formPendaftaran/Kompetisi MIPAS/136/SURAT PERNYATAAN.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/136/Pakta Integritas.pdf', 'Terima', ''),
(137, 4, 'storage/formPendaftaran/Karya Tulis Ilmiah/137/CHRISTOPHER ALEXANDER_120122119.pdf', 'storage/suratPernyataan/Karya Tulis Ilmiah/137/Surat Pernyataan_Christopher Alexander_120122119.pdf', 'Terima', ''),
(138, 1, 'empty', 'empty', 'Pending', NULL),
(139, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/139/Aida Pamela_150120019.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/139/Surat Pernyataan_Aida Pamela_150120019.pdf', 'Terima', ''),
(140, 1, 'empty', 'empty', 'Pending', NULL),
(141, 1, 'empty', 'empty', 'Pending', NULL),
(142, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/142/Christian Nathaniel_150119217.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/142/surat pernyataan_Christian Nathaniel_150119217.pdf', 'Terima', ''),
(143, 8, 'storage/formPendaftaran/PKM-Riset Sosial Humaniora/143/Sefti Sastro K_150120170.pdf', 'storage/suratPernyataan/PKM-Riset Sosial Humaniora/143/Surat Pernyataan_Sefti Sastro_150120170.pdf', 'Terima', ''),
(144, 7, 'storage/formPendaftaran/Video Digital Pendidikan/144/Louis Pracia Magnifika_130220007.pdf', 'storage/suratPernyataan/Video Digital Pendidikan/144/Surat Pernyataan_Louis Pracia Magnifika_130220007.pdf', 'Terima', ''),
(145, 5, 'storage/formPendaftaran/Kompetisi MIPAS/145/Jennifer Soo Hui En_190122080.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/145/SURAT PERNYATAAN  KESEDIAAN_JENNIFER SOO HUU EN_190122080.pdf', 'Terima', ''),
(146, 9, 'storage/formPendaftaran/PKM-Kewirausahaan/146/Charlie Raymond_130320110.pdf', 'storage/suratPernyataan/PKM-Kewirausahaan/146/Surat Pernyataan_Charlie Raymond_130320110.pdf', 'Terima', ''),
(147, 2, 'storage/formPendaftaran/Debat Inggris/147/Jeremy Amadeus Angjaya_190121005.pdf', 'storage/suratPernyataan/Debat Inggris/147/Surat Pernyataan_Jeremy Amadeus Angjaya _190121005.pdf', 'Terima', ''),
(148, 5, 'storage/formPendaftaran/Kompetisi MIPAS/148/Wennie Margaret_150120120.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/148/Surat Pernyataan_Wennie Margaret_150120120.pdf', 'Terima', ''),
(149, 5, 'storage/formPendaftaran/Kompetisi MIPAS/149/MOH. SULTAN TAKDIR ALISYAHBANA_190121057.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/149/MOH. SULTAN TAKDIR ALISYAHBANA_190121057_PERNYATAAN.pdf', 'Terima', ''),
(150, 5, 'storage/formPendaftaran/Kompetisi MIPAS/150/Grace Kandinata_110120011.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/150/Surat Pernyataan_Grace Kandinata_110120011.pdf', 'Terima', ''),
(151, 5, 'storage/formPendaftaran/Kompetisi MIPAS/151/Joan Fayola_110120009.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/151/Surat Pernyataan_Joan Fayola_110120009.pdf', 'Terima', ''),
(152, 5, 'storage/formPendaftaran/Kompetisi MIPAS/152/Julius Wijaya_110120005.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/152/Surat Pernyataan_Julius Wijaya_110120005.pdf', 'Terima', ''),
(153, 1, 'storage/formPendaftaran/Pilmapres/153/Nicholas Andy_170121016.pdf', 'storage/suratPernyataan/Pilmapres/153/KesediaanMP_Nicholas_170121016.pdf', 'Terima', ''),
(154, 5, 'storage/formPendaftaran/Kompetisi MIPAS/154/Stefan Saputra Sugiarno_170122002.pdf', 'storage/suratPernyataan/Kompetisi MIPAS/154/Surat Pernyataan_Stefan Saputra Sugiarno_170122002.pdf', 'Terima', ''),
(155, 9, 'empty', 'empty', 'Tolak', ''),
(156, 9, 'empty', 'empty', 'Tolak', ''),
(157, 9, 'empty', 'empty', 'Tolak', ''),
(158, 9, 'empty', 'empty', 'Tolak', ''),
(159, 9, 'empty', 'empty', 'Tolak', ''),
(160, 1, 'empty', 'empty', 'Terima', ''),
(161, 5, 'empty', 'empty', 'Terima', ''),
(162, 5, 'empty', 'empty', 'Terima', ''),
(163, 5, 'empty', 'empty', 'Terima', ''),
(164, 9, 'empty', 'empty', 'Terima', ''),
(165, 1, 'empty', 'empty', 'Pending', NULL),
(166, 4, 'empty', 'empty', 'Terima', ''),
(167, 4, 'empty', 'empty', 'Terima', ''),
(168, 11, 'empty', 'empty', 'Pending', NULL),
(169, 10, 'empty', 'empty', 'Terima', ''),
(170, 11, 'empty', 'empty', 'Terima', ''),
(171, 10, 'empty', 'empty', 'Tolak', ''),
(172, 10, 'empty', 'empty', 'Terima', ''),
(173, 10, 'empty', 'empty', 'Terima', ''),
(174, 10, 'empty', 'empty', 'Terima', ''),
(175, 1, 'empty', 'empty', 'Terima', ''),
(176, 1, 'empty', 'empty', 'Tolak', ''),
(177, 9, 'empty', 'empty', 'Terima', ''),
(178, 7, 'empty', 'empty', 'Pending', NULL),
(179, 1, 'empty', 'empty', 'Pending', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `nrp` varchar(9) NOT NULL,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  `vote_tickets` int(11) NOT NULL,
  `role` enum('Admin','Sekre','Panitia','Umum') NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`nrp`, `email`, `name`, `password`, `vote_tickets`, `role`, `email_verified_at`, `remember_token`) VALUES
('110121020', 's110121020@student.ubaya.ac.id', 'Louise Julyan Sutan', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 3, 'Panitia', '2022-11-03 05:41:30', NULL),
('110121034', 's110121034@student.ubaya.ac.id', 'nicole christianto', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 3, 'Panitia', '2022-11-04 13:40:17', NULL),
('110122273', 's110122273@student.ubaya.ac.id', 'Nabila Aura Tinka', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 0, 'Sekre', '2022-11-04 13:34:16', NULL),
('110122282', 's110122282@student.ubaya.ac.id', 'Sella Andini Margareta', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 0, 'Sekre', '2022-11-04 13:26:01', NULL),
('120120043', 's120120043@student.ubaya.ac.id', 'Sekret', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 1, 'Sekre', '2022-11-04 13:24:06', NULL),
('120120072', 's120120072@student.ubaya.ac.id', 'Gavriel Heavenly Blessing Torar', '$2y$10$Wh.7407vWShsczUJDDVCLuMaw61e3te/lYQB9hH1J4RWYdkvNkK1G', 3, 'Sekre', '2022-11-10 08:03:27', NULL),
('120121048', 's120121048@student.ubaya.ac.id', 'Sekret', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 3, 'Sekre', '2022-10-12 04:09:48', NULL),
('120121161', 's120121161@student.ubaya.ac.id', 'Aldi Christian Phuk', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 3, 'Panitia', '2022-11-09 01:48:31', NULL),
('120122144', 's120122144@student.ubaya.ac.id', 'Sekret', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 3, 'Sekre', '2022-11-04 12:24:02', NULL),
('130220154', 's130220154@student.ubaya.ac.id', 'Acara', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 2, 'Panitia', '2022-11-04 13:34:16', NULL),
('130222117', 's130222117@student.ubaya.ac.id', 'Acara', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 3, 'Panitia', '2022-11-04 13:34:16', NULL),
('130320160', 's130320160@student.ubaya.ac.id', 'Trixie Sheryl Azalia', '$2y$10$eGzwA8/istgVhoa0U2RvFOZXqMJIfeZwl1nJq5OYagOBQIQhTPgEq', 3, 'Sekre', '2022-11-04 13:34:59', 'ZtcwNcrq5crLBOuhIenwkBaxj6abT9cb6lWCf3TFOtDwN87h68llOz20spkF'),
('150120023', 's150120023@student.ubaya.ac.id', 'Sekret', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 3, 'Sekre', '2022-10-12 04:09:48', NULL),
('150121025', 's150121025@student.ubaya.ac.id', 'Anastasia Jesseline', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 3, 'Sekre', '2022-11-04 12:20:22', NULL),
('150121027', 's150121027@student.ubaya.ac.id', 'Stefani Lusia Litmantoro', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 3, 'Sekre', '2022-11-04 12:19:18', NULL),
('150121034', 's150121034@student.ubaya.ac.id', 'Lea Victoria Setyawan', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 3, 'Sekre', '2022-11-04 13:39:56', NULL),
('150121036', 's150121036@student.ubaya.ac.id', 'Shaundra Evangelyn Jap', '$2y$10$nI90naTyttTJ15MH34qn3.DWkLu.efqiBnLM.9V8vHDoNLtlQQKem', 0, 'Panitia', '2022-11-04 12:43:26', 'Jwn68piC32g1aKXty5Ry4UONMHdGBKOaFkWeo1h9e2uWghhj1sJJrL6hpwha'),
('150121166', 's150121166@student.ubaya.ac.id', 'Sandhy, Olivia', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 3, 'Panitia', '2022-11-04 12:54:04', NULL),
('150121184', 's150121184@student.ubaya.ac.id', 'Willingda Tinshia Patty', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 3, 'Panitia', '2022-11-04 12:44:32', NULL),
('150121190', 's150121190@student.ubaya.ac.id', 'Glory Ketshia Alase', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 3, 'Panitia', '2022-11-01 02:16:08', NULL),
('150122019', 's150122019@student.ubaya.ac.id', 'Acara', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 3, 'Panitia', '2022-11-04 13:34:16', NULL),
('150122022', 's150122022@student.ubaya.ac.id', 'Gisela Geraldine Pamula', '$2y$10$L.vTmty4ryQyq8db3ObE5OOisFZEZto.aGNxOX8CtD7m9v5XQPSf.', 2, 'Panitia', '2022-11-10 05:32:20', 'OjmtEN6QPeu3VAkBwUys7stYI6muWF5eZOcpNza32HZHcJ2WdDRl1RYXD708'),
('150122138', 's150122138@student.ubaya.ac.id', 'Rachma Diana Arief', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 3, 'Panitia', '2022-11-08 17:24:01', NULL),
('150122209', 's150122209@student.ubaya.ac.id', 'Sean Sebastian', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 3, 'Panitia', '2022-11-04 13:37:06', NULL),
('150122256', 's150122256@student.ubaya.ac.id', 'Chiara Hanifah', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 3, 'Panitia', '2022-11-04 13:37:04', NULL),
('160221001', 's160221001@student.ubaya.ac.id', 'Sekret', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 3, 'Sekre', '2022-10-12 04:09:48', NULL),
('160222026', 's160222026@student.ubaya.ac.id', 'Sekret', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 0, 'Sekre', '2022-10-12 04:09:48', NULL),
('160320038', 's160320038@student.ubaya.ac.id', 'Sekret', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 3, 'Sekre', '2022-10-12 04:09:48', NULL),
('160321014', 's160321014@student.ubaya.ac.id', 'Monica Natalia', '$2y$10$VA4sEoCSNofpdBvZpqa5ROiAUgzQp6WAhhNVoZPzM6rnuAwN8klUm', 3, 'Panitia', '2022-11-01 02:24:59', 'fvnTMTpm0kuPk7vSuhAiL54TTvrly2oOECJTjO9CblH3ObtcFM8jJbTeW7Pi'),
('160322068', 's160322068@student.ubaya.ac.id', 'Bella Nurafni Maulidina', '$2y$10$KgbLm57F5L8aPWM7kInZ1u.qtpFlDnpKQyF5mrcfZoYTdQWcSQ8Wq', 1, 'Sekre', '2022-11-04 13:44:39', 'vxzK6UKamP3W7O6uwkkXwQynBn7zkR0d91WFwVamkLPUiQjQU6rDjiAE9tdx'),
('160420077', 's160420077@student.ubaya.ac.id', 'Muhammad Ikhsan', '$2y$10$hh7HDGsER9tm.njxHLeDruXI5w.gh3UwImV/nTxRXsVXBlO3QYqhO', 3, 'Sekre', '2022-11-08 09:43:37', 'WPjFZqBQBu8m4jOXjuBxRHzEZgA5fbTx8HWiOqAynllNEly1WF3iEugne4QI'),
('160421066', 's160421066@student.ubaya.ac.id', 'Gregorius Mario', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 3, 'Sekre', '2022-11-04 12:21:46', NULL),
('160421101', 's160320004@student.ubaya.ac.id', 'Christopher Andrew', '$2a$10$GPA4.WRCJjJgWRD3fCpPQOvXaayki2QLtMywjexCFE8vBPA19k1WO', 3, 'Umum', '2022-11-04 13:08:13', NULL),
('160421117', 's160320067@student.ubaya.ac.id', 'Freddy christianto', '$2a$10$GPA4.WRCJjJgWRD3fCpPQOvXaayki2QLtMywjexCFE8vBPA19k1WO', 3, 'Umum', '2022-11-01 02:20:44', NULL),
('160421119', 's160421119@student.ubaya.ac.id', 'bes', '$2a$10$GPA4.WRCJjJgWRD3fCpPQOvXaayki2QLtMywjexCFE8vBPA19k1WO', 3, 'Umum', '2023-10-07 01:25:47', NULL),
('160421120', 's160421023@student.ubaya.ac.id', 'Lex', '$2a$10$GPA4.WRCJjJgWRD3fCpPQOvXaayki2QLtMywjexCFE8vBPA19k1WO', 3, 'Umum', NULL, NULL),
('160721023', 's160721023@student.ubaya.ac.id', 'Sekret', '$2a$04$dXiiLHBXdcVXxKRLiHLc8.E/wm8ZbBJ.JvAHYaBYN2kVNkjDGprs.', 3, 'Sekre', '2022-10-12 04:09:48', NULL),
('160721047', 's160721047@student.ubaya.ac.id', 'Stiven Suhendra', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 3, 'Panitia', '2022-11-10 09:03:21', NULL),
('180122011', 's180122011@student.ubaya.ac.id', 'Kezia aurelia', '$2a$12$rKQtuLk3ChOwcW1VgFBd3.VueE9gi7uh5PeTPW1eHj.e6FhDHYJ66', 0, 'Sekre', '2022-11-04 13:15:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_details`
--

CREATE TABLE `user_details` (
  `nrp` varchar(9) NOT NULL,
  `teams_id` int(11) NOT NULL,
  `role` enum('Anggota','Ketua') NOT NULL,
  `id_card` varchar(120) NOT NULL,
  `self_photo` varchar(120) NOT NULL,
  `line` varchar(45) DEFAULT NULL,
  `phone_number` varchar(120) DEFAULT NULL,
  `gpa_recap` varchar(120) DEFAULT NULL,
  `borang` varchar(120) DEFAULT NULL,
  `achievement_list` varchar(120) DEFAULT NULL,
  `competition_type` enum('Matematika','Fisika','Kimia','Biologi','Statistika') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_details`
--

INSERT INTO `user_details` (`nrp`, `teams_id`, `role`, `id_card`, `self_photo`, `line`, `phone_number`, `gpa_recap`, `borang`, `achievement_list`, `competition_type`) VALUES
('110119132', 133, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/133/KTM_Eunike Yosemary_110119132.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/133/Foto_Eunike Yosemary_110119132.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('110119132', 141, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('110119448', 89, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/89/KTM_Dina Qorrotu A._110119448.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/89/Foto_Dina Qurrotu A._110119448.png', NULL, NULL, NULL, NULL, NULL, NULL),
('110119451', 89, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/89/KTM_Nanda Ayu S._110119451.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/89/Foto_Nanda Ayu S._110119451.png', 'nandaayu1007', '081330252829', NULL, NULL, NULL, NULL),
('110119465', 133, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/133/KTM_Vincensia Avionica_110119465.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/133/Foto_Vincensia Avionica_110119465.jpg', 'Angel_8812', '081559504993', NULL, NULL, NULL, NULL),
('110119496', 89, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/89/KTM_Siti Asiya_110119496.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/89/Foto_Siti Asiya_110119496.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('110120005', 152, 'Ketua', 'storage/ktm/Kompetisi MIPAS/152/KTM_Julius Wijaya_110120005.pdf', 'storage/pasFoto/Kompetisi MIPAS/152/Foto_Julius Wijaya_110120005.png', 'julius072002', '081237249071', NULL, NULL, NULL, 'Biologi'),
('110120005', 178, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('110120009', 151, 'Ketua', 'storage/ktm/Kompetisi MIPAS/151/KTM_Joan Fayola_110120009.pdf', 'storage/pasFoto/Kompetisi MIPAS/151/Foto_Joan Fayola_110120009.jpg', 'joanfayolajj', '089678533250', NULL, NULL, NULL, 'Biologi'),
('110120011', 150, 'Ketua', 'storage/ktm/Kompetisi MIPAS/150/KTM_Grace Kandinata_110120011.pdf', 'storage/pasFoto/Kompetisi MIPAS/150/Foto_Grace Kandinata_110120011.jpg', 'gracedono', '0895395619930', NULL, NULL, NULL, 'Biologi'),
('110120045', 12, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/12/KTM_Nabila Dhafa Widyagusta _110120045.PDF', 'storage/pasFoto/Karya Tulis Ilmiah/12/Foto_Nabila Dhafa Widyagusta_110120045.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('110120070', 23, 'Ketua', 'storage/ktm/Debat Indonesia/23/inbound5885775337857467595.pdf', 'storage/pasFoto/Debat Indonesia/23/inbound2480355026417851480.jpg', 'vickyutomo', '081232352410', NULL, NULL, NULL, NULL),
('110120091', 133, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/133/KTM_Inana_110120091.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/133/Foto_Inana_110120091.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('110120181', 89, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/89/KTM_Poppy Puspita S._110120181.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/89/Foto_Poppy Puspita S._110120181.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
('110120255', 12, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/12/KTM__Ivonio Kecia Srilaria Nati_110120255.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/12/Foto_Ivonio Kecia Srilaria Nati_110120255.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('110120372', 55, 'Ketua', 'storage/ktm/Kompetisi MIPAS/55/KTM_Richard C. G._110120372.pdf', 'storage/pasFoto/Kompetisi MIPAS/55/Foto_Richard C. G._110120372.jpg', 'panzer', '081649484007', NULL, NULL, NULL, 'Kimia'),
('110121004', 163, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('110121009', 161, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('110121009', 162, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('110121182', 12, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/12/KTM_Stevani Citrayani_110121182.PDF', 'storage/pasFoto/Karya Tulis Ilmiah/12/Foto_Stevani Citrayani_110121182.jpg', 'rsc_14', '081231214604', NULL, NULL, NULL, NULL),
('110121333', 12, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/12/KTM_Arya Gading Arsyad_110121333.PDF', 'storage/pasFoto/Karya Tulis Ilmiah/12/Foto_Arya Gading Arsyad_110121333.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('110121333', 17, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/17/KTM_Arya Gading Arsyad_110121333.pdf', 'storage/pasFoto/PKM-Kewirausahaan/17/Foto_Arya Gading Arsyad_110121333.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('110122054', 17, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/17/KTM_Heny Veronica Sianturi_110122054.pdf', 'storage/pasFoto/PKM-Kewirausahaan/17/Foto_Heny Veronica Sianturi_110122054.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('120120005', 46, 'Anggota', 'storage/ktm/Debat Indonesia/46/KTM_Nathaniel_120120005.pdf', 'storage/pasFoto/Debat Indonesia/46/Foto_Nathaniel_120120005.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('120120042', 23, 'Anggota', 'storage/ktm/Debat Indonesia/23/inbound8128953202495127095.pdf', 'storage/pasFoto/Debat Indonesia/23/inbound1927909541242176692.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('120120247', 137, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/137/KTM_Jeanette Wen_120120247.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/137/Foto_Jeanette Wen_120120247.png', NULL, NULL, NULL, NULL, NULL, NULL),
('120120279', 127, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/127/KTM_ANASTASYA_120120279.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/127/FOTO_ANASTASYA_120120279.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('120121024', 50, 'Ketua', 'storage/ktm/Kompetisi MIPAS/50/KTM_Liman Esmeralda Chlorine_120121024.pdf', 'storage/pasFoto/Kompetisi MIPAS/50/Foto_Liman Esmeralda Chlorine_120121024.jpg', 'chlorineee', '082335039191', NULL, NULL, NULL, 'Biologi'),
('120121041', 32, 'Ketua', 'storage/ktm/Kompetisi MIPAS/32/KTM_Sherren Laurensia Santoso_120121041.pdf', 'storage/pasFoto/Kompetisi MIPAS/32/Foto_Sherren Laurensia Santoso_120121041.jpg', 'Sherren0952', '082253617800', NULL, NULL, NULL, 'Biologi'),
('120121069', 59, 'Ketua', 'storage/ktm/Debat Inggris/59/KTM_Russel Davis_120121069.pdf', 'storage/pasFoto/Debat Inggris/59/foto_Russel Davis_120121069.jpg', 'thisisdavis', '087701764811', NULL, NULL, NULL, NULL),
('120121071', 44, 'Ketua', 'storage/ktm/Debat Inggris/44/KTM_Michael_120121071.pdf', 'storage/pasFoto/Debat Inggris/44/Foto_Michael_120121071.png', 'michaelsugiarto12345', '+62 822-4519-0208', NULL, NULL, NULL, NULL),
('120121082', 127, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/127/KTM_YOEL ISTIONO_120121082.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/127/FOTO_YOEL ISTIONO_120121082.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('120121154', 134, 'Ketua', 'storage/ktm/Debat Inggris/134/KTM_Charlotte Angelica_12012154.pdf', 'storage/pasFoto/Debat Inggris/134/E5835B67-C799-4F29-892A-355FE810C1B2.jpeg', 'charlotteangelica11', '081233088119', NULL, NULL, NULL, NULL),
('120121211', 175, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('120121211', 176, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('120121219', 134, 'Anggota', 'storage/ktm/Debat Inggris/134/KTM_Adella Margaretha_120121219.pdf', 'storage/pasFoto/Debat Inggris/134/A7858AEE-6EF2-4475-B3F8-39854D785B1F.jpeg', NULL, NULL, NULL, NULL, NULL, NULL),
('120121292', 127, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/127/KTM_ DANANG WIJOYO_120121292.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/127/FOTO_DANANG WIJOYO_12012192.png', 'danangwijaya12', '08812945280', NULL, NULL, NULL, NULL),
('120122011', 70, 'Anggota', 'storage/ktm/Video Digital Pendidikan/70/KTM_Vernita Wensky_120122011.pdf', 'storage/pasFoto/Video Digital Pendidikan/70/Foto_Vernita Wensky_120122011.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('120122046', 137, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/137/KTM_Clive Owen_120122046.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/137/Foto_Clive Owen_120122046.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('120122055', 72, 'Anggota', 'storage/ktm/Debat Inggris/72/KTM_VenskaAurelia_120122055.pdf', 'storage/pasFoto/Debat Inggris/72/Foto_VenskaAurelia_120122055.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('120122088', 70, 'Anggota', 'storage/ktm/Video Digital Pendidikan/70/KTM_Evan Setyadharma Bodhi_120122088.pdf', 'storage/pasFoto/Video Digital Pendidikan/70/Foto_Evan Setyadharma Bodhi_120122088.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('120122115', 70, 'Ketua', 'storage/ktm/Video Digital Pendidikan/70/KTM_Ni Nyoman Trinanda Ayu Nirmala_120122115.pdf', 'storage/pasFoto/Video Digital Pendidikan/70/Foto_Ni Nyoman Trinanda Ayu Nirmala_120122115.jpg', 'trn_dy', '089519610811', NULL, NULL, NULL, NULL),
('120122116', 14, 'Ketua', 'storage/ktm/Debat Indonesia/14/KTM_SamuelYuniko_120122116.pdf', 'storage/pasFoto/Debat Indonesia/14/Foto_SamuelYuniko_120122116.jpg', 'samuelyuniko', '089677470688', NULL, NULL, NULL, NULL),
('120122119', 135, 'Ketua', 'storage/ktm/Kompetisi MIPAS/135/KTM_Christopher Alexander_120122119.pdf', 'storage/pasFoto/Kompetisi MIPAS/135/Foto_Christopher Alexander_120122119.png', 'christldr', '0881026217474', NULL, NULL, NULL, 'Statistika'),
('120122119', 137, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/137/KTM_Christopher Alexander_120122119.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/137/Foto_Christopher Alexander_120122119.png', 'christldr', '0881026217474', NULL, NULL, NULL, 'Statistika'),
('120122169', 44, 'Anggota', 'storage/ktm/Debat Inggris/44/KTM_Nadya_120122169.pdf', 'storage/pasFoto/Debat Inggris/44/Foto_Nadya_120122169.png', NULL, NULL, NULL, NULL, NULL, NULL),
('120122206', 127, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/127/KTM_NABILLA_120122206.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/127/FOTO_NABILLA_120122206.png', NULL, NULL, NULL, NULL, NULL, NULL),
('120122222', 70, 'Anggota', 'storage/ktm/Video Digital Pendidikan/70/KTM_Lareyna Neva Pahlevy_120122222.pdf', 'storage/pasFoto/Video Digital Pendidikan/70/Foto_Lareyna Neva Pahlevy_120122222.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('120122268', 137, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/137/KTM_Christopher Alexandro Lumban Gaol_120122268.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/137/Foto_Christopher Alexandro Lumban Gaol_120122268.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('120122272', 127, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/127/KTM_FELANI_120122272.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/127/FOTO_FELANI_120122272.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('120122279', 14, 'Anggota', 'storage/ktm/Debat Indonesia/14/KTM_AmandaFatasyaAulia_120122279.pdf', 'storage/pasFoto/Debat Indonesia/14/Foto_AmandaFatasyaAulia_120122279.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130121012', 67, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/67/KTM_Lucan Feliciano D\'Surya_130121012.pdf', 'storage/pasFoto/PKM-Kewirausahaan/67/Foto_Lucan Feliciano D\'Surya_130121012.jpeg', 'lucanfeliciano', '087888950998', NULL, NULL, NULL, NULL),
('130121047', 80, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/80/KTM_Catharina Chandra K._130121047.pdf', 'storage/pasFoto/PKM-Kewirausahaan/80/Foto_Catharina Chandra K._130121047.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130122007', 53, 'Anggota', 'storage/ktm/Debat Indonesia/53/KTM_Celine Margaretha Susanto_130122007.pdf', 'storage/pasFoto/Debat Indonesia/53/Foto_Celine Margaretha Susanto_130122007.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130219205', 43, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/43/KTM_Indah Ayu Justicia_130219205.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/43/Foto_Indah Ayu Justicia_130219205.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130219213', 100, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/100/KTM_Evan Ezekiel Tejakusuma_130219213.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/100/Foto_Evan Ezekiel Tejakusuma_130219213.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130219249', 130, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/130/KTM_Peter Ivander Susanto_130219249.pdf', 'storage/pasFoto/PKM-Karsa Cipta/130/FOTO_Peter Ivander Susanto_130219249.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130220001', 22, 'Ketua', 'storage/ktm/Debat Indonesia/22/KTM_Varellyoni Yuliaura Schand_130220001.pdf', 'storage/pasFoto/Debat Indonesia/22/Foto_Varellyoni Y.S_130220001.jpg', 'Vrl_aura25', '0813-5907-8787', NULL, NULL, NULL, NULL),
('130220001', 68, 'Ketua', 'storage/ktm/Pilmapres/68/KTMKTP-MP_Varellyoni_130220001.pdf', 'storage/pasFoto/Pilmapres/68/PasFotoMP_Varellyoni_130220001.jpg', 'Vrl_aura25', '0813-5907-8787', 'storage/rekapIPK/Pilmapres/68/Transkrip_Varellyoni_130220001.pdf', 'storage/borang/Pilmapres/68/BPMP_Varellyoni Yuliaura Schand_130220001.pdf', 'storage/daftarPrestasi/Pilmapres/68/PrestasiMP_Varellyoni Y.S_130220001.pdf', NULL),
('130220001', 69, 'Ketua', 'storage/ktm/Pilmapres/69/KTMKTP-MP_Varellyoni_130220001.pdf', 'storage/pasFoto/Pilmapres/69/PasFotoMP_Varellyoni_130220001.jpg', 'Vrl_aura25', '0813-5907-8787', 'storage/rekapIPK/Pilmapres/68/Transkrip_Varellyoni_130220001.pdf', 'storage/borang/Pilmapres/68/BPMP_Varellyoni Yuliaura Schand_130220001.pdf', 'storage/daftarPrestasi/Pilmapres/68/PrestasiMP_Varellyoni Y.S_130220001.pdf', NULL),
('130220007', 125, 'Ketua', 'storage/ktm/Video Digital Pendidikan/125/KTM_Louis Pracia Magnifika_130220007.pdf', 'storage/pasFoto/Video Digital Pendidikan/125/Foto_Louis Pracia Magnifika_130220007.png', 'louispraciam13', '085645131256', NULL, NULL, NULL, NULL),
('130220007', 144, 'Ketua', 'storage/ktm/Video Digital Pendidikan/144/KTM_Louis Pracia Magnifika_130220007.pdf', 'storage/pasFoto/Video Digital Pendidikan/144/Foto_Louis Pracia Magnifika_130220007.png', 'louispraciam13', '085645131256', NULL, NULL, NULL, NULL),
('130220017', 125, 'Anggota', 'storage/ktm/Video Digital Pendidikan/125/KTM_Krishna Dhammavicaya Santoso_130220017.pdf', 'storage/pasFoto/Video Digital Pendidikan/125/Foto_Krishna Dhammavicaya Santoso_130220017.png', NULL, NULL, NULL, NULL, NULL, NULL),
('130220017', 144, 'Anggota', 'storage/ktm/Video Digital Pendidikan/144/KTM_Krishna Dhammavicaya Santoso_130220017.pdf', 'storage/pasFoto/Video Digital Pendidikan/144/Foto_Krishna Dhammavicaya Santoso_130220017.png', NULL, NULL, NULL, NULL, NULL, NULL),
('130220027', 51, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/51/KTM_AugustinusFarello_130220027.pdf', 'storage/pasFoto/PKM-Kewirausahaan/51/Foto_AugustinusFarello_130220027.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130220103', 146, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/146/KTM_Priscillia Maharani Tjandra_130220103.pdf', 'storage/pasFoto/PKM-Kewirausahaan/146/Foto_Priscillia Maharani Tjandra_130220103.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130220133', 100, 'Ketua', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/100/KTM_Emi Ecinsia_130220133.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/100/Foto_Emi Ecinsia_130220133.jpg', 'emiecinsia', '08970838916', NULL, NULL, NULL, NULL),
('130220134', 100, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/100/KTM_Davin Eldon_130220134.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/100/Foto_Davin Eldon_130220134.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130220149', 146, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/146/KTM_Alexandra Febe Novelly Gracia_130220149.pdf', 'storage/pasFoto/PKM-Kewirausahaan/146/Foto_Alexandra Febe Novelly Gracia_130220149.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130220230', 125, 'Anggota', 'storage/ktm/Video Digital Pendidikan/125/KTM_Sultan Zukhru Fidya Achwan_130220230.pdf', 'storage/pasFoto/Video Digital Pendidikan/125/Foto_Sultan Zukhru Fidya Achwan_130220230.png', NULL, NULL, NULL, NULL, NULL, NULL),
('130220230', 144, 'Anggota', 'storage/ktm/Video Digital Pendidikan/144/KTM_Sultan Zukhru Fidya Achwan_130220230.pdf', 'storage/pasFoto/Video Digital Pendidikan/144/Foto_Sultan Zukhru Fidya Achwan_130220230.png', NULL, NULL, NULL, NULL, NULL, NULL),
('130220232', 51, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/51/KTM_GraciaMelodyKasihKurniawan_130220232.pdf', 'storage/pasFoto/PKM-Kewirausahaan/51/Foto_GraciaMelody_130220232.jpg', 'mellmelodyy', '088217852740', NULL, NULL, NULL, NULL),
('130220236', 51, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/51/KTM_ErinaOliviaDevayana_130220236.pdf', 'storage/pasFoto/PKM-Kewirausahaan/51/Foto_ErinaOliviaDevayana_130220236.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130220275', 125, 'Anggota', 'storage/ktm/Video Digital Pendidikan/125/KTM_Sefhian Dwi Permana_130220275.pdf', 'storage/pasFoto/Video Digital Pendidikan/125/Foto_Sefhian Dwi Permana_130220275.png', NULL, NULL, NULL, NULL, NULL, NULL),
('130220275', 144, 'Anggota', 'storage/ktm/Video Digital Pendidikan/144/KTM_Sefhian Dwi Permana_130220275.pdf', 'storage/pasFoto/Video Digital Pendidikan/144/Foto_Sefhian Dwi Permana_130220275.png', NULL, NULL, NULL, NULL, NULL, NULL),
('130220277', 51, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/51/KTM_KennedyChristopherTanumihardja_130220277.pdf', 'storage/pasFoto/PKM-Kewirausahaan/51/Foto_KennedyChristopherTanumihardja_130220277.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130220277', 100, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/100/KTM_Kennedy Christopher Tanumihardja_130220277 (1).pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/100/Foto_Kennedy Christopher Tanumihahardja_130220277.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130220302', 91, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/91/KTM_Alvian Tantry_130220302.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/91/Foto_Alvian Tantry_130220302.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130221014', 91, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/91/KTM_Joshua Oktavianus_130221014.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/91/Foto_Joshua Oktavianus_130221014.jpg', 'joshua.oktavianus', '085236176599', NULL, NULL, NULL, NULL),
('130221018', 91, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/91/KTM_Andronius Purnomo_130221018.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/91/Foto_Andronius Purnomo_130221018.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130221019', 25, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/25/2221254.pdf', 'storage/pasFoto/PKM-Kewirausahaan/25/2221130.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130221019', 91, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/91/KTM_Gregoria Natalie_130221019.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/91/Foto_Gregoria Natalie_130221019.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130221042', 91, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/91/KTM_Stefhanie Budianto_130221042.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/91/Foto_Stefhanie Budianto_130221042.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130221053', 172, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('130221077', 51, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/51/KTM_FabianPhilippoKurniawan_130221077.pdf', 'storage/pasFoto/PKM-Kewirausahaan/51/Foto_FabianPhilippoKurniawan_130221077.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130221089', 172, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('130221104', 25, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/25/790858.pdf', 'storage/pasFoto/PKM-Kewirausahaan/25/Screenshot 2022-11-13 at 7.35.28 PM.png', NULL, NULL, NULL, NULL, NULL, NULL),
('130221135', 172, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('130221153', 53, 'Ketua', 'storage/ktm/Debat Indonesia/53/KTM_Amatsya Belantik Souhuwat_130221153.pdf', 'storage/pasFoto/Debat Indonesia/53/Foto_Amatsya Belantik Souhuwat_130221153.jpg', 'amatsyas', '08114784625', NULL, NULL, NULL, NULL),
('130221194', 172, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('130221196', 172, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('130222028', 67, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/67/KTM_Marco Antonio Jose Yohanes _130222028.pdf', 'storage/pasFoto/PKM-Kewirausahaan/67/Foto_Marco Antonio Jose Yohanes _130222028.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130222063', 67, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/67/KTM_Clarisa Imanuelita Wijaya_130222063.pdf', 'storage/pasFoto/PKM-Kewirausahaan/67/Foto_Clarisa Imanuelita Wijaya_130222063.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130222071', 146, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/146/KTM_Juan Kevin_130222071.pdf', 'storage/pasFoto/PKM-Kewirausahaan/146/Foto_Juan Kevin_130222071.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130222162', 67, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/67/KTM_Michael Susanto_130222162.pdf', 'storage/pasFoto/PKM-Kewirausahaan/67/Foto_Michael Susanto_130222162.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130222291', 48, 'Anggota', 'storage/ktm/Debat Inggris/48/KTM_Justianus_130222291.pdf', 'storage/pasFoto/Debat Inggris/48/Foto_Justianus_130222291.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130319066', 52, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/52/KTM_Jeremy_130319066.pdf', 'storage/pasFoto/PKM-Karsa Cipta/52/Foto_Jeremy_130319066.png', NULL, NULL, NULL, NULL, NULL, NULL),
('130319186', 52, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/52/KTM_Kevin_130319186.pdf', 'storage/pasFoto/PKM-Karsa Cipta/52/Foto_Kevin_130319186.png', NULL, NULL, NULL, NULL, NULL, NULL),
('130319204', 52, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/52/KTM_Joshua_130319204.pdf', 'storage/pasFoto/PKM-Karsa Cipta/52/Foto_Joshua_130319204.png', NULL, NULL, NULL, NULL, NULL, NULL),
('130320010', 27, 'Ketua', 'storage/ktm/Kompetisi MIPAS/27/KTM_Ivonne Vedimia Murhadi_130320010.pdf', 'storage/pasFoto/Kompetisi MIPAS/27/Foto_Ivonne Vedimia Murhadi_130320010.jpg', 'ivonnevedimia23', '085645307480', NULL, NULL, NULL, 'Statistika'),
('130320047', 52, 'Ketua', 'storage/ktm/PKM-Karsa Cipta/52/KTM_Richard_130320047.pdf', 'storage/pasFoto/PKM-Karsa Cipta/52/Foto_Richard_130320047.png', 'richjsn', '087851316767', NULL, NULL, NULL, NULL),
('130320056', 130, 'Ketua', 'storage/ktm/PKM-Karsa Cipta/130/KTM_Catherine_130320056.pdf', 'storage/pasFoto/PKM-Karsa Cipta/130/FOTO_Catherine_130320056.jpg', 'cjh_cm', '085749466507', NULL, NULL, NULL, NULL),
('130320091', 90, 'Ketua', 'storage/ktm/PKM-Karsa Cipta/90/KTM_Kennada_130320091.pdf', 'storage/pasFoto/PKM-Karsa Cipta/90/Foto_Kennada_130320091.jpg', 'innnggg24', '082331211099', NULL, NULL, NULL, NULL),
('130320105', 130, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/130/KTM_Felicia Cherillyn Gunawan_130320105.pdf', 'storage/pasFoto/PKM-Karsa Cipta/130/FOTO_Felicia Cherillyn Gunawan_130320105.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130320110', 146, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/146/KTM_Charlie Raymond_130320110.pdf', 'storage/pasFoto/PKM-Kewirausahaan/146/Foto_Charlie Raymond_130320110.jpg', 'charlieraymond', '085707046375', NULL, NULL, NULL, NULL),
('130320143', 90, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/90/KTM_Celine_130320143.pdf', 'storage/pasFoto/PKM-Karsa Cipta/90/Foto_Celine_130320143.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130320148', 90, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/90/KTM_Sharen_130320148.pdf', 'storage/pasFoto/PKM-Karsa Cipta/90/Foto_Sharen_130320148.png', NULL, NULL, NULL, NULL, NULL, NULL),
('130320153', 78, 'Ketua', 'storage/ktm/Kompetisi MIPAS/78/KTM_FELINCIA WAHYUDI_130320153.png', 'storage/pasFoto/Kompetisi MIPAS/78/Foto_Felincia Wahyudi_130320153.jpg', 'felinw', '087782775959', NULL, NULL, NULL, 'Matematika'),
('130320167', 90, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/90/KTM_Vania_130320167.pdf', 'storage/pasFoto/PKM-Karsa Cipta/90/Foto_Vania_130320167.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130320170', 130, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/130/KTM_Chintia Antariska_130320170.pdf', 'storage/pasFoto/PKM-Karsa Cipta/130/FOTO_Chintia Antariska_130320170.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130320172', 107, 'Ketua', 'storage/ktm/Kompetisi MIPAS/107/KTM_Hubert ST_130320172.pdf', 'storage/pasFoto/Kompetisi MIPAS/107/Foto_Hubert Sebastian_130320172.JPG', 'dragonwarior', '087717300002', NULL, NULL, NULL, 'Statistika'),
('130320195', 90, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/90/KTM_Anastasia Violeta_130320195.pdf', 'storage/pasFoto/PKM-Karsa Cipta/90/Foto_Anastasia Violeta_130320195.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130320219', 130, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/130/KTM_Ardelia Vanessa_130320219.pdf', 'storage/pasFoto/PKM-Karsa Cipta/130/FOTO_Ardelia Vanessa_130320219.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130321005', 25, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/25/684348.pdf', 'storage/pasFoto/PKM-Kewirausahaan/25/2221745.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130321016', 115, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/115/KTM_Seraphine Michelle_130321016.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/115/Foto_Seraphine Michelle_130321016.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130321016', 117, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/117/KTM_Seraphine Michelle_130321016.pdf', 'storage/pasFoto/PKM-Kewirausahaan/117/Foto_Seraphine Michelle VIncentia_130321016.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130321018', 115, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/115/KTM_Sabrina Cathlina_130321018.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/115/Foto_Sabrina Cathlina_130321018.jpg', 'sabrinacathlina_', '081330178727', NULL, NULL, NULL, NULL),
('130321018', 117, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/117/KTM_Sabrina Cathlina_130321018.pdf', 'storage/pasFoto/PKM-Kewirausahaan/117/Foto_Sabrina Cathlina_130321018.jpg', 'sabrinacathlina_', '081330178727', NULL, NULL, NULL, NULL),
('130321038', 115, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/115/KTM_Giovany Bella_130321038.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/115/Foto_Giovany Bella_130321038.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130321038', 117, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/117/KTM_Giovany Bella_130321038.pdf', 'storage/pasFoto/PKM-Kewirausahaan/117/Foto_Giovany Bella_130321038.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130321055', 115, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/115/KTM_Axel Martin_130321055.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/115/Foto_Axel Martin_130321055.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130321055', 117, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/117/KTM_Axel Martin_130321055.pdf', 'storage/pasFoto/PKM-Kewirausahaan/117/Foto_Axel Martin_130321055.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130321070', 115, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/115/KTM_Nadia Tania_130321070.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/115/Foto_Nadia Tania_130321070.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130321070', 117, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/117/KTM_Nadia Tania_130321070.pdf', 'storage/pasFoto/PKM-Kewirausahaan/117/Foto_Nadia Tania_130321070.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130321093', 22, 'Anggota', 'storage/ktm/Debat Indonesia/22/KTM_Jesselyn Kezia Alexandra_130321093.pdf', 'storage/pasFoto/Debat Indonesia/22/Foto_Jesselyn Kezia Alexandra_130321093.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130321136', 46, 'Ketua', 'storage/ktm/Debat Indonesia/46/KTM_Setiawan_130321136.pdf', 'storage/pasFoto/Debat Indonesia/46/Foto_Setiawan_130321136.png', 'setiawanw7', '088989188815', NULL, NULL, NULL, NULL),
('130322040', 71, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/71/KTM_GABRIELLA ALEXANDRA_100322040.pdf', 'storage/pasFoto/PKM-Kewirausahaan/71/GABRIELLA ALEXANDRA_130322040.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130322074', 81, 'Anggota', 'storage/ktm/Debat Indonesia/81/KTM_Evelyne Margaretha_130322074.pdf', 'storage/pasFoto/Debat Indonesia/81/Foto_Evelyne Margaretha_130322074.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130322074', 82, 'Anggota', 'storage/ktm/Debat Indonesia/82/KTM_Evelyne Margaretha_130322074.pdf', 'storage/pasFoto/Debat Indonesia/82/Foto_Evelyne Margaretha_130322074.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130322103', 67, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/67/KTM_Tiffany Evangelie_130322103.pdf', 'storage/pasFoto/PKM-Kewirausahaan/67/Foto_Tiffany Evangelie_130322103.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('130322130', 73, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/73/KTM_Winston sieh_130322130.pdf', 'storage/pasFoto/PKM-Kewirausahaan/73/Foto_Winston sieh_130322130.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('140121002', 49, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/49/KTM_Diah Fitri Mei Nurita_140121002.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/49/Foto_Diah Fitri Mei Nurita_140121002.jpg', 'DiahFitri Mei N', '088217471590', NULL, NULL, NULL, NULL),
('140121014', 49, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/49/KTM_Nadia Inanda Cahyani _140121014.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/49/Foto_Nadia Inanda Cahyani_140121014.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('140121016', 49, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/49/KTM_Yayi Marfu\'ah_140121016.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/49/Foto_Yayi Marfu\'ah_140121016.png', NULL, NULL, NULL, NULL, NULL, NULL),
('140122007', 49, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/49/KTM_Poppy Yana Mia Nabila_140122007.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/49/Foto_Poppy Yana Mia Nabila_140122007.png', NULL, NULL, NULL, NULL, NULL, NULL),
('140422011', 83, 'Ketua', 'storage/ktm/Debat Indonesia/83/KTM_Wulan Regina Putri _140422011.jpg', 'storage/pasFoto/Debat Indonesia/83/Foto_Wulan Regina Putri_140422011.jpg', '-', '085784133534', NULL, NULL, NULL, NULL),
('140821008', 83, 'Anggota', 'storage/ktm/Debat Indonesia/83/KTM _ Vallensya Agustin Wahyudi _ 140821008.jpg', 'storage/pasFoto/Debat Indonesia/83/Foto_Vallensya Agustin Wahyudi_140821008.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150118286', 139, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/139/KTM_Brandon Riccardo Utama_150118286.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/139/Foto_Brandon Riccardo Utama_150118286.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150118296', 143, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/143/KTM_Ningrum Eka_150118296.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/143/Foto_Ningrum Eka_150118296.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150118383', 143, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/143/KTM_Dita Rahma_150118383.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/143/Foto_Dita Rahma_150118383.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150119168', 97, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/97/KTM_Leonardo Novianjaya_150119168.pdf', 'storage/pasFoto/PKM-Kewirausahaan/97/Foto_Leonardo Novianjaya_150119168.jpg', 'novianjaya1999', '08114509933', NULL, NULL, NULL, NULL),
('150119168', 158, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('150119168', 159, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('150119168', 164, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('150119175', 97, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/97/KTM_Nabila Ramadhani Nugroho_150119175.pdf', 'storage/pasFoto/PKM-Kewirausahaan/97/Foto_Nabila Ramadhani Nugroho_150119175.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150119175', 157, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('150119175', 158, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('150119175', 159, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('150119175', 164, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('150119201', 1, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/1/KTM_Ista Wirya Ardhiani_150119201.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/1/Foto_Ista Wirya Ardhiani_150119201.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150119217', 122, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/122/KTM_Christian Nathaniel_150119217.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/122/Foto_Christian Nathaniel_150119217.jpg', '@darkeagleblueeyes', '08884077354', NULL, NULL, NULL, NULL),
('150119217', 142, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/142/KTM_Christian Nathaniel_150119217.pdf', 'storage/pasFoto/PKM-Kewirausahaan/142/IMG-20201203-WA0006.jpg', 'darkeagleblueeyes', '08884077354', NULL, NULL, NULL, NULL),
('150119227', 98, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/98/KTM_Kintan Maharani_150119227', 'storage/pasFoto/PKM-Riset Sosial Humaniora/98/Foto_Kintan Maharanii_150119227', 'kintaanm', '082142676337', NULL, NULL, NULL, NULL),
('150119231', 139, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/139/KTM_Maria Lystia Candrawati_150119231.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/139/Foto_Maria Lystia Candrawati_150119231.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150119246', 86, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/86/KTM_muhammad hammam_150119246.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/86/Foto_muhammad hammam_150119246.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150119247', 105, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/105/KTM_Yemima Dwi Venatasya_150119247.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/105/Foto_Yemima Dwi Venatasya_150119247.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150119266', 97, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/97/KTM_Inne Febriani_150119266.pdf', 'storage/pasFoto/PKM-Kewirausahaan/97/Foto_Inne Febriani_150119266.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150119303', 97, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/97/KTM_Andin Ardiani_150119303.pdf', 'storage/pasFoto/PKM-Kewirausahaan/97/Foto_Andin Ardiani_150119303.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150119904', 58, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/58/ktm johanda.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/58/foto johanda.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120006', 98, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/98/KTM_Bella Sasle Sahkah_150120006.png', 'storage/pasFoto/PKM-Riset Sosial Humaniora/98/Foto_Bella Sasle Sahkah_150120006', NULL, NULL, NULL, NULL, NULL, NULL),
('150120007', 80, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/80/KTM_Johana Tania Kurniawan_150120007.pdf', 'storage/pasFoto/PKM-Kewirausahaan/80/Foto_Johana Tania Kurniawan_150120007.png', 'johanatk17', '081312205828', NULL, NULL, NULL, NULL),
('150120008', 80, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/80/KTM_Made Ayudhyastiti S.P_150120008.pdf', 'storage/pasFoto/PKM-Kewirausahaan/80/Foto_Made Ayudhyastiti S.P_150120008.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120011', 97, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/97/KTM_Michael Tandya_150120011.pdf', 'storage/pasFoto/PKM-Kewirausahaan/97/Foto_Michael Tandya_150120011.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120019', 139, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/139/KTM_Aida Pamela_150120019.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/139/Foto_Aida Pamela_150120019.jpg', 'aidapamela12', '087852612800', NULL, NULL, NULL, NULL),
('150120022', 43, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/43/KTM_Karina Putri Shallomita_150120022.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/43/Foto_Karina Putri Shallomita_150120022.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120022', 118, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/118/KTM_Karina Putri Shallomita_150120022.PDF', 'storage/pasFoto/PKM-Riset Sosial Humaniora/118/Foto_Karina Putri Shallomita_150120022.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120022', 119, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/119/KTM_Karina Putri Shallomita_150120022.PDF', 'storage/pasFoto/PKM-Riset Sosial Humaniora/119/Foto_Karina Putri Shallomita_150120022.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120025', 79, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/79/KTM_Velinsia_150120025.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/79/Foto_Velinsia_150120025.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120033', 71, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/71/KTM_RUTH ABIGAIL WIJAYA_150120033 (1).pdf', 'storage/pasFoto/PKM-Kewirausahaan/71/FOTO_RUTH ABIGAIL WIJAYA_150120033.jpg', 'ruthwijaya_32', '081330949457', NULL, NULL, NULL, NULL),
('150120034', 79, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/79/KTM_Mariana Antoneta FIuelland Go_150120034.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/79/Foto_Mariana Antoneta Fiuelland Go_150120034.jpg', '04_maanfigo12', '08113084410', NULL, NULL, NULL, NULL),
('150120037', 75, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/75/KTM_Frederica Frendjie Harto_150120037.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/75/Foto_Frederica Frendjie Harto_150120037.jpg', 'frederica02', '081336828578', NULL, NULL, NULL, NULL),
('150120049', 42, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/42/KTM_Steffanie Laurent_150120049.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/42/Foto_Steffanie Laurent_150120049.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120051', 61, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/61/KTM_Jeanne Joshlyn P_150120051.pdf', 'storage/pasFoto/PKM-Kewirausahaan/61/Foto_Jeanne Joshlyn P_150120051.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150120051', 143, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/143/KTM_Jeanne Joshlyn_150120051.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/143/Foto_Jeanne Joshlyn_150120051.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150120058', 73, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/73/KTM_Klaudius Gilang Sarwono_150120058.pdf', 'storage/pasFoto/PKM-Kewirausahaan/73/Foto_Klaudius Gilang Sarwono_150120058.jpg', 'gilangsarwono', '087860517276', NULL, NULL, NULL, NULL),
('150120066', 80, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/80/KTM_Marcellino Alvin Nugroho_150120066.pdf', 'storage/pasFoto/PKM-Kewirausahaan/80/Foto_Marcelino Alvin N._150120066.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150120067', 98, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/98/KTM_Dyah Anggraeni La\'lang_150120067', 'storage/pasFoto/PKM-Riset Sosial Humaniora/98/Foto_Dyah Anggraeni La\'lang_150120067', NULL, NULL, NULL, NULL, NULL, NULL),
('150120070', 43, 'Ketua', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/43/KTM_Joyceline Angelina_150120070.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/43/Foto_Joyceline Angelina_150120070.png', 'joycelinelaw_', '081232787227', NULL, NULL, NULL, NULL),
('150120070', 80, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/80/KTM_Joyceline Angelina_150120070.pdf', 'storage/pasFoto/PKM-Kewirausahaan/80/Foto_Joyceline Angelina_150120070.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150120073', 3, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/3/KTM_Eunikke Kezia Candra_150120073.pdf', 'storage/pasFoto/PKM-Kewirausahaan/3/Foto_Eunikke Kezia Candra_150120073.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150120073', 79, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/79/KTM_EUNIKKE KEZIA CANDRA_150120073.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/79/Foto_EUNIKKE KEZIA CANDRA_150120073.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150120084', 120, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/120/KTM_Andi Vania_150120084.pdf', 'storage/pasFoto/PKM-Kewirausahaan/120/Foto_Andi Vania_150120084.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120085', 131, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/131/KTM_Jesselyne Valerie Athalia C_150120085.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/131/Foto_Jesselyne Valerie Athalia Christanti_150120085.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120095', 122, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/122/KTM_Jayson Sifen Hendronoto_150120095.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/122/Foto_Jayson Sifen Hendronoto_150120095.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120095', 142, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/142/KTM_Jayson Sifen Hendronoto_150120095.pdf', 'storage/pasFoto/PKM-Kewirausahaan/142/1668584436403.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120098', 26, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/26/KTM_Efendy, Kania Angela_150120098.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/26/Foto_Efendy, Kania Angela_150120098.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120099', 105, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/105/KTM_Brigitta Yolanda_150120099.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/105/Foto_Brigitta Yolanda_150120099.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120100', 143, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/143/KTM_Michella William_150120100.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/143/Foto_Michella William_150120100.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120103', 118, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/118/KTM_Felicia Angelina_150120103.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/118/Foto_Felicia Angelina_150120103.jpg', 'feliciaa0822', '082140991616', NULL, NULL, NULL, NULL),
('150120103', 119, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/119/KTM_Felicia Angelina_150120103.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/119/Foto_Felicia Angelina_150120103.jpg', 'feliciaa0822', '082140991616', NULL, NULL, NULL, NULL),
('150120109', 120, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/120/KTM_Brahm Dharma Putera_150120109.pdf', 'storage/pasFoto/PKM-Kewirausahaan/120/Foto_Brahm Dharma Putera_150120109.jpg', 'b12ahm', '0811304678', NULL, NULL, NULL, NULL),
('150120115', 98, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/98/KTM_Maria Olivia Krismardi.png', 'storage/pasFoto/PKM-Riset Sosial Humaniora/98/Foto_Maria Olivia Krismardi_150120115.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120120', 148, 'Ketua', 'storage/ktm/Kompetisi MIPAS/148/KTM_Wennie Margaret_150120120.pdf', 'storage/pasFoto/Kompetisi MIPAS/148/Foto_Wennie Margaret_150120120.jpg', 'wenniemargarett', '085331100807', NULL, NULL, NULL, 'Statistika'),
('150120124', 105, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/105/KTM_Anastasia Stefani_150120124.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/105/Foto_Anastasia Stefani_150120124.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120134', 60, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/60/ktm_jeshurun zerah shalom_150120134.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/60/Foto_Jeshurun Zerah Shalom_150120134.jpg', 'jeshurun_jezreel', '082257832500', NULL, NULL, NULL, NULL),
('150120139', 61, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/61/KTM_Edbert Nathanael G_150120139.pdf', 'storage/pasFoto/PKM-Kewirausahaan/61/Foto_Edbert Nathanael G_150120139.png', 'edbertgoenawan1209020', '0895350633999', NULL, NULL, NULL, NULL),
('150120149', 37, 'Ketua', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/37/KTM_Foebe Imantaka I_150120149.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/37/Foto_Foebe I_150120149.jpg', 'foebeimantaka', '081336015649', NULL, NULL, NULL, NULL),
('150120150', 37, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/37/KTM_Amiroh F.S_150120150.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/37/Foto _Amiroh Fatin S_150120150.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120151', 41, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/41/KTM_Mahdan Syahidah_150120151.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/41/Foto_Mahdan Syahidah_150120151.JPG', 'syahiidaahmita', '082333073976', NULL, NULL, NULL, NULL),
('150120164', 26, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/26/KTM_Ilham Wiliansyah_150120164.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/26/Foto_Ilham Wiliansyah_150120164.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120170', 143, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/143/KTM_Sefti Sastro K_150120170.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/143/Foto_Sefti Sastro K_150120170.jpg', 'seftii29', '089516621871', NULL, NULL, NULL, NULL),
('150120171', 120, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/120/KTM_Jefferson_150120171.pdf', 'storage/pasFoto/PKM-Kewirausahaan/120/Foto_Jefferson_150120171.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120183', 42, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/42/KTM_Muhammad Azhar_150120183.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/42/Foto_Muhammad Azhar_150120183.jpg', 'zharaziz_', '081515331095', NULL, NULL, NULL, NULL),
('150120192', 60, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/60/ktm_valentino maximillian_150120192.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/60/Foto_Valentino Maximillian_150120192.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120194', 57, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/57/KTM_Pebriyanti_150120194.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/57/Foto_Ni Kadek Sei Pebriyanti_150120194.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
('150120194', 77, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/77/KTM_Ni Kadek Sri Pebriyanti_150120194.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/77/Foto_Ni Kadek Sri Pebriyanti_150120194.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
('150120196', 57, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/57/KTM_Niluh Ayu Sri Padmawati_150120196.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/57/Foto_Niluh Ayu Sri Padmawati_150120196.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120196', 77, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/77/KTM_Niluh Ayu Sri Padmawati_150120196.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/77/Foto_Niluh Ayu Sri Padmawati_150120196.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120197', 37, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/37/KTM_Allester T.T. Lumingkewas_150120197.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/37/Foto_Allester_150120197.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120198', 73, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/73/KTM_Dendy Maulana Rahma_150120198.pdf', 'storage/pasFoto/PKM-Kewirausahaan/73/Foto_Dendy Maulana Rahma_150120198.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120198', 105, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/105/KTM_Dendy M R_150120198.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/105/Foto_Dendy M R_150120198.jpg', 'bboy_alan', '081554904164', NULL, NULL, NULL, NULL),
('150120200', 41, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/41/KTM_Anggun Putri_150120200.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/41/Foto_Anggun Putri_150120200.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120201', 37, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/37/KTM_Ardina R_150120201.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/37/Foto_Ardina R_150120201.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120217', 86, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/86/KTM_sherina samantha_150120217.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/86/Foto_sherina samantha_150120217.png', 'sherina01_', '082193245800', NULL, NULL, NULL, NULL),
('150120232', 57, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/57/KTM_Widianti Selsabilah_150120232.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/57/Foto_Widianti Selsabilah_150120232.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120232', 77, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/77/KTM_Widianti Selsabilah_150120232.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/77/Foto_Widianti Selsabilah_150120232.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120235', 75, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/75/KTM_Nabila Aulia_150120235.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/75/Foto_Nabila Aulia_150120235.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120242', 86, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/86/KTM_nathalie_150120242.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/86/Foto_nathalie_150120242.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
('150120250', 71, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/71/KTM_GRACE SHANICE BENITA_150120250.pdf', 'storage/pasFoto/PKM-Kewirausahaan/71/FOTO_GRACE SHANICE BENITA_150120250.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120251', 105, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/105/KTM_Alfaiz Ichwan Enha_150120251.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/105/Foto_Alfaiz Ichwan Enha_150120251.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120251', 139, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/139/KTM_Alfaiz Ichwan Enha_150120251.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/139/Foto_Alfaiz Ichwan Enha_150120251.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120251', 170, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('150120254', 75, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/75/KTM_Monica Trisilia Sitanaya_150120254.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/75/Foto_Monica Trisilia Sitanaya_150120254.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
('150120262', 57, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/57/KTM_Putu Ayu Wimas Chandra Putri_150120262.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/57/Foto_Putu Ayu Wimas Chandra Putri_150120262.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
('150120262', 77, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/77/KTM_Putu Ayu Wimas Chandra Putri_150120262.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/77/Foto_Putu Ayu Wimas Chandra Putri_150120262.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
('150120263', 104, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/104/KTM_Annisha Tasyharani Zianira_150120263.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/104/Foto_Annisha Tasyharani Zianira_150120263.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
('150120271', 41, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/41/KTM_Putri Ayu_150120271.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/41/Foto_Putri Ayu_150120271.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120275', 3, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/3/KTM_Joshua Abner Ramirez_150120275.pdf', 'storage/pasFoto/PKM-Kewirausahaan/3/Foto_Joshua Abner Ramirez_150120275.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
('150120284', 18, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/18/KTM_L.M.Lintang Kirana Sena_150120284.pdf', 'storage/pasFoto/PKM-Kewirausahaan/18/Foto_L.M.Lintang Kirana Sena_150120284.jpg', 'kiranasena', '087853945731', NULL, NULL, NULL, NULL),
('150120286', 3, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/3/KTM_Eunike Gabriela Jesarela_150120286.pdf', 'storage/pasFoto/PKM-Kewirausahaan/3/Foto_Eunike Gabriela Jesarela_150120286.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
('150120292', 3, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/3/KTM_Aliza Berliana Wibowo_150120292.pdf', 'storage/pasFoto/PKM-Kewirausahaan/3/Foto_Aliza Berliana Wibowo_150120292.jpg', 'berlianaaliza', '082232583395', NULL, NULL, NULL, NULL);
INSERT INTO `user_details` (`nrp`, `teams_id`, `role`, `id_card`, `self_photo`, `line`, `phone_number`, `gpa_recap`, `borang`, `achievement_list`, `competition_type`) VALUES
('150120296', 25, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/25/messageImage_1668330668726.pdf', 'storage/pasFoto/PKM-Kewirausahaan/25/CE7B7433-F085-41D4-99E5-7D1BAB0CF3A2.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150120311', 25, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/25/akademikmhsajukanfoto_ecardimg-3.pdf', 'storage/pasFoto/PKM-Kewirausahaan/25/Untitled-1 4x6.png', 'rizzzdl', '089697029541', NULL, NULL, NULL, NULL),
('150120900', 131, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/131/KTM_Sandhy_150120900.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/131/Foto_Sandhy_150120900.jpg', 'sandhyy19', '085795921351', NULL, NULL, NULL, NULL),
('150121003', 41, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/41/KTM_Moch. Firman_150121003.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/41/Foto_Moch. Firman_150121003.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121005', 75, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/75/KTM_Lizabeth Eliana_150121005.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/75/Foto_Lizabeth Eliana_150121005.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121006', 37, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/37/KTM_Steven Hausyiah_150121006.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/37/Foto_Steven Hausyiah_150121006.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121006', 177, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('150121012', 18, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/18/KTM_Darnika Albita Pralisya_150121012.pdf', 'storage/pasFoto/PKM-Kewirausahaan/18/Foto_Darnika Albita Pralisya_150121012.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150121019', 42, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/42/KTM_Nelvina Alma_150121019.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/42/Foto_Nelvina Alma_150121019.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121021', 61, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/61/KTM_Jessie Moreen_150121021.pdf', 'storage/pasFoto/PKM-Kewirausahaan/61/Foto_Jessie Moreen_150121021.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150121035', 139, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/139/KTM_Ophelia Ferguson_150121035.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/139/Foto_Ophelia Ferguson_150121035.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121037', 118, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/118/KTM_Evonne Theodora_150121037.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/118/Foto_Evonne Theodora_150121037.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121037', 119, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/119/KTM_Evonne Theodora_150121037.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/119/Foto_Evonne Theodora_150121037.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121040', 75, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/75/KTM_Maria Stefanie_150121040.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/75/Foto_Maria Stefanie_150121040.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121048', 79, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/79/KTM_Stefani Carissa Suhartanto_150121048.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/79/Foto_Stefani Carissa Suhartanto_150121048.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121053', 116, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/116/KTM_Jessica Christie Maringka_150121053.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/116/Foto_Jessica Christie Maringka_150121053.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150121070', 104, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/104/KTM_Gabriella Norine_150121070.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/104/Foto_Gabriella Norine_150121070.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121088', 111, 'Anggota', 'storage/ktm/Debat Inggris/111/KTM_Eunike Jocelyn_150121088.pdf', 'storage/pasFoto/Debat Inggris/111/Foto_Eunike Jocelyn_150121088.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150121100', 3, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/3/KTM_Salsabil Wemia Adlisela_150121100.pdf', 'storage/pasFoto/PKM-Kewirausahaan/3/Foto_Salsabil Wemia Adlisela_150121100.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
('150121107', 123, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/123/KTM_Khansa Rauf Fadhila_150121107.pdf', 'storage/pasFoto/PKM-Karsa Cipta/123/Foto_Khansa Rauf Fadhila_150121107.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150121117', 1, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/1/KTM_Ni Putu Erika Patrisia Kinaya_150121117.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/1/Foto_Ni Putu Erika Patrisia Kinaya_150121117.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121133', 104, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/104/KTM_Eugenia Severin_150121133.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/104/Foto_Eugenia Severin_150121133.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121144', 124, 'Ketua', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/124/KTM_Secylia Christy_150121144.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/124/FOTO_Secylia Christy_150121144.png', 'secyliachristy3', '081901299399', NULL, NULL, NULL, NULL),
('150121148', 111, 'Ketua', 'storage/ktm/Debat Inggris/111/KTM_Nathania Etsa Anindita_150121148.pdf', 'storage/pasFoto/Debat Inggris/111/Foto_Nathania Etsa Anindita_150121148.png', 'etsaanindita64', '081934921788', NULL, NULL, NULL, NULL),
('150121148', 124, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/124/KTM_Nathania Etsa Anindita_150121148.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/124/FOTO_Nathania Etsa Anindita_150121148.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121150', 96, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/96/KTM_Licia Arista Lofiandy_150121150.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/96/Foto_Licia Arista Lofiandy_150121150.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121166', 96, 'Ketua', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/96/KTM_Sandhy, Olivia_150121166.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/96/Foto_Sandhy, Olivia_150121166.png', 'olive_1610', '085389753912', NULL, NULL, NULL, NULL),
('150121169', 18, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/18/KTM_Veren Monica_150121169.pdf', 'storage/pasFoto/PKM-Kewirausahaan/18/Foto_Veren Monica_150121169.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121174', 124, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/124/KTM_Angela Ivana Putri_150121174.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/124/FOTO_Angela Ivana Putri_150121174.PNG', NULL, NULL, NULL, NULL, NULL, NULL),
('150121178', 124, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/124/KTM_Valencia Giovanni_150121178.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/124/FOTO_Valencia Giovanni_150121178.jpeg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121184', 96, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/96/KTM_Willingda Tinshia Patty_150121184.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/96/Foto_Willingda Tinshia Patty_150121184.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121190', 26, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/26/KTM_Glory Ketshia Alase_150121190.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/26/Foto_Glory Ketshia Alase_150121190.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121190', 96, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/96/KTM_Glory Ketshia Alase_150121190.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/96/Foto_Glory Ketshia Alase_150121190.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121209', 131, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/131/KTM_Dinda Khairunnisa Nabila_150121209.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/131/Foto_Dinda Khariunnisa Nabila_150121209 .jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121211', 57, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/57/KTM_Ria Risty Dhias Utami_150121211.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/57/Foto_Ria Risty Dhias Utami_150121211.jpg', 'riaristycuy', '082264554680', NULL, NULL, NULL, NULL),
('150121211', 77, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/77/KTM_Ria Risty Dhias Utami_150121211.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/77/Foto_Ria Risty Dhias Utami_150121211.jpg', 'riaristycuy', '082264554680', NULL, NULL, NULL, NULL),
('150121214', 104, 'Ketua', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/104/KTM_Bunga Meiuliwati S _150121214.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/104/Foto_Bunga Meiuliwati S_150121214.jpg', 'bungamei16', '082391527758', NULL, NULL, NULL, NULL),
('150121222', 18, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/18/KTM_Sagung Pramitha_150121222.pdf', 'storage/pasFoto/PKM-Kewirausahaan/18/Foto_Sagung Pramitha_150121222.PNG', NULL, NULL, NULL, NULL, NULL, NULL),
('150121228', 131, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/131/KTM_Ays Mervia Aurili_150121228.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/131/Foto_Ays Mervia Aurili_150121228.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121230', 164, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('150121233', 104, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/104/KTM_Misael Roho_150121233.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/104/Foto_Misael Roho_150121233.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121234', 18, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/18/KTM_I Gst. Agung Ayu Sanrina Jelantik_150121234.pdf', 'storage/pasFoto/PKM-Kewirausahaan/18/Foto_I Gst. A. Ayu Sanrina Jelantik_150121234.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121251', 86, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/86/KTM_tesalonika agape_150121251.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/86/Foto_tesalonika agape_150121251.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
('150121254', 41, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/41/KTM_Yogi Suryo_150121254.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/41/Foto_Yogi Suryo_150121254.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121254', 60, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/60/ktm_yogi suryo prayogo_150121254.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/60/Foto_Yogi Suryo Prayogo_150121254.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150121900', 60, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/60/ktm_pratiwi suyanto_150121900.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/60/Foto_Pratiwi Suyanto_150121900.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122008', 121, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/121/KTM_Caroline Natasha Aimee_150122008.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/121/Foto_Caroline Natasha Aimee_150122008.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122014', 58, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/58/ktm kezia.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/58/foto kezia.jpg', 'kezia_wijaya19', '081332819603', NULL, NULL, NULL, NULL),
('150122016', 121, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/121/KTM_Michelle Adeline_150122016.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/121/Foto_Michelle Adeline_150122016.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122019', 124, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/124/KTM_Santy Marcella Kurniawan_150122019.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/124/FOTO_Santy Marcella Kurniawan_150122019.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122022', 96, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/96/KTM_Gisela Geraldine_150122022.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/96/Foto_Gisela Geraldine Pamula_150122022.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122022', 121, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/121/KTM_Gisela Geraldine Pamula_150122022.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/121/Foto_Gisela Geraldine Pamula_150122022.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122038', 86, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/86/KTM_davino rijanto_150122038.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/86/Foto_davino rijanto_150122038.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122053', 58, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/58/ktm hil.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/58/foto hil.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122055', 58, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/58/ktm petris.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/58/foto petris.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122071', 121, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/121/KTM_Yoanita Sugionoputri_150122071.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/121/Foto_Yoanita Sugionoputri_150122071.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122109', 122, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/122/KTM_Ivana Phebi Handoko_150122109.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/122/Foto_Ivana_150122109.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122109', 142, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/142/KTM_Ivana Phebi Handoko_150122109.pdf', 'storage/pasFoto/PKM-Kewirausahaan/142/1668584332216.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122125', 1, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/1/KTM_Cliff Nathanael Kanessa_150122125.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/1/Foto_Cliff Nathanael K_150122125.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122133', 123, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/123/KTM_Sandra Geraldine Alfionita_150122133.pdf', 'storage/pasFoto/PKM-Karsa Cipta/123/Foto_Sandra Geraldine Alfionita_150122133.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122138', 123, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/123/KTM_Rachma Diana Arief_150122138.pdf', 'storage/pasFoto/PKM-Karsa Cipta/123/Foto_Rachma Diana Arief_150122138.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122144', 170, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('150122154', 81, 'Ketua', 'storage/ktm/Debat Indonesia/81/KTM_Rangga Saputra_150122154.pdf', 'storage/pasFoto/Debat Indonesia/81/Foto_Rangga Saputra_150122154.jpg', 'rng19', '082272597477', NULL, NULL, NULL, NULL),
('150122154', 82, 'Ketua', 'storage/ktm/Debat Indonesia/82/KTM_Rangga Saputra_150122154.pdf', 'storage/pasFoto/Debat Indonesia/82/Foto_Rangga Saputra_150122154.jpg', 'rng19', '082272597477', NULL, NULL, NULL, NULL),
('150122156', 72, 'Ketua', 'storage/ktm/Debat Inggris/72/KTM_QeilishaYamilla_150122156.pdf', 'storage/pasFoto/Debat Inggris/72/Foto_QeilishaYamilla_150122156.jpg', 'qeilishayamillar', '081261901845', NULL, NULL, NULL, NULL),
('150122179', 58, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/58/KTM - DAYU ANNAMIKA.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/58/foto dayu.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122180', 118, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/118/KTM_Putri Mustika Shofia_150122180.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/118/Foto_Putri Mustika Shofia_150122180.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122180', 119, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/119/KTM_Putri Mustika Shofia_150122180.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/119/Foto_Putri Mustika Shofia_150122180.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122181', 170, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('150122184', 170, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('150122185', 123, 'Ketua', 'storage/ktm/PKM-Karsa Cipta/123/KTM_Grasela Marisa Putri Siagian_150122185.pdf', 'storage/pasFoto/PKM-Karsa Cipta/123/Foto_Grasela Marisa Putri Siagian_150122185.jpeg', 'ween_neeww', '082148659508', NULL, NULL, NULL, NULL),
('150122198', 118, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/118/KTM_Ni Luh Made Rasi_150122198.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/118/Foto_Ni Luh Made Rasi Kirani Setiawati H_150122198.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150122198', 119, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/119/KTM_Ni Luh Made Rasi_150122198.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/119/Foto_Ni Luh Made Rasi Kirani Setiawati H_150122198.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150122215', 109, 'Ketua', 'storage/ktm/Kompetisi MIPAS/109/KTM_Erlita Christiana_150122215.pdf', 'storage/pasFoto/Kompetisi MIPAS/109/Foto_Erlita Christiana_150122215.JPG', 'erlitachrist', '0895399297084', NULL, NULL, NULL, 'Biologi'),
('150122220', 48, 'Ketua', 'storage/ktm/Debat Inggris/48/KTM_Alex_150122220.pdf', 'storage/pasFoto/Debat Inggris/48/Foto_Alex_150122220.jpg', 'ALEXA.AW', '081938330967', NULL, NULL, NULL, NULL),
('150122227', 113, 'Anggota', 'storage/ktm/Video Digital Pendidikan/113/KTM_Celita Fanda H._150122227.pdf', 'storage/pasFoto/Video Digital Pendidikan/113/Foto_Celita Fanda Hafsari_150122227.png', NULL, NULL, NULL, NULL, NULL, NULL),
('150122239', 113, 'Ketua', 'storage/ktm/Video Digital Pendidikan/113/KTM_Zinnia Dorothy A._150122239.pdf', 'storage/pasFoto/Video Digital Pendidikan/113/Foto_Zinnia Dorothy A._150122239.jpg', 'xvrn', '081258519752', NULL, NULL, NULL, NULL),
('150122257', 1, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/1/KTM_Timotius Owen Sugiarto_150122257.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/1/Foto_Timotius Owen Sugiarto_150122257.jpg', 'razingblace', '0818210799', NULL, NULL, NULL, NULL),
('150122264', 122, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/122/KTM_Ayuning sekar cahya viocha tuankotta_150122264.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/122/Foto_Ayuning_150122264.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122264', 142, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/142/1668575824306.jpg', 'storage/pasFoto/PKM-Kewirausahaan/142/1668575824306.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('150122272', 170, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('160122023', 19, 'Ketua', 'storage/ktm/Kompetisi MIPAS/19/KTM_Agung_160122023.png', 'storage/pasFoto/Kompetisi MIPAS/19/foto_Agung_160122023.jpg', 'Gsrede2610', '085233023687', NULL, NULL, NULL, 'Matematika'),
('160122023', 47, 'Ketua', 'storage/ktm/Debat Indonesia/47/KTM_Agung_160122023.pdf', 'storage/pasFoto/Debat Indonesia/47/foto_Agung_160122023.png', 'Gsrede2610', '085233023687', NULL, NULL, NULL, 'Matematika'),
('160219001', 2, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/2/KTM_Kevin Hosea Sutikno_160219001.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/2/Foto_Kevin Hosea Sutikno_160219001.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160219003', 33, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/33/KTM McClaren.pdf', 'storage/pasFoto/PKM-Kewirausahaan/33/mcclaren.png', NULL, NULL, NULL, NULL, NULL, NULL),
('160219004', 9, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/9/KTM_Lydia Pricilia Sutanto_160219004.pdf', 'storage/pasFoto/PKM-Kewirausahaan/9/Foto_Lydia Pricilia Sutanto_160219004.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160219005', 8, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/8/KTM_BRYAN ARVIN KUSUMA_160219005.pdf', 'storage/pasFoto/PKM-Kewirausahaan/8/FOTO_BRYAN ARVIN KUSUMA_160219005.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160219006', 24, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/24/KTM_Kathleen Noviena Puspo_160219006.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/24/Foto_Kathleen Noviena Puspo_160219006.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160219008', 8, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/8/KTM_MARIA ANGELLICA_160219008.pdf', 'storage/pasFoto/PKM-Kewirausahaan/8/FOTO_MARIA ANGELLICA_160219008.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160219011', 29, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/29/KTM_Nicholas Kevin_160219011.pdf', 'storage/pasFoto/PKM-Kewirausahaan/29/Foto_Nicholas Kevin_160219011.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160219014', 20, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/20/KTM_DihanRalanya_160219014.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/20/Foto_DihanRalanya_160219014.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160219015', 21, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/21/KTM_Christian Valentino_160219015.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/21/foto_Christian-Valentino_160219015.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160219022', 40, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/40/ktm_Marchis Wonder.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/40/pasfoto4x6_Marchis Wonder.jpeg', 'marchiswonder1503', '082333825938', NULL, NULL, NULL, NULL),
('160219023', 29, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/29/KTM_Fiany Laurence_160219023.pdf', 'storage/pasFoto/PKM-Kewirausahaan/29/Foto_Fiany Laurence_160219023.jpg', 'fianylrnce', '08115520687', NULL, NULL, NULL, NULL),
('160219025', 35, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/35/KTM_Virginia Lorenza_160219025.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/35/Foto_Virginia Lorenza_160219025.png', NULL, NULL, NULL, NULL, NULL, NULL),
('160219027', 2, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/2/KTM_Kennita Alvina Jodie_160219027.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/2/Foto_Kennita Alvina Jodie_160219027.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160219031', 9, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/9/KTM_David Wangsaputra_160219031.pdf', 'storage/pasFoto/PKM-Kewirausahaan/9/Foto_David Wangsaputra_160219031.jpg', 'davidwangsaputra', '085100439837', NULL, NULL, NULL, NULL),
('160219032', 35, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/35/KTM_Cindy Clarisa_160219032.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/35/Foto_Cindy Clarisa_160219032.png', NULL, NULL, NULL, NULL, NULL, NULL),
('160219034', 21, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/21/KTM_Marcelino Brilliant Iswanto_160219034.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/21/foto_m brilliant_160219034.jpg', 'brilliantiswanto', '082132538815', NULL, NULL, NULL, NULL),
('160219038', 20, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/20/KTM_JeremyMorgan_160219038.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/20/Foto_JeremyMorgan_160219038.jpg', 'jeremymorgan', '08991050999', NULL, NULL, NULL, NULL),
('160219039', 31, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/31/KTM_REINALDO YOHANES_160219039.pdf', 'storage/pasFoto/PKM-Kewirausahaan/31/FOTO_REINALDO YOHANES_160219039.png', NULL, NULL, NULL, NULL, NULL, NULL),
('160219042', 40, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/40/ktm_ivania handoyo.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/40/pasfoto4x6_Ivania Handoyo.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160219045', 31, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/31/KTM_AMARIS LAURENCIA_160219045.pdf', 'storage/pasFoto/PKM-Kewirausahaan/31/FOTO_AMARIS LAURENCIA_160219045.jpg', 'amarislaurencia', '082127091553', NULL, NULL, NULL, NULL),
('160219062', 24, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/24/KTM_Christian Yulius Ongkers_160219062.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/24/Foto_Christian Yulius Ongkers_160219062.jpg', 'iano230702', '081232581396', NULL, NULL, NULL, NULL),
('160219070', 33, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/33/KTM Robby.pdf', 'storage/pasFoto/PKM-Kewirausahaan/33/robby.jpg', 'robbysutanto_', '082230156665', NULL, NULL, NULL, NULL),
('160219074', 76, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/76/KTM_Yosafat_160219074.pdf', 'storage/pasFoto/PKM-Karsa Cipta/76/Foto_Yosafat_160219074.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160219077', 76, 'Ketua', 'storage/ktm/PKM-Karsa Cipta/76/KTM_Reyhan_160219077.pdf', 'storage/pasFoto/PKM-Karsa Cipta/76/Foto_Reyhan_160219077.jpg', 'mbleee-8', '085959587106', NULL, NULL, NULL, NULL),
('160220001', 36, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/36/KTM_Jessica Angelie_160220001.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/36/Foto_Jessica Angelie_160220001.png', 'jessica_angelie2', '081285235232', NULL, NULL, NULL, NULL),
('160220003', 29, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/29/KTM_Laura Lingguina_160220003.pdf', 'storage/pasFoto/PKM-Kewirausahaan/29/Foto_Laura Lingguina_160220003.png', NULL, NULL, NULL, NULL, NULL, NULL),
('160220005', 93, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/93/160220005_Yehezkiel Warren Wijaya_KTM real.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/93/Foto_YehezkielWarrenWijaya_160220005.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160220008', 5, 'Ketua', 'storage/ktm/Kompetisi MIPAS/5/KTM_Hansdersen_160220008.pdf', 'storage/pasFoto/Kompetisi MIPAS/5/Foto_hansdersen_160220008.jpg', 'mashmix2', '082245099809', NULL, NULL, NULL, 'Kimia'),
('160220008', 35, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/35/KTM_Hansdersen_160220008.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/35/Foto_Hansdersen Hermes Irawan_160220008.png', 'Mashmix2', '082245099809', NULL, NULL, NULL, NULL),
('160220009', 112, 'Ketua', 'storage/ktm/Kompetisi MIPAS/112/KTM_Richard_160220009.pdf', 'storage/pasFoto/Kompetisi MIPAS/112/Foto_Richard_160220009.jpg', 'cheesyhessly', '089628398554', NULL, NULL, NULL, 'Biologi'),
('160220010', 33, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/33/KTM Angel.pdf', 'storage/pasFoto/PKM-Kewirausahaan/33/angel.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160220013', 34, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/34/KTM_Ricardo Angelio_160220013.pdf', 'storage/pasFoto/PKM-Karsa Cipta/34/Foto_Ricardo Angelio_160220013.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160220015', 31, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/31/KTM_CLARISSA INDRAYANI_160220015.pdf', 'storage/pasFoto/PKM-Kewirausahaan/31/FOTO_CLARISSA INDRAYANI_160220015.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160220018', 65, 'Ketua', 'storage/ktm/Kompetisi MIPAS/65/KTM_Jonathan Bryan_160220018.pdf', 'storage/pasFoto/Kompetisi MIPAS/65/Foto_Jonathan Bryan_160220018.jpg', 'bryan_72', '083849430052', NULL, NULL, NULL, 'Fisika'),
('160220018', 76, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/76/KTM_Jonathan_160220018.pdf', 'storage/pasFoto/PKM-Karsa Cipta/76/Foto_Jonathan_160220018.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160220019', 24, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/24/KTM_Ayu Kususma Setiawan_160220019.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/24/Foto_Ayu Kususma Setiawan_160220019.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160220020', 2, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/2/KTM_Yonathan Aditya Wibowo_160220020.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/2/Foto_Yonathan Aditya Wibowo_160220020.jpg', '7de902aa', '082135335220', NULL, NULL, NULL, NULL),
('160220044', 20, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/20/KTM_AlfianDwiWahyudi_160220044.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/20/Foto_AlfianDwiWahyudi_160220044.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160220046', 21, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/21/KTM_Nevindya_160220046.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/21/foto_Nevindya_160220046.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160220049', 8, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/8/KTM_ALYSSA MIRANDA_160220049.pdf', 'storage/pasFoto/PKM-Kewirausahaan/8/FOTO_ALYSSA MIRANDA_160220049.jpg', 'alyssamiranda75', '082244275778', NULL, NULL, NULL, NULL),
('160221002', 34, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/34/KTM_Evelyn Wangsadharma_160221002.pdf', 'storage/pasFoto/PKM-Karsa Cipta/34/Foto_Evelyn Wangsadharma_160221002.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160221004', 7, 'Ketua', 'storage/ktm/Kompetisi MIPAS/7/KTM_Nicholas Alexander_160221004.pdf', 'storage/pasFoto/Kompetisi MIPAS/7/Foto_Nicholas Alexander_160221004.jpg', 'nikoalex1244', '082234589520', NULL, NULL, NULL, 'Fisika'),
('160221004', 36, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/36/KTM_Nicholas Alexander_160221004.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/36/Foto_Nicholas Alexander_160221004.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160221005', 34, 'Ketua', 'storage/ktm/PKM-Karsa Cipta/34/KTM_Theofilus Pranata_160221005.pdf', 'storage/pasFoto/PKM-Karsa Cipta/34/Foto_Theofilus Pranata_160221005.jpg', 'theofiluspranata', '082234200964', NULL, NULL, NULL, NULL),
('160221014', 6, 'Ketua', 'storage/ktm/Kompetisi MIPAS/6/KTM_Agnes Laurensia Latumeten_160221014.pdf', 'storage/pasFoto/Kompetisi MIPAS/6/Foto_Agnes Laurensia Latumeten_160221014.jpg', 'agnes_latumeten03', '085343003555', NULL, NULL, NULL, 'Biologi'),
('160221014', 9, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/9/KTM_Agnes Laurensia Latumeten_160221014.pdf', 'storage/pasFoto/PKM-Kewirausahaan/9/Foto_Agnes Laurensia Latumeten_160221014.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160221014', 13, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/13/KTM_Agnes Laurensia Latumeten_160221014.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/13/Foto_Agnes Laurensia Latumeten_160221014.png', 'agnes_latumeten03', '085343003555', NULL, NULL, NULL, NULL),
('160221016', 13, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/13/KTM_Christopher Bryan Winardi_160221016.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/13/Foto_Christopher Bryan Winardi_160221016.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160221019', 36, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/36/KTM_Athalia Beatrice Molianto_160221019.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/36/Foto_Athalia Beatrice Molianto_160221019.jpg', NULL, NULL, NULL, NULL, NULL, 'Kimia'),
('160221019', 87, 'Ketua', 'storage/ktm/Kompetisi MIPAS/87/KTM_Athalia Beatrice Molianto_160221019.pdf', 'storage/pasFoto/Kompetisi MIPAS/87/Foto_Athalia Beatrice Molianto_160221019.jpg', 'athalia0602', '089622282444', NULL, NULL, NULL, 'Kimia'),
('160221032', 34, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/34/KTM_Angela Cynthia Gunardi_160221032.pdf', 'storage/pasFoto/PKM-Karsa Cipta/34/Foto_Angela Cynthia Gunardi_160221032.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160221035', 16, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/16/KTM_Richky Andreas Lusman_160221035.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/16/Foto_Richky Andreas Lusman_160221035.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160221035', 56, 'Ketua', 'storage/ktm/Kompetisi MIPAS/56/KTM_Richky Andreas Lusman_160221035.pdf', 'storage/pasFoto/Kompetisi MIPAS/56/Foto_Richky Andreas Lusman_160221035.jpg', 'richky_34', '0895629417941', NULL, NULL, NULL, 'Matematika'),
('160221042', 15, 'Ketua', 'storage/ktm/Kompetisi MIPAS/15/KTM_Wisnu Wardana_160221042.pdf', 'storage/pasFoto/Kompetisi MIPAS/15/Foto_Wisnu Wardana_160221042.jpg', 'wardanae_', '087710558989', NULL, NULL, NULL, 'Biologi'),
('160221042', 16, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/16/KTM_Wisnu Wardana_160221042.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/16/Foto_Wisnu Wardana_160221042.jpg', 'wardanae_', '087710558989', NULL, NULL, NULL, NULL),
('160221042', 17, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/17/KTM_Wisnu Wardana_160221042.pdf', 'storage/pasFoto/PKM-Kewirausahaan/17/Foto_Wisnu Wardana_160221042.jpg', 'wardanae_', '087710558989', NULL, NULL, NULL, NULL),
('160222016', 93, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/93/KTM_TRENADIPRAMUDIA_160222016.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/93/Foto_TrenadiPramudia_160222016.jpg', 'wineren', '081549549932', NULL, NULL, NULL, NULL),
('160222019', 93, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/93/160222019_Valerie Giannetta_KTM.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/93/Foto_ValerieGiannetta_160222019.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160222020', 16, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/16/KTM_Laurensia Kayla Ofira_160222020.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/16/Foto_Laurensia Kayla Ofira_160222020.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160222026', 13, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/13/KTM_Bagas Habib Wardana_160222026.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/13/Foto_Bagas Habib Wardana_160222026.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160321009', 74, 'Ketua', 'storage/ktm/Video Digital Pendidikan/74/KTM_Yoseph_160321009.pdf', 'storage/pasFoto/Video Digital Pendidikan/74/Foto_Yoseph_160321009.jpg', 'swadhana834', '082154568822', NULL, NULL, NULL, NULL),
('160321010', 45, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/45/KTM_Michael Darmawan_160321010.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/45/Foto_Michael Darmawan_160321010.jpg', NULL, NULL, NULL, NULL, NULL, 'Statistika'),
('160321010', 62, 'Ketua', 'storage/ktm/Kompetisi MIPAS/62/KTM_Michael Darmawan_160321010.pdf', 'storage/pasFoto/Kompetisi MIPAS/62/Foto_Michael Darmawan_160321010.jpg', 'michael_darmawans', '081358683452', NULL, NULL, NULL, 'Statistika'),
('160321022', 45, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/45/KTM_Evelyn Thamrin_160321022.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/45/Foto_Evelyn Thamrin_160321022.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160321027', 45, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/45/KTM_Robby Chandra_160321027.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/45/Foto_Robby Chandra_160321027.jpg', 'elijahcj7', '0895342815678', NULL, NULL, NULL, NULL),
('160321042', 74, 'Anggota', 'storage/ktm/Video Digital Pendidikan/74/KTM_Gregorius Gabriel_160321042.pdf', 'storage/pasFoto/Video Digital Pendidikan/74/Foto_Gregorius Gabriel_160321042.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160321042', 121, 'Ketua', 'storage/ktm/PKM-Riset Sosial Humaniora/121/KTM_Gregorius Gabriel_160321042.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/121/Foto_Gregorius Gabriel_160321042.jpg', 'gregorius_id', '085338620068', NULL, NULL, NULL, NULL),
('160321043', 45, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/45/KTM_angela Carla_160321043.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/45/Foto_Angela Carla_160321043.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160321043', 74, 'Anggota', 'storage/ktm/Video Digital Pendidikan/74/KTM_angela Carla_160321043.pdf', 'storage/pasFoto/Video Digital Pendidikan/74/Foto_Angela Carla_160321043.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160322021', 45, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/45/KTM_Brenda Noviarista Budiasih_160322021.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/45/Foto_Brenda Noviarista Budiasih_160322021.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160322035', 177, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('160322045', 177, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('160322082', 47, 'Anggota', 'storage/ktm/Debat Indonesia/47/KTM_PUJIANA KUMALASARI_160322082.pdf', 'storage/pasFoto/Debat Indonesia/47/Foto_PUJIANA KUMALASARI_160322082.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160419084', 88, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/88/KTM_Amirullah Achmad Nassardhi_160419084.pdf', 'storage/pasFoto/PKM-Karsa Cipta/88/Foto_Amirullah Achmad Nassardhi_160419084.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160420077', 26, 'Ketua', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/26/KTM_Muhammad Ikhsan_160420077.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/26/Foto_Muhammad Ikhsan_160420077.jpg', 'iksan86273', '081222667763', NULL, NULL, NULL, NULL),
('160421024', 40, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/40/ktm_Darren Kristian Utama.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/40/pasfoto4x6_Darren Kristian.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160421056', 66, 'Ketua', 'storage/ktm/Debat Indonesia/66/KTM_Michael_160421056.pdf', 'storage/pasFoto/Debat Indonesia/66/Foto_Michael_160421056.jpg', 'imrmt2502', '081217697170', NULL, NULL, NULL, NULL),
('160421068', 74, 'Anggota', 'storage/ktm/Video Digital Pendidikan/74/KTM_Maahirah Nasywa_160421068.pdf', 'storage/pasFoto/Video Digital Pendidikan/74/Foto_Maahirah Nasywa Elfiana Putri_160421068.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160421089', 88, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/88/KTM_Robert_160421089.pdf', 'storage/pasFoto/PKM-Karsa Cipta/88/Foto_Robert_160421089.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160421101', 178, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('160421117', 84, 'Ketua', 'storage/ktm/Kompetisi MIPAS/84/KTM_Valentino Ruslam_160421117.pdf', 'storage/pasFoto/Kompetisi MIPAS/84/Foto_Valentino Ruslam_160421117.jpg', 'valentino.ruslam', '082190511600', NULL, NULL, NULL, 'Statistika'),
('160422038', 28, 'Ketua', 'storage/ktm/Kompetisi MIPAS/28/KTM_James Edward S_160422038.pdf', 'storage/pasFoto/Kompetisi MIPAS/28/Foto_James Edward S_160422038.jpg', 'jamesedward_s', '081931620392', NULL, NULL, NULL, 'Matematika'),
('160422128', 132, 'Anggota', 'storage/ktm/Video Digital Pendidikan/132/KTM_Erlangga Deanda Chandra Setya_160422128.pdf', 'storage/pasFoto/Video Digital Pendidikan/132/Foto_Erlangga Deanda Chandra Setya_160422128.png', NULL, NULL, NULL, NULL, NULL, NULL),
('160721042', 93, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/93/160721042_Jassica Maharani_KTM.pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/93/Foto_JassicaMaharani_160721042.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160721045', 88, 'Ketua', 'storage/ktm/PKM-Karsa Cipta/88/KTM_Muhammad Oktaryano Ramadhan_160721045.pdf', 'storage/pasFoto/PKM-Karsa Cipta/88/Foto_Muhammad Oktaryano Ramadhan_160721045.jpg', 'hiryyan', '085646046061', NULL, NULL, NULL, NULL),
('160821003', 132, 'Ketua', 'storage/ktm/Video Digital Pendidikan/132/KTM_Richard Nathanael Widagdo_160821003.pdf', 'storage/pasFoto/Video Digital Pendidikan/132/Foto_Richard Nathanael Widagdo_160821003.jpg', 'richardnwidagdo', '081260644333', NULL, NULL, NULL, NULL),
('160821004', 93, 'Anggota', 'storage/ktm/PKM-Riset Sosial Humaniora/93/KTM_MELISSA VERONICA_160821004.Pdf', 'storage/pasFoto/PKM-Riset Sosial Humaniora/93/Foto_MelissaVeronica_160821004.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160822001', 132, 'Anggota', 'storage/ktm/Video Digital Pendidikan/132/KTM_Sean Andrew Ristyaputra_160822001.pdf', 'storage/pasFoto/Video Digital Pendidikan/132/Foto_Sean Andrew Ristyaputra_160822001.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('160822027', 132, 'Anggota', 'storage/ktm/Video Digital Pendidikan/132/KTM_Nabila Nur Maajida_160822027.pdf', 'storage/pasFoto/Video Digital Pendidikan/132/Foto_Nabila Nur Maajida_160822027.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('161020003', 128, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/128/KTM_Laksana_161020003.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/128/Foto_Laksana_161020003.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('161020003', 129, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/129/KTM_Laksana_161020003.pdf', 'storage/pasFoto/PKM-Karsa Cipta/129/Foto_Laksana_161020003.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('161020007', 128, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/128/KTM_Timotius_161020007.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/128/Foto_Timotius_161020007.jpg', 'timotiusicewizard', '089515984663', NULL, NULL, NULL, NULL),
('161020007', 129, 'Ketua', 'storage/ktm/PKM-Karsa Cipta/129/KTM_Timotius_161020007.pdf', 'storage/pasFoto/PKM-Karsa Cipta/129/Foto_Timotius_161020007.jpg', 'timotiusicewizard', '089515984663', NULL, NULL, NULL, NULL),
('161020011', 167, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161021002', 167, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161021003', 128, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/128/KTM_Justyn_161021003.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/128/Foto_Justyn_161021003.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('161021003', 129, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/129/KTM_Justyn_161021003.pdf', 'storage/pasFoto/PKM-Karsa Cipta/129/Foto_Justyn_161021003.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('161021004', 169, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161021005', 174, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161021006', 167, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161021008', 174, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161021009', 173, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161021010', 166, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161021013', 166, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161021014', 169, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161021018', 173, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161021019', 173, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161022001', 4, 'Ketua', 'storage/ktm/Kompetisi MIPAS/4/KTM_Angeline Arista_161022001.pdf', 'storage/pasFoto/Kompetisi MIPAS/4/Foto_Angeline Arista_161022001.jpg', 'aristaangeline', '085745258888', NULL, NULL, NULL, 'Matematika'),
('161022006', 169, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161022007', 173, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161022008', 173, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161022011', 169, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161022021', 166, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('161022025', 174, 'Anggota', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('170120024', 85, 'Ketua', 'storage/ktm/Kompetisi MIPAS/85/KTM_Eleonora Jessica_170120024.pdf', 'storage/pasFoto/Kompetisi MIPAS/85/Foto_Eleonora Jessica_170120024.jpg', 'ele.jessica', '083849798015', NULL, NULL, NULL, 'Biologi'),
('170120024', 92, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/92/KTM_Eleonora_170120024.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/92/Foto_Eleonora_170120024.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('170120024', 160, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('170120040', 59, 'Anggota', 'storage/ktm/Debat Inggris/59/KTM_Dennis Mitchel_170120040.pdf', 'storage/pasFoto/Debat Inggris/59/foto_Dennis Mitchel_170120040.png', NULL, NULL, NULL, NULL, NULL, NULL),
('170120040', 179, 'Ketua', 'empty', 'empty', NULL, NULL, NULL, NULL, NULL, NULL),
('170121016', 153, 'Ketua', 'storage/ktm/Pilmapres/153/KTMKTP-MP_Nicholas_170121016.pdf', 'storage/pasFoto/Pilmapres/153/PasFotoMP_Nicholas_170121016.png', 'nicholas.andy', '081238309857', 'storage/rekapIPK/Pilmapres/153/Transkrip_Nicholas_170121016.pdf', 'storage/borang/Pilmapres/153/BPMP_Nicholas_170121016.pdf', 'storage/daftarPrestasi/Pilmapres/153/PrestasiMP_Nicholas_170121016.pdf', NULL),
('170121022', 92, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/92/KTM_IvanEdmundo_170121022.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/92/Foto_Ivan_170121022.jpg', 'ivan11122003', '081332333400', NULL, NULL, NULL, NULL),
('170121024', 136, 'Ketua', 'storage/ktm/Kompetisi MIPAS/136/120517.jpg', 'storage/pasFoto/Kompetisi MIPAS/136/486.JPG', 'yanfeisimp', '082334997080', NULL, NULL, NULL, 'Biologi'),
('170122002', 154, 'Ketua', 'storage/ktm/Kompetisi MIPAS/154/KTM_Stefan Saputra Sugiarno_170122002.pdf', 'storage/pasFoto/Kompetisi MIPAS/154/STEFAN 4 x6.jpg', 'stefansugiarno', '081350500980', NULL, NULL, NULL, 'Matematika'),
('170122003', 92, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/92/KTM_Melinda_170122003.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/92/Foto_Melinda Surya Sutedjo_170122003.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('170122005', 64, 'Ketua', 'storage/ktm/Kompetisi MIPAS/64/KTM_Nicholas Patrick Tjahjono_170122005.pdf', 'storage/pasFoto/Kompetisi MIPAS/64/Foto_Nicholas Patrick Tjahjono_170122005.jpg', 'nicholaspat', '087856409615', NULL, NULL, NULL, 'Biologi'),
('170122010', 63, 'Ketua', 'storage/ktm/Debat Inggris/63/KTM_Benedictus Kevin_170122010.pdf', 'storage/pasFoto/Debat Inggris/63/Foto_Benedictus Kevin_170122010.jpg', 'kochengorenz69', '082233492565', NULL, NULL, NULL, NULL),
('170122010', 101, 'Ketua', 'storage/ktm/Debat Indonesia/101/KTM_Benedictus Kevin_170122010.pdf', 'storage/pasFoto/Debat Indonesia/101/Foto_Benedictus Kevin_170122010.jpg', 'kochengorenz69', '082233492565', NULL, NULL, NULL, NULL),
('170122027', 92, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/92/KTM_Priska_170122027.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/92/Foto 4x6_Priska_170122027_page-0001.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('170122028', 94, 'Anggota', 'storage/ktm/Debat Inggris/94/KTM_Ian Elmer Giosia Fonataba_170122028.pdf', 'storage/pasFoto/Debat Inggris/94/Foto_Ian Elmer Giosia Fonataba_1701220128.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('170122029', 66, 'Anggota', 'storage/ktm/Debat Indonesia/66/KTM_Tsania_170122029.pdf', 'storage/pasFoto/Debat Indonesia/66/Foto_Tsania_170122029.PNG', NULL, NULL, NULL, NULL, NULL, NULL),
('170122032', 63, 'Anggota', 'storage/ktm/Debat Inggris/63/KTM_Nur Nafisa Maulidina_170122010.pdf', 'storage/pasFoto/Debat Inggris/63/Foto_Nur Nafisa Maulidina_170122032.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('170122032', 101, 'Anggota', 'storage/ktm/Debat Indonesia/101/KTM_Nur Nafisa Maulidina_170122010.pdf', 'storage/pasFoto/Debat Indonesia/101/Foto_Nur Nafisa Maulidina_170122032.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('170122034', 94, 'Ketua', 'storage/ktm/Debat Inggris/94/KTM_Timothy Amadeus Filhend Plessers_170122034.pdf', 'storage/pasFoto/Debat Inggris/94/Foto_Timothy Amadeus Filhend Plessers_170122034.jpg', 't1m0thy4m4deus', '08113541918', NULL, NULL, NULL, NULL),
('170122035', 110, 'Ketua', 'storage/ktm/Video Digital Pendidikan/110/KTM_Kerenhapukh_170122035.pdf', 'storage/pasFoto/Video Digital Pendidikan/110/Foto_Kerenhapukh_170122035.png', 'keke1684', '082139809870', NULL, NULL, NULL, NULL),
('170122036', 110, 'Anggota', 'storage/ktm/Video Digital Pendidikan/110/KTM_Kartika_170122036.pdf', 'storage/pasFoto/Video Digital Pendidikan/110/Foto_Kartika_170122036.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('170122042', 110, 'Anggota', 'storage/ktm/Video Digital Pendidikan/110/KTM_Moren_170122042.pdf', 'storage/pasFoto/Video Digital Pendidikan/110/Foto_Moren_170122042.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('170222008', 110, 'Anggota', 'storage/ktm/Video Digital Pendidikan/110/KTM_Verena_120222008.pdf', 'storage/pasFoto/Video Digital Pendidikan/110/Foto_Verena_170222008.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('170222009', 92, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/92/KTM_Anastasia Grace S_170222009.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/92/Foto_Anastasia Grace S_170222009.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('180120009', 126, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/126/KTM_WILSON TAKHTA_180120009.pdf', 'storage/pasFoto/PKM-Kewirausahaan/126/FOTO_WILSON TAKHTA_180120009.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('180120020', 10, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/10/KTM_Clara A.F._180120020.pdf', 'storage/pasFoto/PKM-Kewirausahaan/10/Foto_Clara A.F._180120020.png', NULL, NULL, NULL, NULL, NULL, NULL),
('180120043', 10, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/10/KTM_Misa Zurinney A.M._180120043.pdf', 'storage/pasFoto/PKM-Kewirausahaan/10/Foto_Misa Zurinney A.M._180120043.png', NULL, NULL, NULL, NULL, NULL, NULL),
('180120048', 10, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/10/KTM_Nasihatul Fadhilah_180120048.pdf', 'storage/pasFoto/PKM-Kewirausahaan/10/Foto_Nasihatul Fadhilah_180120048.png', NULL, NULL, NULL, NULL, NULL, NULL),
('180121002', 39, 'Anggota', 'storage/ktm/Video Digital Pendidikan/39/KTM_ELIZABETH PATRICIA_180121002.pdf', 'storage/pasFoto/Video Digital Pendidikan/39/Foto_ELIZABETH PATRICIA_180121002.PNG', NULL, NULL, NULL, NULL, NULL, NULL),
('180121010', 39, 'Anggota', 'storage/ktm/Video Digital Pendidikan/39/KTM_KEZIA JENNIFER KURNIA_180121010.pdf', 'storage/pasFoto/Video Digital Pendidikan/39/Foto_KEZIA JENNIFER KURNIA_180121010.png', NULL, NULL, NULL, NULL, NULL, NULL),
('180121011', 39, 'Anggota', 'storage/ktm/Video Digital Pendidikan/39/KTM_THERESIA TIFANNY_180121011.pdf', 'storage/pasFoto/Video Digital Pendidikan/39/Foto_THERESIA TIFANNY_180121011.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('180121026', 39, 'Ketua', 'storage/ktm/Video Digital Pendidikan/39/KTM_LORENZA MICHELLE SOEMOLANG_180121026.pdf', 'storage/pasFoto/Video Digital Pendidikan/39/foto_LORENZA MICHELLE SOEMOLANG_180121026.PNG', 'lorenza_michelle', '0882009669276', NULL, NULL, NULL, NULL),
('180122003', 10, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/10/KTM_Jennyfer Bless_180122003.pdf', 'storage/pasFoto/PKM-Kewirausahaan/10/Foto_Jennyfer Bless_180122003.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('180122009', 10, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/10/KTM_Amelia Margaretha S._180122009.pdf', 'storage/pasFoto/PKM-Kewirausahaan/10/Foto_Amelia Margaretha S._180122009.png', 'amelia.ms', '085257461125', NULL, NULL, NULL, NULL),
('180122011', 123, 'Anggota', 'storage/ktm/PKM-Karsa Cipta/123/KTM_Kezia Aurelia_180122011.pdf', 'storage/pasFoto/PKM-Karsa Cipta/123/Foto_Kezia Aurelia_180122011.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('180122017', 126, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/126/KTM_MATTHEW CHRISTIAN_180122017.pdf', 'storage/pasFoto/PKM-Kewirausahaan/126/FOTO_MATTHEW CHRISTIAN_180122017.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('180122046', 99, 'Ketua', 'storage/ktm/Kompetisi MIPAS/99/KTM_PeterHanselKomandjaja_180122046.pdf', 'storage/pasFoto/Kompetisi MIPAS/99/Foto_PeterHanselKomandjaja_180122046.jpg', 'ptrkoo725', '082114432620', NULL, NULL, NULL, 'Kimia'),
('180122050', 126, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/126/KTM_BRILLIANT ALBERT ANGSTEIN_180122050.pdf', 'storage/pasFoto/PKM-Kewirausahaan/126/FOTO_BRILLIANT ALBERT ANGSTEIN_180122050.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('180122058', 126, 'Anggota', 'storage/ktm/PKM-Kewirausahaan/126/KTM_MUHAMMAD ISRA ALFAJRI_180122058.pdf', 'storage/pasFoto/PKM-Kewirausahaan/126/FOTO_MUHAMMAD ISRA ALFAJRI_180122058.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('180122062', 126, 'Ketua', 'storage/ktm/PKM-Kewirausahaan/126/KTM_CAROLAN LEONANDO HARIANTO_180122062.pdf', 'storage/pasFoto/PKM-Kewirausahaan/126/FOTO_CAROLAN LEONANDO HARIANTO_180122062.jpg', 'rolan6969', '082339474742', NULL, NULL, NULL, NULL),
('180220001', 108, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/108/KTM_Melinda Pranata_180220001.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/108/Foto_Melinda Pranata_180220001.jpeg', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user_details` (`nrp`, `teams_id`, `role`, `id_card`, `self_photo`, `line`, `phone_number`, `gpa_recap`, `borang`, `achievement_list`, `competition_type`) VALUES
('180222001', 106, 'Ketua', 'storage/ktm/Kompetisi MIPAS/106/KTM_Jacqueline Sharon Susilo_180222001.pdf', 'storage/pasFoto/Kompetisi MIPAS/106/Foto_Jacqueline Sharon Susilo_180222001.jpg', 'jacquelinesharons', '087781006494', NULL, NULL, NULL, 'Biologi'),
('180222007', 108, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/108/KTM_Lupita Nathania_180222007.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/108/Foto_Lupita Nathania_180222007.jpeg', NULL, NULL, NULL, NULL, NULL, NULL),
('180222031', 108, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/108/KTM_Neva Nurisya Aqmarina_180222031.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/108/Foto_Neva Nurisya Aqmarina_180222031.jpeg', 'nevasyaa_', '0895704381275', NULL, NULL, NULL, NULL),
('180222037', 108, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/108/KTM_Abidah Ardelia_180222037.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/108/Foto_Abidah Ardelia_180222037.jpeg', NULL, NULL, NULL, NULL, NULL, NULL),
('190120019', 114, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/114/KTM_YULITA PUTRI MENING CHANDRA_190120019.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/114/FOTO-YULITA PUTRI MENING CHANDRA_190120019.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('190120021', 114, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/114/KTM_VERA NOVALITA_190120021.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/114/FOTO_VERA NOVALITA_190120021.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('190120030', 114, 'Ketua', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/114/KTM_DHITA MUMPUNI SAMUDRA PRAHARSI_190120030.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/114/FOTO_DHITA MUMPUNI SAMUDRA PRAHARSI_190120030.jpg', 'dhitaaaamsp', '085707416682', NULL, NULL, NULL, NULL),
('190121005', 147, 'Ketua', 'storage/ktm/Debat Inggris/147/KTM_Jeremy Amadeus Angjaya _190121005.pdf', 'storage/pasFoto/Debat Inggris/147/Foto_Jeremy Amadeus Angjaya_190121005.jpg', 'jeremyaa03', '081230055872', NULL, NULL, NULL, NULL),
('190121021', 95, 'Ketua', 'storage/ktm/Debat Indonesia/95/KTM_Yuwanda Lani Kasari_190121021.pdf', 'storage/pasFoto/Debat Indonesia/95/Foto_Yuwanda Lani Kasari_190121021.jpg', 'wan.2808', '085236922940', NULL, NULL, NULL, NULL),
('190121035', 103, 'Ketua', 'storage/ktm/Kompetisi MIPAS/103/KTM_MONICA SALZHA AZ ZAHRA_190121035.pdf', 'storage/pasFoto/Kompetisi MIPAS/103/FOTO_MONICA SALZHA AZ ZAHRA_190121035.JPG', 'cyaaaa16', '081245565299', NULL, NULL, NULL, 'Matematika'),
('190121041', 54, 'Ketua', 'storage/ktm/Kompetisi MIPAS/54/KTM_Annora Meilya S_190121041.pdf', 'storage/pasFoto/Kompetisi MIPAS/54/Foto_Annora Meilya_190121041.jpg', 'rarannora123', '081333538707', NULL, NULL, NULL, 'Matematika'),
('190121044', 147, 'Anggota', 'storage/ktm/Debat Inggris/147/KTM_Brian Krista Pradana_190121044.pdf', 'storage/pasFoto/Debat Inggris/147/Foto_Brian Krista Pradana_190121044.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('190121046', 114, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/114/KTM_RATU ANGGAWATA KEPAKISAN_190121046.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/114/FOTO_RATU ANGGAWATA KEPAKISAN_190121046.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('190121057', 114, 'Anggota', 'storage/ktm/PKM-Pengabdian Kepada Masyarakat/114/KTM_MOH. SULTAN TAKBIR ALISYAHBANA_190121057.pdf', 'storage/pasFoto/PKM-Pengabdian Kepada Masyarakat/114/FOTO_MOH. SULTAN TAKBIR ALISYAHBANA_190121057.jpg', NULL, NULL, NULL, NULL, NULL, 'Biologi'),
('190121057', 149, 'Ketua', 'storage/ktm/Kompetisi MIPAS/149/KTM_MOH. SULTAN TAKBIR ALISYAHBANA_190121057.pdf', 'storage/pasFoto/Kompetisi MIPAS/149/FOTO_MOH. SULTAN TAKDIR ALISYAHBANA_190121057.jpg', 'sultan191003', '085810359564', NULL, NULL, NULL, 'Biologi'),
('190122009', 38, 'Ketua', 'storage/ktm/Debat Indonesia/38/KTM_FajarAushafaWardhana_190122009.pdf', 'storage/pasFoto/Debat Indonesia/38/1668559131728.jpg', 'fajarwardhanaaa', '081325010362', NULL, NULL, NULL, NULL),
('190122012', 102, 'Anggota', 'storage/ktm/Video Digital Pendidikan/102/KTM_Dhaneandini Nabila Sumarlis_190122012.pdf', 'storage/pasFoto/Video Digital Pendidikan/102/Foto_Dhaneandini-Nabila-Sumarlis_190122012.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('190122023', 102, 'Anggota', 'storage/ktm/Video Digital Pendidikan/102/KTM_Bagas Prayoga Setya Budi_190122023.pdf', 'storage/pasFoto/Video Digital Pendidikan/102/Foto_Bagas Prayoga Setya Budi_190122023.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('190122024', 11, 'Ketua', 'storage/ktm/Kompetisi MIPAS/11/KtM_umy Nurlaelatus Sholeha_190122024.pdf', 'storage/pasFoto/Kompetisi MIPAS/11/FOTO_UMY NURLAELATUS SHOLEHA_190122024.jpg', 'laelaans_', '087853228483', NULL, NULL, NULL, 'Statistika'),
('190122035', 102, 'Ketua', 'storage/ktm/Video Digital Pendidikan/102/KTM_Chaidir Ivan harahap_190122035.pdf', 'storage/pasFoto/Video Digital Pendidikan/102/Foto_Chaidir Ivan Harahap_190122035.jpg', 'ivan1434', '085376703947', NULL, NULL, NULL, NULL),
('190122036', 116, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/116/KTM_Ivana Alodia Putri_190122036.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/116/Foto_Ivana Alodia Putri_190122036.JPG', NULL, NULL, NULL, NULL, NULL, NULL),
('190122039', 95, 'Anggota', 'storage/ktm/Debat Indonesia/95/KTM_laurens rangga_190122039.pdf', 'storage/pasFoto/Debat Indonesia/95/Foto_Laurens Rangga Dima_190122039.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('190122041', 102, 'Anggota', 'storage/ktm/Video Digital Pendidikan/102/KTM_Petrychia Angela Fernanda_190122041.pdf', 'storage/pasFoto/Video Digital Pendidikan/102/Foto_Petrychia Angela Fernanda_190122041.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('190122057', 116, 'Anggota', 'storage/ktm/Karya Tulis Ilmiah/116/KTM_Sang Ayu Bulan Dirga Pradnyani_190122057.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/116/Foto_Sang Ayu Bulan Dirga Pradnyani_190122057.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('190122058', 116, 'Ketua', 'storage/ktm/Karya Tulis Ilmiah/116/KTM_Anak Agung Nissa Maheswari_190122058.pdf', 'storage/pasFoto/Karya Tulis Ilmiah/116/Foto_Anak Agung Nissa Maheswari_190122058.jpg', 'geknissa1', '087898938331', NULL, NULL, NULL, NULL),
('190122073', 38, 'Anggota', 'storage/ktm/Debat Indonesia/38/KTM_NatassyaDamara_190122073.jpg', 'storage/pasFoto/Debat Indonesia/38/1668559131554.jpg', NULL, NULL, NULL, NULL, NULL, NULL),
('190122077', 30, 'Ketua', 'storage/ktm/Kompetisi MIPAS/30/KTM_Airlangga Rafi Indaryanto_190122077.pdf', 'storage/pasFoto/Kompetisi MIPAS/30/Foto_Airlangga Rafi Indaryanto_190122077.jpg', 'airlanggarafi', '088236257784', NULL, NULL, NULL, 'Fisika'),
('190122080', 145, 'Ketua', 'storage/ktm/Kompetisi MIPAS/145/KTM_Jennifer Soo Hui En_190122080.pdf', 'storage/pasFoto/Kompetisi MIPAS/145/Foto_Jennifer Soo Hui En _190122080.JPG', 'soohui', '087854944410', NULL, NULL, NULL, 'Kimia');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `competition_categories`
--
ALTER TABLE `competition_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`,`teams_id`,`competition_categories_id`),
  ADD KEY `fk_submissions_teams1_idx` (`teams_id`,`competition_categories_id`);

--
-- Indeks untuk tabel `submission_dates`
--
ALTER TABLE `submission_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`,`competition_categories_id`),
  ADD KEY `fk_teams_competition_categories1_idx` (`competition_categories_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nrp`);

--
-- Indeks untuk tabel `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`nrp`,`teams_id`),
  ADD KEY `fk_detail_user_user1_idx` (`nrp`),
  ADD KEY `fk_user_details_teams1_idx1` (`teams_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `competition_categories`
--
ALTER TABLE `competition_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `dates`
--
ALTER TABLE `dates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `submission_dates`
--
ALTER TABLE `submission_dates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `fk_submissions_teams1` FOREIGN KEY (`teams_id`,`competition_categories_id`) REFERENCES `teams` (`id`, `competition_categories_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `fk_detail_user_user1` FOREIGN KEY (`nrp`) REFERENCES `users` (`nrp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_details_teams1` FOREIGN KEY (`teams_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
