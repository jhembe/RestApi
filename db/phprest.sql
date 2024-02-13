-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2024 at 07:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phprest`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `create_at`) VALUES
(1, 'technology', '2024-02-13 07:28:35'),
(2, 'Gaming', '2024-02-13 05:28:35'),
(3, 'Auto', '2024-02-13 05:29:57'),
(4, 'Entertainment', '2024-02-13 05:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `category_id`, `title`, `body`, `author`, `created_at`) VALUES
(2, 1, 'Revolutionizing Tech Trends', 'Embark on a captivating journey through the ever-evolving landscape of technology. From artificial intelligence shaping the future to the rapid rise of quantum computing, this post delves deep into the intricacies of cutting-edge innovations. Explore the intersection of tech and human life, witnessing how these advancements impact industries, societies, and individuals.\r\n\r\nDive into the realms of virtual reality and augmented reality, where the boundaries between the digital and physical worlds blur. Uncover the possibilities of 5G technology and its transformative effects on communication and connectivity. As we navigate the tech landscape, we\'ll also address ethical considerations and the responsibility that comes with such powerful tools.\r\n\r\nJoin TechExplorer94 on this exploration, as we dissect the trends, breakthroughs, and paradigm shifts that define the forefront of technological progress. Buckle up for an insightful ride into the future, where the possibilities are limitless and innovation knows no bounds.', 'TechExplorer94', '2024-02-13 05:40:22'),
(3, 2, 'Epic Gaming Adventures Unleashed', 'Embark on an adrenaline-fueled journey into the heart of gaming, where virtual worlds come to life and epic adventures await. This post explores the dynamic landscape of the gaming industry, from the latest blockbuster releases to indie gems that redefine the gaming experience.\r\n\r\nDive into the realms of immersive storytelling, where players become the protagonists of their own sagas. Discover the evolution of multiplayer gaming, from cooperative missions to competitive E-Sports spectacles that captivate millions. Uncover the influence of cutting-edge graphics and next-gen consoles on the visual and auditory spectacle that modern gaming has become.\r\n\r\nAs we navigate through the diverse genres and gaming platforms, GameMasterX invites you to explore the cultural impact of gaming and its role as a global form of entertainment. From nostalgic classics to the ever-expanding universe of virtual reality gaming, this post celebrates the boundless creativity and innovation within the gaming realm.', 'GameMasterX ', '2024-02-13 05:41:55'),
(4, 3, 'Riding the Innovation Highway: Auto Marvels Unveiled', 'Rev up your engines and join us on a thrilling journey through the world of automotive wonders. This post explores the cutting-edge innovations that drive the auto industry forward, from sleek electric vehicles to groundbreaking advancements in autonomous driving.\r\n\r\nTake a pit stop to admire the craftsmanship of luxury cars, where precision engineering meets aesthetic elegance. Explore the sustainable side of the automotive world, delving into eco-friendly technologies that promise a greener future on the roads. From high-performance sports cars to practical yet stylish family vehicles, this post covers the diverse spectrum of the automotive landscape.\r\n\r\nAutoEnthusiast invites you to buckle up for a ride through the history of iconic automobile designs and the evolution of safety features that redefine on-road security. Discover the fusion of technology and design, as car manufacturers push the boundaries of what\'s possible in the pursuit of automotive excellence.', 'AutoEnthusiast', '2024-02-13 05:41:55'),
(5, 4, 'Entertainment Odyssey: A Kaleidoscope of Delights', 'Step into the enchanting realm of entertainment, where creativity knows no bounds and every story unfolds as a masterpiece. This post celebrates the diverse facets of the entertainment industry, from the silver screen to the melodious beats that resonate through the air.\r\n\r\nEmbark on a cinematic adventure through genres and storytelling techniques that captivate the imagination. Explore the magic of special effects and the transformative power of makeup and costume design in bringing characters to life. From indie gems to blockbuster sensations, this post is your ticket to a world where every frame tells a unique tale.\r\n\r\nJourney into the world of music, where melodies evoke emotions and lyrics weave stories that resonate with the soul. Uncover the latest trends in the music industry, from chart-topping hits to emerging artists who push the boundaries of sound. Whether you\'re a cinephile, a music aficionado, or both, EntertainMeNow invites you to savor the richness of entertainment in all its forms.', 'EntertainMeNow', '2024-02-13 05:45:38'),
(6, 3, 'Sample API post', 'Sample body f an API from a post', 'Steven Magabiro', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
