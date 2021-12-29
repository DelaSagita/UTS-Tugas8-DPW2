-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2021 at 07:19 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utsdela`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `write` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `id_user`, `title`, `write`, `description`, `created_at`, `updated_at`) VALUES
(30, 8, 'Hometown Cha-cha-cha', 'dela sagita', 'Hometown Cha-cha-cha menjadi drama Korea romantis yang ramai dibicarakan pada tahun ini. Homcha sukses meraih rating rata-rata 12,6 persen.\r\nDrama Korea ini berkisah tentang Yoon Hye Jin (Shin Min Ah), dokter gigi yang pindah dari Seoul ke Desa Gongjin di pesisir pantai. Di sana, ia beradaptasi dengan warga desa yang serba konvensional.\r\nKehadirannya juga menjadi cerita baru untuk Hong Du Sik (Kim Seon Ho), pemuda multi talenta yang menyimpan rahasia masa lalu kelam. Drama Korea ini sukses menjadi perbincangan selama penayangannya.', '2021-12-20 07:13:12', '2021-12-20 07:13:12'),
(31, 8, 'My Girlfriend Is a Gumiho', 'dela sagita', 'Bunda yang ingin kembali menyaksikan akting Shin Min Ah bisa melihatnya sebagai gumiho. Kali ini ada kisah romantis antara manusia dan siluman rubah. Aktris Shin Min Ah yang beradu akting dengan Lee Seung Gi membuat drama Korea My Girlfriend Is a Gumiho meraih rating 15 persen.', '2021-12-20 07:13:41', '2021-12-20 07:13:41'),
(32, 8, 'Descendants of the Sun', 'dela sagita', 'Drama Korea yang tayang pada 2014 ini meraih rating 26,3 persen. Descendants of the Sun menjadi titik awal perjalanan cinta pasangan fenomenal Song Song Couple.\r\nAdu peran Song Joong Ki dan Song Hye Kyo di drama tersebut sukses bikin baper pada masanya. Di drama Korea ini, mereka berperan sebagai pasangan tentara dan dokter yang bertugas di medan perang.', '2021-12-20 07:14:02', '2021-12-20 07:14:02'),
(33, 8, 'Crash Landing On You', 'dela sagita', 'Crash Landing On You dibintangi oleh Son Ye Jin dan Hyun Bin dan meraih rating 12,1 persen. Drama Korea ini menyajikan kisah romantis yang terjadi di daerah penuh konflik.\r\nBanyak selebriti Indonesia yang ketagihan drama ini lho Bunda. Sama seperti Descendants of the Sun, drama Korea ini juga mengusung tema militer yang dibalut dengan nuansa romantis.', '2021-12-20 07:14:38', '2021-12-20 07:14:38'),
(34, 8, 'Love Alarm', 'dela sagita', 'Love Alarm mencetak rating 7.1/10. Serial romantis ini berkisah tentang aplikasi yang mampu mendeteksi keberadaan orang yang menyukai kita. Love Alarm dibintangi oleh Song Kang, Kim So Hyun, hingga Jung Ga Ram.', '2021-12-20 07:15:50', '2021-12-20 07:15:50'),
(35, 9, 'Mr Queen', 'dela drama 2', 'Mr Queen berkisah tentang koki dari zaman modern yang terjebak di tubuh ratu Dinasti Joseon. Drama ini dibintangi oleh Kim Jung Hyun dan Shin Hye Sun. Mr Queen sukses meraih rating 12,5 persen dan menjadi drama Korea saeguk yang populer di awal 2021.', '2021-12-20 07:23:25', '2021-12-20 07:23:25'),
(36, 9, 'The Tale of a Gumiho', 'dela drama 2', 'Satu lagi drama Korea tentang gumiho. Bedanya, gumiho di sini diperankan oleh aktor tampan Lee Dong Wook. Ia beradu akting dengan Jo Bo Ah di drama Korea The Tale of a Gumiho yang mencetak rating 8/10 di IMDb.', '2021-12-20 07:23:48', '2021-12-20 07:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `coment`
--

CREATE TABLE `coment` (
  `id` int(11) NOT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coment`
--

INSERT INTO `coment` (`id`, `isi`, `nama`, `created_at`, `updated_at`) VALUES
(29, 'bagus banget alusr cerita drama ini', 'dela sagita', '2021-12-20 07:24:29', '2021-12-20 07:24:29'),
(30, 'iya sama nih', 'dela', '2021-12-20 07:25:02', '2021-12-20 07:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'dela sagita', 'delasagita@gmail.com', 'dela sagita', '$2y$10$/dvmUjlckgcZoZzNptlBEeUIg1dx9IwJsaeqI2oXmfderhIp/FJvC', NULL, '2021-12-20 07:09:26', '2021-12-20 07:09:26'),
(9, 'dela 2', 'dela2@gmail.com', 'dela 2', '$2y$10$SD666gcVzsfM//IEzqwbIe27woBOLinaj8PKWS.FW592EOOygyV2G', NULL, '2021-12-20 07:22:46', '2021-12-20 07:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 3, '089689203086', '2021-11-13 22:47:36', '2021-11-13 22:47:36'),
(2, 4, '089689203086', '2021-11-15 05:38:12', '2021-11-15 05:38:12'),
(4, 6, NULL, '2021-11-16 23:42:47', '2021-11-16 23:42:47'),
(5, 7, '089689203086', '2021-11-16 23:44:43', '2021-11-16 23:44:43'),
(6, 5, '089689203086', '2021-11-18 00:41:24', '2021-11-18 00:41:24'),
(7, 6, NULL, '2021-12-19 06:01:45', '2021-12-19 06:01:45'),
(8, 7, NULL, '2021-12-19 06:28:18', '2021-12-19 06:28:18'),
(9, 8, NULL, '2021-12-20 07:09:26', '2021-12-20 07:09:26'),
(10, 9, NULL, '2021-12-20 07:22:46', '2021-12-20 07:22:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coment`
--
ALTER TABLE `coment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `coment`
--
ALTER TABLE `coment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
