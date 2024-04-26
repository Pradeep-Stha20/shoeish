-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2024 at 06:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ShoeIshshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_district` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_district` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_email`, `cust_phone`, `cust_district`, `cust_address`, `cust_city`, `cust_s_name`, `cust_s_phone`, `cust_s_district`, `cust_s_address`, `cust_s_city`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(16, 'mac', 'mac@gmail.com', '9811111111', 53, 'pulchowk', 'aa', 'mac shrestha', '9811111111', 28, 'danf', 'dang', '140c1f12feeb2c52dfbeb2da6066a73a', 'a3ee24d88e416c30db4077394ba4fdc4', '2021-08-12 11:24:43', '1628746783', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`) VALUES
(1, 'Bhojpur'),
(2, 'Dhankuta'),
(3, 'Ilam'),
(4, 'Jhapa'),
(5, 'Khotang'),
(6, 'Morang'),
(7, 'Okhaldhunga'),
(8, 'Panchthar'),
(9, 'Sankhuwasabha'),
(10, 'Solukhumbu'),
(11, 'Sunsari'),
(12, 'Taplejung'),
(13, 'Terhathum'),
(14, 'Udayapur'),
(15, 'Saptari'),
(16, 'Siraha'),
(17, 'Dhanusha'),
(18, 'Mahottari'),
(19, 'Sarlahi'),
(20, 'Bara'),
(21, 'Parsa'),
(22, 'Rautahat'),
(23, 'Sindhuli'),
(24, 'Ramechhap'),
(25, 'Dolakha'),
(26, 'Bhaktapur'),
(27, 'Dhading'),
(28, 'Kathmandu'),
(29, 'Kavrepalanchowk'),
(30, 'Lalitpur'),
(31, 'Nuwakot'),
(32, 'Rasuwa'),
(33, 'Sindhupalchok'),
(34, 'Chitwan'),
(35, 'Makwanpur'),
(36, 'Baglung'),
(37, 'Gorkha'),
(38, 'Kaski'),
(39, 'Lamjung'),
(40, 'Manang'),
(41, 'Mustang'),
(42, 'Myagdi'),
(43, 'Nawalpur'),
(44, 'Parbat'),
(45, 'Syangja'),
(46, 'Tanahun'),
(47, 'Kapilvastu'),
(48, 'Parasi'),
(49, 'Rupandehi'),
(50, 'Arghakhanchi'),
(51, 'Gulmi'),
(52, 'Palpa'),
(53, 'Dang'),
(54, 'Pyuthan'),
(55, 'Rolpa'),
(56, 'Eastern Rukum'),
(57, 'Banke'),
(58, 'Bardiya'),
(59, 'Western Rukum'),
(60, 'Salyan'),
(61, 'Dolpa'),
(62, 'Humla'),
(63, 'Jumla'),
(64, 'Kalikot'),
(65, 'Mugu'),
(66, 'Surkhet'),
(67, 'Dailekh'),
(68, 'Jajarkot'),
(69, 'Kailali'),
(70, 'Achham'),
(71, 'Doti'),
(72, 'Bajhang'),
(73, 'Bajura'),
(74, 'Kanchanpur'),
(75, 'Dadeldhura'),
(76, 'Baitadi'),
(77, 'Darchula');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(3, 'TUF series', 5),
(4, 'Nitro series', 2),
(5, 'G series', 3),
(6, 'M series', 4),
(7, 'Gaming', 6),
(8, 'Normal', 6),
(9, 'Gaming', 7),
(10, 'Heavy', 7),
(11, 'Normal', 8),
(12, 'Gaming', 8),
(13, 'SSD', 9),
(14, 'HDD', 9),
(15, 'RAM', 9),
(16, 'Dell', 10),
(17, 'Acer', 11),
(18, 'Prolink', 12),
(22, 'SMART', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'How to find an item on Shoe IshGI?', '<p style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><span style=\"color: inherit;\">Search your favourite product through categorywise.</span></p>\r\n'),
(7, 'What if product is damaged ?', '<p>You can refund it .</p>'),
(8, 'What are the payment methods?', '<p>Esewa, Bank Deposit</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'Rs.'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(38, 'Bank Deposit', 'Bank Deposit'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include receipt id and date of payment', 'Include receipt id and date of payment'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select SSD', 'Select SSD'),
(53, 'Select RAM', 'Select RAM'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'No Review is Found', 'No Review is Found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(78, 'Rating', 'Rating'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shopping', 'Continue Shopping'),
(13, 'Welcome', 'Welcome'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Shipping Info', 'Update Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(94, 'Email Address', 'Email Address'),
(96, 'Password', 'Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'District', 'District'),
(107, 'City', 'City'),
(117, 'Update Profile', 'Update Profile'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Shipping Information is updated successfully.', 'Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a district.', 'You must have to select a district.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(152, 'Your registration is completed.', 'Your registration is completed.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'SSD', 'SSD'),
(158, 'RAM', 'RAM'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(2, 'Acer', 3),
(3, 'Dell', 3),
(4, 'MSI', 3),
(5, 'Asus', 3),
(6, 'Keyboard', 1),
(7, 'Mouse', 1),
(8, 'Headphones', 1),
(9, 'Storage', 1),
(10, 'Office use', 2),
(11, 'Heavy use', 2),
(12, 'Normal use', 2),
(16, 'Samsung', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `ssd` int(5) NOT NULL,
  `ram` int(5) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `ssd`, `ram`, `quantity`, `unit_price`, `payment_id`, `cust_id`) VALUES
(40, 5, 'Light gaming mouse', 0, 0, '1', '800', '1628746979', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `faq_title`, `faq_banner`, `faq_meta_title`, `contact_title`, `contact_banner`, `contact_meta_title`) VALUES
(1, 'About Us', '<h1 style=\"text-align: justify; \"><b>Final Semester project</b></h1><h2 style=\"text-align: justify; \">Supervisor<b>: Mr. Prakash Gautam</b></h2><h2 style=\"text-align: justify; \"><b>Group Members:</b></h2><h3 style=\"text-align: justify; \">Ajay Prajapati<br>Jitendra Shrestha<br>Nitesh KC</h3>\r\n', 'about-banner.jpg', 'DigiShop | About Us', 'FAQ', 'faq-banner.jpg', 'DigiShop | FAQ', 'Contact Us', 'contact-banner.jpg', 'DigiShop | Contact');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `paid_amount`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(43, 16, 'mac', 'mac@gmail.com', '2024-03-30 19:23:49', 812, 'id 2234\r\n024/12', 'Bank Deposit', 'Pending', 'Pending', '1711805929'),
(42, 16, 'mac', 'mac@gmail.com', '2021-08-12 11:27:59', 800, 'id : 12334\r\ndate : aug 12', 'Bank Deposit', 'Pending', 'Pending', '1628746979');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(3, 'New Durable Keyboard', '', '200', 20, 'product-featured-3.jpg', '<p>This is very good in design.</p>', '<p>Very durable</p>', '<p>No</p>', '<p><br></p>', '<p>Non returnable</p>', 4, 0, 1, 8),
(4, 'New Gaming Keyboard', '', '1200', 20, 'product-featured-4.png', '<p>Gaming Keyboard</p>', '', '', '', '', 9, 0, 1, 7),
(5, 'Light gaming mouse', '', '800', 18, 'product-featured-5.jpeg', '', '', '', '', '', 87, 1, 1, 9),
(6, 'Large Bass Boosted', '', '4000', 19, 'product-featured-6.jpg', '', '', '', '', '', 14, 0, 1, 12),
(7, 'Samsung ssd', '4000', '3000', 20, 'product-featured-7.jpg', '', '', '', '', '', 1, 0, 1, 13),
(8, 'Dell desktop', '', '30000', 20, 'product-featured-8.jpg', '', '', '', '', '', 1, 0, 1, 16),
(9, 'Acer nitro 5', '', '105000', 19, 'product-featured-9.png', '', '', '', '', '', 28, 1, 1, 4),
(10, 'G3 gaming Dell Laptop', '', '88000', 5, 'product-featured-10.jpg', '', '', '', '', '', 26, 1, 1, 5),
(11, 'New MSI gaming laptop', '110000', '105000', 10, 'product-featured-11.jpg', '', '', '', '', '', 10, 0, 1, 6),
(12, 'Asus Gaming Laptop', '', '150000', 1, 'product-featured-12.jpg', '', '', '', '', '', 11, 0, 1, 3),
(15, 'fantech gaming', '10', '12', 9, 'product-featured-15.jpg', '', '', '', '', '', 21, 0, 1, 7),
(16, 'RAM', '', '4000', 9, 'product-featured-16.jpg', '<p>popular ram</p>', '', '', '', '', 20, 0, 1, 15),
(17, 'Smart Curved Tv', '', '120000', 9, 'product-featured-17.jpg', '<p>televison</p>', 'televison', '<p>-</p><p>-</p><p>-features 3</p>', '', '', 50, 1, 1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(2, '2.jpeg', 3),
(3, '3.jpg', 4),
(4, '4.jpg', 7),
(5, '5.jpg', 9),
(6, '6.jpg', 10),
(7, '7.jpg', 11),
(8, '8.jpg', 12),
(11, '11.jpg', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_ram`
--

CREATE TABLE `tbl_product_ram` (
  `id` int(11) NOT NULL,
  `ram_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_ram`
--

INSERT INTO `tbl_product_ram` (`id`, `ram_id`, `p_id`) VALUES
(9, 21, 9),
(10, 23, 9),
(11, 24, 9),
(12, 25, 9),
(13, 23, 10),
(14, 24, 10),
(15, 23, 11),
(16, 24, 11),
(17, 25, 11),
(24, 21, 12),
(25, 23, 12),
(26, 24, 12),
(44, 21, 16),
(45, 23, 16),
(46, 24, 16),
(47, 25, 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_ssd`
--

CREATE TABLE `tbl_product_ssd` (
  `id` int(11) NOT NULL,
  `ssd_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_ssd`
--

INSERT INTO `tbl_product_ssd` (`id`, `ssd_id`, `p_id`) VALUES
(9, 1, 7),
(10, 2, 7),
(11, 3, 7),
(12, 4, 7),
(13, 1, 9),
(14, 2, 9),
(15, 3, 9),
(16, 4, 9),
(17, 1, 10),
(18, 2, 10),
(19, 1, 11),
(20, 2, 11),
(27, 1, 12),
(28, 2, 12),
(29, 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ram`
--

CREATE TABLE `tbl_ram` (
  `ram_id` int(11) NOT NULL,
  `ram_capacity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_ram`
--

INSERT INTO `tbl_ram` (`ram_id`, `ram_capacity`) VALUES
(21, 4),
(23, 8),
(24, 12),
(25, 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`rt_id`, `p_id`, `cust_id`, `comment`, `rating`) VALUES
(2, 5, 9, 'satisfactory', 5),
(5, 5, 11, 'worst', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Easy Returns', 'Return any item before 15 days. No questions asked.', 'service-5.jpg'),
(6, 'Free Shipping', 'Enjoy free shipping in Kathmandu valley. More districts to be added sooner.', 'service-6.png'),
(7, 'Fast Delivery', 'Items are shipped in 24 hours.', 'service-7.gif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_map_iframe`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `banner_login`, `banner_registration`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`) VALUES
(1, 'logo.png', 'favicon.png', '', 'Copyright © 2021. All Rights Reserved. | asura', 'TOKHA, KATHMANDU', 'support@asura.com', '0987654', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14140.581290619544!2d85.29238518087945!3d27.620015525248807!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb17b053175627%3A0x38905d236dc497b8!2sBungamati!5e0!3m2!1sen!2snp!4v1624168439782!5m2!1sen!2snp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 10, 10, 10, 'DigiShop | Online Digital Shop', 'banner_login.jpg', 'banner_registration.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'Featured Products', 'See all our featured products from here', 'Latest Products', 'See all our latest products from here', 'Popular Products', 'See all our popular products from here', 'Bank Name: ABC Bank\r\nAccount Number: 1222320234444\r\nBranch Name: Lalitpur Branch\r\nCountry: Nepal', '', '', '', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `district_id`, `amount`) VALUES
(1, 28, '0'),
(2, 30, '0'),
(3, 26, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'Welcome to DigiShop', 'Acer Nitro 5 Series', 'Buy Now', 'https://localhost/digi/product-category.php?id=4&type=end-category', 'Right'),
(2, 'slider-2.jpg', 'MSI New Gaming Laptop', '', 'Check', 'https://localhost/digi/product.php?id=11', 'Right'),
(3, 'slider-3.jpeg', 'Get Your accessories', '', 'Check', 'http://localhost/digi/product-category.php?id=1&type=top-category', 'Right');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/', 'fa fa-twitter'),
(3, 'LinkedIn', 'https://www.twitter.com/', 'fa fa-linkedin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ssd`
--

CREATE TABLE `tbl_ssd` (
  `ssd_id` int(11) NOT NULL,
  `ssd_capacity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_ssd`
--

INSERT INTO `tbl_ssd` (`ssd_id`, `ssd_capacity`) VALUES
(1, '256'),
(2, '512'),
(3, '1024'),
(4, '2048');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Accessories', 1),
(2, 'Desktops', 1),
(3, 'Laptops', 1),
(7, 'Televison', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Asura', 'sizan@gmail.com', '9816207570', '21232f297a57a5a743894a0e4a801fc3', 'user-1.png', 'Super Admin', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_ram`
--
ALTER TABLE `tbl_product_ram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_ssd`
--
ALTER TABLE `tbl_product_ssd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ram`
--
ALTER TABLE `tbl_ram`
  ADD PRIMARY KEY (`ram_id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_ssd`
--
ALTER TABLE `tbl_ssd`
  ADD PRIMARY KEY (`ssd_id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product_ram`
--
ALTER TABLE `tbl_product_ram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_product_ssd`
--
ALTER TABLE `tbl_product_ssd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_ram`
--
ALTER TABLE `tbl_ram`
  MODIFY `ram_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_ssd`
--
ALTER TABLE `tbl_ssd`
  MODIFY `ssd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
