-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2024-12-12 11:04:40
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `mymemberlink_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `product_id` int(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_imageFile` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `product_startDate` datetime NOT NULL,
  `product_endDate` datetime NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `quantitySelected` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `cart`
--

INSERT INTO `cart` (`product_id`, `product_name`, `product_imageFile`, `product_description`, `product_quantity`, `product_price`, `product_startDate`, `product_endDate`, `product_category`, `quantitySelected`) VALUES
(6, 'Classic Coffee Mug', 'mug1.png', 'A ceramic mug featuring the organization\'s logo, perfect for coffee or tea.', 100, 20.99, '2024-12-11 18:20:32', '2024-12-31 18:20:32', 'Mugs', 3),
(10, 'Custom Photo Mug', 'mug5.jpg', 'Add your favorite photo or design to this ceramic mug.', 100, 19.99, '2024-12-17 18:21:39', '2024-12-29 18:21:39', 'Mugs', 5),
(13, 'Eco Reusable Bag', 'bag3.jpeg', 'Eco-friendly shopping bag made from recycled materials.', 100, 22.99, '2024-12-15 18:22:16', '2024-12-30 18:22:16', 'Bags', 1);

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE `member` (
  `member_id` int(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNo` int(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `timeLog` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`member_id`, `email`, `phoneNo`, `password`, `username`, `timeLog`) VALUES
(1, 'kkk@gmail.com', 124255452, '17e652a650eda7b37b344bffe20d244b7334f4d5', 'kccw', '2024-11-06 14:56:06.767341'),
(2, 'kcwei08312002@gmail.com', 124277572, 'a8bda940667855d613b2fe54d23e1dae5f7b21a1', 'koy', '2024-11-10 10:42:39.441201'),
(5, 'koychangwei02@gmail.com', 123255452, '17e652a650eda7b37b344bffe20d244b7334f4d5', 'koy', '2024-11-10 04:49:56.406188'),
(7, 'koy@gmail.com', 124277572, '17e652a650eda7b37b344bffe20d244b7334f4d5', 'koy', '2024-11-10 09:45:00.444543'),
(8, 'koy123@gmail.com', 124277572, '17e652a650eda7b37b344bffe20d244b7334f4d5', 'koy', '2024-11-10 10:28:36.730675'),
(9, 'koy888@gmail.com', 124277572, '17e652a650eda7b37b344bffe20d244b7334f4d5', 'koy', '2024-11-10 10:40:38.896968'),
(10, 'kkkkkk11@gmail.com', 124266562, '17e652a650eda7b37b344bffe20d244b7334f4d5', 'koy', '2024-11-12 00:35:21.053391'),
(11, 'kkkkkk1001@gmail.com', 124266562, '17e652a650eda7b37b344bffe20d244b7334f4d5', 'koy', '2024-11-12 00:35:46.822139'),
(12, '123gg@gmail.com', 128563373, '17e652a650eda7b37b344bffe20d244b7334f4d5', '123', '2024-11-13 14:18:02.629988'),
(13, '123gg@gmail.com', 128563373, '17e652a650eda7b37b344bffe20d244b7334f4d5', '123', '2024-11-13 14:18:14.574881'),
(14, 'kcwei08312002ggg@gmail.com', 127633563, '17e652a650eda7b37b344bffe20d244b7334f4d5', '123', '2024-11-13 14:24:41.066161'),
(15, 'kcwei08312002ddggg@gmail.com', 127633563, '17e652a650eda7b37b344bffe20d244b7334f4d5', '123', '2024-11-13 14:24:51.990047'),
(16, 'a@gmail.com', 125366378, 'b8cf0c940deb388d466d7f17dc97a03264187d42', 'a', '2024-11-25 17:20:26.221511'),
(17, 'aa@gmail.com', 182677329, 'b8cf0c940deb388d466d7f17dc97a03264187d42', 'aa', '2024-11-26 06:50:23.446259');

-- --------------------------------------------------------

--
-- 表的结构 `newsletter`
--

CREATE TABLE `newsletter` (
  `news_id` int(3) NOT NULL,
  `news_title` varchar(300) NOT NULL,
  `news_details` varchar(800) NOT NULL,
  `news_date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `newsletter`
--

INSERT INTO `newsletter` (`news_id`, `news_title`, `news_details`, `news_date`) VALUES
(1, 'Exclusive Member Rewards Unlocked!', 'We’re excited to announce a new rewards program exclusively for our valued members! Enjoy access to special discounts, early event registration, and a personalized dashboard to track your benefits. Log in to explore your new perks!', '2024-10-30 15:46:06.775643'),
(2, 'Exciting Updates in Your Membership!', 'Your membership app just got better! We’ve rolled out a series of updates to enhance your experience, including a redesigned profile page and streamlined access to your account history. Update the app today to check out these improvements!', '2024-10-30 15:46:32.239606'),
(3, 'New Feature Alert: Enhanced Member Dashboard', 'Keeping track of your membership benefits is now easier than ever! With our enhanced dashboard, you can view your points, redeem rewards, and get personalized offers at a glance. Log in now to explore!', '2024-10-30 15:46:51.886697'),
(4, 'Special Offer for Loyal Members!', 'Thank you for being a valued member! As a token of our appreciation, enjoy a special 15% discount on all renewals this month. Make sure to use the code MEMBER15 at checkout. Don’t miss out on this limited-time offer!', '2024-10-30 16:25:45.383816'),
(5, 'Exclusive Member Rewards Unlocked!', 'We’re excited to announce a new rewards program exclusive to our members! Enjoy discounts, vouchers, and early access to products just for you!', '2024-11-27 01:14:31.778768'),
(6, 'Upcoming Maintenance Notice', 'Our platform will undergo maintenance on March 15, 2024, from 12:00 AM to 4:00 AM. Please plan accordingly as access will be limited during this time.', '2024-11-27 01:14:54.165634'),
(7, 'New Feature: Personalized Dashboard', 'We’re thrilled to introduce a personalized dashboard that lets you track your activities, view recommendations, and access quick links!', '2024-11-27 01:15:17.927086'),
(8, 'Holiday Sale – Up to 50% Off', 'Celebrate with us! Enjoy up to 50% off on select products from December 15 - 31. This is the perfect time to grab those items on your wishlist!', '2024-11-27 01:15:32.540435'),
(9, 'Security Update: Account Safety Tips', 'Keeping your account secure is our top priority. Here are some tips to protect your data and prevent unauthorized access.', '2024-11-27 01:15:49.122005'),
(10, 'Monthly Roundup: Top Member Contributions', ' This month, we highlight our top contributors who shared insightful ideas and helped answer questions within the community. Thank you for your support!', '2024-11-27 01:16:03.877677'),
(11, 'Limited-Time Offer: Free Shipping on All Orders', 'Enjoy free shipping on all orders over $50! Valid until January 10, 2024. Don’t miss out on this amazing offer!', '2024-11-27 01:16:19.639485'),
(12, 'New Product Alert: Smart Home Devices Now Available', 'We’re expanding our product line! Check out our latest collection of smart home devices to make your life more convenient and secure.', '2024-11-27 01:16:50.499207'),
(13, 'Special Invitation to Our Annual Event', 'You’re invited! Join us at our annual event on February 20, 2024, to experience exclusive previews, workshops, and more!', '2024-11-27 01:19:01.634810'),
(14, 'Community Guidelines Update', 'We’ve updated our community guidelines to make our platform more welcoming. Please review the new policies to stay informed.', '2024-11-27 01:19:17.742228'),
(15, 'Congratulations to Our Contest Winners!', 'We’re excited to announce the winners of our recent contest. Congratulations to all participants, and stay tuned for more opportunities to win!', '2024-11-27 01:19:38.698169'),
(22, 'hghhhgg', 'gggg', '2024-12-08 12:16:01.779180');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `product_id` int(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_imageFile` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `product_startDate` datetime NOT NULL,
  `product_endDate` datetime NOT NULL,
  `product_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_imageFile`, `product_description`, `product_quantity`, `product_price`, `product_startDate`, `product_endDate`, `product_category`) VALUES
(1, 'Classic Logo T-Shirt', 'shirt1.jpg', 'A timeless t-shirt with the organization\'s logo, made from 100% cotton for everyday comfort.', 100, 20.99, '2024-12-10 18:18:09', '2024-12-24 18:18:09', 'T-Shirts'),
(2, 'Eco-Friendly Tee', 'shirt2.jpeg', 'Soft and sustainable t-shirt crafted from organic materials.', 100, 21.99, '2024-12-11 18:18:33', '2024-12-18 18:18:33', 'T-Shirts'),
(3, 'Performance Fit Tee', 'shirt3.png', 'A moisture-wicking t-shirt designed for active members.', 100, 22.99, '2024-12-11 18:19:34', '2024-12-31 18:19:34', 'T-Shirts'),
(4, 'Vintage Style T-Shirt', 'shirt4.png', 'Classic design with a retro feel, featuring a distressed logo print.', 100, 23.99, '2024-12-11 18:19:46', '2024-12-31 18:19:46', 'T-Shirts'),
(5, 'Customizable T-Shirt', 'shirt5.png', 'Personalize this t-shirt with your name or favorite slogan.', 100, 19.99, '2024-12-10 18:20:02', '2024-12-31 18:20:02', 'T-Shirts'),
(6, 'Classic Coffee Mug', 'mug1.png', 'A ceramic mug featuring the organization\'s logo, perfect for coffee or tea.', 100, 20.99, '2024-12-11 18:20:32', '2024-12-31 18:20:32', 'Mugs'),
(7, 'Travel Mug', 'mug2.jpeg', 'Keep your drinks hot or cold on the go with this insulated mug.', 100, 21.99, '2024-12-10 18:20:44', '2024-12-30 18:20:44', 'Mugs'),
(8, 'Eco Bamboo Mug', 'mug3.jpeg', 'Stylish and sustainable bamboo fiber mug.', 100, 22.99, '2024-12-10 18:21:17', '2024-12-30 18:21:17', 'Mugs'),
(9, 'Heat-Sensitive Mug', 'mug4.jpeg', 'Reveals a hidden design when hot liquid is added.', 100, 23.99, '2024-12-10 18:21:28', '2024-12-29 18:21:28', 'Mugs'),
(10, 'Custom Photo Mug', 'mug5.jpg', 'Add your favorite photo or design to this ceramic mug.', 100, 19.99, '2024-12-17 18:21:39', '2024-12-29 18:21:39', 'Mugs'),
(11, 'Classic Tote Bag', 'bag1.avif', 'A durable canvas tote bag with a bold logo print.', 100, 20.99, '2024-12-01 18:21:53', '2024-12-30 18:21:53', 'Bags'),
(12, 'Drawstring Bag', 'bag2.jpg', 'Lightweight and versatile bag, great for everyday use.', 100, 21.99, '2024-12-01 18:22:04', '2024-12-29 18:22:04', 'Bags'),
(13, 'Eco Reusable Bag', 'bag3.jpeg', 'Eco-friendly shopping bag made from recycled materials.', 100, 22.99, '2024-12-15 18:22:16', '2024-12-30 18:22:16', 'Bags'),
(14, 'Laptop Backpack', 'bag4.png', 'Stylish backpack with padded compartments for laptops and essentials.', 100, 23.99, '2024-12-08 18:22:29', '2024-12-29 18:22:29', 'Bags'),
(15, 'Custom Messenger Bag', 'bag5.png', 'Personalized messenger bag with adjustable strap and multiple compartments.', 100, 19.99, '2024-12-08 18:22:40', '2024-12-30 18:22:40', 'Bags'),
(16, 'Classic Ballpoint Pen', 'pen1.jpg', 'Smooth-writing pen with the organization\'s logo engraved.', 100, 20.99, '2024-12-01 18:22:50', '2024-12-31 18:22:50', 'Pens'),
(17, 'Eco Bamboo Pen', 'pen2.png', 'Eco-friendly pen made from sustainable bamboo materials.', 100, 21.99, '2024-12-08 18:23:00', '2024-12-30 18:23:00', 'Pens'),
(18, 'Stylus Pen', 'pen3.png', 'Dual-purpose pen with a stylus tip for touchscreen devices.', 100, 22.99, '2024-12-01 18:23:11', '2024-12-22 18:23:11', 'Pens'),
(19, 'Engraved Metal Pen', 'pen4.jpeg', 'Premium pen with customizable engraving options.', 100, 23.99, '2024-12-01 18:23:20', '2024-12-17 18:23:20', 'Pens'),
(20, 'Multi-Tool Pen', 'pen5.jpg', 'Versatile pen with built-in ruler, screwdriver, and stylus.', 100, 19.99, '2024-12-01 18:23:30', '2024-12-23 18:23:30', 'Pens');

--
-- 转储表的索引
--

--
-- 表的索引 `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`product_id`);

--
-- 表的索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- 表的索引 `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`news_id`);

--
-- 表的索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cart`
--
ALTER TABLE `cart`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `news_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
