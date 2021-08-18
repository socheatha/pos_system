-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2018 at 04:37 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_branch`
--

CREATE TABLE `tbl_pos_branch` (
  `bra_id` int(11) NOT NULL,
  `bra_name` varchar(255) NOT NULL,
  `bra_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pos_branch`
--

INSERT INTO `tbl_pos_branch` (`bra_id`, `bra_name`, `bra_note`) VALUES
(1, 'PK Mart', 'PK Mart'),
(2, 'Phnom Penh', 'pp cambodia'),
(3, 'siem reap ', 'cambodia ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_category`
--

CREATE TABLE `tbl_pos_category` (
  `cate_id` int(100) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `note_cate` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos_category`
--

INSERT INTO `tbl_pos_category` (`cate_id`, `category_name`, `note_cate`) VALUES
(1, 'Drinks', 'Soda, Water, Juice'),
(2, 'Diary', 'Milk, Yogurt, '),
(3, 'Bathroom Items', 'Toothpaste, tooth brush, mouth wash, shampoo, conditioner, shaving razer'),
(6, 'Office item', 'Papar plate, plastic cups, plastic bowl, clothe hanger, straws, bathroom brush, clothe clipper'),
(7, 'Stationary', 'pen, pencil, books, eraser, pencil sharpener, rulers, etc'),
(8, 'Coffee ', 'coffee beans '),
(9, 'Japan products', 'all products from japan'),
(10, 'Candy', ''),
(11, 'Tea ', 'Tea leaves '),
(12, 'Fast Food ', 'Bread , Sandwich , Doughnut , Cookie '),
(13, 'Adultry', ''),
(14, 'Health', ''),
(16, 'Flour', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_con_invoice`
--

CREATE TABLE `tbl_pos_con_invoice` (
  `c_id` int(100) NOT NULL,
  `shop_name` text NOT NULL,
  `shop_note` text NOT NULL,
  `logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pos_con_invoice`
--

INSERT INTO `tbl_pos_con_invoice` (`c_id`, `shop_name`, `shop_note`, `logo`) VALUES
(2, '<p><strong>Easy Mart 1122</strong></p>', '<p>សួស្ដី ewwwqq</p>', '2018_06_02_6788.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_customer`
--

CREATE TABLE `tbl_pos_customer` (
  `no` int(11) NOT NULL,
  `date` date NOT NULL,
  `cus_name` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `id` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos_customer`
--

INSERT INTO `tbl_pos_customer` (`no`, `date`, `cus_name`, `phone`, `email`, `note`, `id`) VALUES
(1, '1900-12-22', 'General', '000', '000@000.com', 'general', '001'),
(2, '2018-06-06', 'socheatha', '09621951967', 'teysocheahta@gmail.com11', 'yes note2dd', '002');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_employee`
--

CREATE TABLE `tbl_pos_employee` (
  `emp_id` int(100) NOT NULL,
  `name_khmer` varchar(200) NOT NULL,
  `name_english` varchar(200) NOT NULL,
  `start_on` varchar(20) NOT NULL,
  `position_id` int(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `emp_note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos_employee`
--

INSERT INTO `tbl_pos_employee` (`emp_id`, `name_khmer`, `name_english`, `start_on`, `position_id`, `phone`, `emp_note`) VALUES
(5, 'Dara', 'Dara', '04/13/2018', 2, '0', 'Assistance'),
(6, 'fasf11', 'asfsdf 22', '2018-06-07', 2, '099214389', 'dgdfs ffa fasfs');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_exchange`
--

CREATE TABLE `tbl_pos_exchange` (
  `exchange_id` int(100) NOT NULL,
  `exchange` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos_exchange`
--

INSERT INTO `tbl_pos_exchange` (`exchange_id`, `exchange`, `note`) VALUES
(1, '4100', 't');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_expense_category`
--

CREATE TABLE `tbl_pos_expense_category` (
  `exca_id` int(11) NOT NULL,
  `exca_name` varchar(255) NOT NULL,
  `exca_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pos_expense_category`
--

INSERT INTO `tbl_pos_expense_category` (`exca_id`, `exca_name`, `exca_note`) VALUES
(1, 'expense cat1', 'aa'),
(3, 'expense 222', 'gg'),
(4, 'ggss', '12 ee');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_expense_list`
--

CREATE TABLE `tbl_pos_expense_list` (
  `exp_id` int(11) NOT NULL,
  `exp_date_record` date NOT NULL,
  `exp_description` varchar(255) NOT NULL,
  `exp_expense_category` int(11) NOT NULL,
  `exp_amount` float NOT NULL,
  `exp_employee` int(11) NOT NULL,
  `exp_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pos_expense_list`
--

INSERT INTO `tbl_pos_expense_list` (`exp_id`, `exp_date_record`, `exp_description`, `exp_expense_category`, `exp_amount`, `exp_employee`, `exp_note`) VALUES
(4, '2018-06-27', 'a', 1, 10, 1, '11esdf'),
(5, '2018-06-30', '22', 3, 33, 6, '44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_invoice`
--

CREATE TABLE `tbl_pos_invoice` (
  `transaction_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `inv_no` int(200) NOT NULL,
  `cashier_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cus` int(11) NOT NULL,
  `date_sell` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `vat` decimal(10,2) NOT NULL,
  `pay_dollar` decimal(10,2) NOT NULL,
  `pay_riel` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos_invoice`
--

INSERT INTO `tbl_pos_invoice` (`transaction_id`, `inv_no`, `cashier_name`, `user_id`, `cus`, `date_sell`, `amount`, `vat`, `pay_dollar`, `pay_riel`) VALUES
(000002, 2, '1', 1, 1, '2018-06-08', '1.00', '1.00', '1.00', '1'),
(000003, 3, '1', 1, 1, '2018-06-09', '1.00', '1.00', '1.00', '1'),
(000004, 4, '1', 1, 1, '2018-06-10', '1.00', '1.00', '1.00', '1'),
(000005, 5, '1', 1, 1, '2018-06-10', '1.00', '1.00', '1.00', '1'),
(000006, 6, '1', 1, 1, '2018-06-07', '1.00', '1.00', '1.00', '1'),
(000008, 8, '1', 1, 1, '2018-06-07', '1.00', '1.00', '1.00', '1'),
(000010, 1, '1', 1, 1, '2018-06-07', '1.00', '1.00', '1.00', '1'),
(000011, 2, 'admin', 1, 1, '2018-06-09', '19.36', '10.00', '20.00', '0'),
(000012, 3, 'admin', 1, 1, '2018-06-09', '24.20', '10.00', '10.00', '0'),
(000013, 3, 'admin', 1, 1, '2018-06-09', '24.20', '10.00', '10.00', '0'),
(000014, 3, 'admin', 1, 1, '2018-06-09', '24.20', '10.00', '11.00', '0'),
(000015, 3, 'admin', 1, 1, '2018-06-09', '24.20', '10.00', '33.00', '0'),
(000016, 3, 'admin', 1, 1, '2018-06-09', '24.20', '10.00', '66.00', '0'),
(000017, 4, 'admin', 1, 1, '2018-06-09', '24.20', '10.00', '55.00', '0'),
(000018, 5, 'admin', 1, 1, '2018-06-09', '24.20', '10.00', '99.00', '0'),
(000019, 6, 'admin', 1, 1, '2018-06-09', '24.20', '10.00', '22.00', '0'),
(000020, 7, 'admin', 1, 1, '2018-06-09', '24.20', '10.00', '21.00', '0'),
(000021, 8, 'admin', 1, 1, '2018-06-09', '24.20', '10.00', '12.00', '0'),
(000022, 9, 'admin', 1, 1, '2018-06-09', '72.60', '10.00', '100.00', '0'),
(000023, 10, 'admin', 1, 1, '2018-06-09', '96.80', '10.00', '100.00', '0'),
(000024, 11, 'admin', 1, 1, '2018-06-09', '121.00', '10.00', '100.00', '400000'),
(000025, 12, 'admin', 1, 1, '2018-06-09', '48.40', '10.00', '20.00', '0'),
(000026, 13, 'admin', 1, 1, '2018-06-11', '24.20', '10.00', '50.00', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_position`
--

CREATE TABLE `tbl_pos_position` (
  `position_id` int(20) NOT NULL,
  `position` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos_position`
--

INSERT INTO `tbl_pos_position` (`position_id`, `position`, `note`) VALUES
(1, 'admin', 'admin'),
(2, 'cashier', 'cashier'),
(3, 'stock ', 'stock ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_product`
--

CREATE TABLE `tbl_pos_product` (
  `pro_id` int(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `ref` varchar(200) NOT NULL,
  `paket` varchar(100) NOT NULL,
  `name_en` varchar(200) NOT NULL,
  `name_kh` varchar(200) NOT NULL,
  `price_dolla` decimal(10,2) NOT NULL,
  `price_riel` decimal(10,2) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `note_pro` varchar(200) NOT NULL,
  `cate_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos_product`
--

INSERT INTO `tbl_pos_product` (`pro_id`, `code`, `ref`, `paket`, `name_en`, `name_kh`, `price_dolla`, `price_riel`, `photo`, `note_pro`, `cate_id`) VALUES
(100, '1000109', 'Amazon Cake Plata', 'Box', 'Amazon Cake Plata', 'Amazon Cake Plata', '0.00', '0.00', 'no_photo.png', '', 8),
(101, '1000149', 'Acrylic Tissue Box', 'Pc', 'Acrylic Tissue Box', 'áž”áŸ’ážšáž¢áž”áŸ‹áž€áŸ’ážšážŠáž¶ážŸ', '0.00', '0.00', 's-l300.jpg', '', 8),
(102, '1006151', 'Acrylic Cup-lid Box', 'Pc', 'Acrylic Cup-lid Box', 'áž”áŸ’ážšáž¢áž”áŸ‹', '0.00', '0.00', 'no_photo.png', '', 8),
(103, '1000164', 'Measuring Glass 8 oz', 'CRT', 'Measuring Glass 8 oz', 'áž€áŸ‚ážœážœáž¶ážŸáŸ‹ážáŸ’áž“áž¶ážâ€‹ 8 áž¢áŸ„áž“', '0.00', '0.00', '10993596.jpg', '', 8),
(104, '1000165', 'Stainless Themometer', 'Pc', 'Stainless Themometer', 'Stainless Themometer', '0.00', '0.00', 'milk-frothing-thermometer-stainless-steel-1519-p.jpg', '', 8),
(105, '1000166', 'Measuring Glass 16 0z', 'Pc', 'Measuring Glass 16 0z', 'áž€áŸ‚ážœážœáž¶ážŸáŸ‹ážáŸ’áž“áž¶áž áŸ¡áŸ¦ áž¢áŸ„áž“', '0.00', '0.00', '319tAKIk0IL.jpg', '', 8),
(106, '1000172', 'Stainless cacao shaker', 'Pc', 'Stainless cacao shaker', 'áž€áŸ‚ážœážŠáž¶áž€áŸ‹áž˜áŸ’ážŸáŸ…ážŸáž¼áž€áž¼áž¡áž¶', '0.00', '0.00', 'pNR+620234n.jpg', '', 8),
(107, '1000174', 'Amazon stainless pitocher 32 oz', 'Pc', 'Amazon stainless pitocher 32 oz', 'Amazon stainless pitocher 32 oz', '0.00', '0.00', '41mkQ-NlXvL._SX425_.jpg', '', 8),
(108, '1000175', 'Amazon tamper stainless 58mm', 'Pc', 'Amazon tamper stainless 58mm', 'áž‚áŸ†ážšáž”', '0.00', '0.00', '51pE9js0R5L._SY450_.jpg', '', 8),
(109, '1000177', 'Amazon stainless pitcheer 32 oz', 'Pc', 'Amazon stainless pitcheer 32 oz', 'Amazon stainless pitcheer 32 oz', '0.00', '0.00', 'no_photo.png', '', 8),
(110, '1002456', 'Cafe amazon css ', 'Pc', 'Cafe amazon css ', 'ážáž¶ážŸáž‡áŸážš', '0.00', '0.00', 'no_photo.png', '', 8),
(112, '1000182', 'Amazon Tampor stand 58 mm', 'Pc', 'Amazon Tampor stand 58 mm', 'Amazon Tampor stand 58 mm', '0.00', '0.00', 'no_photo.png', '', 8),
(113, '1000183', 'Acrylic vacuum bottle', 'PAC', 'Acrylic vacuum bottle', 'ážáž¼ážáŸ’áž˜áž€áŸ‚ážœ', '0.00', '0.00', 'no_photo.png', '', 8),
(114, '1000184', 'Acrylic vacuum bottle 600 ml', 'PAC', 'Acrylic vacuum bottle 600 ml', 'ážáž¼ážáŸ’áž˜áž€áŸ‚ážœ áŸ¦áŸ áŸ ', '0.00', '0.00', 'no_photo.png', '', 8),
(115, '1000151', 'Acrylic Cup-lid Box for hot drink', 'Pc', 'Acrylic Cup-lid Box for hot drink', 'Acrylic Cup-lid Box for hot drink', '0.00', '0.00', 'no_photo.png', '', 8),
(116, '1200', 'Carnation Sweetened Condonsc', 'PAC', 'Carnation Sweetened Condonsc', 'áž‘áž¹áž€ážŠáŸ„áŸ‡áž‚áŸ„ážáž¶áž”áŸ‹áž•áŸ’áž¢áŸ‚áž˜', '0.00', '0.00', 'no_photo.png', '', 8),
(117, '1001020', 'Pork', 'Pc', 'Pork', 'ážŸáž¶áž…áŸ‹áž‡áŸ’ážšáž¼áž€áž¢áŸ†áž¶áž„', '3.00', '2.00', 'thai-style-bbq-grilled-pork-moo-ping-white-dish-42619743.jpg', '', 12),
(118, '6000', 'Melon candy (Bottle)', 'Bottle ', 'Melon candy (Bottle)', 'ážŸáŸ’áž€ážšážªáž¡áž¹áž€ážŠáž”', '5.00', '3.00', 'no_photo.png', '', 10),
(120, '0030056666', 's8001001555', 'pcs', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '22.00', '11.00', 'Hot Green Tee With Milk.jpg', '113333', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_revenue_category`
--

CREATE TABLE `tbl_pos_revenue_category` (
  `reca_id` int(11) NOT NULL,
  `reca_name` varchar(255) NOT NULL,
  `reca_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pos_revenue_category`
--

INSERT INTO `tbl_pos_revenue_category` (`reca_id`, `reca_name`, `reca_note`) VALUES
(1, 'Revenu 1', 'r111'),
(7, 'ss', 'sss'),
(8, 'socheatha 11', 'fafs 22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_revenue_list`
--

CREATE TABLE `tbl_pos_revenue_list` (
  `rev_id` int(11) NOT NULL,
  `rev_date_record` date NOT NULL,
  `rev_description` varchar(255) NOT NULL,
  `rev_revenue_category` int(11) NOT NULL,
  `rev_amount` float NOT NULL,
  `rev_employee` int(11) NOT NULL,
  `rev_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pos_revenue_list`
--

INSERT INTO `tbl_pos_revenue_list` (`rev_id`, `rev_date_record`, `rev_description`, `rev_revenue_category`, `rev_amount`, `rev_employee`, `rev_note`) VALUES
(1, '2018-03-28', 'revenu 1', 1, 120.25, 5, 'dfdsf'),
(4, '2018-03-02', 'vv', 1, 2, 5, '22'),
(5, '2018-06-30', 'hehehelo', 1, 500, 5, ' yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_stockin`
--

CREATE TABLE `tbl_pos_stockin` (
  `in_id` int(100) NOT NULL,
  `date_in` date NOT NULL,
  `code_in` varchar(200) NOT NULL,
  `pro_id` int(50) NOT NULL,
  `paket` varchar(255) NOT NULL,
  `qty_in` double NOT NULL,
  `qty_left` int(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payamount` decimal(10,2) NOT NULL,
  `rest_amount` decimal(10,2) NOT NULL,
  `expire_date` varchar(50) NOT NULL,
  `note_in` varchar(200) NOT NULL,
  `vender_id` int(50) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos_stockin`
--

INSERT INTO `tbl_pos_stockin` (`in_id`, `date_in`, `code_in`, `pro_id`, `paket`, `qty_in`, `qty_left`, `price`, `amount`, `payamount`, `rest_amount`, `expire_date`, `note_in`, `vender_id`, `emp_id`, `user_id`) VALUES
(301, '2018-06-30', '1001020', 43, '', 1122, 1, '1122.00', '1258884.00', '1122.00', '1122.00', '2018-06-28', '1122', 20, 6, 1),
(302, '2018-06-30', '0030056666', 120, '', 10, 35, '22.00', '220.00', '50.00', '170.00', '2018-05-30', 'thes test', 19, 5, 1),
(303, '2018-06-27', '6000', 3, '', 10, 2, '5.00', '50.00', '50.00', '0.00', '2018-06-27', 'dfa fas the', 21, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_stockout`
--

CREATE TABLE `tbl_pos_stockout` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `code_out` varchar(200) NOT NULL,
  `pro_nameen` varchar(200) NOT NULL,
  `pro_namekh` varchar(200) NOT NULL,
  `qty_out` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `vat` decimal(10,2) NOT NULL,
  `date_out` date NOT NULL,
  `pro_id` int(111) NOT NULL,
  `so_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos_stockout`
--

INSERT INTO `tbl_pos_stockout` (`transaction_id`, `invoice`, `code_out`, `pro_nameen`, `pro_namekh`, `qty_out`, `price`, `amount`, `discount`, `vat`, `date_out`, `pro_id`, `so_user_id`) VALUES
(72, '2', '0030056666', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '1', '22.00', '17.60', '4.40', '10.00', '2018-06-09', 120, 1),
(73, '2', '6000', '', '', '1', '0.00', '0.00', '0.00', '10.00', '2018-06-09', 118, 1),
(75, '2', '1001020', '', '', '1', '0.00', '0.00', '0.00', '10.00', '2018-06-09', 117, 1),
(76, '3', '0030056666', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '1', '22.00', '22.00', '0.00', '10.00', '2018-06-09', 120, 1),
(77, '4', '0030056666', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '1', '22.00', '22.00', '0.00', '10.00', '2018-06-09', 120, 1),
(78, '5', '0030056666', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '1', '22.00', '22.00', '0.00', '10.00', '2018-06-09', 120, 1),
(79, '6', '0030056666', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '1', '22.00', '22.00', '0.00', '10.00', '2018-06-09', 120, 1),
(80, '7', '0030056666', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '1', '22.00', '22.00', '0.00', '10.00', '2018-06-09', 120, 1),
(81, '8', '0030056666', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '1', '22.00', '22.00', '0.00', '10.00', '2018-06-09', 120, 1),
(82, '9', '0030056666', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '3', '22.00', '66.00', '0.00', '30.00', '2018-06-09', 120, 1),
(83, '10', '0030056666', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '4', '22.00', '88.00', '0.00', '40.00', '2018-06-09', 120, 1),
(84, '11', '0030056666', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '10', '22.00', '110.00', '110.00', '100.00', '2018-06-09', 120, 1),
(89, '12', '0030056666', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '2', '22.00', '44.00', '0.00', '440.00', '2018-06-09', 120, 1),
(90, '13', '0030056666', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '1', '22.00', '22.00', '0.00', '10.00', '2018-06-11', 120, 1),
(91, '14', '0030056666', 'Galaxy S8 Plusqqq', 'Galaxy S8 Pluseee', '1', '22.00', '22.00', '0.00', '10.00', '2018-06-14', 120, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_stock_adjust`
--

CREATE TABLE `tbl_pos_stock_adjust` (
  `sa_id` int(11) NOT NULL,
  `sa_date_record` date NOT NULL,
  `sa_product_code` int(11) NOT NULL,
  `sa_product` varchar(255) NOT NULL,
  `sa_qty_add` float NOT NULL,
  `sa_qty_minus` float NOT NULL,
  `sa_employee` int(11) NOT NULL,
  `sa_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pos_stock_adjust`
--

INSERT INTO `tbl_pos_stock_adjust` (`sa_id`, `sa_date_record`, `sa_product_code`, `sa_product`, `sa_qty_add`, `sa_qty_minus`, `sa_employee`, `sa_note`) VALUES
(1, '2018-03-24', 120, '', 1, 0, 1, 'df'),
(6, '2018-04-03', 146, '', 100, 0, 1, 'dfds'),
(7, '2018-06-28', 14, '', 5001, 22, 1, 'fsaf dsfaf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_supplier_invoice`
--

CREATE TABLE `tbl_pos_supplier_invoice` (
  `supi_id` int(11) NOT NULL,
  `supi_date_record` date NOT NULL,
  `supi_supplier_invoice_no` varchar(255) NOT NULL,
  `supi_supplier_name` int(11) NOT NULL,
  `supi_full_amount` float NOT NULL,
  `supi_pay_amount` float NOT NULL,
  `supi_balance` float NOT NULL,
  `supi_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pos_supplier_invoice`
--

INSERT INTO `tbl_pos_supplier_invoice` (`supi_id`, `supi_date_record`, `supi_supplier_invoice_no`, `supi_supplier_name`, `supi_full_amount`, `supi_pay_amount`, `supi_balance`, `supi_note`) VALUES
(1, '2018-03-26', '1122', 23, 120.32, 1, 2, '33'),
(7, '2018-06-11', '22', 19, 44, 55, -11, ''),
(8, '2018-06-27', 'sfsa', 10, 11, 3, 8, 'fasfas'),
(9, '2018-06-06', '222333444221', 19, 5003, 20, 4983, 'wwqqaaasss');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_user`
--

CREATE TABLE `tbl_pos_user` (
  `id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `position_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos_user`
--

INSERT INTO `tbl_pos_user` (`id`, `username`, `password`, `position_id`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'huy', 'e10adc3949ba59abbe56e057f20f883e', 2),
(3, 'Vorn Sivhuy', 'e10adc3949ba59abbe56e057f20f883e', 3),
(4, 'socheatha', 'b706835de79a2b4e80506f582af3676a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_vat`
--

CREATE TABLE `tbl_pos_vat` (
  `vat_id` int(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos_vat`
--

INSERT INTO `tbl_pos_vat` (`vat_id`, `vat`, `note`) VALUES
(1, '10', 'ten');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_vender`
--

CREATE TABLE `tbl_pos_vender` (
  `vender_id` int(20) NOT NULL,
  `vendername_kh` varchar(200) NOT NULL,
  `vendername_en` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos_vender`
--

INSERT INTO `tbl_pos_vender` (`vender_id`, `vendername_kh`, `vendername_en`, `phone`, `address`, `note`) VALUES
(7, 'áž¢áž¼áž¡áž¶áŸ†áž–áž·áž…â€‹ áž áž¶áž„â€‹ áž–áž¼áž‚áž»áž™ ', 'áž áž¶áž„â€‹ áž–áž¼áž‚áž»áž™', '012836298', 'áž¢áž¼áž¡áž¶áŸ†áž–áž·áž…', 'áž›áž€áŸ‹ážŠáž»áŸ†ážŸáŸ†áž¡áž¸áž¢áž“áž¶áž˜áŸáž™'),
(8, 'áž¢áž¼áž¡áž¶áŸ†áž–áž·áž… ážœáŸáž„ ážŸáŸáž„', 'áž¢áž¼áž¡áž¶áŸ†áž–áž·áž… ážœáŸáž„ ážŸáŸáž„', '012458232', 'áž¢áž¼áž¡áž¶áŸ†áž–áž·áž… ážœáŸáž„ ážŸáŸáž„', 'áž›áž€áŸ‹áž‚áŸ’ážšáž¿áž„áž€áŸ’ážšáž¢áž¼áž”'),
(9, 'áž¢áž¼áž¡áž¶áŸ†áž–áž·áž… áž‡áž¶ ážŸáž»áž„ážƒáž¶áž„', 'áž¢áž¼áž¡áž¶áŸ†áž–áž·áž… áž‡áž¶ ážŸáž»áž„ážƒáž¶áž„', '070516868', 'áž¢áž¼áž¡áž¶áŸ†áž–áž·áž…', 'áž‡áž¶áž“áŸ‹áž‘áž¸áŸ¡ áž‚áŸ’ážšáž¿áž„áž€áŸ’ážšáž¢áž¼áž”\r\n'),
(10, 'V.S.K Trading', 'V.S.K Trading', '017998007', ' ', 'ážŸáž¶ážšáŸ‰áž¶áž™áž€áž»áŸ‡áž€áŸáŸ‡ážáŸƒ'),
(11, 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸ áž…áŸ‚ áž áŸ€áž„', 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸ áž…áŸ‚ áž áŸ€áž„', '092775366', 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸', 'áž›áž€áŸ‹áž‚áŸ’ážšáž¿áž„áž‡áŸážš'),
(12, 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸ áž˜áŸ‰áŸ‚ áž”áŸ’ážšáž»áž‰', 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸ áž˜áŸ‰áŸ‚ áž”áŸ’ážšáž»áž‰', '012998338', 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸', 'áž›áž€áŸ‹ážŸáŸ†áž—áž¶ážšáŸ‡ážŸáž·áž€áŸ’ážŸáž¶'),
(13, 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸ áž›áž¸ áž‚áž„áŸ‹', 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸ áž›áž¸ áž‚áž„áŸ‹', '092985883', 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸', 'áž›áž€áŸ‹ážŸáž¶áž”áŸŠáž¼áž”áŸ„áž€'),
(15, 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸ áž›áž¹áž˜ áž€áž·áž…áŸ’áž…', 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸ áž›áž¹áž˜ áž€áž·áž…áŸ’áž…', '011818686', 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸', 'áž›áž€áŸ‹ážáž„áŸ‹ áž‚áŸ’ážšáž¿áž„áž‡áŸážš áž€áŸ’ážšážŠáž¶ážŸ '),
(16, 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸â€‹ áž›áž€áŸ‹áž‚áŸ’ážšáž¿áž„ážŠáŸ‚áž€ NR', 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸â€‹ áž›áž€áŸ‹áž‚áŸ’ážšáž¿áž„ážŠáŸ‚áž€ NR', '000', 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸', ''),
(17, 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸ ážŸáž»áž áž…áŸáž„', 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸ ážŸáž»áž áž…áŸáž„', '011388899', 'áž¢áž¼áž¬ážŸáŸ’ážŸáž¸', 'áž›áž€áŸ‹áž€áŸ…ážŸáŸŠáž¼áž…áž„ážŸáž€áŸ‹ ážŠáž„áŸ’áž‚áŸ€áž”áž‚áž¶áž”ážŸáž€áŸ‹'),
(18, 'ážŠáŸáž”áŸ‰áž¼ áž¢áž¼áž¡áž¶áŸ†áž–áž·áž…', 'ážŠáŸáž”áŸ‰áž¼ áž¢áž¼áž¡áž¶áŸ†áž–áž·áž…', '066772255', 'áž¢áž¼áž¡áž¶áŸ†áž–áž·áž…', ''),
(19, 'TE TECH LONG', 'TE TECH LONG', '012352277', 'Preak Leap, 6A', ''),
(20, 'Full Well Trading LTD', 'áž€áŸ’ážšáž»áž˜áž áŸŠáž»áž“ážŸáŸ’ážšáŸ„áž˜áž¢áž“áž¶áž˜áŸáž™', '015888250', 'â€‹', 'Sale Person Srey Den'),
(21, 'Pharmarcy Olympic', 'Pharmarcy Olympic', '000', ' ', ''),
(23, '22b', '11a', '33c', '44d', '55e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_wh_stock_adjust`
--

CREATE TABLE `tbl_pos_wh_stock_adjust` (
  `whsa_id` int(11) NOT NULL,
  `whsa_date_record` date NOT NULL,
  `whsa_letter_no` varchar(255) NOT NULL,
  `whsa_product_code` int(11) NOT NULL,
  `whsa_product` varchar(255) NOT NULL,
  `whsa_qty_add` float NOT NULL,
  `whsa_qty_minus` float NOT NULL,
  `whsa_unit` varchar(255) NOT NULL,
  `whsa_approved_by` varchar(255) NOT NULL,
  `whsa_employee` int(11) NOT NULL,
  `whsa_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pos_wh_stock_adjust`
--

INSERT INTO `tbl_pos_wh_stock_adjust` (`whsa_id`, `whsa_date_record`, `whsa_letter_no`, `whsa_product_code`, `whsa_product`, `whsa_qty_add`, `whsa_qty_minus`, `whsa_unit`, `whsa_approved_by`, `whsa_employee`, `whsa_note`) VALUES
(2, '2018-08-04', 'fassa sct fasf', 120, '', 1, 5, 'ee', 'rwq', 5, 'fsfsdfa node'),
(3, '2018-06-21', 'fsafsa', 120, '', 11, 22, 'afsf', 'fasf', 4, 'asfas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_wh_stock_in`
--

CREATE TABLE `tbl_pos_wh_stock_in` (
  `whsi_id` int(11) NOT NULL,
  `whsi_date_record` date NOT NULL,
  `whsi_letter_no` varchar(255) NOT NULL,
  `whsi_product_code` varchar(255) NOT NULL,
  `whsi_product` varchar(255) NOT NULL,
  `whsi_qty_in` float NOT NULL,
  `whsi_unit` varchar(255) NOT NULL,
  `whsi_received_from` varchar(255) NOT NULL,
  `whsi_employee` int(11) NOT NULL,
  `whsi_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pos_wh_stock_in`
--

INSERT INTO `tbl_pos_wh_stock_in` (`whsi_id`, `whsi_date_record`, `whsi_letter_no`, `whsi_product_code`, `whsi_product`, `whsi_qty_in`, `whsi_unit`, `whsi_received_from`, `whsi_employee`, `whsi_note`) VALUES
(11, '2018-04-11', 'In 11/04/2018', '3', '', 100, 'Bottle', 'Company Meiji', 1, ''),
(12, '2018-04-11', 'In 11/04/2018', '4', '', 120, 'Bottle', 'Company Meiji', 1, ''),
(13, '2018-04-11', 'In 11/04/2018', '5', '', 120, 'Bottle', 'Company Meiji', 1, ''),
(14, '2018-04-11', 'In 11/04/2018', '6', '', 20, 'Piece', 'Kitty Shop Food ', 1, ''),
(15, '2018-04-12', 'In 12/04/2018', '6', '', 40, 'Piece', 'Kitty Shop Food ', 1, ''),
(16, '2018-04-12', 'In 12/04/2018', '7', '', 60, 'Piece', 'Chili Bakery', 1, ''),
(17, '2018-04-12', 'In 12/04/2018', '8', '', 16, 'PAC', 'Market', 1, ''),
(18, '2018-04-12', 'In 12/04/2018', '9', '', 100, 'Box', 'Market', 1, 'Pineapple cookies 30\r\nChocolate cookies 20 \r\nRaisin cookies 20\r\nstrawberry 15\r\nRaspberry cookies 15 '),
(19, '2018-04-13', 'In 13/04/2018', '6', '', 72, 'Piece', 'Market', 1, ''),
(22, '2018-01-02', 'In 02-01-18', '41', '', 2500, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(23, '2018-01-02', 'In 02-01-18', '18', '', 150, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(25, '2018-01-02', 'In 02-01-18', '42', '', 2500, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(26, '2018-01-02', 'In 02-01-18', '43', '', 24, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(27, '2018-01-02', 'In 02-01-18', '44', '', 24, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(28, '2018-01-02', 'In 02-01-18', '45', '', 24, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(29, '2018-01-02', 'In 02-01-18', '46', '', 1, 'B0x', 'I.L.S.Co.,Ltd', 1, ''),
(30, '2018-01-04', 'In 04-01-18', '47', '', 15, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(31, '2018-01-02', 'In 02-01-18', '48', '', 20, 'Box', 'I.L.S.Co.,Ltd', 1, ''),
(32, '2018-04-14', 'In 14-04-18', '6', '', 72, 'Piece', 'Kitty Shop Food ', 1, ''),
(33, '2018-04-15', '001246', '6', '', 72, 'Piece', 'Kitty Shop Food ', 1, ''),
(34, '2018-04-16', '001263', '6', '', 72, 'Piece', 'Kitty Shop Food ', 1, ''),
(35, '2018-04-17', 'In 17-04-18', '6', '', 72, 'Piece', 'Kitty Shop Food ', 1, ''),
(36, '2018-04-19', '001304', '6', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(37, '2018-04-20', '001270', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(38, '2018-04-21', '001277', '6', '', 36, 'Piece', 'Kitty Shop Food ', 1, ''),
(39, '2018-04-23', 'In 23-04-18', '6', '', 36, 'Piece', 'Kitty Shop Food ', 1, ''),
(40, '2018-04-26', '001286', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(41, '2018-04-29', '001324', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(42, '2018-04-13', 'Out Amazon', '7', '', 60, 'Piece', 'Chili Bakery', 1, ''),
(43, '2018-04-20', 'Out Amazon', '7', '', 20, 'Piece', 'Chili Bakery', 1, ''),
(44, '2018-04-23', 'Out Amazon', '7', '', 24, 'Piece', 'Chili Bakery', 1, ''),
(45, '2018-04-23', 'In 23-04-18', '60', '', 582, 'Box', 'Market', 1, ''),
(46, '2018-04-27', 'In 27-04-18', '3', '', 50, 'Bottle', 'Company Meiji', 1, ''),
(47, '2018-04-27', 'In 27-04-18', '4', '', 119, 'Bottle', 'Company Meiji', 1, ''),
(48, '2018-04-27', 'In 27-04-18', '5', '', 120, 'Bottle', 'Company Meiji', 1, ''),
(49, '2018-04-30', 'In 30-04-18', '6', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(50, '2018-04-30', 'In 30-0-18', '7', '', 20, 'Piece', 'Chili Bakery', 1, ''),
(51, '2018-05-27', 'In 27-04-18', '9', '', 100, 'Box', 'Market', 1, ''),
(52, '2018-05-01', 'In 01-05-18', '6', '', 36, 'Piece', 'Kitty Shop Food ', 1, ''),
(53, '2018-05-01', 'In 01-05-18', '7', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(54, '2018-05-02', 'In 02-05-18', '7', '', 20, 'Piece', 'Kitty Shop Food ', 1, ''),
(55, '2018-05-03', 'In 03-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(56, '2018-05-04', 'In 04-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(57, '2018-05-04', 'In 04-05-18', '7', '', 24, 'Piece', 'Chili Bakery', 1, ''),
(58, '2018-05-05', 'In 05-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(59, '2018-05-05', 'In 05-05-18', '7', '', 24, 'Piece', 'Chili Bakery', 1, ''),
(60, '2018-05-13', 'In 13-05-18', '15', '', 300, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(61, '2018-05-13', 'In 13-05-18', '18', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(62, '2018-05-13', 'In 13-05-18', '20', '', 20, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(63, '2018-05-13', 'In 13-05-18', '21', '', 40, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(64, '2018-05-13', 'In 13-05-18', '22', '', 24, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(65, '2018-05-13', 'In 13-05-18', '23', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(66, '2018-05-13', 'In 13-05-18', '24', '', 24, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(67, '2018-05-13', 'In 13-05-18', '25', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(68, '2018-05-13', 'In 13-05-18', '26', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(69, '2018-05-13', 'In 13-05-18', '27', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(70, '2018-05-13', 'In 13-05-18', '30', '', 10, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(71, '2018-05-13', 'In 13-05-18', '32', '', 100, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(72, '2018-05-13', 'In 13-05-18', '33', '', 24, 'Bottle', 'I.L.S.Co.,Ltd', 1, ''),
(73, '2018-05-13', 'In 13-05-18', '43', '', 60, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(74, '2018-05-13', 'In 13-05-18', '44', '', 60, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(75, '2018-05-13', 'In 13-05-18', '45', '', 60, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(76, '2018-05-13', 'In 13-05-18', '47', '', 30, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(77, '2018-05-13', 'In 13-05-18', '48', '', 20, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(78, '2018-05-13', 'In 13-05-18', '49', '', 1200, 'set', 'I.L.S.Co.,Ltd', 1, ''),
(79, '2018-05-13', 'In 13-05-18', '73', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(80, '2018-05-13', 'In 13-05-18', '74', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(81, '2018-05-13', 'In 13-05-18', '75', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(82, '2018-05-13', 'In 13-05-18', '76', '', 16, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(83, '2018-05-13', 'In 13-05-18', '77', '', 18, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(84, '2018-05-13', 'In 13-05-18', '79', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(85, '2018-05-13', 'In 13-05-18', '81', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(86, '2018-05-13', 'In 13-05-18', '78', '', 16, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(87, '2018-05-08', '001292', '6', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(88, '2018-05-11', '001150', '6', '', 36, 'Piece', 'Kitty Shop Food ', 1, ''),
(89, '2018-05-12', '001351', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(90, '2018-05-13', '001356', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(92, '2018-05-16', '001373', '6', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(93, '2018-05-19', 'IN 19-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(94, '2018-05-21', 'in 21-05-18', '6', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(95, '2018-05-07', 'In 07-05-18', '7', '', 20, 'Piece', 'Chili Bakery', 1, ''),
(96, '2018-05-08', 'In 08-05-18', '7', '', 20, 'Piece', 'Chili Bakery', 1, ''),
(97, '2018-05-11', 'In 11-05-18', '7', '', 24, 'Piece', 'Chili Bakery', 1, ''),
(98, '2018-05-14', 'In 14-05-18', '7', '', 50, 'Piece', 'Chili Bakery', 1, ''),
(99, '2018-05-15', 'In 15-05-18', '7', '', 50, 'Piece', 'Chili Bakery', 1, ''),
(100, '2018-05-18', 'In 18-05-18', '7', '', 40, 'Piece', 'Chili Bakery', 1, ''),
(101, '2018-05-14', 'In 14-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, '001363'),
(102, '2018-01-04', 'In 04-01-18', '54', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(103, '2018-01-04', 'In 04-01-18', '55', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(104, '2018-05-04', 'In 04-01-18', '56', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, ''),
(105, '2018-01-04', 'In 04-01-18', '57', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, ''),
(106, '2018-01-04', 'In 04-01-18', '58', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(107, '2018-01-04', 'In 04-01-18', '49', '', 600, 'Set', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(108, '2018-01-04', 'In 04-01-18', '59', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(109, '2018-01-04', 'In 04-01-18', '50', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(110, '2018-01-04', 'In 04-01-18', '51', '', 18, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(111, '2018-01-04', 'In 04-01-18', '52', '', 24, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(112, '2018-01-04', 'In 04-01-18', '53', '', 36, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(113, '2018-01-04', 'In 04-01-18', '66', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F08012146\r\n'),
(114, '2018-01-04', 'In 04-01-18', '67', '', 2, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046\r\n'),
(115, '2018-01-04', 'In 04-01-18', '68', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046\r\n'),
(116, '2018-01-04', 'In 04-01-18', '69', '', 2, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(117, '2018-01-04', 'In 04-01-18', '82', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(118, '2018-01-04', 'In 04-01-18', '18', '', 150, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(119, '2018-01-04', 'In 04-01-18', '19', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(120, '2018-05-04', 'In 04-01-18', '20', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(121, '2018-01-04', 'In 04-01-18', '22', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(122, '2018-01-04', 'In 04-01-18', '23', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(123, '2018-01-04', 'In 04-01-18', '24', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(124, '2018-05-04', 'In 04-01-18', '25', '', 240, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(125, '2018-01-04', 'In 04-01-18', '26', '', 240, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(126, '2018-01-04', 'In 04-01-18', '27', '', 240, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(127, '2018-01-04', 'In 04-01-18', '70', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(128, '2018-01-04', 'In 04-01-18', '71', '', 3, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(129, '2018-01-04', 'In 04-01-18', '72', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(130, '2018-01-04', 'In 04-01-18', '83', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(131, '2018-01-04', 'In 04-01-18', '28', '', 5, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(132, '2018-01-04', 'In 04-01-18', '84', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(133, '2018-01-04', 'In 04-01-18', '73', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(134, '2018-01-04', 'In 04-01-18', '74', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F08121046'),
(135, '2018-01-04', 'In 04-01-18', '75', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(136, '2018-01-04', 'In 04-01-18', '29', '', 40, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(137, '2018-01-04', 'In 04-01-18', '30', '', 10, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(138, '2018-01-04', 'In 04-01-18', '31', '', 10, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(139, '2018-01-04', 'In 04-01-18', '85', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(140, '2018-01-04', 'In 04-01-18', '86', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(141, '2018-01-04', 'In 04-01-18', '33', '', 6, 'Bottle', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(142, '2018-01-04', 'In 04-01-18', '87', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(143, '2018-01-04', 'In 04-01-18', '34', '', 400, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F08121046'),
(144, '2018-01-04', 'In 04-01-18', '35', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, 'F80121046'),
(145, '2018-01-04', 'In 04-01-18', '38', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(146, '2018-01-04', 'In 04-01-18', '39', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F08121046'),
(147, '2018-01-04', 'In 04-01-18', '40', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(148, '2018-01-04', 'In 04-01-18', '88', '', 2, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(149, '2018-01-04', 'In 04-01-18', '89', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(150, '2018-01-04', 'In 04-01-18', '13', '', 12500, 'Set', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(151, '2018-05-22', 'In 22-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, '001608'),
(152, '2018-05-22', 'In 22-05-18', '7', '', 40, 'Piece', 'Chili Bakery', 1, ''),
(153, '2018-01-04', 'In 04-01-18', '12', '', 25, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(154, '2018-01-04', 'In 04-01-18', '14', '', 3, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(155, '2018-01-04', 'In 04-01-18', '90', '', 3, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(156, '2018-01-04', 'In 04-01-18', '91', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(157, '2018-01-04', 'In 04-01-18', '92', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, 'F08012146'),
(158, '2018-01-04', 'In 04-01-18', '93', '', 11, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(159, '2018-01-04', 'In 04-01-18', '95', '', 5, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(160, '2018-01-04', 'In 04-01-18', '94', '', 25, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(161, '2018-01-04', 'In 04-01-18', '61', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(162, '2018-01-04', 'In 04-01-18', '96', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(163, '2018-01-04', 'In 04-01-18', '97', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(164, '2018-01-04', 'In 04-01-18', '15', '', 150, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(165, '2018-01-04', 'In 04-01-18', '98', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F08121046'),
(166, '2018-01-04', 'In 04-01-18', '99', '', 3, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(167, '2018-01-04', 'In 04-01-18', '100', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(168, '2018-01-04', 'In 04-01-18', '17', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(169, '2018-01-04', 'In 04-01-18', '16', '', 48, 'Bottle', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(170, '2018-01-04', 'In 04-01-18', '101', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(171, '2018-01-04', 'In 04-01-18', '103', '', 1, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(172, '2018-01-04', 'In 04-01-18', '104', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(173, '2018-01-04', 'In 04-01-18', '105', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(174, '2018-01-04', 'In 04-01-18', '106', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(175, '2018-01-04', 'In 04-01-18', '107', '', 3, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(176, '2018-01-04', 'In 04-01-18', '108', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(177, '2018-01-04', 'In 04-01-18', '109', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(178, '2018-01-04', 'In 04-01-18', '110', '', 6, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(179, '2018-01-04', 'In 04-01-18', '111', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(180, '2018-01-04', 'In 04-01-18', '112', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(181, '2018-01-04', 'In 04-01-18', '113', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(182, '2018-01-04', 'In 04-01-18', '114', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(183, '2018-01-04', 'In 04-01-18', '115', '', 3, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(184, '2018-02-08', 'In 08-02-18', '61', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(185, '2018-01-04', 'In 08-02-18', '15', '', 100, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(186, '2018-02-08', 'In 08-02-18', '17', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(187, '2018-02-08', 'In 08-02-18', '17', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(188, '2018-02-08', 'In 08-02-18', '18', '', 100, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(189, '2018-02-08', 'In 08-02-18', '19', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(190, '2018-02-08', 'In 08-02-18', '21', '', 60, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(191, '2018-02-08', 'In 08-02-18', '22', '', 24, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(192, '2018-02-08', 'In 08-02-18', '25', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(193, '2018-02-08', 'In 08-02-18', '26', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, 'F08125317'),
(194, '2018-02-08', 'In 08-02-18', '27', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(195, '2018-02-08', 'In 08-02-18', '47', '', 20, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(196, '2018-02-08', 'In 08-02-18', '48', '', 20, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(197, '2018-02-24', 'In 24-02-18', '13', '', 7500, 'Set', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(198, '2018-02-24', 'In 24-02-18', '12', '', 5, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F08012748'),
(199, '2018-02-24', 'In 24-02-18', '14', '', 15, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(200, '2018-02-24', 'In 24-02-18', '15', '', 150, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(201, '2018-02-24', 'In 24-02-18', '17', '', 3, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(202, '2018-02-24', 'In 24-02-18', '16', '', 96, 'Bottle', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(203, '2018-02-24', 'In 24-02-18', '18', '', 100, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(204, '2018-02-24', 'In 24-02-18', '19', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(205, '2018-02-24', 'In 24-02-18', '20', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(206, '2018-02-24', 'In 24-02-18', '21', '', 60, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(207, '2018-02-24', 'In 24-02-18', '23', '', 24, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(208, '2018-02-24', 'In 24-02-18', '25', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(209, '2018-02-24', 'In 24-02-18', '26', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(210, '2018-02-24', 'In 24-02-18', '27', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(211, '2018-02-24', 'In 24-05-18', '29', '', 40, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(212, '2018-02-24', 'In 24-02-18', '30', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F08012748'),
(213, '2018-02-24', 'In 24-02-18', '32', '', 100, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(214, '2018-02-24', 'In 24-02-18', '33', '', 12, 'Bottle', 'I.L.S.Co.,Ltd', 1, 'F08012748'),
(215, '2018-02-24', 'In 24-02-18', '34', '', 400, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F08012748'),
(216, '2018-02-24', 'In 24-02-18', '35', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F08012748'),
(217, '2018-02-24', 'In 24-02-18', '43', '', 48, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(218, '2018-02-24', 'In 24-02-18', '44', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(219, '2018-02-24', 'In 24-02-18', '45', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(220, '2018-02-24', 'In 24-02-18', '49', '', 600, 'Set', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(221, '2018-02-24', 'In 24-02-18', '62', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F08012748'),
(222, '2018-02-24', 'In 24-02-18', '63', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(223, '2018-02-24', 'In 24-02-18', '64', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(224, '2018-02-24', 'In 24-02-18', '65', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(225, '2018-03-10', 'In 10-03-18', '13', '', 20000, 'Set', 'I.L.S.Co.,Ltd', 1, 'F080128478'),
(226, '2018-03-10', 'In 10-03-18', '12', '', 5, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080128478'),
(227, '2018-03-10', 'In 10-03-18', '14', '', 8, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(228, '2018-03-10', 'In 10-03-18', '15', '', 300, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080128478'),
(229, '2018-03-10', 'In 10-03-18', '17', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(230, '2018-03-10', 'In 10-03-18', '16', '', 120, 'Bottle', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(231, '2018-03-10', 'In 10-03-18', '18', '', 120, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(232, '2018-03-10', 'In 10-03-18', '19', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(233, '2018-03-10', 'In 10-03-18', '20', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(234, '2018-03-10', 'In 1-03-18', '21', '', 20, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(235, '2018-03-10', 'In 10-03-18', '23', '', 60, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(236, '2018-03-10', 'In 1-03-18', '24', '', 24, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(237, '2018-03-10', 'In 10-03-18', '25', '', 160, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(238, '2018-03-10', 'In 10-03-18', '26', '', 240, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(239, '2018-03-10', 'In 10-03-18', '27', '', 160, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(240, '2018-03-10', 'In 10-03-18', '83', '', 5, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(241, '2018-03-10', 'In 10-03-18', '32', '', 100, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(242, '2018-03-10', 'In 10-03-18', '33', '', 24, 'Bottle', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(243, '2018-03-10', 'In 10-03-18', '43', '', 48, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(244, '2018-03-10', 'In 10-03-18', '44', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(245, '2018-03-10', 'In 10-03-18', '45', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(246, '2018-03-10', 'In 10-03-18', '49', '', 1200, 'Set', 'I.L.S.Co.,Ltd', 1, 'F80124878'),
(247, '2018-04-21', 'In 21-04-18', '3', '', 69, 'Bottle', 'I.L.S.Co.,Ltd', 1, ''),
(248, '2018-04-21', 'In 21-04-18', '4', '', 116, 'Bottle', 'Market', 1, ''),
(249, '2018-04-21', 'In 21-04-18', '5', '', 120, 'Bottle', 'Market', 1, ''),
(250, '2018-04-22', 'In 22-04-18', '48', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(251, '2018-04-22', 'In 22-04-18', '116', '', 30, 'PAC', 'Market', 1, ''),
(252, '2018-04-22', 'In 22-04-18', '8', '', 26, 'PAC', 'Market', 1, ''),
(253, '2018-04-27', 'In 27-04-18', '18', '', 30, 'PC', 'Market', 1, ''),
(254, '2018-04-27', 'In 27-04-18', '29', '', 20, 'PC', 'Market', 1, ''),
(255, '2018-04-28', 'In 28-04-18', '29', '', 180, 'PC', 'Market', 1, ''),
(258, '2018-05-05', 'In 05-05-18', '3', '', 50, 'Bottle', 'Market', 1, ''),
(259, '2018-05-05', 'In 05-05-18', '4', '', 120, 'Bottle', 'Market', 1, ''),
(260, '2018-05-05', 'In 05-05-18', '5', '', 80, 'Bottle', 'Market', 1, ''),
(261, '2018-05-05', 'In 05-05-18', '8', '', 10, 'PAC', 'Market', 1, ''),
(262, '2018-05-05', 'In 05-05-18', '116', '', 30, 'PAC', 'Market', 1, ''),
(263, '2018-05-09', 'In 09-05-18', '117', '', 160, 'PC', 'Market', 1, ''),
(264, '2018-05-13', 'In 13-05-18', '18', '', 10, 'PAC', 'Market', 1, 'B'),
(265, '2018-05-13', 'In 13-05-18', '26', '', 20, 'PAC', 'Market', 1, 'B'),
(266, '2018-05-13', 'In 13-05-18', '20', '', 10, 'Pcs', 'Market', 1, 'B'),
(267, '2018-05-14', 'In 14-05-18', '18', '', 10, 'PC', 'Market', 1, ''),
(268, '2018-05-14', 'In 14-05-18', '26', '', 20, 'PC', 'Market', 1, ''),
(269, '2018-05-15', 'In 15-05-18', '3', '', 30, 'Bottle', 'Market', 1, ''),
(270, '2018-05-15', 'In 15-05-18', '4', '', 56, 'Bottle', 'Market', 1, ''),
(271, '2018-05-20', 'In 20-05-18', '118', '', 20, 'PC', 'Market', 1, ''),
(272, '2018-05-20', 'In 20-05-18', '119', '', 12, 'Pcs', 'Market', 1, ''),
(273, '2018-05-17', 'In 17-05-18', '8', '', 20, 'PAC', 'Market', 1, ''),
(274, '2018-05-17', 'In 17-05-18', '116', '', 20, 'PAC', 'Market', 1, ''),
(275, '2018-05-19', 'In 19-05-18', '3', '', 50, 'Bottle', 'Market', 1, ''),
(276, '2018-05-19', 'In 19-05-18', '4', '', 80, 'Bottle', 'Market', 1, ''),
(277, '2018-05-19', 'In 19-05-18', '34', '', 40, 'Pcs', 'Market', 1, 'other '),
(278, '2018-05-13', 'In 13-05-18', '80', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080134505'),
(279, '2018-05-26', 'In 26-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, '001618'),
(280, '2018-05-25', 'In 25-05-18', '34', '', 100, 'PC', 'PTT', 1, 'Borrow'),
(281, '2018-05-26', 'In 26-05-2018', '7', '', 40, 'Piece', 'Chili Bakery', 1, ''),
(282, '2018-05-25', 'in 25-05-18', '3', '', 60, 'Bottle', 'Market', 1, ''),
(283, '2018-04-03', 'out 03-04-18', '8', '', 12, 'PAC', 'Market', 1, ''),
(284, '2018-04-06', 'out 06-04-18', '8', '', 6, 'PAC', 'Market', 1, ''),
(285, '2018-04-06', 'out 06-04-18', '116', '', 18, 'PAC', 'Market', 1, ''),
(286, '2018-04-03', 'out 03-04-18', '116', '', 4, 'PAC', 'Market', 1, ''),
(287, '2018-04-28', 'out 28-04-18', '24', '', 10, 'PC', 'Market', 1, ''),
(288, '2018-04-28', 'out 28-04-18', '22', '', 10, 'PC', 'Market', 1, ''),
(290, '2018-05-28', 'out 28-05-18', '34', '', 16, 'PC', 'Market', 1, ''),
(291, '2018-05-28', 'out 28-05-18', '13', '', 1000, 'PC', 'Market', 1, ''),
(292, '2018-05-28', 'in 28-05-18', '18', '', 20, 'PC', 'Market', 1, ''),
(293, '2018-05-30', 'In 30-05-18', '6', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(294, '2018-05-14', 'In 14-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(295, '2018-06-30', '1122334455', '120', '', 1001, 'yes11', 'dara11', 1, 'note33'),
(296, '2018-06-27', '11', '120', '', 11, '111', '11', 5, '111');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos_wh_stock_out`
--

CREATE TABLE `tbl_pos_wh_stock_out` (
  `whso_id` int(11) NOT NULL,
  `whso_date_record` date NOT NULL,
  `whso_letter_no` varchar(255) NOT NULL,
  `whso_product_code` varchar(255) NOT NULL,
  `whso_product` varchar(255) NOT NULL,
  `whso_qty_out` float NOT NULL,
  `whso_unit` varchar(255) NOT NULL,
  `whso_sent_to` varchar(255) NOT NULL,
  `whso_employee` int(11) NOT NULL,
  `whso_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pos_wh_stock_out`
--

INSERT INTO `tbl_pos_wh_stock_out` (`whso_id`, `whso_date_record`, `whso_letter_no`, `whso_product_code`, `whso_product`, `whso_qty_out`, `whso_unit`, `whso_sent_to`, `whso_employee`, `whso_note`) VALUES
(6, '2018-06-11', 'out 11/04/2018', '120', '', 100, 'Bottle', 'PK Mart ', 1, 'Netra'),
(7, '2018-04-11', 'out 11/04/2018', '4', '', 48, 'Bottle', 'PK Mart ', 1, 'Netra'),
(8, '2018-04-11', 'out 11/04/2018', '5', '', 52, 'Bottle', 'PK Mart ', 1, 'Netra'),
(9, '2018-04-11', 'out 11/04/2018', '6', '', 20, 'Piece', 'PK Mart ', 1, 'Netra'),
(10, '2018-04-13', 'Out 13/04/2018', '9', '', 100, 'Box', 'PK Mart ', 1, ''),
(11, '2018-04-13', 'Out 13/04/2018', '6', '', 7, 'Piece', 'PK Mart ', 1, ''),
(12, '2018-04-12', 'out 12/04/2018', '6', '', 40, 'Piece', 'PK Mart ', 1, ''),
(13, '2018-04-13', 'Out 13/04/2018', '4', '', 24, 'Box', 'PK Mart ', 1, ''),
(14, '2018-04-24', 'out 001', '10', '', 10, 'bottle', 'huy', 1, ''),
(15, '2018-04-24', 'out amazon 003', '10', '', 5, 'bottle', 'Tda', 1, ''),
(16, '2018-04-24', 'out Mart 001', '11', '', 5, 'pc', 'lida', 1, ''),
(17, '2018-04-13', 'Out Amazon', '6', '', 23, 'Piece', 'PK Mart ', 1, ''),
(18, '2018-04-14', 'Out Amazon', '6', '', 42, 'Piece', 'PK Mart ', 1, ''),
(19, '2018-04-15', 'Out Amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(20, '2018-04-16', 'Out Amazon', '6', '', 100, 'Piece', 'PK Mart ', 1, ''),
(21, '2018-04-17', 'Out Amazon', '6', '', 120, 'Piece', 'PK Mart ', 1, ''),
(22, '2018-04-19', 'Out Amazon', '6', '', 24, 'Piece', 'PK Mart ', 1, ''),
(23, '2018-04-20', 'Out Amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(24, '2018-04-21', 'Out Amazon', '6', '', 36, 'Piece', 'PK Mart ', 1, ''),
(25, '2018-04-23', 'Out Amazon', '6', '', 36, 'Piece', 'PK Mart ', 1, ''),
(26, '2018-04-26', 'Out Amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(27, '2018-04-29', 'Out Amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(28, '2018-04-11', 'Out Amazon', '6', '', 20, 'Piece', 'PK Mart ', 1, ''),
(29, '2018-04-12', 'Out Amazon', '7', '', 43, 'Piece', 'PK Mart ', 1, ''),
(30, '2018-04-13', 'Out Amazon', '7', '', 20, 'Piece', 'PK Mart ', 1, ''),
(31, '2018-04-15', 'Out Amazon', '7', '', 21, 'Piece', 'PK Mart ', 1, ''),
(32, '2018-04-16', 'Out Amazon', '7', '', 36, 'Piece', 'PK Mart ', 1, ''),
(33, '2018-04-20', 'Out Amazon', '7', '', 20, 'Piece', 'PK Mart ', 1, ''),
(34, '2018-04-23', 'Out Amazon', '7', '', 24, 'Piece', 'PK Mart ', 1, ''),
(35, '2018-04-24', 'Out amazon', '60', '', 30, 'Pcs', 'PK Mart ', 1, ''),
(36, '2018-04-30', 'Out Amazon', '60', '', 24, 'Pcs', 'PK Mart ', 1, ''),
(37, '2018-04-30', 'Out amazon', '6', '', 24, 'Piece', 'PK Mart ', 1, ''),
(38, '2018-04-30', 'Out amazon', '7', '', 20, 'Piece', 'PK Mart ', 1, ''),
(39, '2018-05-27', 'Out amazon', '9', '', 100, 'Box', 'PK Mart ', 1, ''),
(40, '2018-05-01', 'Out amazon', '6', '', 36, 'Piece', 'PK Mart ', 1, ''),
(41, '2018-05-01', 'Out amazon ', '7', '', 24, 'Piece', 'PK Mart ', 1, ''),
(42, '2018-05-02', 'Out amazon', '7', '', 20, 'Piece', 'PK Mart ', 1, ''),
(43, '2018-05-03', 'Out amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(44, '2018-05-04', 'Out amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(45, '2018-05-04', 'Out amazon', '7', '', 24, 'Piece', 'PK Mart ', 1, ''),
(46, '2018-05-05', 'Out amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(47, '2018-05-05', 'Out amazon', '7', '', 24, 'Piece', 'PK Mart ', 1, ''),
(48, '2018-05-14', 'Out amazon ', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(49, '2018-05-13', 'Out amazon', '18', '', 20, 'PC', 'PK Mart ', 1, ''),
(50, '2018-05-14', 'Out amazon', '78', '', 5, 'Pcs', 'PK Mart ', 1, ''),
(51, '2018-05-14', 'Out amazon', '77', '', 10, 'Pcs', 'PK Mart ', 1, ''),
(52, '2018-05-14', 'Out amazon', '60', '', 48, 'Pcs', 'PK Mart ', 1, ''),
(53, '2018-05-14', 'Out amazon', '76', '', 10, 'Pcs', 'PK Mart ', 1, ''),
(54, '2018-05-08', '001292', '6', '', 24, 'Piece', 'PK Mart ', 1, ''),
(55, '2018-05-11', '001150', '6', '', 36, 'Piece', 'PK Mart ', 1, ''),
(56, '2018-05-12', '001351', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(57, '2018-05-13', '001356', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(58, '2018-05-14', '001363', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(59, '2018-05-16', '001373', '6', '', 24, 'Piece', 'PK Mart ', 1, ''),
(60, '2018-05-19', 'Out 19-05-18', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(61, '2018-05-21', '001400', '6', '', 24, 'Piece', 'PK Mart ', 1, ''),
(62, '2018-05-07', 'Out 07-05-18', '7', '', 20, 'Piece', 'PK Mart ', 1, ''),
(63, '2018-05-08', 'Out 08-05-18', '7', '', 20, 'Piece', 'PK Mart ', 1, ''),
(64, '2018-05-11', 'Out 11-05-18', '7', '', 24, 'Piece', 'PK Mart ', 1, ''),
(65, '2018-05-14', 'Out 14-05-18', '7', '', 50, 'Piece', 'PK Mart ', 1, ''),
(66, '2018-05-15', 'Out 15-05-18', '7', '', 50, 'Piece', 'PK Mart ', 1, ''),
(67, '2018-05-18', 'Out 18-05-18', '7', '', 40, 'Piece', 'PK Mart ', 1, ''),
(68, '2018-05-14', 'Out 14-05-18', '6', '', 48, 'Piece', 'PK Mart ', 1, '001363'),
(69, '2018-05-22', 'Out 22-05-18', '6', '', 48, 'Piece', 'PK Mart ', 1, '001608'),
(70, '2018-05-22', 'Out 22-05-18', '7', '', 40, 'Piece', 'PK Mart ', 1, ''),
(90, '2018-05-02', 'Out 02-05-18', '12', '', 1, 'CRT', 'PK Mart ', 1, '10000002'),
(91, '2018-05-02', 'Out 02-05-18', '15', '', 50, 'PC', 'PK Mart ', 1, '10000002'),
(94, '2018-04-02', 'Out 02-04-18', '22', '', 7, 'Bottle', 'PK Mart ', 1, '10000002'),
(95, '2018-04-02', 'Out 02-04-18', '23', '', 2, 'Bottle', 'PK Mart ', 1, '10000002'),
(96, '2018-05-02', 'Out 02-05-18', '24', '', 9, 'PC', 'PK Mart ', 1, '10000002'),
(97, '2018-05-02', 'Out 02-05-18', '25', '', 20, 'PC', 'PK Mart ', 1, '10000002'),
(98, '2018-05-02', 'Out 02-05-18', '26', '', 40, 'PC', 'PK Mart ', 1, '10000002'),
(99, '2018-05-02', 'Out 02-05-18', '27', '', 5, 'PC', 'PK Mart ', 1, '10000002\r\n'),
(100, '2018-05-02', 'Out 02-05-18', '29', '', 15, 'PC', 'PK Mart ', 1, '10000002'),
(101, '2018-05-02', 'Out 02-05-18', '33', '', 2, 'Bottle', 'PK Mart ', 1, '10000002'),
(102, '2018-05-02', 'Out 02-05-18', '34', '', 56, 'PC', 'PK Mart ', 1, '10000002'),
(103, '2018-05-10', 'Out 10-05-18', '12', '', 1, 'CRT', 'PK Mart ', 1, '10000003'),
(104, '2018-05-10', 'Out 10-05-18', '15', '', 50, 'PC', 'PK Mart ', 1, '10000003'),
(105, '2018-05-10', 'Out 10-05-18', '21', '', 3, 'PC', 'PK Mart ', 1, '10000003'),
(106, '2018-05-10', 'Out 10-05-18', '22', '', 6, 'Bottle', 'PK Mart ', 1, '10000003'),
(107, '2018-05-10', 'Out 10-05-18', '23', '', 2, 'Bottle', 'PK Mart ', 1, '10000003'),
(108, '2018-05-10', 'Out 10-05-18', '24', '', 7, 'Bottle', 'PK Mart ', 1, '10000003'),
(109, '2018-05-10', 'Out 10-05-18', '25', '', 40, 'PC', 'PK Mart ', 1, '10000003'),
(110, '2018-05-10', 'Out 10-05-18', '26', '', 40, 'PC', 'PK Mart ', 1, '10000003'),
(111, '2018-05-10', 'Out 10-05-18', '27', '', 40, 'PC', 'PK Mart ', 1, '10000003'),
(112, '2018-05-10', 'Out 10-05-18', '29', '', 16, 'PC', 'PK Mart ', 1, '10000003'),
(113, '2018-05-10', 'Out 10-05-18', '34', '', 63, 'PC', 'PK Mart ', 1, '10000003'),
(114, '2018-05-10', 'Out 10-05-18', '35', '', 1, 'PC', 'PK Mart ', 1, '10000003'),
(115, '2018-05-10', 'Out 10-05-18', '8', '', 3, 'PAC', 'PK Mart ', 1, '10000003'),
(116, '2018-05-10', 'Out 10-05-18', '116', '', 12, 'PAC', 'PK Mart ', 1, '10000003'),
(117, '2018-05-10', 'Out 10-05-18', '60', '', 48, 'Pcs', 'PK Mart ', 1, '10000003'),
(118, '2018-05-17', 'Out 17-05-18', '15', '', 50, 'PC', 'PK Mart ', 1, '10000004'),
(119, '2018-05-17', 'Out 17-05-18', '18', '', 30, 'PC', 'PK Mart ', 1, '10000004'),
(120, '2018-05-17', 'Out 17-05-18', '21', '', 2, 'PC', 'PK Mart ', 1, '10000004'),
(121, '2018-05-17', 'Out 17-05-18', '22', '', 12, 'Bottle', 'PK Mart ', 1, '10000004'),
(122, '2018-04-26', 'Out 26-04-18', '13', '', 5000, 'Set', 'PK Mart ', 1, '10000001'),
(123, '2018-04-26', 'Out 26-04-18', '12', '', 1, 'CRT', 'PK Mart ', 1, '10000001'),
(124, '2018-04-26', 'Out 26-04-18', '14', '', 2, 'CRT', 'PK Mart ', 1, '10000001'),
(125, '2018-04-27', 'Out 27-04-18', '15', '', 100, 'PC', 'PK Mart ', 1, '10000001'),
(126, '2018-04-26', 'Out 26-04-18', '17', '', 2, 'PAC', 'PK Mart ', 1, '10000001'),
(127, '2018-04-26', 'Out 26-04-18', '16', '', 88, 'Bottle', 'PK Mart ', 1, '10000001'),
(128, '2018-04-26', 'Out 26-04-18', '18', '', 30, 'PC', 'PK Mart ', 1, '10000001'),
(129, '2018-04-26', 'Out 26-04-18', '21', '', 3, 'PC', 'PK Mart ', 1, '10000001'),
(130, '2018-04-26', 'Out 26-04-18', '22', '', 12, 'Bottle', 'PK Mart ', 1, '10000001'),
(131, '2018-04-26', 'Out 26-04-18', '23', '', 15, 'Bottle', 'PK Mart ', 1, '10000001'),
(132, '2018-04-26', 'Out 26-04-18', '24', '', 15, 'Bottle', 'PK Mart ', 1, '10000001'),
(133, '2018-04-26', 'Out 26-04-18', '25', '', 40, 'PC', 'PK Mart ', 1, '10000001'),
(134, '2018-04-26', 'Out 26-04-18', '26', '', 60, 'PC', 'PK Mart ', 1, '10000001'),
(135, '2018-04-26', 'Out 26-04-18', '27', '', 40, 'PC', 'PK Mart ', 1, '10000001'),
(136, '2018-04-26', 'Out 26-4-18', '29', '', 20, 'PC', 'PK Mart ', 1, '10000001'),
(137, '2018-04-26', 'Out 26-04-18', '32', '', 25, 'Pcs', 'PK Mart ', 1, '10000001'),
(138, '2018-04-26', 'Out 26-04-18', '33', '', 6, 'Bottle', 'PK Mart ', 1, '10000001'),
(139, '2018-04-26', 'Out 26-04-18', '34', '', 70, 'PC', 'PK Mart ', 1, '10000001'),
(140, '2018-04-26', 'Out 26-04-18', '35', '', 1, 'Bottle', 'PK Mart ', 1, '10000001'),
(141, '2018-04-26', 'Out 26-04-18', '43', '', 24, 'Pcs', 'PK Mart ', 1, '10000001'),
(142, '2018-04-26', 'Out 26-04-18', '44', '', 24, 'Pcs', 'PK Mart ', 1, '10000001'),
(143, '2018-04-26', 'Out 26-04-18', '45', '', 24, 'Pcs', 'PK Mart ', 1, '10000001'),
(144, '2018-04-26', 'Out 26-04-18', '8', '', 10, 'PAC', 'PK Mart ', 1, '10000001'),
(145, '2018-04-26', 'Out 26-04-18', '116', '', 15, 'PAC', 'PK Mart ', 1, '10000001'),
(146, '2018-04-26', 'Out 26-04-18', '49', '', 300, 'Set', 'PK Mart ', 1, '10000001'),
(147, '2018-05-02', 'Out 02-05-18', '13', '', 3500, 'Set', 'PK Mart ', 1, '10000002'),
(148, '2018-05-02', 'Out 02-05-18', '17', '', 1, 'PAC', 'PK Mart ', 1, '10000002'),
(149, '2018-05-02', 'Out 02-05-18', '16', '', 8, 'Bottle', 'PK Mart ', 1, '10000002'),
(150, '2018-05-02', 'Out 02-05-18', '35', '', 1, 'Bottle', 'PK Mart ', 1, '10000002'),
(151, '2018-05-02', 'Out 02-05-18', '8', '', 4, 'PAC', 'PK Mart ', 1, '10000002'),
(152, '2018-05-02', 'Out 02-05-18', '116', '', 10, 'PAC', 'PK Mart ', 1, '10000002'),
(153, '2018-05-02', 'Out 02-05-18', '49', '', 350, 'Set', 'PK Mart ', 1, '10000002'),
(154, '2018-05-02', 'Out 02-05-18', '60', '', 48, 'Pcs', 'PK Mart ', 1, '10000002'),
(155, '2018-05-10', 'Out 10-05-18', '13', '', 2500, 'Set', 'PK Mart ', 1, '10000003'),
(156, '2018-05-10', 'Out 10-05-18', '14', '', 1, 'CRT', 'PK Mart ', 1, '10000003'),
(157, '2018-05-10', 'Out 10-05-18', '29', '', 16, 'PC', 'PK Mart ', 1, '10000003'),
(158, '2018-05-10', 'Out 10-05-18', '49', '', 300, 'Set', 'PK Mart ', 1, '10000003'),
(160, '2018-05-26', 'Out 26-05-18', '6', '', 48, 'Piece', 'PK Mart ', 1, '001618'),
(161, '2018-05-17', 'Out 17-05-18', '23', '', 6, 'Bottle', 'PK Mart ', 1, '10000004'),
(162, '2018-05-17', 'Out 17-05-18', '24', '', 15, 'Bottle', 'PK Mart ', 1, '10000004'),
(163, '2018-05-17', 'Out 17-05-18', '25', '', 40, 'PC', 'PK Mart ', 1, '10000004'),
(164, '2018-05-17', 'Out 17-05-18', '26', '', 60, 'PC', 'PK Mart ', 1, '10000004'),
(165, '2018-05-17', 'Out 17-05-18', '27', '', 20, 'PC', 'PK Mart ', 1, '10000004'),
(166, '2018-05-17', 'Out 17-05-18', '29', '', 20, 'PC', 'PK Mart ', 1, '10000004'),
(167, '2018-05-17', 'Out 17-05-18', '33', '', 6, 'Bottle', 'PK Mart ', 1, '10000004'),
(168, '2018-05-17', 'Out 17-05-18', '43', '', 48, 'Pcs', 'PK Mart ', 1, '10000004'),
(169, '2018-05-17', 'Out 17-05-18', '44', '', 48, 'Pcs', 'PK Mart ', 1, '10000004'),
(170, '2018-05-17', 'Out 17-15-18', '45', '', 12, 'Pcs', 'PK Mart ', 1, '10000004'),
(171, '2018-05-17', 'Out 17-05-18', '8', '', 5, 'PAC', 'PK Mart ', 1, '10000004'),
(172, '2018-05-17', 'Out 17-05-18', '116', '', 15, 'PAC', 'PK Mart ', 1, '10000004'),
(173, '2018-05-17', 'Out 17-05-18', '60', '', 48, 'Box', 'PK Mart ', 1, '10000004'),
(174, '2018-05-24', 'Out 24-05-18', '12', '', 1, 'CRT', 'PK Mart ', 1, '10000005'),
(175, '2018-05-24', 'Out 24-05-18', '15', '', 50, 'PC', 'PK Mart ', 1, '10000005'),
(176, '2018-05-24', 'Out 24-05-18', '18', '', 30, 'PC', 'PK Mart ', 1, '10000005'),
(177, '2018-05-24', 'Out 24-05-18', '21', '', 1, 'PC', 'PK Mart ', 1, '10000005'),
(178, '2018-05-24', 'Out 24-05-18', '22', '', 2, 'Bottle', 'PK Mart ', 1, '10000005'),
(179, '2018-05-24', 'Out 24-05-18', '24', '', 7, 'Bottle', 'PK Mart ', 1, '10000005'),
(180, '2018-05-24', 'Out 24-05-18', '25', '', 20, 'PC', 'PK Mart ', 1, '10000005'),
(181, '2018-05-24', 'Out  24-05-18', '26', '', 40, 'PC', 'PK Mart ', 1, '10000005'),
(182, '2018-05-24', 'Out 24-05-18', '27', '', 20, 'PC', 'PK Mart ', 1, '10000005'),
(183, '2018-05-24', 'Out 24-05-18', '29', '', 12, 'PC', 'PK Mart ', 1, '10000005'),
(184, '2018-05-24', 'Out 24-05-18', '33', '', 4, 'Bottle', 'PK Mart ', 1, '10000005'),
(185, '2018-05-24', 'Out 24-05-18', '34', '', 10, 'PC', 'PK Mart ', 1, '10000005'),
(186, '2018-05-26', 'Out 26-05-18', '34', '', 20, 'PC', 'PK Mart ', 1, 'B'),
(187, '2018-05-24', 'Out 24-05-18', '35', '', 1, 'Bottle', 'PK Mart ', 1, '10000005'),
(188, '2018-05-24', 'Out 24-05-18', '43', '', 12, 'Pcs', 'PK Mart ', 1, '10000005'),
(189, '2018-05-24', 'Out 24-05-18', '44', '', 12, 'Pcs', 'PK Mart ', 1, '10000005'),
(190, '2018-05-24', 'Out 24-05-18', '45', '', 12, 'Pcs', 'PK Mart ', 1, '10000005'),
(191, '2018-05-24', 'Out 24-05-18', '8', '', 4, 'PAC', 'PK Mart ', 1, '10000005'),
(192, '2018-05-24', 'Out 24-05-18', '116', '', 10, 'PC', 'PK Mart ', 1, '10000005'),
(193, '2018-05-24', 'Out 24-05-18', '60', '', 48, 'Bottle', 'PK Mart ', 1, '10000005'),
(194, '2018-05-24', 'Out 24-05-18', '79', '', 1, 'PAC', 'PK Mart ', 1, '10000005'),
(195, '2018-05-24', 'Out 24-05-18', '80', '', 1, 'PAC', 'PK Mart ', 1, '10000005'),
(196, '2018-05-24', 'Out 24-05-18', '81', '', 1, 'PAC', 'PK Mart ', 1, '10000005'),
(197, '2018-04-01', 'Out 01-04-18', '13', '', 1000, 'Set', 'PK Mart ', 1, ''),
(198, '2018-04-01', 'Out 01-04-18', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(199, '2018-04-02', 'Out 02-04-18', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(200, '2018-04-02', 'Out 02-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(201, '2018-04-02', 'Out 02-04-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(202, '2018-04-03', 'Out 03-04-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(203, '2018-04-03', 'Out 03-04-18', '29', '', 20, 'PC', 'PK Mart ', 1, ''),
(204, '2018-04-03', 'Out 03-04-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(205, '2018-04-04', 'Out 04-04-18', '25', '', 20, 'PC', 'PK Mart ', 1, ''),
(206, '2018-04-04', 'Out 04-04-18', '26', '', 60, 'PC', 'PK Mart ', 1, ''),
(207, '2018-04-04', 'Out 04-04-18', '8', '', 3, 'PAC', 'PK Mart ', 1, ''),
(208, '2018-04-04', 'Out 04-04-18', '116', '', 10, 'PAC', 'PK Mart ', 1, ''),
(209, '2018-04-04', 'Out 04-04-18', '13', '', 1000, 'Set', 'PK Mart ', 1, ''),
(210, '2018-04-04', 'Out 04-04-18', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(211, '2018-04-05', 'Out 05-04-18', '13', '', 2000, 'Set', 'PK Mart ', 1, ''),
(212, '2018-04-06', 'Out 06-04-18', '34', '', 20, 'CRT', 'PK Mart ', 1, ''),
(213, '2018-04-07', 'Out 07-04-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(214, '2018-04-08', 'Out 08-04-18', '26', '', 40, 'PC', 'PK Mart ', 1, ''),
(215, '2018-04-08', 'Out 08-04-18', '116', '', 2, 'PAC', 'PK Mart ', 1, ''),
(216, '2018-04-08', 'Out 08-04-18', '49', '', 300, 'Set', 'PK Mart ', 1, ''),
(217, '2018-04-08', 'Out 08-04-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(218, '2018-04-09', 'Out 09-04-18', '116', '', 1, 'PAC', 'PK Mart ', 1, ''),
(219, '2018-04-09', 'Out 09-04-18', '34', '', 80, 'PC', 'PK Mart ', 1, ''),
(220, '2018-04-10', 'Out 10-04-18', '116', '', 1, 'PAC', 'PK Mart ', 1, ''),
(221, '2018-04-11', 'Out 11-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(222, '2018-04-11', 'Out 11-04-18', '116', '', 2, 'PAC', 'PK Mart ', 1, ''),
(223, '2018-05-26', 'Out 26-05-18', '7', '', 40, 'Piece', 'PK Mart ', 1, ''),
(224, '2018-04-11', 'Out 11-04-18', '23', '', 2, 'Bottle', 'PK Mart ', 1, ''),
(225, '2018-04-11', 'Out 11-04-18', '34', '', 10, 'PAC', 'PK Mart ', 1, ''),
(226, '2018-04-12', 'Out 12-04-18', '8', '', 1, 'PAC', 'PK Mart ', 1, ''),
(227, '2018-04-12', 'Out 12-04-18', '48', '', 3, 'PAC', 'PK Mart ', 1, ''),
(228, '2018-04-12', 'Out 12-04-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(229, '2018-04-12', 'Out 12-04-18', '24', '', 6, 'Bottle', 'PK Mart ', 1, ''),
(230, '2018-04-12', 'Out 12-04-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(231, '2018-04-12', 'Out 12-04-18', '34', '', 20, 'PAC', 'PK Mart ', 1, ''),
(232, '2018-04-14', 'Out 14-04-18', '15', '', 50, 'PC', 'PK Mart ', 1, ''),
(233, '2018-04-14', 'Out 14-04-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(234, '2018-05-14', 'Out 14-05-18', '30', '', 2, 'PAC', 'PK Mart ', 1, ''),
(235, '2018-04-15', 'Out 15-04-18', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(236, '2018-04-15', 'Out 15-04-18', '30', '', 2, 'PAC', 'PK Mart ', 1, ''),
(237, '2018-04-16', 'Out 16-04-18', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(238, '2018-04-16', 'Out 16-04-18', '27', '', 20, 'PC', 'PK Mart ', 1, ''),
(239, '2018-04-16', 'Out 16-04-18', '25', '', 20, 'PC', 'PK Mart ', 1, ''),
(240, '2018-04-16', 'Out 16-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(241, '2018-04-16', 'Out 16-04-18', '8', '', 2, 'PAC', 'PK Mart ', 1, ''),
(242, '2018-04-16', 'Out 16-04-18', '116', '', 3, 'PAC', 'PK Mart ', 1, ''),
(243, '2018-04-16', 'Out 16-04-18', '12', '', 1, 'CRT', 'PK Mart ', 1, ''),
(244, '2018-04-16', 'Out 16-04-18', '30', '', 1, 'PAC', 'PK Mart ', 1, ''),
(245, '2018-04-16', 'Out 16-04-18', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(246, '2018-04-17', 'Out 17-04-18', '18', '', 20, 'PC', 'PK Mart ', 1, ''),
(247, '2018-04-17', 'Out 17-04-18', '25', '', 20, 'PC', 'PK Mart ', 1, ''),
(248, '2018-04-17', 'Out 17-04-18', '26', '', 40, 'PC', 'PK Mart ', 1, ''),
(249, '2018-04-17', 'Out 17-04-18', '48', '', 6, 'PAC', 'PK Mart ', 1, ''),
(250, '2018-04-17', 'Out 17-04-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(251, '2018-04-17', 'Out 17-04-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(252, '2018-04-17', 'Out 17-004-18', '34', '', 40, 'PC', 'PK Mart ', 1, ''),
(253, '2018-04-18', 'Out 18-04-18', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(254, '2018-04-18', 'Out 18-04-18', '15', '', 50, 'PC', 'PK Mart ', 1, ''),
(255, '2018-04-18', 'Out 18-04-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(256, '2018-04-18', 'Out 18-04-18', '29', '', 20, 'PC', 'PK Mart ', 1, ''),
(257, '2018-04-19', 'Out 19-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(258, '2018-04-19', 'Out 19-04-18', '8', '', 1, 'PAC', 'PK Mart ', 1, ''),
(259, '2018-04-19', 'Out 19-04-18', '48', '', 2, 'PAC', 'PK Mart ', 1, ''),
(260, '2018-04-19', 'Out 19-04-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(261, '2018-04-20', 'Out 20-04-18', '116', '', 2, 'PAC', 'PK Mart ', 1, ''),
(262, '2018-04-20', 'Out 20-04-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(263, '2018-04-20', 'Out 20-04-18', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(264, '2018-04-21', 'Out 21-04-18', '25', '', 20, 'PC', 'PK Mart ', 1, ''),
(265, '2018-04-21', 'Out 21-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(266, '2018-04-21', 'Out 21-04-18', '13', '', 1000, 'Set', 'PK Mart ', 1, ''),
(267, '2018-04-21', 'Out 21-04-18', '16', '', 24, 'PC', 'PK Mart ', 1, ''),
(268, '2018-04-21', 'Out 21-04-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(269, '2018-04-23', 'Out 23-04-18', '25', '', 20, 'PC', 'PK Mart ', 1, ''),
(270, '2018-04-22', 'Out 22-04-18', '8', '', 1, 'PAC', 'PK Mart ', 1, ''),
(271, '2018-04-22', 'Out 22-04-18', '48', '', 4, 'PAC', 'PK Mart ', 1, ''),
(272, '2018-04-22', 'Out 22-04-18', '12', '', 1, 'CRT', 'PK Mart ', 1, ''),
(273, '2018-04-22', 'Out 22-04-18', '33', '', 3, 'Bottle', 'PK Mart ', 1, ''),
(274, '2018-04-23', 'Out 23-04-18', '13', '', 2000, 'Set', 'PK Mart ', 1, ''),
(275, '2018-04-23', 'Out 23-04-18', '29', '', 2, 'PC', 'PK Mart ', 1, ''),
(276, '2018-04-23', 'Out 23-04-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(277, '2018-04-24', 'Out 24-04-18', '8', '', 1, 'PAC', 'PK Mart ', 1, ''),
(278, '2018-04-24', 'Out 24-04-18', '48', '', 2, 'PAC', 'PK Mart ', 1, ''),
(279, '2018-04-25', 'Out 25-04-18', '13', '', 1500, 'Set', 'PK Mart ', 1, ''),
(280, '2018-04-25', 'Out 25-04-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(281, '2018-04-25', 'Out 25-04-18', '29', '', 3, 'PC', 'PK Mart ', 1, ''),
(282, '2018-04-25', 'Out 25-04-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(283, '2018-04-26', 'Out 26-04-18', '116', '', 1, 'PAC', 'PK Mart ', 1, ''),
(284, '2018-04-26', 'Out 26-4-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(285, '2018-04-26', 'Out 26-04-18', '29', '', 3, 'PC', 'PK Mart ', 1, ''),
(286, '2018-04-17', 'Out  17-04-18', '21', '', 4, 'PC', 'PK Mart ', 1, ''),
(287, '2018-04-25', 'Out 25-04-18', '21', '', 1, 'PC', 'PK Mart ', 1, ''),
(288, '2018-05-28', 'Out 28-05-18', '34', '', 36, 'PC', 'PK Mart ', 1, ''),
(289, '2018-04-24', 'Out 24-04-18', '29', '', 2, 'PC', 'PK Mart ', 1, ''),
(290, '2018-04-24', 'Out 24-04-18', '23', '', 3, 'Bottle', 'PK Mart ', 1, ''),
(291, '2018-04-25', 'Out 25-04-18', '49', '', 50, 'Set', 'PK Mart ', 1, ''),
(292, '2018-04-25', 'Out 25-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(293, '2018-04-27', 'Out 27-04-18', '18', '', 30, 'PC', 'PK Mart ', 1, ''),
(294, '2018-04-27', 'Out 27-04-18', '29', '', 2, 'PC', 'PK Mart ', 1, ''),
(295, '2018-04-08', 'Out 08-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(296, '2018-04-13', 'Out 13-04-18', '30', '', 2, 'PAC', 'PK Mart ', 1, ''),
(297, '2018-05-13', 'Out 13-05-18', '26', '', 40, 'PC', 'PK Mart ', 1, ''),
(298, '2018-05-14', 'Out 14-05-18', '77', '', 8, 'Pcs', 'PK Mart ', 1, ''),
(299, '2018-05-14', 'Out 14-05-2018', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(300, '2018-05-15', 'Out 15-05-18', '18', '', 20, 'PC', 'PK Mart ', 1, ''),
(301, '2018-05-15', 'Out 15-05-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(302, '2018-05-15', 'Out 15-05-18', '27', '', 20, 'PC', 'PK Mart ', 1, ''),
(303, '2018-05-15', 'Out 15-05-18', '25', '', 20, 'PC', 'PK Mart ', 1, ''),
(304, '2018-05-15', 'Out 15-05-18', '29', '', 4, 'PC', 'PK Mart ', 1, ''),
(305, '2018-05-15', 'Out 15-05-18', '48', '', 3, 'PC', 'PK Mart ', 1, ''),
(306, '2018-05-15', 'Out 15-05-18', '30', '', 4, 'PAC', 'PK Mart ', 1, ''),
(307, '2018-05-16', 'Out 16-05-18', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(308, '2018-05-16', 'Out 16-05-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(309, '2018-05-16', 'Out 16-05-18', '21', '', 1, 'PC', 'PK Mart ', 1, ''),
(310, '2018-05-16', 'Out 16-05-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(311, '2018-05-16', 'Out 16-05-18', '30', '', 2, 'PAC', 'PK Mart ', 1, ''),
(312, '2018-05-16', 'Out 16-05-18', '29', '', 3, 'PC', 'PK Mart ', 1, ''),
(313, '2018-05-20', 'Out 20-05-18', '30', '', 1, 'PC', 'PK Mart ', 1, ''),
(314, '2018-05-21', 'Out 21-05-18', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(315, '2018-05-21', 'Out 21-05-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(316, '2018-05-17', 'Out 17-05-18', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(317, '2018-05-17', 'Out 17-05-18', '20', '', 10, 'PC', 'PK Mart ', 1, ''),
(318, '2018-05-22', 'Out 22-05-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(319, '2018-05-22', 'Out 22-05-18', '60', '', 24, 'Box', 'PK Mart ', 1, ''),
(320, '2018-05-22', 'Out 22-05-18', '12', '', 1, 'CRT', 'PK Mart ', 1, ''),
(321, '2018-03-01', 'Out 01-03-18', '23', '', 14, 'Bottle', 'PK Mart ', 1, ''),
(322, '2018-03-01', 'Out 01-03-18', '24', '', 10, 'Bottle', 'PK Mart ', 1, ''),
(323, '2018-03-01', 'Out 01-03-18', '25', '', 33, 'PC', 'PK Mart ', 1, ''),
(324, '2018-03-01', 'Out 01-03-18', '29', '', 12, 'PC', 'PK Mart ', 1, ''),
(325, '2018-03-01', 'Out 01-03-18', '43', '', 21, 'PC', 'PK Mart ', 1, ''),
(326, '2018-03-01', 'Out 01-03-18', '44', '', 18, 'PC', 'PK Mart ', 1, ''),
(327, '2018-03-01', 'Out 01-03-18', '45', '', 22, 'PC', 'PK Mart ', 1, ''),
(328, '2018-03-01', 'Out 01-03-18', '48', '', 12, 'PAC', 'PK Mart ', 1, ''),
(329, '2018-03-01', 'Out 01-03-18', '49', '', 25, 'Set', 'PK Mart ', 1, ''),
(330, '2018-03-01', 'Out 01-03-18', '51', '', 6, 'PC', 'PK Mart ', 1, ''),
(331, '2018-03-01', 'Out 01-03-18', '52', '', 19, 'Pcs', 'PK Mart ', 1, ''),
(332, '2018-03-01', 'Out 01-03-18', '53', '', 23, 'Pcs', 'PK Mart ', 1, ''),
(333, '2018-04-01', 'Out 01-04-18', '13', '', 5000, 'Set', 'PK Mart ', 1, ''),
(334, '2018-04-01', 'Out 01-04-18', '12', '', 1, 'CRT', 'PK Mart ', 1, ''),
(335, '2018-04-01', 'Out 01-04-18', '15', '', 5, 'PC', 'PK Mart ', 1, ''),
(336, '2018-04-01', 'Out 01-04-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(337, '2018-04-01', 'Out 01-04-18', '18', '', 30, 'PC', 'PK Mart ', 1, ''),
(338, '2018-04-01', 'Out 01-04-18', '21', '', 2, 'PC', 'PK Mart ', 1, ''),
(339, '2018-04-01', 'Out 01-04-18', '25', '', 13, 'PC', 'PK Mart ', 1, ''),
(340, '2018-04-01', 'Out 01-04-18', '26', '', 60, 'PC', 'PK Mart ', 1, ''),
(341, '2018-04-01', 'Out 01-04-18', '29', '', 20, 'PC', 'PK Mart ', 1, ''),
(342, '2018-04-01', 'Out 01-04-18', '34', '', 70, 'PC', 'PK Mart ', 1, ''),
(343, '2018-04-01', 'Out 01-04-18', '43', '', 12, 'Box', 'PK Mart ', 1, ''),
(344, '2018-04-01', 'Out 01-04-18', '44', '', 12, 'Pcs', 'PK Mart ', 1, ''),
(345, '2018-04-01', 'Out 01-04-18', '45', '', 12, 'Pcs', 'PK Mart ', 1, ''),
(346, '2018-04-01', 'Out 01-04-18', '47', '', 5, 'PAC', 'PK Mart ', 1, ''),
(347, '2018-04-01', 'Out 01-04-18', '48', '', 10, 'PAC', 'PK Mart ', 1, ''),
(348, '2018-04-01', 'Out 01-04-18', '49', '', 300, 'Set', 'PK Mart ', 1, ''),
(349, '2018-03-07', 'Out 07-03-18', '13', '', 2000, 'PC', 'PK Mart ', 1, ''),
(350, '2018-03-07', 'out 07-03-18', '18', '', 15, 'PC', 'PK Mart ', 1, ''),
(351, '2018-03-07', 'out 07-03-18', '20', '', 4, 'PC', 'PK Mart ', 1, ''),
(352, '2018-03-07', 'out 07-03-18', '21', '', 3, 'PC', 'PK Mart ', 1, ''),
(353, '2018-03-07', 'out 07-03-18', '22', '', 2, 'Bottle', 'PK Mart ', 1, ''),
(354, '2018-03-07', 'out 07-03-18', '24', '', 12, 'Bottle', 'PK Mart ', 1, ''),
(355, '2018-03-07', 'out 07-03-18', '25', '', 28, 'PC', 'PK Mart ', 1, ''),
(356, '2018-03-07', 'out 07-03-18', '26', '', 40, 'PC', 'PK Mart ', 1, ''),
(357, '2018-03-07', 'out 07-03-18', '27', '', 23, 'PC', 'PK Mart ', 1, ''),
(358, '2018-03-07', 'out 07-03-18', '29', '', 14, 'PC', 'PK Mart ', 1, ''),
(359, '2018-03-07', 'out 07-03-18', '34', '', 50, 'PC', 'PK Mart ', 1, ''),
(360, '2018-03-07', 'out 07-03-18', '15', '', 92, 'PC', 'PK Mart ', 1, ''),
(362, '2018-03-01', 'out 01-03-18', '13', '', 4400, 'Set', 'PK Mart ', 1, ''),
(363, '2018-03-01', 'out 01-03-18', '15', '', 55, 'PC', 'PK Mart ', 1, ''),
(364, '2018-03-01', 'out 01-03-18', '17', '', 1, 'PC', 'PK Mart ', 1, ''),
(365, '2018-03-01', 'out 01-03-18', '16', '', 72, 'Bottle', 'PK Mart ', 1, ''),
(366, '2018-03-01', 'out 01-03-18', '18', '', 22, 'PC', 'PK Mart ', 1, ''),
(367, '2018-03-01', 'out 01-03-18', '27', '', 11, 'PC', 'PK Mart ', 1, ''),
(368, '2018-03-01', 'out 01-03-18', '26', '', 75, 'PC', 'PK Mart ', 1, ''),
(369, '2018-03-15', 'out 15-03-18', '13', '', 1000, 'Set', 'PK Mart ', 1, ''),
(371, '2018-03-15', 'out 15-03-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(372, '2018-03-15', 'out 15-03-18', '22', '', 4, 'PC', 'PK Mart ', 1, ''),
(373, '2018-03-15', 'out 15-03-18', '24', '', 6, 'Bottle', 'PK Mart ', 1, ''),
(374, '2018-03-15', 'out 15-03-18', '25', '', 40, 'PC', 'PK Mart ', 1, ''),
(375, '2018-03-15', 'out 15-03-18', '29', '', 11, 'PC', 'PK Mart ', 1, ''),
(376, '2018-03-15', 'out 15-03-18', '51', '', 3, 'Pcs', 'PK Mart ', 1, ''),
(377, '2018-04-21', 'out 21-04-18', '3', '', 69, 'Bottle', 'PK Mart ', 1, ''),
(378, '2018-04-27', 'out 27-04-18', '3', '', 50, 'Bottle', 'PK Mart ', 1, ''),
(379, '2018-05-05', 'out 05-05-18', '3', '', 50, 'Bottle', 'PK Mart ', 1, ''),
(380, '2018-05-19', 'out 19-05-18', '3', '', 50, 'Bottle', 'PK Mart ', 1, ''),
(381, '2018-05-25', 'out 25-5-18', '3', '', 60, 'PC', 'PK Mart ', 1, ''),
(382, '2018-04-14', 'out 14-04-18', '4', '', 27, 'Bottle', 'PK Mart ', 1, ''),
(383, '2018-04-15', 'out 15-04-18', '4', '', 21, 'Bottle', 'PK Mart ', 1, ''),
(384, '2018-04-21', 'out 21-04-18', '4', '', 116, 'Bottle', 'PK Mart ', 1, ''),
(385, '2018-04-27', 'out 27-04-18', '4', '', 119, 'Bottle', 'PK Mart ', 1, ''),
(386, '2018-05-05', 'out 05-05-18', '4', '', 120, 'Bottle', 'PK Mart ', 1, ''),
(387, '2018-05-15', 'out 15-05-18', '4', '', 56, 'Bottle', 'PK Mart ', 1, ''),
(388, '2018-05-19', 'out 19-05-18', '4', '', 80, 'Bottle', 'PK Mart ', 1, ''),
(389, '2018-04-13', 'out 13-04-18', '5', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(390, '2018-04-14', 'out 14-04-18', '5', '', 32, 'Bottle', 'PK Mart ', 1, ''),
(391, '2018-04-15', 'out 15-04-18', '5', '', 12, 'Bottle', 'PK Mart ', 1, ''),
(392, '2018-04-21', 'out 21-04-18', '5', '', 120, 'Bottle', 'PK Mart ', 1, ''),
(393, '2018-04-27', 'out 27-04-18', '5', '', 120, 'Bottle', 'PK Mart ', 1, ''),
(394, '2018-05-05', 'out 05-05-18', '5', '', 80, 'Bottle', 'PK Mart ', 1, ''),
(395, '2018-05-15', 'out 15-05-18', '3', '', 30, 'Bottle', 'PK Mart ', 1, ''),
(396, '2018-05-23', 'out 23-05-18', '13', '', 2500, 'Set', 'PK Mart ', 1, ''),
(397, '2018-05-25', 'out 25-05-18', '49', '', 300, 'Set', 'PK Mart ', 1, ''),
(398, '2018-05-29', 'out 29-05-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(399, '2018-05-28', 'out 28-05-18', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(402, '2018-06-30', 'out socheatha 001002', '120', '', 400, 'tt 111', 'fasf', 1, 'fa sss');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_revenue_category`
--

CREATE TABLE `tbl_revenue_category` (
  `reca_id` int(11) NOT NULL,
  `reca_name` varchar(255) NOT NULL,
  `reca_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_revenue_category`
--

INSERT INTO `tbl_revenue_category` (`reca_id`, `reca_name`, `reca_note`) VALUES
(1, 'Revenu 1', 'r111'),
(7, 'ss', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_revenue_list`
--

CREATE TABLE `tbl_revenue_list` (
  `rev_id` int(11) NOT NULL,
  `rev_date_record` date NOT NULL,
  `rev_description` varchar(255) NOT NULL,
  `rev_revenue_category` int(11) NOT NULL,
  `rev_amount` float NOT NULL,
  `rev_employee` int(11) NOT NULL,
  `rev_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_revenue_list`
--

INSERT INTO `tbl_revenue_list` (`rev_id`, `rev_date_record`, `rev_description`, `rev_revenue_category`, `rev_amount`, `rev_employee`, `rev_note`) VALUES
(1, '2018-03-29', 'revenu 1', 1, 120.25, 5, 'dfdsf'),
(3, '2018-03-02', 'a2', 7, 2, 4, '22'),
(4, '2018-03-02', 'vv', 1, 2, 1, '22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock_adjust`
--

CREATE TABLE `tbl_stock_adjust` (
  `sa_id` int(11) NOT NULL,
  `sa_date_record` date NOT NULL,
  `sa_product_code` int(11) NOT NULL,
  `sa_product` varchar(255) NOT NULL,
  `sa_qty_add` float NOT NULL,
  `sa_qty_minus` float NOT NULL,
  `sa_employee` int(11) NOT NULL,
  `sa_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_stock_adjust`
--

INSERT INTO `tbl_stock_adjust` (`sa_id`, `sa_date_record`, `sa_product_code`, `sa_product`, `sa_qty_add`, `sa_qty_minus`, `sa_employee`, `sa_note`) VALUES
(1, '2018-03-24', 145, '', 1, 0, 1, 'df'),
(3, '2018-03-10', 146, '', 0, 3, 1, 'aa'),
(4, '2018-04-01', 146, '', 10, 0, 1, 'sdfsa'),
(5, '2018-04-06', 146, '', 0, 2, 1, 'dfsd'),
(6, '2018-04-03', 7, '', 100, 0, 1, 'dfds'),
(7, '2018-06-27', 12, '', 500, 2, 5, 'fsaf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier_invoice`
--

CREATE TABLE `tbl_supplier_invoice` (
  `supi_id` int(11) NOT NULL,
  `supi_date_record` date NOT NULL,
  `supi_supplier_invoice_no` varchar(255) NOT NULL,
  `supi_supplier_name` int(11) NOT NULL,
  `supi_full_amount` float NOT NULL,
  `supi_pay_amount` float NOT NULL,
  `supi_balance` float NOT NULL,
  `supi_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_supplier_invoice`
--

INSERT INTO `tbl_supplier_invoice` (`supi_id`, `supi_date_record`, `supi_supplier_invoice_no`, `supi_supplier_name`, `supi_full_amount`, `supi_pay_amount`, `supi_balance`, `supi_note`) VALUES
(1, '2018-03-26', '1122', 1, 120.32, 1, 2, '33'),
(4, '2018-03-23', '444', 18, 200, 0, 0, 'fgdf'),
(5, '2018-03-01', '101', 7, 10, 2.3, 7.7, '1562626'),
(6, '2018-03-10', '1010', 9, 10, 1.5, 8.5, '66');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier_pay`
--

CREATE TABLE `tbl_supplier_pay` (
  `supp_id` int(11) NOT NULL,
  `supp_date_record` date NOT NULL,
  `supp_supplier_invoice_no` int(11) NOT NULL,
  `supp_pay` float NOT NULL,
  `supp_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_supplier_pay`
--

INSERT INTO `tbl_supplier_pay` (`supp_id`, `supp_date_record`, `supp_supplier_invoice_no`, `supp_pay`, `supp_note`) VALUES
(1, '2018-03-26', 11, 10.2, 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type_daily_amount`
--

CREATE TABLE `tbl_type_daily_amount` (
  `tda_id` int(11) NOT NULL,
  `tda_date` date NOT NULL,
  `tda_option` varchar(255) NOT NULL,
  `tda_sheet` varchar(255) NOT NULL,
  `tda_total_dollar` float NOT NULL,
  `tda_total_riel` float NOT NULL,
  `tda_convert_to_dollar` float NOT NULL,
  `tda_total_amount` float NOT NULL,
  `tda_real_expense` float NOT NULL,
  `tda_employee` int(11) NOT NULL,
  `tda_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type_daily_amount`
--

INSERT INTO `tbl_type_daily_amount` (`tda_id`, `tda_date`, `tda_option`, `tda_sheet`, `tda_total_dollar`, `tda_total_riel`, `tda_convert_to_dollar`, `tda_total_amount`, `tda_real_expense`, `tda_employee`, `tda_note`) VALUES
(58, '2018-03-06', 'áž”áž¾áž€ážœáŸáž“', 'A', 38, 65000, 15.8537, 53.8537, 0, 3, ''),
(59, '2018-03-06', 'áž”áž¾áž€ážœáŸáž“', 'a', 0, 0, 0, 0, 0, 3, ''),
(60, '2018-03-06', 'áž”áž·áž‘ážœáŸáž“', 'G', 0, 0, 0, 0, 0, 3, ''),
(61, '2018-03-06', 'áž”áž¾áž€ážœáŸáž“', 'FF', 344, 0, 0, 344, 0, 3, ''),
(62, '2018-03-06', 'áž”áž¾áž€ážœáŸáž“', 'FF', 332, 0, 0, 332, 0, 3, ''),
(63, '2018-03-06', 'áž”áž¾áž€ážœáŸáž“', 'FF', 332, 348900, 85.0976, 417.098, 0, 3, ''),
(64, '2018-03-06', 'áž”áž·áž‘ážœáŸáž“', 'G', 70, 350, 0.0853659, 70.0854, 0, 3, ''),
(65, '2018-03-06', 'áž”áž·áž‘ážœáŸáž“', 'ff', 0, 100, 0.0243902, 0.0243902, 0, 3, ''),
(66, '2018-03-06', 'áž”áž¾áž€ážœáŸáž“', 'hh', 0, 45100, 11, 11, 0, 3, ''),
(67, '2018-03-06', 'áž”áž¾áž€ážœáŸáž“', 'a', 0, 0, 0, 0, 0, 3, ''),
(68, '2018-03-16', 'áž”áž¾áž€ážœáŸáž“', 'B', 100, 50000, 12.2, 112.2, 0, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_active`
--

CREATE TABLE `tbl_user_active` (
  `ua_id` int(11) NOT NULL,
  `ua_name` varchar(255) NOT NULL,
  `ua_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_active`
--

INSERT INTO `tbl_user_active` (`ua_id`, `ua_name`, `ua_note`) VALUES
(1, 'Active', 'Working'),
(2, 'Not Active', 'Not Using');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_branch`
--

CREATE TABLE `tbl_user_branch` (
  `ub_id` int(11) NOT NULL,
  `ub_name` varchar(255) NOT NULL,
  `ub_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_branch`
--

INSERT INTO `tbl_user_branch` (`ub_id`, `ub_name`, `ub_note`) VALUES
(1, 'Branch A', 'aaa'),
(2, 'Branch B', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wh_stock_adjust`
--

CREATE TABLE `tbl_wh_stock_adjust` (
  `whsa_id` int(11) NOT NULL,
  `whsa_date_record` date NOT NULL,
  `whsa_letter_no` varchar(255) NOT NULL,
  `whsa_product_code` int(11) NOT NULL,
  `whsa_product` varchar(255) NOT NULL,
  `whsa_qty_add` float NOT NULL,
  `whsa_qty_minus` float NOT NULL,
  `whsa_unit` varchar(255) NOT NULL,
  `whsa_approved_by` varchar(255) NOT NULL,
  `whsa_employee` int(11) NOT NULL,
  `whsa_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_wh_stock_adjust`
--

INSERT INTO `tbl_wh_stock_adjust` (`whsa_id`, `whsa_date_record`, `whsa_letter_no`, `whsa_product_code`, `whsa_product`, `whsa_qty_add`, `whsa_qty_minus`, `whsa_unit`, `whsa_approved_by`, `whsa_employee`, `whsa_note`) VALUES
(1, '2018-04-24', 'check 001', 11, '', 1, 0, 'pc', 'tida', 1, 'broken');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wh_stock_in`
--

CREATE TABLE `tbl_wh_stock_in` (
  `whsi_id` int(11) NOT NULL,
  `whsi_date_record` date NOT NULL,
  `whsi_letter_no` varchar(255) NOT NULL,
  `whsi_product_code` varchar(255) NOT NULL,
  `whsi_product` varchar(255) NOT NULL,
  `whsi_qty_in` float NOT NULL,
  `whsi_unit` varchar(255) NOT NULL,
  `whsi_received_from` varchar(255) NOT NULL,
  `whsi_employee` int(11) NOT NULL,
  `whsi_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_wh_stock_in`
--

INSERT INTO `tbl_wh_stock_in` (`whsi_id`, `whsi_date_record`, `whsi_letter_no`, `whsi_product_code`, `whsi_product`, `whsi_qty_in`, `whsi_unit`, `whsi_received_from`, `whsi_employee`, `whsi_note`) VALUES
(11, '2018-04-11', 'In 11/04/2018', '3', '', 100, 'Bottle', 'Company Meiji', 1, ''),
(12, '2018-04-11', 'In 11/04/2018', '4', '', 120, 'Bottle', 'Company Meiji', 1, ''),
(13, '2018-04-11', 'In 11/04/2018', '5', '', 120, 'Bottle', 'Company Meiji', 1, ''),
(14, '2018-04-11', 'In 11/04/2018', '6', '', 20, 'Piece', 'Kitty Shop Food ', 1, ''),
(15, '2018-04-12', 'In 12/04/2018', '6', '', 40, 'Piece', 'Kitty Shop Food ', 1, ''),
(16, '2018-04-12', 'In 12/04/2018', '7', '', 60, 'Piece', 'Chili Bakery', 1, ''),
(17, '2018-04-12', 'In 12/04/2018', '8', '', 16, 'PAC', 'Market', 1, ''),
(18, '2018-04-12', 'In 12/04/2018', '9', '', 100, 'Box', 'Market', 1, 'Pineapple cookies 30\r\nChocolate cookies 20 \r\nRaisin cookies 20\r\nstrawberry 15\r\nRaspberry cookies 15 '),
(19, '2018-04-13', 'In 13/04/2018', '6', '', 72, 'Piece', 'Market', 1, ''),
(22, '2018-01-02', 'In 02-01-18', '41', '', 2500, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(23, '2018-01-02', 'In 02-01-18', '18', '', 150, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(25, '2018-01-02', 'In 02-01-18', '42', '', 2500, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(26, '2018-01-02', 'In 02-01-18', '43', '', 24, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(27, '2018-01-02', 'In 02-01-18', '44', '', 24, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(28, '2018-01-02', 'In 02-01-18', '45', '', 24, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(29, '2018-01-02', 'In 02-01-18', '46', '', 1, 'B0x', 'I.L.S.Co.,Ltd', 1, ''),
(30, '2018-01-04', 'In 04-01-18', '47', '', 15, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(31, '2018-01-02', 'In 02-01-18', '48', '', 20, 'Box', 'I.L.S.Co.,Ltd', 1, ''),
(32, '2018-04-14', 'In 14-04-18', '6', '', 72, 'Piece', 'Kitty Shop Food ', 1, ''),
(33, '2018-04-15', '001246', '6', '', 72, 'Piece', 'Kitty Shop Food ', 1, ''),
(34, '2018-04-16', '001263', '6', '', 72, 'Piece', 'Kitty Shop Food ', 1, ''),
(35, '2018-04-17', 'In 17-04-18', '6', '', 72, 'Piece', 'Kitty Shop Food ', 1, ''),
(36, '2018-04-19', '001304', '6', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(37, '2018-04-20', '001270', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(38, '2018-04-21', '001277', '6', '', 36, 'Piece', 'Kitty Shop Food ', 1, ''),
(39, '2018-04-23', 'In 23-04-18', '6', '', 36, 'Piece', 'Kitty Shop Food ', 1, ''),
(40, '2018-04-26', '001286', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(41, '2018-04-29', '001324', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(42, '2018-04-13', 'Out Amazon', '7', '', 60, 'Piece', 'Chili Bakery', 1, ''),
(43, '2018-04-20', 'Out Amazon', '7', '', 20, 'Piece', 'Chili Bakery', 1, ''),
(44, '2018-04-23', 'Out Amazon', '7', '', 24, 'Piece', 'Chili Bakery', 1, ''),
(45, '2018-04-23', 'In 23-04-18', '60', '', 582, 'Box', 'Market', 1, ''),
(46, '2018-04-27', 'In 27-04-18', '3', '', 50, 'Bottle', 'Company Meiji', 1, ''),
(47, '2018-04-27', 'In 27-04-18', '4', '', 119, 'Bottle', 'Company Meiji', 1, ''),
(48, '2018-04-27', 'In 27-04-18', '5', '', 120, 'Bottle', 'Company Meiji', 1, ''),
(49, '2018-04-30', 'In 30-04-18', '6', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(50, '2018-04-30', 'In 30-0-18', '7', '', 20, 'Piece', 'Chili Bakery', 1, ''),
(51, '2018-05-27', 'In 27-04-18', '9', '', 100, 'Box', 'Market', 1, ''),
(52, '2018-05-01', 'In 01-05-18', '6', '', 36, 'Piece', 'Kitty Shop Food ', 1, ''),
(53, '2018-05-01', 'In 01-05-18', '7', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(54, '2018-05-02', 'In 02-05-18', '7', '', 20, 'Piece', 'Kitty Shop Food ', 1, ''),
(55, '2018-05-03', 'In 03-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(56, '2018-05-04', 'In 04-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(57, '2018-05-04', 'In 04-05-18', '7', '', 24, 'Piece', 'Chili Bakery', 1, ''),
(58, '2018-05-05', 'In 05-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(59, '2018-05-05', 'In 05-05-18', '7', '', 24, 'Piece', 'Chili Bakery', 1, ''),
(60, '2018-05-13', 'In 13-05-18', '15', '', 300, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(61, '2018-05-13', 'In 13-05-18', '18', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(62, '2018-05-13', 'In 13-05-18', '20', '', 20, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(63, '2018-05-13', 'In 13-05-18', '21', '', 40, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(64, '2018-05-13', 'In 13-05-18', '22', '', 24, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(65, '2018-05-13', 'In 13-05-18', '23', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(66, '2018-05-13', 'In 13-05-18', '24', '', 24, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(67, '2018-05-13', 'In 13-05-18', '25', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(68, '2018-05-13', 'In 13-05-18', '26', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(69, '2018-05-13', 'In 13-05-18', '27', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(70, '2018-05-13', 'In 13-05-18', '30', '', 10, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(71, '2018-05-13', 'In 13-05-18', '32', '', 100, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(72, '2018-05-13', 'In 13-05-18', '33', '', 24, 'Bottle', 'I.L.S.Co.,Ltd', 1, ''),
(73, '2018-05-13', 'In 13-05-18', '43', '', 60, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(74, '2018-05-13', 'In 13-05-18', '44', '', 60, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(75, '2018-05-13', 'In 13-05-18', '45', '', 60, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(76, '2018-05-13', 'In 13-05-18', '47', '', 30, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(77, '2018-05-13', 'In 13-05-18', '48', '', 20, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(78, '2018-05-13', 'In 13-05-18', '49', '', 1200, 'set', 'I.L.S.Co.,Ltd', 1, ''),
(79, '2018-05-13', 'In 13-05-18', '73', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(80, '2018-05-13', 'In 13-05-18', '74', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(81, '2018-05-13', 'In 13-05-18', '75', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(82, '2018-05-13', 'In 13-05-18', '76', '', 16, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(83, '2018-05-13', 'In 13-05-18', '77', '', 18, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(84, '2018-05-13', 'In 13-05-18', '79', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(85, '2018-05-13', 'In 13-05-18', '81', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(86, '2018-05-13', 'In 13-05-18', '78', '', 16, 'Pcs', 'I.L.S.Co.,Ltd', 1, ''),
(87, '2018-05-08', '001292', '6', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(88, '2018-05-11', '001150', '6', '', 36, 'Piece', 'Kitty Shop Food ', 1, ''),
(89, '2018-05-12', '001351', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(90, '2018-05-13', '001356', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(92, '2018-05-16', '001373', '6', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(93, '2018-05-19', 'IN 19-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, ''),
(94, '2018-05-21', 'in 21-05-18', '6', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(95, '2018-05-07', 'In 07-05-18', '7', '', 20, 'Piece', 'Chili Bakery', 1, ''),
(96, '2018-05-08', 'In 08-05-18', '7', '', 20, 'Piece', 'Chili Bakery', 1, ''),
(97, '2018-05-11', 'In 11-05-18', '7', '', 24, 'Piece', 'Chili Bakery', 1, ''),
(98, '2018-05-14', 'In 14-05-18', '7', '', 50, 'Piece', 'Chili Bakery', 1, ''),
(99, '2018-05-15', 'In 15-05-18', '7', '', 50, 'Piece', 'Chili Bakery', 1, ''),
(100, '2018-05-18', 'In 18-05-18', '7', '', 40, 'Piece', 'Chili Bakery', 1, ''),
(101, '2018-05-14', 'In 14-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, '001363'),
(102, '2018-01-04', 'In 04-01-18', '54', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(103, '2018-01-04', 'In 04-01-18', '55', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(104, '2018-05-04', 'In 04-01-18', '56', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, ''),
(105, '2018-01-04', 'In 04-01-18', '57', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, ''),
(106, '2018-01-04', 'In 04-01-18', '58', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(107, '2018-01-04', 'In 04-01-18', '49', '', 600, 'Set', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(108, '2018-01-04', 'In 04-01-18', '59', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(109, '2018-01-04', 'In 04-01-18', '50', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(110, '2018-01-04', 'In 04-01-18', '51', '', 18, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(111, '2018-01-04', 'In 04-01-18', '52', '', 24, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(112, '2018-01-04', 'In 04-01-18', '53', '', 36, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(113, '2018-01-04', 'In 04-01-18', '66', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F08012146\r\n'),
(114, '2018-01-04', 'In 04-01-18', '67', '', 2, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046\r\n'),
(115, '2018-01-04', 'In 04-01-18', '68', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046\r\n'),
(116, '2018-01-04', 'In 04-01-18', '69', '', 2, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(117, '2018-01-04', 'In 04-01-18', '82', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(118, '2018-01-04', 'In 04-01-18', '18', '', 150, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(119, '2018-01-04', 'In 04-01-18', '19', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(120, '2018-05-04', 'In 04-01-18', '20', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(121, '2018-01-04', 'In 04-01-18', '22', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(122, '2018-01-04', 'In 04-01-18', '23', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(123, '2018-01-04', 'In 04-01-18', '24', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(124, '2018-05-04', 'In 04-01-18', '25', '', 240, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(125, '2018-01-04', 'In 04-01-18', '26', '', 240, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(126, '2018-01-04', 'In 04-01-18', '27', '', 240, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(127, '2018-01-04', 'In 04-01-18', '70', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(128, '2018-01-04', 'In 04-01-18', '71', '', 3, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(129, '2018-01-04', 'In 04-01-18', '72', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(130, '2018-01-04', 'In 04-01-18', '83', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(131, '2018-01-04', 'In 04-01-18', '28', '', 5, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(132, '2018-01-04', 'In 04-01-18', '84', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(133, '2018-01-04', 'In 04-01-18', '73', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(134, '2018-01-04', 'In 04-01-18', '74', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F08121046'),
(135, '2018-01-04', 'In 04-01-18', '75', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(136, '2018-01-04', 'In 04-01-18', '29', '', 40, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(137, '2018-01-04', 'In 04-01-18', '30', '', 10, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(138, '2018-01-04', 'In 04-01-18', '31', '', 10, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(139, '2018-01-04', 'In 04-01-18', '85', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(140, '2018-01-04', 'In 04-01-18', '86', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(141, '2018-01-04', 'In 04-01-18', '33', '', 6, 'Bottle', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(142, '2018-01-04', 'In 04-01-18', '87', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, ''),
(143, '2018-01-04', 'In 04-01-18', '34', '', 400, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F08121046'),
(144, '2018-01-04', 'In 04-01-18', '35', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, 'F80121046'),
(145, '2018-01-04', 'In 04-01-18', '38', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(146, '2018-01-04', 'In 04-01-18', '39', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F08121046'),
(147, '2018-01-04', 'In 04-01-18', '40', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(148, '2018-01-04', 'In 04-01-18', '88', '', 2, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(149, '2018-01-04', 'In 04-01-18', '89', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(150, '2018-01-04', 'In 04-01-18', '13', '', 12500, 'Set', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(151, '2018-05-22', 'In 22-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, '001608'),
(152, '2018-05-22', 'In 22-05-18', '7', '', 40, 'Piece', 'Chili Bakery', 1, ''),
(153, '2018-01-04', 'In 04-01-18', '12', '', 25, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(154, '2018-01-04', 'In 04-01-18', '14', '', 3, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(155, '2018-01-04', 'In 04-01-18', '90', '', 3, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(156, '2018-01-04', 'In 04-01-18', '91', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(157, '2018-01-04', 'In 04-01-18', '92', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, 'F08012146'),
(158, '2018-01-04', 'In 04-01-18', '93', '', 11, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(159, '2018-01-04', 'In 04-01-18', '95', '', 5, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(160, '2018-01-04', 'In 04-01-18', '94', '', 25, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(161, '2018-01-04', 'In 04-01-18', '61', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(162, '2018-01-04', 'In 04-01-18', '96', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(163, '2018-01-04', 'In 04-01-18', '97', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(164, '2018-01-04', 'In 04-01-18', '15', '', 150, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(165, '2018-01-04', 'In 04-01-18', '98', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F08121046'),
(166, '2018-01-04', 'In 04-01-18', '99', '', 3, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(167, '2018-01-04', 'In 04-01-18', '100', '', 1, 'Box', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(168, '2018-01-04', 'In 04-01-18', '17', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(169, '2018-01-04', 'In 04-01-18', '16', '', 48, 'Bottle', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(170, '2018-01-04', 'In 04-01-18', '101', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(171, '2018-01-04', 'In 04-01-18', '103', '', 1, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(172, '2018-01-04', 'In 04-01-18', '104', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(173, '2018-01-04', 'In 04-01-18', '105', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(174, '2018-01-04', 'In 04-01-18', '106', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(175, '2018-01-04', 'In 04-01-18', '107', '', 3, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(176, '2018-01-04', 'In 04-01-18', '108', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(177, '2018-01-04', 'In 04-01-18', '109', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(178, '2018-01-04', 'In 04-01-18', '110', '', 6, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(179, '2018-01-04', 'In 04-01-18', '111', '', 12, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(180, '2018-01-04', 'In 04-01-18', '112', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(181, '2018-01-04', 'In 04-01-18', '113', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(182, '2018-01-04', 'In 04-01-18', '114', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(183, '2018-01-04', 'In 04-01-18', '115', '', 3, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080121046'),
(184, '2018-02-08', 'In 08-02-18', '61', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(185, '2018-01-04', 'In 08-02-18', '15', '', 100, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(186, '2018-02-08', 'In 08-02-18', '17', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(187, '2018-02-08', 'In 08-02-18', '17', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(188, '2018-02-08', 'In 08-02-18', '18', '', 100, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(189, '2018-02-08', 'In 08-02-18', '19', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(190, '2018-02-08', 'In 08-02-18', '21', '', 60, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(191, '2018-02-08', 'In 08-02-18', '22', '', 24, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(192, '2018-02-08', 'In 08-02-18', '25', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(193, '2018-02-08', 'In 08-02-18', '26', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, 'F08125317'),
(194, '2018-02-08', 'In 08-02-18', '27', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(195, '2018-02-08', 'In 08-02-18', '47', '', 20, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(196, '2018-02-08', 'In 08-02-18', '48', '', 20, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080125317'),
(197, '2018-02-24', 'In 24-02-18', '13', '', 7500, 'Set', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(198, '2018-02-24', 'In 24-02-18', '12', '', 5, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F08012748'),
(199, '2018-02-24', 'In 24-02-18', '14', '', 15, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(200, '2018-02-24', 'In 24-02-18', '15', '', 150, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(201, '2018-02-24', 'In 24-02-18', '17', '', 3, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(202, '2018-02-24', 'In 24-02-18', '16', '', 96, 'Bottle', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(203, '2018-02-24', 'In 24-02-18', '18', '', 100, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(204, '2018-02-24', 'In 24-02-18', '19', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(205, '2018-02-24', 'In 24-02-18', '20', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(206, '2018-02-24', 'In 24-02-18', '21', '', 60, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(207, '2018-02-24', 'In 24-02-18', '23', '', 24, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(208, '2018-02-24', 'In 24-02-18', '25', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(209, '2018-02-24', 'In 24-02-18', '26', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(210, '2018-02-24', 'In 24-02-18', '27', '', 200, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(211, '2018-02-24', 'In 24-05-18', '29', '', 40, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(212, '2018-02-24', 'In 24-02-18', '30', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F08012748'),
(213, '2018-02-24', 'In 24-02-18', '32', '', 100, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(214, '2018-02-24', 'In 24-02-18', '33', '', 12, 'Bottle', 'I.L.S.Co.,Ltd', 1, 'F08012748'),
(215, '2018-02-24', 'In 24-02-18', '34', '', 400, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F08012748'),
(216, '2018-02-24', 'In 24-02-18', '35', '', 1, 'PC', 'I.L.S.Co.,Ltd', 1, 'F08012748'),
(217, '2018-02-24', 'In 24-02-18', '43', '', 48, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(218, '2018-02-24', 'In 24-02-18', '44', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(219, '2018-02-24', 'In 24-02-18', '45', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(220, '2018-02-24', 'In 24-02-18', '49', '', 600, 'Set', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(221, '2018-02-24', 'In 24-02-18', '62', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F08012748'),
(222, '2018-02-24', 'In 24-02-18', '63', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(223, '2018-02-24', 'In 24-02-18', '64', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(224, '2018-02-24', 'In 24-02-18', '65', '', 2, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080127048'),
(225, '2018-03-10', 'In 10-03-18', '13', '', 20000, 'Set', 'I.L.S.Co.,Ltd', 1, 'F080128478'),
(226, '2018-03-10', 'In 10-03-18', '12', '', 5, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080128478'),
(227, '2018-03-10', 'In 10-03-18', '14', '', 8, 'CRT', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(228, '2018-03-10', 'In 10-03-18', '15', '', 300, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080128478'),
(229, '2018-03-10', 'In 10-03-18', '17', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(230, '2018-03-10', 'In 10-03-18', '16', '', 120, 'Bottle', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(231, '2018-03-10', 'In 10-03-18', '18', '', 120, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(232, '2018-03-10', 'In 10-03-18', '19', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(233, '2018-03-10', 'In 10-03-18', '20', '', 4, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(234, '2018-03-10', 'In 1-03-18', '21', '', 20, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(235, '2018-03-10', 'In 10-03-18', '23', '', 60, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(236, '2018-03-10', 'In 1-03-18', '24', '', 24, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(237, '2018-03-10', 'In 10-03-18', '25', '', 160, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(238, '2018-03-10', 'In 10-03-18', '26', '', 240, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(239, '2018-03-10', 'In 10-03-18', '27', '', 160, 'PC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(240, '2018-03-10', 'In 10-03-18', '83', '', 5, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(241, '2018-03-10', 'In 10-03-18', '32', '', 100, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(242, '2018-03-10', 'In 10-03-18', '33', '', 24, 'Bottle', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(243, '2018-03-10', 'In 10-03-18', '43', '', 48, 'Pcs', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(244, '2018-03-10', 'In 10-03-18', '44', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(245, '2018-03-10', 'In 10-03-18', '45', '', 4, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080124878'),
(246, '2018-03-10', 'In 10-03-18', '49', '', 1200, 'Set', 'I.L.S.Co.,Ltd', 1, 'F80124878'),
(247, '2018-04-21', 'In 21-04-18', '3', '', 69, 'Bottle', 'I.L.S.Co.,Ltd', 1, ''),
(248, '2018-04-21', 'In 21-04-18', '4', '', 116, 'Bottle', 'Market', 1, ''),
(249, '2018-04-21', 'In 21-04-18', '5', '', 120, 'Bottle', 'Market', 1, ''),
(250, '2018-04-22', 'In 22-04-18', '48', '', 2, 'PAC', 'I.L.S.Co.,Ltd', 1, ''),
(251, '2018-04-22', 'In 22-04-18', '116', '', 30, 'PAC', 'Market', 1, ''),
(252, '2018-04-22', 'In 22-04-18', '8', '', 26, 'PAC', 'Market', 1, ''),
(253, '2018-04-27', 'In 27-04-18', '18', '', 30, 'PC', 'Market', 1, ''),
(254, '2018-04-27', 'In 27-04-18', '29', '', 20, 'PC', 'Market', 1, ''),
(255, '2018-04-28', 'In 28-04-18', '29', '', 180, 'PC', 'Market', 1, ''),
(258, '2018-05-05', 'In 05-05-18', '3', '', 50, 'Bottle', 'Market', 1, ''),
(259, '2018-05-05', 'In 05-05-18', '4', '', 120, 'Bottle', 'Market', 1, ''),
(260, '2018-05-05', 'In 05-05-18', '5', '', 80, 'Bottle', 'Market', 1, ''),
(261, '2018-05-05', 'In 05-05-18', '8', '', 10, 'PAC', 'Market', 1, ''),
(262, '2018-05-05', 'In 05-05-18', '116', '', 30, 'PAC', 'Market', 1, ''),
(263, '2018-05-09', 'In 09-05-18', '117', '', 160, 'PC', 'Market', 1, ''),
(264, '2018-05-13', 'In 13-05-18', '18', '', 10, 'PAC', 'Market', 1, 'B'),
(265, '2018-05-13', 'In 13-05-18', '26', '', 20, 'PAC', 'Market', 1, 'B'),
(266, '2018-05-13', 'In 13-05-18', '20', '', 10, 'Pcs', 'Market', 1, 'B'),
(267, '2018-05-14', 'In 14-05-18', '18', '', 10, 'PC', 'Market', 1, ''),
(268, '2018-05-14', 'In 14-05-18', '26', '', 20, 'PC', 'Market', 1, ''),
(269, '2018-05-15', 'In 15-05-18', '3', '', 30, 'Bottle', 'Market', 1, ''),
(270, '2018-05-15', 'In 15-05-18', '4', '', 56, 'Bottle', 'Market', 1, ''),
(271, '2018-05-20', 'In 20-05-18', '118', '', 20, 'PC', 'Market', 1, ''),
(272, '2018-05-20', 'In 20-05-18', '119', '', 12, 'Pcs', 'Market', 1, ''),
(273, '2018-05-17', 'In 17-05-18', '8', '', 20, 'PAC', 'Market', 1, ''),
(274, '2018-05-17', 'In 17-05-18', '116', '', 20, 'PAC', 'Market', 1, ''),
(275, '2018-05-19', 'In 19-05-18', '3', '', 50, 'Bottle', 'Market', 1, ''),
(276, '2018-05-19', 'In 19-05-18', '4', '', 80, 'Bottle', 'Market', 1, ''),
(277, '2018-05-19', 'In 19-05-18', '34', '', 40, 'Pcs', 'Market', 1, 'other '),
(278, '2018-05-13', 'In 13-05-18', '80', '', 1, 'PAC', 'I.L.S.Co.,Ltd', 1, 'F080134505'),
(279, '2018-05-26', 'In 26-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, '001618'),
(280, '2018-05-25', 'In 25-05-18', '34', '', 100, 'PC', 'PTT', 1, 'Borrow'),
(281, '2018-05-26', 'In 26-05-2018', '7', '', 40, 'Piece', 'Chili Bakery', 1, ''),
(282, '2018-05-25', 'in 25-05-18', '3', '', 60, 'Bottle', 'Market', 1, ''),
(283, '2018-04-03', 'out 03-04-18', '8', '', 12, 'PAC', 'Market', 1, ''),
(284, '2018-04-06', 'out 06-04-18', '8', '', 6, 'PAC', 'Market', 1, ''),
(285, '2018-04-06', 'out 06-04-18', '116', '', 18, 'PAC', 'Market', 1, ''),
(286, '2018-04-03', 'out 03-04-18', '116', '', 4, 'PAC', 'Market', 1, ''),
(287, '2018-04-28', 'out 28-04-18', '24', '', 10, 'PC', 'Market', 1, ''),
(288, '2018-04-28', 'out 28-04-18', '22', '', 10, 'PC', 'Market', 1, ''),
(289, '2018-05-30', 'out 30-05-18', '7', '', 40, 'Piece', 'Market', 1, ''),
(290, '2018-05-28', 'out 28-05-18', '34', '', 16, 'PC', 'Market', 1, ''),
(291, '2018-05-28', 'out 28-05-18', '13', '', 1000, 'PC', 'Market', 1, ''),
(292, '2018-05-28', 'in 28-05-18', '18', '', 20, 'PC', 'Market', 1, ''),
(293, '2018-05-30', 'In 30-05-18', '6', '', 24, 'Piece', 'Kitty Shop Food ', 1, ''),
(294, '2018-05-14', 'In 14-05-18', '6', '', 48, 'Piece', 'Kitty Shop Food ', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wh_stock_out`
--

CREATE TABLE `tbl_wh_stock_out` (
  `whso_id` int(11) NOT NULL,
  `whso_date_record` date NOT NULL,
  `whso_letter_no` varchar(255) NOT NULL,
  `whso_product_code` varchar(255) NOT NULL,
  `whso_product` varchar(255) NOT NULL,
  `whso_qty_out` float NOT NULL,
  `whso_unit` varchar(255) NOT NULL,
  `whso_sent_to` varchar(255) NOT NULL,
  `whso_employee` int(11) NOT NULL,
  `whso_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_wh_stock_out`
--

INSERT INTO `tbl_wh_stock_out` (`whso_id`, `whso_date_record`, `whso_letter_no`, `whso_product_code`, `whso_product`, `whso_qty_out`, `whso_unit`, `whso_sent_to`, `whso_employee`, `whso_note`) VALUES
(6, '2018-04-11', 'out 11/04/2018', '3', '', 100, 'Bottle', 'PK Mart ', 1, 'Netra'),
(7, '2018-04-11', 'out 11/04/2018', '4', '', 48, 'Bottle', 'PK Mart ', 1, 'Netra'),
(8, '2018-04-11', 'out 11/04/2018', '5', '', 52, 'Bottle', 'PK Mart ', 1, 'Netra'),
(9, '2018-04-11', 'out 11/04/2018', '6', '', 20, 'Piece', 'PK Mart ', 1, 'Netra'),
(10, '2018-04-13', 'Out 13/04/2018', '9', '', 100, 'Box', 'PK Mart ', 1, ''),
(11, '2018-04-13', 'Out 13/04/2018', '6', '', 7, 'Piece', 'PK Mart ', 1, ''),
(12, '2018-04-12', 'out 12/04/2018', '6', '', 40, 'Piece', 'PK Mart ', 1, ''),
(13, '2018-04-13', 'Out 13/04/2018', '4', '', 24, 'Box', 'PK Mart ', 1, ''),
(14, '2018-04-24', 'out 001', '10', '', 10, 'bottle', 'huy', 1, ''),
(15, '2018-04-24', 'out amazon 003', '10', '', 5, 'bottle', 'Tda', 1, ''),
(16, '2018-04-24', 'out Mart 001', '11', '', 5, 'pc', 'lida', 1, ''),
(17, '2018-04-13', 'Out Amazon', '6', '', 23, 'Piece', 'PK Mart ', 1, ''),
(18, '2018-04-14', 'Out Amazon', '6', '', 42, 'Piece', 'PK Mart ', 1, ''),
(19, '2018-04-15', 'Out Amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(20, '2018-04-16', 'Out Amazon', '6', '', 100, 'Piece', 'PK Mart ', 1, ''),
(21, '2018-04-17', 'Out Amazon', '6', '', 120, 'Piece', 'PK Mart ', 1, ''),
(22, '2018-04-19', 'Out Amazon', '6', '', 24, 'Piece', 'PK Mart ', 1, ''),
(23, '2018-04-20', 'Out Amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(24, '2018-04-21', 'Out Amazon', '6', '', 36, 'Piece', 'PK Mart ', 1, ''),
(25, '2018-04-23', 'Out Amazon', '6', '', 36, 'Piece', 'PK Mart ', 1, ''),
(26, '2018-04-26', 'Out Amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(27, '2018-04-29', 'Out Amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(28, '2018-04-11', 'Out Amazon', '6', '', 20, 'Piece', 'PK Mart ', 1, ''),
(29, '2018-04-12', 'Out Amazon', '7', '', 43, 'Piece', 'PK Mart ', 1, ''),
(30, '2018-04-13', 'Out Amazon', '7', '', 20, 'Piece', 'PK Mart ', 1, ''),
(31, '2018-04-15', 'Out Amazon', '7', '', 21, 'Piece', 'PK Mart ', 1, ''),
(32, '2018-04-16', 'Out Amazon', '7', '', 36, 'Piece', 'PK Mart ', 1, ''),
(33, '2018-04-20', 'Out Amazon', '7', '', 20, 'Piece', 'PK Mart ', 1, ''),
(34, '2018-04-23', 'Out Amazon', '7', '', 24, 'Piece', 'PK Mart ', 1, ''),
(35, '2018-04-24', 'Out amazon', '60', '', 30, 'Pcs', 'PK Mart ', 1, ''),
(36, '2018-04-30', 'Out Amazon', '60', '', 24, 'Pcs', 'PK Mart ', 1, ''),
(37, '2018-04-30', 'Out amazon', '6', '', 24, 'Piece', 'PK Mart ', 1, ''),
(38, '2018-04-30', 'Out amazon', '7', '', 20, 'Piece', 'PK Mart ', 1, ''),
(39, '2018-05-27', 'Out amazon', '9', '', 100, 'Box', 'PK Mart ', 1, ''),
(40, '2018-05-01', 'Out amazon', '6', '', 36, 'Piece', 'PK Mart ', 1, ''),
(41, '2018-05-01', 'Out amazon ', '7', '', 24, 'Piece', 'PK Mart ', 1, ''),
(42, '2018-05-02', 'Out amazon', '7', '', 20, 'Piece', 'PK Mart ', 1, ''),
(43, '2018-05-03', 'Out amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(44, '2018-05-04', 'Out amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(45, '2018-05-04', 'Out amazon', '7', '', 24, 'Piece', 'PK Mart ', 1, ''),
(46, '2018-05-05', 'Out amazon', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(47, '2018-05-05', 'Out amazon', '7', '', 24, 'Piece', 'PK Mart ', 1, ''),
(48, '2018-05-14', 'Out amazon ', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(49, '2018-05-13', 'Out amazon', '18', '', 20, 'PC', 'PK Mart ', 1, ''),
(50, '2018-05-14', 'Out amazon', '78', '', 5, 'Pcs', 'PK Mart ', 1, ''),
(51, '2018-05-14', 'Out amazon', '77', '', 10, 'Pcs', 'PK Mart ', 1, ''),
(52, '2018-05-14', 'Out amazon', '60', '', 48, 'Pcs', 'PK Mart ', 1, ''),
(53, '2018-05-14', 'Out amazon', '76', '', 10, 'Pcs', 'PK Mart ', 1, ''),
(54, '2018-05-08', '001292', '6', '', 24, 'Piece', 'PK Mart ', 1, ''),
(55, '2018-05-11', '001150', '6', '', 36, 'Piece', 'PK Mart ', 1, ''),
(56, '2018-05-12', '001351', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(57, '2018-05-13', '001356', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(58, '2018-05-14', '001363', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(59, '2018-05-16', '001373', '6', '', 24, 'Piece', 'PK Mart ', 1, ''),
(60, '2018-05-19', 'Out 19-05-18', '6', '', 48, 'Piece', 'PK Mart ', 1, ''),
(61, '2018-05-21', '001400', '6', '', 24, 'Piece', 'PK Mart ', 1, ''),
(62, '2018-05-07', 'Out 07-05-18', '7', '', 20, 'Piece', 'PK Mart ', 1, ''),
(63, '2018-05-08', 'Out 08-05-18', '7', '', 20, 'Piece', 'PK Mart ', 1, ''),
(64, '2018-05-11', 'Out 11-05-18', '7', '', 24, 'Piece', 'PK Mart ', 1, ''),
(65, '2018-05-14', 'Out 14-05-18', '7', '', 50, 'Piece', 'PK Mart ', 1, ''),
(66, '2018-05-15', 'Out 15-05-18', '7', '', 50, 'Piece', 'PK Mart ', 1, ''),
(67, '2018-05-18', 'Out 18-05-18', '7', '', 40, 'Piece', 'PK Mart ', 1, ''),
(68, '2018-05-14', 'Out 14-05-18', '6', '', 48, 'Piece', 'PK Mart ', 1, '001363'),
(69, '2018-05-22', 'Out 22-05-18', '6', '', 48, 'Piece', 'PK Mart ', 1, '001608'),
(70, '2018-05-22', 'Out 22-05-18', '7', '', 40, 'Piece', 'PK Mart ', 1, ''),
(90, '2018-05-02', 'Out 02-05-18', '12', '', 1, 'CRT', 'PK Mart ', 1, '10000002'),
(91, '2018-05-02', 'Out 02-05-18', '15', '', 50, 'PC', 'PK Mart ', 1, '10000002'),
(94, '2018-04-02', 'Out 02-04-18', '22', '', 7, 'Bottle', 'PK Mart ', 1, '10000002'),
(95, '2018-04-02', 'Out 02-04-18', '23', '', 2, 'Bottle', 'PK Mart ', 1, '10000002'),
(96, '2018-05-02', 'Out 02-05-18', '24', '', 9, 'PC', 'PK Mart ', 1, '10000002'),
(97, '2018-05-02', 'Out 02-05-18', '25', '', 20, 'PC', 'PK Mart ', 1, '10000002'),
(98, '2018-05-02', 'Out 02-05-18', '26', '', 40, 'PC', 'PK Mart ', 1, '10000002'),
(99, '2018-05-02', 'Out 02-05-18', '27', '', 5, 'PC', 'PK Mart ', 1, '10000002\r\n'),
(100, '2018-05-02', 'Out 02-05-18', '29', '', 15, 'PC', 'PK Mart ', 1, '10000002'),
(101, '2018-05-02', 'Out 02-05-18', '33', '', 2, 'Bottle', 'PK Mart ', 1, '10000002'),
(102, '2018-05-02', 'Out 02-05-18', '34', '', 56, 'PC', 'PK Mart ', 1, '10000002'),
(103, '2018-05-10', 'Out 10-05-18', '12', '', 1, 'CRT', 'PK Mart ', 1, '10000003'),
(104, '2018-05-10', 'Out 10-05-18', '15', '', 50, 'PC', 'PK Mart ', 1, '10000003'),
(105, '2018-05-10', 'Out 10-05-18', '21', '', 3, 'PC', 'PK Mart ', 1, '10000003'),
(106, '2018-05-10', 'Out 10-05-18', '22', '', 6, 'Bottle', 'PK Mart ', 1, '10000003'),
(107, '2018-05-10', 'Out 10-05-18', '23', '', 2, 'Bottle', 'PK Mart ', 1, '10000003'),
(108, '2018-05-10', 'Out 10-05-18', '24', '', 7, 'Bottle', 'PK Mart ', 1, '10000003'),
(109, '2018-05-10', 'Out 10-05-18', '25', '', 40, 'PC', 'PK Mart ', 1, '10000003'),
(110, '2018-05-10', 'Out 10-05-18', '26', '', 40, 'PC', 'PK Mart ', 1, '10000003'),
(111, '2018-05-10', 'Out 10-05-18', '27', '', 40, 'PC', 'PK Mart ', 1, '10000003'),
(112, '2018-05-10', 'Out 10-05-18', '29', '', 16, 'PC', 'PK Mart ', 1, '10000003'),
(113, '2018-05-10', 'Out 10-05-18', '34', '', 63, 'PC', 'PK Mart ', 1, '10000003'),
(114, '2018-05-10', 'Out 10-05-18', '35', '', 1, 'PC', 'PK Mart ', 1, '10000003'),
(115, '2018-05-10', 'Out 10-05-18', '8', '', 3, 'PAC', 'PK Mart ', 1, '10000003'),
(116, '2018-05-10', 'Out 10-05-18', '116', '', 12, 'PAC', 'PK Mart ', 1, '10000003'),
(117, '2018-05-10', 'Out 10-05-18', '60', '', 48, 'Pcs', 'PK Mart ', 1, '10000003'),
(118, '2018-05-17', 'Out 17-05-18', '15', '', 50, 'PC', 'PK Mart ', 1, '10000004'),
(119, '2018-05-17', 'Out 17-05-18', '18', '', 30, 'PC', 'PK Mart ', 1, '10000004'),
(120, '2018-05-17', 'Out 17-05-18', '21', '', 2, 'PC', 'PK Mart ', 1, '10000004'),
(121, '2018-05-17', 'Out 17-05-18', '22', '', 12, 'Bottle', 'PK Mart ', 1, '10000004'),
(122, '2018-04-26', 'Out 26-04-18', '13', '', 5000, 'Set', 'PK Mart ', 1, '10000001'),
(123, '2018-04-26', 'Out 26-04-18', '12', '', 1, 'CRT', 'PK Mart ', 1, '10000001'),
(124, '2018-04-26', 'Out 26-04-18', '14', '', 2, 'CRT', 'PK Mart ', 1, '10000001'),
(125, '2018-04-27', 'Out 27-04-18', '15', '', 100, 'PC', 'PK Mart ', 1, '10000001'),
(126, '2018-04-26', 'Out 26-04-18', '17', '', 2, 'PAC', 'PK Mart ', 1, '10000001'),
(127, '2018-04-26', 'Out 26-04-18', '16', '', 88, 'Bottle', 'PK Mart ', 1, '10000001'),
(128, '2018-04-26', 'Out 26-04-18', '18', '', 30, 'PC', 'PK Mart ', 1, '10000001'),
(129, '2018-04-26', 'Out 26-04-18', '21', '', 3, 'PC', 'PK Mart ', 1, '10000001'),
(130, '2018-04-26', 'Out 26-04-18', '22', '', 12, 'Bottle', 'PK Mart ', 1, '10000001'),
(131, '2018-04-26', 'Out 26-04-18', '23', '', 15, 'Bottle', 'PK Mart ', 1, '10000001'),
(132, '2018-04-26', 'Out 26-04-18', '24', '', 15, 'Bottle', 'PK Mart ', 1, '10000001'),
(133, '2018-04-26', 'Out 26-04-18', '25', '', 40, 'PC', 'PK Mart ', 1, '10000001'),
(134, '2018-04-26', 'Out 26-04-18', '26', '', 60, 'PC', 'PK Mart ', 1, '10000001'),
(135, '2018-04-26', 'Out 26-04-18', '27', '', 40, 'PC', 'PK Mart ', 1, '10000001'),
(136, '2018-04-26', 'Out 26-4-18', '29', '', 20, 'PC', 'PK Mart ', 1, '10000001'),
(137, '2018-04-26', 'Out 26-04-18', '32', '', 25, 'Pcs', 'PK Mart ', 1, '10000001'),
(138, '2018-04-26', 'Out 26-04-18', '33', '', 6, 'Bottle', 'PK Mart ', 1, '10000001'),
(139, '2018-04-26', 'Out 26-04-18', '34', '', 70, 'PC', 'PK Mart ', 1, '10000001'),
(140, '2018-04-26', 'Out 26-04-18', '35', '', 1, 'Bottle', 'PK Mart ', 1, '10000001'),
(141, '2018-04-26', 'Out 26-04-18', '43', '', 24, 'Pcs', 'PK Mart ', 1, '10000001'),
(142, '2018-04-26', 'Out 26-04-18', '44', '', 24, 'Pcs', 'PK Mart ', 1, '10000001'),
(143, '2018-04-26', 'Out 26-04-18', '45', '', 24, 'Pcs', 'PK Mart ', 1, '10000001'),
(144, '2018-04-26', 'Out 26-04-18', '8', '', 10, 'PAC', 'PK Mart ', 1, '10000001'),
(145, '2018-04-26', 'Out 26-04-18', '116', '', 15, 'PAC', 'PK Mart ', 1, '10000001'),
(146, '2018-04-26', 'Out 26-04-18', '49', '', 300, 'Set', 'PK Mart ', 1, '10000001'),
(147, '2018-05-02', 'Out 02-05-18', '13', '', 3500, 'Set', 'PK Mart ', 1, '10000002'),
(148, '2018-05-02', 'Out 02-05-18', '17', '', 1, 'PAC', 'PK Mart ', 1, '10000002'),
(149, '2018-05-02', 'Out 02-05-18', '16', '', 8, 'Bottle', 'PK Mart ', 1, '10000002'),
(150, '2018-05-02', 'Out 02-05-18', '35', '', 1, 'Bottle', 'PK Mart ', 1, '10000002'),
(151, '2018-05-02', 'Out 02-05-18', '8', '', 4, 'PAC', 'PK Mart ', 1, '10000002'),
(152, '2018-05-02', 'Out 02-05-18', '116', '', 10, 'PAC', 'PK Mart ', 1, '10000002'),
(153, '2018-05-02', 'Out 02-05-18', '49', '', 350, 'Set', 'PK Mart ', 1, '10000002'),
(154, '2018-05-02', 'Out 02-05-18', '60', '', 48, 'Pcs', 'PK Mart ', 1, '10000002'),
(155, '2018-05-10', 'Out 10-05-18', '13', '', 2500, 'Set', 'PK Mart ', 1, '10000003'),
(156, '2018-05-10', 'Out 10-05-18', '14', '', 1, 'CRT', 'PK Mart ', 1, '10000003'),
(157, '2018-05-10', 'Out 10-05-18', '29', '', 16, 'PC', 'PK Mart ', 1, '10000003'),
(158, '2018-05-10', 'Out 10-05-18', '49', '', 300, 'Set', 'PK Mart ', 1, '10000003'),
(160, '2018-05-26', 'Out 26-05-18', '6', '', 48, 'Piece', 'PK Mart ', 1, '001618'),
(161, '2018-05-17', 'Out 17-05-18', '23', '', 6, 'Bottle', 'PK Mart ', 1, '10000004'),
(162, '2018-05-17', 'Out 17-05-18', '24', '', 15, 'Bottle', 'PK Mart ', 1, '10000004'),
(163, '2018-05-17', 'Out 17-05-18', '25', '', 40, 'PC', 'PK Mart ', 1, '10000004'),
(164, '2018-05-17', 'Out 17-05-18', '26', '', 60, 'PC', 'PK Mart ', 1, '10000004'),
(165, '2018-05-17', 'Out 17-05-18', '27', '', 20, 'PC', 'PK Mart ', 1, '10000004'),
(166, '2018-05-17', 'Out 17-05-18', '29', '', 20, 'PC', 'PK Mart ', 1, '10000004'),
(167, '2018-05-17', 'Out 17-05-18', '33', '', 6, 'Bottle', 'PK Mart ', 1, '10000004'),
(168, '2018-05-17', 'Out 17-05-18', '43', '', 48, 'Pcs', 'PK Mart ', 1, '10000004'),
(169, '2018-05-17', 'Out 17-05-18', '44', '', 48, 'Pcs', 'PK Mart ', 1, '10000004'),
(170, '2018-05-17', 'Out 17-15-18', '45', '', 12, 'Pcs', 'PK Mart ', 1, '10000004'),
(171, '2018-05-17', 'Out 17-05-18', '8', '', 5, 'PAC', 'PK Mart ', 1, '10000004'),
(172, '2018-05-17', 'Out 17-05-18', '116', '', 15, 'PAC', 'PK Mart ', 1, '10000004'),
(173, '2018-05-17', 'Out 17-05-18', '60', '', 48, 'Box', 'PK Mart ', 1, '10000004'),
(174, '2018-05-24', 'Out 24-05-18', '12', '', 1, 'CRT', 'PK Mart ', 1, '10000005'),
(175, '2018-05-24', 'Out 24-05-18', '15', '', 50, 'PC', 'PK Mart ', 1, '10000005'),
(176, '2018-05-24', 'Out 24-05-18', '18', '', 30, 'PC', 'PK Mart ', 1, '10000005'),
(177, '2018-05-24', 'Out 24-05-18', '21', '', 1, 'PC', 'PK Mart ', 1, '10000005'),
(178, '2018-05-24', 'Out 24-05-18', '22', '', 2, 'Bottle', 'PK Mart ', 1, '10000005'),
(179, '2018-05-24', 'Out 24-05-18', '24', '', 7, 'Bottle', 'PK Mart ', 1, '10000005'),
(180, '2018-05-24', 'Out 24-05-18', '25', '', 20, 'PC', 'PK Mart ', 1, '10000005'),
(181, '2018-05-24', 'Out  24-05-18', '26', '', 40, 'PC', 'PK Mart ', 1, '10000005'),
(182, '2018-05-24', 'Out 24-05-18', '27', '', 20, 'PC', 'PK Mart ', 1, '10000005'),
(183, '2018-05-24', 'Out 24-05-18', '29', '', 12, 'PC', 'PK Mart ', 1, '10000005'),
(184, '2018-05-24', 'Out 24-05-18', '33', '', 4, 'Bottle', 'PK Mart ', 1, '10000005'),
(185, '2018-05-24', 'Out 24-05-18', '34', '', 10, 'PC', 'PK Mart ', 1, '10000005'),
(186, '2018-05-26', 'Out 26-05-18', '34', '', 20, 'PC', 'PK Mart ', 1, 'B'),
(187, '2018-05-24', 'Out 24-05-18', '35', '', 1, 'Bottle', 'PK Mart ', 1, '10000005'),
(188, '2018-05-24', 'Out 24-05-18', '43', '', 12, 'Pcs', 'PK Mart ', 1, '10000005'),
(189, '2018-05-24', 'Out 24-05-18', '44', '', 12, 'Pcs', 'PK Mart ', 1, '10000005'),
(190, '2018-05-24', 'Out 24-05-18', '45', '', 12, 'Pcs', 'PK Mart ', 1, '10000005'),
(191, '2018-05-24', 'Out 24-05-18', '8', '', 4, 'PAC', 'PK Mart ', 1, '10000005'),
(192, '2018-05-24', 'Out 24-05-18', '116', '', 10, 'PC', 'PK Mart ', 1, '10000005'),
(193, '2018-05-24', 'Out 24-05-18', '60', '', 48, 'Bottle', 'PK Mart ', 1, '10000005'),
(194, '2018-05-24', 'Out 24-05-18', '79', '', 1, 'PAC', 'PK Mart ', 1, '10000005'),
(195, '2018-05-24', 'Out 24-05-18', '80', '', 1, 'PAC', 'PK Mart ', 1, '10000005'),
(196, '2018-05-24', 'Out 24-05-18', '81', '', 1, 'PAC', 'PK Mart ', 1, '10000005'),
(197, '2018-04-01', 'Out 01-04-18', '13', '', 1000, 'Set', 'PK Mart ', 1, ''),
(198, '2018-04-01', 'Out 01-04-18', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(199, '2018-04-02', 'Out 02-04-18', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(200, '2018-04-02', 'Out 02-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(201, '2018-04-02', 'Out 02-04-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(202, '2018-04-03', 'Out 03-04-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(203, '2018-04-03', 'Out 03-04-18', '29', '', 20, 'PC', 'PK Mart ', 1, ''),
(204, '2018-04-03', 'Out 03-04-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(205, '2018-04-04', 'Out 04-04-18', '25', '', 20, 'PC', 'PK Mart ', 1, ''),
(206, '2018-04-04', 'Out 04-04-18', '26', '', 60, 'PC', 'PK Mart ', 1, ''),
(207, '2018-04-04', 'Out 04-04-18', '8', '', 3, 'PAC', 'PK Mart ', 1, ''),
(208, '2018-04-04', 'Out 04-04-18', '116', '', 10, 'PAC', 'PK Mart ', 1, ''),
(209, '2018-04-04', 'Out 04-04-18', '13', '', 1000, 'Set', 'PK Mart ', 1, ''),
(210, '2018-04-04', 'Out 04-04-18', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(211, '2018-04-05', 'Out 05-04-18', '13', '', 2000, 'Set', 'PK Mart ', 1, ''),
(212, '2018-04-06', 'Out 06-04-18', '34', '', 20, 'CRT', 'PK Mart ', 1, ''),
(213, '2018-04-07', 'Out 07-04-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(214, '2018-04-08', 'Out 08-04-18', '26', '', 40, 'PC', 'PK Mart ', 1, ''),
(215, '2018-04-08', 'Out 08-04-18', '116', '', 2, 'PAC', 'PK Mart ', 1, ''),
(216, '2018-04-08', 'Out 08-04-18', '49', '', 300, 'Set', 'PK Mart ', 1, ''),
(217, '2018-04-08', 'Out 08-04-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(218, '2018-04-09', 'Out 09-04-18', '116', '', 1, 'PAC', 'PK Mart ', 1, ''),
(219, '2018-04-09', 'Out 09-04-18', '34', '', 80, 'PC', 'PK Mart ', 1, ''),
(220, '2018-04-10', 'Out 10-04-18', '116', '', 1, 'PAC', 'PK Mart ', 1, ''),
(221, '2018-04-11', 'Out 11-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(222, '2018-04-11', 'Out 11-04-18', '116', '', 2, 'PAC', 'PK Mart ', 1, ''),
(223, '2018-05-26', 'Out 26-05-18', '7', '', 40, 'Piece', 'PK Mart ', 1, ''),
(224, '2018-04-11', 'Out 11-04-18', '23', '', 2, 'Bottle', 'PK Mart ', 1, ''),
(225, '2018-04-11', 'Out 11-04-18', '34', '', 10, 'PAC', 'PK Mart ', 1, ''),
(226, '2018-04-12', 'Out 12-04-18', '8', '', 1, 'PAC', 'PK Mart ', 1, ''),
(227, '2018-04-12', 'Out 12-04-18', '48', '', 3, 'PAC', 'PK Mart ', 1, ''),
(228, '2018-04-12', 'Out 12-04-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(229, '2018-04-12', 'Out 12-04-18', '24', '', 6, 'Bottle', 'PK Mart ', 1, ''),
(230, '2018-04-12', 'Out 12-04-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(231, '2018-04-12', 'Out 12-04-18', '34', '', 20, 'PAC', 'PK Mart ', 1, ''),
(232, '2018-04-14', 'Out 14-04-18', '15', '', 50, 'PC', 'PK Mart ', 1, ''),
(233, '2018-04-14', 'Out 14-04-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(234, '2018-05-14', 'Out 14-05-18', '30', '', 2, 'PAC', 'PK Mart ', 1, ''),
(235, '2018-04-15', 'Out 15-04-18', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(236, '2018-04-15', 'Out 15-04-18', '30', '', 2, 'PAC', 'PK Mart ', 1, ''),
(237, '2018-04-16', 'Out 16-04-18', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(238, '2018-04-16', 'Out 16-04-18', '27', '', 20, 'PC', 'PK Mart ', 1, ''),
(239, '2018-04-16', 'Out 16-04-18', '25', '', 20, 'PC', 'PK Mart ', 1, ''),
(240, '2018-04-16', 'Out 16-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(241, '2018-04-16', 'Out 16-04-18', '8', '', 2, 'PAC', 'PK Mart ', 1, ''),
(242, '2018-04-16', 'Out 16-04-18', '116', '', 3, 'PAC', 'PK Mart ', 1, ''),
(243, '2018-04-16', 'Out 16-04-18', '12', '', 1, 'CRT', 'PK Mart ', 1, ''),
(244, '2018-04-16', 'Out 16-04-18', '30', '', 1, 'PAC', 'PK Mart ', 1, ''),
(245, '2018-04-16', 'Out 16-04-18', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(246, '2018-04-17', 'Out 17-04-18', '18', '', 20, 'PC', 'PK Mart ', 1, ''),
(247, '2018-04-17', 'Out 17-04-18', '25', '', 20, 'PC', 'PK Mart ', 1, ''),
(248, '2018-04-17', 'Out 17-04-18', '26', '', 40, 'PC', 'PK Mart ', 1, ''),
(249, '2018-04-17', 'Out 17-04-18', '48', '', 6, 'PAC', 'PK Mart ', 1, ''),
(250, '2018-04-17', 'Out 17-04-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(251, '2018-04-17', 'Out 17-04-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(252, '2018-04-17', 'Out 17-004-18', '34', '', 40, 'PC', 'PK Mart ', 1, ''),
(253, '2018-04-18', 'Out 18-04-18', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(254, '2018-04-18', 'Out 18-04-18', '15', '', 50, 'PC', 'PK Mart ', 1, ''),
(255, '2018-04-18', 'Out 18-04-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(256, '2018-04-18', 'Out 18-04-18', '29', '', 20, 'PC', 'PK Mart ', 1, ''),
(257, '2018-04-19', 'Out 19-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(258, '2018-04-19', 'Out 19-04-18', '8', '', 1, 'PAC', 'PK Mart ', 1, ''),
(259, '2018-04-19', 'Out 19-04-18', '48', '', 2, 'PAC', 'PK Mart ', 1, ''),
(260, '2018-04-19', 'Out 19-04-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(261, '2018-04-20', 'Out 20-04-18', '116', '', 2, 'PAC', 'PK Mart ', 1, ''),
(262, '2018-04-20', 'Out 20-04-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(263, '2018-04-20', 'Out 20-04-18', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(264, '2018-04-21', 'Out 21-04-18', '25', '', 20, 'PC', 'PK Mart ', 1, ''),
(265, '2018-04-21', 'Out 21-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(266, '2018-04-21', 'Out 21-04-18', '13', '', 1000, 'Set', 'PK Mart ', 1, ''),
(267, '2018-04-21', 'Out 21-04-18', '16', '', 24, 'PC', 'PK Mart ', 1, ''),
(268, '2018-04-21', 'Out 21-04-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(269, '2018-04-23', 'Out 23-04-18', '25', '', 20, 'PC', 'PK Mart ', 1, ''),
(270, '2018-04-22', 'Out 22-04-18', '8', '', 1, 'PAC', 'PK Mart ', 1, ''),
(271, '2018-04-22', 'Out 22-04-18', '48', '', 4, 'PAC', 'PK Mart ', 1, ''),
(272, '2018-04-22', 'Out 22-04-18', '12', '', 1, 'CRT', 'PK Mart ', 1, ''),
(273, '2018-04-22', 'Out 22-04-18', '33', '', 3, 'Bottle', 'PK Mart ', 1, ''),
(274, '2018-04-23', 'Out 23-04-18', '13', '', 2000, 'Set', 'PK Mart ', 1, ''),
(275, '2018-04-23', 'Out 23-04-18', '29', '', 2, 'PC', 'PK Mart ', 1, ''),
(276, '2018-04-23', 'Out 23-04-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(277, '2018-04-24', 'Out 24-04-18', '8', '', 1, 'PAC', 'PK Mart ', 1, ''),
(278, '2018-04-24', 'Out 24-04-18', '48', '', 2, 'PAC', 'PK Mart ', 1, ''),
(279, '2018-04-25', 'Out 25-04-18', '13', '', 1500, 'Set', 'PK Mart ', 1, ''),
(280, '2018-04-25', 'Out 25-04-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(281, '2018-04-25', 'Out 25-04-18', '29', '', 3, 'PC', 'PK Mart ', 1, ''),
(282, '2018-04-25', 'Out 25-04-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(283, '2018-04-26', 'Out 26-04-18', '116', '', 1, 'PAC', 'PK Mart ', 1, ''),
(284, '2018-04-26', 'Out 26-4-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(285, '2018-04-26', 'Out 26-04-18', '29', '', 3, 'PC', 'PK Mart ', 1, ''),
(286, '2018-04-17', 'Out  17-04-18', '21', '', 4, 'PC', 'PK Mart ', 1, ''),
(287, '2018-04-25', 'Out 25-04-18', '21', '', 1, 'PC', 'PK Mart ', 1, ''),
(288, '2018-05-28', 'Out 28-05-18', '34', '', 36, 'PC', 'PK Mart ', 1, ''),
(289, '2018-04-24', 'Out 24-04-18', '29', '', 2, 'PC', 'PK Mart ', 1, ''),
(290, '2018-04-24', 'Out 24-04-18', '23', '', 3, 'Bottle', 'PK Mart ', 1, ''),
(291, '2018-04-25', 'Out 25-04-18', '49', '', 50, 'Set', 'PK Mart ', 1, ''),
(292, '2018-04-25', 'Out 25-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(293, '2018-04-27', 'Out 27-04-18', '18', '', 30, 'PC', 'PK Mart ', 1, ''),
(294, '2018-04-27', 'Out 27-04-18', '29', '', 2, 'PC', 'PK Mart ', 1, ''),
(295, '2018-04-08', 'Out 08-04-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(296, '2018-04-13', 'Out 13-04-18', '30', '', 2, 'PAC', 'PK Mart ', 1, ''),
(297, '2018-05-13', 'Out 13-05-18', '26', '', 40, 'PC', 'PK Mart ', 1, ''),
(298, '2018-05-14', 'Out 14-05-18', '77', '', 8, 'Pcs', 'PK Mart ', 1, ''),
(299, '2018-05-14', 'Out 14-05-2018', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(300, '2018-05-15', 'Out 15-05-18', '18', '', 20, 'PC', 'PK Mart ', 1, ''),
(301, '2018-05-15', 'Out 15-05-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(302, '2018-05-15', 'Out 15-05-18', '27', '', 20, 'PC', 'PK Mart ', 1, ''),
(303, '2018-05-15', 'Out 15-05-18', '25', '', 20, 'PC', 'PK Mart ', 1, ''),
(304, '2018-05-15', 'Out 15-05-18', '29', '', 4, 'PC', 'PK Mart ', 1, ''),
(305, '2018-05-15', 'Out 15-05-18', '48', '', 3, 'PC', 'PK Mart ', 1, ''),
(306, '2018-05-15', 'Out 15-05-18', '30', '', 4, 'PAC', 'PK Mart ', 1, ''),
(307, '2018-05-16', 'Out 16-05-18', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(308, '2018-05-16', 'Out 16-05-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(309, '2018-05-16', 'Out 16-05-18', '21', '', 1, 'PC', 'PK Mart ', 1, ''),
(310, '2018-05-16', 'Out 16-05-18', '13', '', 500, 'Set', 'PK Mart ', 1, ''),
(311, '2018-05-16', 'Out 16-05-18', '30', '', 2, 'PAC', 'PK Mart ', 1, ''),
(312, '2018-05-16', 'Out 16-05-18', '29', '', 3, 'PC', 'PK Mart ', 1, ''),
(313, '2018-05-20', 'Out 20-05-18', '30', '', 1, 'PC', 'PK Mart ', 1, ''),
(314, '2018-05-21', 'Out 21-05-18', '34', '', 20, 'PC', 'PK Mart ', 1, ''),
(315, '2018-05-21', 'Out 21-05-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(316, '2018-05-17', 'Out 17-05-18', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(317, '2018-05-17', 'Out 17-05-18', '20', '', 10, 'PC', 'PK Mart ', 1, ''),
(318, '2018-05-22', 'Out 22-05-18', '34', '', 10, 'PC', 'PK Mart ', 1, ''),
(319, '2018-05-22', 'Out 22-05-18', '60', '', 24, 'Box', 'PK Mart ', 1, ''),
(320, '2018-05-22', 'Out 22-05-18', '12', '', 1, 'CRT', 'PK Mart ', 1, ''),
(321, '2018-03-01', 'Out 01-03-18', '23', '', 14, 'Bottle', 'PK Mart ', 1, ''),
(322, '2018-03-01', 'Out 01-03-18', '24', '', 10, 'Bottle', 'PK Mart ', 1, ''),
(323, '2018-03-01', 'Out 01-03-18', '25', '', 33, 'PC', 'PK Mart ', 1, ''),
(324, '2018-03-01', 'Out 01-03-18', '29', '', 12, 'PC', 'PK Mart ', 1, ''),
(325, '2018-03-01', 'Out 01-03-18', '43', '', 21, 'PC', 'PK Mart ', 1, ''),
(326, '2018-03-01', 'Out 01-03-18', '44', '', 18, 'PC', 'PK Mart ', 1, ''),
(327, '2018-03-01', 'Out 01-03-18', '45', '', 22, 'PC', 'PK Mart ', 1, ''),
(328, '2018-03-01', 'Out 01-03-18', '48', '', 12, 'PAC', 'PK Mart ', 1, ''),
(329, '2018-03-01', 'Out 01-03-18', '49', '', 25, 'Set', 'PK Mart ', 1, ''),
(330, '2018-03-01', 'Out 01-03-18', '51', '', 6, 'PC', 'PK Mart ', 1, ''),
(331, '2018-03-01', 'Out 01-03-18', '52', '', 19, 'Pcs', 'PK Mart ', 1, ''),
(332, '2018-03-01', 'Out 01-03-18', '53', '', 23, 'Pcs', 'PK Mart ', 1, ''),
(333, '2018-04-01', 'Out 01-04-18', '13', '', 5000, 'Set', 'PK Mart ', 1, ''),
(334, '2018-04-01', 'Out 01-04-18', '12', '', 1, 'CRT', 'PK Mart ', 1, ''),
(335, '2018-04-01', 'Out 01-04-18', '15', '', 5, 'PC', 'PK Mart ', 1, ''),
(336, '2018-04-01', 'Out 01-04-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(337, '2018-04-01', 'Out 01-04-18', '18', '', 30, 'PC', 'PK Mart ', 1, ''),
(338, '2018-04-01', 'Out 01-04-18', '21', '', 2, 'PC', 'PK Mart ', 1, ''),
(339, '2018-04-01', 'Out 01-04-18', '25', '', 13, 'PC', 'PK Mart ', 1, ''),
(340, '2018-04-01', 'Out 01-04-18', '26', '', 60, 'PC', 'PK Mart ', 1, ''),
(341, '2018-04-01', 'Out 01-04-18', '29', '', 20, 'PC', 'PK Mart ', 1, ''),
(342, '2018-04-01', 'Out 01-04-18', '34', '', 70, 'PC', 'PK Mart ', 1, ''),
(343, '2018-04-01', 'Out 01-04-18', '43', '', 12, 'Box', 'PK Mart ', 1, ''),
(344, '2018-04-01', 'Out 01-04-18', '44', '', 12, 'Pcs', 'PK Mart ', 1, ''),
(345, '2018-04-01', 'Out 01-04-18', '45', '', 12, 'Pcs', 'PK Mart ', 1, ''),
(346, '2018-04-01', 'Out 01-04-18', '47', '', 5, 'PAC', 'PK Mart ', 1, ''),
(347, '2018-04-01', 'Out 01-04-18', '48', '', 10, 'PAC', 'PK Mart ', 1, ''),
(348, '2018-04-01', 'Out 01-04-18', '49', '', 300, 'Set', 'PK Mart ', 1, ''),
(349, '2018-03-07', 'Out 07-03-18', '13', '', 2000, 'PC', 'PK Mart ', 1, ''),
(350, '2018-03-07', 'out 07-03-18', '18', '', 15, 'PC', 'PK Mart ', 1, ''),
(351, '2018-03-07', 'out 07-03-18', '20', '', 4, 'PC', 'PK Mart ', 1, ''),
(352, '2018-03-07', 'out 07-03-18', '21', '', 3, 'PC', 'PK Mart ', 1, ''),
(353, '2018-03-07', 'out 07-03-18', '22', '', 2, 'Bottle', 'PK Mart ', 1, ''),
(354, '2018-03-07', 'out 07-03-18', '24', '', 12, 'Bottle', 'PK Mart ', 1, ''),
(355, '2018-03-07', 'out 07-03-18', '25', '', 28, 'PC', 'PK Mart ', 1, ''),
(356, '2018-03-07', 'out 07-03-18', '26', '', 40, 'PC', 'PK Mart ', 1, ''),
(357, '2018-03-07', 'out 07-03-18', '27', '', 23, 'PC', 'PK Mart ', 1, ''),
(358, '2018-03-07', 'out 07-03-18', '29', '', 14, 'PC', 'PK Mart ', 1, ''),
(359, '2018-03-07', 'out 07-03-18', '34', '', 50, 'PC', 'PK Mart ', 1, ''),
(360, '2018-03-07', 'out 07-03-18', '15', '', 92, 'PC', 'PK Mart ', 1, ''),
(362, '2018-03-01', 'out 01-03-18', '13', '', 4400, 'Set', 'PK Mart ', 1, ''),
(363, '2018-03-01', 'out 01-03-18', '15', '', 55, 'PC', 'PK Mart ', 1, ''),
(364, '2018-03-01', 'out 01-03-18', '17', '', 1, 'PC', 'PK Mart ', 1, ''),
(365, '2018-03-01', 'out 01-03-18', '16', '', 72, 'Bottle', 'PK Mart ', 1, ''),
(366, '2018-03-01', 'out 01-03-18', '18', '', 22, 'PC', 'PK Mart ', 1, ''),
(367, '2018-03-01', 'out 01-03-18', '27', '', 11, 'PC', 'PK Mart ', 1, ''),
(368, '2018-03-01', 'out 01-03-18', '26', '', 75, 'PC', 'PK Mart ', 1, ''),
(369, '2018-03-15', 'out 15-03-18', '13', '', 1000, 'Set', 'PK Mart ', 1, ''),
(371, '2018-03-15', 'out 15-03-18', '16', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(372, '2018-03-15', 'out 15-03-18', '22', '', 4, 'PC', 'PK Mart ', 1, ''),
(373, '2018-03-15', 'out 15-03-18', '24', '', 6, 'Bottle', 'PK Mart ', 1, ''),
(374, '2018-03-15', 'out 15-03-18', '25', '', 40, 'PC', 'PK Mart ', 1, ''),
(375, '2018-03-15', 'out 15-03-18', '29', '', 11, 'PC', 'PK Mart ', 1, ''),
(376, '2018-03-15', 'out 15-03-18', '51', '', 3, 'Pcs', 'PK Mart ', 1, ''),
(377, '2018-04-21', 'out 21-04-18', '3', '', 69, 'Bottle', 'PK Mart ', 1, ''),
(378, '2018-04-27', 'out 27-04-18', '3', '', 50, 'Bottle', 'PK Mart ', 1, ''),
(379, '2018-05-05', 'out 05-05-18', '3', '', 50, 'Bottle', 'PK Mart ', 1, ''),
(380, '2018-05-19', 'out 19-05-18', '3', '', 50, 'Bottle', 'PK Mart ', 1, ''),
(381, '2018-05-25', 'out 25-5-18', '3', '', 60, 'PC', 'PK Mart ', 1, ''),
(382, '2018-04-14', 'out 14-04-18', '4', '', 27, 'Bottle', 'PK Mart ', 1, ''),
(383, '2018-04-15', 'out 15-04-18', '4', '', 21, 'Bottle', 'PK Mart ', 1, ''),
(384, '2018-04-21', 'out 21-04-18', '4', '', 116, 'Bottle', 'PK Mart ', 1, ''),
(385, '2018-04-27', 'out 27-04-18', '4', '', 119, 'Bottle', 'PK Mart ', 1, ''),
(386, '2018-05-05', 'out 05-05-18', '4', '', 120, 'Bottle', 'PK Mart ', 1, ''),
(387, '2018-05-15', 'out 15-05-18', '4', '', 56, 'Bottle', 'PK Mart ', 1, ''),
(388, '2018-05-19', 'out 19-05-18', '4', '', 80, 'Bottle', 'PK Mart ', 1, ''),
(389, '2018-04-13', 'out 13-04-18', '5', '', 24, 'Bottle', 'PK Mart ', 1, ''),
(390, '2018-04-14', 'out 14-04-18', '5', '', 32, 'Bottle', 'PK Mart ', 1, ''),
(391, '2018-04-15', 'out 15-04-18', '5', '', 12, 'Bottle', 'PK Mart ', 1, ''),
(392, '2018-04-21', 'out 21-04-18', '5', '', 120, 'Bottle', 'PK Mart ', 1, ''),
(393, '2018-04-27', 'out 27-04-18', '5', '', 120, 'Bottle', 'PK Mart ', 1, ''),
(394, '2018-05-05', 'out 05-05-18', '5', '', 80, 'Bottle', 'PK Mart ', 1, ''),
(395, '2018-05-15', 'out 15-05-18', '3', '', 30, 'Bottle', 'PK Mart ', 1, ''),
(396, '2018-05-23', 'out 23-05-18', '13', '', 2500, 'Set', 'PK Mart ', 1, ''),
(397, '2018-05-25', 'out 25-05-18', '49', '', 300, 'Set', 'PK Mart ', 1, ''),
(398, '2018-05-29', 'out 29-05-18', '26', '', 20, 'PC', 'PK Mart ', 1, ''),
(399, '2018-05-28', 'out 28-05-18', '18', '', 10, 'PC', 'PK Mart ', 1, ''),
(400, '2018-05-30', 'out 30-05-18', '7', '', 40, 'Piece', 'PK Mart ', 1, ''),
(401, '2018-05-30', 'out 30-05-18', '6', '', 24, 'Piece', 'PK Mart ', 1, ''),
(402, '2018-06-30', 'faslfajs 001002 out', '95', '', 500, '20', 'fsfas', 1, 'fsaas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pos_branch`
--
ALTER TABLE `tbl_pos_branch`
  ADD PRIMARY KEY (`bra_id`);

--
-- Indexes for table `tbl_pos_category`
--
ALTER TABLE `tbl_pos_category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `tbl_pos_con_invoice`
--
ALTER TABLE `tbl_pos_con_invoice`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_pos_customer`
--
ALTER TABLE `tbl_pos_customer`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_pos_employee`
--
ALTER TABLE `tbl_pos_employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `position_id` (`position_id`);

--
-- Indexes for table `tbl_pos_exchange`
--
ALTER TABLE `tbl_pos_exchange`
  ADD PRIMARY KEY (`exchange_id`);

--
-- Indexes for table `tbl_pos_expense_category`
--
ALTER TABLE `tbl_pos_expense_category`
  ADD PRIMARY KEY (`exca_id`);

--
-- Indexes for table `tbl_pos_expense_list`
--
ALTER TABLE `tbl_pos_expense_list`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `tbl_pos_invoice`
--
ALTER TABLE `tbl_pos_invoice`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `cus` (`cus`);

--
-- Indexes for table `tbl_pos_position`
--
ALTER TABLE `tbl_pos_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `tbl_pos_product`
--
ALTER TABLE `tbl_pos_product`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `cate_id` (`cate_id`);

--
-- Indexes for table `tbl_pos_revenue_category`
--
ALTER TABLE `tbl_pos_revenue_category`
  ADD PRIMARY KEY (`reca_id`);

--
-- Indexes for table `tbl_pos_revenue_list`
--
ALTER TABLE `tbl_pos_revenue_list`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `tbl_pos_stockin`
--
ALTER TABLE `tbl_pos_stockin`
  ADD PRIMARY KEY (`in_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `vender_id` (`vender_id`);

--
-- Indexes for table `tbl_pos_stockout`
--
ALTER TABLE `tbl_pos_stockout`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `tbl_pos_stock_adjust`
--
ALTER TABLE `tbl_pos_stock_adjust`
  ADD PRIMARY KEY (`sa_id`);

--
-- Indexes for table `tbl_pos_supplier_invoice`
--
ALTER TABLE `tbl_pos_supplier_invoice`
  ADD PRIMARY KEY (`supi_id`);

--
-- Indexes for table `tbl_pos_user`
--
ALTER TABLE `tbl_pos_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_id` (`position_id`);

--
-- Indexes for table `tbl_pos_vat`
--
ALTER TABLE `tbl_pos_vat`
  ADD PRIMARY KEY (`vat_id`);

--
-- Indexes for table `tbl_pos_vender`
--
ALTER TABLE `tbl_pos_vender`
  ADD PRIMARY KEY (`vender_id`);

--
-- Indexes for table `tbl_pos_wh_stock_adjust`
--
ALTER TABLE `tbl_pos_wh_stock_adjust`
  ADD PRIMARY KEY (`whsa_id`);

--
-- Indexes for table `tbl_pos_wh_stock_in`
--
ALTER TABLE `tbl_pos_wh_stock_in`
  ADD PRIMARY KEY (`whsi_id`);

--
-- Indexes for table `tbl_pos_wh_stock_out`
--
ALTER TABLE `tbl_pos_wh_stock_out`
  ADD PRIMARY KEY (`whso_id`);

--
-- Indexes for table `tbl_revenue_category`
--
ALTER TABLE `tbl_revenue_category`
  ADD PRIMARY KEY (`reca_id`);

--
-- Indexes for table `tbl_revenue_list`
--
ALTER TABLE `tbl_revenue_list`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `tbl_stock_adjust`
--
ALTER TABLE `tbl_stock_adjust`
  ADD PRIMARY KEY (`sa_id`);

--
-- Indexes for table `tbl_supplier_invoice`
--
ALTER TABLE `tbl_supplier_invoice`
  ADD PRIMARY KEY (`supi_id`);

--
-- Indexes for table `tbl_supplier_pay`
--
ALTER TABLE `tbl_supplier_pay`
  ADD PRIMARY KEY (`supp_id`);

--
-- Indexes for table `tbl_type_daily_amount`
--
ALTER TABLE `tbl_type_daily_amount`
  ADD PRIMARY KEY (`tda_id`);

--
-- Indexes for table `tbl_user_active`
--
ALTER TABLE `tbl_user_active`
  ADD PRIMARY KEY (`ua_id`);

--
-- Indexes for table `tbl_user_branch`
--
ALTER TABLE `tbl_user_branch`
  ADD PRIMARY KEY (`ub_id`);

--
-- Indexes for table `tbl_wh_stock_adjust`
--
ALTER TABLE `tbl_wh_stock_adjust`
  ADD PRIMARY KEY (`whsa_id`);

--
-- Indexes for table `tbl_wh_stock_in`
--
ALTER TABLE `tbl_wh_stock_in`
  ADD PRIMARY KEY (`whsi_id`);

--
-- Indexes for table `tbl_wh_stock_out`
--
ALTER TABLE `tbl_wh_stock_out`
  ADD PRIMARY KEY (`whso_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pos_branch`
--
ALTER TABLE `tbl_pos_branch`
  MODIFY `bra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_pos_category`
--
ALTER TABLE `tbl_pos_category`
  MODIFY `cate_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_pos_con_invoice`
--
ALTER TABLE `tbl_pos_con_invoice`
  MODIFY `c_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_pos_customer`
--
ALTER TABLE `tbl_pos_customer`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_pos_employee`
--
ALTER TABLE `tbl_pos_employee`
  MODIFY `emp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_pos_expense_category`
--
ALTER TABLE `tbl_pos_expense_category`
  MODIFY `exca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_pos_expense_list`
--
ALTER TABLE `tbl_pos_expense_list`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_pos_invoice`
--
ALTER TABLE `tbl_pos_invoice`
  MODIFY `transaction_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tbl_pos_position`
--
ALTER TABLE `tbl_pos_position`
  MODIFY `position_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_pos_product`
--
ALTER TABLE `tbl_pos_product`
  MODIFY `pro_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `tbl_pos_revenue_category`
--
ALTER TABLE `tbl_pos_revenue_category`
  MODIFY `reca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_pos_revenue_list`
--
ALTER TABLE `tbl_pos_revenue_list`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_pos_stockin`
--
ALTER TABLE `tbl_pos_stockin`
  MODIFY `in_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT for table `tbl_pos_stockout`
--
ALTER TABLE `tbl_pos_stockout`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `tbl_pos_stock_adjust`
--
ALTER TABLE `tbl_pos_stock_adjust`
  MODIFY `sa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_pos_supplier_invoice`
--
ALTER TABLE `tbl_pos_supplier_invoice`
  MODIFY `supi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_pos_user`
--
ALTER TABLE `tbl_pos_user`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_pos_vender`
--
ALTER TABLE `tbl_pos_vender`
  MODIFY `vender_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_pos_wh_stock_adjust`
--
ALTER TABLE `tbl_pos_wh_stock_adjust`
  MODIFY `whsa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_pos_wh_stock_in`
--
ALTER TABLE `tbl_pos_wh_stock_in`
  MODIFY `whsi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;
--
-- AUTO_INCREMENT for table `tbl_pos_wh_stock_out`
--
ALTER TABLE `tbl_pos_wh_stock_out`
  MODIFY `whso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;
--
-- AUTO_INCREMENT for table `tbl_revenue_category`
--
ALTER TABLE `tbl_revenue_category`
  MODIFY `reca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_revenue_list`
--
ALTER TABLE `tbl_revenue_list`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_stock_adjust`
--
ALTER TABLE `tbl_stock_adjust`
  MODIFY `sa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_supplier_invoice`
--
ALTER TABLE `tbl_supplier_invoice`
  MODIFY `supi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_supplier_pay`
--
ALTER TABLE `tbl_supplier_pay`
  MODIFY `supp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_type_daily_amount`
--
ALTER TABLE `tbl_type_daily_amount`
  MODIFY `tda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `tbl_user_active`
--
ALTER TABLE `tbl_user_active`
  MODIFY `ua_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_user_branch`
--
ALTER TABLE `tbl_user_branch`
  MODIFY `ub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_wh_stock_adjust`
--
ALTER TABLE `tbl_wh_stock_adjust`
  MODIFY `whsa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_wh_stock_in`
--
ALTER TABLE `tbl_wh_stock_in`
  MODIFY `whsi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;
--
-- AUTO_INCREMENT for table `tbl_wh_stock_out`
--
ALTER TABLE `tbl_wh_stock_out`
  MODIFY `whso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
