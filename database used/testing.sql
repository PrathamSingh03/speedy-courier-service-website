-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 07:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `item` varchar(100) NOT NULL,
  `item_description` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `pickup_address` varchar(100) NOT NULL,
  `pickup_address_country` varchar(100) NOT NULL,
  `delivery_address` varchar(100) NOT NULL,
  `delivery_address_country` varchar(100) NOT NULL,
  `service_selected` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `created_by` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `item_nature` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `item`, `item_description`, `weight`, `pickup_address`, `pickup_address_country`, `delivery_address`, `delivery_address_country`, `service_selected`, `status`, `created_by`, `created_at`, `item_nature`, `amount`) VALUES
(60, 'Book', 'The Catcher in the Rye', '1KG - 10 KG', 'A/10, Rahul Heights, Malad (East), Mumbai', 'India', '23 Rue de la Paix, Paris', 'France', 'Cross Border Service', 'Delivered', 'Bob000', '2023-03-24 17:33:51', 'Non-Fragile Items', 10900),
(61, 'Book', 'Harry Potter and the Philosopher\'s Stone', '1KG - 10 KG', 'A/104, Raheja Heights, Malad (East), Mumbai', 'India', '46 Rue Saint-Antoine, Paris', 'France', 'Supply Chain Service', 'Delivered', 'Shialesh123', '2023-03-24 17:40:21', 'Non-Fragile Items', 3400),
(62, 'Clothing', 'Blue Striped Cotton Shirt', '1KG - 10 KG', '12 Savoy Street, Strand, London', 'United Kingdom', 'B-501, Aditya Apartment, Andheri (West), Mumbai', 'India', 'Express Parcel', 'Out for Delivery', 'Emily456', '2023-03-24 17:43:16', 'Non-Fragile Items', 2100),
(63, 'Iphone', 'Electronic Device', '1KG - 10 KG', '6301 Hollywood Blvd, Los Angeles', 'United States', 'Room 201, Building 6, No. 38, Changa\'s Street, Xicheng District, Beijing', 'China', 'Partial Truckload Freight', 'Delivered', 'David789', '2023-03-25 10:57:26', 'Fragile Items', 1700),
(64, 'Art Supplies', '\"Acrylic Paint Set\" - 12 colors, 75ml tubes', 'Upto 1KG', 'Room 502, Building 4, No. 18, Gangnam-daero, Gangnam-gu, Seoul', 'Korea, Republic of', 'Room 601, Building 1, No. 18, George Street, The Rocks, Sydney', 'Australia', 'Truckload Freight', 'Out for Delivery', 'Lucas000', '2023-03-25 11:12:38', 'Non-Fragile Items', 3700);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `type`, `created_at`) VALUES
(2, 'Pratham Singh', 'Admin Pratham', 'prathamsingh0304@gmail.com', '$2y$10$KDkEKsTInWgW/RdXhijnM.ZiyL6u8/Km13SODpAxBqHatqVtnzhWe', 'admin', '2023-03-20 05:09:47'),
(10, 'Bob Smith', 'Bob000', 'BobSmith000@outlook.com', '$2y$10$QAUZE.evnqBZ00Ai.LGhd.MyfEkdyD2Y8aquHgWvcWEtJeRabfsf6', 'user', '2023-03-22 04:10:32'),
(11, 'Shialesh Patel', 'Shialesh123', 'ShialeshPatel123@yahoo.com', '$2y$10$xjjNq21H2RIBaNEiV0d3O.ISKYiIu0UQv14M3LWSK.4c2z9VoydhO', 'user', '2023-03-22 04:10:58'),
(12, 'Emily Brown', 'Emily456', 'EmilyBrown456@titan.com', '$2y$10$bIClzU3SMkK452mGGsE.HOod09pVOckqTuzQBROYPzhAVLzYED7wG', 'user', '2023-03-22 04:12:01'),
(13, 'David Johnson', 'David789', 'DavidJohnson789@icloud.com', '$2y$10$d2swNaWaI2DrgQ4AFRekaOd3bBpwBnzzCpzcfGVUurvje6RDd6esK', 'user', '2023-03-22 04:14:17'),
(14, 'Lucas Lee', 'Lucas000', 'LucasLee000@protonmail.com', '$2y$10$WG6U.imHK.noSNF6vTJ2COjfHTj5SP/gbUTRBwp9jsrgqdDn6vjx.', 'user', '2023-03-22 04:14:56'),
(15, 'Jessica Wang', 'Jessica123', 'JessicaWang123@zoho.com', '$2y$10$wfQ2ZF4Lyjp6x8A5..uyHuvU/RvgnkbIau7iNLfoWvy343pGf.Bgq', 'user', '2023-03-22 04:15:34'),
(16, 'Brandon Johnson', 'Brandon456', 'BrandonJohnson456@yandex.com', '$2y$10$d/FBl7ElWNoZyTK7T8ioC.TeHJZAMERI39Cu5MPoBAJVpFKbRyd7G', 'user', '2023-03-22 04:17:37'),
(17, 'Sophie Lee', 'Sophie789', 'SophieLee789@gmx.com', '$2y$10$kpjMRjQQRO19.v8oZqRYiOJE6IaJ5k4CDwU6gunSM3reyu/OzujBa', 'user', '2023-03-22 04:18:29'),
(18, 'Emma Garcia', 'Emma000', 'EmmaGarcia000@gmail.com', '$2y$10$9Gd2lRC21Dpb6P93YAR3kOkjxKRpEZjKsozTSGqpRUlqDxIpfFjf.', 'user', '2023-03-22 04:19:25'),
(19, 'Jack Miller', 'Jack123', 'JackMiller123@hubspot.com', '$2y$10$KK11FVX1GPMctx01kIAreO5MDmUB0M6O2GEhId9LH.1B46e643d7S', 'user', '2023-03-22 04:22:12'),
(20, 'Ava Wilson', 'Ava456', 'AvaWilson456@mail.com', '$2y$10$PNjleN.vTspwUcku5UrvLOKnejObKRNHZMHGOBQm3rocWoNvcVXKa', 'user', '2023-03-22 04:23:25'),
(21, 'Benjamin Taylor', 'Benjamin789', 'BenjaminTaylor789@rediffmail.com', '$2y$10$pXS9a.BIgOAZA/0a60YCt.6BCz/.LVVG/6s5wtirjXcGo0/mjoJ4.', 'user', '2023-03-22 04:26:37'),
(22, 'Isabella Clark', 'Isabella000', 'IsabellaClark@000gmail.com', '$2y$10$hw34XCLpO.310/GPoo9gfepj.IfUR.7W8nSJDE0VuZrGzCPCXXOtS', 'user', '2023-03-22 04:28:04'),
(23, 'Oliver Scott', 'Oliver123', 'OliverScott123@outlook.com', '$2y$10$cAP7tesDX6sO.yu.0n40beUrjAIHIAXWfscrOPXv9s4egkCmuf.dy', 'user', '2023-03-22 04:29:38'),
(24, 'Sophia White', 'Sophia456', 'SophiaWhite456@yahoo.com', '$2y$10$yasuJ4N8p7E9LdITqISJjug2a9iSn1KqTXKiDKpnIkm3M6uD7/bsi', 'user', '2023-03-22 04:30:36'),
(25, 'Lucas Green', 'Lucas789', 'LucasGreen789@titan.com', '$2y$10$iX9vw/SIWAUAe3VROjRiOOGYXuxTC9Ey/sFM8Q0ZLFrKzEeDa9kJa', 'user', '2023-03-22 04:31:32'),
(26, 'Ava Harris', 'Ava000', 'AvaHarris@icloud.com', '$2y$10$R0APCgKObGzRdDofpfruo.BCM4Js6XHQFqYkrtYoYvvi/58Q6kXq.', 'user', '2023-03-22 04:33:21'),
(27, 'Ethan Lee', 'Ethan123', 'EthanLee123@protonmail.com', '$2y$10$0fHrWomhZSQROKu0jrm6bOsv6wibtGmX6cM1CRJCZ9/NGCiScuLcW', 'user', '2023-03-22 04:34:23'),
(28, 'Bob Wilson', 'Bob456', 'BobWilson456@zoho.com', '$2y$10$Q6Vz0F1opXsLqvMsKJyx4utX6hzMG0QH9DvP8RjEPbXQ.kMQAsLLW', 'user', '2023-03-22 04:36:22'),
(29, 'Oliver Williams', 'Oliver789', 'OliverWilliams789@yandex.com', '$2y$10$n12MOLaq0or/9l9tT.zHwOQgCYDu/rVB0.dtS9yYzfao.866ce6du', 'user', '2023-03-22 04:37:36'),
(30, 'Mia Davis', 'Mia000', 'MiaDavis000@gmx.com', '$2y$10$1.8iA/FTbeD9ev3YKk/wOO5ciwGmvBsSi5PXpgpFXjMuK.Z46KKci', 'user', '2023-03-22 04:38:58'),
(31, 'Isaac Lee', 'Isaac123', 'IsaacLee123@hubspot.com', '$2y$10$uXfenCsMgM9qQOtf2VrMgekxgCrozBjo4kM5f8eF2M4w01MfFhf/S', 'user', '2023-03-22 04:40:05'),
(32, 'Nina Clark', 'Nina456', 'NinaClark456@mail.com', '$2y$10$NUdJCr4DD6lU7ip3k.Pf1uBHAPS7cQQOLwpMHbmXW3gQ4axdq6sNu', 'user', '2023-03-22 04:41:27'),
(33, 'Leo Scott', 'Leo789', 'LeoScott789@rediffmail.com', '$2y$10$4pPvLe1YS.6rqssUUzAkpe/q34A31WV.cLbEb2TGZ0ZSZn4Z4HRSy', 'user', '2023-03-22 04:42:24'),
(34, 'Sophia Wilson', 'Sophia000', 'SophiaWilson000@gmail.com', '$2y$10$On.jVlcpHEp.Jj4Hj.qHXeERYHZ72Ia0/r3BeNTQLTFzZ.XNfLtT.', 'user', '2023-03-22 04:44:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
