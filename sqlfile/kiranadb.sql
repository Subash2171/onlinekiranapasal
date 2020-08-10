-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 09:53 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kiranadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'test', '098f6bcd4621d373cade4e832627b4f6', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `pid` int(100) DEFAULT NULL,
  `deliverydate` varchar(100) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `quantity` varchar(100) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `pid`, `deliverydate`, `message`, `Status`, `quantity`, `PostingDate`) VALUES
(7, 'kripatmg21@gmail.com', 20, '18th May, 2020 at 4pm', 'Use proper disinfectant and pandemic precaution', 0, '50', '2020-05-16 16:43:42'),
(8, 'biren43@gmail.com', 21, '21st, May, 2020', 'Use proper precaution for pandemic, please.', 0, '10', '2020-05-16 16:44:49'),
(9, 'test21@gmail.com', 20, '11th May, 2020', '12', 0, '12', '2020-05-18 18:45:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Ariel', '2020-05-16 14:55:47', NULL),
(9, 'McVities', '2020-05-16 14:55:58', NULL),
(10, 'Britannia', '2020-05-16 14:56:13', NULL),
(11, 'Julie''s', '2020-05-16 14:56:20', NULL),
(12, 'Cadbury', '2020-05-16 14:56:29', NULL),
(13, 'Nescafe', '2020-05-16 14:56:42', NULL),
(14, 'Local', '2020-05-16 14:57:01', NULL),
(15, 'Gyan', '2020-05-16 14:57:08', NULL),
(16, 'Himalayan Java', '2020-05-16 14:57:19', NULL),
(17, 'Valley', '2020-05-16 14:57:29', NULL),
(18, 'Henko', '2020-05-16 14:57:47', NULL),
(19, 'Aayo Noon ', '2020-05-16 14:58:02', NULL),
(20, 'Toblerone', '2020-05-16 14:58:27', NULL),
(21, 'Roza', '2020-05-16 14:58:34', NULL),
(22, 'Cremica', '2020-05-16 15:54:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Saptari ', 'pankaj15sah@gmail.com', '9816705577');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Pankaj Sah', 'pankaj15sah@gmail.com', '9816705577', 'Your service is excellent and precise', '2017-06-18 10:03:07', 1),
(2, 'Bindhu Gurung', 'bindhu27@gmail.com', '9841423124', 'I love your service and the great discount you have provided in particular products. ', '2020-05-16 14:53:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																				<p align="justify"><font size="2"><strong><span style="color: rgb(153, 0, 0);">Term and Conditions:</span></strong></font></p><p align="justify"><font size="2"><strong><span style="color: rgb(153, 0, 0);">* Every content that is posted in www.kiranapasal.com are strictly under the regulation of copyright and piracy of such content will lead toward legal implications.&nbsp;</span></strong></font></p><p align="justify"><font size="2"><strong><span style="color: rgb(153, 0, 0);">* Each photograph and graphical content presented in the given single vendor eCommerce website is solely personal and property of kiranapasal.com&nbsp;<br></span></strong></font><font size="2"><br></font></p>\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<div style="text-align: justify;"><span style="font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: 700;">Privacy and Policies:</span></div><div style="text-align: justify;"><span style="font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: 700;">* The Online Kirana Pasal collects information regarding its client for ease in their daily shopping and commercial activities through the website which is confidential and not shared with anyone. Hence, the website utilizes an advanced algorithm to provide its best to protect the customer''s private information and details.&nbsp;</span></div>'),
(3, 'About Us ', 'aboutus', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">We are Online Kirana Pasal which provides daily food items and groceries required in the kitchen. Online Kirana Pasal provides services at your doorstep within 30-60 minutes time duration. We take good care of consumer''s health and take serious action for virus control during this pandemic time.&nbsp;<br></span>'),
(11, 'FAQs', 'faqs', '																																								<p style="text-align: center;"><span style="color: rgb(0, 0, 0); font-family: arial; font-size: medium; font-weight: bold; text-align: right;"><br></span></p><div style="text-align: left;"><span style="color: rgb(0, 0, 0); font-family: arial; font-size: medium; font-weight: 700;">Is there a special discount fo bundle buyers?&nbsp;</span></div><span style="color: rgb(0, 0, 0); font-family: arial; font-size: medium; text-align: right;"><div style="text-align: left;">Yes, we offer the most suitable discount for even an individual product including a heavy discount for a bundle buyer.&nbsp;</div></span><span style="text-align: right; font-family: arial; font-size: medium; color: rgb(0, 0, 0); font-weight: 700;"><div style="text-align: left;">How can I subscribe to a package like&nbsp;regular,&nbsp;&nbsp;weekly, or monthly packages?</div></span><span style="font-family: arial; font-size: medium; text-align: right; color: inherit;"><div style="text-align: left;"><span style="color: inherit;">You can mail us and we will provide you with direct out schemes plans via Gmail, FB, or phone.&nbsp;</span></div></span><span style="color: rgb(0, 0, 0); font-family: arial; font-size: medium; font-weight: 600; letter-spacing: 0.05rem; text-align: right; text-transform: uppercase;"><div style="text-align: left;"><span style="letter-spacing: 0.05rem;">HOW CAN I CHANGE MY SHIPPING ADDRESS?</span></div></span><span style="font-family: arial; font-size: medium; text-align: right; color: inherit;"><div style="text-align: left;"><span style="color: inherit;">By default, the last used shipping address will be saved into your Sample Store account. When you are checking out your order, the default shipping address will be displayed and you have the option to amend it if you need to.</span></div></span><span style="color: rgb(0, 0, 0); font-family: arial; font-size: medium; font-weight: 600; letter-spacing: 0.05rem; text-align: right; text-transform: uppercase;"><div style="text-align: left;"><span style="letter-spacing: 0.05rem;">HOW DO I ACTIVATE MY ACCOUNT?</span></div></span><span style="font-family: arial; font-size: medium; color: inherit; text-align: justify;"><div style="text-align: left;"><span style="color: inherit;">The instructions to activate your account will be sent to your email once you have submitted the registration form. If you did not receive this email, your email service provider’s mailing software may be blocking it. You can try checking your junk/spam folder or contact us at&nbsp;</span><a href="mailto:info@example.com" style="text-align: right; background-color: rgb(255, 255, 255); color: rgb(85, 85, 85); transition-duration: 0.5s; fill: rgb(45, 204, 112);">pankaj15sah@gmail.com</a><span style="color: inherit; text-align: right;">.</span></div></span><p></p>										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(11) NOT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `BrandName` int(100) DEFAULT NULL,
  `ProductOverview` longtext,
  `Price` int(11) DEFAULT NULL,
  `BestBefore` varchar(100) DEFAULT NULL,
  `MadeYear` int(6) DEFAULT NULL,
  `PaymentType` varchar(100) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `ProductName`, `BrandName`, `ProductOverview`, `Price`, `BestBefore`, `MadeYear`, `PaymentType`, `Vimage1`) VALUES
(20, 'Sandwich Biscuit', 11, 'Le-mond choc hazelnut Sandwich Biscuit, 180 G', 265, '12 months', 2020, 'Cash', 'biscuit.jpg'),
(21, 'Coffee', 13, 'Nescafe Coffee, 400 gm ', 1125, '12 months', 2020, 'Cash', 'coffee.jpg'),
(22, 'Coffee', 16, 'Himalaya Java Coffee - Expresso Roast, 450 gms ', 1400, '12 months', 2020, 'Cash', 'java.jpg'),
(23, 'Chicken Mince', 17, 'Chicken Mince - Valley Cold Store - 500 gm', 270, '2-3 weeks', 2020, 'Cash', 'm1.jpg'),
(24, 'Chicken Boneless Leg', 17, 'Chicken Boneless Leg - Valley Cold Store - 500 gm ', 320, '1 Week', 2020, 'Cash', 'm3.jpg'),
(25, 'Hot Dog Chicken Sausage ', 14, 'Nina & Hager Hot Dog Chicken Sausage (Green Chili) - 400 gm ', 440, '1 Week', 2020, 'Cash', 'm4.jpg'),
(26, 'Maida ', 15, 'Gyan Maida 0 1 kg', 78, '6 months', 2020, 'Cash', 'maida.jpg'),
(27, 'Salt', 19, 'Salt - Aayo Noon , 1kg', 20, '12 months', 2020, 'Cash', 'salt.jpg'),
(28, 'White Chocolate', 20, 'Toblerone White, 100 gm ', 350, '12 months', 2020, 'Cash', 'tobleron.jpg'),
(29, 'Sardine ', 21, 'Roza Sardine in Tomato Sauce with Cumin, 185 gm', 130, '12 months', 2020, 'Cash', 'tuna.jpg'),
(30, 'Tuna Chunk', 21, 'Roza Tuna Chunk in Vegetable Oil, 185 gm', 155, '12 months', 2020, 'Cash', 'tuna1.jpg'),
(31, 'Digestive Biscuit', 9, 'Mc Vitie''s Digestive Biscuit', 230, '12 months', 2020, 'Cash', 'b2.jpg'),
(32, 'Marie Gold Biscuit ', 10, 'Britannia Marie Gold Biscuit, 250 gm ', 50, '12 months', 2020, 'Cash', 'b3.jpg'),
(33, 'Digestive Biscuit', 22, 'Cremica Digestive Biscuit, 250 gm ', 90, '12 months', 2020, 'Cash', 'bis.jpg'),
(34, 'Sandwich Biscuit', 11, 'Julie''s Le-mond Choc Hazelnut Sandwich, 180 gm', 265, '12 months', 2020, 'Cash', 'biscuit.jpg'),
(35, 'Alfonso Mangos 12 pcs', 14, 'Alfonso Mangos 12 pcs Pack ', 2500, '1/2 Weeks', 2020, 'Cash', 'alfonso.JPG'),
(36, 'Almond', 14, 'Almond 500 gm ', 870, '6 months', 2020, 'Cash', 'almond.JPG'),
(37, 'Capsicum', 14, 'Capsicum, 500 gm ', 50, '1/2 Weeks', 2020, 'Cash', 'bgeda.JPG'),
(38, 'Cashew Nuts', 14, 'Cashew Nuts, 1 kg', 2100, '6 months', 2020, 'Cash', 'cashew.JPG'),
(39, 'Dragon Fruit ', 14, 'Dragon Fruit ( 2kg Approx Pc) ', 800, '1/2 Weeks', 2020, 'Cash', 'dragon.JPG'),
(40, 'Mango', 14, 'Mango Malda ', 160, '1/2 Weeks', 2020, 'Cash', 'mango.JPG'),
(41, 'Methi Saag', 14, 'Methi Saag, 1 Bunch ', 40, '2-3 days', 2020, 'Cash', 'methi.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'harry123@gmail.com', '2020-05-16 12:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'kripatmg21@gmail.com', 'Probably the best online groceries and kitchen food items that are verified and safe. ', '2020-05-16 14:06:07', 1),
(4, 'biren43@gmail.com', 'Great service and a way to faster delivery. I am surprised by there CSR. ', '2020-05-16 14:38:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(5, 'Kripa Tamang', 'kripatmg21@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '9841232343', NULL, NULL, NULL, NULL, '2020-05-16 13:03:27', NULL),
(6, 'Biren Sah', 'biren43@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '9843432312', NULL, NULL, NULL, NULL, '2020-05-16 14:10:00', NULL),
(7, 'test21', 'test21@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '9801232343', NULL, NULL, NULL, NULL, '2020-05-18 18:44:49', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
