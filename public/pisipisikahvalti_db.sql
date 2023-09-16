-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 01, 2023 at 02:35 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pisipisikahvalti_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `lang`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'TR', 'Kahvaltı', 'kahvalti-424x360.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(2, 'TR', 'Gözlemeler', 'gozlemeler.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(3, 'TR', 'Yumurtalar', 'egges.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(4, 'TR', 'Omletler', 'omeletler.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(5, 'TR', 'Menemen', 'Menemen.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(6, 'TR', 'Aperatifler', 'Aperatifler.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(7, 'TR', 'Peynirler', 'Peynirler.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(8, 'TR', 'Ekmekler', 'Ekmekler.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(9, 'TR', 'Reçeller', 'Receller.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(10, 'TR', 'Detoks', 'Detoks.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(11, 'TR', 'Meyve Suyu', 'Meyve Suyu.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(12, 'TR', 'SICAK İÇECEKLER', 'Caylar.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(13, 'TR', 'Meşrubat', 'Mesrubat.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(14, 'TR', 'Limontalar', 'Limontalar.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(15, 'TR', 'Kahveler', 'Nescafe.png', '2023-08-31 20:21:56', '2023-08-31 20:21:56'),
(16, 'EN', 'Breakfast', 'kahvalti-424x360.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(17, 'EN', 'Gozlemes', 'gozlemeler.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(18, 'EN', 'EGGS', 'egges.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(19, 'EN', 'OMELETTES', 'omeletler.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(20, 'EN', 'MENEMENS', 'Menemen.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(21, 'EN', 'SNACKS', 'Aperatifler.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(22, 'EN', 'CHEESES', 'Peynirler.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(23, 'EN', 'BREADS', 'Ekmekler.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(24, 'EN', 'JAMS', 'Receller.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(25, 'EN', 'DETOKSES', 'Detoks.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(26, 'EN', 'Fruit Juice', 'Meyve Suyu.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(27, 'EN', 'HOT DRINKS', 'Caylar.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(28, 'EN', 'SOFT DRINKS', 'Mesrubat.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(29, 'EN', 'LEMONADES', 'Limontalar.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(30, 'EN', 'Coffee', 'Nescafe.png', '2023-08-31 20:23:47', '2023-08-31 20:23:47'),
(31, 'AR', 'إفطار', 'kahvalti-424x360.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(32, 'AR', 'الجوزلمة التركية', 'gozlemeler.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(33, 'AR', 'البيض', 'egges.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(34, 'AR', 'اومليت', 'omeletler.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(35, 'AR', 'شكشوكة', 'Menemen.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(36, 'AR', 'وجبات خفيفة', 'Aperatifler.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(37, 'AR', 'الأجبان (كغ)', 'Peynirler.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(38, 'AR', 'الخبز', 'Ekmekler.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(39, 'AR', 'المربى (كغ)', 'Receller.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(40, 'AR', 'عصائر الديتوكس الصحية', 'Detoks.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(41, 'AR', 'العصائر الطازجة', 'Meyve Suyu.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(42, 'AR', 'المشروبات الساخنة', 'Caylar.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(43, 'AR', 'المشروبات الغازية', 'Mesrubat.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(44, 'AR', 'المشروبات', 'Limontalar.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53'),
(45, 'AR', 'قهوة', 'Nescafe.png', '2023-08-31 20:25:53', '2023-08-31 20:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE `lists` (
  `id` bigint UNSIGNED NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentHeader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contentBody` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`id`, `lang`, `title`, `contentHeader`, `contentBody`, `price`, `image`, `type`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'TR', 'KAHVALTI', 'Sınırsız Serpme Kahvaltı', '(söğüş tabağı,menemen,gözleme,bazlama,5 çeşit peynir,erzincan tulum peyniri,tahin pekmez,bal kaymak,antakyadan halhal zeytini,yeşil zeytin,siyah zeytin,sahine,acuka,pişi,cunda ezmesi,girit peynir topları,25 çeşit el yapımı recel,bergamotlu demlik çay,edirne kasap sucuğu,)', 295, 'kahvalti-424x360.png', 1, 1, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(2, 'TR', 'GÖZLEMELER', 'Peynirli Gözleme', '', 115, 'Ekmek.png', 0, 2, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(3, 'TR', 'GÖZLEMELER', 'Patatesli Gözleme', '', 115, 'ekmek2.png', 0, 2, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(4, 'TR', 'GÖZLEMELER', 'Ispanaklı Gözleme', '', 115, 'ekmek3.png', 0, 2, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(5, 'TR', 'GÖZLEMELER', 'Kaşarlı Gözleme', '', 115, 'ekmek4.png', 0, 2, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(6, 'TR', 'GÖZLEMELER', 'Sucuklu Gözleme', '', 140, 'ekmek5.png', 0, 2, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(7, 'TR', 'GÖZLEMELER', 'Sucuklu Kaşarlı Gözleme', '', 160, 'ekmek6.png', 0, 2, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(8, 'TR', 'GÖZLEMELER', 'Pastırma Gözleme', '', 145, 'PastirmaliGozleme.png', 0, 2, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(9, 'TR', 'GÖZLEMELER', 'Kavurmalı Gözleme', '', 145, 'KavurmaliGozleme.png', 0, 2, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(10, 'TR', 'GÖZLEMELER', 'Kıymalı Gözleme', '', 140, 'KiymaliGozleme.png', 0, 2, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(11, 'TR', 'GÖZLEMELER', 'Patlıcanlı Gözleme', '', 120, 'PatlicanliGozleme.png', 0, 2, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(12, 'TR', 'GÖZLEMELER', 'Köz Patlıcanlı Kıymalı Gözleme', '', 145, 'PatlicanliKiymaliGozleme.png', 0, 2, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(13, 'TR', 'GÖZLEMELER', 'Köz Patlıcanlı Gözleme', '', 115, 'PatlicanliKiymaliGozleme.png', 0, 2, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(14, 'TR', 'GÖZLEMELER', 'Kabaklı Havuçlu Gözleme', '', 115, 'KabaklHavucluGozleme.png', 0, 2, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(15, 'TR', 'SAHANDA YUMURTALAR', 'Sahanda Yumurta', '', 110, 'SahandaYumurta.png', 0, 3, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(16, 'TR', 'SAHANDA YUMURTALAR', 'Sucuklu Yumurta', '', 115, 'SucukluYumurta.png', 0, 3, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(17, 'TR', 'SAHANDA YUMURTALAR', 'Kaşarlı Yumurta', '', 110, 'KasarliYumurta.png', 0, 3, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(18, 'TR', 'SAHANDA YUMURTALAR', 'Kavurmalı Yumurta', '', 145, 'BiberliYumurta.png', 0, 3, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(19, 'TR', 'SAHANDA YUMURTALAR', 'Soğanlı Yumurta', '', 100, 'SoganliYumurta.png', 0, 3, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(20, 'TR', 'SAHANDA YUMURTALAR', 'Biberli Yumurta', '', 100, 'BiberliYumurta.png', 0, 3, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(21, 'TR', 'SAHANDA YUMURTALAR', 'Hurmalı Yumurta', '', 100, 'HurmaliYumurta.png', 0, 3, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(22, 'TR', 'SAHANDA YUMURTALAR', 'Pişi Pişi Yumurta', '', 115, 'PisiPisiYumurta.png', 0, 3, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(23, 'TR', 'SAHANDA YUMURTALAR', 'Pastırmalı Yumurta', '', 150, 'PastirmaliYumurta.png', 0, 3, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(24, 'TR', 'SAHANDA YUMURTALAR', 'Çırpılmış Yumurta', '', 110, 'CirpilmisYumurta.png', 0, 3, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(25, 'TR', 'SAHANDA YUMURTALAR', 'Tereyağlı Yumurta Kapama', '', 115, 'TereyagliYumurtaKapama.png', 0, 3, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(26, 'TR', 'OMLETLER', 'Sade Omlet', '', 110, 'SadeOmlet.png', 0, 4, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(27, 'TR', 'OMLETLER', 'Mantarlı Omlet', '', 120, 'MantarliOmlet.png', 0, 4, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(28, 'TR', 'OMLETLER', 'Kaşarlı Omlet', '', 115, 'KasarliOmlet.png', 0, 4, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(29, 'TR', 'OMLETLER', 'Otlu Omlet', '', 115, 'OtluOmlet.png', 0, 4, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(30, 'TR', 'OMLETLER', 'Peynirli Omlet', '', 115, 'PeynirliOmlet.png', 0, 4, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(31, 'TR', 'OMLETLER', 'Sucuklu Kaşarlı Omlet', '', 125, 'SucukluKasarlOmlet.png', 0, 4, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(32, 'TR', 'OMLETLER', 'Mantarlı Kaşarlı Omlet', '', 125, 'MantarlKasarlOmlet.png', 0, 4, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(33, 'TR', 'OMLETLER', 'Pişi Pişi Yapımı Omlet', '', 130, 'PisiPisiYapimOmlet.png', 0, 4, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(34, 'TR', 'OMLETLER', 'Kuymak', '', 125, 'Kuymak.png', 0, 4, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(35, 'TR', 'MENEMENLER', 'Kaşarlı Menemen', '', 115, 'KasarliMenemen.png', 0, 5, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(36, 'TR', 'MENEMENLER', 'Beyaz Peynirli Menemen', '', 110, 'BeyazPeynirliMenemen.png', 0, 5, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(37, 'TR', 'MENEMENLER', 'Sucuklu Menemen', '', 115, 'SucukluMenemen.png', 0, 5, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(38, 'TR', 'MENEMENLER', 'Kıymalı Menemen', '', 125, 'KiymalMenemen.png', 0, 5, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(39, 'TR', 'MENEMENLER', 'Kavurmalı Menemen', '', 130, 'KavurmaliMenemen.png', 0, 5, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(40, 'TR', 'MENEMENLER', 'Sade Menemen', '', 110, 'SadeMenemen.png', 0, 5, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(41, 'TR', 'MENEMENLER', 'Sucuklu Kaşarlı Menemen', '', 125, 'SucukluKasarliMenemen.png', 0, 5, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(42, 'TR', 'MENEMENLER', 'Full Karaşık Menemen', '', 150, 'FullKarisikMenemen.png', 0, 5, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(43, 'TR', 'APARATİFLER', 'Lorlubiber Kızartma', '', 85, 'LorluBiberKizartma.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(44, 'TR', 'APARATİFLER', 'Bal Kg', '', 600, 'BalKG.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(45, 'TR', 'APARATİFLER', 'Tahin Pekmez Kg', '', 600, 'TahinPekmezKG.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(46, 'TR', 'APARATİFLER', 'Siyah Zeytin Kg', '', 300, 'SiyahZeytinKG.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(47, 'TR', 'APARATİFLER', 'Yeşil Zeytin Kg', '', 300, 'YesilZeytinKG.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(48, 'TR', 'APARATİFLER', 'Zahter Kg', '', 400, 'ZahterKG.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(49, 'TR', 'APARATİFLER', 'Acuka Kg', '', 600, 'AcukaKG.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(50, 'TR', 'APARATİFLER', 'Soka Kg', '', 300, 'SokaKG.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(51, 'TR', 'APARATİFLER', 'Kızarmış Hellım Kg', '', 300, 'KuruDutKG.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(52, 'TR', 'APARATİFLER', 'Patates Tabağı', '', 115, 'PatatesTabagi.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(53, 'TR', 'APARATİFLER', 'Pişi Pişi Biberli Lor', '', 120, 'PisiPisiBiberliLor.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(54, 'TR', 'APARATİFLER', 'Saine Kg', '', 600, 'SaineKG.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(55, 'TR', 'APARATİFLER', 'Kuru Dut KG', '', 300, 'KuruDutKG.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(56, 'TR', 'APARATİFLER', 'Pişi Tane', '', 30, 'PisiTane.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(57, 'TR', 'APARATİFLER', 'Simit', '', 30, 'Simit.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(58, 'TR', 'APARATİFLER', 'Aparatif Tabağı', '', 225, 'AperatifTabagi.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(59, 'TR', 'APARATİFLER', 'Söğüş Tabak', '', 185, 'SogusTabagi.png', 0, 6, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(60, 'TR', 'PEYNİRLER KG', 'Sülk', '', 250, 'suluk.png', 0, 7, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(61, 'TR', 'PEYNİRLER KG', 'Kaşar', '', 400, 'Kasar.png', 0, 7, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(62, 'TR', 'PEYNİRLER KG', 'Eski Kaşar', '', 400, 'EskiKasar.png', 0, 7, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(63, 'TR', 'PEYNİRLER KG', 'Çeçil', '', 400, 'cecil.png', 0, 7, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(64, 'TR', 'PEYNİRLER KG', 'Ezine', '', 400, 'Ezine.png', 0, 7, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(65, 'TR', 'PEYNİRLER KG', 'İzmir Tulum', '', 400, 'izmirTulum.png', 0, 7, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(66, 'TR', 'EKMEKLER', 'Bazlama', '', 30, 'Bazlama.png', 0, 8, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(67, 'TR', 'EKMEKLER', 'Saç Ekmek', '', 75, 'SacEkmek.png', 0, 8, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(68, 'TR', 'EKMEKLER', 'Lavaş', '', 45, 'Lavas.png', 0, 8, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(69, 'TR', 'REÇELLER KG', 'HAVUÇ', '', 450, 'HavucReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(70, 'TR', 'REÇELLER KG', 'Süt', '', 650, 'SutReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(71, 'TR', 'REÇELLER KG', 'Salatalık', '', 350, 'SalatalikReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(72, 'TR', 'REÇELLER KG', 'Portakal', '', 400, 'PortakalReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(73, 'TR', 'REÇELLER KG', 'Soğan', '', 450, 'SoganReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(74, 'TR', 'REÇELLER KG', 'Limon', '', 400, 'LimonReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(75, 'TR', 'REÇELLER KG', 'Bal Kabağı', '', 500, 'BalKabagiReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(76, 'TR', 'REÇELLER KG', 'Domates', '', 450, 'DomatesReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(77, 'TR', 'REÇELLER KG', 'Kayısı', '', 400, 'KayisiReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(78, 'TR', 'REÇELLER KG', 'Vişne', '', 450, 'VisneReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(79, 'TR', 'REÇELLER KG', 'Patlıcan', '', 400, 'PatlicanReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(80, 'TR', 'REÇELLER KG', 'Karpuz', '', 400, 'KarpuzReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(81, 'TR', 'REÇELLER KG', 'Acı Biber', '', 475, 'AciBiberReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(82, 'TR', 'REÇELLER KG', 'Biber', '', 400, 'AciBiberReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(83, 'TR', 'REÇELLER KG', 'Turp', '', 300, 'TurpReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(84, 'TR', 'REÇELLER KG', 'Cevizli Türk Kahvesi', '', 650, 'CevizliTurkKahvesi.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(85, 'TR', 'REÇELLER KG', 'Gül', '', 450, 'GulReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(86, 'TR', 'REÇELLER KG', 'Mandalina', '', 400, 'MandalinaReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(87, 'TR', 'REÇELLER KG', 'Pancar', '', 400, 'PancarReceli.png', 0, 9, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(88, 'TR', 'DETOKSLAR', 'KEREVİZ SAPLI ELMA SUYU', '', 70, 'KerevizSapliElmaSuyu.png', 0, 10, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(89, 'TR', 'DETOKSLAR', 'Havuç Elma', '', 70, 'HavucElma.png', 0, 10, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(90, 'TR', 'DETOKSLAR', 'Kısnıs Elma', '', 70, 'KisnisElma.png', 0, 10, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(91, 'TR', 'DETOKSLAR', 'Elma Nane', '', 70, 'ElmaNane.png', 0, 10, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(92, 'TR', 'DETOKSLAR', 'Havuç Turp', '', 70, 'HavucTurp.png', 0, 10, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(93, 'TR', 'DETOKSLAR', 'Portakal Havuç Elma', '', 70, 'PortakalHavucElma.png', 0, 10, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(94, 'TR', 'DETOKSLAR', 'Orman Meyveli', '', 90, 'OrmanMeyveli.png', 0, 10, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(95, 'TR', 'DETOKSLAR', 'Salatalık Kivi Nane', '', 70, 'SalatalikKiviNane.png', 0, 10, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(96, 'TR', 'DETOKSLAR', 'Pancar Havuç', '', 70, 'PancarHavuc.png', 0, 10, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(97, 'TR', 'DETOKSLAR', 'Vırgınmary', '', 95, 'VirginMarry.png', 0, 10, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(98, 'TR', 'SIKMA MEYVE SUYU', 'Portakal Suyu', '', 70, 'PortakalSuyu.png', 0, 11, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(99, 'TR', 'SIKMA MEYVE SUYU', 'Nar Suyu', '', 70, 'NarSuyu.png', 0, 11, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(100, 'TR', 'SIKMA MEYVE SUYU', 'Ananas Suyu', '', 70, 'AnanasSuyu.png', 0, 11, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(101, 'TR', 'SICAK İÇECEKLER', 'Bitki Çayı', '', 45, 'Bitkicayi.png', 0, 12, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(102, 'TR', 'SICAK İÇECEKLER', 'Tarçın Çayı', '', 45, 'Tarcincayi.png', 0, 12, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(103, 'TR', 'SICAK İÇECEKLER', 'Tarçın Limon', '', 45, 'TarcinLimon.png', 0, 12, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(104, 'TR', 'SICAK İÇECEKLER', 'Ihlamur', '', 45, 'Ihlamur.png', 0, 12, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(105, 'TR', 'SICAK İÇECEKLER', 'Yeşil Çay', '', 45, 'Yesilcay.png', 0, 12, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(106, 'TR', 'Kahveler', 'Filitre Kahve', '', 65, 'FiltreKahve.png', 0, 15, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(107, 'TR', 'Kahveler', 'Nescafe', '', 65, 'Nescafe.png', 0, 15, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(108, 'TR', 'SICAK İÇECEKLER', 'Kış Çayı', '', 45, 'Kiscayi.png', 0, 12, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(109, 'TR', 'Kahveler', 'Türk Kahvesi', '', 50, 'TurkKahvesi.png', 0, 15, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(110, 'TR', 'SICAK İÇECEKLER', 'Bardak Çay', '', 25, 'Bardakcay.png', 0, 12, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(111, 'TR', 'SICAK İÇECEKLER', 'Çaydanlık', '', 160, 'caydanlik.png', 0, 12, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(112, 'TR', 'Kahveler', 'Espresso', '', 55, 'Nescafe.png', 0, 15, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(113, 'TR', 'Kahveler', 'Macchiato', '', 65, 'Nescafe.png', 0, 15, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(114, 'TR', 'Kahveler', 'Mocka', '', 85, 'Nescafe.png', 0, 15, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(115, 'TR', 'Kahveler', 'Double Espresso', '', 65, 'doubleEspressoCoffee.png', 0, 15, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(116, 'TR', 'Kahveler', 'Capucino', '', 85, 'capocinuCoffee.png', 0, 15, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(117, 'TR', 'Kahveler', 'Latte', '', 85, 'latteCoffee.png', 0, 15, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(118, 'TR', 'MEŞRUBATLAR', 'Kola', '330ML', 40, 'Kola.png', 0, 13, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(119, 'TR', 'MEŞRUBATLAR', 'Fanta', '330ML', 40, 'Fanta.png', 0, 13, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(120, 'TR', 'MEŞRUBATLAR', 'Sprıte', '330ML', 40, 'Sprite.png', 0, 13, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(121, 'TR', 'MEŞRUBATLAR', 'Soda', '250ML', 30, 'UludagPremiumSoda.png', 0, 13, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(122, 'TR', 'MEŞRUBATLAR', 'Şişe Su', '1Litre', 40, 'Su.png', 0, 13, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(123, 'TR', 'MEŞRUBATLAR', 'Ice Tea Şeftali', '330ML', 40, 'IceTeaseftali.png', 0, 13, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(124, 'TR', 'MEŞRUBATLAR', 'Kutu Meyve Suyu Şeftali', '330ML', 25, 'IceTeaseftali.png', 0, 13, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(125, 'TR', 'MEŞRUBATLAR', 'Ice Tea Limon', '330ML', 40, 'IceTeaLimon.png', 0, 13, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(126, 'TR', 'MEŞRUBATLAR', 'Cappy Şeftali Meyve Suyu', '330ML', 35, 'CappyseftaliMeyveSuyu.png', 0, 13, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(127, 'TR', 'MEŞRUBATLAR', 'Kutu Meyve Suyu Vişne', '330ML', 25, 'CappyVisneMeyveSuyu.png', 0, 13, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(128, 'TR', 'LİMONATALAR', 'Çilekli Limonata', '1Bardak', 70, 'cilekliLimonata.png', 0, 14, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(129, 'TR', 'LİMONATALAR', 'Sade Limonata', '1Bardak', 65, 'SadeLimonata.png', 0, 14, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(130, 'TR', 'LİMONATALAR', 'Naneli Limonata', '1Bardak', 70, 'NaneliLimonata.png', 0, 14, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(131, 'TR', 'LİMONATALAR', 'Yeşil Elmalı Limonata', '1Bardak', 70, 'YesilElmaliLimonata.png', 0, 14, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(132, 'TR', 'LİMONATALAR', 'Kıbrıs Limonata', '1Bardak', 75, 'KibrisLimonatasi.png', 0, 14, '2023-08-31 21:02:52', '2023-08-31 21:02:52'),
(133, 'EN', 'Breakfast', 'Unlimited Breakfast', 'Mixed plate, menemen (Turkish-style scrambled eggs), gözleme (Turkish stuffed flatbread),bazlama (traditional Turkish bread), 5 types of cheese, Erzincan tulum cheese, tahini molasses, honey cream,Halhal Olives from Antakya, green olives, black olives, sahine (Turkish sausage), acuka (Turkish spread),pişi (Turkish fried dough), Cunda Paste, Girit cheese balls, 25 varieties of homemade jam, bergamot-infused loose leaf tea, Edirne butcher\'s sucuk (spicy Turkish sausage).', 295, 'kahvalti-424x360.png', 1, 16, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(134, 'EN', 'Gozleme', 'Gozleme With Cheese', 'A traditional Turkish dish made of thin dough, usually filled With various ingredients such as cheese, spinach, or minced meat, and then folded and cooked on a griddle.', 115, 'Ekmek.png', 0, 17, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(135, 'EN', 'Gozleme', 'Gozleme With Potato', '', 115, 'ekmek2.png', 0, 17, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(136, 'EN', 'Gozleme', 'Gozleme With Spinach', '', 115, 'ekmek3.png', 0, 17, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(137, 'EN', 'Gozleme', 'Gozleme With Turkish Cheddar Cheese', '', 115, 'ekmek4.png', 0, 17, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(138, 'EN', 'Gozleme', 'Gozleme With Turkish Sousage', '', 140, 'ekmek5.png', 0, 17, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(139, 'EN', 'Gozleme', 'Sausage Cheddar Pancake', '', 160, 'ekmek6.png', 0, 17, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(140, 'EN', 'Gozleme', 'Gozleme With Turkish Bacon', '', 145, 'PastirmaliGozleme.png', 0, 17, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(141, 'EN', 'Gozleme', 'Gozleme With Braised Meat', '', 145, 'KavurmaliGozleme.png', 0, 17, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(142, 'EN', 'Gozleme', 'Gozleme With Minced Meat', '', 145, 'KiymaliGozleme.png', 0, 17, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(143, 'EN', 'Gozleme', 'Gozleme With Eggplant', '', 120, 'PatlicanliGozleme.png', 0, 17, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(144, 'EN', 'Gozleme', 'Gozleme With Grilled Eggplant & Minced Meat', '', 145, 'PatlicanliKiymaliGozleme.png', 0, 17, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(145, 'EN', 'Gozleme', 'Ember Eggplant Pancake', '', 115, 'PatlicanliKiymaliGozleme.png', 0, 17, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(146, 'EN', 'Gozleme', 'Gozleme With Zucchini & Carrots', '', 115, 'KabaklHavucluGozleme.png', 0, 17, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(147, 'EN', 'FRIED EGGS', 'Fried Egg', '', 110, 'SahandaYumurta.png', 0, 18, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(148, 'EN', 'FRIED EGGS', 'Fried Egg With Turkish Sougage', '', 115, 'SucukluYumurta.png', 0, 18, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(149, 'EN', 'FRIED EGGS', 'Fried Egg With Turkish Cheese', '', 110, 'KasarliYumurta.png', 0, 18, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(150, 'EN', 'FRIED EGGS', 'Fried Egg With Braised Meat', '', 145, 'BiberliYumurta.png', 0, 18, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(151, 'EN', 'FRIED EGGS', 'Fried Egg With Onion', '', 100, 'SoganliYumurta.png', 0, 18, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(152, 'EN', 'FRIED EGGS', 'Fried Egg With Chili Pepper', '', 100, 'BiberliYumurta.png', 0, 18, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(153, 'EN', 'FRIED EGGS', 'Persimmon Egg', '', 100, 'HurmaliYumurta.png', 0, 18, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(154, 'EN', 'FRIED EGGS', 'Pişi Pişi Fried Egg', '', 115, 'PisiPisiYumurta.png', 0, 18, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(155, 'EN', 'FRIED EGGS', 'Fried Egg With Turkish Bacon', '', 150, 'PastirmaliYumurta.png', 0, 18, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(156, 'EN', 'FRIED EGGS', 'Scrambled Egg', '', 110, 'CirpilmisYumurta.png', 0, 18, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(157, 'EN', 'FRIED EGGS', 'Buttered Egg Wrap', '', 115, 'TereyagliYumurtaKapama.png', 0, 18, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(158, 'EN', 'OMELETTES', 'Plain Omelet', '', 110, 'SadeOmlet.png', 0, 19, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(159, 'EN', 'OMELETTES', 'Mushroom Omelet', '', 120, 'MantarliOmlet.png', 0, 19, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(160, 'EN', 'OMELETTES', 'Omelet With Turkish Cheddar Cheese', '', 115, 'KasarliOmlet.png', 0, 19, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(161, 'EN', 'OMELETTES', 'Omelet With Herbs', '', 115, 'OtluOmlet.png', 0, 19, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(162, 'EN', 'OMELETTES', 'Omelet With Cheese', '', 115, 'PeynirliOmlet.png', 0, 19, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(163, 'EN', 'OMELETTES', 'Omelet With Turkish Sougage & Cheese', '', 125, 'SucukluKasarlOmlet.png', 0, 19, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(164, 'EN', 'OMELETTES', 'Omelet With Turkish Cheddar Cheese & Mushroom', '', 125, 'MantarlKasarlOmlet.png', 0, 19, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(165, 'EN', 'OMELETTES', 'Pişi Pişi Omelet', '', 130, 'PisiPisiYapimOmlet.png', 0, 19, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(166, 'EN', 'OMELETTES', 'Kuymak', '', 125, 'Kuymak.png', 0, 19, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(167, 'EN', 'MENEMENS', 'Menemen With Turkish Cheddar Cheese', '', 115, 'KasarliMenemen.png', 0, 20, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(168, 'EN', 'MENEMENS', 'Menemen With Cheese', '', 110, 'BeyazPeynirliMenemen.png', 0, 20, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(169, 'EN', 'MENEMENS', 'Menemen With Turkish Sougage', '', 115, 'SucukluMenemen.png', 0, 20, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(170, 'EN', 'MENEMENS', 'Menemen With Minced Meat', '', 125, 'KiymalMenemen.png', 0, 20, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(171, 'EN', 'MENEMENS', 'Menemen With Braised Meat', '', 130, 'KavurmaliMenemen.png', 0, 20, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(172, 'EN', 'MENEMENS', 'Plain Menemen', '', 110, 'SadeMenemen.png', 0, 20, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(173, 'EN', 'MENEMENS', 'Menemen With Turkish Sougage & Turkish Cheddar Cheese', '', 125, 'SucukluKasarliMenemen.png', 0, 20, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(174, 'EN', 'MENEMENS', 'Mixed Menemen', '', 150, 'FullKarisikMenemen.png', 0, 20, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(175, 'EN', 'SNACKS', 'Fried Chili With Curd Cheese', '', 85, 'LorluBiberKizartma.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(176, 'EN', 'SNACKS', 'Honey (Kg)', '', 600, 'BalKG.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(177, 'EN', 'SNACKS', 'Tahini Molasses (Kg)', '', 600, 'TahinPekmezKG.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(178, 'EN', 'SNACKS', 'Black Olive (Kg)', '', 300, 'SiyahZeytinKG.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(179, 'EN', 'SNACKS', 'Green Olive (Kg)', '', 300, 'YesilZeytinKG.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(180, 'EN', 'SNACKS', 'Zahter (Kg)', '', 400, 'ZahterKG.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(181, 'EN', 'SNACKS', 'Acuka (Kg)', '', 600, 'AcukaKG.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(182, 'EN', 'SNACKS', 'Soka (Kg)', '', 300, 'SokaKG.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(183, 'EN', 'SNACKS', 'Fried Halloumi (Kg)', '', 300, 'KuruDutKG.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(184, 'EN', 'SNACKS', 'Fried Potatoes', '', 115, 'PatatesTabagi.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(185, 'EN', 'SNACKS', 'Curd Cheese With Pepper', '', 120, 'PisiPisiBiberliLor.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(186, 'EN', 'SNACKS', 'Saine (Kg)', '', 600, 'SaineKG.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(187, 'EN', 'SNACKS', 'Dried Mulberry (Kg)', '', 300, 'KuruDutKG.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(188, 'EN', 'SNACKS', 'Pişi (Piece)', '', 30, 'PisiTane.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(189, 'EN', 'SNACKS', 'Bagel', '', 30, 'Simit.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(190, 'EN', 'SNACKS', 'Appetizer Plate', '', 225, 'AperatifTabagi.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(191, 'EN', 'SNACKS', 'Cold Cuts', '', 185, 'SogusTabagi.png', 0, 21, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(192, 'EN', 'CHEESES', 'Sülk', '', 250, 'suluk.png', 0, 22, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(193, 'EN', 'CHEESES', 'Cheddar', '', 400, 'Kasar.png', 0, 22, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(194, 'EN', 'CHEESES', 'Old Cheddar', '', 400, 'EskiKasar.png', 0, 22, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(195, 'EN', 'CHEESES', 'Çeçil', '', 400, 'cecil.png', 0, 22, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(196, 'EN', 'CHEESES', 'Ezine', '', 400, 'Ezine.png', 0, 22, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(197, 'EN', 'CHEESES', 'İzmir Tulum', '', 400, 'izmirTulum.png', 0, 22, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(198, 'EN', 'BREADS', 'Basing', '', 30, 'Bazlama.png', 0, 23, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(199, 'EN', 'BREADS', 'Bread', '', 75, 'SacEkmek.png', 0, 23, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(200, 'EN', 'BREADS', 'Lavash', '', 45, 'Lavas.png', 0, 23, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(201, 'EN', 'JAMS', 'Carrot', '', 450, 'HavucReceli.png', 0, 24, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(202, 'EN', 'JAMS', 'Milk', '', 650, 'SutReceli.png', 0, 24, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(203, 'EN', 'JAMS', 'Cucumber', '', 350, 'SalatalikReceli.png', 0, 24, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(204, 'EN', 'JAMS', 'Orange', '', 400, 'PortakalReceli.png', 0, 24, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(205, 'EN', 'JAMS', 'Onion', '', 450, 'SoganReceli.png', 0, 24, '2023-08-31 21:21:51', '2023-08-31 21:27:24'),
(206, 'EN', 'JAMS', 'Lemon', '', 400, 'LimonReceli.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:24'),
(207, 'EN', 'JAMS', 'Pumpkin', '', 500, 'BalKabagiReceli.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:24'),
(208, 'EN', 'JAMS', 'Tomatoes', '', 450, 'DomatesReceli.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:24'),
(209, 'EN', 'JAMS', 'Apricot', '', 400, 'KayisiReceli.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:24'),
(210, 'EN', 'JAMS', 'Cherry', '', 450, 'VisneReceli.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:24'),
(211, 'EN', 'JAMS', 'Eggplant', '', 400, 'PatlicanReceli.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:24'),
(212, 'EN', 'JAMS', 'Watermelon', '', 400, 'KarpuzReceli.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:24'),
(213, 'EN', 'JAMS', 'Hot Chili Pepper', '', 475, 'AciBiberReceli.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:24'),
(214, 'EN', 'JAMS', 'Pepper', '', 400, 'AciBiberReceli.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:24'),
(215, 'EN', 'JAMS', 'Radish', '', 300, 'TurpReceli.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:24'),
(216, 'EN', 'JAMS', 'Turkish Coffee With Walnut', '', 650, 'CevizliTurkKahvesi.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:24'),
(217, 'EN', 'JAMS', 'Rose', '', 450, 'GulReceli.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:24'),
(218, 'EN', 'JAMS', 'Mandarin', '', 400, 'MandalinaReceli.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:24'),
(219, 'EN', 'JAMS', 'Beet', '', 400, 'PancarReceli.png', 0, 24, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(220, 'EN', 'DETOKSES', 'Apple Juice With Celery Stalk', '', 70, 'KerevizSapliElmaSuyu.png', 0, 25, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(221, 'EN', 'DETOKSES', 'Carrot - Apple', '', 70, 'HavucElma.png', 0, 25, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(222, 'EN', 'DETOKSES', 'Coriander - Apple', '', 70, 'KisnisElma.png', 0, 25, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(223, 'EN', 'DETOKSES', 'Apple - Mint', '', 70, 'ElmaNane.png', 0, 25, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(224, 'EN', 'DETOKSES', 'Carrot - Radish', '', 70, 'HavucTurp.png', 0, 25, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(225, 'EN', 'DETOKSES', 'Orange - Carrot - Apple', '', 70, 'PortakalHavucElma.png', 0, 25, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(226, 'EN', 'DETOKSES', 'Wild Berry', '', 90, 'OrmanMeyveli.png', 0, 25, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(227, 'EN', 'DETOKSES', 'Cucumber - Kiwi - Mint', '', 70, 'SalatalikKiviNane.png', 0, 25, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(228, 'EN', 'DETOKSES', 'Beet - Carrot', '', 70, 'PancarHavuc.png', 0, 25, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(229, 'EN', 'DETOKSES', 'Virgin Mary', '', 95, 'VirginMarry.png', 0, 25, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(230, 'EN', 'Freshly Squeezed Fruit Juice', 'Orange Juice', '', 70, 'PortakalSuyu.png', 0, 26, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(231, 'EN', 'Freshly Squeezed Fruit Juice', 'Pomegranate Juice', '', 70, 'NarSuyu.png', 0, 26, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(232, 'EN', 'Freshly Squeezed Fruit Juice', 'Pineapple Juice', '', 70, 'AnanasSuyu.png', 0, 26, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(233, 'EN', 'HOT DRINKS', 'Herbal Tea', '', 45, 'Bitkicayi.png', 0, 27, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(234, 'EN', 'HOT DRINKS', 'Cinnamon Tea', '', 45, 'Tarcincayi.png', 0, 27, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(235, 'EN', 'HOT DRINKS', 'Cinnamon and Lemon', '', 45, 'TarcinLimon.png', 0, 27, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(236, 'EN', 'HOT DRINKS', 'Linden', '', 45, 'Ihlamur.png', 0, 27, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(237, 'EN', 'HOT DRINKS', 'Green Tea', '', 45, 'Yesilcay.png', 0, 27, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(238, 'EN', 'Coffee', 'Filter Coffee', '', 65, 'FiltreKahve.png', 0, 30, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(239, 'EN', 'Coffee', 'Nescafe', '', 65, 'Nescafe.png', 0, 30, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(240, 'EN', 'HOT DRINKS', 'Winter Tea', '', 45, 'Kiscayi.png', 0, 27, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(241, 'EN', 'Coffee', 'Turkish Coffee', '', 50, 'TurkKahvesi.png', 0, 30, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(242, 'EN', 'HOT DRINKS', 'Glass Of Tea', '', 25, 'Bardakcay.png', 0, 27, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(243, 'EN', 'HOT DRINKS', 'One Teapot Of Tea', '', 160, 'caydanlik.png', 0, 27, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(244, 'EN', 'Coffee', 'Espresso', '', 55, 'Nescafe.png', 0, 30, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(245, 'EN', 'Coffee', 'Macchiato', '', 65, 'Nescafe.png', 0, 30, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(246, 'EN', 'Coffee', 'Mocka', '', 85, 'Nescafe.png', 0, 30, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(247, 'EN', 'Coffee', 'Double Espresso', '', 65, 'doubleEspressoCoffee.png', 0, 30, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(248, 'EN', 'Coffee', 'Capucino', '', 85, 'capocinuCoffee.png', 0, 30, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(249, 'EN', 'Coffee', 'Latte', '', 85, 'latteCoffee.png', 0, 30, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(250, 'EN', 'SOFT DRINKS', 'Cola', '330ML', 40, 'Kola.png', 0, 28, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(251, 'EN', 'SOFT DRINKS', 'Fanta', '330ML', 40, 'Fanta.png', 0, 28, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(252, 'EN', 'SOFT DRINKS', 'Sprıte', '330ML', 40, 'Sprite.png', 0, 28, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(253, 'EN', 'SOFT DRINKS', 'Soda', '250ML', 30, 'UludagPremiumSoda.png', 0, 28, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(254, 'EN', 'SOFT DRINKS', 'Water 1 Lt Bottle', '1Litre', 40, 'Su.png', 0, 28, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(255, 'EN', 'SOFT DRINKS', 'Ice Tea - Peach', '330ML', 40, 'IceTeaseftali.png', 0, 28, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(256, 'EN', 'SOFT DRINKS', 'Ice Tea - Lemon', '330ML', 25, 'IceTeaseftali.png', 0, 28, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(257, 'EN', 'SOFT DRINKS', 'Ice Tea - Lemon', '330ML', 40, 'IceTeaLimon.png', 0, 28, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(258, 'EN', 'SOFT DRINKS', 'Peach Juice', '330ML', 35, 'CappyseftaliMeyveSuyu.png', 0, 28, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(259, 'EN', 'SOFT DRINKS', 'Cherry Juice', '330ML', 25, 'CappyVisneMeyveSuyu.png', 0, 28, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(260, 'EN', 'LEMONADES', 'Strawberry Lemonade', '1Bardak', 70, 'cilekliLimonata.png', 0, 29, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(261, 'EN', 'LEMONADES', 'Lemonade', '1Bardak', 65, 'SadeLimonata.png', 0, 29, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(262, 'EN', 'LEMONADES', 'Mint Lemonade', '1Bardak', 70, 'NaneliLimonata.png', 0, 29, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(263, 'EN', 'LEMONADES', 'Green Apple Lemonade', '1Bardak', 70, 'YesilElmaliLimonata.png', 0, 29, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(264, 'EN', 'LEMONADES', 'Cyprus Lemonade', '1Bardak', 75, 'KibrisLimonatasi.png', 0, 29, '2023-08-31 21:21:52', '2023-08-31 21:27:25'),
(265, 'AR', 'إفطار', 'إفطار مفتوح غير محدود\n', '\n(طبق خضار مشكلة، شكشوكة، فطائر غوزلمي، بازلما، 5 أنواع من الجبن، جبنة الماعز الإرزنجانية ، طحينة و دبس، عسل و قيمر، زيتون أنطاكيا، زيتون أخضر، زيتون أسود، صاحنة، عجة، بيشي، زبادي من جزيرة كوندا، كرات جبنة ، price5 نوعًا من المربى المصنوعة يدويًا، الشاي الغير محدود ، سجق إدرنة\n', 295, 'kahvalti-424x360.png', 1, 31, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(266, 'AR', 'الجوزلمة التركية', 'جوزلمة بالجبنة البيضاء\n', '', 115, 'Ekmek.png', 0, 32, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(267, 'AR', 'الجوزلمة التركية', 'جوزلمة بالبطاطس\n', '', 115, 'ekmek2.png', 0, 32, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(268, 'AR', 'الجوزلمة التركية', 'جوزلمة بالسبانخ', '', 115, 'ekmek3.png', 0, 32, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(269, 'AR', 'الجوزلمة التركية', 'جوزلمة بالقشقوان', '', 115, 'ekmek4.png', 0, 32, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(270, 'AR', 'الجوزلمة التركية', 'جوزلمة بالسجق', '', 140, 'ekmek5.png', 0, 32, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(271, 'AR', 'الجوزلمة التركية', 'جوزلمة بالسجق والقشقوان', '', 160, 'ekmek6.png', 0, 32, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(272, 'AR', 'الجوزلمة التركية', 'جوزلمة بالباسطرما', '', 145, 'PastirmaliGozleme.png', 0, 32, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(273, 'AR', 'الجوزلمة التركية', 'جوزلمة بالقاورما \n', '', 145, 'KavurmaliGozleme.png', 0, 32, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(274, 'AR', 'الجوزلمة التركية', 'جوزلمة باللحم المفروم\n', '', 140, 'KiymaliGozleme.png', 0, 32, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(275, 'AR', 'الجوزلمة التركية', 'جوزلمة بالباتنجان \n', '', 120, 'PatlicanliGozleme.png', 0, 32, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(276, 'AR', 'الجوزلمة التركية', 'جوزلمة بالباتنجان واللحم المفروم\n', '', 145, 'PatlicanliKiymaliGozleme.png', 0, 32, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(277, 'AR', 'الجوزلمة التركية', 'جوزلمة الباذنجان المشوي', '', 115, 'PatlicanliKiymaliGozleme.png', 0, 32, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(278, 'AR', 'الجوزلمة التركية', '\nجوزلمة بالجزر والكوسا\n', '', 115, 'KabaklHavucluGozleme.png', 0, 32, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(279, 'AR', 'البيض', 'بيض مقلي', '', 110, 'SahandaYumurta.png', 0, 33, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(280, 'AR', 'البيض', 'بيض بالسجق\n', '', 115, 'SucukluYumurta.png', 0, 33, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(281, 'AR', 'البيض', 'بيض بجبنة القشقوان\n', '', 110, 'KasarliYumurta.png', 0, 33, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(282, 'AR', 'البيض', 'بيض بالقاورما \n', '', 145, 'BiberliYumurta.png', 0, 33, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(283, 'AR', 'البيض', 'بيض بالبصل\n', '', 100, 'SoganliYumurta.png', 0, 33, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(284, 'AR', 'البيض', 'بيض بالفلفل\n', '', 100, 'BiberliYumurta.png', 0, 33, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(285, 'AR', 'البيض', 'بيض بالتمر', '', 100, 'HurmaliYumurta.png', 0, 33, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(286, 'AR', 'البيض', 'بيض بيشي بيشي \n', '', 115, 'PisiPisiYumurta.png', 0, 33, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(287, 'AR', 'البيض', 'بيض بالباسطرما', '', 150, 'PastirmaliYumurta.png', 0, 33, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(288, 'AR', 'البيض', 'بيض مخفوق \n', '', 110, 'CirpilmisYumurta.png', 0, 33, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(289, 'AR', 'البيض', 'بيض مخفوق بالزبدة \n', '', 115, 'TereyagliYumurtaKapama.png', 0, 33, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(290, 'AR', 'اومليت ', 'اومليت سادة \n', '', 110, 'SadeOmlet.png', 0, 34, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(291, 'AR', 'اومليت ', 'اومليت الفطر \n', '', 120, 'MantarliOmlet.png', 0, 34, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(292, 'AR', 'اومليت ', 'اومليت القشقوان\n', '', 115, 'KasarliOmlet.png', 0, 34, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(293, 'AR', 'اومليت ', 'اومليت الشوفان ', '', 115, 'OtluOmlet.png', 0, 34, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(294, 'AR', 'اومليت ', 'اومليت الجبن الابيض', '', 115, 'PeynirliOmlet.png', 0, 34, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(295, 'AR', 'اومليت ', 'اومليت السجق والقشقوان \n', '', 125, 'SucukluKasarlOmlet.png', 0, 34, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(296, 'AR', 'اومليت ', 'اومليت الفطر والقشقوان ', '', 125, 'MantarlKasarlOmlet.png', 0, 34, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(297, 'AR', 'اومليت ', 'اومليت بيشي بيشي \n', '', 130, 'PisiPisiYapimOmlet.png', 0, 34, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(298, 'AR', 'اومليت ', 'مهلمة ', '', 125, 'Kuymak.png', 0, 34, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(299, 'AR', 'شكشوكة ', 'شكشوكة بالقشقوان', '', 115, 'KasarliMenemen.png', 0, 35, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(300, 'AR', 'شكشوكة ', 'شكشوكة بالجبن ', '', 110, 'BeyazPeynirliMenemen.png', 0, 35, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(301, 'AR', 'شكشوكة ', 'شكشوكة بالسجق ', '', 115, 'SucukluMenemen.png', 0, 35, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(302, 'AR', 'شكشوكة ', 'شكشوكة باللحم المفروم ', '', 125, 'KiymalMenemen.png', 0, 35, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(303, 'AR', 'شكشوكة ', 'شكشوكة بالقاورما ', '', 130, 'KavurmaliMenemen.png', 0, 35, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(304, 'AR', 'شكشوكة ', 'شكشوكة \n', '', 110, 'SadeMenemen.png', 0, 35, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(305, 'AR', 'شكشوكة ', 'شكشوكة بالسجق والقشقوان', '', 125, 'SucukluKasarliMenemen.png', 0, 35, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(306, 'AR', 'شكشوكة ', 'مكس شكشوكة ', '', 150, 'FullKarisikMenemen.png', 0, 35, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(307, 'AR', 'وجبات خفيفة  ', 'فلفل المقلي مع جبنة اللور ', '', 85, 'LorluBiberKizartma.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(308, 'AR', 'وجبات خفيفة  ', 'عسل (كغ)', '', 600, 'BalKG.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(309, 'AR', 'وجبات خفيفة  ', 'الدبس مع الطحينية (كغ)', '', 600, 'TahinPekmezKG.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(310, 'AR', 'وجبات خفيفة  ', 'زيتون أسود (كغ)', '', 300, 'SiyahZeytinKG.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(311, 'AR', 'وجبات خفيفة  ', 'زيتون اخضر (كغ)', '', 300, 'YesilZeytinKG.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(312, 'AR', 'وجبات خفيفة  ', 'زعتر (كغ)', '', 400, 'ZahterKG.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(313, 'AR', 'وجبات خفيفة  ', 'محمرة (كغ)', '', 600, 'AcukaKG.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(314, 'AR', 'وجبات خفيفة  ', 'مخلل الفلفل البوسني', '', 300, 'SokaKG.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(315, 'AR', 'وجبات خفيفة  ', 'حلوم مقلي ', '', 300, 'KuruDutKG.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(316, 'AR', 'وجبات خفيفة  ', 'بطاطس مقلية ', '', 115, 'PatatesTabagi.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(317, 'AR', 'وجبات خفيفة  ', 'جبنة مع فلفل', '', 120, 'PisiPisiBiberliLor.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(318, 'AR', 'وجبات خفيفة  ', 'Saine Kg', '', 600, 'SaineKG.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(319, 'AR', 'وجبات خفيفة  ', 'التوت المجفف (كغ)', '', 300, 'KuruDutKG.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(320, 'AR', 'وجبات خفيفة  ', 'الخبز المقلي', '', 25, 'PisiTane.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(321, 'AR', 'وجبات خفيفة  ', 'سيميت ', '', 25, 'Simit.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(322, 'AR', 'وجبات خفيفة  ', 'طبق مقبلات', '', 185, 'AperatifTabagi.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(323, 'AR', 'وجبات خفيفة  ', 'خضار مشكلة', '', 150, 'SogusTabagi.png', 0, 36, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(324, 'AR', 'الأجبان (كغ)', 'جبنة سولوك (كغ)', '', 250, 'suluk.png', 0, 37, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(325, 'AR', 'الأجبان (كغ)', 'قشقوان (كغ)\n', '', 300, 'Kasar.png', 0, 37, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(326, 'AR', 'الأجبان (كغ)', 'قشقوان معتق  (كغ)', '', 350, 'EskiKasar.png', 0, 37, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(327, 'AR', 'الأجبان (كغ)', 'جبنة مشللة (كغ)', '', 300, 'cecil.png', 0, 37, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(328, 'AR', 'الأجبان (كغ)', 'جبنة بيضاء (كغ)', '', 350, 'Ezine.png', 0, 37, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(329, 'AR', 'الأجبان (كغ)', 'جبنة الماعز (كغ)', '', 350, 'izmirTulum.png', 0, 37, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(330, 'AR', 'الخبز', 'خبز البازلما', '', 25, 'Bazlama.png', 0, 38, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(331, 'AR', 'الخبز', 'خبز الصاج', '', 75, 'SacEkmek.png', 0, 38, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(332, 'AR', 'الخبز', 'خبز لافاش', '', 35, 'Lavas.png', 0, 38, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(333, 'AR', 'المربى (كغ)', 'جزر ', '', 450, 'HavucReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(334, 'AR', 'المربى (كغ)', 'الحليب ', '', 650, 'SutReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(335, 'AR', 'المربى (كغ)', 'الخيار', '', 350, 'SalatalikReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(336, 'AR', 'المربى (كغ)', 'البرتقال', '', 400, 'PortakalReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(337, 'AR', 'المربى (كغ)', 'البصل', '', 450, 'SoganReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(338, 'AR', 'المربى (كغ)', 'الليمون', '', 400, 'LimonReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(339, 'AR', 'المربى (كغ)', 'اليقطين ', '', 500, 'BalKabagiReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(340, 'AR', 'المربى (كغ)', 'البندورة ', '', 450, 'DomatesReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(341, 'AR', 'المربى (كغ)', 'المشمش', '', 400, 'KayisiReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(342, 'AR', 'المربى (كغ)', 'الكرز', '', 450, 'VisneReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(343, 'AR', 'المربى (كغ)', 'الباذنجان', '', 400, 'PatlicanReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(344, 'AR', 'المربى (كغ)', 'البطيخ الاحمر ', '', 400, 'KarpuzReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(345, 'AR', 'المربى (كغ)', 'الفلفل الحار', '', 475, 'AciBiberReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(346, 'AR', 'المربى (كغ)', 'الفلفل ', '', 400, 'AciBiberReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(347, 'AR', 'المربى (كغ)', 'الفجل ', '', 300, 'TurpReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(348, 'AR', 'المربى (كغ)', 'قهوة تركية بالجوز ', '', 650, 'CevizliTurkKahvesi.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(349, 'AR', 'المربى (كغ)', 'الورد', '', 450, 'GulReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(350, 'AR', 'المربى (كغ)', 'المندرينا ', '', 400, 'MandalinaReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(351, 'AR', 'المربى (كغ)', 'الشمندر', '', 400, 'PancarReceli.png', 0, 39, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(352, 'AR', 'عصائر الديتوكس الصحية', 'عصير التفاح مع ساق الكرفس', '', 70, 'KerevizSapliElmaSuyu.png', 0, 40, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(353, 'AR', 'عصائر الديتوكس الصحية', 'عصير الجزر مع التفاح ', '', 70, 'HavucElma.png', 0, 40, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(354, 'AR', 'عصائر الديتوكس الصحية', 'عصير الكزبرة مع التفاح', '', 70, 'KisnisElma.png', 0, 40, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(355, 'AR', 'عصائر الديتوكس الصحية', 'عصير التفاح مع النعناع', '', 70, 'ElmaNane.png', 0, 40, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(356, 'AR', 'عصائر الديتوكس الصحية', 'عصير الفجل والجزر', '', 70, 'HavucTurp.png', 0, 40, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(357, 'AR', 'عصائر الديتوكس الصحية', 'عصير البرتقال والتفاح والجزر', '', 70, 'PortakalHavucElma.png', 0, 40, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(358, 'AR', 'عصائر الديتوكس الصحية', 'عصير التوت البري', '', 90, 'OrmanMeyveli.png', 0, 40, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(359, 'AR', 'عصائر الديتوكس الصحية', 'عصير الخيار والكيوي والنعناع', '', 70, 'SalatalikKiviNane.png', 0, 40, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(360, 'AR', 'عصائر الديتوكس الصحية', 'عصير الشمندر والجزر', '', 70, 'PancarHavuc.png', 0, 40, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(361, 'AR', 'عصائر الديتوكس الصحية', 'Vırgınmary', '', 95, 'VirginMarry.png', 0, 40, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(362, 'AR', 'العصائر الطازجة', 'عصير البرتقال', '', 70, 'PortakalSuyu.png', 0, 41, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(363, 'AR', 'العصائر الطازجة', 'عصير الرمان', '', 70, 'NarSuyu.png', 0, 41, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(364, 'AR', 'العصائر الطازجة', 'عصير الأناناس', '', 70, 'AnanasSuyu.png', 0, 41, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(365, 'AR', 'المشروبات الساخنة', 'شاي الاعشاب', '', 35, 'Bitkicayi.png', 0, 42, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(366, 'AR', 'المشروبات الساخنة', 'شاي القرفة ', '', 35, 'Tarcincayi.png', 0, 42, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(367, 'AR', 'المشروبات الساخنة', 'شاي القرفة والليمون', '', 35, 'TarcinLimon.png', 0, 42, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(368, 'AR', 'المشروبات الساخنة', 'شاي الاهلامور ', '', 35, 'Ihlamur.png', 0, 42, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(369, 'AR', 'المشروبات الساخنة', 'شاي اخضر \n', '', 35, 'Yesilcay.png', 0, 42, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(370, 'AR', 'قهوة', 'قهوة مفلترة ', '', 60, 'FiltreKahve.png', 0, 45, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(371, 'AR', 'قهوة', 'نسكافيه', '', 60, 'Nescafe.png', 0, 45, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(372, 'AR', 'المشروبات الساخنة', 'شاي الشتاء', '', 45, 'Kiscayi.png', 0, 42, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(373, 'AR', 'قهوة', ' قهوة تركية ', '', 50, 'TurkKahvesi.png', 0, 45, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(374, 'AR', 'المشروبات الساخنة', 'كوب شاي ', '', 20, 'Bardakcay.png', 0, 42, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(375, 'AR', 'المشروبات الساخنة', 'ابريق شاي ', '', 125, 'caydanlik.png', 0, 42, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(376, 'AR', 'قهوة', 'اسبرسو', '', 50, 'Nescafe.png', 0, 45, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(377, 'AR', 'قهوة', 'ماكياتو', '', 65, 'Nescafe.png', 0, 45, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(378, 'AR', 'قهوة', 'موكا', '', 85, 'Nescafe.png', 0, 45, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(379, 'AR', 'قهوة', 'إسبريسو مزدوج', '', 65, 'doubleEspressoCoffee.png', 0, 45, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(380, 'AR', 'قهوة', 'كابتشينو', '', 85, 'capocinuCoffee.png', 0, 45, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(381, 'AR', 'قهوة', 'لاتيه', '', 85, 'latteCoffee.png', 0, 45, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(382, 'AR', 'المشروبات الغازية ', 'كولا', '330ML', 40, 'Kola.png', 0, 43, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(383, 'AR', 'المشروبات الغازية ', 'فانتا', '330ML', 40, 'Fanta.png', 0, 43, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(384, 'AR', 'المشروبات الغازية ', 'سبرايت ', '330ML', 40, 'Sprite.png', 0, 43, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(385, 'AR', 'المشروبات الغازية ', 'صودا', '250ML', 30, 'UludagPremiumSoda.png', 0, 43, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(386, 'AR', 'المشروبات', 'ماء', '1Litre', 40, 'Su.png', 0, 44, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(387, 'AR', 'المشروبات', 'شاي مثلج - خوخ ', '330ML', 40, 'IceTeaseftali.png', 0, 44, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(388, 'AR', 'المشروبات', 'عصير الخوخ', '330ML', 25, 'IceTeaseftali.png', 0, 44, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(389, 'AR', 'المشروبات', 'شاي مثلج - ليمون', '330ML', 40, 'IceTeaLimon.png', 0, 44, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(390, 'AR', 'المشروبات', 'Cappy Şeftali Meyve Suyu', '330ML', 35, 'CappyseftaliMeyveSuyu.png', 0, 44, '2023-09-01 14:36:46', '2023-09-01 14:36:46');
INSERT INTO `lists` (`id`, `lang`, `title`, `contentHeader`, `contentBody`, `price`, `image`, `type`, `category_id`, `created_at`, `updated_at`) VALUES
(391, 'AR', 'المشروبات', 'عصير الكرز', '330ML', 25, 'CappyVisneMeyveSuyu.png', 0, 44, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(392, 'AR', 'المشروبات', 'ليموناضة بالفراولة ', '1Bardak', 60, 'cilekliLimonata.png', 0, 44, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(393, 'AR', 'المشروبات', 'ليموناضة ', '1Bardak', 55, 'SadeLimonata.png', 0, 44, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(394, 'AR', 'المشروبات', 'ليموناضة  بالنعناع ', '1Bardak', 60, 'NaneliLimonata.png', 0, 44, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(395, 'AR', 'المشروبات', 'ليموناضة بالتفاح الاخضر', '1Bardak', 60, 'YesilElmaliLimonata.png', 0, 44, '2023-09-01 14:36:46', '2023-09-01 14:36:46'),
(396, 'AR', 'المشروبات', 'ليموناضة بالتفاح الاخضر', '1Bardak', 75, 'KibrisLimonatasi.png', 0, 44, '2023-09-01 14:36:46', '2023-09-01 14:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2023_08_22_143537_create_table_category', 1),
(14, '2023_08_22_143629_create_table_list', 1),
(15, '2023_08_28_115820_create_musicwallpaper_table', 1),
(16, '2023_08_29_140025_create_wallpaper_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` bigint UNSIGNED NOT NULL,
  `music` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `music`, `status`, `created_at`, `updated_at`) VALUES
(1, '1693558183_1693555939_bikalam molayem 001.mp3', 1, '2023-09-01 15:49:43', '2023-09-01 15:51:46'),
(2, '1693558191_1693555958_bikalam molayem 002.mp3', 0, '2023-09-01 15:49:51', '2023-09-01 15:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '2023-08-31 13:36:23', 'admin', NULL, '2023-08-31 13:36:23', '2023-08-31 13:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `wallpaper`
--

CREATE TABLE `wallpaper` (
  `id` bigint UNSIGNED NOT NULL,
  `wallpaper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallpaper`
--

INSERT INTO `wallpaper` (`id`, `wallpaper`, `status`, `created_at`, `updated_at`) VALUES
(1, '1693558236_1693556044_pexels-sohail-nachiti-807598.jpg', 0, '2023-09-01 15:50:36', '2023-09-01 15:50:36'),
(2, '1693558283_1693556100_pexels-irina-iriser-1379640.jpg', 1, '2023-09-01 15:51:23', '2023-09-01 15:51:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lists_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallpaper`
--
ALTER TABLE `wallpaper`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lists`
--
ALTER TABLE `lists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallpaper`
--
ALTER TABLE `wallpaper`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lists`
--
ALTER TABLE `lists`
  ADD CONSTRAINT `lists_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
