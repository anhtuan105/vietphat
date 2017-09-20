-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017 年 8 朁E03 日 14:03
-- サーバのバージョン： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: banhda
--
CREATE DATABASE IF NOT EXISTS banhda DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE banhda;

-- --------------------------------------------------------

--
-- テーブルの構造 amthuc
--

CREATE TABLE amthuc (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `imageLink` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 baogia
--

CREATE TABLE Baogia (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` longtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- テーブルの構造 categorys
--

CREATE TABLE categorys (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `imageLink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ categorys
--

INSERT INTO categorys (id, `name`, create_time, update_time, imageLink) VALUES
(1, 'テレビ', '2014-02-23 17:29:49', '2014-03-11 09:13:56', 'default.jpg'),
(2, '携帯', '2014-02-23 17:30:01', '2014-03-11 09:14:08', '7bf725164f6ad649fb3fa014beb4cccf.jpg'),
(3, 'ネットワーク', '2014-02-23 17:30:13', '2014-03-11 09:14:22', 'a8a89db81036e9035e1f1dfcdc6993c8.jpg');

-- --------------------------------------------------------

--
-- テーブルの構造 chinhsach
--

CREATE TABLE chinhsach (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` longtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ chinhsach
--

INSERT INTO chinhsach (id, `name`, content) VALUES
(2, '問い合わせ窓口', 'アップデート中'),
(3, 'ポリシー', 'アップデート中'),
(4, '注文', 'アップデート中'),
(5, '決済', 'アップデート中');

-- --------------------------------------------------------

--
-- テーブルの構造 hotnews
--

CREATE TABLE hotnews (
  `id` int(11) NOT NULL,
  `news_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tin noi bat';

--
-- テーブルのデータのダンプ hotnews
--

INSERT INTO hotnews (id, news_id) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 hotproducts
--

CREATE TABLE hotproducts (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='San pham noi bat';

--
-- テーブルのデータのダンプ hotproducts
--

INSERT INTO hotproducts (id, product_id) VALUES
(1, 13);

-- --------------------------------------------------------

--
-- テーブルの構造 introduces
--

CREATE TABLE introduces (
  `id` int(11) NOT NULL,
  `introducecol` varchar(45) DEFAULT NULL,
  `content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gioi thieu ve cong ty';

--
-- テーブルのデータのダンプ introduces
--

INSERT INTO introduces (id, introducecol, content) VALUES
(1, '自己紹介', 'アップデート中'),
(2, '自己紹介', 'アップデート中'),
(3, '自己紹介', 'アップデート中');

-- --------------------------------------------------------

--
-- テーブルの構造 newproducts
--

CREATE TABLE newproducts (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- テーブルの構造 news
--

CREATE TABLE news (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `imageLink` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ news
--

INSERT INTO news (id, content, imageLink, title) VALUES
(1, 'アップデート中', 'default.jpg', 'アップデート中');

-- --------------------------------------------------------

--
-- テーブルの構造 products
--

CREATE TABLE products (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `imageLink` varchar(45) NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `content` longtext NOT NULL,
  `discountCost` int(11) DEFAULT NULL,
  `unit` varchar(45) NOT NULL,
  `category` int(11) NOT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Thong tin san pham';

--
-- テーブルのデータのダンプ products
--

INSERT INTO products (id, `name`, cost, `status`, imageLink, create_time, update_time, content, discountCost, unit, category, viewCount, description) VALUES
(27, 'アップデート中', 0, NULL, '', NULL, NULL, '', NULL, '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 slideshow
--

CREATE TABLE slideshow (
  `id` int(11) NOT NULL,
  `imageLink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ slideshow
--

INSERT INTO slideshow (id, imageLink) VALUES
(1, '/banhda/BanhDa/images/slideShow/gaodb.jpg'),
(2, '/banhda/BanhDa/images/slideShow/5eb2b4cae58c32d7eaec9529fa0f0091.jpg'),
(3, '/banhda/BanhDa/images/slideShow/be325d2c2f65107b98812b23535da62c.jpg'),
(4, '/banhda/BanhDa/images/slideShow/8b24580918dd7b8618095fbd9e9c7b47.jpg');

-- --------------------------------------------------------

--
-- テーブルの構造 store
--

CREATE TABLE store (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` longtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- テーブルの構造 tuyendung
--

CREATE TABLE tuyendung (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` longtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- テーブルの構造 users
--

CREATE TABLE users (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ users
--

INSERT INTO users (id, username, `password`) VALUES
(1, 'admin', 'admin123456788'),
(2, 'user', 'Anhtuan1990');

-- --------------------------------------------------------

--
-- テーブルの構造 viewcounts
--

CREATE TABLE viewcounts (
  `id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `current` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gioi thieu ve cong ty';

--
-- テーブルのデータのダンプ viewcounts
--

INSERT INTO viewcounts (id, total, `current`) VALUES
(1, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table amthuc
--
ALTER TABLE amthuc
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table baogia
--
ALTER TABLE baogia
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table categorys
--
ALTER TABLE categorys
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table chinhsach
--
ALTER TABLE chinhsach
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table hotnews
--
ALTER TABLE hotnews
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table hotproducts
--
ALTER TABLE hotproducts
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table introduces
--
ALTER TABLE introduces
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table newproducts
--
ALTER TABLE newproducts
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table news
--
ALTER TABLE news
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table products
--
ALTER TABLE products
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table slideshow
--
ALTER TABLE slideshow
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table store
--
ALTER TABLE store
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table tuyendung
--
ALTER TABLE tuyendung
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table users
--
ALTER TABLE users
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table viewcounts
--
ALTER TABLE viewcounts
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table amthuc
--
ALTER TABLE amthuc
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table baogia
--
ALTER TABLE baogia
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table categorys
--
ALTER TABLE categorys
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table chinhsach
--
ALTER TABLE chinhsach
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table hotnews
--
ALTER TABLE hotnews
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table hotproducts
--
ALTER TABLE hotproducts
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table introduces
--
ALTER TABLE introduces
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table newproducts
--
ALTER TABLE newproducts
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table news
--
ALTER TABLE news
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table products
--
ALTER TABLE products
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table slideshow
--
ALTER TABLE slideshow
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table store
--
ALTER TABLE store
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table tuyendung
--
ALTER TABLE tuyendung
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
