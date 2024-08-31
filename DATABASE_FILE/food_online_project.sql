-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2024 at 09:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_online_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'kobe', '$2y$10$ThmnCasqeIHtHp9lp9S5N.BHyY61JtbOcfmin3vv0ts06Pd.vfaja', 'admin@mail.com', '', '2024-08-22 07:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 7, 'Kare Kare Royale', 'An exquisite twist on the beloved Filipino classic. This rich and creamy oxtail stew is simmered to perfection with tender chunks of beef and vibrant vegetables, all enveloped in a luscious peanut sauce. ', 500.00, '66c5db9d65453.jpg'),
(18, 7, 'Garlic Longganisa & Eggs Delight', 'Savor juicy garlic longganisa with perfectly cooked eggs in this satisfying Filipino classic. Served with rice for a flavorful twist.', 250.00, '66c5b3ec2c23d.jpg'),
(19, 7, 'MISO-Infused Pork Stew', 'Enjoy tender pork in a savory miso broth with Filipino spices and veggies. A unique blend of rich, umami flavors.', 350.00, '66c5b535ddceb.jpg'),
(20, 9, 'Tempura Delight', 'Crispy perfection—our golden tempura is light, airy, and perfectly fried for a satisfying crunch with every bite.', 500.00, '66c5ba51d3d15.jpg'),
(21, 9, 'Shrimp Sensation', 'Succulent shrimp—juicy, tender, and seasoned to enhance its natural sweetness, served with a zesty dipping sauce.', 600.00, '66c5ba62dc72c.jpg'),
(26, 9, 'Pancit Palabok Supreme', 'Rich and flavorful—classic pancit palabok topped with a boiled egg, plump shrimp, and a sprinkle of crunchy chicharrón.', 240.00, '66c5de7402f25.jpg'),
(27, 8, 'Sinigang Serenity', 'Tangy and hearty—a warm bowl of tamarind-infused broth with tender pork and fresh vegetables.', 250.00, '66c5e054a2135.jpg'),
(28, 8, 'BBQ Bliss Skewers', 'Smoky and savory—tender pork skewers marinated in a special blend of spices, grilled to perfection.', 300.00, '66c5e06b01c6c.jpg'),
(29, 8, 'Pusit sa Asabaw', 'Tender squid simmered in a savory garlic and onion sauce, enhanced with a splash of soy sauce and a hint of vinegar. This rich and flavorful dish is perfect for a comforting Filipino meal.', 400.00, '66c5e0a876222.jpg'),
(31, 11, 'Tofu Delight', 'Crispy tofu cubes served with a tangy soy dipping sauce, perfect for a quick and satisfying snack.', 120.00, '66c5e6d59f5f1.jpg'),
(32, 11, 'Kebab Skewers', 'Juicy grilled kebabs marinated with local spices, served with a side of fresh vegetables and a zesty sauce.', 200.00, '66c5e6e812b8c.jpg'),
(33, 11, 'Taco & Onion Rings Combo', 'Savory tacos stuffed with flavorful fillings and paired with crispy, golden onion rings for a tasty street food treat.', 200.00, '66c5e71cb7d5f.jpg'),
(34, 14, 'Gourmet Pizza', 'Artisan pizza topped with premium ingredients, baked to perfection with a crispy crust and a blend of gourmet cheeses.', 1200.00, '66c5e744d83cd.jpg'),
(35, 14, 'Decadent S’mores', 'A rich dessert featuring layers of gooey marshmallow and chocolate, sandwiched between graham crackers and toasted to perfection.', 750.00, '66c5e7576db69.jpg'),
(36, 14, 'Burger with Egg', 'A juicy, grilled burger topped with a perfectly fried egg, combining flavors for a delightful and indulgent meal.', 920.00, '66c5e768e3143.jpg'),
(37, 13, 'Burger & Fries', 'A classic burger served with golden, crispy fries, embodying comfort food at its finest.', 350.00, '66c5e77cb5ab2.jpg'),
(38, 13, 'Chicken Salad Bowl', 'Grilled chicken served over a fresh and vibrant salad, dressed with a light vinaigrette for a healthy and satisfying meal.', 400.00, '66c5e793d213b.jpg'),
(39, 13, 'Tenderloin & Fries', 'Succulent beef tenderloin paired with crispy fries, offering a hearty and flavorful dining experience.', 700.00, '66c5e7a575192.jpg'),
(40, 10, 'Lamb Chops Supreme', 'Juicy, grilled lamb chops marinated in a blend of local herbs and spices, served with a savory side of garlic mashed potatoes.', 600.00, '66c5e8e16a185.jpg'),
(41, 10, 'Creamy Garlic Shrimp Pasta', 'Al dente pasta tossed in a rich and creamy garlic sauce, topped with succulent shrimp and a sprinkle of fresh herbs.', 320.00, '66c5e8fdde1a1.jpg'),
(42, 10, 'Nutty Delight Cake', 'Decadent cake layered with a nutty crunch and a smooth, creamy frosting, perfect for satisfying your sweet tooth with a hint of local flavor.', 350.00, '66c5e910ee470.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(13, 10, 'in process', 'Rider on the way! Please wait.', '2024-08-21 14:03:52'),
(14, 12, 'in process', 'The rider is on the way! Please wait and be patience! Thank you :)', '2024-08-21 14:18:57'),
(15, 13, 'rejected', 'Sorry the order is out of stock at the moment. Try other menu items :)', '2024-08-21 14:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(7, 6, 'COSMIC POBLACION', 'crew@cosmic.com.ph', '+63 915 365 8758', 'https://cosmicph.myshopify.com/password', '11am', '10pm', 'Wed-Sat', '4980 P. Guanzon St. Brgy. Poblacion, Makati, Luzon 1210 Philippines', '66c5b1dd3be6f.jpg', '2024-08-21 09:22:37'),
(8, 5, 'Milky Way Cafe Rockwell', 'cafe.milkywayrestaurant@gmail.com', '+63 2 756 5026', 'https://cafe.milkywayrestaurant.com/', '11am', '9pm', 'Mon-Sun', 'Rockwell Drive Basement Level 1, Rockwell Power Plant Mall, Makati, Luzon 1210 Philippines', '66c5b7dfce91e.jpg', '2024-08-21 09:48:15'),
(9, 9, 'Cafe 1228', 'manila.newworldhotels@gmail.com', '+63 2 811 6888', 'https://manila.newworldhotels.com/en/dining/cafe-1228/', '6am', '12am', 'Mon-Sun', 'Esperanza Street Corner Makati Avenue New World Makati Hotel, Ayala Center, Makati, Luzon 1228 Philippines\r\n', '66c5b9fad53bd.jpg', '2024-08-21 09:57:14'),
(10, 11, 'Blackbird at the Nielson Tower', 'blackbird.com@gmail.com', '+63 2 828 4888', 'https://www.blackbird.com.ph/', '11am', '10pm', 'Mon-Sun', '6752 Makati Ave Nielson Tower, Ayala Triangle, Makati, Luzon 1229 Philippines\r\n', '66c5e215bbb46.jpg', '2024-08-21 12:48:21'),
(11, 8, 'Tambai Yakitori Snackhouse', 'tambaisnackhouse@yahoo.com', '+63 2 215 5695', 'https://www.facebook.com/TambaiPH', '11am', '5pm', 'Mon-Sun', '5779 Felipe Street Barangay Poblacion, Makati, Luzon 1210 Philippines\r\n', '66c5e3b36a332.jpg', '2024-08-21 12:55:15'),
(13, 10, 'TGI Fridays', 'fridaysph@gmail.com', '+63 2 752 7685', 'https://www.fridays.com.ph/', '10am', '8pm', 'Mon-Sun', '3rd floor, Ayala Center Glorietta 3, Makati, Luzon Philippines\r\n', '66c5e48fc1d6d.jpg', '2024-08-21 12:58:55'),
(14, 7, 'Gallery by Chele', 'gallerybychele@gmail.com', '+63 917 546 1673', 'https://gallerybychele.com/', '5pm', '12am', 'Mon-Sun', '11th Avenue 5th Floor Clipp Centre Building, Taguig City, Luzon 1634 Philippines\r\n', '66c5e4ebbf368.jpg', '2024-08-21 13:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'Local Favorites', '2024-08-21 07:47:47'),
(6, 'Casual Dining', '2024-08-21 07:47:51'),
(7, 'Fine Dining', '2024-08-21 07:47:55'),
(8, 'Street Food', '2024-08-21 07:48:00'),
(9, 'Buffets', '2024-08-21 07:48:05'),
(10, 'Regional Specialties', '2024-08-21 07:48:17'),
(11, 'Family-owned', '2024-08-21 07:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(8, 'kobe', 'Kobe', 'Dime', 'kobedime@gmail.com', '09679217171', 'eed8929d47d3d5e24382dc45f462cf58', 'Quezon City, Philippines, 1116', 1, '2024-08-21 14:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(11, 7, 'Decadent S’mores', 1, 750.00, NULL, '2024-08-21 14:01:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
