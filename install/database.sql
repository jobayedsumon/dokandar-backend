-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 08, 2021 at 12:57 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u936827588_gomarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_image` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_image`, `admin_phone`, `admin_email`, `admin_pass`) VALUES
(1, 'TecManic', 'images/admin/profile/23-07-19/230719014721pm-activity.png', '9999999999', 'support@tecmanic.com', '$2y$10$.sOI9/OUKDrJOyNvFnecCO16nw89ekZ6TIC7.P2NHinRmrkTRpVIS');

-- --------------------------------------------------------

--
-- Table structure for table `admin_banner`
--

CREATE TABLE `admin_banner` (
  `banner_id` int(11) NOT NULL,
  `banner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` int(11) NOT NULL,
  `cityadmin_id` int(255) DEFAULT NULL,
  `area_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `delivery_charge` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `cityadmin_id`, `area_name`, `created_at`, `updated_at`, `delivery_charge`) VALUES
(37, 14, 'Shankar Nagar, Siddipet, Siddipet, Telangana, India', '06-10-2020 10:02 pm', 'N/A', 10),
(38, 14, 'Hanuman Nager, Siddipet, Siddipet, Telangana, India', '06-10-2020 10:02 pm', 'N/A', 20),
(39, 15, 'Karimnagar, Telangana, India', '06-10-2020 10:12 pm', 'N/A', 30),
(40, 16, 'Visakhapatnam, Andhra Pradesh, India', '08-10-2020 03:45 pm', 'N/A', 50),
(41, 16, 'Guntur, Andhra Pradesh, India', '08-10-2020 05:45 pm', 'N/A', 40),
(43, 1, 'Noida City Center, Sector-32, Noida, Uttar Pradesh, India', '24-11-2020 03:33 pm', 'N/A', 50),
(46, 1, 'Sonipat, Haryana, India', '10-12-2020 03:24 pm', 'N/A', 50);

-- --------------------------------------------------------

--
-- Table structure for table `assign_homecat`
--

CREATE TABLE `assign_homecat` (
  `assign_id` int(200) NOT NULL,
  `homecat_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `cityadmin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bannerloc_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_resturant`
--

CREATE TABLE `banner_resturant` (
  `banner_id` int(11) NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cancel_for`
--

CREATE TABLE `cancel_for` (
  `res_id` int(11) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cancel_for`
--

INSERT INTO `cancel_for` (`res_id`, `reason`) VALUES
(1, 'i bought from somewhere else');

-- --------------------------------------------------------

--
-- Table structure for table `cancel_reason`
--

CREATE TABLE `cancel_reason` (
  `reason_id` int(11) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cancel_reason`
--

INSERT INTO `cancel_reason` (`reason_id`, `reason`) VALUES
(2, 'shifted to another society.'),
(3, 'Order Placed Wrongly');

-- --------------------------------------------------------

--
-- Table structure for table `cash_collect`
--

CREATE TABLE `cash_collect` (
  `request_id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_collection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_boy_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a',
  `no_of_orders` int(11) NOT NULL DEFAULT 0,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `city_image` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cityadmin`
--

CREATE TABLE `cityadmin` (
  `cityadmin_id` int(11) NOT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cityadmin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cityadmin_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cityadmin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cityadmin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cityadmin_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cityadmin_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a',
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cityadmin_cat`
--

CREATE TABLE `cityadmin_cat` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cityadmin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comission`
--

CREATE TABLE `comission` (
  `com_id` int(11) NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` date NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comission_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `complain_id` int(11) NOT NULL,
  `complain_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`complain_id`, `complain_name`, `description`) VALUES
(1, 'product not delivered yet', 'product not delivered');

-- --------------------------------------------------------

--
-- Table structure for table `completed_orders`
--

CREATE TABLE `completed_orders` (
  `completed_id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_boy_incentive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_boy_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_code`
--

CREATE TABLE `country_code` (
  `code_id` int(11) NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_code`
--

INSERT INTO `country_code` (`code_id`, `country_code`, `number_limit`) VALUES
(1, '+91', 10);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(100) NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `cart_value` int(100) NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uses_restriction` int(11) NOT NULL DEFAULT 1,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_sign` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency`, `currency_sign`) VALUES
(1, 'Rupees', '₹');

-- --------------------------------------------------------

--
-- Table structure for table `deal_product`
--

CREATE TABLE `deal_product` (
  `deal_id` int(11) NOT NULL,
  `varient_id` int(11) NOT NULL,
  `deal_price` float NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `status` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `delivery_boy_id` int(11) NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_boy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_boy_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_boy_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_boy_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `delivery_boy_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'online',
  `is_confirmed` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verify` int(100) NOT NULL DEFAULT 0,
  `cityadmin_id` int(11) DEFAULT NULL,
  `dboy_comission` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_area`
--

CREATE TABLE `delivery_boy_area` (
  `delivery_boy_area_id` int(11) NOT NULL,
  `delivery_boy_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_comission`
--

CREATE TABLE `delivery_boy_comission` (
  `dboy_comission_id` int(11) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comission_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_vendor`
--

CREATE TABLE `delivery_boy_vendor` (
  `delivery_boy_vendor_id` int(10) NOT NULL,
  `delivery_boy_id` int(10) NOT NULL,
  `vendor_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_timing`
--

CREATE TABLE `delivery_timing` (
  `delivery_timing_id` int(11) NOT NULL,
  `delivery_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_timing_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_time_slot` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_timing`
--

INSERT INTO `delivery_timing` (`delivery_timing_id`, `delivery_type`, `delivery_timing_text`, `delivery_time_slot`) VALUES
(1, 'subscribe', 'Delivery Between', '05:30 AM - 07:30 AM');

-- --------------------------------------------------------

--
-- Table structure for table `destination_address`
--

CREATE TABLE `destination_address` (
  `destination_address_id` int(11) NOT NULL,
  `destination_pincode` int(11) NOT NULL,
  `destination_houseno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_landmark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_add` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination_lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination_phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fcm_key`
--

CREATE TABLE `fcm_key` (
  `unique_id` int(200) NOT NULL,
  `user_app_key` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_app_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dboy_app_key` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcm_key`
--

INSERT INTO `fcm_key` (`unique_id`, `user_app_key`, `vendor_app_key`, `dboy_app_key`) VALUES
(1, 'AAAAmgTjGYw:APA91bFf-_iPWQ5_jMQHBX6ysjPZ1UFQsLFMF1ztuMcZGPdGxJ77Ki46_vCsJu-dM38LU3UqY_AGQMykttsIw3NNsSouQfGTDCz-QV2Fww6k6ovUUSYjhMbNZ9GwIFHWaNzrdzQJHmqT', 'AAAAsMc8tIA:APA91bGRMglAYrAkoLIkt4ZfENWcnKPkrxD7ODxxCaW0taPN6GYjcOA04RSSPPNIYdc0OdQp1yDpDU5-O88N-ARy2h8pJPfBu91DSx-nru5xO-qQwsmF1cE8gkxw7cb8mLFMqYF7Y-y7', 'AAAAmgTjGYw:APA91bFf-_iPWQ5_jMQHBX6ysjPZ1UFQsLFMF1ztuMcZGPdGxJ77Ki46_vCsJu-dM38LU3UqY_AGQMykttsIw3NNsSouQfGTDCz-QV2Fww6k6ovUUSYjhMbNZ9GwIFHWaNzrdzQJHmqT');

-- --------------------------------------------------------

--
-- Table structure for table `first_wallet_recharge`
--

CREATE TABLE `first_wallet_recharge` (
  `deal_id` int(11) NOT NULL,
  `min_wallet_recharge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `free_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `first_wallet_recharge`
--

INSERT INTO `first_wallet_recharge` (`deal_id`, `min_wallet_recharge`, `product_id`, `city_id`, `free_for`) VALUES
(3, '2000', '2', '2', '5'),
(4, '3000', '5', '2', '10');

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holiday` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homecat`
--

CREATE TABLE `homecat` (
  `homecat_id` int(200) NOT NULL,
  `homecat_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homecat_status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cityadmin_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incentive`
--

CREATE TABLE `incentive` (
  `incentive_id` int(11) NOT NULL,
  `delivery_boy_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_incentive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_incentive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remaining_incentive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incentive_amount`
--

CREATE TABLE `incentive_amount` (
  `incentive_amount_id` int(11) NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_boy_incentive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `cityadmin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(11) NOT NULL,
  `logo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `logo_name`, `logo_image`) VALUES
(1, 'GoMarket', 'logo/image/23-08-19/230819124541pm-milk-subscription.png');

-- --------------------------------------------------------

--
-- Table structure for table `mapbox`
--

CREATE TABLE `mapbox` (
  `map_id` int(11) NOT NULL,
  `mapbox_api` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapbox`
--

INSERT INTO `mapbox` (`map_id`, `mapbox_api`) VALUES
(1, 'pk.eyJ1IjoidGVjbWFuaWMiLCJhIjoiY2tlbDN4MjIxMGl0bTJxbndybWI5NDI1a');

-- --------------------------------------------------------

--
-- Table structure for table `map_API`
--

CREATE TABLE `map_API` (
  `key_id` int(11) NOT NULL,
  `map_api_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `map_API`
--

INSERT INTO `map_API` (`key_id`, `map_api_key`) VALUES
(1, 'l9tSWxeB-Glu5o');

-- --------------------------------------------------------

--
-- Table structure for table `map_settings`
--

CREATE TABLE `map_settings` (
  `map_id` int(11) NOT NULL,
  `mapbox` int(11) NOT NULL,
  `google_map` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `map_settings`
--

INSERT INTO `map_settings` (`map_id`, `mapbox`, `google_map`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `msg91`
--

CREATE TABLE `msg91` (
  `id` int(11) NOT NULL,
  `sender_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `msg91`
--

INSERT INTO `msg91` (`id`, `sender_id`, `api_key`, `active`) VALUES
(1, 'GOGRCK', '197064AVzt8v', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notificationby`
--

CREATE TABLE `notificationby` (
  `n_id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `not_accepted`
--

CREATE TABLE `not_accepted` (
  `not_accepted_id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_boy_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `cart_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` float NOT NULL,
  `price_without_delivery` float NOT NULL,
  `total_products_mrp` float NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by_wallet` float NOT NULL DEFAULT 0,
  `rem_price` float NOT NULL DEFAULT 0,
  `order_date` date NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_charge` float NOT NULL DEFAULT 0,
  `time_slot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dboy_id` int(11) NOT NULL DEFAULT 0,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `user_signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelling_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT 0,
  `coupon_discount` float NOT NULL DEFAULT 0,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_by_store` int(11) NOT NULL DEFAULT 0,
  `canceled_at` datetime DEFAULT NULL,
  `dboy_incentive` float NOT NULL,
  `ui_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_complains`
--

CREATE TABLE `order_complains` (
  `order_complain_id` int(11) NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complain_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_boy_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settled_amt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `store_order_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `varient_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `total_mrp` float NOT NULL,
  `order_cart_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `varient_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addon_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_id` int(11) NOT NULL DEFAULT 0,
  `addon_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_banner`
--

CREATE TABLE `parcel_banner` (
  `banner_id` int(11) NOT NULL,
  `cityadmin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bannerloc_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_category`
--

CREATE TABLE `parcel_category` (
  `parcel_cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_charges`
--

CREATE TABLE `parcel_charges` (
  `charge_id` int(100) NOT NULL,
  `city_from` int(11) NOT NULL,
  `city_to` int(11) DEFAULT NULL,
  `parcel_charge` int(11) NOT NULL,
  `charge_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_city`
--

CREATE TABLE `parcel_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `city_image` varchar(255) NOT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `vendor_id` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_delivery_boy`
--

CREATE TABLE `parcel_delivery_boy` (
  `delivery_boy_id` int(11) NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_boy_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_boy_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_boy_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_boy_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lng` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `delivery_boy_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'online',
  `is_confirmed` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `otp` int(100) DEFAULT NULL,
  `phone_verify` int(100) NOT NULL DEFAULT 0,
  `cityadmin_id` int(11) DEFAULT NULL,
  `dboy_comission` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_delivery_boy_area`
--

CREATE TABLE `parcel_delivery_boy_area` (
  `delivery_boy_area_id` int(11) NOT NULL,
  `delivery_boy_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_details`
--

CREATE TABLE `parcel_details` (
  `parcel_id` int(11) NOT NULL,
  `source_address_id` int(11) NOT NULL,
  `destination_address_id` int(11) NOT NULL,
  `cart_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) NOT NULL,
  `vendor_id` int(10) NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charges` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dboy_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rem_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymentvia`
--

CREATE TABLE `paymentvia` (
  `paymentvia_id` int(11) NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `payment_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymentvia`
--

INSERT INTO `paymentvia` (`paymentvia_id`, `payment_mode`, `status`, `payment_key`) VALUES
(4, 'Razor Pay', 1, 'rzp_test_7fnnn7WTaard4h'),
(5, 'Paystack', 1, 'pk_test_f0269be01832feda8b9cce63a261770ecd249f77'),
(6, 'Paypal', 0, 'fghvbhjhbvhji');

-- --------------------------------------------------------

--
-- Table structure for table `payout_notification`
--

CREATE TABLE `payout_notification` (
  `payout_notification_id` int(10) NOT NULL,
  `vendor_id` int(10) NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_by_admin` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_banner`
--

CREATE TABLE `pharmacy_banner` (
  `banner_id` int(10) NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `subcat_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) NOT NULL DEFAULT 'N/A',
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_varient`
--

CREATE TABLE `product_varient` (
  `varient_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `strick_price` float DEFAULT NULL,
  `price` float NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `varient_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reedem_values`
--

CREATE TABLE `reedem_values` (
  `reedem_id` int(100) NOT NULL,
  `reward_point` int(100) NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_addons`
--

CREATE TABLE `restaurant_addons` (
  `addon_id` int(11) NOT NULL,
  `addon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addon_price` float NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resturant_category`
--

CREATE TABLE `resturant_category` (
  `resturant_cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resturant_deal_product`
--

CREATE TABLE `resturant_deal_product` (
  `deal_product_id` int(11) NOT NULL,
  `deal_price` float NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resturant_product`
--

CREATE TABLE `resturant_product` (
  `product_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resturant_variant`
--

CREATE TABLE `resturant_variant` (
  `variant_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `strick_price` float NOT NULL,
  `price` float NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resturant_variant`
--

INSERT INTO `resturant_variant` (`variant_id`, `product_id`, `quantity`, `unit`, `strick_price`, `price`, `vendor_id`) VALUES
(44, 32, '250', 'quator', 220, 180, 47),
(45, 33, '6', 'pices', 240, 220, 47),
(46, 31, '500', 'quator', 220, 180, 47),
(47, 32, '500', 'half', 280, 260, 47),
(48, 34, '70', 'ml', 100, 80, 48),
(49, 35, '100', 'ml', 150, 130, 48),
(50, 36, '5', 'mg', 290, 300, 48),
(53, 37, '1', 'full plate', 250, 350.6, 47);

-- --------------------------------------------------------

--
-- Table structure for table `reward_history`
--

CREATE TABLE `reward_history` (
  `reward_id` int(11) NOT NULL,
  `cart_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` float NOT NULL,
  `reward_points` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reward_history`
--

INSERT INTO `reward_history` (`reward_id`, `cart_id`, `total_amount`, `reward_points`, `user_id`, `created_at`) VALUES
(26, 'OCAQ003f', 300, 50, 472, '2020-09-30'),
(27, 'CFRP97d9', 820, 50, 472, '2020-09-30'),
(28, 'JJWT49f1', 525, 50, 472, '2020-09-30'),
(29, 'UCZK1045', 740, 50, 472, '2020-09-30'),
(30, 'WWBG0942', 1460, 200, 472, '2020-09-30'),
(31, 'TPYX204e', 470, 50, 472, '2020-09-30'),
(32, 'WMIL7184', 101, 50, 421, '2020-10-03'),
(33, 'WMIL7184', 101, 50, 421, '2020-10-03'),
(34, 'WMIL7184', 101, 50, 421, '2020-10-03'),
(35, 'MSOI376b', 520, 50, 472, '2020-10-09'),
(36, 'CEAN8652', 1025, 200, 536, '2020-11-19'),
(37, 'FMVO5404', 250, 50, 536, '2020-11-27'),
(38, 'GPYV8538', 100, 50, 447, '2020-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `reward_points`
--

CREATE TABLE `reward_points` (
  `reward_id` int(100) NOT NULL,
  `min_cart_value` int(100) NOT NULL,
  `reward_point` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smsby`
--

CREATE TABLE `smsby` (
  `by_id` int(11) NOT NULL,
  `msg91` int(11) NOT NULL DEFAULT 1,
  `twilio` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smsby`
--

INSERT INTO `smsby` (`by_id`, `msg91`, `twilio`, `status`) VALUES
(1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_api`
--

CREATE TABLE `sms_api` (
  `key_id` int(11) NOT NULL,
  `sender_id` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_api_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_api`
--

INSERT INTO `sms_api` (`key_id`, `sender_id`, `sms_api_key`) VALUES
(1, 'GBSCRB', '197064AVzt8vx55d4');

-- --------------------------------------------------------

--
-- Table structure for table `source_address`
--

CREATE TABLE `source_address` (
  `source_address_id` int(11) NOT NULL,
  `source_pincode` int(11) NOT NULL,
  `source_houseno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_landmark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_add` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_phone` int(11) DEFAULT NULL,
  `source_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spldaynotification`
--

CREATE TABLE `spldaynotification` (
  `splnotification_id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spldays_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celeb_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spldays`
--

CREATE TABLE `spldays` (
  `spldays_id` int(11) NOT NULL,
  `spldays` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wishmsg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_update`
--

CREATE TABLE `stock_update` (
  `stock_id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_stock_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `subcat_id` int(11) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `subcat_name` varchar(255) NOT NULL,
  `subcat_image` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `plan_id` int(11) NOT NULL,
  `plans` varchar(255) NOT NULL,
  `days` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `skip_days` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `support_queries`
--

CREATE TABLE `support_queries` (
  `support_id` int(11) NOT NULL,
  `phone_number` bigint(255) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `query_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `cityadmin_id` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `home` varchar(255) NOT NULL DEFAULT '0',
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `vendor_id` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email`
--

CREATE TABLE `tbl_email` (
  `email_id` int(11) NOT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_email`
--

INSERT INTO `tbl_email` (`email_id`, `email_subject`, `email_body`, `head`) VALUES
(1, 'Order Placed Successfully', 'Hello your order is placed we will Deliver soon on your Door Steps', 'GoMarket');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_id` int(11) NOT NULL,
  `order_cart_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a',
  `cancel_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a',
  `delivery_boy_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `delivery_boy_incentive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a',
  `delivery_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a',
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a',
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a',
  `pause_start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a',
  `pause_end` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a',
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a',
  `rem_price` int(100) NOT NULL DEFAULT 0,
  `coupon_discount` int(100) NOT NULL DEFAULT 0,
  `coupon_id` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_referral`
--

CREATE TABLE `tbl_referral` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `referral_by` int(11) NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_scratch_card`
--

CREATE TABLE `tbl_scratch_card` (
  `id` int(11) NOT NULL,
  `reffer_message` varchar(255) NOT NULL,
  `min` varchar(255) NOT NULL,
  `max` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `limit` int(11) NOT NULL,
  `app_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_scratch_card`
--

INSERT INTO `tbl_scratch_card` (`id`, `reffer_message`, `min`, `max`, `created_at`, `updated_at`, `limit`, `app_link`) VALUES
(9, 'Invite Your Friends & get Rs. 50 or more', '1', '20', '2019-04-22 05:25:57', '2019-04-27 12:21:09', 10, 'www.aplink.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_credits` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `rewards` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified` int(100) DEFAULT 0,
  `referral_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_scratch_card`
--

CREATE TABLE `tbl_user_scratch_card` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `scratch_id` int(11) NOT NULL,
  `app_group_id` int(11) DEFAULT NULL,
  `scratch_type` varchar(255) NOT NULL,
  `scratch_for` varchar(255) DEFAULT NULL,
  `earning` varchar(255) CHARACTER SET utf8 NOT NULL,
  `is_scratch` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `termcondition`
--

CREATE TABLE `termcondition` (
  `id` int(255) NOT NULL,
  `termcondition` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `termcondition`
--

INSERT INTO `termcondition` (`id`, `termcondition`) VALUES
(4, '<ol style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: #1e1e1e; font-family: sans-serif;\">\r\n<li style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1em; padding: 0px; font-size: 1rem; line-height: 24px; font-family: HelveticaNowMTTextW04-Rg, Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: HelveticaNowMTTextW05-Bold, Helvetica-Bold, Helvetica, Arial, sans-serif;\">Scope.</span>&nbsp;The following Terms and Conditions will apply exclusively to the current and future business relationships between Monotype Imaging Inc. (collectively with its subsidiaries and affiliated companies, &ldquo;Monotype&rdquo;) and you (&ldquo;you&rdquo; or the &ldquo;customer&rdquo;). Any additional or inconsistent terms issued by you, including any such terms and conditions set forth on a purchase order provided by you shall not be binding upon Monotype, unless Monotype gives its express agreement in writing.</p>\r\n</li>\r\n<li style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1em; padding: 0px; font-size: 1rem; line-height: 24px; font-family: HelveticaNowMTTextW04-Rg, Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: HelveticaNowMTTextW05-Bold, Helvetica-Bold, Helvetica, Arial, sans-serif;\">Entire Agreement.</span>&nbsp;Any quotation or price information made available by Monotype is without obligation and subject to change without notice unless an offer has been designated as binding. Oral understandings between you and Monotype will require written confirmation by Monotype and a contract between you and Monotype will only become valid when it has been accepted in writing by Monotype (e.g., confirmation of order, which will be final) or when the order is performed (e.g., delivery, download or connection by you of or to the software). As permitted by law, Monotype reserves the right to correct errors in its offers, invoices and communications such as spelling or arithmetical errors. You and Monotype each owe a duty to each other co-operate in order to give full effect to your agreement.</p>\r\n</li>\r\n<li style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1em; padding: 0px; font-size: 1rem; line-height: 24px; font-family: HelveticaNowMTTextW04-Rg, Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: HelveticaNowMTTextW05-Bold, Helvetica-Bold, Helvetica, Arial, sans-serif;\">Assignment.</span>&nbsp;Unless specifically set forth in a written agreement between you and Monotype, your obligations to Monotype may not be sublicensed or assigned to any third party (with a change in control of you constituting an assignment). These Terms and Conditions shall be binding on each party&rsquo;s successors and assigns.</p>\r\n</li>\r\n<li style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1em; padding: 0px; font-size: 1rem; line-height: 24px; font-family: HelveticaNowMTTextW04-Rg, Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: HelveticaNowMTTextW05-Bold, Helvetica-Bold, Helvetica, Arial, sans-serif;\">Delivery.</span>&nbsp;As permitted by law, Monotype&rsquo;s standard delivery terms are FOB origin.</p>\r\n</li>\r\n<li style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1em; padding: 0px; font-size: 1rem; line-height: 24px; font-family: HelveticaNowMTTextW04-Rg, Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: HelveticaNowMTTextW05-Bold, Helvetica-Bold, Helvetica, Arial, sans-serif;\">Prices.</span>&nbsp;Unless otherwise indicated in writing by Monotype, all prices are quoted in US dollars and are exclusive of all taxes and duties imposed by any governmental authority and freight and shipping charges, all of which shall be paid by you.</p>\r\n</li>\r\n<li style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1em; padding: 0px; font-size: 1rem; line-height: 24px; font-family: HelveticaNowMTTextW04-Rg, Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: HelveticaNowMTTextW05-Bold, Helvetica-Bold, Helvetica, Arial, sans-serif;\">Payment.</span>&nbsp;Unless specifically set forth in a written agreement between you and Monotype, payment for goods or services from Monotype is net thirty (30) days from the date of invoice. Overdue payments shall bear interest from the due date at the rate of the lower of one and half percent per month (1.5%) or the maximum rate permissible under applicable law.</p>\r\n</li>\r\n<li style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1em; padding: 0px; font-size: 1rem; line-height: 24px; font-family: HelveticaNowMTTextW04-Rg, Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: HelveticaNowMTTextW05-Bold, Helvetica-Bold, Helvetica, Arial, sans-serif;\">Warranty.</span>&nbsp;Unless specifically set forth in a written agreement between you and Monotype or as required by law, the goods and services purchased by you are provided &ldquo;as is&rdquo; without any representation or warranty of any kind, including without limitation, any warranty of non-infringement or fitness for a particular purpose.</p>\r\n</li>\r\n<li style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1em; padding: 0px; font-size: 1rem; line-height: 24px; font-family: HelveticaNowMTTextW04-Rg, Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: HelveticaNowMTTextW05-Bold, Helvetica-Bold, Helvetica, Arial, sans-serif;\">Partial Nullity.</span>&nbsp;In the event that any provision of these Terms and Conditions is unenforceable or invalid, such unenforceability or invalidity shall not render these Terms and Conditions unenforceable or invalid as a whole, and, in such event, such provision shall be changed and interpreted so as to best accomplish the objectives of such unenforceable or invalid provision within the limits of applicable law or court decisions.</p>\r\n</li>\r\n<li style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1em; padding: 0px; font-size: 1rem; line-height: 24px; font-family: HelveticaNowMTTextW04-Rg, Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: HelveticaNowMTTextW05-Bold, Helvetica-Bold, Helvetica, Arial, sans-serif;\">Export.&nbsp;</span>You agree that the software licensed to you by Monotype will not be shipped, transferred or exported into any country or used in any manner prohibited by the United States Export Administration or any applicable export laws, restrictions or regulations.</p>\r\n</li>\r\n<li style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent;\">\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 0px 1em; padding: 0px; font-size: 1rem; line-height: 24px; font-family: HelveticaNowMTTextW04-Rg, Helvetica, Arial, sans-serif;\"><span style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: HelveticaNowMTTextW05-Bold, Helvetica-Bold, Helvetica, Arial, sans-serif;\">U.S. Government Contracts.</span> If the software licensed to you by Monotype is acquired under the terms of a (i) GSA contract - use, reproduction or disclosure is subject to the restrictions set forth in the applicable ADP Schedule contract, (ii) DOD contract - use, duplication or disclosure by the Government is subject to the applicable restrictions set forth in DFARS 252.277-7013; (iii) Civilian agency contract - use, reproduction, or disclosure is subject to FAR 52.277-19(a) through (d) and restrictions set forth in your agreement with Monotype.</p>\r\n</li>\r\n</ol>'),
(6, '    Scope. The following Terms and Conditions will apply exclusively to the current and future business relationships between Monotype Imaging Inc. (collectively with its subsidiaries and affiliated companies, “Monotype”) and you (“you” or the “customer”). Any additional or inconsistent terms issued by you, including any such terms and conditions set forth on a purchase order provided by you shall not be binding upon Monotype, unless Monotype gives its express agreement in writing.\r\n\r\n    Entire Agreement. Any quotation or price information made available by Monotype is without obligation and subject to change without notice unless an offer has been designated as binding. Oral understandings between you and Monotype will require written confirmation by Monotype and a contract between you and Monotype will only become valid when it has been accepted in writing by Monotype (e.g., confirmation of order, which will be final) or when the order is performed (e.g., delivery, download or connection by you of or to the software). As permitted by law, Monotype reserves the right to correct errors in its offers, invoices and communications such as spelling or arithmetical errors. You and Monotype each owe a duty to each other co-operate in order to give full effect to your agreement.\r\n\r\n    Assignment. Unless specifically set forth in a written agreement between you and Monotype, your obligations to Monotype may not be sublicensed or assigned to any third party (with a change in control of you constituting an assignment). These Terms and Conditions shall be binding on each party’s successors and assigns.\r\n\r\n    Delivery. As permitted by law, Monotype’s standard delivery terms are FOB origin.\r\n\r\n    Prices. Unless otherwise indicated in writing by Monotype, all prices are quoted in US dollars and are exclusive of all taxes and duties imposed by any governmental authority and freight and shipping charges, all of which shall be paid by you.\r\n\r\n    Payment. Unless specifically set forth in a written agreement between you and Monotype, payment for goods or services from Monotype is net thirty (30) days from the date of invoice. Overdue payments shall bear interest from the due date at the rate of the lower of one and half percent per month (1.5%) or the maximum rate permissible under applicable law.\r\n\r\n    Warranty. Unless specifically set forth in a written agreement between you and Monotype or as required by law, the goods and services purchased by you are provided “as is” without any representation or warranty of any kind, including without limitation, any warranty of non-infringement or fitness for a particular purpose.\r\n\r\n    Partial Nullity. In the event that any provision of these Terms and Conditions is unenforceable or invalid, such unenforceability or invalidity shall not render these Terms and Conditions unenforceable or invalid as a whole, and, in such event, such provision shall be changed and interpreted so as to best accomplish the objectives of such unenforceable or invalid provision within the limits of applicable law or court decisions.\r\n\r\n    Export. You agree that the software licensed to you by Monotype will not be shipped, transferred or exported into any country or used in any manner prohibited by the United States Export Administration or any applicable export laws, restrictions or regulations.\r\n\r\n    U.S. Government Contracts. If the software licensed to you by Monotype is acquired under the terms of a (i) GSA contract - use, reproduction or disclosure is subject to the restrictions set forth in the applicable ADP Schedule contract, (ii) DOD contract - use, duplication or disclosure by the Government is subject to the applicable restrictions set forth in DFARS 252.277-7013; (iii) Civilian agency contract - use, reproduction, or disclosure is subject to FAR 52.277-19(a) through (d) and restrictions set forth in your agreement with Monotype.');

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE `time_slot` (
  `time_slot_id` int(100) NOT NULL,
  `open_hour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `close_hour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_slot` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `twilio`
--

CREATE TABLE `twilio` (
  `twilio_id` int(11) NOT NULL,
  `twilio_sid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twilio_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twilio_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `twilio`
--

INSERT INTO `twilio` (`twilio_id`, `twilio_sid`, `twilio_token`, `twilio_phone`, `active`) VALUES
(1, 'FdsP8Mmc90a2YDvQTO', 'SMA', '+19169995023', 0);

-- --------------------------------------------------------

--
-- Table structure for table `UI_Vendor`
--

CREATE TABLE `UI_Vendor` (
  `id` int(11) NOT NULL,
  `ui_design` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UI_Vendor`
--

INSERT INTO `UI_Vendor` (`id`, `ui_design`) VALUES
(1, 'Grocery'),
(2, 'Resturant'),
(3, 'Pharmacy'),
(4, 'Parcal');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `address_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `city_id` varchar(255) NOT NULL,
  `area_id` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL DEFAULT 'N/A',
  `updated_at` varchar(255) NOT NULL DEFAULT 'N/A',
  `user_name` varchar(255) DEFAULT NULL,
  `user_number` bigint(200) NOT NULL,
  `select_status` int(11) NOT NULL DEFAULT 0,
  `houseno` varchar(255) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_notification`
--

CREATE TABLE `user_notification` (
  `noti_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `noti_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noti_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_by_user` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_notification`
--

INSERT INTO `user_notification` (`noti_id`, `user_id`, `noti_title`, `noti_message`, `read_by_user`, `created_at`, `image`) VALUES
(935, 424, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(936, 429, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(937, 434, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(938, 435, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(939, 436, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(940, 437, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(941, 440, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(942, 441, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(943, 443, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(944, 444, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(945, 445, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(946, 446, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(947, 447, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(948, 451, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(949, 465, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(950, 466, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(951, 467, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(952, 468, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(953, 469, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(954, 472, 'Hello Test Title', 'dfdsfasfafdfsdfsafdasfsfdffsfasfsfsfsdfd', 0, '2020-09-23 10:35:18', 'N/A'),
(955, 421, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(956, 424, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(957, 429, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(958, 434, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(959, 435, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(960, 436, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(961, 437, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(962, 440, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(963, 441, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(964, 443, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(965, 444, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(966, 445, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(967, 446, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(968, 447, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(969, 451, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(970, 465, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(971, 466, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(972, 467, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(973, 468, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(974, 469, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(975, 472, 'Hello Test Title', 'fdfadfafdfdfaghghghdfdsfasdfsfdsf', 0, '2020-09-23 15:39:36', 'N/A'),
(976, 421, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(977, 424, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(978, 429, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(979, 434, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(980, 435, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(981, 436, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(982, 437, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(983, 440, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(984, 441, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(985, 443, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(986, 444, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(987, 445, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(988, 446, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(989, 447, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(990, 451, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(991, 465, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(992, 466, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(993, 467, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(994, 468, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(995, 469, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(996, 472, 'Hello Test Title', 'dsdsfdasfffasfdsfsfdasfdasfdsf', 0, '2020-09-23 15:52:44', 'N/A'),
(997, 421, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(998, 424, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(999, 429, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1000, 434, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1001, 435, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1002, 436, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1003, 437, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1004, 440, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1005, 441, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1006, 443, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1007, 444, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1008, 445, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1009, 446, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1010, 447, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1011, 451, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1012, 465, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1013, 466, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1014, 467, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1015, 468, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1016, 469, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1017, 472, 'Shopping 50% off', 'Grab the deal in your neareast store.', 0, '2020-09-23 15:54:36', 'N/A'),
(1018, 421, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1019, 424, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1020, 429, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1021, 434, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1022, 435, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1023, 436, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1024, 437, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1025, 440, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1026, 441, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1027, 443, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1028, 444, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1029, 445, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1030, 446, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1031, 447, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1032, 451, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1033, 465, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1034, 466, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1035, 467, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1036, 468, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1037, 469, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1038, 472, 'Shopping 50% off', 'Grab the 50% deal of your nearest store.', 0, '2020-09-23 16:01:32', 'N/A'),
(1039, 421, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1040, 424, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1041, 429, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1042, 434, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1043, 435, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1044, 436, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1045, 437, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1046, 440, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1047, 441, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1048, 443, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1049, 444, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1050, 445, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1051, 446, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1052, 447, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1053, 451, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1054, 465, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1055, 466, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1056, 467, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1057, 468, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1058, 469, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1059, 472, 'Shopping 50% off', 'Grab 50% deal over tomato.', 0, '2020-09-23 16:06:56', 'N/A'),
(1060, 421, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1061, 424, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1062, 429, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1063, 434, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1064, 435, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1065, 436, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1066, 437, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1067, 440, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1068, 441, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1069, 443, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1070, 444, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1071, 445, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1072, 446, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1073, 447, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1074, 451, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1075, 465, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1076, 466, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1077, 467, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1078, 468, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1079, 469, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1080, 472, 'New Title 50%', 'New Title 50% New Title 50%', 0, '2020-09-23 16:09:57', 'N/A'),
(1081, 421, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1082, 424, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1083, 429, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1084, 434, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1085, 435, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1086, 436, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1087, 437, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1088, 440, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1089, 441, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1090, 443, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1091, 444, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1092, 445, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1093, 446, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1094, 447, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1095, 451, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1096, 465, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1097, 466, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1098, 467, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1099, 468, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1100, 469, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1101, 472, 'Shopping 50% off', 'dfaffa niafodkf jfas dfaljlsdkfladsflkajdsf', 0, '2020-09-23 16:14:00', 'N/A'),
(1102, 421, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1103, 424, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1104, 429, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1105, 434, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1106, 435, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1107, 436, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1108, 437, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1109, 440, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1110, 441, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1111, 443, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1112, 444, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1113, 445, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1114, 446, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1115, 447, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1116, 451, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1117, 465, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1118, 466, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1119, 467, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1120, 468, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1121, 469, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1122, 472, 'New Title 50%', 'dfafsdfasfd', 0, '2020-09-23 16:15:08', 'N/A'),
(1123, 421, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1124, 424, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1125, 429, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1126, 434, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1127, 435, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1128, 436, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1129, 437, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1130, 440, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1131, 441, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1132, 443, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1133, 444, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1134, 445, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1135, 446, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1136, 447, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1137, 451, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1138, 465, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1139, 466, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1140, 467, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1141, 468, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1142, 469, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1143, 472, 'New Title 50%', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2020-09-23 16:16:31', 'N/A'),
(1144, 421, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1145, 424, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1146, 429, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1147, 434, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1148, 435, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1149, 436, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1150, 437, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1151, 440, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1152, 441, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1153, 443, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1154, 444, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1155, 445, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1156, 446, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1157, 447, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1158, 451, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1159, 465, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1160, 466, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1161, 467, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1162, 468, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1163, 469, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1164, 472, 'Shopping 50% off', 'dddreecfd dfadfajfh hjvwertct55fgsfd9999 88675', 0, '2020-09-23 16:21:05', 'N/A'),
(1165, 421, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1166, 424, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1167, 429, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1168, 434, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1169, 435, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1170, 436, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1171, 437, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1172, 440, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1173, 441, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1174, 443, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1175, 444, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1176, 445, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1177, 446, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1178, 447, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1179, 451, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1180, 465, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1181, 466, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1182, 467, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1183, 468, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1184, 469, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1185, 472, 'New Title 50%', 'ssdsdkkk kkkuky ksfgsgregssgsfg fgsgsg', 0, '2020-09-23 16:23:11', 'N/A'),
(1186, 421, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1187, 424, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1188, 429, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1189, 434, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1190, 435, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1191, 436, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1192, 437, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1193, 440, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1194, 441, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1195, 443, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1196, 444, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1197, 445, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1198, 446, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1199, 447, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1200, 451, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1201, 465, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1202, 466, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1203, 467, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1204, 468, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1205, 469, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1206, 472, 'test', 'test message', 0, '2020-09-24 05:35:46', 'images/category/24-09-2020/whatsapp.png'),
(1207, 421, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1208, 424, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1209, 429, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1210, 434, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1211, 435, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1212, 436, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1213, 437, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1214, 440, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1215, 441, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1216, 443, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1217, 444, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1218, 445, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1219, 446, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1220, 447, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1221, 451, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1222, 465, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1223, 466, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1224, 467, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1225, 468, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1226, 469, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1227, 472, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1228, 473, 'This Is the test notification', 'done by the demo test ddddddd', 0, '2020-09-29 06:34:20', 'images/category/29-09-2020/images4.jpg'),
(1229, 421, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #WGHL406c contains of Testing vendor id 1(1KG)*1 of price rs 0 is placed Successfully.You can expect your item(s) will be delivered on 2020-09-12 between 13:00-16:00.', 0, '2020-09-29 11:29:15', NULL),
(1230, 421, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #WGHL406c contains of Testing vendor id 1(1KG)*1 of price rs 0 is placed Successfully.You can expect your item(s) will be delivered on 2020-09-12 between 13:00-16:00.', 0, '2020-09-29 11:30:01', NULL),
(1231, 421, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #WGHL406c contains of Testing vendor id 1(1KG)*1 of price rs 0 is placed Successfully.You can expect your item(s) will be delivered on 2020-09-12 between 13:00-16:00.', 0, '2020-09-29 11:31:14', NULL),
(1232, 421, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #WGHL406c contains of Testing vendor id 1(1KG)*1 of price rs 0 is placed Successfully.You can expect your item(s) will be delivered on 2020-09-12 between 13:00-16:00.', 0, '2020-09-29 11:33:22', NULL),
(1233, 421, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #WMIL7184 contains of Testing vendor id 1(1KG)*1 of price rs 101 is placed Successfully.You can expect your item(s) will be delivered on 2020-09-10 between 13:00-16:00.', 0, '2020-09-29 11:37:42', NULL),
(1234, 421, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #WMIL7184 contains of Testing vendor id 1(1KG)*1 of price rs 0 is placed Successfully.You can expect your item(s) will be delivered on 2020-09-10 between 13:00-16:00.', 0, '2020-09-29 11:38:53', NULL),
(1235, 421, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #WMIL7184 contains of Testing vendor id 1(1KG)*1 of price rs 0 is placed Successfully.You can expect your item(s) will be delivered on 2020-09-10 between 13:00-16:00.', 0, '2020-09-29 11:46:15', NULL),
(1236, 421, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #WMIL7184 contains of Testing vendor id 1(1KG)*1 of price rs 0 is placed Successfully.You can expect your item(s) will be delivered on 2020-09-10 between 13:00-16:00.', 0, '2020-09-29 11:46:42', NULL),
(1237, 421, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #WMIL7184 contains of Testing vendor id 1(1KG)*1 of price rs 0 is placed Successfully.You can expect your item(s) will be delivered on 2020-09-10 between 13:00-16:00.', 0, '2020-09-29 11:50:50', NULL),
(1238, 421, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #WMIL7184 contains of Testing vendor id 1(1KG)*1 of price rs 101 is placed Successfully.You can expect your item(s) will be delivered on 2020-09-10 between 13:00-16:00.', 0, '2020-09-29 11:52:50', NULL),
(1239, 472, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #OCAQ003f contains of Arhar Daal(1KG)*2 of price rs 300 is placed Successfully.You can expect your item(s) will be delivered on 2020-09-30 between 19:00 - 20:00.', 0, '2020-09-30 12:16:58', NULL),
(1240, 472, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #WWBG0942 contains of Arhar Daal(1KG)*2,Toor dal(1KG)*4,Moong Daal(1KG)*4,Turmeric Powder(200Grm)*3,Garam Masala(250Grm)*3 of price rs 1460 is placed Successfully.You can expect your item(s) will be delivered on 2020-09-30 between 19:00 - 20:00.', 0, '2020-09-30 12:18:40', NULL),
(1241, 472, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #TPYX204e contains of Arhar Daal(1KG)*1,Toor dal(1KG)*3 of price rs 470 is placed Successfully.You can expect your item(s) will be delivered on 2020-10-01 between 11:00 - 12:00.', 0, '2020-09-30 16:09:26', NULL),
(1242, 472, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #CFRP97d9 contains of Arhar Daal(1KG)*3,Toor dal(1KG)*3,Moong Daal(1KG)*3 of price rs 820 is placed Successfully.You can expect your item(s) will be delivered on 2020-10-01 between 11:00 - 12:00.', 0, '2020-09-30 17:24:32', NULL),
(1243, 421, 'Out For Delivery', 'Out For Delivery: Your order id #WMIL7184 contains of Testing vendor id 1(1KG)*1 of price ₹ 100 is Out For Delivery.Get ready.', 0, '2020-10-03 11:31:29', NULL),
(1244, 421, 'Out For Delivery', 'Out For Delivery: Your order id #WMIL7184 contains of Testing vendor id 1(1KG)*1 of price ₹ 100 is Out For Delivery.Get ready.', 0, '2020-10-03 11:33:36', NULL),
(1245, 421, 'Order Delivered', 'Delivery Completed: Your order id #WMIL7184 contains of Testing vendor id 1(1KG)*1 of price ₹ 100 is Delivered Successfully.', 0, '2020-10-03 11:35:11', NULL),
(1246, 421, 'Order Delivered', 'Delivery Completed: Your order id #WMIL7184 contains of Testing vendor id 1(1KG)*1 of price ₹ 100 is Delivered Successfully.', 0, '2020-10-03 11:36:12', NULL),
(1247, 421, 'Order Delivered', 'Delivery Completed: Your order id #WMIL7184 contains of Testing vendor id 1(1KG)*1 of price ₹ 100 is Delivered Successfully.', 0, '2020-10-03 11:36:28', NULL),
(1248, 424, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1249, 429, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1250, 434, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1251, 435, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1252, 436, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1253, 437, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1254, 440, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1255, 441, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1256, 443, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1257, 444, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1258, 445, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1259, 446, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1260, 447, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1261, 451, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1262, 466, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1263, 467, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1264, 468, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1265, 469, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1266, 472, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1267, 473, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1268, 474, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1269, 475, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1270, 476, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1271, 477, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1272, 478, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1273, 479, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1274, 480, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1275, 481, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1276, 482, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1277, 483, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1278, 484, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1279, 485, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1280, 486, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1281, 493, 'hi', 'hi', 0, '2020-10-06 17:08:36', 'images/category/06-10-2020/492be47a-2ef9-41d1-a85f-9aa3ea91576c.jpg'),
(1282, 424, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1283, 429, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1284, 434, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1285, 435, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1286, 436, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1287, 437, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1288, 440, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1289, 441, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1290, 443, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1291, 444, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1292, 445, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1293, 446, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1294, 447, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1295, 451, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1296, 466, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1297, 467, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1298, 468, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1299, 469, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1300, 472, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1301, 473, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1302, 474, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1303, 475, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1304, 476, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1305, 477, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1306, 478, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1307, 479, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1308, 480, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1309, 481, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1310, 482, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1311, 483, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1312, 484, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1313, 485, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1314, 486, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1315, 493, 'hi', 'hi', 0, '2020-10-06 17:09:04', 'images/category/06-10-2020/logo_w.png'),
(1316, 424, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1317, 429, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1318, 434, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1319, 435, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1320, 436, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1321, 437, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1322, 440, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1323, 441, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1324, 443, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1325, 444, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1326, 445, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1327, 446, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1328, 447, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1329, 451, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1330, 466, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1331, 467, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1332, 468, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1333, 469, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1334, 472, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1335, 473, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1336, 474, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1337, 475, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1338, 476, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1339, 477, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1340, 478, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1341, 479, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1342, 480, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1343, 481, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1344, 482, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1345, 483, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1346, 484, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1347, 485, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1348, 486, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1349, 493, 'hi', 'hi', 0, '2020-10-06 17:09:47', 'images/category/06-10-2020/logo_w.png'),
(1350, 472, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #MSOI376b contains of Arhar Daal(1KG)*3 of price rs 520 is placed Successfully.You can expect your item(s) will be delivered on 2020-10-09 between 19:00 - 20:00.', 0, '2020-10-09 12:49:45', NULL),
(1351, 444, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #MQKH360f contains of Arhar Daal(1KG)*2,Toor dal(1KG)*2 of price rs 550 is placed Successfully.You can expect your item(s) will be delivered on 2020-10-11 between 10:00 - 11:00.', 0, '2020-10-09 15:27:45', NULL),
(1352, 444, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #KTKJ325d contains of Fish Oil(60Grm)*1 of price rs 600 is placed Successfully.You can expect your item(s) will be delivered on 2020-10-10 between 10:00 - 11:00.', 0, '2020-10-09 15:33:54', NULL),
(1353, 444, 'Out For Delivery', 'Out For Delivery: Your order id #KTKJ325d contains of Fish Oil(60Grm)*1 of price ₹ 500 is Out For Delivery.Get ready with ₹ 600 cash.', 0, '2020-10-09 15:42:54', NULL),
(1354, 472, 'Out For Delivery', 'Out For Delivery: Your order id #MSOI376b contains of Arhar Daal(1KG)*3 of price ₹ 420 is Out For Delivery.Get ready with ₹ 520 cash.', 0, '2020-10-09 15:47:08', NULL),
(1355, 472, 'Order Delivered', 'Delivery Completed: Your order id #MSOI376b contains of Arhar Daal(1KG)*3 of price ₹ 420 is Delivered Successfully.', 0, '2020-10-09 15:57:54', NULL),
(1356, 444, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #HTUG9982 contains of Toor dal(1KG)*2 of price rs 300 is placed Successfully.You can expect your item(s) will be delivered on 2020-10-10 between 11:00 - 12:00.', 0, '2020-10-09 16:06:24', NULL),
(1357, 537, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #DCFS20b7 contains of Arhar Daal(1KG)*1,Toor dal(1KG)*1,Moong Daal(1KG)*1 of price rs 390 is placed Successfully.You can expect your item(s) will be delivered on 2020-10-10 between 12:00 - 13:00.', 0, '2020-10-10 04:55:17', NULL),
(1358, 444, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #XXBS46dd contains of Arhar Daal(1KG)*1,Toor dal(1KG)*1,Moong Daal(1KG)*1 of price rs 390 is placed Successfully.You can expect your item(s) will be delivered on 2020-10-11 between 10:00 - 11:00.', 0, '2020-10-10 05:53:27', NULL),
(1359, 444, 'Out For Delivery', 'Out For Delivery: Your order id #XXBS46dd contains of Arhar Daal(1KG)*1,Toor dal(1KG)*1,Moong Daal(1KG)*1 of price ₹ 290 is Out For Delivery.Get ready with ₹ 390 cash.', 0, '2020-10-10 06:14:10', NULL),
(1360, 536, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #DGFR914f contains of Arhar Daal(1KG)*2,Toor dal(1KG)*1,Toor dal(5KG)*1 of price rs 850 is placed Successfully.You can expect your item(s) will be delivered on 2020-10-14 between 10:00 - 11:00.', 0, '2020-10-12 23:39:08', NULL),
(1361, 536, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #LXCG798f contains of Panner Currey(small500 ml)*1 of price rs 270 is placed Successfully.You can expect your item(s) will be delivered on 2020-10-16 between 13:00-16:00.', 0, '2020-10-20 10:36:29', NULL),
(1362, 537, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #DBGZ33df contains of Pizza(4pices)*6 of price rs 1000 is placed Successfully.You can expect your item(s) will be delivered on  between .', 0, '2020-11-12 11:54:22', NULL),
(1363, 537, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #MCFZ0129 contains of Pizza(4pices)*6 of price rs 1000 is placed Successfully.You can expect your item(s) will be delivered on  between .', 0, '2020-11-12 12:06:25', NULL);
INSERT INTO `user_notification` (`noti_id`, `user_id`, `noti_title`, `noti_message`, `read_by_user`, `created_at`, `image`) VALUES
(1364, 537, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #BADC6671 contains of Pizza(4pices)*3 of price rs 440 is placed Successfully.You can expect your item(s) will be delivered on  between .', 0, '2020-11-12 16:19:05', NULL),
(1365, 537, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #XMYJ4405 contains of Arhar Daal(1KG)*6 of price rs 940 is placed Successfully.You can expect your item(s) will be delivered on 2020-11-13 between 15:00 - 16:00.', 0, '2020-11-13 08:25:47', NULL),
(1366, 537, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #ZWXE019e contains of Arhar Daal(1KG)*7 of price rs 1080 is placed Successfully.You can expect your item(s) will be delivered on 2020-11-13 between 15:00 - 16:00.', 0, '2020-11-13 08:27:13', NULL),
(1367, 536, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #VRUH0714 contains of Pizza(4pices)*1 of price rs 160 is placed Successfully.You can expect your item(s) will be delivered on 2020-11-16 between .', 0, '2020-11-16 13:36:33', NULL),
(1368, 536, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #UOAV591f contains of Hyderabadi Dum Biryani(250Full)*1 of price rs 230 is placed Successfully.You can expect your item(s) will be delivered on 2020-11-16 between .', 0, '2020-11-16 14:15:23', NULL),
(1369, 437, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #KZDF4950 contains of Arhar Daal(1KG)*1,Toor dal(500Grm)*1 of price rs 280 is placed Successfully.You can expect your item(s) will be delivered on 2020-11-17 between 10:00 - 11:00.', 0, '2020-11-16 15:48:32', NULL),
(1370, 537, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #YGIT485a contains of Chicken Leg Pieces(250Full)*10 of price rs 2100 is placed Successfully.You can expect your item(s) will be delivered on 2020-11-18 between .', 0, '2020-11-18 15:32:35', NULL),
(1371, 537, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #CIGL3847 contains of Chicken Leg Pieces(250Half)*4 of price rs 500 is placed Successfully.You can expect your item(s) will be delivered on 2020-11-19 between .', 0, '2020-11-19 06:21:41', NULL),
(1372, 536, 'Out For Delivery', 'Out For Delivery: Your order id #CEAN8652 contains of Pizza(4pices)*6,Pizza(4pices)*6 of price ₹ 1800 is Out For Delivery.Get ready with ₹ 950 cash.', 0, '2020-11-19 08:55:34', NULL),
(1373, 536, 'Order Delivered', 'Delivery Completed: Your order id #CEAN8652 contains of Pizza(4pices)*6,Pizza(4pices)*6 of price ₹ 1800 is Delivered Successfully.', 0, '2020-11-19 10:35:41', NULL),
(1374, 536, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #FMVO5404 contains of sanitizer(1Lts)*1 of price rs 150 is placed Successfully.You can expect your item(s) will be delivered on 2020-11-24 between .', 0, '2020-11-24 07:16:45', NULL),
(1375, 537, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #DXVO3369 contains of sanitizer(1Lts)*5 of price rs 600 is placed Successfully.You can expect your item(s) will be delivered on 2020-11-26 between .', 0, '2020-11-26 12:48:33', NULL),
(1376, 537, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #MHRM30b3 contains of sanitizer(1Lts)*4 of price rs 500 is placed Successfully.You can expect your item(s) will be delivered on 2020-11-26 between .', 0, '2020-11-26 12:54:00', NULL),
(1377, 536, 'Out For Delivery', 'Out For Delivery: Your order id #FMVO5404 contains of sanitizer(1Lts)*1 of price ₹ 100 is Out For Delivery.Get ready with ₹ 150 cash.', 0, '2020-11-27 05:33:42', NULL),
(1378, 536, 'Order Delivered', 'Delivery Completed: Your order id #FMVO5404 contains of sanitizer(1Lts)*1 of price ₹ 100 is Delivered Successfully.', 0, '2020-11-27 05:40:39', NULL),
(1379, 537, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #AJEM89f3 contains of sanitizer(1Lts)*4 of price rs 500 is placed Successfully.You can expect your item(s) will be delivered on 2020-11-28 between .', 0, '2020-11-28 08:55:50', NULL),
(1380, 447, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #\'.GPYV8538.\'', 0, '2020-11-30 10:42:38', NULL),
(1381, 447, 'Out For Delivery', 'Out For Delivery: Your order id #GPYV8538 of price ₹ 0 is Out For Delivery.Get ready.', 0, '2020-11-30 15:01:53', NULL),
(1382, 537, 'WooHoo! Your Order is Placed', 'Order Successfully Placed: Your order id #\'.QJGL22db.\' ', 0, '2020-11-30 15:27:28', NULL),
(1383, 447, 'Order Delivered', 'Delivery Completed: Your order id #GPYV8538 of price ₹ 0 is Delivered Successfully.', 0, '2020-11-30 15:38:38', NULL),
(1384, 424, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1385, 429, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1386, 434, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1387, 435, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1388, 436, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1389, 437, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1390, 440, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1391, 443, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1392, 444, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1393, 445, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1394, 447, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1395, 451, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1396, 467, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1397, 468, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1398, 469, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1399, 473, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1400, 474, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1401, 475, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1402, 476, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1403, 477, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1404, 478, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1405, 479, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1406, 480, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1407, 481, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1408, 482, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png'),
(1409, 483, 'hello', 'demo tut', 0, '2020-12-02 14:46:23', 'images/category/02-12-2020/seller.png');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cityadmin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_loc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n/a',
  `vendor_category_id` int(11) NOT NULL,
  `comission` int(11) DEFAULT NULL,
  `delivery_range` int(11) NOT NULL,
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified` int(10) NOT NULL DEFAULT 0,
  `ui_type` int(11) NOT NULL,
  `online_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_area`
--

CREATE TABLE `vendor_area` (
  `vendor_area_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `delivery_charge` int(11) NOT NULL,
  `cod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_category`
--

CREATE TABLE `vendor_category` (
  `vendor_category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ui_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_notification`
--

CREATE TABLE `vendor_notification` (
  `not_id` int(11) NOT NULL,
  `not_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `read_by_vendor` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_payment`
--

CREATE TABLE `vendor_payment` (
  `payment_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_payment`
--

INSERT INTO `vendor_payment` (`payment_id`, `vendor_id`, `status`, `payment_key`, `payment_mode`) VALUES
(1, 1, 1, 'rzp_test_7fnnn7WTaard4h', 'Razorpay'),
(2, 1, 1, 'pk_test_f0269be01832feda8b9cce63a261770ecd249f77', 'Paystack');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_history`
--

CREATE TABLE `wallet_history` (
  `wallet_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_recharge_history`
--

CREATE TABLE `wallet_recharge_history` (
  `wallet_recharge_history_id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recharge_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_recharge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_banner`
--
ALTER TABLE `admin_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `assign_homecat`
--
ALTER TABLE `assign_homecat`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `banner_resturant`
--
ALTER TABLE `banner_resturant`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `cancel_for`
--
ALTER TABLE `cancel_for`
  ADD PRIMARY KEY (`res_id`);

--
-- Indexes for table `cancel_reason`
--
ALTER TABLE `cancel_reason`
  ADD PRIMARY KEY (`reason_id`);

--
-- Indexes for table `cash_collect`
--
ALTER TABLE `cash_collect`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `cityadmin`
--
ALTER TABLE `cityadmin`
  ADD PRIMARY KEY (`cityadmin_id`);

--
-- Indexes for table `cityadmin_cat`
--
ALTER TABLE `cityadmin_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comission`
--
ALTER TABLE `comission`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indexes for table `completed_orders`
--
ALTER TABLE `completed_orders`
  ADD PRIMARY KEY (`completed_id`);

--
-- Indexes for table `country_code`
--
ALTER TABLE `country_code`
  ADD PRIMARY KEY (`code_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `deal_product`
--
ALTER TABLE `deal_product`
  ADD PRIMARY KEY (`deal_id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`delivery_boy_id`);

--
-- Indexes for table `delivery_boy_area`
--
ALTER TABLE `delivery_boy_area`
  ADD PRIMARY KEY (`delivery_boy_area_id`);

--
-- Indexes for table `delivery_boy_comission`
--
ALTER TABLE `delivery_boy_comission`
  ADD PRIMARY KEY (`dboy_comission_id`);

--
-- Indexes for table `delivery_boy_vendor`
--
ALTER TABLE `delivery_boy_vendor`
  ADD PRIMARY KEY (`delivery_boy_vendor_id`);

--
-- Indexes for table `delivery_timing`
--
ALTER TABLE `delivery_timing`
  ADD PRIMARY KEY (`delivery_timing_id`);

--
-- Indexes for table `destination_address`
--
ALTER TABLE `destination_address`
  ADD PRIMARY KEY (`destination_address_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `fcm_key`
--
ALTER TABLE `fcm_key`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `first_wallet_recharge`
--
ALTER TABLE `first_wallet_recharge`
  ADD PRIMARY KEY (`deal_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `homecat`
--
ALTER TABLE `homecat`
  ADD PRIMARY KEY (`homecat_id`);

--
-- Indexes for table `incentive`
--
ALTER TABLE `incentive`
  ADD PRIMARY KEY (`incentive_id`);

--
-- Indexes for table `incentive_amount`
--
ALTER TABLE `incentive_amount`
  ADD PRIMARY KEY (`incentive_amount_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `mapbox`
--
ALTER TABLE `mapbox`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `map_API`
--
ALTER TABLE `map_API`
  ADD PRIMARY KEY (`key_id`);

--
-- Indexes for table `map_settings`
--
ALTER TABLE `map_settings`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `msg91`
--
ALTER TABLE `msg91`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notificationby`
--
ALTER TABLE `notificationby`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `not_accepted`
--
ALTER TABLE `not_accepted`
  ADD PRIMARY KEY (`not_accepted_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_complains`
--
ALTER TABLE `order_complains`
  ADD PRIMARY KEY (`order_complain_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`store_order_id`);

--
-- Indexes for table `parcel_banner`
--
ALTER TABLE `parcel_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `parcel_category`
--
ALTER TABLE `parcel_category`
  ADD PRIMARY KEY (`parcel_cat_id`);

--
-- Indexes for table `parcel_charges`
--
ALTER TABLE `parcel_charges`
  ADD PRIMARY KEY (`charge_id`);

--
-- Indexes for table `parcel_city`
--
ALTER TABLE `parcel_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `parcel_delivery_boy`
--
ALTER TABLE `parcel_delivery_boy`
  ADD PRIMARY KEY (`delivery_boy_id`);

--
-- Indexes for table `parcel_delivery_boy_area`
--
ALTER TABLE `parcel_delivery_boy_area`
  ADD PRIMARY KEY (`delivery_boy_area_id`);

--
-- Indexes for table `parcel_details`
--
ALTER TABLE `parcel_details`
  ADD PRIMARY KEY (`parcel_id`);

--
-- Indexes for table `paymentvia`
--
ALTER TABLE `paymentvia`
  ADD PRIMARY KEY (`paymentvia_id`);

--
-- Indexes for table `payout_notification`
--
ALTER TABLE `payout_notification`
  ADD PRIMARY KEY (`payout_notification_id`);

--
-- Indexes for table `pharmacy_banner`
--
ALTER TABLE `pharmacy_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_varient`
--
ALTER TABLE `product_varient`
  ADD PRIMARY KEY (`varient_id`);

--
-- Indexes for table `reedem_values`
--
ALTER TABLE `reedem_values`
  ADD PRIMARY KEY (`reedem_id`);

--
-- Indexes for table `restaurant_addons`
--
ALTER TABLE `restaurant_addons`
  ADD PRIMARY KEY (`addon_id`);

--
-- Indexes for table `resturant_category`
--
ALTER TABLE `resturant_category`
  ADD PRIMARY KEY (`resturant_cat_id`);

--
-- Indexes for table `resturant_deal_product`
--
ALTER TABLE `resturant_deal_product`
  ADD PRIMARY KEY (`deal_product_id`);

--
-- Indexes for table `resturant_product`
--
ALTER TABLE `resturant_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `resturant_variant`
--
ALTER TABLE `resturant_variant`
  ADD PRIMARY KEY (`variant_id`);

--
-- Indexes for table `reward_history`
--
ALTER TABLE `reward_history`
  ADD PRIMARY KEY (`reward_id`);

--
-- Indexes for table `reward_points`
--
ALTER TABLE `reward_points`
  ADD PRIMARY KEY (`reward_id`);

--
-- Indexes for table `smsby`
--
ALTER TABLE `smsby`
  ADD PRIMARY KEY (`by_id`);

--
-- Indexes for table `sms_api`
--
ALTER TABLE `sms_api`
  ADD PRIMARY KEY (`key_id`);

--
-- Indexes for table `source_address`
--
ALTER TABLE `source_address`
  ADD PRIMARY KEY (`source_address_id`);

--
-- Indexes for table `spldaynotification`
--
ALTER TABLE `spldaynotification`
  ADD PRIMARY KEY (`splnotification_id`);

--
-- Indexes for table `spldays`
--
ALTER TABLE `spldays`
  ADD PRIMARY KEY (`spldays_id`);

--
-- Indexes for table `stock_update`
--
ALTER TABLE `stock_update`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `support_queries`
--
ALTER TABLE `support_queries`
  ADD PRIMARY KEY (`support_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_email`
--
ALTER TABLE `tbl_email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_referral`
--
ALTER TABLE `tbl_referral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_scratch_card`
--
ALTER TABLE `tbl_scratch_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_user_scratch_card`
--
ALTER TABLE `tbl_user_scratch_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termcondition`
--
ALTER TABLE `termcondition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`time_slot_id`);

--
-- Indexes for table `twilio`
--
ALTER TABLE `twilio`
  ADD PRIMARY KEY (`twilio_id`);

--
-- Indexes for table `UI_Vendor`
--
ALTER TABLE `UI_Vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `user_notification`
--
ALTER TABLE `user_notification`
  ADD PRIMARY KEY (`noti_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor_area`
--
ALTER TABLE `vendor_area`
  ADD PRIMARY KEY (`vendor_area_id`);

--
-- Indexes for table `vendor_category`
--
ALTER TABLE `vendor_category`
  ADD PRIMARY KEY (`vendor_category_id`);

--
-- Indexes for table `vendor_notification`
--
ALTER TABLE `vendor_notification`
  ADD PRIMARY KEY (`not_id`);

--
-- Indexes for table `vendor_payment`
--
ALTER TABLE `vendor_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `wallet_history`
--
ALTER TABLE `wallet_history`
  ADD PRIMARY KEY (`wallet_id`);

--
-- Indexes for table `wallet_recharge_history`
--
ALTER TABLE `wallet_recharge_history`
  ADD PRIMARY KEY (`wallet_recharge_history_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_banner`
--
ALTER TABLE `admin_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `assign_homecat`
--
ALTER TABLE `assign_homecat`
  MODIFY `assign_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `banner_resturant`
--
ALTER TABLE `banner_resturant`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cancel_for`
--
ALTER TABLE `cancel_for`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cancel_reason`
--
ALTER TABLE `cancel_reason`
  MODIFY `reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cash_collect`
--
ALTER TABLE `cash_collect`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cityadmin`
--
ALTER TABLE `cityadmin`
  MODIFY `cityadmin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cityadmin_cat`
--
ALTER TABLE `cityadmin_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comission`
--
ALTER TABLE `comission`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `completed_orders`
--
ALTER TABLE `completed_orders`
  MODIFY `completed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `country_code`
--
ALTER TABLE `country_code`
  MODIFY `code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deal_product`
--
ALTER TABLE `deal_product`
  MODIFY `deal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `delivery_boy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `delivery_boy_area`
--
ALTER TABLE `delivery_boy_area`
  MODIFY `delivery_boy_area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `delivery_boy_comission`
--
ALTER TABLE `delivery_boy_comission`
  MODIFY `dboy_comission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `delivery_boy_vendor`
--
ALTER TABLE `delivery_boy_vendor`
  MODIFY `delivery_boy_vendor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `delivery_timing`
--
ALTER TABLE `delivery_timing`
  MODIFY `delivery_timing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `destination_address`
--
ALTER TABLE `destination_address`
  MODIFY `destination_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fcm_key`
--
ALTER TABLE `fcm_key`
  MODIFY `unique_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `first_wallet_recharge`
--
ALTER TABLE `first_wallet_recharge`
  MODIFY `deal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `homecat`
--
ALTER TABLE `homecat`
  MODIFY `homecat_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `incentive`
--
ALTER TABLE `incentive`
  MODIFY `incentive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `incentive_amount`
--
ALTER TABLE `incentive_amount`
  MODIFY `incentive_amount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mapbox`
--
ALTER TABLE `mapbox`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `map_API`
--
ALTER TABLE `map_API`
  MODIFY `key_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `map_settings`
--
ALTER TABLE `map_settings`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `msg91`
--
ALTER TABLE `msg91`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notificationby`
--
ALTER TABLE `notificationby`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `not_accepted`
--
ALTER TABLE `not_accepted`
  MODIFY `not_accepted_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=731;

--
-- AUTO_INCREMENT for table `order_complains`
--
ALTER TABLE `order_complains`
  MODIFY `order_complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `store_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1490;

--
-- AUTO_INCREMENT for table `parcel_banner`
--
ALTER TABLE `parcel_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `parcel_category`
--
ALTER TABLE `parcel_category`
  MODIFY `parcel_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `parcel_charges`
--
ALTER TABLE `parcel_charges`
  MODIFY `charge_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `parcel_city`
--
ALTER TABLE `parcel_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `parcel_delivery_boy`
--
ALTER TABLE `parcel_delivery_boy`
  MODIFY `delivery_boy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `parcel_delivery_boy_area`
--
ALTER TABLE `parcel_delivery_boy_area`
  MODIFY `delivery_boy_area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `parcel_details`
--
ALTER TABLE `parcel_details`
  MODIFY `parcel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `paymentvia`
--
ALTER TABLE `paymentvia`
  MODIFY `paymentvia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payout_notification`
--
ALTER TABLE `payout_notification`
  MODIFY `payout_notification_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_banner`
--
ALTER TABLE `pharmacy_banner`
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `product_varient`
--
ALTER TABLE `product_varient`
  MODIFY `varient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `reedem_values`
--
ALTER TABLE `reedem_values`
  MODIFY `reedem_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant_addons`
--
ALTER TABLE `restaurant_addons`
  MODIFY `addon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `resturant_category`
--
ALTER TABLE `resturant_category`
  MODIFY `resturant_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `resturant_deal_product`
--
ALTER TABLE `resturant_deal_product`
  MODIFY `deal_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `resturant_product`
--
ALTER TABLE `resturant_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `resturant_variant`
--
ALTER TABLE `resturant_variant`
  MODIFY `variant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `reward_history`
--
ALTER TABLE `reward_history`
  MODIFY `reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `reward_points`
--
ALTER TABLE `reward_points`
  MODIFY `reward_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `smsby`
--
ALTER TABLE `smsby`
  MODIFY `by_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_api`
--
ALTER TABLE `sms_api`
  MODIFY `key_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `source_address`
--
ALTER TABLE `source_address`
  MODIFY `source_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `spldaynotification`
--
ALTER TABLE `spldaynotification`
  MODIFY `splnotification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `spldays`
--
ALTER TABLE `spldays`
  MODIFY `spldays_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stock_update`
--
ALTER TABLE `stock_update`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `support_queries`
--
ALTER TABLE `support_queries`
  MODIFY `support_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_email`
--
ALTER TABLE `tbl_email`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_referral`
--
ALTER TABLE `tbl_referral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_scratch_card`
--
ALTER TABLE `tbl_scratch_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;

--
-- AUTO_INCREMENT for table `tbl_user_scratch_card`
--
ALTER TABLE `tbl_user_scratch_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4096;

--
-- AUTO_INCREMENT for table `termcondition`
--
ALTER TABLE `termcondition`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `time_slot`
--
ALTER TABLE `time_slot`
  MODIFY `time_slot_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `twilio`
--
ALTER TABLE `twilio`
  MODIFY `twilio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `UI_Vendor`
--
ALTER TABLE `UI_Vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `user_notification`
--
ALTER TABLE `user_notification`
  MODIFY `noti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1436;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `vendor_area`
--
ALTER TABLE `vendor_area`
  MODIFY `vendor_area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `vendor_category`
--
ALTER TABLE `vendor_category`
  MODIFY `vendor_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vendor_notification`
--
ALTER TABLE `vendor_notification`
  MODIFY `not_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `vendor_payment`
--
ALTER TABLE `vendor_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallet_history`
--
ALTER TABLE `wallet_history`
  MODIFY `wallet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `wallet_recharge_history`
--
ALTER TABLE `wallet_recharge_history`
  MODIFY `wallet_recharge_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
