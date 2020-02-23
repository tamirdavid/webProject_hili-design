-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: פברואר 23, 2020 בזמן 12:12 PM
-- גרסת שרת: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-project-g8`
--

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `street` varchar(30) NOT NULL,
  `street_num` int(11) NOT NULL,
  `zip_code` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `profile_pic_path` varchar(120) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- הוצאת מידע עבור טבלה `customers`
--

INSERT INTO `customers` (`first_name`, `last_name`, `email`, `birth_date`, `gender`, `city`, `street`, `street_num`, `zip_code`, `password`, `profile_pic_path`) VALUES
('Yotam', 'David', 'yotam@gmail.com', '2020-01-09', 'male', 'gi', 'e', 1, '90970', '111333', '');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(200) NOT NULL,
  `memail` varchar(200) NOT NULL,
  `mmessage` varchar(500) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- הוצאת מידע עבור טבלה `messages`
--

INSERT INTO `messages` (`mid`, `mname`, `memail`, `mmessage`) VALUES
(1, 'adf', 'yotam12341@gmail.com', 'send me email back please i have few questions'),
(2, 'dasfdsfads', 'yotam12341@gmail.com', 'I want your resume for some job'),
(4, 'Tamirdavid', 'tamiriosh@gmail.com', 'Hi hili, send me msg asap i have a question about your style');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `nid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `create_date` date DEFAULT NULL,
  `more_info_path` varchar(100) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- הוצאת מידע עבור טבלה `news`
--

INSERT INTO `news` (`nid`, `title`, `sub_title`, `image_path`, `create_date`, `more_info_path`) VALUES
(1, 'New Workshop', 'Contact for details', '../Media/products_images/workshops/rikmaworkshop.jpg', '2019-12-03', 'shop.php'),
(2, 'New Embroidery', 'Check out our shop', '../Media/products_images/embroidery/doobi.jpg', '2019-12-04', 'shop.php'),
(3, 'New Service', 'Logo design', '../Media/products_images/graphic_design/icon1.jpg', '2020-01-05', 'shop.php'),
(4, 'New workshop', 'Embroderiy workshop', '../Media/products_images/workshops/rikmaworkshop.j...	', '2019-11-07', 'shop.php');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `content` varchar(400) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `fko2p` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- הוצאת מידע עבור טבלה `orders`
--

INSERT INTO `orders` (`oid`, `pid`, `full_name`, `phone_number`, `email`, `content`) VALUES
(1, 1, 'ori klein', '0526743213', 'yotam12341@gmail.com', 'i want this'),
(2, 4, 'harry potter', '0526743213', 'yotam12341@gmail.com', 'i need this now'),
(3, 2, 'rick sanchez', '0526743213', 'yoooo@gmail.com', 'i want this product but on different shape'),
(8, 1, 'Tamir David', '0524302630', 'tamiriosh@gmail.com', 'I have falafel and i want you to design my Logo');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `category` varchar(80) NOT NULL,
  `description` varchar(255) NOT NULL,
  `main_pic_path` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- הוצאת מידע עבור טבלה `products`
--

INSERT INTO `products` (`pid`, `pname`, `category`, `description`, `main_pic_path`) VALUES
(1, 'Logo and graphic design for your website', 'Graphic_design', 'I will design amazing logos and will make custom designs for you. \r\n\r\n', '../Media/products_images/graphic_design/web logo1.jpg'),
(2, 'Custom graphic designs for any need', 'Graphic_design', 'I will design amazing custom graphic designs for your business or brand. \r\n\r\n', '../Media/products_images/graphic_design/graphicdesign2.jpg'),
(3, 'Calligraphy designs tailor made for any need\r\n', 'Graphic_design', 'I will design fonts or any custom Calligraphy artwork you desire. \r\n\r\n', '../Media/products_images/graphic_design/cligraphy1.jpg'),
(4, 'Custom embroidery designs for any need\r\n', 'Embroidery', '5 years of experience designing beautiful models.\r\n', '../Media/products_images/embroidery/rikma1.jpg'),
(5, 'Embroidery wall art with custom deign\r\n', 'Embroidery', 'I will design custom Embroidery wall art by your requests.\r\n\r\n', '../Media/products_images/embroidery/costume1.jpg'),
(6, 'Custom embroidery designs on any cloth\r\n', 'Embroidery', 'I will design Embroidery designs on any cloth by your request.\r\n\r\n', '../Media/products_images/embroidery/rikma 2.jpg'),
(7, 'Event art workshops\r\n', 'Workshop', 'Art workshop for any event or gathering, including materials.', '../Media/products_images/workshops/artworkshop.jpg'),
(8, 'Embroidery workshop\r\n', 'Workshop', 'Embroidery workshop for any event or gathering including  materials.', '../Media/products_images/workshops/rikmaworkshop.jpg');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `product_pictures`
--

DROP TABLE IF EXISTS `product_pictures`;
CREATE TABLE IF NOT EXISTS `product_pictures` (
  `pid` int(11) NOT NULL,
  `path` varchar(200) NOT NULL,
  PRIMARY KEY (`path`,`pid`),
  KEY `fk2products` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- הוצאת מידע עבור טבלה `product_pictures`
--

INSERT INTO `product_pictures` (`pid`, `path`) VALUES
(1, ' ..\\Media\\products_images\\graphic_design\\maatafa.jpg'),
(1, '..\\Media\\products_images\\graphic_design\\graphic2.jpg'),
(1, '..\\Media\\products_images\\graphic_design\\web logo1.jpg'),
(2, '..\\Media\\products_images\\graphic_design\\bookcover1.jpg'),
(2, '..\\Media\\products_images\\graphic_design\\graphicdesign2.jpg'),
(2, '..\\Media\\products_images\\graphic_design\\sjopdesign1.jpg'),
(3, '..\\Media\\products_images\\graphic_design\\cali.jpg'),
(3, '..\\Media\\products_images\\graphic_design\\cali2.jpg'),
(3, '..\\Media\\products_images\\graphic_design\\cligraphy1.jpg'),
(4, '..\\Media\\products_images\\embroidery\\ananas.jpg'),
(4, '..\\Media\\products_images\\embroidery\\rikma1.jpg'),
(4, '..\\Media\\products_images\\embroidery\\rimon.jpg'),
(5, '..\\Media\\products_images\\embroidery\\kir2.jpg'),
(5, '..\\Media\\products_images\\embroidery\\rikma 2.jpg'),
(5, '..\\Media\\products_images\\embroidery\\safsal.jpg'),
(6, '..\\Media\\products_images\\embroidery\\flowers.jpg'),
(6, '..\\Media\\products_images\\embroidery\\taapoz.jpg'),
(6, '..\\Media\\products_images\\embroidery\\totim.jpg'),
(7, '..\\Media\\products_images\\graphic_design\\graphic desgin1.jpg'),
(7, '..\\Media\\products_images\\workshops\\artworkshop.jpg'),
(7, '..\\Media\\products_images\\workshops\\images.jpg'),
(8, '..\\Media\\products_images\\embroidery\\tavas.jpg'),
(8, '..\\Media\\products_images\\embroidery\\watermelon.jpg'),
(8, '..\\Media\\products_images\\workshops\\rikmaworkshop.jpg');

--
-- הגבלות לטבלאות שהוצאו
--

--
-- הגבלות לטבלה `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fko2p` FOREIGN KEY (`pid`) REFERENCES `products` (`pid`);

--
-- הגבלות לטבלה `product_pictures`
--
ALTER TABLE `product_pictures`
  ADD CONSTRAINT `fk2products` FOREIGN KEY (`pid`) REFERENCES `products` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
