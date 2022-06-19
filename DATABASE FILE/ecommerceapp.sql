-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2022 at 06:43 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(9, 'Louis Panggabean', 'panggabeanlouis17@gmail.com', '$2y$10$8NZ5cuhqpTgZTqUnMrAllOoVHN9RMkqagH9TtgCag.PteURTYFdJ6', '0'),
(10, 'Sinta Simbolon', 'sinta03@gmail.com', '$2y$10$AD1wLy1Sd1PA87zK5gCC/uVz1GO.jTdiCrETXwB0nhFRrdAI/Ax.m', '0'),
(11, 'Windah Kasih', 'windahkasih@gamil.com', '$2y$10$3WzqwsL2htXb9KZjsVjhU.fuSv9vkb0sBom5258FgNhthG0f8NFva', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Snack'),
(2, 'Minuman'),
(3, 'Roti'),
(6, 'Perlengkapan Kuliah'),
(7, 'Perlengkapan Asrama');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 4, '::1', 4, 1),
(3, 1, '::1', 7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Makanan'),
(3, 'Minuman'),
(4, 'Alat Tulis'),
(5, 'Peralatan Mandi'),
(15, 'Alat Mencuci');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 2, 1, 'Beng Beng', 3000, 5, 'Biskuit yang renyah dangan toping yang nikmat', '1655543944_1654166911_1653976965_beng1.jpg', 'beng beng, makanan'),
(2, 2, 1, 'Better', 1000, 7, '5G goes Pro. A14 Bionic rockets past every other smartphone chip. The Pro camera system takes low-light photography to the next level â€” with an even bigger jump on iPhone 12 Pro Max. And Ceramic Shield delivers four times better drop performance.', '1655543964_1654421936_better1.jpg', 'apple, iphone'),
(4, 2, 1, 'Chiki Twist', 1500, 10, 'This is a demo', '1655544001_1654421978_Twice1.jpg', 'samsung, s21, s21 ultra'),
(5, 3, 2, 'Kopiko Lucky Day', 8000, 13, 'On spec-sheet, the OnePlus 8T boasts plenty of improvements from its predecessor i.e. the OnePlus 8. For instance, its 6.55-inch 1080p OLED display now comes with a faster 120Hz refresh rate. In comparison, the OnePlus 8 had a 90Hz refresh rate. This upgrade seems huge. However, users will agree that you canâ€™t really find much of a difference between 90Hz to 120Hz on a smartphone screen.', '1655544037_1654422075_kopiko1.jpg', 'one plus, oneplus8'),
(10, 2, 1, 'Siip Keju', 2000, 6, 'Amazing Bluetooth headphones sound with aptX technology. High-quality built-in microphone with Bluetooth 5.0 technology', '1655544064_1654426949_siip1.jpg', 'headphone, aduro'),
(11, 3, 2, 'Good Day', 16000, 3, 'Color: Grey/Charcoal/Dark Grey', '1655544103_1654567638_goodday1.jpg', 'dr martens, shoes'),
(19, 4, 6, 'Pulpen Standard Ae9', 3500, 4, 'Colors: Black/White/Maroon', '1655566037_1655196275_1655122541_1654525735_pulpen.jpg', 'hood, hoodie'),
(20, 15, 7, 'Rinso', 8150, 19, 'Thanos sixth scale collectible figure.', '1655566048_1655196460_1654526083_ringso.jpg', 'rinso, alat mencuci, toys, hot toys');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Edgar', 'simatupang', 'edgar@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0812441201', 'asrama silo', 'D3 Teknologi Informatika'),
(2, 'Goldi', 'Pardede', 'goldi@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0813890801', 'Asrama silo', 'De TK'),
(3, 'Brian', 'Napitupulu', 'Brian@gmail.com', 'bnbjk2j1b1j22', '0812444543', 'Asrama silo', 'D3 TK'),
(5, 'Sio', 'Purba', 'Sio@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '0812435165', 'Asrama 4', 'S1 Tehnik Bioproses'),
(6, 'Melissa', 'pakpahan', 'melissa@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '0813771281', 'Asrama Peniel', 'S1 Sistem Informatika'),
(7, 'louis', 'panggabean', 'panggabeanlouis17@gmail.com', '20ec0ba217d1629428c030230f72ac68', '0823532177', 'Asarama Silo', 'D3 Tehnik Komputer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
