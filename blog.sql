-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 07 Haz 2020, 14:39:58
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `id` int(11) NOT NULL,
  `adi` varchar(30) DEFAULT NULL,
  `soyadi` varchar(30) DEFAULT NULL,
  `kadi` varchar(30) DEFAULT NULL,
  `şifre` int(30) DEFAULT NULL,
  `telefonno` int(13) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `yetkilendirme` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`id`, `adi`, `soyadi`, `kadi`, `şifre`, `telefonno`, `mail`, `yetkilendirme`) VALUES
(1, 'eda', 'üretir', 'edauretir', 12344, 565454646, 'eda.urteir1907@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makale`
--

CREATE TABLE `makale` (
  `id` int(8) NOT NULL,
  `makale basligi` varchar(30) NOT NULL,
  `yazar` varchar(30) NOT NULL,
  `tarihi` int(9) NOT NULL,
  `makale icerigi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `makale`
--

INSERT INTO `makale` (`id`, `makale basligi`, `yazar`, `tarihi`, `makale icerigi`) VALUES
(1, 'fdgfdgh', 'eda', 180420, 'deneme ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uye`
--

CREATE TABLE `uye` (
  `id` int(11) NOT NULL,
  `isim` varchar(30) DEFAULT NULL,
  `soyisim` varchar(50) DEFAULT NULL,
  `eposta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `uye`
--

INSERT INTO `uye` (`id`, `isim`, `soyisim`, `eposta`) VALUES
(1, 'eda', 'üretir', 'eda.uretir1907@gmail.com'),
(2, 'demir', 'savaş', 'demirsavaş@gmail.com'),
(3, 'barış', 'yılmaz', 'barışyl@gmail.com'),
(11, 'edis', 'tir', 'edis@gmail.com'),
(12, 'beyzaaa', 'yılmaz', 'barışyl@gmail.com'),
(13, 'beyzaaa', 'yılmaz', 'barışyl@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `id` int(11) NOT NULL,
  `yazar` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `icerik` varchar(255) NOT NULL,
  `onay durumu` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `yazar`, `mail`, `icerik`, `onay durumu`) VALUES
(1, 'eda', 'eda.urteir1907@gmail.com', 'bu yazıyı beğendim.', 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `makale`
--
ALTER TABLE `makale`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uye`
--
ALTER TABLE `uye`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `makale`
--
ALTER TABLE `makale`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `uye`
--
ALTER TABLE `uye`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
